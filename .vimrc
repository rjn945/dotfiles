" Vim config file
"
" By: Robert Nagle <rjn945@gmail.com>
"
" Inspired by:
" Jonathon McPhearson (http://jmcpherson.org/vimrc.html)
" Tim Pope (http://github.com/tpope/tpope)
" Miles Sterrett (https://github.com/mileszs/dotfiles)
" Steve Losh (https://bitbucket.org/sjl/dotfiles/src)
" Gary Bernhardt (https://github.com/garybernhardt/dotfiles)
" James Martin (https://github.com/jamesmartin/dotfiles)

" Intro ----------------------------------------------------------------------
set nocompatible

" Plugins managed by Vundle
source ~/.vim/bundles.vim

" Colorscheme ----------------------------------------------------------------
set t_Co=256
syntax on
set background=dark
colorscheme rjn

" Basic options ---------------------------------------------------------------

set encoding=utf-8      " Good default these days
set hidden              " Allow buffers to be open but not visible
set visualbell          " Flash, don't beep on broken commands  
set shell=/bin/bash
set wildignore+=*.pyc,.hg,.git
set matchpairs+=<:>
set pastetoggle=<F2>

" Behavior
set scrolloff=5           " Keep 5 lines above and below cursor to see context
set wildmenu              " Show menu of options when using tab-completion
set wildmode=list:longest
set backspace=indent,eol,start
" set cpoptions+=J
" set virtualedit=all     " Navigate beyond end of line

" Display
set showcmd             " Show in progress commands in status bar
set cursorline          " Highlight the line with cursor to make it more visible
set ruler               " Show line and column number
set laststatus=2        " Always show status bar
set showmatch           " Jump to matching paren, brace
set number
" 7.3 set relativenumber
set showbreak=↪
set listchars=tab:▸\ ,eol:¬
set lazyredraw

" Search
set incsearch           " Search while typing
set nohls               " Don't hightlight search results
set ignorecase          " Ignore case when searching...
set smartcase           " ...unless the search contains a capital letter
set gdefault
" Use Perl/Python style regex
noremap / /\v
"vnoremap / /\v
" CTRL-n toggles search highlighting 
:map <silent> <C-N> :set invhlsearch<CR>

" Save when losing focus
au FocusLost * :wa

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="


" Tabs, spaces, wrapping -----------------------------------------------------

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab           " Pressing tab inserts spaces
set autoindent          " Keep indentation from previous line on new line
set smarttab            " Tab/backspace by units of shiftwidth at b.o.l.
set smartindent         " Try to indent after a new block is opened
" set nowrap
" set textwidth=85
" set formatoptions=qrn1
" set colorcolumn=+1


" Status line ---------------------------------------------------------------

" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)


" Backups, undo, history, sessions ------------------------------------------

set history=1000                  " Remember more commands
" 7.3 set undofile
" 7.3 set undoreload=10000
" set backup                        " enable backups
" 7.3 set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files


" Leader --------------------------------------------------------------------

let mapleader = ","
" let maplocalleader = "\\"


" Windows --------------------------------------------------------------------

" Vertical split then hop to new buffer
:noremap <leader>v :vsp^M^W^W<cr>
:noremap <leader>h :split^M^W^W<cr>

" Moving around windows more easily
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" New splits are created to bottom and right
set splitbelow
set splitright


" Folding --------------------------------------------------------------------
" set foldmethod=indent
" set foldnestmax=10
" set nofoldenable
" set foldlevel=1


" Key Mappings ---------------------------------------------------------------

" Go to matching paren with tab
map <tab> %

" Go to start and end of line more easily
noremap S ^
noremap L $

" Use visible (wrapped) lines not file lines   
map k gk
map j gj

" Make yank consistent with delete and change
nnoremap Y y$        

" Add new line above or below without going into insert mode
map <S-Enter> O<ESC>
map <Enter> o<ESC>

" Toggle invisible chars
nnoremap <leader>it :set list!<CR>

" Reindent file
nnoremap <leader>if gg=G''

" Keep search matches in the middle and unfold as needed
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap n nzzzv
nnoremap N Nzzzv

" Put 'move-right' on the Dvorak home row
map s l

" Dvorak for jj, makes getting out of insert easy
imap hh <Esc>


" Python --------------------------------------------------------------------

let python_highlight_all = 1
let python_highlight_space_errors = 0

" Clojure --------------------------------------------------------------------

" Connect SLIMV to Leiningen's Swank server
" This commands assumes tmux is installed and running.
" TODO: Check that these assumptions are true and run a different command if
" not.
let g:slimv_swank_clojure = '! tmux new-window -d -n swank -t :9 "lein swank"'
" let g:slimv_swank_clojure = '! xterm -e lein swank &' 
" let g:slimv_repl_syntax = 1
let g:slimv_repl_open = 1
let g:slimv_repl_split = 2
let g:slimv_keybindings = 2


" HTML -----------------------------------------------------------------------

autocmd FileType html set shiftwidth=2
autocmd FileType html set softtabstop=2
autocmd FileType html set tabstop=2


" Showmarks ------------------------------------------------------------------

let g:showmarks_textlower="\t"
let g:showmarks_textupper="\t"
let g:showmarks_textother="\t"

hi ShowMarksHLl guifg=#FF5454 guibg=#121212 gui=bold ctermfg=9  ctermbg=233 cterm=bold
hi ShowMarksHLu guifg=#005FFF guibg=#121212 gui=bold ctermfg=27 ctermbg=233 cterm=bold
hi ShowMarksHLo guifg=#00AF5F guibg=#121212 gui=bold ctermfg=35 ctermbg=233 cterm=bold
hi ShowMarksHLm guifg=#875FFF guibg=#121212 gui=bold ctermfg=99 ctermbg=233 cterm=bold


" HTML AutoCloseTag ----------------------------------------------------------

au FileType html,xhtml,xml so ~/.vim/bundle/html_autoclosetag.vim


" YankRing -------------------------------------------------------------------

let g:yankring_history_dir = '~/.vim/tmp/'
nnoremap <silent> <F11> :YRShow<CR>

