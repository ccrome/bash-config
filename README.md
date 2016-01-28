# bash-config
my .emacs, .bashrc, etc. files.   Extrodinarily un-interesting for everybody but me.


To use:

cd
git clone https://github.com/ccrome/bash-config.git .bash-config
ln -s .bash-config/emacs .emacs

Then, from a linux source code root directory you can:

cd linux-src
ln -s ~/.bash-config/dir-locals.el.linux .dir-locals.el

or from an se directory:
ln -s ~/.bash-config/dir-locals.el.signalessence .dir-locals.el
