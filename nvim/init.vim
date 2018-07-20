call plug#begin('~/.local/share/nvim/plugged')

" System
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'mklabs/split-term.vim'
Plug 'mileszs/ack.vim'

" Syntaxes
Plug 'leshill/vim-json'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'evanmiller/nginx-vim-syntax'
Plug 'elixir-lang/vim-elixir'
Plug 'flowtype/vim-flow', { 'for': 'javascript' }

" Colours
Plug 'joshdick/onedark.vim'

" Stuff
Plug 'mgutz/vim-colors'
Plug 'bling/vim-airline'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

"" Fonts
let g:airline_powerline_fonts = 1

if has('gui_running')
  set guioptions=-t
  let g:Powerline_symbols = 'fancy'
  set guifont=Source\ Code\ Pro\ for\ Powerline:h12
endif

"" Basic
scriptencoding utf-8
set nocompatible
syntax enable
set encoding=utf-8
set noswapfile
set autoread
let mapleader=" "
set lazyredraw

" NERDTree config
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let g:ragtag_global_maps = 1 
map <Leader>d :NERDTreeToggle<CR>
map <Leader>h :nohl<CR>

" open NERDTree automatically when Vim opens if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"" Paste lines from unnamed register and fix indentation
nmap <leader>p pV`]=
nmap <leader>P PV`]=

"" Whitespace
set nowrap " Wrap too long lines
set lbr " wrap by word
set display=lastline " show partial lines
set tabstop=2 " Tabs are 2 characters
set shiftwidth=2 " (Auto)indent uses 2 characters
set expandtab " spaces instead of tabs
set backspace=indent,eol,start " powerful backspaces
set list
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮

"" Terminal
set mouse=a

"" Searching
set hlsearch " highlight the searchterms
set incsearch " jump to the matches while typing
set ignorecase
set smartcase

" guess indentation
set autoindent
set copyindent
set preserveindent

"" Visual stuff
set cursorline
hi CursorLine cterm=none ctermbg=none

"" Time out on key codes but not mappings.
"" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set timeoutlen=1000
set ttimeoutlen=100

" show line numbers
set number

" Fold using markers {{{
" like this
" }}}
set foldmethod=marker


" don't wrap words
set textwidth=0

" history
set history=50

" 1000 undo levels
set undolevels=1000

" show partial commands
set showcmd

" show matching braces
set showmatch

" don't leave backup files lying around after vim has closed
set nobackup

" filetype detecting and syntax highlighting
filetype plugin indent on

if has("gui_running")
  set columns=85
  set lines=55
endif

"" Events
au FocusGained * checktime

" highlight the 80th column
if exists("&colorcolumn")
  set colorcolumn=80
endif

set clipboard=unnamed

set background=dark
colorscheme onedark
