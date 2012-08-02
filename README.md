# Sublime 2 Setup Guide

## Clone the repo

This repo is setup to replace your "User" package, if you want it to live elsewhere just change the clone desintation

    cd ~/Library/Application Support/Sublime Text 2/Packages
    mv User User_original
    git clone git@github.com:coreymartella/sublime_user_settings.git User

## Make a "subl" command line shortcut

    sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/bin/subl

## make rails-footnotes links open with sublime:

* Download and install [SublHandler.app](https://github.com/hiddenbek/subl-handler/downloads)
* Download and install [RCDefaultApp.prefpane](http://www.rubicode.com/Software/RCDefaultApp/)
* Launch RCDefaultApp.prefpane and tell it that txmt links should be opened with SublHandler
![Extension Handler](https://img.skitch.com/20120802-t4kh82g8qfmi9admuecs6u1dgy.jpg)

## Install the packages

* __[Package Control](http://wbond.net/sublime_packages/package_control/installation)__

Once this is installed you can use it for most of the items below.

I've ordered these by some level of priority/value to me but they all have proved handy so far. 

* LiveReload - Also install the [chrome extension](https://chrome.google.com/webstore/detail/jnihajbhpnppcggbcgedagnkighmdlei) makes rails dev even faster.
* SublimeLinter - inline code validation/syntax checking
* ClipboardHistory - Reinstate the ⌃⌥⌘V shortcut for pasting from history
* Live CSS - show colors inline in css files
* Rails Partial - refactor partials
* Rails Related Files - ⌘⇧o to show files related to the current file (model/view)
* Simple Rails Navigator - more rails centric file navigation
* MoveText - expands the default move text functionality to allow left and right movement
* SideBarGit - git context menu for the sidebar
* CloseOldestFile - for when you have lots of buffers open but don't want to close them all
* DashDoc - jump directly to a keyword in Dash.app
* Markdown Preview - preview markdown files
* SideBarEnhancements - lots of content menu items for the sidebar
* SyncedSidebar - keep the sidebar in sync with the open buffer
* TidyJSON - Json formatter
* SublimeCodeIntel - better autocompletion
* SuperCalculator - evaluate and replace math expressions
* ExtremeCSS - mimics mCSS from TextMate
* mSASS - mimics mSASS from TextMate
* jQuery - lots of jquery snippets
* jQuery Snippets Pack - more jQuery snippets
* jQuery Mobile Snippets - snippets for jQuery Mobile

If you want to know what more about any of these google for "sublime <PACKAGE NAME>"

## Customize

open the User package and checkout ```Default (OSX).sublime-keymap``` and ```Default (OSX).sublime-mousemap``` for what customizations have been done

    cd ~/Library/Application Support/Sublime Text 2/Packages/User
    subl .
