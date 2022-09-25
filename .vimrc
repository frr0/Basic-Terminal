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
set ruler
set showcmd
set showmode
set scrolloff=7
set cursorline
set noswapfile
let g:mapleader=","
colorscheme slate
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

inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

noremap <left> :bp<CR>
noremap <right> :bn<CR>

" makefile
nnoremap <space>e :Vexplore<cr>
":vert res 30<cr>
map <F2> :!c<cr>:!ls<CR>
nnoremap <space>m :wa<cr>:!make <cr>
nnoremap <space>w :vsp <cr>
nnoremap <space>i :split <cr>
nnoremap <space>ò :nohlsearch<cr>

map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>

map <leader>tj :tabnext<cr>
map <leader>tk :tabprev<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>

map <leader>te :tabedit<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabm<cr>

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

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
