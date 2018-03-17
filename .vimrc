" Use system clipboard for yanking
set clipboard=unnamed

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'chase/vim-ansible-yaml', { 'for': 'yaml' }
Plug 'vim-airline/vim-airline'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()