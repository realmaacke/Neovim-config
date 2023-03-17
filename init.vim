:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

:set showcmd
:let mapleader = ","

call plug#begin()

" Airline imports
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NerdTree
Plug 'preservim/nerdtree'

" Editor improvements (binds shortcuts)
Plug 'https://github.com/tpope/vim-surround' " cs & ds & ysiw & yssb & yss
Plug 'https://github.com/tpope/vim-commentary' "gcc & gc


" Nvim UI
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation

Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion

"auto coomplete pairs of ex parentheses
Plug 'tmsvg/pear-tree'

call plug#end()

" Airline cfg
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'


" NerdTree cfg
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeFocus<CR>


nmap <F8> :TagbarToggle<CR>

"auto completion using tab
" to install lang support for auto completion do :CocInstall coc-language
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
