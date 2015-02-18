vim-github-links
================

A vim plugin to create github links.  

This is a fork of `baroldgene/vim-github-links` to accomodate to the fact that my "origin" usually is not a GitHub(tm) repo. So, instead, this version looks for an `upstream` repo which is supposed to be in GitHub(tm).

Purpose
================

This allows you to add a hotkey that will create a github link for you to the branch, file, and line number of the file you're currently editing.  It puts this link on your clipboard for easy sharing.

Installation
================
I recommend vundle, in your ~/.vimrc:
```
Bundle 'kalikaneko/vim-github-links'
```
and then you can :PluginInstall

Use
================
Once installed you can use the default hotkey of `<F4>` when editing a file.  This craft a github link to the branch, file, and line and put it on your clipboard.  It will also be echoed for you to see.  

![https://github.com/kalikaneko/vim-github-links/raw/master/Github-Link-Demo.gif](https://github.com/kalikaneko/vim-github-links/raw/master/Github-Link-Demo.gif)



Feedback
================
Please feel free to give any and all feedback or pull requests.
