# This requires superpowers (and must be run as root)

# Install essential software
apt-get update
apt-get install aptitude
aptitude install gcc make

# Add other package sources
add-apt-repository ppa:cassou/emacs
add-apt-repository 'deb http://dl.google.com/linux/deb/ stable non-free main'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

# Install the rest of the software
aptitude remove kopete bluedevil kppp kmousetool kmag synatiks kvkbd rekonq
aptitude install google-chrome firefox flashplugin-installer 
aptitude install gimp inkscape digikam 
aptitude install audacity easytag
aptitude install unison sshfs tmux curl
aptitude install git subversion bzr mercurial
aptitude install zlib1g-dev
aptitude install vim gvim kdevelop eclipse kdiff3 qtcreator exuberant-ctags emacs-snapshot python-fontforge
aptitude upgrade
