"Himanshu Kesarvani vimrc file started writing from 26/12/2015
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

"Saving file using Ctrl -s 
:inoremap <c-s> <Esc>:update<cr>
