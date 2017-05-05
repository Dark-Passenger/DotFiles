set showmatch           " Show matching brackets.
set showmode            " Show current mode.
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

set tags=./tags;        " Single ctag file for the whole source.

set autowriteall        " Automatically write content to file on action.

set foldmethod=syntax   "Enable folding based on syntax.
set nofoldenable        " Disable folding by default

" Directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'                                              " Airline PowerBar.
Plug 'vim-airline/vim-airline-themes'                                       " Airline Themes.
Plug 'Raimondi/delimitMate'                                                 " Auto close brackets and quotes.
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }   " Autocompleter.
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }                        " Configuration generator for YCM.
Plug 'ctrlpvim/ctrlp.vim'                                                   " Fuzzy search.
Plug 'freeo/vim-kalisi'                                                     " Theme Kalisi.
Plug 'justinmk/molokai'                                                     " Theme molokai.
Plug 'morhetz/gruvbox'                                                      " Theme GruvBox.

" Initialize plugin system
call plug#end()

" Enable true colors
set termguicolors

"ColorScheme
set background=dark
colorscheme molokai

" Airline Setup
set noshowmode                                  " Disable Mode showing in two places.
let g:airline#extensions#tabline#enabled = 1    " Enable Airline
let g:airline_powerline_fonts = 1               " Enable Powerline patched fonts
let g:airline_theme = 'dark'

" Whitespace stuff
autocmd BufWritePre * %s/\s\+$//e               " Remove trailing whitespace on save

" Clipboard
set clipboard+=unnamedplus                      " Link Clipboard to system clipboard.

" Set python interpreters.
let g:python_host_prog = '/usr/bin/python'

let g:python3_host_prog = '/usr/bin/python3'

" Ycm Accept all .conf files in home dir.
let g:ycm_extra_conf_globlist = ['~/*']

" Ycm Use ctags also for autocompletion when possible.
let g:ycm_collect_identifiers_from_tags_files = 1

" Ycm autoclose preview window on selection of completion.
let g:ycm_autoclose_preview_window_after_completion = 1

"YouCompleteMe FixIt feature mapping
map <F9> :YcmCompleter FixIt<CR>

" Map buffer switching to keys.
map <silent> <C-Right> :bnext<CR>
map <silent> <C-Left> :bprevious<CR>
