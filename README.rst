==========
VIMFIDDLER
==========

Requirements
============

* Selenium
* Vim with python 2 support (check with :python print "hello")
* The selenium Python driver (included)
* For jslint integration, a working jslint command (on my system, I use
  node.js + npm install jslint -g)
* A web server to host the fiddles (for instance apache)

Features
========

* A "fiddle" consists of a ``index.html`` file and a ``code.js`` file
* When either file is saved, vimfiddler refreshes the browser (via selenium)
* jslint integration, hit F4 to jslint the current file.

Installation
============

* Unpack vimfiddler in ~/public_html (or use a symbolic link)
* You need Selenium Server from http://seleniumhq/download/
* On my system, the command ``selenium`` starts the selenium server. 
  If your system is different, edit ``fiddler.vim``
* On my system, the command ``jslint`` starts jslint, if your system is different,
  edit ``fiddler.vim``.
* Edit ``fiddler.vim`` to use a different browser. The default is ``*firefox``.
  Use ``*googlechrome`` to use Chrome.

Use
===

Video: http://vimeo.com/32148952

* Start vim
* In Vim::

    :source fiddler.vim
    :StartSeleniumServer
    :StartSeleniumClient
    :OpenFiddle example

* When either ``code.js`` or ``index.html`` is saved, Vim will tell selenium
  to refresh the page.
