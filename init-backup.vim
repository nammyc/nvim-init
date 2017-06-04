" NeoBundle Scripts-----------------------------
if has('vim_starting')  
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)  
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))  
NeoBundleFetch 'Shougo/neobundle.vim'

" ------------------------------------
" THIS IS WHERE YOUR PLUGINS WILL COME
" ------------------------------------
NeoBundle 'bling/vim-airline'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'lifepillar/vim-solarized8'
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'klen/python-mode'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'fatih/vim-go'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'zchee/deoplete-go'

call neobundle#end()  
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck  
"End NeoBundle Scripts-------------------------

inoremap jj <Esc>`^
set backspace=indent,eol,start " backspace over everything in insert mode
noremap j h
noremap k j
noremap l k
noremap ; l
colorscheme gruvbox
set background=dark
let g:deoplete#enable_at_startup = 1

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

