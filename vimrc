"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible " VI compatible mode is disabled so that VIm things work

" =============================================================================
"   PLUGINS
" =============================================================================
"
call plug#begin('~/.vim/plugged')

" Text Manipulation
"Plug 'Valloric/YouCompleteMe'       " Autocomplete
Plug 'tpope/vim-sensible'           " Defaults everyone should agree on
Plug 'vim-syntastic/syntastic'      " Check syntax
Plug 'christoomey/vim-tmux-navigator' " Set navigation with tmux
Plug 'benmills/vimux'               " Call command in tmux

" Commands
Plug 'tpope/vim-surround'           " Surround with 's' cs'<
Plug 'tpope/vim-commentary'         " Comment with 'gc'
Plug 'tpope/vim-vinegar'            " Netrw with '-'
Plug 'vim-scripts/ReplaceWithRegister' " Replace with 'gr'
Plug 'christoomey/vim-system-copy'      " System copy and paste with 'cp/cv'
Plug 'kana/vim-textobj-user'            " Define own commands
Plug 'kana/vim-textobj-entire'          " Entire page with 'ae/ie'
Plug 'gabrielsimoes/cfparser.vim'       " Codeforces
Plug 'christoomey/vim-run-interactive'  " Interactive
"Plug 'djoshea/vim-autoread'

" GUI
Plug 'itchyny/lightline.vim'          " Better Status Bar
Plug 'mhinz/vim-startify'             " Better start screen
Plug 'luochen1990/rainbow' " Bracket Colourizer

call plug#end()

" Change to blinking line cursor in insert mode
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

"---------------
"Syntax and indent
"---------------
set number relativenumber " Set relative line number

syntax on " turn on syntax highlighting
syntax enable
"set showmatch " show matching braces when text indicator is over them
filetype plugin indent on " enable file type detection
set autoindent
let g:rainbow_active = 1 " Set rainbow brackets on

augroup CursorLineOnlyInActiveWindow
autocmd!
autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
augroup END

set clipboard^=unnamed,unnamedplus
hi CursorLine   cterm=NONE ctermbg=236 ctermfg=NONE
set shortmess+=I " disable startup message
"set nu " number lines
set rnu " relative line numbering
set incsearch " incremental search (as string is being typed)
set hls " highlight search
set listchars=tab:>>,nbsp:~ " set list to see tabs and non-breakable spaces
set lbr " line break
set scrolloff=5 " show lines above and below cursor (when possible)
set noshowmode " hide mode
set laststatus=2
set backspace=indent,eol,start " allow backspacing over everything
set timeout timeoutlen=1000 ttimeoutlen=100 " fix slow O inserts
set lazyredraw " skip redrawing screen in some cases
set autochdir " automatically set current directory to directory of last opened file
set hidden " allow auto-hiding of edited buffers
set history=8192 " more history
set nojoinspaces " suppress inserting two spaces between sentences
" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" smart case-sensitive search
set ignorecase
set smartcase
" tab completion for files/bufferss
set wildmode=longest,list
set wildmenu
set mouse+=a " enable mouse mode (scrolling, selection, etc)
" set nowrap "No wrap
set autoread " Auto update

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

set background=dark

"__________________
" Snippets
"__________________

" Competitive programming defaults
autocmd filetype cpp nnoremap ,inc : -1read $HOME/.vim/.generate_template.cpp<CR>16jo
autocmd filetype cpp nnoremap ,tc : -1read $HOME/.vim/.generate_tc.cpp<CR>18jo
" autocmd filetype cpp nnoremap uh :w<CR>:!printf "\033c" && printf "================\n  Compiling...\n================\n" && time g++ -g -std=c++17 -Wall -Wextra -Wno-unused-result -D LOCAL -O2 %:r.cpp -o %:r 2>&1 \| tee %:r.cerr && printf "\n================\n   Running...\n================\n" && time ./%:r < %:r.in > %:r.out 2> %:r.err && printf "\n\n\n\n"<CR>
inoremap {<CR> {<CR>}<ESC>O
filetype indent on
" vv to generate new vertical split
nnoremap <silent> vv <C-w>v

"------------------
" Vimux settings
"------------------
let g:VimuxOrientation = "h" " Vertical split
let g:VimuxHeight = "40" " Fatter split
" Prompt for a command to run
" map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
" map <Leader>vl :VimuxRunLastCommand<CR>
 map <Leader>t :VimuxCloseRunner<CR>
" autocmd filetype cpp nnoremap <Leader>t :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17   -O2   % -o %:r && ./%:r <CR>
autocmd filetype cpp nnoremap <Leader>h :w <bar>:call VimuxOpenRunner()<bar>:call VimuxSendText("cf test")<bar>:call VimuxSendKeys("Enter")<bar>:call VimuxSendText("1")<bar>:call VimuxSendKeys("Enter")<CR><CR>

"------------------
" Syntastic settings
"------------------
" Toggle Synastic
cabbrev stm SyntasticToggleMode<CR> 
"let g:syntastic_sh_checkers = ["sh", "shellcheck"]

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
