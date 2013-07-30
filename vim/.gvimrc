"set window
winpos 235 235
set lines=40 columns=115

set guifont=Droid\ Sans\ Mono\ 13
au BufRead,BufNewFile *.go set filetype=go
set background=dark
colorscheme solarized
set number
"colo desert 

"autodent
set autoindent
set tabstop=4
set shiftwidth=4
set mouse=a

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

nmap <F2> :NERDTreeToggle <CR>
nmap <F3> :TlistToggle <CR>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" miniBufExpor edit mulit files
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0
" window manager
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"

function! NERDTree_Start()
      exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
      return 1
endfunction

nmap wm :WMToggle<CR>
