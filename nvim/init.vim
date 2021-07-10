" Plug
call plug#begin('~/.vim/pack/nvim/start')

" For agnostic navigation
Plug 'scrooloose/nerdtree'
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf'
Plug 'jremmen/vim-ripgrep'

" For git project
Plug 'tpope/vim-fugitive'
Plug 'sodapopcan/vim-twiggy'

" For md
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'https://gitlab.com/gi1242/vim-emoji-ab'

" For golang development
Plug 'fatih/vim-go'
Plug 'buoto/gotests-vim'
Plug 'AndrewRadev/splitjoin.vim'

call plug#end()

" need wl-copy in wayland
set clipboard=unnamedplus

" for FZF
map <silent> <C-N> :NERDTreeFind<CR>
nmap <C-P> :FZF<CR>

" vim standard config
set number
set ts=4
set sw=4
set nowrap
set foldmethod=syntax
set foldlevel=2
let mapleader = ","

" personalized shortcut
nmap cd :cd %:p:h<CR>

" Git
let g:twiggy_group_locals_by_slash = 0
let g:twiggy_local_branch_sort = 'mru'
let g:twiggy_remote_branch_sort = 'date'


" markdown
au FileType html,php,markdown,mmd,text,mail,gitcommit
    \ runtime macros/emoji-ab.vim


" Go development
let g:go_metalinter_command = 'golangci-lint'
nmap <Leader>t <Plug>(go-test-func)
nmap <Leader>i <Plug>(go-imports)
nmap <Leader>im <Plug>(go-implements)
nmap <Leader>a <Plug>(go-alternate-edit)
nmap <Leader>rn <Plug>(go-rename)
