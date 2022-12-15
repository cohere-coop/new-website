---
title: GraphQL and Rails - A Brief Introduction
author: Zee Spencer
excerpt: While the marketing will tell you the concepts behind GraphQL are simple, a full GraphQL implementation is quite complex.
call_to_read: Here are a few tips to help you learn to use GraphQL and Rails effectively together.
call_to_action: Adopting GraphQL and want a leg up? Zee is available to help you and your team overcome some of the hurdles in the GraphQL learning curve. Reach out to hello+zee-graphql@wecohere.com or fill in the form below!
topics:
  - Engineering
layout: post
categories: articles
drip_form_id: 443972707
drip_form_headline: "We provide individual and team technical coaching, tailored to your particular context. Whether you want help revising system architecture, testing more effectively, or safely implementing complex new features we've got your back. For more information, read our <a href='/products/technical-coaching'>technical coaching overview.</a>"
drip_form_button: "Schedule your free 30 minute consultation"
---

Over the past 9 months, we've applied GraphQL and Rails as the API platform on client projects. Most of these projects rely on rapid iteration across both the user interface and the data model as we follow the signals for product market fit. Rails and ActiveRecord continue to provide incredibly flexible data management and persistence techniques that is well complemented by GraphQL's fitness as a [seam](https://www.informit.com/articles/article.aspx?p=359417&seqNum=3) for stubbing out fake data, rolling out new fields, and deprecating existing fields in a safe way that is decoupled from the persistence layer.

That said, GraphQL in general and GraphQL in Rails in particular have a few caveats worth considering before jumping on the train:

- While the marketing will tell you the concepts behind GraphQL are simple, GraphQL is quite complex. GraphQL is a distributed database composed of four major parts: a strongly typed data model, a persistence and retrieval layer, a transportation layer, and a client (many of which have caches!). Understanding each of those things independently is difficult enough, but the interactions and subtle tensions between them brings the complexity to a higher level.

- GraphQL is significantly less opinionated about design than [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) or [HATEOS](https://en.wikipedia.org/wiki/HATEOAS). This forces us to make more decisions about how to design our API and how to make changes happen than relying on the [json:api spec](https://jsonapi.org).
- The GraphQL ecosystem still feels slightly to the left of the break even point on [technology maturity life cycle](https://en.wikipedia.org/wiki/Technology_life_cycle). The community is vibrant and growing. Plus, they're investing in tooling that provide quality of life improvements at a breakneck pace (a blessing and a curse).

All that being said, if you choose to join the ranks of [Github](https://developer.github.com/v4/), [Shopify](https://help.shopify.com/en/api/custom-storefronts/storefront-api/graphql), and others who are building GraphQL APIs on top of Rails apps there are a few suggestions to help lighten your load.

1. Join the [GraphQL Slack](https://graphql-slack.herokuapp.com/). Yes, we are all a bit overwhelmed by Slack Overflow, but the community there is both friendly and helpful. Plus, it's where the developers of the [GraphQL Ruby library](http://graphql-ruby.org/) hang out. Having direct access to people working in Ruby and GraphQL has leveled me up quite a bit faster than relying purely on my own experience.
1. Take a gander at the [GraphQL Rails Example](https://github.com/wecohere/graphql-rails-example) that pulls some of the lessons learned about implementing and testing a Rails GraphQL server I’ve gleaned over the last 6 months. Yes, the feature tests are using [cucumber-js](https://github.com/cucumber/cucumber-js) instead of Ruby. That’s because 99% of the work we’ve been doing is in react-native and vue apps with [Apollo](https://www.apollographql.com/) as the client, and doing feature testing with the same stack your client app uses is immensely useful at finding and isolating odd corner cases.
1. Read through [this excellent guide to designing GraphQL APIs by the folks at Shopify](https://gist.github.com/swalkinshaw/3a33e2d292b60e68fcebe12b62bbb3e2#input-structure-part-1).
1. Accept that it takes time to find the grain of GraphQL, both as a design philosophy and the Rails implementations particular idioms. I’ve found that my learning has been very much stepwise, with plateaus that eventually result in conceptual breakthroughs.
1. Embrace service objects. Mutations can quickly become complex, firing off events of their own and making multiple data changes at once. While my mutations and even some queries start as methods, they are quickly get extracted to objects that can be tested at the rspec level once they reach a dozen or so lines of code.

Overall, I’m happy with how well Rails and GraphQL apps serve as the core for an API-driven
platform.
