" Pretty syntax highlighting
syntax on

let g:seoul256_background = 233
colo seoul256

set title
set titleold=""
set titlestring=VIM:\ %F
set background="dark"

" Highlight current line
set cursorline
hi cursorline ctermfg=cyan ctermbg=darkred

" Fix comment colours
highlight Comment ctermfg=lightblue
highlight Search ctermfg=black ctermbg=cyan
highlight LeadingTab ctermbg=blue guibg=blue
highlight LeadingSpace ctermbg=darkgreen guibg=darkgreen
highlight EvilSpace ctermbg=darkred guibg=darkred
highlight SpellBad ctermbg=darkgreen ctermfg=black guibg=darkgreen
highlight SpellCap ctermbg=blue ctermfg=black guibg=blue
highlight SpellLocal ctermfg=black

" Show whitespace at EOL
hi WhitespaceEOL ctermbg=lightblue

" Show whitespace at EOL with <leader>s
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" Show the line/column positions at the bottom
set ruler

" Display as much as possible of the last line of text
" (instead of displaying an @ character)
set display+=lastline

" Wrapping is annoying
"set nowrap

" If wordwrap is on, don't split words across lines
set linebreak

" String to put at the start of lines that have been wrapped
"set showbreak=+
set showbreak=

" Display current mode and partially typed commands
set showmode
set showcmd

" When a bracket is inserted, briefly jump to the matching one (
set showmatch

" Show the filename title in xterms
set title

" Make the autocompletion of filenames,etc behave like bash
set wildmode=list:longest

"Ignore useless files in autocomplete
set wildignore=.svn,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

" Allow splits to have 0 height (use C-W _)
set wmh=0

" Always keep x lines of context around the cursor
set scrolloff=3

" Match search results as you type
set incsearch

" Ignore case when searching
set ignorecase

" Ignore the ignorecase character if search contains uppercase chars
set smartcase

" Highlight search terms
set hlsearch

" Mouse options
set mouse=a
" set mouse=
" set mousehide

" use Enter to clear search highlight
:noremap <CR> :nohlsearch<CR>/<BS><CR>

" show line numbers
set number

"allow deleting without updating yank buffer
vnoremap x "_x
vnoremap X "_X

"fix backspacing in insert mode
set backspace=indent,eol,start
