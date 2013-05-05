" -----------------------------------------------------------------------
" VimRC by JacquesBH <jacques@bodin-hullin.net>
"
" Thanks to Vundle ;)
" -----------------------------------------------------------------------

" Init {{{
set nocompatible    " be iMproved
set encoding=utf-8  " Character encoding
filetype off        " required!
set term=$TERM      " name of the terminal

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
" }}}

" Bundles {{{
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/sudo.vim'
"Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive'
"Bundle 'git://git.wincent.com/command-t.git'
Bundle 'jacquesbh/vim-showmarks'
Bundle 'snipMate'
Bundle 'tomtom/tcomment_vim'
"Bundle 'mru.vim'
Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'juvenn/mustache.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'
" }}}

" Options {{{
filetype on
filetype plugin on
filetype indent on
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set number
set laststatus=2
set cmdheight=1
set history=300
set cursorline
set showmatch
set mat=2
set scrolljump=3
set scrolloff=2
set mouse=a
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set autoindent
set listchars=tab:.\ ,trail:.,eol:¬,precedes:◂,extends:▸
set showbreak=↪
set fillchars=vert:│,fold:┄,diff:╱
set nolist
set title
set guifont=Consolas
set wildignore=*.o,*.bin
set hlsearch
set updatetime=100

" Backup
set backup
set writebackup
set backupdir=~/.vim/vim_bkp,.
set directory=~/.vim/vim_swp,.

" Folding
set foldenable
set foldcolumn=3
set foldmethod=marker
" /Options }}}

" Key leader {{{
let mapleader = ","
" }}}

" HTML {{{
let use_xhtml = 1
" }}}

" Filetypes {{{
augroup md
    au BufNewFile,BufRead *.md set filetype=markdown 
augroup end
augroup a2
    au BufNewFile,BufRead *.a2 set filetype=apache 
augroup end
" }}}

" GUI (MacVim) {{{
if has("gui_running")
    colorscheme desert
    set guioptions-=T
    set guioptions-=r
endif
" }}}

"  Plugin Tplr : Template Reader (by Ivan Enderlin) {{{
let g:TEMPLATE_HOME = "~/.vim/templates/"
command -narg=1 Tplr :execute ".read " . TEMPLATE_HOME . expand("<args>") . ".template"
" }}}

" PHP {{{
let PHP_autoformatcomment = 1
:autocmd FileType php noremap <C-L> :!php -l %<CR>
:autocmd FileType php set foldmethod=syntax
" }}}

" NERDTree {{{
map <D-1> :NERDTreeToggle<CR>
" nmap <leader>n :NERDTreeToggle<cr>
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" "let NERDTreeCaseSensitiveSort = 1
" let NERDTreeChDirMode = 2 " change pwd with nerdtree root change
" let NERDTreeHijackNetrw = 0
" let NERDTreeIgnore = [
"     \ '\~$',
"     \ '\.o$',
"     \ '\.swp$',
"     \ '\.bbl$',
"     \ '\.blg$',
"     \ '\.fdb_latexmk$',
"     \ '\.log$',
"     \ '\.out$',
"     \ '\.pdf$'
" \ ]
" 
" autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 
" nmap <silent> <leader>nf :NERDTreeFind<CR>
" }}}

" TagList {{{
map <D-7> :TlistToggle<CR>
" }}}

" Netbeans shortcuts {{{
" Copy line up
noremap <A-S-Up> yyP
imap <A-S-Up> <Esc>yyPgi

" Copy line down
noremap <A-S-Down> yyp
imap <A-S-Down> <Esc>yypgi

" delete line(s)
imap <D-e> <Esc>ddgi
noremap <D-e> dd

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
" }}}

" TagBar {{{
nmap <D-7> :TagbarToggle<CR>           " toggle Tagbar
" }}}

" Showmarks {{{
nnoremap ` :ShowMarksOnce<cr>`
" }}}

" TComment {{{
noremap <silent> <C-c> :TComment<CR>
nmap <silent> <C-c> :TComment<CR>
noremap <silent> <D-/> :TComment<CR>
nmap <silent> <D-/> :TComment<CR>
" }}}

" SnipMate {{{
" }}}

" CtrlP {{{
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(so|png|jpg|jpeg|gif)$',
  \ 'link': 'some_bad_symbolic_links'
  \ }

let g:ctrlp_max_height = 20
let g:ctrlp_show_hidden = 1
let g:ctrlp_use_caching = 1
" }}}
