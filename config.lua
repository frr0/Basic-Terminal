-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<space>w"] = ":vsp <cr>"
vim.cmd([[
set relativenumber
set ignorecase
nnoremap ,z :wqa <cr>
nnoremap <space>s :wa <cr>
nnoremap <space>0 :bdelete <cr>
nnoremap <space>9 :q! <cr>
nnoremap <space>S :mksession! .session.vim <cr>
nnoremap <space>O :so .session.vim <cr>
nnoremap <S-l> gt
nnoremap <S-h> gT 
nnoremap <tab> :bnext <cr>
nnoremap <S-tab> :bprevious <cr>
nnoremap <space>v :bn <cr>
nnoremap <space>b :tabe <cr>
nnoremap <space>n G=ggg;
nnoremap \ 0
vmap \ 0
nnoremap 0 $
vmap 0 $
nnoremap + {
nnoremap - }
nnoremap <space><space> :Telescope lsp_document_symbols<cr>
nnoremap gv :%s/
nnoremap <space>m :make <cr>
nnoremap <space>w :vsp <cr>
nnoremap <space>i :split <cr>
set dictionary+=/usr/share/dict/linux.words
set complete+=k
nnoremap <space>zz :!zathura %<.pdf & <cr>
nnoremap yu y$
nnoremap yt 0y$
vnoremap <C-c> "+y
nnoremap gm :Man <cr>
nnoremap <space>ga :Git stage %<CR>
nnoremap <space>gk :Git commit <CR>
nnoremap <space>gp :Git push origin
vnoremap < <gv
vnoremap > >gv
inoremap <M-i> ![image](support/){width=70%}<left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <M-f> $$$$<left><left>
nnoremap <space>r :Telescope <cr>
let g:markdown_fenced_languages = ['html', 'python', 'ruby', 'vim', 'c', 'cpp', 'java', 'php', 'css']
nnoremap <F7> :lua require('dapui').toggle()<CR>
nnoremap <F9> :lua require('dap').toggle_breakpoint()<CR>
nnoremap <F5> :lua require('dap').continue()<CR>
nnoremap <F6> :lua require('dap').step_over()<CR>
nnoremap <F10> :lua require('dap').step_into()<CR>
nnoremap <F8> :lua require('dap').step_out()<CR>
nnoremap <F3> :lua require("dapui").eval()<CR>
nmap <space>5 <Plug>SnipRun
nmap <space>6 <Plug>SnipRunOperator
vmap f <Plug>SnipRun

]])

