"set nocompatible
"set FIletype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Put your non-Plugin stuff after this line

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  "auto quit vim if only NERDtree window is active

syntax enable
set background=dark
colorscheme solarized

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py" "conf file for You complete Me Plugin
set laststatus=2               " Set a status line always visable
set number                     " Print line number
set bs=2                       " Use Backspace
set hlsearch                   " Highlight all seartch pattern
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

filetype on
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
set listchars=tab:»\ ,trail:·  " Map some wihite chars·
set list                       " Print white characters·

inoremap jk <ESC>
nnoremap <A-Right>   :tabnext<CR>
nnoremap <A-Left>   ::tabprevious<CR>

" ctrl +arrows to change window
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>
" ctrl +hjkl to change window
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"let g:ycm_register_as_syntastic_checker = 0
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_always_populate_loc_list = 1
"let g:ycm_auto_loc_list = 1
"let g:ycm_check_on_open = 1
"let g:ycm_check_on_wq = 0
"
"let g:ycm_error_symbol = "✗"
"let g:ycm_warning_symbol = "⚠"
"" Apply YCM FixIt
"map <F9> :YcmCompleter FixIt<CR>
"set term=xterm
"syntastic end
