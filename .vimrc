
" NeoBundle
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundle here:
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
  \   'windows' : 'make -f make_mingw32.mak',
  \   'cygwin' : 'make -f make_cygwin.mak',
  \   'mac' : 'make -f make_mac.mak',
  \   'unix' : 'make -f make_unix.mak',
  \ },
  \ }                                           " 非同期処理のためのもの？よくわかってない
NeoBundle 'Shougo/unite.vim'                    " いい感じにリストを出してくれるもの？よくわかってない
NeoBundle 'Shougo/vimfiler.vim'                 " ファイラー
NeoBundle 'itchyny/lightline.vim'               " ステータスライン変更
NeoBundle 'vim-scripts/vim-auto-save'           " ファイルの自動保存
NeoBundle 'ujihisa/unite-colorscheme'           " Uniteでcolorschemeコマンドが使えるもの？よくわかってない
NeoBundle 'w0ng/vim-hybrid'                     " カラースキーム

NeoBundle 'stephpy/vim-php-cs-fixer'        " PHP整形
NeoBundleLazy 'alpaca-tc/beautify.vim', {
  \ 'autoload' : {
  \   'commands' : [
  \     {
  \       'name' : 'Beautify',
  \       'complete' : 'customlist,beautify#complete_options'
  \     }
  \   ]
  \ }
  \ }                                           " HTML整形

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
" NeoBundle



" 設定内容
set swapfile
set directory=~/.vim/tmp
set backup
set backupdir=~/.vim/tmp
set undofile
set undodir=~/.vim/tmp

filetype on
syntax enable
set t_Co=256

set guifont=Ricty\ 12
set guifontwide=Ricty\ 12
colorscheme hybrid

set number
set ruler
set showcmd
set laststatus=2
set cmdheight=1
set showmatch
set helpheight=999

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" lightline用設定
let g:lightline = {
  \ 'colorscheme' : 'wombat'
  \ }

" vim-auto-save用設定
let g:auto_save=1

" PHP Coding Standards Fixer用設定
let g:php_cs_fixer_path = "/usr/local/bin/php-cs-fixer"
let g:php_cs_fixer_level = "all"
let g:php_cs_fixer_config = "default"
let g:php_cs_fixer_php_path = "php"
let g:php_cs_fixer_fixers_list = "indentation,linefeed,trailing_spaces,unused_use,short_tag,return,visibility,php_closing_tag,braces,extra_empty_lines,function_declaration,include,controls_spaces,psr0,elseif,eof_ending"
let g:php_cs_fixer_enable_default_mapping = 1
let g:php_cs_fixer_dry_run = 0
let g:php_cs_fixer_verbose = 0
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

