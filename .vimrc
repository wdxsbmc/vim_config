set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" ===== Add all your plugins here  =====
" (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'Valloric/YouCompleteMe'

" Class structure viewer
Plugin 'majutsushi/tagbar'

" Move like AceJump in Emacs
Plugin 'easymotion/vim-easymotion'

" Color scheme
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" File/folder navigation
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Super searching
Plugin 'kien/ctrlp.vim'

" Powerful status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Out-of-box python development
"Plugin 'klen/python-mode'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'nvie/vim-flake8'

" Git integration
"Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Navigate between tmux and vim seamlessly
Plugin 'christoomey/vim-tmux-navigator'

" ===== All of your Plugins must be added before the following line =====
call vundle#end()            " required

filetype plugin indent on    " required
set encoding=utf-8


" give you the standard four spaces when you hit tab, ensure your line length
" doesn’t go beyond 80 characters
au BufNewFile,BufRead *.py
    \ set tabstop=4     |
    \ set softtabstop=4 |
    \ set shiftwidth=4  |
    "\ set textwidth=79  |
    \ set expandtab     |
    \ set autoindent
    "\ set fileformat=unix

" Autocomplete window goes away when you’re done with it
let g:ycm_autoclose_preview_window_after_completion=1

" F8 key will toggle the Tagbar window
nmap <F8> :TagbarToggle<CR>
let g:tagbar_width=50

" Easymotion: enhance default vim search by named jump and highlighting
":nmap <Space> <Leader><Leader>w
let g:EasyMotion_smartcase = 1
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Color. Fix scheme missing problem in tmux+iterm2
colorscheme zenburn
set background=dark
set t_Co=256

" Ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Always use the directory you started vim in to search
let g:ctrlp_working_path_mode = 0

" For pymode or other syntatic plugin?
let python_highlight_all=1
syntax on
set nu
set autoread

