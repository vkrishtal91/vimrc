runtime! debian.vim

""""""""""""""""""""""""""
"  PLUGINS               "
""""""""""""""""""""""""""
call plug#begin()
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/vim-easy-align'
    Plug 'tpope/vim-surround'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdcommenter'
    Plug 'kien/ctrlp.vim'
    Plug 'morhetz/gruvbox'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'easymotion/vim-easymotion'
    Plug 'rust-lang/rust.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

""""""""""""""""""""""""""'
" BASE CONFIGURATIONS     "
"""""""""""""""""""""""""""
syntax on
filetype plugin on
filetype indent on
colorscheme gruvbox
  
set background=dark
set ignorecase		 
set smartcase	  
set incsearch   
set autowrite   
set hidden	  
set mouse=a 
set hlsearch
set encoding=utf8
set noerrorbells
set novisualbell
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set relativenumber
set foldcolumn=1
set cursorline
set ttimeout
set ttimeoutlen=1
set ttyfast
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

let mapleader=" "
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR.= "\e[3 q"

""""""""""""""""""""""""""'
"  PLUGIN CONFIGURATIONS  "
"""""""""""""""""""""""""""

" NERDTREE
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'cs': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


"""""""""""""""""""""""""""
" IMPORTS                 "
""""""""""""'""""""""""""""
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"""""""""""""""""""""""""""
" TRUE COLORS             "
""""""""""""'""""""""""""""
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
