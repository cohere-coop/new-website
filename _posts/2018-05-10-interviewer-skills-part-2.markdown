---
title: "Interviewer Skills Part 2/??: How to create interview questions"
author: Jennifer Tu
excerpt: You know what attributes will make someone the right addition to your team, and have specific enough descriptions that there can be no room for ambiguity.  How do you translate these into interview questions?
call_to_read: This is Part 2 of a multi-part series covering some of the topics introduced in our RailsConf 2018 workshop, "Interviewer Skills".
tags:
  - Hiring and Interviewing
  - Management and Leadership
layout: post
categories: articles
drip_form_id: 897553995
drip_form_headline: Does this process sound hard? maybe you've tried it and got stuck? or you'd like your team to learn to make their own interview questions?. We offer  <a href="/products/interviewer-skills-for-engineers-and-hiring-managers">interviewer skills coaching for engineers and hiring managers</a>.
drip_form_button: "Schedule your free 30 minute consultation!"
---

_This is [Part 2 of a multi-part series](/topics/interviewer-skills-workshop) covering some of the topics introduced in our RailsConf 2018_ Interviewer Skills _workshop._

_[Part 1 covered how to know what would make a candidate the right addition to your team, and why single-word descriptions like "independent" or "smart" can imply different behaviors to different people.](/articles/interviewer-skills-part-1)_

---

You're hiring - yay!

You have a list of 4-6 descriptive attributes that describe the ideal candidate - double yay!!

Now how do you learn whether a candidate possesses these attributes?

You can't ask your candidate directly if they exhibit that attribute:

> You: _\<checks list of attributes\>_
>
> You: Hello $candidate, are you someone who will independently seek out the business reason for development tasks?
>
> Them: Uhhh... yes, $interviewer, of course I do that.

"Yes or no" questions won't tell you _how_ your candidate behaves.
You're going to need questions that prompt your candidate to tell you about their _experience_ exhibiting the qualities you're looking for.
You're going to need to do some behavioral interviewing.

How do you do that? How do you go from an attribute, to making it easy for the candidate to tell you about an experience that shows off that attribute (or makes it clear that they possess the opposite of that attribute)? If you're at a loss for how to make this jump, here is a loose outline that can help you go from an attribute description to an interview question.

1. Re-read your attribute descriptions
1. What might success look like?
1. How might someone summarize a story of a successful situation that shows off this attribute?
1. How would you ask a question that would draw out this story, or a story similar to it?

This isn't the only way to create your interview question, but it's the first of many strategies you might employ when creating your interview questions.

## 1. Re-read your attribute descriptions

You know how when you're breaking ground on a brand new feature, the first bit of code you write is going to be creating a new file -- which means you need to know the class name, the file name, the file path? You need to have all that context in your head of what you're trying to accomplish as you create a single empty file.

This is the same thing. Take a moment and load up that context around your candidate attribute.

Re-read your attribute descriptions. Maybe you wrote it just a minute ago, maybe they're ingrained in your heart. Take a moment and read those words again, feel how they tug and resonate, gather up the ideas and feelings you have around this attribute and hold them close.

> #### Example: What do I think of when I say we need someone who "gives kind feedback"?
>
> _I need a candidate who will bring more than raw code ability._\\ > _The team is strong because they trust each other, and we need to hire someone who will add to that environment._\\ > _We need someone who will others will \*enjoy\* learning from._

## 2. What might success look like?

Let's go back to that new class you added to your codebase. How does it behave? How will you know if it's doing its job?

In the same way that it's critical to think about a class's behavior before you start writing code, it's critical to think about a _candidate's_ behavior before you hire them. Like in testing software, you're going to be looking for a specific instance of behavior that implies the behavior will continue.

Think about the difference between these test cases:

```
expect(response).to eq 314
expect(response).to be_an Integer
expect(response.class).to be_in [Integer, Float]
```

What might your candidate's `response` look like? You don't want to expect it to be specific -- you can't require it to be a very specific story. But maybe it can be a class of stories, or one of several classes of stories. Take some time to think about what some acceptable answers might look like. Is `3.14` an acceptable answer? how about `-3.14` or `"three"`?

What might be a story that shows a candidate successfully exhibiting your desired attribute?

What kind of behaviors do you hope to see?

Sometimes it can be hard to come up with the first example story of success. When that happens, here are a few questions you can ask yourself that can help you get started:

- What does your favorite teammate do that makes you say "they exhibit this attribute we seek"?
- If you were the candidate, what stories would you tell from your career?
- What are a few reasons why this attribute is helpful? What might success look like for one of those reasons?

> #### Example: What might be a story of successfully "giving kind feedback"?

- An example of giving critical feedback when encountering poor code
- Learning the candidate's formula when responding in PRs is designed to make the author feel respected
- Maybe a story about working under pressure (maybe an incident?) and keeping everyone able to creatively contribute because no one was mocked for having a bad idea?
- Or maybe a story of how someone else on the team asked for their feedback?

## 3. How might someone summarize a story of a successful situation that shows off this attribute?

If you were to document the behavior of a method, you wouldn't describe it line by line.

```
def comp
  puts "Enter your first number: "        # Print a prompt for a
  a = gets.to_i                           # Get a and cast it
  puts "Enter your second number: "       # Print a prompt for b
  b = gets.to_i                           # Get and cast b
  return a if a > b                       # Returns true if a > b
end
```

You'd summarize the whole thing, right?

```
### Compares two numeric values and returns the greater
def comp
  ...
end
```

Take a look at one of your stories of success.\\
If you had to summarize that story, what would that summary look like?\\
What are the most relevant parts of the story you want to highlight in a single sentence?\\
How do those highlights relate to the attribute you want to learn about?\\
What's the action you're trying to convey?

> #### Example: _Gives kind feedback_
>
> The candidate told me about this great experience they had - they told me about a time when I gave feedback on not-very-good code.

## 4. How would you ask a question that would draw out this story, or a story similar to it?

Ready to see your interview question??

Take the summaries you made in the previous step.

Add either _"Can you tell me about a time when..."_ or _"When was the last time you..."_ to the beginning.

> #### Example: _Gives kind feedback_
>
> Summary from Step 3:
>
> > The candidate told me about this great experience they had - they told me about a time when I gave feedback on not-very-good code.
>
> Add a question to the beginning!
>
> > Can you tell me about a time when \_\_\_\_
>
> > Can you tell me about a time when The candidate told me about this great experience they had - they told me about a time when I gave feedback on not-very-good code.
>
> > Can you tell me about a time when ~~The candidate told me about this great experience they had - they told me about a time when I~~ **you** gave feedback on not-very-good code**?**
>
> > **Can you tell me about a time when you gave feedback on not-very-good code?**

Tada! you have an interview question!

## What's next?

Yay, you have some interview questions you think will draw out candidate experiences that show off how they exhibit the attributes you are looking for!

At this point, get some feedback. Share your questions with people around you, and ask what they think you're looking for in a candidate. Share your attributes, and ask whether the questions will make it easy for candidates to give you good answers.

Make more questions that rephrase what you're looking for, so if a candidate isn't giving you a good answer, you're able to fall back on other questions that might help them give you better answers.

Keep learning more about behavioral interviewing (maybe read what we wrote on [how to ask a behavioral question](articles/specifics-or-situational) or on [how to interview your future manager](articles/interview-your-future-manager)), keep getting feedback on what you're doing, and keep practicing. You'll come up with lots of dud questions that don't work out, but the more you practice, the easier creating questions will get.
