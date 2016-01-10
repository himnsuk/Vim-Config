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
Plugin 'nanotech/jellybeans.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'slim-template/vim-slim'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tomtom/tcomment_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'bonsaiben/bootstrap-snippets'
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
"color jellybeans
colorscheme desert

"Set tabstop and indentation
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab

hi TabLineFill ctermfg=LightGreen ctermbg=Blue
hi TabLine ctermfg=Blue ctermbg=LightBlue
hi TabLineSel ctermfg=Red ctermbg=LightBlue
hi Title ctermfg=LightBlue ctermbg=Magenta
