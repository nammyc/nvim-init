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

call dein#begin('~/.config/nvim/bundle')

call dein#add('~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim')
call dein#add('Shougo/deoplete.nvim', {'build': 'vim -s +"call dein#remote_plugins()"'})
call dein#add('scrooloose/nerdtree')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('sheerun/vim-polyglot')
call dein#add('bling/vim-airline')
call dein#add('morhetz/gruvbox')
call dein#add('flazz/vim-colorschemes')
call dein#add('lifepillar/vim-solarized8')
call dein#add('othree/html5.vim')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('klen/python-mode')
call dein#add('pangloss/vim-javascript')
call dein#add('fatih/vim-go')
call dein#add('zchee/deoplete-go')
call dein#add('tomtom/tcomment_vim')
call dein#add('ap/vim-css-color')
call dein#add('octol/vim-cpp-enhanced-highlight')
call dein#add('jistr/vim-nerdtree-tabs')

call dein#end()

if (echom dein#check_install()) 
	call dein#update()
endif

filetype plugin indent on
syntax enable

" End Dein Scripts-------------------------

" After adding a plugin, run :call dein#install()

inoremap jj <Esc>`^
set backspace=indent,eol,start " backspace over everything in insert mode
noremap j h
noremap k j
noremap l k
noremap ; l
map <C-n> :NERDTreeToggle<CR>
colorscheme gruvbox
set background=dark
let g:deoplete#enable_at_startup = 1

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

let g:nerdtree_tabs_open_on_console_startup = 1

