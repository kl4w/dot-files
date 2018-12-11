autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-h> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:NERDTreeMouseMode=2
let g:NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
