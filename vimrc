" Soft-tabs
set expandtab
set tabstop=2
set shiftwidth=2

" Auto completion
set wildmode=longest,list,full
set wildmenu

" Remove trailing whitespace when saving
autocmd BufWritePre * :%s/\s\+$//e

" Invisible characters
set list
set listchars=tab:▸\ ,trail:·,nbsp:·

set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent on

" Pathogen
call pathogen#infect()
call pathogen#helptags()

runtime macros/matchit.vim " required by textobj-rubyblock

" Syntax highlighting
syntax on
colorscheme sunburst

if has("gui_running")
  set guioptions-=r
  set guioptions-=T
  set guifont=Monaco:h12"
endif

" Line numbering
set number

" Use the damn hjkl keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Cmdline + Statusline
set cmdheight=1
set laststatus=2
set statusline=%f     " Path to the file
set statusline+=\     " Label
set statusline+=%y    " Filetype of the file
set statusline+=%=    " Switch to the right side
set statusline+=%l    " Current line
set statusline+=/     " Separator
set statusline+=%L    " Total lines

" Write no backup / swap files
set nobackup
set noswapfile
