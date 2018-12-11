" search for visually highlighted text
:vmap // y/<C-R>"<CR>

" Unhighlight search results
" map <C-l> :nohlsearch<CR>:redraw!<CR>

" Map Y to be consistent with D, C, etc
noremap Y y$

" CTRL-n and CTRL-p to go forwards and backwards through files
nnoremap <C-n> :next<CR>
nnoremap <C-p> :prev<CR>

" CTRL-J/K to move up and down, collapsing open windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" Press CTRL-X after pasting something to fix up formatting
""imap <C-z> <ESC>u:set paste<CR>.:set nopaste<CR>i

" Tab to switch between split windows
map <Tab> <C-w><C-w>

" autocomplete braces with { } - use same line style
"""imap {<space>} {<CR><Backspace>}<C-o>O

"autocomplete brackets with ( )
"""imap (<space>) ()<LEFT>

"autocomplete quotes with ' ' or \" \"
"imap '<space>' ''<LEFT>
"imap \"<space>\" \""<LEFT>

" mapping F2 to toggle paste mode on and off to avoid autoindenting of pasted code
nnoremap <F3> :set invpaste paste?<CR>
imap <F3> <C-O><F3>
set pastetoggle=<F3>

"map CTRL-f and CTRL-b to move forward and back a word in insert mode
imap <C-f> <C-o>w
imap <C-b> <C-o>b

"map CTRL-a and  CTRL-e to move to start and end of line
"""imap <C-a> <C-o>^
"""imap <C-e> <C-o>$

"""noremap <C-a> ^
"""noremap <C-e> $

"map CTRL-h/j/k/l to move around in insert mode
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l
imap <C-h> <C-o>h


" simulate shift-arrows (select block in windows) with control-arrows
map <S-Left> <C-o>vh
map <S-Right> <C-o>vl

"inoremap <ESC>[A <C-O>vk
"vnoremap <ESC>[A k
"inoremap <ESC>[B <C-O>vj
"vnoremap <ESC>[B j
"inoremap <ESC>[C <C-O>vl
"vnoremap <ESC>[C l
"inoremap <ESC>[D <C-O>vh
"vnoremap <ESC>[D h

"add macro to copy to OSX's clipboard
nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>

"blame tools
vmap <Leader>b :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR> 
vmap <Leader>g :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR> 
vmap <Leader>h :<C-U>!hg blame -fu <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
