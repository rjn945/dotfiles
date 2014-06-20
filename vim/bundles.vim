" Vim bundles (plugins)
"
" Vundle is a tool modeled on Ruby Bundler with the goal of making
" installing, updating and removing plugins as easy as possible.
" 
" This files lists the bundles I want. Then I can run :BundleInstall!
" to make sure all plugins listed are installed and up-to-date. 

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'xolox/vim-reload'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'rjn945/python.vim'
Bundle 'honza/snipmate-snippets'
Bundle 'kien/ctrlp.vim'
Bundle 'HTML-AutoCloseTag'
Bundle 'ShowMarks7'
Bundle 'YankRing.vim'
Bundle 'taglist.vim'
Bundle 'ervandew/supertab'
Bundle 'paredit.vim'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'
"Bundle 'slimv.vim'
"Bundle 'VimClojure'

filetype plugin indent on
