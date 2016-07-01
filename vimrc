"Himanshu Kesarvani vimrc file started writing from 26/12/2015
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}


"My Plugins
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'tomtom/tcomment_vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'mrtazz/simplenote.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tmhedberg/SimpylFold'
Plugin 'marciomazza/vim-brogrammer-theme'
Plugin 'easymotion/vim-easymotion'
Plugin 'vimwiki/vimwiki'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just:PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

"Set line nummber
:set number
"Mapping my leader key

:let mapleader = ","

"Mapping local leader key
:let maplocalleader = "\\"

"Command to edit vimrc file

:nnoremap <leader>ev :vsplit ~/.vim/vimrc<cr>

"Add Mapping to load vimrc file while editing

:nnoremap <leader>sv :source ~/.vim/vimrc<cr>

"Status line with file type
:set statusline=%f\ -\ Filetype:\ %y\ -\ %l\ /\ %L

"Vimscript file setting --------{{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup end
"}}}

"Search for word under cursor
:nnoremap <leader>g :grep -R <cWORD> <cr>


"Insert Ctrlp runtime path
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Set color
set background=dark
" colorscheme desert256
colorscheme brogrammer
set mouse=""
let g:SimplenoteUsername = "himnsuk@gmail.com"
let g:SimplenotePassword = "kesar1991"
"Open files in new tab Nerd tree
let NERDTreeMapOpenInTab='\r'
nmap <F8> :TagbarToggle<CR>
"Mapping window with key binding
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" for linux and windows users (using the control key)
" map <C-S-]> gt
" map <C-S-[> gT
" map <C-1> 1gt
" map <C-2> 2gt
" map <C-3> 3gt
" map <C-4> 4gt
" map <C-5> 5gt
" map <C-6> 6gt
" map <C-7> 7gt
" map <C-8> 8gt
" map <C-9> 9gt
" map <C-0> :tablast<CR>
map L gt
map H gT
"Adding date and time while adding notes
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>
"Autor reload changes from disk
set autoread

"Moving through buffer easily

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
