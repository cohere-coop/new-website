---
title: Embracing Uncomfortable Refactoring
author: Betsy Haibel
excerpt: Sometimes refactoring is fun. Sometimes refactoring feels therapeutic. Usually, those kinds of refactoring are the kinds we don't need.
call_to_action: >
  On April 19th, Cohere will be presenting a free version of our workshop "Uncomfortable Refactoring" at Rails Conf. Over the next few weeks, we’ll be running a related blog series, chock-full of insights we needed to cut for time and other material inspired by the workshop development process. Follow us at <a href='https://twitter.com/wecohere'>@WeCohere</a> to read the next posts in the series. In the meantime, we'd love to hear from you: what parts of refactoring make you the most uncomfortable? What parts do you, against all odds, love?
tags:
  - Engineering
layout: post
categories: articles
drip_form_id: 70585189
drip_form_headline: "Want to provide your team with real-world refactoring training? Let's chat about how to do that most effectively:"
drip_form_button: "Get in Touch"
---

Sometimes refactoring is fun.
Sometimes refactoring feels therapeutic.

Usually, those kinds of refactoring are the kinds we don't need.

We know it: we always have that faint feeling that we're having just a little too much fun to justify our salary.
Or that self-righteous joy when we rip out all of someone else's opinions about code style and replace them with something that is the same, but ours.

No, the kinds of refactoring we actually need are more often than not the ones that make us want to piss our pants.
How do we know this?
Well, if we're not doing it for the fun of it, but we feel a need to go forward anyway... chances are, there's a real reason buried somewhere in there.

It gets worse.
"Refactoring" and "rewriting" aren't the same thing, after all.
"Rewriting" is basically always fun.
Risky, sure.
If we're responsible engineers, we don't quite trust rewrites, and are therefore wary of saying we like them.
But still... they're fun!
It's freeing and easy to start from scratch and build something that meets your needs exactly and that conforms to your stylistic preferences.
To be freed from the burden of your codebase's history.

Refactoring, instead, is all about confronting that history — and that's rarely comfortable.
It's about unwinding the trail of slightly-embarrassing assumptions that got you where you are today, and admitting that you were never going to be right the first time around.

Rewriting lets us defer the specter of failure until the last minute.
Safe refactoring forces us to constantly confront the difficulty of reconciling different perspectives.

Refactoring is uncomfortable because it's a high-wire act, and we walk on to that high wire weighted down by the lumpy, uneven sandbags of our past assumptions.
Because of time pressure, and the difficulty of being confident that we're doing the right thing.

It's uncomfortable because our tests never adequately support the refactor, and it's hard to tell when we should work without that net and when we should stop to figure out characterization tests.

It's uncomfortable because of that bit in the middle — you know the bit — where your code has only gotten messier, not nicer, and you only kind of know where you're going, and every time you whack one-mole-bug another pops up cheerfully in its place.

So let’s embrace the discomforts of refactoring!
Let’s accept that it’s _not fun_ to walk that high wire.
Accept that time is hard to judge, mental models are hard to shift, and that whack-a-mole bugs are annoying as sin.
Accept that refactoring never feels quite safe.
Once we’ve gotten there, we can focus on making it safe _enough_.
Imperfect, but livable.

We can find incremental techniques that reduce risk.
That maybe won't make our code perfect, not in the time we have, but that we can know will make it better.
That will let us declare a small victory early, instead of trapping us in three days of sunk cost fallacy before we find our way back out of a swamp of our own making.

When we've reduced overall risk, our risk budget can expand to include small calculated risks.
We can look at the test suite we have (or don't have) critically.
Instead of spending time we don't have on full characterization tests, we can add only the tests we need — and confidently cut any brittle or over-marked tests that are holding in back.

Finally, and most importantly, we can know when to stop.
Because refactoring isn't about getting our code to some subjective "perfect," any more.
It's just about getting it to a point where new feature work is less uncomfortable than continuing to refactor.
