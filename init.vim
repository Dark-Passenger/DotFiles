set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

" Directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'  " Airline PowerBar.
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }   "YouCompleteMe
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Initialize plugin system
call plug#end()

" Allow indentation using plugins
filetype plugin indent on

"Enable syntax highlighting
syntax enable

" Airline Setup
set laststatus=2
set encoding=utf-8
set t_Co=256
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Whitespace stuff
set autoindent
set smartindent
autocmd BufWritePre * %s/\s\+$//e       "Remove trailing whitespace on save

" Clipboard
set clipboard+=unnamed

" Ycm Accept all .conf files in home dir.
let g:ycm_extra_conf_globlist = ['~/*']

"YouCompleteMe FixIt feature mapping
map <F9> :YcmCompleter FixIt<CR>
