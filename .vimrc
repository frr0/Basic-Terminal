" (n)vi(m)
" stettings
"===================================
set relativenumber number
set mouse=a
set ignorecase
set hidden
set spelllang=en,it
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set completeopt=menuone,noinsert,popup
syntax on

" mappings
"===================================
let g:mapleader=","

" save and exit
nnoremap <leader>z :wqa <cr>
nnoremap <space>s :wa <cr>
nnoremap <space>0 :q! <cr>
inoremap <tab> <c-x><c-k>

" move
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <space>v :bn <cr>
nnoremap <space>b :tabe <cr>
nnoremap \ 0
vmap \ 0
nnoremap 0 $
vmap 0 $
nnoremap + {
nnoremap - }
vnoremap + {
vnoremap - }
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" makefile
nnoremap <space>e :Vexplore <cr>
nnoremap <space>m :!make <cr>
nnoremap <space>w :vsp <cr>
nnoremap <space>i :split <cr>

" yank
nnoremap Y y$
nnoremap yt 0y$
nnoremap <C-c> "+y

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
nnoremap <space>t  :bel ter<CR>
