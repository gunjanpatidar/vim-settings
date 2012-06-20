"
" Gunjan's vim settings
"
" Plugins:
" matchit - Match HTML tags using %

" Use UTF-8 as the default buffer encoding
set enc=utf-8

" Turn syntax highlighting on
syntax on

" Remember up to 100 'colon' commmands and search patterns
set history=100

" Show line numbers
set number


""
"" INDENTATION
""

" Set proper indentation width
set tabstop=4
set shiftwidth=4

" Round indent to multiple of 'shiftwidth' for > and < commands
set shiftround

" Use spaces for indentation 
set expandtab

" Allow backspacing over everything
set backspace=indent,eol,start


""
"" RULER
""

" Show nice info in ruler
set ruler
set laststatus=2

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd



""
"" UTILITY
""

" Write with sudo ":w!!"
cnoremap w!! w !sudo tee % >/dev/null

" Use menu to show command-line completion (in 'full' case)
set wildmenu

" Set command-line completion mode:
"   - on first <Tab>, when more than one match, list all matches and complete
"     the longest common  string
"   - on second <Tab>, complete the next full match and show menu
set wildmode=list:longest,full

" Ignore case when searching
set ic

" If searched string contains uppercase make search case sensitive
set scs


""
"" SHORTCUTS
""

" Delete/Copy current word
" caw, yaw
" caW, yaW

" Delete/Copy between enclosures
" yi{, yi(, yi[, yi", yi'
" di{, di(, di[, di", di'







filetype plugin on
filetype indent on




" Colored column (to see line size violations)
set colorcolumn=80
highlight ColorColumn ctermbg=238

" Source .vimrc after saving .vimrc
autocmd bufwritepost .vimrc source $MYVIMRC

" Don't highlight results of a search
set nohlsearch

" Jump 5 lines when running out of the screen
set scrolljump=1

" Indicate jump out of the screen when 3 lines before end of the screen
set scrolloff=3

" page down with <Space>
nmap <Space> <PageDown>

" page down with <Space>
" nmap <Space> <PageUp>

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv 

" Highlight current line in insert mode.
" autocmd InsertLeave * se nocul
"autocmd InsertEnter * se cul 


highlight Pmenu ctermbg=238 gui=bold
highlight PmenuSel ctermbg=001 gui=bold
