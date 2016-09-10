" random options "
""""""""""""""""""
set number	"line numbers on the left
set nocompatible	"no vi compatibility
set noexrc	"don't use ~/.exrc config
set cursorline "highlight the current line
set noerrorbells "no audio bell aka beeping
set novisualbell "no visual bell aka blinking
set incsearch "search while typing
set hlsearch "highlight all search matches

" indent options "
""""""""""""""""""
set autoindent	"set indenting
set ts=8	"set tab space
set sw=4	"set soft tab
set noexpandtab	"do not expand a tab to spaces
set shiftwidth=8	"set autoindent to one tab
set colorcolumn=80	"vertical column for text width

" more random options "
"""""""""""""""""""""""
set shell=/bin/zsh "shell to use
set t_vb=	"disable all bells
set undolevels=1000	"undo levels
set foldmethod=marker "allow marking folds
set gfn=Envy\ Code\ R\ for\ Powerline\ 10	"font for gvim
set guicursor+=n-v-c:blinkon0 "cursor for gvim

syntax on	"color syntax highlighting
filetype plugin on	"load the filetype specific config

" color options "
"""""""""""""""""
set t_Co=256
colorscheme peachpuff

" changes to colorscheme "
""""""""""""""""""""""""""
" Name foreground background extras
hi ColorColumn ctermbg=234
hi CursorLine ctermbg=234	cterm=none
hi CursorLineNr ctermfg=255
hi LineNr ctermfg=DarkGrey cterm=none

" latex plugin "
""""""""""""""""
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

" tabs "
""""""""
" :map <C><left> :tabprevious
" :map <C-right> :tabnext
" :map <C-tab> :tabnext
" :map <C-n> :tabnew

" save folds "
""""""""""""""
"au BufWinLeave * silent mkview
"au BufWinEnter * silent loadview


" Make vim recognize Y86 assembly files "
"""""""""""""""""""""""""""""""""""""""""
:autocmd BufNewFile,BufRead *.ys set ft=asm
:autocmd BufNewFile,BufRead *.ys set nosmartindent

" vim powerline "
"""""""""""""""""
set laststatus=2
"let g:Powerline_symbols = 'fancy'

" gvim only "
"""""""""""""
"if has("gui_running")
" set background=light
"endif

" TTY only "
""""""""""""
if &term=~"linux"
" set laststatus=0
colorscheme anotherdark
hi ColorColumn ctermbg=234
hi CursorLine ctermbg=234	cterm=none
hi CursorLineNr ctermfg=255
endif

" vimpager only "
"""""""""""""""""
if exists("vimpager")
set colorcolumn=0	"vertical column for text width
set nocursorline
endif

