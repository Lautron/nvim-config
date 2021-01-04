set number 
set mouse=a 
set numberwidth=2
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
call plug#begin('~/.nvim/plugged')
Plug 'arcticicestudio/nord-vim' 
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mattn/emmet-vim'
call plug#end()
colorscheme nord
let mapleader = " "
let NERDTreeQuitOnOpen=1

nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>rp :w <bar> :! python %<CR>
nmap <Leader>y "+y<CR>
nmap <Leader>p "+p<CR>

:nmap <Leader>cs :!sassc % %:r.css<CR>
autocmd BufWritePost,FileWritePost *.scss :silent :!sassc % %:r.css
