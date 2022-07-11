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
let g:mapleader=","
syntax on

" mappings
"===================================
" save and exit
nnoremap <leader>z :wqa <cr>
nnoremap <space>s :wa <cr>
nnoremap <space>0 :q! <cr>

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
nnoremap <space>e :Vexplore<cr>
":vert res 30<cr>
map <F2> :!c<cr>:!ls<CR>
nnoremap <space>m :wa<cr>:!make <cr>
nnoremap <space>w :vsp <cr>
nnoremap <space>i :split <cr>
nnoremap <space>ò :nohlsearch<cr>

" yank
nnoremap Y y$
nnoremap yt 0y$
nnoremap <C-c> "+y
vnoremap <C-c> "+y

" man
nnoremap gm :Man <cr>
set dictionary+=/usr/share/dict/linux.words
set complete+=k
nnoremap gc :%s/

" brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap { {}<left>

"indent
nnoremap gò gg=GGG
vnoremap < <gv
vnoremap > >gv
nnoremap gp `[v`]

" Terminal
nnoremap <space>t :bel ter<CR>

" comment
vnoremap <leader>cc :norm i//<cr>
vnoremap <leader>cv :norm i##<cr>
vnoremap <leader>cx :norm i--<cr>
vnoremap <leader>cz :norm i"<cr>
vnoremap <leader>cu :norm xx<cr>
