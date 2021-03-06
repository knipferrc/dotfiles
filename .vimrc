if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" PLUGINS
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'evanleck/vim-svelte'
Plug 'w0rp/ale'
Plug 'scrooloose/syntastic'
call plug#end()

" LEADER KEY
let mapleader=" "

" COLORS
syntax enable
set background=dark

" TEXT FORMATTING
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set nowrap
set autoindent

" UI CONFIG
filetype plugin indent on
set number
set showcmd
set cursorline
set wildmenu
set noswapfile
set nobackup
set encoding=utf8
set showmatch
set history=50

" MOUSE
set nomousehide

" SEARCHING
set incsearch
set hlsearch
set smartcase
set ignorecase

" CODE FOLDING
set foldenable
set foldlevelstart=10
set foldnestmax=10

" NERDTREE
let NERDTreeShowHidden=1
let NERDTreeWinPos = "left"
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWinEnter * NERDTreeMirror
