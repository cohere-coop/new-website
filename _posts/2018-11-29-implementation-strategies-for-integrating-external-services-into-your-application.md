---
title: "Implementation Strategies for Integrating External Services Into Your Application"
author: Zee Spencer
excerpt: "Modern software relies on external services to take responsibility for some aspect of the product's feature set."
call_to_read: " Learn how to integrate them in a manner that's appropriate for your context."
drip_form_id: 443972707
drip_form_headline: "Looking to get a head-start in refactoring some of your application code? <a href='/products/technical-coaching'>You can get private technical coaching for you or your team!</a>. We'll pair or mob program with you on the hairiest problem you've got, working through the tradeoffs and exploring the nuance while balancing delivery priorities."
drip_form_button: "Schedule your free 30 minute consultation"
topics:
  - Engineering
layout: post
categories: articles
---


Much of modern software relies on external services to take responsibility for some aspect of the product's feature set. This trend will only continue as mostly-single-purpose, non-database, API-first services such as [Auth0](https://auth0.com/), [Drip](https://www.drip.com/), [Twilio](https://www.twilio.com/), [Nylas](https://www.nylas.com/), and [Stripe](https://stripe.com/) continue to evolve and come to market.

This is a good thing! It provides developers with leverage so we can focus on solving the customer's pain-points instead of special-purpose, very hard problems over and over again.

However, adopting an external service has costs. There are (broadly speaking) three ways developers tend to integrate with these external services, each with different pros and cons. Here they are ranked from 'simplest' to 'most complex':
*   Directly embedding calls to the service or its SDK into existing application code. In Rails, this may look like calling the service directly from your models or controllers. In React or Vue, you may call these services directly from the components.
*   Wrapping the service or its provided SDK in a custom library, and calling that library from within your application code.
*   Writing an internal service (Micro or otherwise) that wraps the external service or its SDK and an internal library for calling that service.

Each of these options are entirely valid. Different organizational contexts, team dynamics, and technical affordances and constraints fit different solutions better. I ask myself a number of questions to figure out which tactic to apply:

<div class="banner">
<ul>
<li>Am I trying to learn how the service works and apply it in a proof of concept or am I shipping a production feature?</li>
<li>How closely does the service's or SDK's interface align with the conventions and shared understandings that are baked into the existing codebase? Cognitive load is increased when the affordances of a library conflict with the norms established within the codebase.</li>
<li>Am I interacting with the service in a variety of locations in the codebase? Are there other internal consumers of the service?</li>
<li>Am I testing using grey or black box strategies that don't have access the the processes memory? Or am I testing in a way affords convenient in-process test-doubles or fakes?</li>
<li>What is the likelihood that the service or its SDK will change its interface in a way that requires us to change our code?</li>
<li>How do I intend to handle the service failing? Is it possible to recover without blocking the end-user from using the feature, or am I going to have to tell the user to try again later?</li>
</ul>
</div>

### The Simplest Case: Embedding Calls to an External Service Directly
If this is the first implementation of a feature that relies on the service and I can comfortably encapsulate responsibility for handling the service failure modes within the ruby class or node module I'll go with the simplest option: writing the service calls directly into the existing application code.


<script src="https://gist.github.com/zspencer/296b2e4f64242f7226f9f28a91c472ea.js?file=embedding_in_ruby.rb"></script>

<script src="https://gist.github.com/zspencer/296b2e4f64242f7226f9f28a91c472ea.js?file=embedding_in_node.js"></script>

### Getting Stronger: Encapsulating External Service with a Wrapper Library
Once I'm hitting more complex failure cases, using the service across a variety of features, or experiencing friction due to conflicts between the affordances the library affords and the norms established within the codebase I tend to [sprout](https://agilewarrior.wordpress.com/2010/11/19/refactoring-legacy-code-sprout-method/) an internal library that wraps the external SDK. The internal library starts as a very small class with a method that calls the SDK, or if there are several methods and the interface seems good enough I'll apply the delegator pattern using [Forwardable](https://ruby-doc.org/stdlib-2.5.1/libdoc/forwardable/rdoc/Forwardable.html) or [ActiveSupport's `delegate` core extension](https://guides.rubyonrails.org/active_support_core_extensions.html#method-delegation).




<script src="https://gist.github.com/zspencer/296b2e4f64242f7226f9f28a91c472ea.js?file=wrapping_in_ruby.rb"></script>

<script src="https://gist.github.com/zspencer/296b2e4f64242f7226f9f28a91c472ea.js?file=wrapping_in_node.js"></script>


### Advanced Hardening: Encapsulating the External Service with an Internal Service
If the application deployment and configuration ecosystem is already geared towards inter-service communication, and there are other internal services that consume the external service I may take it a step further and sprout an internal service that encapsulates the external service.


### Keeping it Together
The end goal in these cases is not to make a canonical, brilliant adapter that perfectly encapsulates the service. Instead, it's to help future-me and my teammates by:

*   Leaning into our existing conventions and designs.
*   Providing a seam that allows us to inject behavior or change naming in order to more accurately reflect what we're using the library for.
*   Provide an initial pattern for us to follow (or adapt) as we implement new features with the service.
*   Ensures that if the underlying API changes, we can update the usages in one place.

External services are powerful tools and can save many thousands of dollars in engineering time. Investing in integrating them in an easier-to-maintain and adapt manner will pay dividends within months. Next time you're about to add in a new service:

*   Start with the cheapest and easiest solution: embedding the external service directly into your existing classes and modules.
*   As complexity increases, extract a new class or module which encapsulates the responsibility in a manner that fits with your existing patterns.
*   If you're on the services bandwagon, consider extracting an internal service once it becomes useful; Say when you have a few different teams and their services using the same external service.

For further reading, I'd start with Alistair Cockburn and Michael Feathers [article on the c2 wiki on Ports and Adapters (aka Hexagonal Architecture)](http://wiki.c2.com/?HexagonalArchitecture).
