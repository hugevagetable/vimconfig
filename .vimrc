syntax on
set nu
set encoding=utf-8
set nocompatible " 设置vim为不兼容vi模式  
set ts=4
set autoindent

filetype off " required  
set rtp+=~/.vim/bundle/vundle

" 插件管理  
call vundle#begin()

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'

" 所有插件需要在下面这行之前
call vundle#end()

" Vundle托管插件示例：  
"   代码在github上,使用github帐号/项目名，例如：  
" 	Plugin 'tpope/vim-fugitive'  
"
"  代码在vimscript上，使用插件名称，插件名字可以在
"  http://vim-scripts.org/vim/scripts.html页面中查找，例如：  
" 	Plugin 'vimwiki'  
"
"  非github的插件，使用其git地址，例如：  
" 	Plugin 'git://git.wincent.com/command-t.git'  

filetype plugin indent on " 必须!加载vim自带和插件相应的语法和文件类型相关脚本 

" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall  	 - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后

" doxygen 设置
let g:DoxygenToolkit_authorName="mushaoqiu" 

" nerdtree 设置
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

