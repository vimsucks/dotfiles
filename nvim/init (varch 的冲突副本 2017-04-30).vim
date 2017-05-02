" auto load .vimrc when it is edited
autocmd! bufwritepost .nvimrc source $MYVIMRC

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Plugins                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


call plug#begin('~/.config/nvim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'aperezdc/vim-template'
Plug 'w0rp/ale' " linter
Plug 'scrooloose/nerdcommenter'  " 快速注释/反注释
Plug 'jiangmiao/auto-pairs'  " auto pair brackets, parens, quotes
Plug 'Yggdroot/indentLine'  " 缩进对齐线
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'joshdick/onedark.vim'
Plug 'fcitx.vim'
Plug 'mhinz/vim-signify'  " show git diff
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              General Settings                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Author
let g:username="vimsucks"
let g:email="dev@vimsucks.com"

" Show line number, command, status line
set history=100
set ruler
set number
set relativenumber
set showcmd
set showmode
set laststatus=2
"set cmdheight=1
set noshowmode
set scrolloff=3
set wildmenu

"Turn off annoying error soung
set noerrorbells
set novisualbell

"Turn off splash screen
set shortmess=atI

"syntax and theme
set t_Co=256
syntax on
set background=dark
colorscheme onedark
set cursorline
set cursorcolumn
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
highlight ColorColumn ctermbg=magenta

"Configure backspace to be able to acrosS two lines
set backspace=2
set whichwrap+=<,>,h,l

"Tab and indent
"set expandtab " 用空格键代替制表符
set tabstop=4 " 制表符占2个空格大小
set smarttab
set shiftwidth=4 " 默认缩进2个空格大小
set softtabstop=4
set autoindent
"set cindent " C风格的缩进

"Files, backups and encoding
set hidden " allow buffer switching without saving
set nobackup
set noswapfile
set autoread
set autowrite
set autochdir
set fileencodings=utf-8
set fileformats=unix,dos,mac
filetype on
filetype plugin on
filetype indent on

"Text search and replace
set showmatch
set matchtime=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set magic
set lazyredraw
set nowrapscan
set iskeyword+=_,$,@,%,#,-,.

"Code folding
set nofoldenable
set fdm=indent
"set fdm=syntax
"

set shell=zsh

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Colors                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-signify customized for breezy colorscheme
"highlight SignifySignAdd guifg=#87ff5f ctermfg=119 guibg=#31363b ctermbg=237 gui=bold cterm=bold
"highlight SignifySignDelete guifg=#df5f5f ctermfg=167 guibg=#31363b ctermbg=237 gui=bold cterm=bold
"highlight SignifySignChange guifg=#ffff5f ctermfg=227 guibg=#31363b ctermbg=237 gui=bold cterm=bold

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Enviroment                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:python_host_prog = "/home/vimsucks/.virtualenv/neovim2/bin/python"
let g:python3_host_prog = "/home/vimsucks/.virtualenv/neovim3/bin/python"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Buffer                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd! TermOpen * set nobuflisted

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              Plugin Settings                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" YCM
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_auto_trigger = 1
let g:ycm_complete_in_comments = 1
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_always_populate_location_list = 1
set completeopt-=preview

" Ultisnips
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

" ale
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_linters = {
      \ 'python3': ['flake8'],
      \ 'asm': [],
      \}


" auto-pairs
autocmd FileType scheme let g:AutoPairs = {'(':')', '[':']', '{':'}','"':'"', '`':'`'}
let g:AutoPairsMapSpace = 0

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" airline
let g:airline_theme = "onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" signify
let g:signify_sign_add = "a"
let g:signify_sign_delete = "d"
let g:signify_sign_change = "c"
let g:signify_sign_show_text = 1
let g:signify_sign_changedelete = g:signify_sign_change

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Language Specific Settings                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Functions                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! PythonTemplate()
  call setline(1,"#!/usr/bin/env python3")
  call append(1, "# _*_ coding:utf-8 _*_")
  call append(2,"")
endfunction

function! CPPTemplate()
  call setline(1, "#include <iostream>")
  call append(5, "")
  call append(6, "using namespace std;")
  call append(7, "")
  call append(8, "int")
  call append(9, "main() {")
  call append(10, "}")
endfunction

function! ShTemplate()
  call setline(1, "#!/bin/bash")
  call append(1,"")
endfunction

function! CompileAndRun()
  exec "w"
  if &filetype == "c"
    exec "te gcc -Wall -Wextra -O3 -pedantic % -o /tmp/a.out && /tmp/a.out"
  elseif &filetype == "cpp"
    exec "te clang++ -Wall -Weffc++ -Wextra -O3 -pedantic -std=c++11 % -o /tmp/a.out && /tmp/a.out"
  elseif &filetype == "go"
    exec "te go run %"
  elseif &filetype == "java"
    exec "te javac % -d /tmp/ && java -cp /tmp/ %:t:r"
  elseif &filetype == "python"
    if split(getline(1), " ")[-1] == "python2"
      exec "te python2 %"
    else
      exec "te python3 %"
    endif
  elseif &filetype == "vim"
    exec "source %"
  elseif &filetype == "ruby"
    exec "te ruby %"
  elseif &filetype == "sh"
    exec "te bash %"
  elseif &filetype == "lua"
    exec "te lua %"
  elseif &filetype == "cs"
    exec "te mcs % -out:/tmp/a.exe && /tmp/a.exe"
  elseif &filetype == "scheme"
    exec "te csc % -o /tmp/a.out && /tmp/a.out"
  elseif &filetype == "javascript"
    exec "te node %"
  elseif &filetype == "haskell"
    exec "te ghc % && ./%:t:r"
  elseif &filetype == "markdown"
	exec "AsyncRun pandoc -o %:t:r.html % --template ~/Templates/pandoc-bootstrap-template/template.html --css ~/Templates/pandoc-bootstrap-template/template.css"
	exec "copen"
	exec "wincmd p"
	"exec "sleep 3"
	"exec "cclose"
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Templates                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufNewFile *.py :call PythonTemplate()
autocmd BufNewFile *.cpp :call CPPTemplate()
autocmd BufNewFile *.sh :call ShTemplate()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Shortcuts                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=";"
let g:mapleader=";"
map <C-[> <Esc>
imap <C-l> <delete>
"nnoremap <leader>fu :CtrlPFunky<CR>
noremap <leader><C-P> :CtrlPFunky<CR>
" close buffer
nnoremap <leader>w :w<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
" next buffer
nnoremap <leader>n :bn<CR>
" previous buffer
nnoremap <leader>p :bp<CR>
" close buffer
nnoremap <leader>w :w<CR>
autocmd FileType c,cs,cpp,go,java,sh,ruby,python,vim,scheme,javascript,haskell,markdown nnoremap <leader>r :call CompileAndRun()<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
