---
title: "Real World Code Incident Report! How We Used the OODA Loop to Triage a Amazon RDS Cascade Failure for a Heroku-hosted Rails App"
author: Zee Spencer
excerpt: "<a href='https://www.notabli.com'>Notabli</a> reached out to us the day after Christmas because their API was falling over, and I was bored. Isn't that what everyone uses the Holidays for? Triaging production issues for fun?"
call_to_read: Here's how we diagnosed and resolved the downtime by using the OODA loop!
tags:
  - Engineering
layout: post
categories: articles
drip_form_id: 469828523
drip_form_headline: "Every month, we send out a brief email newsletter summarizing what we've written and what events we are planning. Fill out this form to get it right in your email!"
drip_form_button: "Sign up for our newsletter"
discuss_url: https://dev.to/cohere/incident-report-how-we-used-the-ooda-loop-to-triage-a-amazon-rds-cascade-failure-for-a-heroku-hosted-rails-app--54bd
---


[Notabli](https://www.notabli.com) reached out to us the day after Christmas because their API was falling over. Their Friendly Engineer, [Ty Rauber](https:/\/www.linkedin.com/in/ty-rauber-69822b5/) was working hard with their Head of Product, [Jackson Latka](https://www.linkedin.com/in/jacksonlatka), to bring it back up. They wanted a second pair of programmer-eyes, and I was bored. Isn't that what everyone uses the Holidays for? Triaging production issues for fun?


### Triaging a Cascade Failure - OODA Loop 1 - Maybe it's the N+1 Query?

We hopped into a [Zoom](https://zoom.us/) room together with their Product Lead, [Jackson Latka](https://www.linkedin.com/in/jacksonlatka/) and began the debugging process. When debugging, I try to consciously follow the [OODA loop](https://en.wikipedia.org/wiki/OODA_loop): Observe, Orient, Decide and Act.

First, _Observe!_ Jackson granted me rights to manage their [Amazon Relational Database Service (RDS)](https://aws.amazon.com/rds/), [Heroku](https://www.heroku.com/) for hosting, [Papertrail](https://papertrailapp.com/) for logging and [Scout](https://scoutapp.com/) for application monitoring. Huge shout-out to Jackson for the trust he granted, it's the main reason this worked so well. Teams move at the speed of trust, after all!

Second, _Orient!_ I began exploring the architecture with Ty. Notabli's API is a [Ruby on  Rails](https://rubyonrails.org/) application hosted on Heroku. It uses [Sidekiq](https://sidekiq.org/) to perform background jobs, many of which are computationally intensive as they process video and images. Further, the main endpoint is a stream of _Moments_, which is resolved by a number of data fetching operations, one of which is an [N + 1 Query](https://secure.phabricator.com/book/phabcontrib/article/n_plus_one/), the other of which is a massive cross-table inner join.

Third, _Decide!_ Being (primarily) a programmer, I immediately decided to attempt to resolve the problem via code.


Fourth, _Act!_ Because they use the [jsonapi-resources](https://github.com/cerebris/jsonapi-resources) gem, a library I'm personally unfamiliar with, it was difficult to find a seam to begin resolving the query problems. Ty and I blundered through, poking and prodding; but after 15 minutes, we decided this was a dead-end for now.

On reflection, I realized I had violated one of my principles of effective downtime recovery: _Attempt to solve downtime first at the infrastructure level before making changes that would require a redeploy of the application._  I don't follow this as hard and fast, but it's served me well over the decades.

{: .banner}
>  _Attempt to solve downtime first at the infrastructure level before making changes that would require a redeploy of the application._


### OODA Loop 2 - Maybe it's the disk?

We went back to _observing_ the AWS dashboard and what did I find? The first major outage had happened when the system ran of storage space!


<p class="tc">
<img alt="The RDS Instance's Free storage space's Precipitous Decline" src="/images/storage-space-cascade-failure.png" />
</p>

After briefly kicking myself for not noticing that sooner; I dug in a bit further and discovered that right before failure, the server was running at the maximum [IOPS](https://en.wikipedia.org/wiki/IOPS) it could provide! IOPS, for those whose eyes glaze over when they see a Wikipedia article, is the throughput of read and write disk operations.

Diving in deeper we realized it was the _write operations_ that were using up all the IOPS. I resumed kicking myself for wasting ~30 minutes on mitigating a _read_ related issue; and proposed a two-step bandaid:


1.  We upgrade the disk, as [AWS grants IOPS based on disk-size](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html); this should bring the application back up and allow it to handle the increased traffic.
1.  Once the system is stable, we look for why there are so many writes and determine if any of them can be removed from the system.

This, thankfully, worked. The application came back up! It maintained a reasonable degree of performance, and there was a reproducible way to bring the application back up in the event the database fell over again.

Unfortunately, because all their work is done on a volunteer basis; we ran out of time to perform step 2!

To help fund the time we're going to spend fixing it, we're offering our friends and followers the opportunity to join us _free_ or _with donation_ on January 15th, 2019 at 10AM PT/1PM ET for a two hour _[Real World Code Livestream: Preventing Excessive Concurrent Write Induced Cascade Failures in a Heroku Hosted, Amazon RDS Backed Ruby on Rails App](/events/january-15th-2019-10am-pt-1pm-et-real-world-code-livestream-preventing-cascade-failures-caused-by-excessive-concurrent-writes-in-a-heroku-hosted-amazon-rds-backed-ruby-on-rails-app/?utm_campaign=real-world-code-2019-01-17)_. We're not sure if we'll fully diagnose and debug why the write cascade happens in a single session, so we may have a second session on January 29th at the same time!
