set nocompatible                " Disable vi compatibility mode, resets all.
call pathogen#infect()          " Load the package manager *Pathogen*.

set t_Co=256                    " Use 256 colors, Vim.
syntax enable                   " Syntax highlighting: activated.
set background=dark             " Dark BG, brighter syntax.
color jellybeans                " The baddest theme in the land.

set backspace=indent,eol,start  " Backspace over everything.
set autoindent                  " Use previous the line's indentation...
set smartindent                 " ...indent in the right places.

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
set wildmenu                    " Command line completion.
set wildmode=list:longest,full  " 1st tab: show options, use longest one.
                                " 2nd tab: show wild menu.
set nohlsearch                  " Don't highlight after search.
set incsearch                   " ...but highlight during the search.
set ignorecase                  " Case insensitivity during searches...
set smartcase                   " ...until it matters.
set showmatch                   " Show matching braces on contact...
set matchtime=1                 " ...for n*10 nanoseconds.
set formatoptions=1             " ?

set nu                          " Show line numbers. 

set columns=80                  " Set width of the buffer.
set wrap                        " Wrap text visually..
set lbr                         " Only wrap text at the right time.
set nolist                      " This would disable lbr if enabled.
set tw=0                        " Disable permenant linebreaks.


set mouse=a                     " Mouse support?
vnoremap Y "*y                  " Yank to system clipboard in visual mode.
nnoremap Y "*yy                 " ...in normal mode too.