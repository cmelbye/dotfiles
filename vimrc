execute pathogen#infect()

color twilight256

:syntax on
:autocmd FileType *      set formatoptions=tcql nocindent comments&
:autocmd FileType c,cpp  set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://

:set autoindent
:set autowrite
:ab #d #define
:ab #i #include
:ab #b /********************************************************
:ab #e ********************************************************/
:ab #l /*------------------------------------------------------*/
:set smartindent
:set comments=sl:/*,mb:\ *,elx:\ */
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set expandtab
:set notextmode
:set notextauto
:set hlsearch
:set incsearch
:set textwidth=80

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

:nmap \e :NERDTreeToggle<CR>

