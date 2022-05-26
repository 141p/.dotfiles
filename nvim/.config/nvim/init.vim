set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set splitright

let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25

call plug#begin('~/.vim/plugged')

" Lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'onsails/lspkind-nvim'
Plug 'simrat39/symbols-outline.nvim'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" Telescope 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Treesitter Plugins
Plug 'nvim-treesitter/nvim-treesitter', { 'do': './install.sh' }
Plug 'nvim-treesitter/playground'
Plug 'romgrk/nvim-treesitter-context'

" NerdTree Plugins
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'

" Colorscheme 
Plug 'gruvbox-community/gruvbox'

call plug#end()

lua require("lua_files")


colorscheme gruvbox
highlight Normal guibg=none



let mapleader = " "

"imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
"inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

"snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
"snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

"imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
"smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>+ : vertical resize +5<CR>
nnoremap <leader>- : vertical resize -5<CR>
nnoremap <leader>rs : resize 100<CR>
nnoremap <leader><CR> : so ~/.config/nvim/init.vim<CR>
