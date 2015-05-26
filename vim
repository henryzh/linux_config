set autoindent
"auto read file as soon as the content on disk changes
set autoread
set showcmd
"set showmatch "Highlight matching brace 
set smartindent
set ruler "Show row and column ruler information
"always display state bar
set laststatus=2
"execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on 
"ignore case when searching string
set ignorecase

set background=dark
colorscheme solarized
"for a.vim
let g:alternateExtensions_CPP = "inc,h,H,HPP,hpp,hh"

"no beep
set noerrorbells
set vb t_vb=

set number
set incsearch

""Indentation without hard tabs
"set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

"Tlist Configuration
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
map <silent> <F2> :TlistToggle<cr> 
map <silent> <F3> :A<cr> 
""""""""""""""""""""""""""""""""""


if has("cscope")
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>  
"
"""    if filereadable("cscope.out")
"""    "        cs add cscope.out  
"""    "                     " else add the database pointed to by environment
"""    variable 
"""    "    elseif $CSCOPE_DB != ""
"""        cs add $CSCOPE_DB
"""        "    endif
endif
""if the current buffer has never been saved, it will have no name,
"" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif 
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
"Recommend an imap for the same functionality so one can hit ctrl-s without
"having to make sure one isn't in insert mode
inoremap <C-s> <Esc>: Update<CR>
"noremap <C-S> : Update<CR>
"inoremap <C-S> : Update<CR>

""folding settings
"set foldmethod=indent   "fold based on indent
"set foldnestmax=10      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
"set foldlevel=1         "this is just what i use


""""
"configure omnicppcomplete
""set completeopt=menu
"":inoremap ( ()<ESC>i
"":inoremap ) <c-r>=ClosePair(')')<CR>
"":inoremap { {}<ESC>i
"":inoremap } <c-r>=ClosePair('}')<CR>
"":inoremap [ []<ESC>i
"":inoremap ] <c-r>=ClosePair(']')<CR>
"":inoremap < <><ESC>i
"":inoremap > <c-r>=ClosePair('>')<CR>
"":inoremap " ""<ESC>i
"":inoremap ' ''<ESC>i
""
""function ClosePair(char)
""    if getline('.')[col('.') - 1] == a:char
""        return "<Right>"
""    else
""    return a:char
""endif
""endf
