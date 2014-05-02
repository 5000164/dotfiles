
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundle here:
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
  \   'windows' : 'make -f make_mingw32.mak',
  \   'cygwin' : 'make -f make_cygwin.mak',
  \   'mac' : 'make -f make_mac.mak',
  \   'unix' : 'make -f make_unix.mak',
  \ },
  \ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/vim-auto-save'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck



set swapfile
set directory=~/.vim/tmp
set backup
set backupdir=~/.vim/tmp
set undofile
set undodir=~/.vim/tmp

syntax enable
set t_Co=256

set guifont=Font\ Ricty\ 12
set guifontwide=Font\ Ricty\ 12
colorscheme hybrid

set number

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

let g:auto_save=1

