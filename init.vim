" auto load .vimrc when it is edited
autocmd! bufwritepost .nvimrc source $MYVIMRC

"==========================================================================================
"
"																	Plugins
"
"==========================================================================================
call plug#begin('~/.config/nvim/plugged')
Plug 'Valloric/ListToggle'
Plug 'Valloric/YouCompleteMe', { 'for' : ['c', 'cs', 'cpp', 'python'] }
Plug 'Mizuchi/STL-Syntax'
Plug 'scrooloose/nerdcommenter'  " 快速注释/反注释
Plug 'mattn/emmet-vim' , { 'for' : ['html', 'css'] } " HTML tool
Plug 'jiangmiao/auto-pairs'  " auto pair brackets, parens, quotes Plug 'Yggdroot/indentLine'  " 缩进对齐线
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'vimball'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky' " Key: <leader>fu
"Plug 'EasyGrep'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'klen/python-mode' , { 'for' : 'python'}
Plug 'surround.vim'
Plug 'KabbAmine/zeavim.vim'
Plug 'tasklist.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Chiel92/vim-autoformat'
Plug 'morhetz/gruvbox'  " colorscheme
Plug 'tomasr/molokai'
Plug 'dracula/vim'
call plug#end()

"==========================================================================================
"
"                                 General Settings
"
"==========================================================================================


" Show line number, command, status line
set history=100
set ruler
set number
set relativenumber
set showcmd
set showmode
set laststatus=2
set cmdheight=1
set scrolloff=3
set wildmenu

"Turn off annoying error soung
set noerrorbells
set novisualbell

"Turn off splash screen
set shortmess=atI

"syntax and theme
"set t_Co=256
syntax on
set background=dark
"colorscheme gruvbox
colorscheme dracula
"colorscheme dracula
set cursorline
set cursorcolumn

"Configure backspace to be able to acrosS two lines
set backspace=2
set whichwrap+=<,>,h,l

"Tab and indent
set noexpandtab " 用空格键代替制表符
set tabstop=2 " 制表符占2个空格大小
set smarttab
set shiftwidth=2 " 默认缩进2个空格大小
set softtabstop=2
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

"==========================================================================================
"
"                                 Plugins Settings
"
"==========================================================================================

" ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" YCM
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_auto_trigger = 1
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '!!'
let g:ycm_complete_in_comments = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_always_populate_location_list = 1
set completeopt-=preview

"ctrlp-funky
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

"emmet
let g:user_emmet_expandabbr_key = '<C-Space>'
let g:user_emmet_leader_key ='<C-y>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"pymode
let g:pymode = 1
let g:pymode_options_max_line_length = 100
let g:pymode_quickfix_minheight = 1
let g:pymode_quickfix_maxheight = 2
let g:pymode_pyton = 'python3'
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1
let g:pymode_lint_cwindow = 1
let g:pymode_lint_checkers = 'pep8'
let g:pymode_run = 0
let g:pymode_rope = 0
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_autoimport = 0
let g:pymode_syntax = 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_print_as_function = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" rainbow parenthese
augroup rainbow_lisp
  autocmd!
  "autocmd FileType lisp,clojure,scheme RainbowParentheses
  autocmd FileType * RainbowParentheses
augroup END

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

"Airline
let g:airline_theme = 'dracula'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'

" cpp highlightint
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1

" gundo
nnoremap <leader>gu :GundoToggle<CR>

" vimwiki
let g:vimwiki_camel_case = 0
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_CJK_length = 1

" calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" tasklist
let g:tlTokenList = ["FIXME", "TODO"]
let g:tlWindowPosition = 1

" ultisnips
let g:UltiSnipsExpandTrigger="<C-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" vim-autoformat
au BufWrite * : Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_removing_trailing_spaces = 0

"==========================================================================================
"
"                                 Functions
"
"==========================================================================================
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
		exec "te g++ -Wall -Weffc++ -Wextra -O3 -pedantic -std=c++11 % -o /tmp/a.out && /tmp/a.out"
	elseif &filetype == "cpp"
		exec "te clang++ -Wall -Weffc++ -Wextra -O3 -pedantic -std=c++11 % -o /tmp/a.out && /tmp/a.out"
	elseif &filetype == "python"
		exec "te python3 %"
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
	endif
endfunction

"==========================================================================================
"
"                                 Templates
"
"==========================================================================================
autocmd BufNewFile *.py :call PythonTemplate()
autocmd BufNewFile *.cpp :call CPPTemplate()
autocmd BufNewFile *.sh :call ShTemplate()

"==========================================================================================
"
"                                 Keymaps
"
"==========================================================================================

let mapleader=";"
let g:mapleader=";"
map <C-[> <Esc>
imap <C-l> <delete>
"nnoremap <leader>fu :CtrlPFunky<CR>
noremap <leader><C-P> :CtrlPFunky<CR>
" next buffer
nnoremap <leader>n :bn<CR>
" previous buffer
nnoremap <leader>p :bp<CR>
" close buffer
nnoremap <leader>c :bd<CR>
nnoremap <leader>w :w<CR>
autocmd FileType c,cs,cpp,sh,ruby,python,scheme nnoremap <leader>r :call CompileAndRun()<CR>
nnoremap <leader>td :TaskList<CR>
