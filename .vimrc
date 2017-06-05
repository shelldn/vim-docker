execute pathogen#infect()
syntax on
filetype plugin indent on

set encoding=utf-8
set t_Co=256
set backupcopy=yes
set noswapfile
" set directory=~/.vim/tmp//

" Tabs
set expandtab
set tabstop=2
set shiftwidth=2

" Line numbers
set number
set numberwidth=3

" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|tmp'
let g:ctrlp_root_markers = ['.gitignore']
map <C-M> :CtrlPMRUFiles<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>
let NERDTreeShowHidden = 1

" YouCompleteMe
let g:ycm_key_list_select_completion = ['<Down>']

" UltiSnips
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
