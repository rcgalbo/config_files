" slick - vimrc
" Colors {{{
set termguicolors
color space-vim-dark
set background=dark
let g:space_vim_dark_background=237
hi Comment cterm=italic
" }}}
" Misc {{{
set shell=/bin/bash " fix vim in fish lol
set modelines=1
set backspace=indent,eol,start
set pastetoggle=<F2>
set mouse=a
set encoding=utf-8
set clipboard=unnamedplus
set hidden
filetype plugin on
" }}}
" Spaces & Tabs {{{
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline
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
    au BufNewFile,BufRead *.ejs set filetype=html
    au BufNewFile,BufRead *.py setlocal foldlevel=0 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab 
augroup END
" }}}
" Line Shortcuts {{{
" insert mode mappings
imap jj <Esc>" 
inoremap OOO <C-o>O
" tab to complete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" better jumpin around
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
map B ^
map E $
" swich vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" move line up down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
" pastetoggle
set pastetoggle=<F2>
" }}}
" Leader Shortcuts {{{
let mapleader = ","
nnoremap <leader>r :silent make\|redraw!\|cw<CR>
nnoremap <leader><space> :noh<CR>
" insert after before single characer
map <leader>i i_<Esc>r
map <leader>a a_<Esc>r
" quick config edits
nnoremap <leader>ev :tabnew $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>et :tabnew ~/.tmux.conf<CR>
nnoremap <leader>st :!tmux source-file ~/.tmux.conf<CR>
" expand and close all folds
nnoremap <leader>e zR
nnoremap <leader>c zM
" livedown preview
map <leader>m :LivedownToggle<CR>
" NERDtree toggel
nmap <leader>n :NERDTreeToggle<CR>
" ctrl-p
nmap <leader>f :CtrlP<cr>
" buffer
map <leader>l :bn<cr>
map <leader>h :bp<cr>
map <leader>d :bd<cr>
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
" nerd tree
let NERDTreeMapActivateNode='<space>'
" gist
let g:gist_clip_command = 'pbcopy'
let g:gist_open_browser_after_post = 1
" simply fold
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_docstring_preview=1
" emmet vim
let g:user_emmet_leader_key='<C-z>'
let g:user_emmet_mode='a'
"" Change assignment operator
let R_assign_map=";"
" Markdown
let g:markdown_fenced_languages = ['css', 'python', 'r', 'javascript', 'js=javascript', 'json=javascript', 'xml']
let g:livedown_open = 1 
let g:livedown_autorun = 0
" ctrl-p
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
" goyo
function! s:goyo_enter()
  set number
  set noshowmode
  set noshowcmd
  Limelight
endfunction
function! s:goyo_leave()
  set number
  set noshowmode
  set noshowcmd
  Limelight!
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
" Use the nearest .git directory as the cwd
let g:ctrlp_working_path_mode = 'r'
" nvim-ipython
let g:nvim_ipy_perform_mappings = 0
map <silent> <c-s> <Plug>(IPy-Run)
" }}} 
" Vim Plug {{{
call plug#begin('~/.config/nvim/plugged/')
" file access
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/gist-vim'
" distraction free
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" editing utilities
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'mattn/emmet-vim'
Plug 'mattn/webapi-vim'
" markdown
Plug 'shime/vim-livedown'
Plug 'tpope/vim-markdown'
" misc
Plug 'bfredl/nvim-ipy'
Plug 'dag/vim-fish'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'prettier/vim-prettier'
Plug 'jalvesaq/Nvim-R'
call plug#end()
" }}}

" vim:foldmethod=marker:foldlevel=0
