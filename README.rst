==========
VIMFIDDLER
==========

Requirements:

* Selenium
* Vim with python 2 support (check with :python print "hello")
* The selenium Python driver (included)
* A web server to host the fiddles (for instance apache)

Installing
==========

1. Unpack vimfiddler in ~/public_html (or use a symbolic link)
2. You need Selenium Server from http://seleniumhq/download/
3. On my system, the command `selenium` starts the selenium server. If your system is different, edit fiddler.vim

Using
=====

* Start vim
* In Vim::

    :source fiddler.vim
    :StartSeleniumServer
    :StartSeleniumClient
    :OpenFiddle example
