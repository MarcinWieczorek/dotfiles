" _____             _        _ _ _ _                         _
" |     |___ ___ ___|_|___   | | | |_|___ ___ ___ ___ ___ ___| |_
" | | | | .'|  _|  _| |   |  | | | | | -_|  _|- _| . |  _| -_| '_|
" |_|_|_|__,|_| |___|_|_|_|  |_____|_|___|___|___|___|_| |___|_,_|


set nocompatible      " be iMproved

filetype off
set rtp+=~/.vim/bundle/vundle/
set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/
call vundle#rc()

" let Vundle manage Vundle
" Bundle 'gmarik/vundle'

" Vundles
"
" github repos
" Add #endif to CPP
  Bundle 'tpope/vim-endwise'
  Bundle 'tpope/vim-unimpaired'
  Bundle 'scrooloose/nerdtree'
  Bundle 'Xuyuanp/nerdtree-git-plugin'
  Bundle 'jistr/vim-nerdtree-tabs'
" Tracks time spent on projects
  Bundle 'wakatime/vim-wakatime'
  Bundle 'ervandew/supertab'
  Bundle 'tomtom/tlib_vim'
  Bundle 'tomtom/tcomment_vim'
  Bundle 'tomtom/tselectbuffer_vim'
  Bundle 'vim-scripts/taglist.vim'
  Bundle 'Townk/vim-autoclose'
  Bundle 'trapd00r/x11colors.vim'
  Bundle 'lilydjwg/colorizer'
" Shows changed lines in a file
  Bundle 'airblade/vim-gitgutter'

filetype on
filetype plugin indent on
syntax on

set nrformats+=alpha  " in-/decrease letters with C-a/C-x
set modeline          " enable modelines
set modelines=5
set number            " enable line numbers
set ruler             " enable ruler
set cursorline        " enable hiliting of cursor line
set backspace=2       " backspace over EOL etc.
set background=dark   " I prefer dark backgrounds
set hidden            " buffer switching should be quick
set confirm           " ask instead of just print errors
set equalalways       " make splits equal size
set lazyredraw        " don't redraw while executing macros
set laststatus=2      " always show statusline
set cc=80             " color column 80
set mouse=a           " enable mouse
set nowrap            " don't wrap long lines

" Tabs
set expandtab         " use spaces instead of tabs
set tabstop=4         " tab is 4 spaces
set shiftwidth=0      " use tabstop
set softtabstop=0     " use tabstop

" Indent
set autoindent        " start new line with indent
set smartindent       " add indent on braces etc.

" Scrolling
set scrolloff=5       " The cursor always is at middle height
set sidescroll=5      " 5 columns when scrolling horizontally"

" Search
set incsearch         " auto go to matched text
set smartcase         " Smart search, lowercase is ignorecase

" Invisibles
set listchars=trail:█,nbsp:_,tab:»·
set list
nmap <silent> <F5> :set list!<CR>

" Toggle highlight search
nmap <silent> ,n :set invhls<CR>:set hls?<CR>
"
" Backup files
set nobackup
set nowb
set noswapfile

" Completion
set wildmenu
set wildmode=longest,full,list
set ofu=syntaxcomplete#Complete

" Support XDG
set viminfo+='1000,n$XDG_DATA_HOME/vim/viminfo

" NERDTree
map <F3> :NERDTreeTabsToggle<CR>
let NERDTreeChDirMode = 2
let NERDTreeShowBookmarks = 1
let g:NERDTreeIndicatorMapCustom = {
\ "Modified"  : "✹",
\ "Staged"    : "✚",
\ "Untracked" : "✭",
\ "Renamed"   : "➜",
\ "Unmerged"  : "═",
\ "Deleted"   : "✖",
\ "Dirty"     : "✗",
\ "Clean"     : "✔︎",
\ "Unknown"   : "?"
\ }
"
" Wrapping
set linebreak
set showbreak=↳\ 
" toggle wrapping
nmap <silent> <F12> :let &wrap = !&wrap<CR>

" Move lines with CTRL
nmap <C-up> [e
nmap <C-down> ]e
vmap <C-up> [egv
vmap <C-down> ]egv

"Disabling arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Open help in new tab
:cabbrev help tab help

" Color scheme
let mapleader=","
let maplocalleader=","
set t_Co=256
colorscheme gruvbox

" Update Xresources
autocmd BufWritePost .Xresources !xrdb %

" Reload sxhkd on config write
autocmd BufWritePost ~/.config/sxhkd/sxhkdrc :silent !pkill -USR1 -x sxhkd
