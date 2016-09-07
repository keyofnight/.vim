"""
"
" A '.vimrc'
" ...written by Timothy E. Brown
" tw: @keyofnight
"
" This is a configuration file for a text editor, so I don't care about 
" the license. Use it however you want to.
"
"""

"""
" General Settings.
"""

call pathogen#infect()          " Load the runtime path manager: Pathogen.
                                
Helptags                        " Make sure bundle help files work.
filetype plugin indent on       " Make sure filetype detection is on.

set nocompatible                " Disable vi compatibility mode, resets all.

set t_Co=256                    " Use 256 colors, Vim.
syntax enable                   " Syntax highlighting: activated.
set background=light            " ...for the right color background.
color hemisu                    " A nice pastel-colored theme.
                                
" ...but don't mess with my termbg.
hi Normal ctermbg=NONE

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
                                
"set hlsearch                    " Highlight *all* search matches.
set incsearch                   " Search as I type.
set ignorecase                  " Case insensitivity during searches...
set smartcase                   " ...until the pattern contains uppercase.

set showmatch                   " Show matching braces on contact...
set matchtime=1                 " ...for n*10 nanoseconds.
set formatoptions=1r            " See :help fo-table.

set relativenumber              " Line numbers relative to cursor...
set number                      " ...show the current line's real number.

set columns=80                  " Set width of the buffer.

set nolist                      " This would disable lbr if enabled.
set tw=0                        " Disable permanent linebreaks.
set wrap                        " Softwrap on long lines.
set lbr                         " Don't break in the middle of a word.
set formatprg=par               " Format text using 'par.'

" set cursorline                  " Highlight entire cursor row.
" set cursorcolumn                " Highlight entire cursor column.

set hidden                      " Don't bug me when switching buffers.

let conceallevel=0              " Don't conceal anything.
set nofoldenable                " Don't fold anything.

" Disable the annoying vim-pandoc conceal crap.
let g:pandoc#syntax#conceal#use=0

" Set up spell checking. Also: <leader>s toggles spell check.

if has("spell")
    set nospell    
    nnoremap <leader>s :set spell!<CR>
endif


"""
" Plugin configuration.
"""

autocmd BufNewFile,BufReadPre,FileReadPre 
    \*.markdown,*.mdown,*.mkdn,*.mkd,*.md,*.mdwn,
    \*.mdtxt,*.mdtext :Prose

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

" Move through display lines, not actual lines.

nnoremap <silent> <Up>   gk
nnoremap <silent> <Down> gj
nnoremap <silent> <Home> g<Home>
nnoremap <silent> <End>  g<End>

inoremap <silent> <Up>   <C-o>gk
inoremap <silent> <Down> <C-o>gj
inoremap <silent> <Home> <C-o>g<Home>
inoremap <silent> <End>  <C-o>g<End>

nnoremap  <silent> j gj
nnoremap  <silent> k gk
nnoremap  <silent> gj j
nnoremap  <silent> gk k

nnoremap  <silent> 0 g0
nnoremap  <silent> $ g$
nnoremap  <silent> g0 0
nnoremap  <silent> g$ $
