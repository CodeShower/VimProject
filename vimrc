
"###################################################################################################################################"

"###################################################################################################################################"


filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'The-NERD-tree'
filetype plugin indent on




"###################################################################################################################################"
set nu
syntax on
set nocompatible 
set confirm " 當程式起衝突，就以明確文字來提示
set cursorline "顯示目前的游標位置
set t_Co=256
set autoindent
set cindent
colorscheme wombat256
set encoding=utf-8
set ruler
set fileencodings=ucs-bom,utf-8,big5,gbk,latin1 
setlocal omnifunc=javacomplete#Complete
set path+=/usr/share/include/glib/
set mouse=a
set showmatch
set smartindent



let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Process_File_Always=1



function UpdateCtags()
	  let curdir=getcwd()
while !filereadable("./tags")
	           cd ..
if getcwd() == "/"
	break
endif
endwhile
if filewritable("./tags")
 !ctags -R --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q
TlistUpdate
endif
execute ":cd " . curdir
endfunction
let g:SuperTabDefaultCompletionType="context"

nmap <F9> :call UpdateCtags()<CR>



map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>
nnoremap <silent> <F5> :NERDTree<CR>
set nocp
"filetype plugin on



