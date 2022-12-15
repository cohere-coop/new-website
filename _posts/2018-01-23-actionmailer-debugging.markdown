---
title: A brief adventure in ActionMailer debugging
author: Jennifer Tu
excerpt: Are you making changes involving ActionMailer and hitting `(object doesn't support &#35;inspect)`?
call_to_read: Remember what `ActionMailer::Base.mail` is expected to return.
? call_to_action
topics:
  - Engineering
layout: post
categories: articles
drip_form_id: 443972707
drip_form_headline: "We provide individual and team technical coaching, tailored to your particular context. Whether you want help revising system architecture, testing more effectively, or safely implementing complex new features we've got your back. For more information, read our <a href='/products/technical-coaching'>technical coaching overview.</a>"
drip_form_button: "Schedule your free 30 minute consultation"
---

Shortly before our winter break, I ran into the following error message while updating a mailer:

`(object doesn't support #inspect)`

Here's the code:

```
def notify
   mail(
     from: 'me@...',
     to: 'me+testing@...',
     subject: 'it works',
     body: 'hello world',
   ).deliver_now
 end
end
```

What happened?

`notify` has some expectations for how it should be used. Specifically, it's expected to return a mail object. `deliver_now` is a method you can call on a mail object, and doesn't return a mail object. Attaching that `deliver_now` to the `mail()` meant that `notify` was no longer returning a mail object.

Solution: return the expected object. I kicked out the `deliver_now` and made sure `notify` returned a mail object, then delivered that mail object:
`Mailer.notify.deliver_now`

Problem solved, mail created and delivered.
