set nocompatible
filetype off  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'The-NERD-tree'
Plugin 'UltiSnips'
Plugin 'Yggdroot/indentLine'
Plugin 'SuperTab'
Plugin 'delimitMate.vim'
Plugin 'ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'szw/vim-ctrlspace'
Plugin 'airblade/vim-gitgutter'
Plugin 'adragomir/javacomplete'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:UltiSnipsSnippetDirectories=["UltiSnips"]
" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

let delimitMate_expand_cr = 1

nnoremap <C-T> :NERDTreeToggle<CR>

" Use <leader>t to open ctrlp
nnoremap <C-P> :CtrlP <CR>
" Ignore these directories
set wildignore+=*/build/**,*.class,*.zip,*.bin,*/target/**

let g:ctrlp_max_files=0

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1

filetype plugin indent on
filetype plugin on

" custom settings
set hidden
set nocompatible
set undolevels=1000
set history=50
set encoding=utf8
set backspace=indent,eol,start
set nobackup
set nowritebackup
set noswapfile
set ttimeout
set timeoutlen=50
set nomodeline
set selection=inclusive
set incsearch
set ignorecase smartcase
set hlsearch
set wrapscan
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
set number
set cc=120
set noerrorbells
set visualbell
set encoding=utf-8 nobomb
set t_Co=256
set title

" file types
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
autocmd BufNewFile,BufRead *.hbs setfiletype handlebars syntax=html
autocmd BufNewFile,BufRead *.coffee setfiletype coffee syntax=ruby
autocmd BufNewFile,BufRead *.csv setfiletype csv syntax=csv
autocmd BufNewFile,BufRead *.hql setfiletype hive
autocmd BufNewFile,BufRead *.gradle setfiletype groovy
autocmd BufNewFile,BufRead *.md setfiletype=markdown

 " color settings
syntax enable
color monokai
hi Search cterm=NONE ctermfg=black ctermbg=yellow

" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#displayed_head_limit = 20


autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java map <leader>b :call javacomplete#GoToDefinition()<CR>

nmap <F8> :TagbarToggle<CR>

let g:EclimCompletionMethod = 'omnifunc'
