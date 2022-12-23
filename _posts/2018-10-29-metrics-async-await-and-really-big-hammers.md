---
title: "Metrics, Async/Await, and Really Big Hammers"
author: Betsy Haibel
excerpt: Async/await is a _really shiny_ hammer.
call_to_read: But what happens when we run into the wrong kind of nail?
call_to_action: Have you ever run into a Promises Problem that made you long for the good old days of callbacks? Or felt that async/await was more trouble than it was worth? Drop us a line! We'd love to hear about these, and your other programming misadventures.
tags:
  - Engineering
layout: post
categories: articles
drip_form_id: 25900328
drip_form_headline: We offer a free <em>Untangling Asynchronous JavaScript</em> email course that expands on this and other asynchronous programming topics!
drip_form_button: "Sign up for free!"
---

The other night my partner Chris asked me over dinner, “Betsy, how would you handle a call to a metrics library using async/await?”

Chris makes developer tools at an e-commerce company. JavaScript isn’t a big part of the stack where he works, but everyone works with at least a little JavaScript nowadays. He needed to expose metrics APIs for the applications developers he works with. He wanted them to be easy to use, and not get in the way of their application code.

Two things about metrics calls: first, they need to be _cheap_. You don’t want to impose a runtime performance penalty on developers when they measure things. If you do, developers can’t measure that many things! Then, when everything crashes and they need to _have measured_ things, everyone’s stuck with guess-and-pray debugging. In a JavaScript context -- you don’t ever want a metrics call to block the execution thread.

Second, we generally aren’t interested in the return value of a metrics call. We often don’t even care if they fail! Metrics calls aren’t about producing results the user cares about. They’re about observing the process that gets those results. We don’t want to get in the user’s way while we’re reporting on things that only developers care about.

So: metrics calls shouldn’t block the thread, and we don’t care about their return values. Chris, therefore, figured that it was a bad idea to stick a metrics call in the middle of a function and await on it.

```javascript
async function showPrice(item) {
  const priceWithoutShipping = onSale ? salePrice(item) : item.price;
  const shippingCost = await shippingRate(item);
  const totalPrice = priceWithoutShipping + shippingCost;

  await postMetrics('userCheckoutStep3', totalPrice);
  showUserTotal(totalPrice);
}
```

He’s right about that. That `await` before `showUserTotal` would mean that the user’s shopping cart wouldn’t get updated until the metrics posted! That might mean that they would get frustrated and close the tab before they bought things. A metrics API that presented that risk would be worse than useless. So Chris wondered — did it make more sense to make a convention of only `await`ing metrics at the end of a function?

This idea had some problems. This code is fine:

```javascript
async function showPrice(item) {
  const priceWithoutShipping = onSale ? salePrice(item) : item.price;
  const shippingCost = await shippingRate(item);
  const totalPrice = priceWithoutShipping + shippingCost;

  showUserTotal(totalPrice);
  await postMetrics('userCheckoutStep3', totalPrice);
}
```

But this next code -- which is practically identical — has a bug in it. Can you spot it?

```javascript
async function showPrice(item) {
  const priceWithoutShipping = onSale ? salePrice(item) : item.price;
  const shippingCost = await shippingRate(item);
  const totalPrice = priceWithoutShipping + shippingCost;

  showUserTotal(totalPrice);
  return totalPrice;

  await postMetrics('userCheckoutStep3', totalPrice);
}
```

The difference is that we’ve added a return statement midway through the function. Execution will never proceed beyond the return statement, so the metrics call will never happen.

What if we change it so that the metrics call is on the last line *before* the return?

```javascript
async function showPrice(item) {
  // beginning of function

  await postMetrics('userCheckoutStep3', totalPrice);
  return totalPrice;
}
```

That doesn’t really help us. We’re back to blocking part of the function’s work -- the return statement -- on the results of the metrics call! We don’t know how long it will take to complete. We do know -- computers being computers -- that it could be slow and flaky. We don’t want that to annoy our users.

It’s a conundrum.

Let’s re-examine the assumptions that went into writing this code. Do we really need to use `await`? If we remove it, what happens?

```javascript
async function showPrice(item) {
  // beginning of function

  showUserTotal(totalPrice);
  postMetrics('userCheckoutStep3', totalPrice);
  return totalPrice;
}
```

The answer: it works just fine! Since we were awaiting on `postMetrics` before, we know that that function returns a promise. But just because it returns a promise doesn’t mean we need to do anything with that promise. After all, we don’t need the value it resolves to. We can just remove the `await` keyword. `postMetrics` will perform its network call or socket write or whatever. It will do that happily in the background. The user will not need to care, and neither will we.

Come to think of it, does `postMetrics` even need to return a promise? Let’s take a look at the current definition of `postMetrics`:

```javascript
async function postMetrics(eventName, metadata) {
  return fetch(METRICS_URL, {method: 'POST', data: { eventName, metadata }}).catch(noop);
}
```

It’s an async function that returns the result of fetch — which also returns a promise. But what if we didn’t make it return that promise? We do that by removing the return statement. We can also remove the async keyword. It's not relevant here. We don't need to guarantee that `postMetrics` returns a promise, and we don't need to `await` within it.

```javascript
function postMetrics(eventName, metadata) {
  fetch(METRICS_URL, {method: 'POST', data: { eventName, metadata }}).catch(noop);
}
```

Just because a function does work asynchronously doesn’t mean that it needs to be marked with the `async` keyword, or return a promise. There are three reasons you might want to return a promise from a function:

- You care about the value the promise resolves to.
- You care whether the operation succeeds or fails.
- You care that a side effect *has happened* before you continue on.

Since none of those are the case here, it’s safe to not return anything from `postMetrics`.

This is an awful lot of words for “sometimes it’s ok for things to fail silently.” Is there any deeper moral here?

Chris didn’t ask me “how should I design my metrics API?” He asked, “How should I use `await` in my metrics API?” instead.

Right now, async/await is the cool new kid on the block in JavaScript land. Chris hasn’t done much JS in years, but even he knew that it was what he was “supposed” to use nowadays. Whenever we learn a new programming technique, it’s easy to develop a bad case of hammer-and-nail syndrome.

Async/await is a _really shiny_ hammer. So much of what we do with asynchronous code in JavaScript isn’t complicated evented code. It’s just waiting for things. It’s waiting for API results or database updates, doing a small calculation, and then waiting for something else. The only difference between it and the same code in Python is that the execution thread is doing something else while we wait. Async/await lets us make our code look like the same code would in Python, instead of jumping into Promise-chain hell.

It’s such an obvious win that it’s easy to think that it ought to be a win everywhere.

But that means we start looking at our code and asking, “how can I apply this solution?” It’s dangerous, because it means we skip right past, “what problem am I trying to solve?”

Async/await can solve a lot of problems. But the fact that it’s often the answer doesn’t mean we can skip past asking the question.

---

Want to learn more about async/await, or about asynchronous JavaScript generally? Sign up for <a href="/products/untangling-asynchronous-javascript-free-email-course">Untangling Asynchronous JavaScript</a>! This free email course looks at the history of asynchronous JavaScript. It puts async primitves like event emitters, promises, and async/await in the context of the problems folks were trying to solve. This lets us talk about what each of them is good for, and where each of them falls down.
