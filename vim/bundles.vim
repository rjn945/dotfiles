" Vim bundles (plugins)
"
" Vundle is a tool modeled on Ruby Bundler with the goal of making
" installing, updating and removing plugins as easy as possible.
" 
" This files lists the bundles I want. Then I can run :PluginInstall!
" to make sure all plugins listed are installed and up-to-date. 

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle itself
Plugin 'VundleVim/Vundle.vim'

" essentials
Bundle 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'scrooloose/nerdcommenter'

" less essential but used
Plugin 'xolox/vim-reload'
Plugin 'xolox/vim-misc'
Plugin 'editorconfig/editorconfig-vim'

" use someday?
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'garbas/vim-snipmate'
Plugin 'ervandew/supertab'
Plugin 'taglist.vim'

" dependency satisifying
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'

" Python
Plugin 'rjn945/python.vim'

" HTML
Plugin 'HTML-AutoCloseTag'

" Javascript
Plugin 'scrooloose/syntastic'

" Clojure
Plugin 'paredit.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'guns/vim-clojure-static'

call vundle#end()
filetype plugin indent on
