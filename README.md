# Sublime 2 Setup Guide

## Clone the repo

This repo is setup to replace your "User" package, if you want it to live elsewhere just change the clone desintation HELLO

    cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages
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

* LiveReload - Also install the [chrome extension](https://chrome.google.com/webstore/detail/jnihajbhpnppcggbcgedagnkighmdlei) makes rails dev even faster. __I also changed this to run on port [35730](#livereload_port_change) instead of 35729 due to a conflict with git__
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

    cd ~/Library/Application\ Support/Sublime\ Text 2/Packages/User
    subl .

<a id='livereload_port_change' name='livereload_port_change'></a>
## Live Reload Port Change
Due to a conflict with git i had to change from port 35729 to 35730 for livereload to work. You might be able to do without this.

  * Edit the LiveReload Settings file: ```subl ~/Library/Application\ Support/Sublime\ Text 2/Packages/LiveReload/LiveReload.sublime-settings```
  * Change the "port" value to 35730
  * Save, quit and restart sublime
  * Right click the "LR" toolbar button in chrome and select "Options"
  * Change the port in the options to 35730
  * Quit and restart chrome


Sublime Text 2 - Useful Shortcuts (Mac OS X)
============================================

Shamelessly plucked from [https://gist.github.com/1207002](https://gist.github.com/1207002) I've overridden some of these to be more like TM defaults, will try to update them at some point. I haven't tried/verified all of these so if you find a mismatch update this file and push!

General
-------

  <table>
  <tr><td>**⌘T**     </td><td>go to file</td></tr>
  <tr><td>**⌘⌃P**    </td><td>go to project</td></tr>
  <tr><td>**⌘R**     </td><td>go to methods</td></tr>
  <tr><td>**⌃G**     </td><td>go to line</td></tr>
  <tr><td>**⌘KB**    </td><td>toggle side bar</td></tr>
  <tr><td>**⌘⇧P**    </td><td>command prompt</td></tr>
  <tr><td>**⌃ \`**   </td><td>python console</td></tr>
  <tr><td>**⌘⇧N**    </td><td>new window (useful for new project)</td></tr>
  </table>

Editing
-------

  <table>
  <tr><td>**⌘L**        </td><td>select line (repeat select next lines)</td></tr>
  <tr><td>**⌘D**        </td><td>select word (repeat select others occurrences in context for multiple editing)</td></tr>
  <tr><td>**⌃⇧M**       </td><td>select content into brackets</td></tr>
  <tr><td>**⌘⇧↩**       </td><td>insert line before</td></tr>
  <tr><td>**⌘↩**        </td><td>inter line after</td></tr>
  <tr><td>**⌃⇧K**       </td><td>delete line</td></tr>
  <tr><td>**⌘KK**       </td><td>delete from cursor to end of line</td></tr>
  <tr><td>**⌘K⌫**       </td><td>delete from cursor to start of line</td></tr>
  <tr><td>**⌘⇧D**       </td><td>duplicate line(s)</td></tr>
  <tr><td>**⌘J**        </td><td>join lines</td></tr>
  <tr><td>**⌘KU**       </td><td>upper case</td></tr>
  <tr><td>**⌘KL**       </td><td>lower case</td></tr>
  <tr><td>**⌘ /**       </td><td>comment</td></tr>
  <tr><td>**⌘⌥ /**      </td><td>block comment</td></tr>
  <tr><td>**⌘Y**        </td><td>redo or repeat</td></tr>
  <tr><td>**⌘⇧V**       </td><td>past and ident</td></tr>
  <tr><td>**⌃ space**   </td><td>autocomplete (repeat to select next suggestion)</td></tr>
  <tr><td>**⌃M**        </td><td>jump to matching brackets</td></tr>
  <tr><td>**⌘U**        </td><td>soft undo (movement undo)</td></tr>
  <tr><td>**⌘⇧U**       </td><td>soft redo (movement redo)</td></tr>
  </table>

XML/HTML
--------

  <table>
  <tr><td>**⌘⇧A**    </td><td>select content into tag</td></tr>
  <tr><td>**⌘⌥ .**   </td><td>close tag</td></tr>
  </table>

Find/Replace
------------

  <table>
  <tr><td>**⌘F**    </td><td>find</td></tr>
  <tr><td>**⌘⌥F**   </td><td>replace</td></tr>
  <tr><td>**⌘⌥G**   </td><td>find next occurrence of current word</td></tr>
  <tr><td>**⌘⌃G**   </td><td>select all occurrences of current word for multiple editing</td></tr>
  <tr><td>**⌘⇧F**   </td><td>find in files</td></tr>
  </table>

Splits/Tabs
-----------

  <table>
  <tr><td>**⌘⌥1**           </td><td>single column</td></tr>
  <tr><td>**⌘⌥2**           </td><td>two columns</td></tr>
  <tr><td>**⌘⌥5**           </td><td>grid (4 groups)</td></tr>
  <tr><td>**⌃[1,2,3,4]**    </td><td>focus group</td></tr>
  <tr><td>**⌃⇧[1,2,3,4]**   </td><td>move file to group</td></tr>
  <tr><td>**⌘[1,2,3…]**     </td><td>select tab</td></tr>
  </table>

Bookmarks
---------

  <table>
  <tr><td>**⌘F2**    </td><td>toggle bookmark</td></tr>
  <tr><td>**F2**     </td><td>next bookmark</td></tr>
  <tr><td>**⇧F2**    </td><td>previous bookmark</td></tr>
  <tr><td>**⌘⇧F2**   </td><td>clear bookmarks</td></tr>
  </table>

Marks
-----

  <table>
  <tr><td>**⌘K space**   </td><td>set mark</td></tr>
  <tr><td>**⌘KW**        </td><td>delete from cursor to mark</td></tr>
  <tr><td>**⌘KA**        </td><td>select from cursor to mark</td></tr>
  <tr><td>**⌘KG**        </td><td>clear mark</td></tr>
  </table>



