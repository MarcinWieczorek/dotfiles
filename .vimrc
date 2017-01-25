" _____             _        _ _ _ _                         _
" |     |___ ___ ___|_|___   | | | |_|___ ___ ___ ___ ___ ___| |_
" | | | | .'|  _|  _| |   |  | | | | | -_|  _|- _| . |  _| -_| '_|
" |_|_|_|__,|_| |___|_|_|_|  |_____|_|___|___|___|___|_| |___|_,_|


set nocompatible               " be iMproved

" Vundle {{{
  filetype off
  set rtp+=~/.vim/bundle/vundle/
  set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/
  call vundle#rc()

" let Vundle manage Vundle
" Bundle 'gmarik/vundle'

" Vundles
"
" github repos
  Bundle 'tpope/vim-fugitive'
  Bundle 'tpope/vim-haml'
  Bundle 'tpope/vim-endwise'
  Bundle 'tpope/vim-surround'
  Bundle 'tpope/vim-ragtag'
  Bundle 'tpope/vim-markdown'
  Bundle 'tpope/vim-unimpaired'
  Bundle 'scrooloose/nerdtree'
  Bundle 'Xuyuanp/nerdtree-git-plugin'
  Bundle 'jistr/vim-nerdtree-tabs'
" Bundle 'msanders/snipmate.vim'
  Bundle 'MarcWeber/vim-addon-mw-utils'
  Bundle 'garbas/vim-snipmate'
  Bundle 'ervandew/supertab'
  Bundle 'tomtom/tlib_vim'
  Bundle 'tomtom/tcomment_vim'
  Bundle 'tomtom/tselectbuffer_vim'
" Bundle 'tsaleh/vim-matchit'
  Bundle 'vim-scripts/taglist.vim'
  Bundle 'Townk/vim-autoclose'
  Bundle 'trapd00r/x11colors.vim'
  Bundle 'lilydjwg/colorizer'
  Bundle 'airblade/vim-gitgutter'
  Bundle 'shemerey/vim-project'
  " Bundle 'Twinside/vim-codeoverview'
  Bundle 'davidhalter/jedi-vim'
" }}}
" General settings {{{
  filetype on
  filetype plugin indent on
  syntax on

  set title
  set shortmess=at      " shorten error messages

  set nrformats+=alpha  " in-/decrease letters with C-a/C-x

  set modeline          " enable modelines
  set modelines=5
  set number            " enable line numbers
  set ruler             " enable something
  set cursorline        " enable hiliting of cursor line
  set backspace=2       " backspace over EOL etc.
  set background=dark   " i prefer dark backgrounds
  set hidden            " buffer switching should be quick
  set confirm           " ask instead of just print errors
  set equalalways       " make splits equal size
  set timeoutlen=1000   " fix delay when switching from insert to normal mode
  set ttimeoutlen=0     " fix delay when switching from insert to normal mode
  set noshowmode        " don't display mode, it's already in the status line
  set lazyredraw        " don't redraw while executing macros
  set laststatus=2      " always show statusline
  set showtabline=2     " always show tab line
  let g:powerline_pycmd="py3"
  let mapleader=","
  let maplocalleader=","
" }}}
" General Keybinds {{{
  " Delete previous word with C-BS
  imap <C-BS> <C-W>

  " Toggle Buffer Selection and list Tag Lists
  map <F2> <Esc>:TSelectBuffer<CR>
  map <F4> <Esc>:TlistToggle<CR>

  " Set up retabbing on a source file
  nmap <silent> <leader>rr :1,$retab<CR> 
   
  " cd to the directory containing the file in the buffer
  nmap <silent> <leader>cd :lcd %:h<CR> 
   
  " Make the directory that contains the file in the current buffer.
  " This is useful when you edit a file in a directory that doesn't
  " (yet) exist
  nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

  " Increase @revision # by 1
  nmap <silent> <leader>incr /@updated wwwd$"=strftime("%a %d %b %Y") p/@revision $
" }}}
" {{{ Window movement
  nmap <M-h> :winc h<CR>
  nmap <M-j> :winc j<CR>
  nmap <M-k> :winc k<CR>
  nmap <M-l> :winc l<CR>
" }}}

  " Color scheme {{{
  syntax on
  set guifont=xos4\ Terminess\ Powerline
  set t_Co=256
  let g:solarized_termcolors=256
  colorscheme solarized
" }}}
" Invisibles {{{
  set listchars=eol:¬,trail:█,nbsp:_,tab:»·
  set list
  nmap <silent> <F5> :set list!<CR>
" }}}
" Tabstops {{{
  set tabstop=4
  set shiftwidth=2
  set softtabstop=4
  set autoindent
  set smartindent
  set expandtab
" }}}
" Folds {{{
" set foldmethod=marker
" set foldcolumn=1
  " au BufWinLeave * mkview
  " au BufWinEnter * silent loadview
" }}}
" Pairings {{{
  set showmatch
" }}}
" Margins {{{
  set scrolloff=5
  set sidescroll=5
" }}}
" Search {{{
  set incsearch
  set ignorecase

  " Toggle that stupid highlight search
  nmap <silent> ,n :set invhls<CR>:set hls?<CR> 
" }}}
" Backup files {{{
  set nobackup
  set nowb
  set noswapfile
" }}}
" Completion {{{
  set wildmenu
  set wildmode=longest,full,list

  set ofu=syntaxcomplete#Complete
" }}}
" Snipmate {{{
  imap <tab> <C-r>=TriggerSnippet()<CR>
" }}}
" NERDTree {{{
  map <F3> :NERDTreeTabsToggle<CR>

  let NERDTreeChDirMode = 2
  let NERDTreeShowBookmarks = 1
" }}}
" Wrapping {{{
  set linebreak
  set showbreak=↳\ 
" toggle wrapping
  nmap <silent> <F12> :let &wrap = !&wrap<CR>
" }}}
" 'NERDTree GIT' {{{
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
" }}}
" 'Bubbling' {{{
  nmap <C-up> [e
  nmap <C-down> ]e
  vmap <C-up> [egv
  vmap <C-down> ]egv
" }}}
" 'Disabling arrow keys' {{{
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>
" }}}
" Formatting with Par (gqip) {{{
  set formatprg=par\ -req
  nmap <F9> gqip
" }}}
" Macros {{{
  " Execute macro "q" with space
  nmap <Space> @q
  " Map @ to + for more comfortable macros on DE kb layout
  nmap + @
" }}}

