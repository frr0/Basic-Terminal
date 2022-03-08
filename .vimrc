" (n)vim
" stettings
"===================================
set number
set relativenumber
set mouse=a
set ignorecase
set hidden
set spelllang=en,it
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set cursorline
"colorscheme darkplus
set t_Co=256
set background=dark
"hi Normal ctermbg=16 guibg=#292C32
"hi LineNr ctermbg=16 guibg=#292C32
syntax on

" mappings
"===================================
let g:mapleader=","

" save and exit
nnoremap <leader>z :wqa <cr>
nnoremap <space>s :wa <cr>
nnoremap <space>0 :q! <cr>
nnoremap <space>S :mksession! .session.vim <cr>
nnoremap <space>O :so .session.vim <cr>

" move
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <space>v :bn <cr>
nnoremap <space>b :tabe <cr>
nnoremap \ 0
vmap \ 0
nnoremap 0 $
vmap 0 $
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" makefile
nnoremap <space>e :Vexplore <cr>
nnoremap <space>m :make <cr>
nnoremap <space>w :vsp <cr>
nnoremap <space>i :split <cr>

" yank
nnoremap Y y$
nnoremap yt 0y$
vnoremap <C-c> "+y

" man
nnoremap gm :Man <cr>
set dictionary+=/usr/share/dict/linux.words
set complete+=k
nnoremap gc :%s/

" brackets
inoremap " ""<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap { {}<left>
vnoremap < <gv
vnoremap > >gv

" Terminal
let g:term_buf = 0
let g:term_win = 0

function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

nnoremap <space>t :call Term_toggle(20)<cr>
tnoremap <space>t <C-\><C-n>:call Term_toggle(20)<cr>
