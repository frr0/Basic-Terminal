" (n)vi(m)
set relativenumber number
set mouse=a
set ignorecase
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
"set completeopt=menuone,noinsert,popup
set clipboard=unnamedplus
set ruler
set showcmd
set showmode
set scrolloff=7
set cursorline
set noswapfile
let g:mapleader=","
nmap <space> <leader>
colorscheme slate
syntax on

" mappings
"===================================
" save and exit
nnoremap <leader>z :wqa <cr>
nnoremap <leader>s :wa <cr>
nnoremap <silent>esc esc
nnoremap <leader>0 :bdelete <cr>
nnoremap <leader>9 :q! <cr>
nnoremap <leader>S :mksession! .session.vim <cr>
nnoremap <leader>O :so .session.vim <cr>

" move
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <leader>v :bn <cr>
nnoremap <leader>b :tabe <cr>
nnoremap <leader>n G=ggg;
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
nnoremap <leader>e :Vexplore<cr>
":vert res 30<cr>
map <F2> :!c<cr>:!ls<CR>
nnoremap <leader>m :wa \| :!make <cr>
nnoremap <leader>w :vsp <cr>
nnoremap <leader>i :split <cr>
nnoremap <leader>ò :nohlsearch<cr>

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
"noremap <leader>9 9gt
"noremap <leader>0 :tablast<cr>

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" yank
nnoremap yu y$
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
""inoremap " ""<left>
""inoremap ' ''<left>
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
nnoremap <leader>t :bel ter<CR>

inoremap <M-i> ![image](support/){width=70%}<left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <M-f> $$$$<left><left>
let g:markdown_fenced_languages = ['html', 'python', 'ruby', 'vim', 'c', 'cpp', 'java', 'php', 'css', 'c#']
nnoremap <leader>zz :!zathura %<.pdf & <cr>

" Commenting blocks of code.
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex              let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
  augroup END
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>))
