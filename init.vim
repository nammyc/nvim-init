set nocompatible

" Dein Scripts-----------------------------
if has('vim_starting')
  set runtimepath+=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim/
endif

" Dein installation------------------------
if !filereadable(expand('~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim/README.md'))
  echo "Installing Dein..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/dein.vim ~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim/
  silent !cd ~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim/
  silent !sh ./installer.sh ~/.config/nvim/bundle
  echo "Dein install completed."
endif
" End Dein installation--------------------

if dein#load_state('~/.config/nvim/bundle')
    call dein#begin('~/.config/nvim/bundle')

    call dein#add('~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('rip-rip/clang_complete')
    call dein#add('artur-shaik/vim-javacomplete2')
    call dein#add('airblade/vim-rooter')
    " call dein#add('sheerun/vim-polyglot')
    call dein#add('morhetz/gruvbox')
    call dein#add('jiangmiao/auto-pairs')
    call dein#add('flazz/vim-colorschemes')
    call dein#add('tomtom/tcomment_vim')
    call dein#add('scrooloose/nerdtree')
    call dein#add('Xuyuanp/nerdtree-git-plugin')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('w0rp/ale')
    
    call dein#end()
endif

if dein#check_install()
  call dein#update()
endif

filetype plugin indent on
syntax enable

" End Dein Scripts-------------------------

" After adding a plugin, run :call dein#install()

inoremap jj <Esc>`^
noremap j h
noremap k j
noremap l k
noremap ; l
:command WQ wq
:command Wq wq
:command W w
:command Q q
nnoremap <C-J> <C-W><C-H>
nnoremap <C-K> <C-W><C-J>
nnoremap <C-L> <C-W><C-K>
nnoremap <C-;> <C-w><C-L>

" Custom settings
set scrolloff=2
set number
set showmode
set showcmd
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set incsearch
set nobackup
set splitbelow
set splitright
set backspace=indent,eol,start " backspace over everything in insert mode
set laststatus=2 " Enable status line

" Colorscheme settings
colorscheme gruvbox
set background=dark

" deoplete settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" clang_complete settings
let g:clang_library_path='/usr/lib/llvm-4.0/lib/libclang-4.0.so.1' " This must change to reflect proper clang lib
let g:clang_user_options = '-std=c++17'
let g:clang_complete_auto = 1

" javacomplete2 settings
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:JavaComplete_ClosingBrace = 0

" ALE settings
let g:ale_sign_column_always = 1

" NERDTree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | e    xe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree    ()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
