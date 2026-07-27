"""
"
" A 'vimrc' written by Tim Brown 
" tw/gh: @keyofnight
"
" This is a configuration file for a text editor, so I don't care about 
" the license. Use it however you want to. 
"
"""

"""
" General Settings 
"""
set nocompatible                " Disable vi compatibility mode, resets all.
silent! call pathogen#infect()  " Load the runtime path manager: Pathogen.
filetype plugin indent on       " Make sure filetype detection is on.
Helptags                        " Make sure bundle help files work.

""" Environment
set title

""" Font/Color 
set termguicolors
syntax on                       " Syntax highlighting: activated.
silent! color hemisu            " A nice pastel-colored theme.

" Don't mess with termbg.
hi Normal   ctermbg=NONE guibg=NONE
hi NonText  ctermbg=NONE guibg=NONE

""" Specify font for gvim/macvim 
if has("gui_running")
    if has("gui_macvim")
        set guifont=InconsolataLGC\ Nerd\ Font:h14
    endif
endif

""" Indentation
set backspace=indent,eol,start  " Backspace over everything.
"set autoindent                  " Use previous the line's indentation...
"set smartindent

""" Tabs
set expandtab                   " Spaces, not tabs.
set smarttab                    " Tabs at the beginning of a line.
set tabstop=4                   " Tab spacing...
set softtabstop=4               " ...more tab spacing.
set shiftwidth=4                " Number of spaces in each tab. 
set shiftround                  " Indent to the nearest tabstop.

""" Soft Wrap
set formatoptions=tq1         " See :help fo-table.
set wrap
set nolist
set linebreak
set textwidth=0

""" Status line
set laststatus=2                      " Always show a status-line.
set statusline=
set statusline+=\ %f\                 " Filename
set statusline+=\ %m                  " Modified?
set statusline+=%{%&readonly?'!':''%} " Read only?
"set statusline+=\ %y                 " Filetype
set statusline+=%=                    " Right align
set statusline+=\ %l/%L               " Line/Total
set statusline+=\ %p%%                " Percentage

""" Command prompt
set showcmd                     " Always show commands 
set history=500                 " Nice long command history.
set cmdheight=1                 " Small command prompt. 

""" Tab Completion 
set path+=**                    " Include all subfolders in file completions
set wildmenu                    " Command line tab completion.
set wildmode=list:longest,full  " 1st tab: show options, use longest common


""" Buffers 
set hidden                      " Don't bug me.

""" Windows
if has ('windows')
    set fillchars=vert:\        " Beautify vertical splits.
endif

""" Folding and Concealing
if has('folding')
    set foldenable
    set foldcolumn=0
endif

set conceallevel=0              " Don't conceal anything.

""" Search
set incsearch                   " Search as I type.
set ignorecase                  " Case insensitivity during searches...
set smartcase                   " ...until the pattern contains uppercase.
set showmatch                   " Show matching braces on contact...
set matchtime=1                 " ...for n*10 nanoseconds.
set hlsearch                    " Highlight all matches.

""" Auto complete
set infercase
set completeopt=menuone,noselect
set complete=.,w,b,u,k  " scan from: current, windows, unloaded buffers,
                        "            & dictionaries.

" Tab through completion menu.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


"""
""" Remapped / modified keys. 
"""

""" Yank to macOS clipboard.
vnoremap Y "*y
nnoremap Y "*yy

""" Switch buffers quickly using <leader>n/p.
nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprevious<CR>

""" Clear highlighting until next search.
nnoremap <leader>\ :noh<return><esc>

"""
" Plugin-specific settings.
"""

""" netrw
let g:netrw_banner = 0          " No top banner.
let g:netrw_liststyle = 3       " Tree view 

""" FastFold
let g:fastfold_force = 1

""" sneak
map f <Plug>Sneak_s
map F <Plug>Sneak_S

""" Pandoc
let g:pandoc#formatting#mode = 's'
let g:pandoc#modules#disabled = ["folding"]
let g:pandoc#folding#fdc = 0
"let g:pandoc#folding#mode = 'syntax'
let g:pandoc#folding#fastfolds = 1

""" pandoc-syntax
let g:pandoc#syntax#conceal#use = 0
