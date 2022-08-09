" Use "hybrid" (both absolute and relative) line numbers
set number relativenumber

" Use the system clipboard
set clipboard=unnamed

" Use \ as the leader key
let mapleader="\\"

" Use \\ to switch between buffers
nnoremap <leader><leader> :b#<CR>

" Press <tab>, get two spaces
set expandtab shiftwidth=2

" Show `▸▸` for tabs: 	, `·` for tailing whitespace: 
set list listchars=tab:▸▸,trail:·

" Enable mouse mode
set mouse=a

" Allow horizontal scrolling
set sidescroll=1

" Vim plug
call plug#begin('~/.vim/plugged')
" File search with ctrl-p
Plug 'ctrlpvim/ctrlp.vim'
" Wrapper around git eg. :G status
Plug 'tpope/vim-fugitive'
" Barline at bottom
Plug 'vim-airline/vim-airline'
" Automatic indentation
Plug 'tpope/vim-sleuth'
" Autocomplete
" Plug 'neoclide/coc.nvim', {'branch':'release'}
" Entire page with 'ae/ie'
" Plug 'kana/vim-textobj-entire'
" Motion plugin using s
Plug 'ggandor/lightspeed.nvim'
" Comment with gc
Plug 'numToStr/Comment.nvim'
call plug#end()

" Ctrl-p not index outside source code
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|venv)|(\.(swp|ico|git|svn))$'

" Initialise nvim-comment
" lua require('Comment').setup()
