---
title: "Designing a Directed Conversational Interview"
author: Zee Spencer
excerpt: "This article shows how to take interviewing techniques from the field of user research and cognition and meld them into a <em>directed conversation interview</em>, suitable for evaluating candidates against a skill ladder."
call_to_read: "Learn how to design a directed conversational interview for the early stages of your hiring process."
topics:
  - Management and Leadership
  - Hiring and Interviewing
layout: post
categories: articles
drip_form_id: 897553995
drip_form_headline: Want to get better at sourcing, assessing and hiring candidates? Cohere offers  <a href="/products/interviewer-skills-for-engineers-and-hiring-managers">interviewer and hiring manager coaching</a> for teams on a growth trajectory.
drip_form_button: "Schedule your free 30 minute consultation!"
---

In _[Thinking Fast and Slow](https://www.kobo.com/us/en/audiobook/thinking-fast-and-slow-3)_, Dr. Daniel Kahneman introduces the concept of a _fact-based, structured interview_ to mitigate the numerous cognitive biases that come into play when assessing an individual's aptitude for leadership positions. This article shows how to take interviewing techniques from the field of user research and cognition and meld them into a _directed conversation interview_, suitable for evaluating candidates against a skill ladder.

> We are going to assume an intent to hire the most qualified candidate, and a desire to mitigate the social and neuro-cognitive biases that get in the way of evaluating a candidate's quality.

Dr. Kahneman's _fact-based, structured interviews_ had some simple rules:

- Restrict the number of observations per interview. This helps prevent the interview from being rushed, mitigating the risk of slips or other cognitive errors.
- Each observation must result from a set of specific answers. By restricting the set of recordable answers, interviewers make the same _specific assessment_ across candidates.
- Every answer must be as fact-based as possible. The more space there is for interpretation, the greater a window for the observer's subconscious to do the assessing while the conscious mind plays catch up and rationalizes the answer.
- Interviewers _must record each observation before moving to the next_. This alleviates working memory overload, allowing for more accurate assessments for the next desired observation.

> What's an observation? An objective fact about a candidate that informs a hiring decision.

Directed interview techniques make it easier to apply these rules. _[Observing the User Experience](https://www.kobo.com/us/en/ebook/observing-the-user-experience)_, a rather large tome, details many techniques for user experience research, some of which can be applied for an interview process. The directed interview structure requires:

- A clear goal
- A specific line of inquiry
- Flexible prompts to encourage further conversation

Combining these sets of requirements gives us an interview structure that has:

- A specific goal
- A schedule
- A set of fact-based observations
- Prompts that drive the conversation towards accurately making those observations.

<h3>Setting the Interview Goal and Schedule</h3>

A clear goal for an interview provides the designer of the interview a target that observations can be aligned to, as well as gives the interviewer context that allows them to more effectively make judgement calls.

> An imaginary company _CodeMagic Inc_ with a well-defined engineering ladder will be used for illustrative purposes throughout the rest of this article.

The interview that is being designed is a _technical phone screen_ that happens early in the interview process. While phone screens aren't great for evaluating a candidate's _skills_, they are good for evaluating a candidate's breadth and depth of _experience_. The phone screen will establish (approximately) what level the candidate is likely to be at based on their experiences. Doing this early in the interview process will provides two things: whether the candidate is a good level match for the company's needs right now, and what skill level to expect them to demonstrate in later interviews.

A good interview schedule provides:

- Time for the interviewer and candidate to be introduced to one another and resolve any logistical issues that may arise.
- Enough time that each observation can take as long as necessary to be made without the interviewer feeling rushed. Budgeting anywhere from five to fifteen minutes per desired observation is perfectly reasonable, depending on the level of exploration required to make a sound observation,
- Space for the candidate to ask the interviewer questions. Thirty to forty percent of the full time is not unreasonable in an early conversational interview.

This interview is budgeted at thirty minutes total, with five minutes for logistics and introductions, fifteen minutes for the two observations, and ten minutes for the candidate to ask the interviewer questions.

<h3>Writing Fact-Based Observations</h3>

Now that the interview has a goal and a schedule, it is time to determine what factual observations to gather to support the goal of the interview. It can be tempting to rely on buzzword bingo, such as _"the candidate has used Ansible in professional contexts"_ -- but that would disqualify candidates who are otherwise competent and used Salt or Chef or other infrastructure automation tools throughout their career.

To remove some of the risk of false negatives due to narrowness it's better to seek observations about the primary use case of the tool: _"How clearly does the candidate communicate about programmatic infrastructure management?"_ This particular question loses grip on the fact-based nature of the interview by relying on a _proxy observation_, how one communicates. While it is near impossible to overstate the value of effective communication, it looks different in _work_ or _interview_ contexts. Further, adjectives such as "clearly" add an implicit "to me," which means two observers watching the same interview may have completely different answers.

Once irrelevant specificity is pruned and subjectivity is eliminated what is left is the interviews first fact-based observation: _"Has the candidate programmatically managed infrastructure for databases, applications and web servers?"_ This is meaty enough for a conversation, and can be decomposed into three independent statements that must all be be true for the entire statement to be true:

- The candidate has managed infrastructure
- They have done so programmatically
- The infrastructure served a variety of services with differing resource constraints.

An infrastructure engineers experience is more granular answer than "yes" or "no." Since _CodeMagic Inc_'s ladder lays out experience on a scale, it is possible to use that scale directly as valid answers for the observation:

- 10+ years full-time-equivalent experience
- 5~9 years full-time-equivalent experience
- 2~4 years full-time-equivalent experience
- <1 years full-time-equivalent experience
- No Experience

> The astute reader will note that these are ordered highest to lowest. This is an attempt encourage the interviewer to provide the benefit of the doubt. Making the benefit of the doubt more explicit mitigates the cognitive biases that come into play when an interviewer feels connected to the candidate.

<h3>Prompting Candidates</h3>

Candidates aren't psychic; they won't provide the information an interviewer will need without good questions. Planned _conversational prompts_ allow interviewers to make observations that are both objective and accurate. A good prompt is open ended, not a quiz. _"Can you tell me about how you managed infrastructure in a previous role?"_ It may also include explicit context about what kind of information the interviewer wants, for example: _"we are especially interested in automation and the kinds of services hosted on infrastructure you've managed."_ This sets the candidate at ease, and facilitates a more productive conversation. Candidates don't need to waste time and focus guessing what the interviewer wants to hear.

If the candidate doesn't provide enough information off the bat, follow-up question prompts help the interviewer determine which rubric category the candidate falls in:

- If the candidate only describes their most recent role, and they have a lot of other jobs on their resume: _"In what other roles have you managed infrastructure?"_
- If the candidate mentions that they used Puppet, but was vague about whether this was "every day" or "I touched it once when our deploys broke": _"How much of your job was infrastructure management as opposed to other responsibilities?"_
- If the candidate mentions infrastructure automation, but the interviewer can't tell if they managed databases as well as other services: _"What can you tell me about the services that ran on the infrastructure you managed?"_

<h3>Making the Second Observation</h3>

An interview that makes a single observation may be perfectly valid this early in the process, but _CodeMagic Inc_ has astutely decided that the other critical piece of their Infrastructure Engineer skill ladder is _[growth mindset](https://m.youtube.com/watch?v=M1CHPnZfFmU)_. The interviews second observation will explore the candidate's growth mindset within the context of an infrastructure engineering role: _"In what way has the candidate adapted their philosophy and techniques for infrastructure management throughout their career?"_

Possible answers could be:

- Adapted as particular technologies or practices have matured
- Adapted early on the leading edge of technology or practices
- Adapted after a practice or technology has reached wide enough adoption to supplant their previous preference
- Has not adapted, preferring technologies or practices in use at the beginning of their career
- No adaptation due to limited experience

These answers do not have a clear _winner_ so to speak, as depending on the teams current needs or existing practices, one or another answer may be better. If the infrastructure team needs someone who can maintain an earlier version of the platform, then someone who has chosen to go deep within their preferred toolchain may be the ideal candidate. If the team is looking for someone to augment their initiative to adopt a new technology, someone who prefers the leading edge may be preferred.

Flexibility about what is best in a particular context is OK, so long as the observation can be rooted in facts.

<h3>Preparing an Interview Reference and Record Sheet</h3>

Once each part of the interview has been designed, collect them into a single piece of paper (or digital equivalent). This provides interviewers with both a reference that guides them through the interview, as well as a place for them to record their observations.

```
Goal: Map the candidates breadth and depth of
      infrastructure automation experience to
      the  applicable job level
Schedule: 30m. 5m intros, 15m my observations, 10m their questions.
Result: (Unqualified) (Associate) (Practitioner) (Senior) (Staff) (Principal)
Notes:






Observation 1 (6m): The candidate has programmatically managed
                    infrastructure that ran databases, services,
                    and web services.
(10+ years full-time-equivalent experience)
(5~9 years full-time-equivalent experience)
(2~4 years full-time-equivalent experience)
(1 or fewer years full-time-equivalent experience)
(No Experience)
(N/A)

Prompts:
- Can you tell me how you have managed hosting and infrastructure
  in your previous roles?
- In particular, tell me how about what you've done with automation.
- Could you elaborate on what kind of services were hosted on the
  infrastructure you managed?
- How much of your time and attention was spent on infrastructure
  management vs other responsibilities?
- Additional prompts as needed.
Notes:




Observation 2 (9m): How has the candidate adapted their philosophy and
                    techniques for infrastructure management throughout
                    their career?
(Adapted as particular technologies or practices have matured)
(Adapts early on the leading edge of technology or practices)
(Adapts after a practice or technology has reached widespread
    adoption to supplant their existing preference)
(Has not adapted, preferring technologies or practices in use
    at the beginning of their career)
(No adaptation due to limited experience)
(N/A)

Prompts:
- Can you tell me how you've adjusted your techniques or philosophy
  towards managing infrastructure throughout your career?
- Are there any significant inflection points that you've seen in
  the industry? What drew you towards or away from them?
- Additional prompts as needed.

Notes:


Candidate Questions (10m):
Prompts:
- Do you have any questions for me about the role?
- Any questions about working on the team or at the company?

Notes:
```

<h3>TL/DR</h3>

There are many ways to structure an interview each with their own benefits and disadvantages and adherents and detractors. It's possible, with a bit of work, to structure each of them in a way that consistently generates fact-based observations.

This mitigates hiring risk by reducing bias and improves the candidates experience by signaling they will be treated fairly both in interview process and as an employee.

To summarize, a fact-based, directed conversational interview has:

- A specific goal and schedule for the interview
- A restriction to recording only objective facts
- Limited observations per interview
- A restriction to make and _record_ one observation at a time
- Multiple choice answers to encourage consistency
- Prompts to drive conversation towards the facts
