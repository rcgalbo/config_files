" slick - vimrc
" Colors {{{
set termguicolors
color space-vim-dark
let g:airline_theme='kolor'
let g:space_vim_dark_background = 237
hi Comment cterm=italic
" }}}
" Misc {{{
set shell=/bin/bash " fix vim in fish
set modeline
set modelines=1
set backspace=indent,eol,start
set pastetoggle=<F2>
set mouse=a
set encoding=utf-8
set clipboard=unnamedplus
set hidden
" }}}
" Spaces & Tabs {{{
set expandtab
set shiftwidth=2
set softtabstop=2
filetype plugin on
set autoindent
set smartindent
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
set linebreak
set breakindent
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
" Folding {{{
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldlevel=10
nnoremap <space> za
" }}}
" Autogroups {{{
augroup configgroup
    autocmd!
    autocmd BufRead,BufNewFile *.md setlocal spell foldlevel=10
    au FileType py
    \ setlocal foldlevel=0 tabstop=4 softtabstop=4 shiftwidth=4 
    \| setlocal textwidth=79 fileforma=unix expandtab autoindent 
augroup END
" relative line number toggle
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END
" }}}
" Line Shortcuts {{{
imap jj <Esc>" 
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
map B ^
map E $
" map tabs
nnoremap H gT
nnoremap L gt
" swich vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" pastetoggle
set pastetoggle=<F2>
" }}}
" Leader Shortcuts {{{
let mapleader=","
noremap <Leader>s :w<CR>
nnoremap <leader>r :silent make\|redraw!\|cw<CR>
nnoremap <leader><space> :noh<CR>
" quick edits
nnoremap <leader>ev :tabnew $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>et :tabnew ~/.tmux.conf<CR>
nnoremap <leader>st :!tmux source-file ~/.tmux.conf<CR>
" expand and close all folds
nnoremap <leader>e zR
nnoremap <leader>c zM
" NERD commenter
map <leader>/ <leader>c<space> 
" CTRL-P vim
map <leader>f <C-p>
" livedown preview
map <leader>m :LivedownToggle<CR>
" insert after before single characer
nnoremap ,i i_<Esc>r
nnoremap ,a a_<Esc>r
" bindings for buffergator searching
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>
nmap <leader>h :BuffergatorMruCyclePrev<cr>
nmap <leader>l :BuffergatorMruCycleNext<cr>
nmap <leader>bl :BuffergatorOpen<cr>
nmap <leader>T :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>
" }}}
" Tmux {{{
" allows cursor change in tmux mode
if exists("$TMUX")
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
end
" }}}
" {{{Plugin Settings
" nerd commenter
let NERDSpaceDelims=1
" simply fold
let g:SimpylFold_fold_docstring=0
let g:SimpylFold_docstring_preview=1
" emmet vim
let g:user_emmet_leader_key='<C-z>'
"" Change assignment operator
let R_assign_map=";"
" Markdown
let g:markdown_fenced_languages = ['css', 'python', 'r', 'javascript', 'js=javascript', 'json=javascript', 'xml']
let g:livedown_open = 1 
" cosco settigns
autocmd FileType javascript,css nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
autocmd FileType javascript,css imap <silent> <Leader>; <c-o><Plug>(cosco-commaOrSemiColon)
" ctrl-p
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'
" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1
" }}} 
" Vim Plug {{{
call plug#begin('~/.config/nvim/plugged/')
"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"file access
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" editing utilities
Plug 'scrooloose/nerdcommenter'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'lfilho/cosco.vim'
Plug 'prettier/vim-prettier'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
"markdown
Plug 'shime/vim-livedown'
Plug 'tpope/vim-markdown'
" highlighting - indenting
Plug 'dag/vim-fish'
Plug 'pangloss/vim-javascript'
Plug 'jalvesaq/Nvim-R'
" auto complete plugs
Plug 'metakirby5/codi.vim'
call plug#end()
" }}}

" vim:foldmethod=marker:foldlevel=0
