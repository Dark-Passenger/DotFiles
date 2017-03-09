"set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
"set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.

set belloff=all         " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set smartindent

set wrap
set ignorecase
set magic

set mouse =             " Disable mouse

set shortmess+=c        " Suppress some stuff for autocomplete.

" Directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'                                              " Airline PowerBar.
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }   "YouCompleteMe
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }                        "Configuration generator for YCM

" Initialize plugin system
call plug#end()

"ColorScheme
set background=dark
"colorscheme gruvbox

" Enable true colors
set termguicolors

" Airline Setup
set encoding=utf-8
"set t_Co=256
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Whitespace stuff
autocmd BufWritePre * %s/\s\+$//e       "Remove trailing whitespace on save

" Clipboard
set clipboard+=unnamedplus

" Set python interpreters.
let g:python_host_prog = '/usr/bin/python'

let g:python3_host_prog = '/usr/bin/python3'

" Ycm Accept all .conf files in home dir.
let g:ycm_extra_conf_globlist = ['~/*']

"YouCompleteMe FixIt feature mapping
map <F9> :YcmCompleter FixIt<CR>
