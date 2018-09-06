set nocompatible              
filetype off                

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"add plugins here
Plugin 'vim-scripts/indentpython.vim'
""Bundle 'Valloric/YouCompleteMe'
Plugin 'jnurmine/Zenburn'
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tmhedberg/SimpylFold'
Plugin 'pangloss/vim-javascript', {'for': 'javascript' }
"  All of your Plugins must be added before the following line
call vundle#end()            



filetype plugin indent on   


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" folding
set foldenable
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set ai
set si

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Color scheme
silent! colorscheme gruvbox
set background=dark

let g:gruvbox_contrast_dark='hard'
"let g:gruvbox_contrast_light='hard'
let g:gruvbox_italic=1
let g:gruvbox_italicize_strings=1

set nu         "line numbers
set cursorline "highlight current line
set showmatch  "hilight matching parenthesis
set incsearch  "search as charachers are entered
set hlsearch   "highlight search matches

"autoclose brackets etc
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
