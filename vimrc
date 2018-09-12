"""
"
" A 'vimrc' written by Timothy E. Brown
" tw/gh: @keyofnight
"
" This is a configuration file for a text editor, so I don't care about 
" the license. Use it however you want to. 
"
"""

"""
" General Settings.
"""

set nocompatible                " Disable vi compatibility mode, resets all.

call pathogen#infect()          " Load the runtime path manager: Pathogen.
filetype plugin indent on       " Make sure filetype detection is on.
Helptags                        " Make sure bundle help files work.

""" Font/Color settings. """
set t_Co=256                    " Use 256 colors for highlighting
syntax enable                   " Syntax highlighting: activated.
set background=light            " ...for the right color background.
color hemisu                    " A nice pastel-colored theme.
set guifont=Inconsolata:h14     " Specify font for gvim/macvim 
" ...but don't mess with my termbg.
hi Normal ctermbg=NONE

""" Indentation """
set backspace=indent,eol,start  " Backspace over everything.
set autoindent                  " Use previous the line's indentation...
set smartindent                 " ...indent in the right places.

""" Tabs """"
set expandtab                   " Spaces, not tabs.
set smarttab                    " Tabs at the beginning of a line.
set tabstop=4                   " Tab spacing...
set softtabstop=4               " ...more tab spacing.
set shiftwidth=4                " Number of spaces in each tab. 
set shiftround                  " Indent to the nearest tabstop.

set ruler                       " Always show info at the bottom.
set showcmd                     " Always show commands 
set history=500                 " Nice long command history.
set cmdheight=1                 " Small command prompt. 

""" Tab Completion """
set path+=**                    " Include all subfolders in file completions
set wildmenu                    " Command line tab completion.
set wildmode=list:longest,full  " 1st tab: show options, use longest common
                                " 2nd tab: show wild menu.
                                 
"set hlsearch                    " Highlight *all* search matches.
set incsearch                   " Search as I type.
set ignorecase                  " Case insensitivity during searches...
set smartcase                   " ...until the pattern contains uppercase.
set showmatch                   " Show matching braces on contact...
set matchtime=1                 " ...for n*10 nanoseconds.

set relativenumber              " Line numbers relative to cursor...
set number                      " ...but show the current line's number.

""" Wrap """
set columns=80                  " Set width of the buffer.
set nolist                      " This would disable lbr if enabled.
set tw=79                       " Wrap at char n.
set wrap                        " Softwrap on long lines.
"set lbr                        " Don't break in the middle of a word.
set formatprg=par               " Format text using 'par.'
set formatoptions=1r            " See :help fo-table.

""" Buffers """ 
set hidden                      " Don't bug me when switching buffers.

""" Folding and Concealing """
let conceallevel=0              " Don't conceal anything.
let g:pandoc#syntax#conceal#use=0
"set nofoldenable               " Don't fold anything.

""" Spelling """
if has("spell")
    set nospell    
    nnoremap <leader>s :set spell!<CR>
endif

""" Netrw """
let g:netrw_banner = 0          " No top banner.
let g:netrw_liststyle = 3       " Tree view 


"""
" Remapped keys. 
"""

" Home/End by any other name...
map [1~ <Home>
map [4~ <End>
imap [1~ <Home>
imap [4~ <End>

" Yank to OSX clipboard.
vnoremap Y "*y
nnoremap Y "*yy