lvim.builtin.which_key.mappings["a"] = { "<cmd>Telescope lsp_document_symbols<cr>", "doc" }
lvim.builtin.which_key.mappings[","] = {
  "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
  "Buffers",
}
lvim.builtin.which_key.mappings["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" }
lvim.builtin.which_key.mappings["m"] = { "<cmd>wa | FloatermNew --height=0.95 --width=0.95 --autoclose=0 make <cr>", "Makefile" }
lvim.builtin.which_key.mappings["s"] = { "<cmd>w!<CR>", "Save" }
lvim.builtin.which_key.mappings["b"] = { "<cmd>tabe<CR>", "New Tab" }
lvim.builtin.which_key.mappings["v"] = { "<cmd>bnext<CR>", "Next buffer" }
lvim.builtin.which_key.mappings["q"] = { "<cmd>q!<CR>", "Quit" }
lvim.builtin.which_key.mappings["x"] = { "<cmd>Bdelete!<CR>", "Close Buffer" }
lvim.builtin.which_key.mappings["ò"] = { "<cmd>nohlsearch<CR>", "No Highlight" }
lvim.builtin.which_key.mappings["f"] = {
  "<cmd>lua require('telescope.builtin').git_files(require('telescope.themes'))<cr>",
  "Git files"
}
lvim.builtin.which_key.mappings["h"] = { "<cmd>Telescope find_files<cr>", "Files" }
lvim.builtin.which_key.mappings["k"] = { "<cmd>Telescope git_commits<cr>", "Commmits" }
lvim.builtin.which_key.mappings["j"] = { "<cmd>Telescope live_grep theme=ivy<cr>", "Find Text" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<cr>", "Projects" }
lvim.builtin.which_key.mappings["y"] = { "<cmd>tabe<cr>", "New tab" }
lvim.builtin.which_key.mappings["+"] = { "<cmd>enew<cr>", "New buffer" }
lvim.builtin.which_key.mappings["w"] = { "<cmd>vsp<cr>", "V Split" }
lvim.builtin.which_key.mappings["<F3>"] = { "<cmd>lua require('dapui').eval()<CR>", "Scopes" }
lvim.builtin.which_key.mappings["<F7>"] = { "<cmd>lua require('dapui').toggle()<CR>", "Debug UI" }
lvim.builtin.which_key.mappings["<F5>"] = { "<cmd>lua require('dap').continue()<CR>", "Continue" }
lvim.builtin.which_key.mappings["<F6>"] = { "<cmd>lua require('dap').step_over()<CR>", "Step over" }
lvim.builtin.which_key.mappings["<F8>"] = { "<cmd>lua require('dap').step_out()<CR>", "Step out" }
lvim.builtin.which_key.mappings["<F9>"] = { "<cmd>lua require('dap').toggle_breakpoint()<CR>", "Breakpoint" }
lvim.builtin.which_key.mappings["<F10>"] = { "<cmd>lua require('dap').step_into()<CR>", "Step into" }

lvim.builtin.which_key.mappings["c"] = {
  name = "Compile",
  c = { "<cmd>wa |FloatermNew --height=0.95 --width=0.95 --autoclose=0 gcc -g % -o %< && ./%< <cr>", "C" },
  j = { "<cmd>wa |FloatermNew --height=0.95 --width=0.95 --autoclose=0 javac -g % && java %< <CR>", "Java" },
  p = { "<cmd>wa |FloatermNew --height=0.95 --width=0.95 --autoclose=0 python3 % <cr>", "Python" },
  s = { "<cmd>wa |FloatermNew --height=0.95 --width=0.95 --autoclose=0 ./% <cr>", "Shell" },
  m = { "<cmd>wa | !./note.sh %< <cr>", "md" },
}
lvim.builtin.which_key.mappings["d"] = {
  name = "Debug",
  s = {
    name = "Step",
    c = { "<cmd>lua require('dap').continue()<CR>", "Continue" },
    v = { "<cmd>lua require('dap').step_over()<CR>", "Step Over" },
    i = { "<cmd>lua require('dap').step_into()<CR>", "Step Into" },
    o = { "<cmd>lua require('dap').step_out()<CR>", "Step Out" },
  },
  h = {
    name = "Hover",
    h = { "<cmd>lua require('dap.ui.variables').hover()<CR>", "Hover" },
    v = { "<cmd>lua require('dap.ui.variables').visual_hover()<CR>", "Visual Hover" },
  },
  u = {
    name = "UI",
    h = { "<cmd>lua require('dap.ui.widgets').hover()<CR>", "Hover" },
    f = { "local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>", "Float" },
  },
  r = {
    name = "Repl",
    o = { "<cmd>lua require('dap').repl.open()<CR>", "Open" },
    l = { "<cmd>lua require('dap').repl.run_last()<CR>", "Run Last" },
  },
  b = {
    name = "Breakpoints",
    c = {
      "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
      "Breakpoint Condition",
    },
    m = {
      "<cmd>lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') })<CR>",
      "Log Point Message",
    },
    t = { "<cmd>lua require('dap').toggle_breakpoint()<CR>", "Create" },
  },
  c = { "<cmd>lua require('dap').scopes()<CR>", "Scopes" },
  i = { "<cmd>lua require('dap').toggle()<CR>", "Toggle" },
}
lvim.builtin.which_key.mappings["t"] = {
  name = "Terminal",
  n = { "<cmd>wa |FloatermNew --height=0.95 --width=0.95 --autoclose=0 node<cr>", "Node" },
  h = { "<cmd>wa |FloatermNew --height=0.95 --width=0.95 --autoclose=0 htop<cr>", "Htop" },
  p = { "<cmd>wa |FloatermNew --height=0.95 --width=0.95 --autoclose=0 python<cr>", "Python" },
  r = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
  t = { "<cmd>ToggleTerm size=14 direction=horizontal<cr>", "Horizontal" },
  v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
}
lvim.builtin.which_key.mappings["v"] = {
  name = "Search",
  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
  h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
  M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
  r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  R = { "<cmd>Telescope registers<cr>", "Registers" },
  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  C = { "<cmd>Telescope commands<cr>", "Commands" },
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Additional Plugins
lvim.plugins = {
  { "folke/tokyonight.nvim" },
  { "folke/trouble.nvim", cmd = "TroubleToggle", },
  { "mfussenegger/nvim-dap" },
  { "Pocco81/DAPInstall.nvim" },
  { "Pocco81/dap-buddy.nvim" },
  { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } },
  { "nvim-telescope/telescope-dap.nvim" },
  { "theHamsta/nvim-dap-virtual-text" },
  { "rcarriga/vim-ultest",
    requires = { "vim-test/vim-test" },
    run = ":UpdateRemotePlugins"
  },
  { "jbyuki/one-small-step-for-vimkind" },
  { "michaelb/sniprun", run = 'bash ./install.sh' },
  { "epheien/termdbg" },
  { "voldikss/vim-floaterm" },
  { "preservim/nerdcommenter" },
  { "vim-scripts/YankRing.vim" },
  { "vim-scripts/mips.vim" },
  { "huawenyu/termdebug.nvim" },
}

lvim.builtin.dap.active = true
