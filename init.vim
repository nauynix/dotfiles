" Use "hybrid" (both absolute and relative) line numbers
set number relativenumber

" Use the system clipboard
set clipboard=unnamed

" Use Space as the leader key
nnoremap <SPACE> <Nop>
let mapleader=" "

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
function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction
" File search with ctrl-p
Plug 'ctrlpvim/ctrlp.vim', Cond(!exists('g:vscode'))
" Wrapper around git eg. :G status
Plug 'tpope/vim-fugitive', Cond(!exists('g:vscode'))
" Barline at bottom
Plug 'vim-airline/vim-airline', Cond(!exists('g:vscode'))
" Autocomplete
" Plug 'neoclide/coc.nvim', {'branch':'release'}
" Entire page with 'ae/ie'
" Plug 'kana/vim-textobj-entire'
Plug 'neoclide/coc.nvim', {'branch':'release'}, Cond(!exists('g:vscode'))
" Motion plugin using s
Plug 'ggandor/lightspeed.nvim', Cond(!exists('g:vscode'))
" Comment with gc
Plug 'numToStr/Comment.nvim'
" Call ranger
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
" Automatic indentation
Plug 'tpope/vim-sleuth'
call plug#end()

" Ctrl-p not index outside source code
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|venv)|(\.(swp|ico|git|svn))$'

" Initialise nvim-comment
lua require('Comment').setup()

" Yank to windows
set clipboard+=unnamedplus
let g:clipboard = {
          \   'name': 'win32yank-wsl',
          \   'copy': {
          \      '+': 'win32yank.exe -i --crlf',
          \      '*': 'win32yank.exe -i --crlf',
          \    },
          \   'paste': {
          \      '+': 'win32yank.exe -o --lf',
          \      '*': 'win32yank.exe -o --lf',
          \   },
          \   'cache_enabled': 0,
          \ }
