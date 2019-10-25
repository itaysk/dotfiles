" Use system clipboard for yanking
set clipboard=unnamed

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'chase/vim-ansible-yaml', { 'for': 'yaml' }
Plug 'vim-airline/vim-airline'
call plug#end()
