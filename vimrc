set nocompatible
filetype off
set noswapfile                " disable swapfile
set number                    " enable number
set relativenumber            " enable relative numbering
"set mouse=a                   " Enable mouse in all modes

set ignorecase                " Ignore case when searching
set smartcase                 " When searching try to be smart about cases
set hlsearch                  " Highlight search results
set incsearch                 " Makes search act like search in modern browsers
set magic                     " For regular expressions turn magic on

set ai                        "Auto indent
set si                        "Smart indent
set wrap                      "Wrap lines

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vim Plugins
Plugin 'VundleVim/Vundle.vim'           "Vim Plugin Manager
Plugin 'vim-scripts/indentpython.vim'   "Python indentation
Plugin 'Valloric/YouCompleteMe'         "Autocomplete
Plugin 'scrooloose/syntastic'           "syntax highlighting
Plugin 'vim-airline/vim-airline'        "Status bar
Plugin 'vim-airline/vim-airline-themes' "Airline themes
Plugin 'ctrlpvim/ctrlp.vim'             "Fuzzy file finder
Plugin 'tpope/vim-commentary'           "Code commenting

" End of vundle
call vundle#end()
filetype plugin indent on

"Allow indentpython to highlight python syntax
let python_highlight_all=1

"Setup a global YouCompleteMe configuration
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

"Enable syntax highlighting
syntax enable

" YCM disable highlighting
let ycm_allow_changing_updatetime = 0

" Enable colorscheme
set background=dark

" Whitespace handling
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
autocmd BufWritePre * %s/\s\+$//e       "Remove trailing whitespace on save

" Setup airline
set laststatus=2
set encoding=utf-8
set t_Co=256
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"Ctrlp mapping
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Ctrlp modes
let g:ctrlp_working_path_mode = 'ra'

"YouCompleteMe FixIt feature mapping
map <F9> :YcmCompleter FixIt<CR>

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
