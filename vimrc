"""
"
" A 'vimrc' written by Tim Brown 
" tw/gh: @keyofnight
"
" This is a configuration file for a text editor, so I don't care about 
" the license. Use it however you want to. 
"
"""

""" General Settings """
set nocompatible                " Disable vi compatibility mode, resets all.
silent! call pathogen#infect()  " Load the runtime path manager: Pathogen.
filetype plugin indent on       " Make sure filetype detection is on.
Helptags                        " Make sure bundle help files work.

""" Font/Color settings. """
set t_Co=256                    " Use 256 colors for highlighting
syntax on                       " Syntax highlighting: activated.
set background=light            " ...for the right color background.
silent! color hemisu            " A nice pastel-colored theme.


" Specify font for gvim/macvim 
if has("gui_running")
    if has("unix")
        set guifont=Inconsolata\ 14
    else
        set guifont=Inconsolata:h14
    endif
endif

" ...but don't mess with my termbg.
hi Normal ctermbg=NONE

""" Indentation """
set backspace=indent,eol,start  " Backspace over everything.
set autoindent                  " Use previous the line's indentation...

""" Tabs """"
set expandtab                   " Spaces, not tabs.
set smarttab                    " Tabs at the beginning of a line.
set tabstop=4                   " Tab spacing...
set softtabstop=4               " ...more tab spacing.
set shiftwidth=4                " Number of spaces in each tab. 
set shiftround                  " Indent to the nearest tabstop.

""" Numbering """
set number                      " Line numbers
set relativenumber              " ...relative to the current line.

""" Info bar and prompt """
set ruler                       " Always show info at the bottom.
set showcmd                     " Always show commands 
set history=500                 " Nice long command history.
set cmdheight=1                 " Small command prompt. 

""" Tab Completion """
set path+=**                    " Include all subfolders in file completions
set wildmenu                    " Command line tab completion.
set wildmode=list:longest,full  " 1st tab: show options, use longest common
                                " 2nd tab: show wild menu.
""" Search """
set incsearch                   " Search as I type.
set ignorecase                  " Case insensitivity during searches...
set smartcase                   " ...until the pattern contains uppercase.
set showmatch                   " Show matching braces on contact...
set matchtime=1                 " ...for n*10 nanoseconds.
set hlsearch                    " Highlight all matches.

""" Wrap """
set nolist                      " No EOL characters (breaks LBR)
set textwidth=79                " Wrap at char n.
set wrap                        " Wrap on lines > tw.
set formatoptions=qn1         " See :help fo-table.

""" Buffers """ 
set hidden                      " Don't bug me.

""" Windows """
if has ('windows')
    set fillchars=vert:\        " Beautify vertical splits.
endif

""" Folding and Concealing """
if has ('folding')
    set foldenable
endif
let conceallevel=0          " Don't conceal anything.

"""
" Remapped / modified keys. 
"""

" Yank to macOS clipboard.
vnoremap Y "*y
nnoremap Y "*yy

" Switch buffers quickly ising <Tab>.
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Clear highlighting until next search.
nnoremap <leader>/ :noh<return><esc>

"""
" Plugin-specific settings.
"""

""" netrw """
let g:netrw_banner = 0          " No top banner.
let g:netrw_liststyle = 3       " Tree view 

""" pandoc
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0
" let g:pandoc#modules#disabled = ["formatting"]
let g:pandoc#formatting#mode = 'hA'

""" airline """
let g:airline_theme = 'base16'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_detect_spell=0

