"  Vim Configuration
"
"  author: Max(max.c.lv@gmail.com)
"  website: http://madeye.me
"  date: 2013-2-5
"  Thanks to: feelinglucky<i.feelinglucky@gmail.com>
"
"  This configuration works well for  C, C++, CUDA and python

set nocompatible               " be iMproved
filetype off                   " required!

set shell=/bin/bash
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-repeat'
Plugin 'svermeulen/vim-easyclip'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'Raimondi/delimitMate'
Plugin 'tomtom/tcomment_vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'
Plugin 'wavded/vim-stylus'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'dandorman/vim-colors'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'derekwyatt/vim-scala'
Plugin 'othree/html5.vim.git'
Plugin 'gre/play2vim'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'petRUShka/vim-opencl'
Plugin 'junegunn/vim-easy-align'
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'JavaScript-Indent'
Plugin 'cudajinja.vim'
Plugin 'taglist.vim'
Plugin 'ctags.vim'
Plugin 'c.vim'

call vundle#end()            " required"

filetype plugin indent on     " required!

" custom settings
set linebreak
set textwidth=120
set nocompatible
set history=400
set ruler
set number
set hlsearch
set noincsearch
set expandtab
set noerrorbells
set novisualbell
set t_vb= "close visual bell
set foldmethod=marker
set tabstop=4
set shiftwidth=4
set nobackup
set nowritebackup
set smarttab
set smartindent
set autoindent
set cindent
set wrap
set autoread
set cmdheight=1
set showtabline=2
set tabpagemax=20
set laststatus=2
set backspace=indent,eol,start

" highlight trailing spaces
let c_space_errors = 1
let java_space_errors = 1
let python_space_errors = 1

" YouCompleteMe
let g:ycm_key_list_select_completion=['<Tab>']
let g:ycm_key_list_previous_completion=['<S-Tab>']
let g:ycm_key_invoke_completion=''
let g:ycm_confirm_extra_conf=0

" EasyClip
let g:EasyClipShareYanks=1

" make sure sytanx on
if exists("syntax_on")
    syntax reset
else
    syntax on
endif

" status line
function! CurrectDir()
    let curdir = substitute(getcwd(), "", "", "g")
    return curdir
endfunction
set statusline=\ [File]\ %F%m%r%h\ %w\ \ [PWD]\ %r%{CurrectDir()}%h\ \ %=[Line]\ %l,%c\ %=\ %P

" show Chinese characters correctly
if has("multi_byte")
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk

    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif

    if has("win32")
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim
        language messages zh_CN.utf-8
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

" change fonts for GUI
if has("win32")
    set guifont=Courier_New:h12:cANSI
    set guifontwide=YouYuan:h12:cGB2312
    au GUIEnter * simalt ~x
elseif has("mac") || has("macunix")
    set guifont=Courier:h14
    set guifontwide=Hei_Regular:h14
else
    set guifont=
    set guifontwide=
endif

" autocmd reset
augroup vimrcEx
    au!
    autocmd FileType text setlocal textwidth=78
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
augroup END

autocmd BufWritePre *.c :%s/\s\+$//e

" restore position
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" cuda settings
au BufNewFile,BufRead *.cu set filetype=cuda

" color scheme
set t_Co=256
let g:lucius_style='dark'
colorscheme lucius

" cscope settings
if has('cscope')
    set cscopetag cscopeverbose
    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif
    cnoreabbrev csa cs add
    cnoreabbrev csf cs find
    cnoreabbrev csk cs kill
    cnoreabbrev csr cs reset
    cnoreabbrev css cs show
    cnoreabbrev csh cs help
endif

" CtrP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" key stock
map tn :tabnext<cr>
map tp :tabprevious<cr>

map tc :tabnew .<cr>
map tt :NERDTree <cr>

map te :tabedit
map td :tabclose<cr>
map cs :!php -l %<cr>
map bf :BufExplorer<cr>

imap jj <ESC>

"copy and paste between vim instances
vmap <silent> ,y y:new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
nmap <silent> ,y :new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
map <silent> ,p :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>p
map <silent> ,P :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>P

" Removes trailing spaces
function TrimWhiteSpace()
    %s/\s*$//
    ''
    :endfunction

map <c-p> :call TrimWhiteSpace()<CR>
map! <c-p> :call TrimWhiteSpace()<CR>

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" " These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" " Without these mappings, `n` & `N` works fine. (These mappings just provide
" " different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign))

" Perforce-related commands
function! P4(command)
    execute "!p4 " . a:command . ' %'
    call feedkeys("\<CR>")
    edit
    call feedkeys("\<CR>")
endfunction
nmap gpa :call P4('add')<CR><CR>
nmap gpe :call P4('edit')<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>"
