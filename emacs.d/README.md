This is an emacs configuration tree that supports a number of
programming languages, particularly Ruby/Rails and other dynamic
languages including Clojure, PHP, Python etc.

In particular, I have a nice config for tab autocompletion, and
flymake is used to immediately highlight syntax errors in Ruby, HAML,
Python, Javascript, PHP and some other languages.

To install, clone this repo to ~/.emacs.d, i.e. ensure that the
'init.el' contained in this repo ends up at ~/.emacs.d/init.el.
Before starting up Emacs, be sure to run 'git submodule update --init'
to pull in the dependencies that have git repos. Upon starting up Emacs
for the first time, further third-party packages will be automatically
downloaded and installed, which may require 'svn' to be on your PATH.

Although these config files aren't meant to be a replacement for
emacs-starter-kit, some of the tips & tricks contained herein might be
useful to others, and there are flags at the top of init.el which can
toggle certain features that might annoy people who aren't me,
e.g. the "viper" vi emulation.

I use Emacs HEAD on a Mac, but the config should work in other
environments too, with any Emacs version >= 23. If not, please file an
issue on the github project: https://github.com/purcell/emacs.d

-Steve Purcell

<hr>

[![](http://api.coderwall.com/purcell/endorsecount.png)](http://coderwall.com/purcell)

[![](http://www.linkedin.com/img/webpromo/btn_liprofile_blue_80x15.png)](http://uk.linkedin.com/in/stevepurcell)
