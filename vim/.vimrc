set nocompatible              " be iMproved
filetype off                  " required!

" my customize
syntax on
"set window
"winpos 235 235
"set lines=40 columns=115

set guifont=Menlo:h16
"set guifont=Meslo\ LG\ M\ 9 
set background=light
"colorscheme solarized 
set number

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neocomplete.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"autodent
set autoindent
set tabstop=4
set shiftwidth=4
set mouse=a
set fileencodings=utf-8

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"neocomplete
"let g:neocomplcache_enable_at_startup=1
"let g:nerdtree_tabs_open_on_console_startup=0
"let g:nerdtree_tabs_open_on_gui_startup=0

" author info
map <F4> ms:call TitleDet()<cr>'s
function AddTitle()
        call append(0,"/*******************************************************************************")
        "call append(1,"#")
        call append(1," * Author: douzifly")
        "call append(3,"#")
        call append(2," * Email : douzifly@gmail.com")
        "call append(5,"#")
        call append(3," * Last modified : ".strftime("%Y-%m-%d %H:%M"))
        "call append(7,"#")
        call append(4," * Filename : ".expand("%:t"))
        "call append(9,"#")
        call append(5," * Description : ")
        "call append(11,"#")
        call append(6," * *****************************************************************************/")
        echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf

"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet()
        call AddTitle()
endfunction
"colorscheme solarized
"
"

"shortcuts
" nerdtree
nmap <F2> :NERDTreeToggle <CR>

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 0

let g:go_bin_path = "/User/douzifly/dev/go/bin"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
