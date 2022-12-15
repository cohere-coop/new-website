---
title: "Understanding Git: Configuration of Repositories and Remotes"
author: Zee Spencer
excerpt: "Recently, a dev.to community member asked for someone to explain what's going on in their <tt>.git/config</tt> when they have GitHub and Heroku remotes."
call_to_read: "This article refines your mental model by providing a glimpse into the history of software configuration and version control, and using that to solve a real-world configuration problem."
topics:
  - Engineering
layout: post
categories: articles
drip_form_id: 443972707
drip_form_headline: "We provide individual and team technical coaching, tailored to your particular context. Whether you want help revising system architecture, testing more effectively, or safely implementing complex new features we've got your back. For more information, read our <a href='/products/technical-coaching'>technical coaching overview.</a>"
drip_form_button: "Schedule your free 30-minute consultation"
discuss_url: https://dev.to/cohere/understanding-git-configuration-of-repositories-and-remotes-39g8#comments-container
---
Recently, a [dev.to community member asked if someone could explain`.git/config` like they are five](https://dev.to/jessachandler/explain-git-config-like-im-five-750).

When I first started attempting to help, I  realized that to explain `.git/config`, we need to start a few steps back. First, by looking at the history of software configuration; then investigating the differences between a _remote_ and a _repository_ is in Git. and finally showing how `.git/config` pulls them together in a powerful tool that decreases your cognitive load when shoveling code back and forth on the Internet.

[Git is difficult by design](https://www.quora.com/Why-is-Git-so-hard-to-learn)_._ That's why I struggle with Git. If you also struggle with Git, that might be why too. Git's deliberate difficulty isn't necessarily a bad thing. But it does mean that becoming fluent in Git requires us to invest in building a deep and accurate mental model.

But first, let's look at how the current model for Unix program configuration came to be. This will let us diagnose unusual behaviors in any application that's configured with dotfiles, not just Git! If you're already familiar with user and directory level dotfiles, you may want to skip ahead to [Configuring Git](#configuring-git). For those who love history and nuance, read on!

### A (Sharply Abridged) History of Software Configuration

Once upon a time, we operated computers by writing a program's instructions directly in binary on [punch cards](https://en.wikipedia.org/wiki/Punched_card). The program was executed card-by-card until it was complete, at which point the output was printed onto paper.

This meant changing the behavior of a program required _physical changes_ to the cards. Either by injecting new cards or replacing them. There weren't any programs that changed their behavior depending on _where_ or _by whom_ the program was run.


Over time, computers became more robust and the mechanisms for inputting and distributing programs less precarious. More and more people adopted them. And people have _preferences_. Programs needed a way to know the _default behavior_ the person running it wanted.

So programmers instructed their programs to look for a file specific to the person using the program, load the data stored in that file, and reference it when making decisions about how to behave.

These configuration files are often readable by both humans and computers. This lets both robots and people perform diagnostics and adjustments.

This worked pretty well! People could decide if they want the program to _bleep_ when done instead of _blorp_, or otherwise adjust details the programmer took the time to expose as configurable.

As programs became more general purpose, the _working directory_ (the location on the filesystem where the person is running the program) became relevant in determining the program's behavior.

People don't want to have to pass in `--group-by spending_category` when we run a `summarize_csv` program in my `business-finance/` directory! That's a whole extra 26 keystrokes! We want to run `summarize_csv`, and have the computer understand the rest automatically.

So programmers instructed their program to _also_ look for a configuration file within the current working directory. As personal or project level needs became more complex, these individual files evolved into folders to store the myriad details necessary to meet these needs.

So… what does this have to do with Git?

### Configuring Git

Git's purpose is to keep track of changes to files within a particular directory and to allow one to distribute those changes to other git users. It relies on the `.git` folder within that directory to store both those changes and how it tracks them. The  `.git/config` file in that directory exists to provide default or contextual behavior to the `git` program. If you poke around inside the `.git` folder in a project, you'll see all kinds of files and directories that map back to concepts in Git.

When distributing changes, there are two sides to consider:
*   Where may I find changes that I want to apply?
*   Where may I send changes so that others may apply them?

Before Github, common practice was for each person kept a local copy of the folders history on their machine as a _local repository_. They would then grant access to it via HTTP, SSH or email.

This required the repository owner to maintain a server that others could access as a _remote repository_. They'd also need to do the work to ensure the repository remained accessible to those who wanted it and manage who is allowed to write to the repository.

Developers with write permissions make changes _locally_ and _push_ them to their publicly readable _remote_ server.

Github removed the requirement to manage your own infrastructure when you want other people to be able to read or contribute to your code. Github absorbed the hosting and maintenance costs of the _remote_ and provided powerful tools for offering changes to the project maintainer.  While people have been forking (creating a copy of a project so you can customize it) open source projects for decades, Github made it drop-dead easy to fork the original maintainer's _remote repository_ from the original maintainer to a _remote_ repository you own. You can then _clone_ your copy down and push whatever changes to it you like; then suggest to the maintainer that they apply your changes using a _pull request_.

If you're the maintainer or person contributing a change there are now 4 repositories in play:
*   The maintainer's local repository
*   The contributor's local repository
*   The maintainers GitHub remote that mirrors their local repository
*   The contributors GitHub remote that mirrors the maintainers GitHub remote

Each repository is accessible via its own unique URL. You may notice you don't have to type that URL each and every time you _push_ to or _pull_ from Github. That's because the `git` command line program stores this configuration information in the `.git/config` file. When you crack that file open, you see something like the following structure:

```
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
	ignorecase = true
	precomposeunicode = true

[remote "origin"]
	url = git@github.com:your-git-username/your-project.git
	fetch = +refs/heads/*:refs/remotes/origin/*

[branch "master"]
	remote = origin
	merge = refs/heads/origin
```

The syntax of this file mirrors that of the [INI file format](https://en.wikipedia.org/wiki/INI_file), which is a human and machine readable format that uses square brackets to group configuration options and key-value pairs that use a single equals sign to assign values to the configuration.

If you want to learn more about what options are available to configure in the `.git/config` option, you can run the `man` program from your terminal like so:

`man git-config`

This opens the (extensive!) manual for `git-config` and allows you to use the `/` key to enter "search" mode or use the up and down arrows and page up/page down keys to browse through and search for options. There's a lot of options to wade through! [If you want more detail on the "remote" and "branch" configuration groupings, you can read my original reply on dev.to](https://dev.to/zspencer/comment/6m9n).[ ](https://dev.to/zspencer/comment/6m9n)

For those of us still working our way towards a strong mental model of Git, keep strong! You can do it! But keep in mind that it's OK to not know everything about the tool. All you need is a level of fluency that meets _your own needs and desires_. You don't need to know all the things just because the technocratic gatekeepers in our industry think you "should."