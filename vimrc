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
syntax enable                   " Syntax highlighting: activated.
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
set smartindent                 " ...indent in the right places.

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
set textwidth=74                " Wrap at char n.
set wrap                        " Wrap on lines > tw.
set formatoptions=cqn1         " See :help fo-table.

""" Buffers """ 
set hidden                      " Don't bug me.

""" Folding and Concealing """
if has ('folding')
    set foldenable
    let conceallevel=0          " Don't conceal anything.
    if has ('windows')
        set fillchars=vert:\   " Beautify vertical splits.
    endif
endif

""" Spelling """
if has("spell")
    set nospell    
    nnoremap <leader>s :set spell!<CR>
endif


""" Terminal """
if has("terminal")
    set termwinscroll=2000
endif

"""
" Remapped / modified keys. 
"""

" Recognize escape codes for <Home> and <End>
map [1~ <Home>
map [4~ <End>
imap [1~ <Home>
imap [4~ <End>
vmap [1~ <Home>
vmap [4~ <End>

" Since *map waits for escape codes until timeout, use a short timeout. 
augroup FastEsc
  autocmd!
  au InsertEnter * set timeoutlen=50
  au InsertLeave * set ttimeoutlen=50
augroup END


" Yank to macOS clipboard.
vnoremap Y "*y
nnoremap Y "*yy

"""
" Plugin-specific settings.
"""

""" netrw """
let g:netrw_banner = 0          " No top banner.
let g:netrw_liststyle = 3       " Tree view 

""" airline """
let g:airline_theme = 'base16'
let g:airline_powerline_fonts = 1
let g:airline_section_x = '%{PencilMode()}'
let g:airline#extensions#whitespace#enabled = 0

""" pencil """
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'hard'})
augroup END

