---
title: Twenty minutes
author: Jennifer Tu
excerpt: Recently I was chatting with a friend who works as an engineer -- a real engineer, as in buildings and bridges and structures. I was curious what a technical, regulated industry's interview process might look like. What might I learn from her interview practice that could teach me about being a better interviewer in the software industry?
call_to_read: Her entire interview process takes twenty minutes. For an industry where shoddy technical work could lead directly to human death.  What's the secret?
topics:
  - Hiring and Interviewing
  - Management and Leadership
layout: post
categories: articles
drip_form_id: 897553995
drip_form_headline: One difference between software and engineering is the level of collaboration we expect. Want to level up your team's ability to evaluate a candidate's collaborative abilities? <a href="/products/interviewer-skills-for-engineers-and-hiring-managers">We have a workshop for that.</a>  Get in touch to learn more about the workshop!
drip_form_button: "Schedule your free 30 minute consultation!"
---

Recently I was chatting with a friend, and the topic turned to [my upcoming workshop on Interviewer Skills at RailsConf](https://railsconf.com/program/workshops#session-560). My friend's not in software, but is in a technical field: she's an engineer! a real engineer! as in buildings and bridges and structures!

I was curious what a technical, regulated industry's interview process might look like, so I asked her about her interviewing experience. Maybe I'd learn something that could apply to the software industry's interviewing practice.

![What I as a layperson imagine an engineer's workspace might look like: paper! pencil! calipers! CAD diagrams!](/images/engineering.jpg "What I as a layperson imagine an engineer's workspace might look like: paper! pencil! calipers! CAD diagrams!"){:class="img-responsive"}

> Me: "What's interviewing in your industry like?"
>
> Friend: "It's kind of scary to decide based on twenty minutes."
>
> Me: "Wow yeah that's really short. Are any of the other interview slots longer?"
>
> Friend: "That's the only one. Twenty minutes and then we decide 'yes' or 'no'."
>
> Me: &lt;stunned silence&gt;

How could it be possible to make a good decision with only twenty minutes of interview time?? Engineers have to go through quite a bit of schooling, so where was the technical component examining the engineer-equivalent of algorithms? I started probing deeper. The answers I got back felt like hints in a game of Twenty Questions, and it didn't feel like it could possibly be relevant to modern software hiring practices.

- Yes, it really is twenty minutes long.
- That's long enough for five questions, one of which is the warm-up.
- The interview panel receives the questions, and metrics for evaluation.
- The candidate gets ten minutes to review the questions before entering the interview.
- The interview consists of the panel reading off the questions, offering no further elaboration, and listening intently to the answers with no follow-up questions.
- The candidate has the opportunity to ask the panel questions at the end of the interview.
- In the event of uncertainty, there may be a follow-up interview with open-ended questions.

After a little more probing, my friend finally shared her secret recipe for a Twenty Minute Interview, which I've gotten permission to share with you.

Ready?

1. Cover different skill areas with different questions.
1. Ask questions that will reveal the candidate's expertise. Answers should be straightforward for a qualified candidate, and not easily guessable by an unqualified candidate.

That's it.

It took me a moment to realize that this twenty minute interview really _is_ pretty relatable to software! To follow her formula, for the first step I need to pick a few different skill areas. If I were interviewing a web developer candidate, here are a few skill areas I might want to assess:

- familiarity with a recurring concept in my codebase
- debugging
- self-project-management skills

For assessing **familiarity with a recurring concept in the codebase**, I'd need to identify one critical concept that I'd like the candidate to already understand well. Maybe my models have intricate relationships with each other, so I want to know the candidate is familiar with building queries that won't take exponential time. If so, I could describe a relationship in my codebase's DSL and also in plain SQL, and ask the candidate to talk about how they would find information about a relationship. Think _"students have teachers have classes get number of quizzes by homeroom"_, and think discussion rather than writing out a perfectly syntactically correct answer. In evaluation, I'm looking for familiarity with writing queries that don't grow exponentially, and am not looking for a perfectly crafted query.

For assessing **debugging skills**, maybe I can present a user's complaint, and evaluate on the candidate's ability to triangulate onto the most suspicious area to address. For a user complaint, I might pick something like _"Sometimes the list of available items on this page is completely empty"_, or _"This page used to be fine but now sometimes it's really slow"_. In evaluation, I'm looking for creativity and maybe the ability to identify the right time to seek help, rather than honing in on an obvious culprit immediately. I care more about how they don't give up on a game of _Clue_ than jumping to the answer _"It was redis, with a silently swallowed error, in the library!"_

For assessing **project management skills**, I'd probably want to turn to [behavioral interviewing](articles/specifics-or-situational) and ask the candidate to describe a situation that shows they can manage conflicting requirements. I might ask them to describe a time when they were behind on delivery or had conflicting assignments, and how they handled it. I'd want to pre-set my evaluation metrics -- maybe I could base the evaluation on how the candidate seeks input and communicates tradeoffs, or on a different criteria that reflects the team's work values. Maybe I'm looking for someone who can think ahead to when the current sprint's work is complete, and tries to anticipate "we don't have enough work" and flag it. It all depends on what the team could most benefit from.

![Closeup of a pocketwatch lying on a sandy beach](/images/pocketwatch_in_sand.jpg "Closeup of a pocketwatch lying on a sandy beach"){:class="img-responsive"}

A well-formed twenty minute interview requires taking the time to reflect on current hiring needs, and taking the time to design a question set that addresses that need (instead of waiting for when you see the right candidate). It means repeating that reflection process when your team changes, instead of looking for a candidate generic or unavailably-unicorn enough to always be applicable. What are the strengths and weaknesses of your current team? what needs to be strengthened or countered for the team to run well together?

In our software world, typical interviews may range from several hours to an entire day. It's not unheard of to have a multi-day, even a week-long interview. The majority of this time is spent in technical evaluation. If engineers -- whose work is a matter of public safety -- can make a technical evaluation of a candidate in twenty minutes, why does it take so long for us in the software world to do the same? My friend isn't asking her candidates to design an arbitrary bridge, or to run wind-force permutations on a building design, or to whiteboard an AutoCAD design. What might we learn about technical interviewing from another technical industry? How might we break down what we're looking for into a small but complex problem that will reveal a candidate's insight within a few minutes? How might we let go of our fears around poor technical hires, and embrace a twenty minute technical interview? What if we took our typical multi-hour interview, and spent twenty minutes assessing technical skills, and the rest of the time on organizational, communication, and collaborative skills?
