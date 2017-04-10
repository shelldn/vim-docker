set nocompatible
filetype off

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'marijnh/tern_for_vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'alvan/vim-closetag'
Plugin 'gregsexton/matchtag'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'nono/vim-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'Chiel92/vim-autoformat'
Plugin 'mattn/emmet-vim'
Plugin 'mxw/vim-jsx'
Plugin 'maksimr/vim-jsbeautify'

call vundle#end()

syntax on
filetype plugin indent on

set t_Co=256
set backupcopy=yes
set noswapfile
" set directory=~/.vim/tmp//

" Gruvbox
" colorscheme gruvbox
set background=dark
" highlight Normal ctermbg=NONE
" highlight nonText ctermbg=NONE

" Tabs
set expandtab
set tabstop=2
set shiftwidth=2

" Line numbers
set number
set numberwidth=3

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltisnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|tmp'
let g:ctrlp_root_markers = ['.gitignore']
map <C-M> :CtrlPMRUFiles<CR>

" Tern
map <F2> :TernRename<CR>

" JS Beautifier
map <C-F> :call JsBeautify()<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>
let NERDTreeShowHidden = 1

" UltiSnips
let g:UltiSnipsExpandTrigger = '<c-f>'

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" JSX
let g:jsx_ext_required = 0

" Emmet
" imap <expr> <Tab> emmet#expandAbbrIntelligent("\<Tab>")

" Closetag
let g:closetag_filenames = "*.html,*.hbs,*.js"
