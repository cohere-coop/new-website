---
title: "Practical Empathy, or: How I Stopped Hating Pair Programming"
author: Betsy Haibel
excerpt: Pairing works better for me nowadays because I realized that pairing is a programming skill. Just like for loops, code review, or domain modelling. And like any other skill, it can be taught and learned.
call_to_read: People love or hate pair programming, and for good reason! It's a tough skill!
call_to_action: What parts of pairing used to be awkward or frustrating for you? What parts still are? We'd love to hear your pairing stories, too.
tags:
  - Collaboration and Communication
  - Engineering
layout: post
categories: articles
drip_form_id: 924600767
drip_form_headline: "Want to help your team more effectively understand how differences in privilege impact how to pair? Let us know and we'll set up a time!"
drip_form_button: "Request a Quote"
---

I used to think I hated pairing.

One of my first experiences pairing was with my least favorite co-worker. In my previous programming jobs, I’d always been the only Rails developer, or one of two, and we’d had a lot to do. Too much for us to be able to “afford” to pair on a regular basis. I was great at translating my thoughts about code into code, but not at translating them into words. This co-worker wanted to talk about patterns and theory all the time, and it almost seemed like he was doing this to avoid the “writing actual code” part. We were on a deadline, and I wound up relegated to the backseat in our pairing. Pairing seemed like both an aggravating experience and a colossal waste of time.

Another early pairing experience was with a brand-new boss on deep legacy code neither of us was familiar with. He flipped through tab after tab after tab of under-tested code while driving. I read pretty fast, but... not that fast. I had no idea what was going on, and he kept telling me that we didn’t have time to slow down and write characterization tests. I was really scared of letting on how confused I was. Not only was he my new boss, not only did he have at least fifteen years more experience than I had… I was the first female engineer this company had hired, this was the largest codebase I’d ever worked on, and I was petrified that people would think I’d gotten a “senior” title because I was friends with the CTO. So I kept on trying to keep up, feeling -- and probably looking -- stupid, because I didn’t know how to get the pairing session back on equitable ground.

But then I had some really great pairing experiences. It started with the time that I was stuck in the middle of this ugly ElasticSearch multi-tenancy problem. I was trying to make searches across multiple tenants reassemble themselves seamlessly for end-users. I’d spent a week at 80% done, not quite able to keep the full thing in my head at once. But then I started pairing with someone who got the other 20% of the problem and we just flew through the rest.

Today I pair a lot more often than I did back then. It’s not sunshine and roses all the time, but when it works it works. I get to learn new things from other developers, and get parallax on tricky problems! I get to share new tricks with people and empower them to be even more awesome! And, now that I’ve faced down absolutely horrific distributed-systems bugs both _alone_ and _with a pair_… I have learned that having a pair won’t make SFTP behave itself, but that at least I’ll have someone to vent to when it has yet another weird connection lag!

Pairing works better for me nowadays because I realized that pairing is a programming skill. Just like for loops, code review, or domain modelling. And like any other skill, it can be taught and learned.

We don’t teach people how to pair, usually -- we throw a second chair at a desk, maybe a second keyboard, and hope for the best. Or when we do teach people to pair, it’s usually in some hyper-organized Pivotal-style fashion where you pair all day. It’s exhausting, and you don’t really know how to translate it to “real life.”

It’s no fun learning to play doubles ping pong when neither you nor your partner have ever played or seen doubles before. It’s no different with pairing: learning a few basics around expectations and communication makes the difference between awful and wonderful pairing. Here are some techniques that you can use to avoid classic pairing traps!

## Technique #1: set up a pairing structure

It doesn’t entirely matter which pairing structure you use -- some people switch keyboards every twenty minutes, and some people after every test. Other people switch keyboards whenever one of them wants to Google something! This can feel silly and artificial at first. But, even though it’s artificial, it’s not silly at all. Most of the work of pairing isn’t code, it’s communication -- and communicating about who should be driving is surprisingly hard sometimes! Letting a pairing structure figure out keyboard switches for you frees up your brain for important things, like “naming variables properly” or “figuring out where that browser event is even _coming_ from.”

## Technique #2: make it easy for your pair to give you feedback

You can start out by making it clear to your pair partner that they can give you feedback at any time. Structure helps here, too -- maybe you can designate 15 minutes for feedback before lunch, and another 15 towards the end of the day. These strategies don’t always work, but they’re a good start! To really help your pair out, don’t just use your words -- make sure your actions match them. When pairing, you have a lot of decision points where you can choose to make the pairing session safer and more collaborative. If your pair makes a suggestion that seems dubious, try saying, “I’m not too sure about this, but I’m okay giving it a try. Can we timebox exploring it to twenty minutes, though?” That way, you’ve _shown_ your pair that you’re receptive to their ideas -- and when that fifteen-minute feedback session rolls around, they’ll be more comfortable talking about what’s on their mind.

## Technique #3: own bad pairing experiences

Practice empathy for your pair! It can be easy to blame your pair if you’re not working effectively with them. To think, “oh, they’re not really paying attention,” or “they’re not pulling their weight.” But the signs of a pair partner who’s “lazy” are the same as the signs of one who’s confused, or who’s having a rough personal week. Empathy for your pair doesn’t necessarily mean needing to know what’s going on with them. (Think about it -- if someone can’t concentrate because of a family emergency, do they really want their co-workers prying into their business?) Empathy for your pair means assuming good intent, and trying to make things easier. Sometimes, the most empathetic thing you can do is take ownership of your negative feelings about the pairing session: “Hey, I feel like my head isn’t in the game right now. Can we take five minutes, grab more coffee, and have you take a turn driving when we get back?”

When I think back to some of my worst pairing experiences, I realize that -- even if I couldn’t have rescued them -- with the skills I have today, I could probably have made them better. Some parts (microaggressions, rudeness, or hostility, for instance) shouldn’t ever be my responsibility to fix. But even so: when I think about the pair who “couldn’t keep up” with me, who was “talking about patterns instead of fixing the problem,” I wonder: what if I’d asked him to type what he meant, instead of talking about it abstractly? When I think about the pair who wouldn’t slow down to write characterization tests -- what if I’d asked to drive? Then at least I would have been in control of the tab-flipping. And maybe I could have said “can we humor me and write just one characterization test?” Then, I could have shown that even if characterization tests might have slowed _my pair partner_ down, they would have sped _us_ up -- as a pair.

Pairing always involves two people. I used to hate pairing, and now I don’t. Some of that is that I work in different environments now. But a lot of it was just -- learning more! And the great part about that is that anyone can do that, too.

---

A few months ago, Jennifer and I had the joy of working with [Marlena Compton](https://twitter.com/marlenac) on [PearConf](https://twitter.com/pearconf) -- a workshop and conference all about making pairing and agile better and more inclusive. We’d like to make some of the workshop content available in zine form, but we need your help! We’ve put together a Kickstarter here:

[https://www.kickstarter.com/projects/marlenac/lets-pair](https://www.kickstarter.com/projects/marlenac/lets-pair)

We appreciate all pledges, and would like to note that the top tier -- that 7K for a full-day custom workshop -- is a 30% discount off what we ordinarily offer that workshop for. That’s how much getting this project funded means to us. If you’ve learned from this article, and want more accessible, informative educational materials about pairing, then [pledge and signal boost the kickstarter campaign for _Let’s Pair_](https://www.kickstarter.com/projects/marlenac/lets-pair)!
