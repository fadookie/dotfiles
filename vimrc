set nocompatible "Do not enforce vi backwards compatibility
syntax on " syntax highlighting on

filetype on
filetype plugin on
filetype plugin indent on "Auto-indent plugin

set ruler "Ruler at bottom showing cursor position
set number
"I prefer set relativenumber but it's not available in older vim builds

"Formatting rules
set expandtab                                   " Tabs are converted to spaces
set tabstop=4                                   " Tabs are four spaces wide
set softtabstop=4
set shiftwidth=4                                " When auto-indent is on, use four spaces
set smarttab                                    " Switch between indent and tab, depending on location

" Set Auto-indent options
set cindent
set smartindent
set autoindent

set hlsearch "highlight search results

set hi=150 " command history is 150 long

" forward-delete key
inoremap <C-d> <Del>

" new omni-completion key
inoremap <C-Space> <C-x><C-o>

"Source another config
"so /path/to/config
