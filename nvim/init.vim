" Plug
call plug#begin('~/.vim/pack/nvim/start')

" File Manager
Plug 'https://github.com/lambdalisue/fern.vim'
Plug 'https://github.com/lambdalisue/fern-renderer-nerdfont.vim'
Plug 'https://github.com/lambdalisue/nerdfont.vim'
Plug 'junegunn/fzf'
Plug 'jremmen/vim-ripgrep'
" Plug 'scrooloose/nerdtree'
" Plug 'francoiscabrol/ranger.vim'

Plug 'https://github.com/lambdalisue/suda.vim'

" For beter highlight
Plug 'jaxbot/semantic-highlight.vim'

" For git project
Plug 'tpope/vim-fugitive'

" Color
Plug 'dracula/vim', { 'as': 'dracula' }

" For md
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }
Plug 'https://gitlab.com/gi1242/vim-emoji-ab'

" For golang development
" Plug 'https://github.com/Shougo/deoplete.nvim'
" Plug 'https://github.com/SirVer/ultisnips'
Plug 'tomtom/quickfixsigns_vim'
Plug 'fatih/vim-go'
Plug 'buoto/gotests-vim'
Plug 'https://github.com/AndrewRadev/splitjoin.vim'

" For react-native development
Plug 'pangloss/vim-javascript'
" Plug 'dense-analysis/ale'
" Plug 'prettier/vim-prettier', { 'do': 'npm install' }
" Plug 'ruanyl/vim-fixmyjs'
" Plug 'maxmellon/vim-jsx-pretty'
"
"
"Dart/Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

Plug 'https://github.com/nicwest/vim-http'

Plug 'https://github.com/sukima/xmledit'

call plug#end()

" vim standard config
set number
set ts=4
set sw=4
set nowrap
set foldmethod=syntax
set foldlevel=2
let mapleader = ","
colorscheme dracula

" windowing
:tnoremap <Esc> <C-\><C-n>
:tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

" need wl-copy in wayland
set clipboard=unnamedplus

" markdown
au FileType html,php,markdown,mmd,text,mail,gitcommit
    \ runtime macros/emoji-ab.vim

nmap <Leader>cd :cd %:p:h<CR>

" Go development
" au FileType go call deoplete#enable()
" call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
let g:go_metalinter_command = 'golangci-lint'

nmap <Leader>t <Plug>(go-test-func)
nmap <Leader>ta <Plug>(go-test)
nmap <Leader>i <Plug>(go-imports)
nmap <Leader>im :GoImpl<CR>
nmap <Leader>il <Plug>(go-implements)
nmap <Leader>a <Plug>(go-alternate-edit)
nmap <Leader>rn <Plug>(go-rename)
nmap <Leader>co <Plug>(go-coverage)
nmap <Leader>cot <Plug>(go-coverage-toggle)
nmap <Leader>li <Plug>(go-metalinter)
nmap <Leader>gr <Plug>(go-referrers)
nmap <Leader>gc <Plug>(go-callers)
nmap <Leader>gg <Plug>(go-generate)
nmap <Leader>ie <Plug>(go-iferr)
nmap <C-P> :FZF<CR>

" .............................................................................
" lambdalisue/fern.vim
" .............................................................................

" Disable netrw.
let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

augroup my-fern-hijack
  autocmd!
  autocmd BufEnter * ++nested call s:hijack_directory()
augroup END

function! s:hijack_directory() abort
  let path = expand('%:p')
  if !isdirectory(path)
    return
  endif
  bwipeout %
  execute printf('Fern %s', fnameescape(path))
endfunction

" Custom settings and mappings.
let g:fern#renderer = "nerdfont"
" let g:fern#disable_default_mappings = 1

noremap <silent> <Leader>f :Fern . -drawer -reveal=% -toggle<CR><C-w>=

function! FernInit() abort
  set nonumber
  "nmap <buffer><expr>
  "      \ <Plug>(fern-my-open-expand-collapse)
  "      \ fern#smart#leaf(
  "      \   "\<Plug>(fern-action-open:select)",
  "      \   "\<Plug>(fern-action-expand)",
  "      \   "\<Plug>(fern-action-collapse)",
  "      \ )
  "nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
  "nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  "nmap <buffer> n <Plug>(fern-action-new-path)
  "nmap <buffer> d <Plug>(fern-action-remove)
  "nmap <buffer> m <Plug>(fern-action-move)
  "nmap <buffer> M <Plug>(fern-action-rename)
  "nmap <buffer> h <Plug>(fern-action-hidden-toggle)
  "nmap <buffer> r <Plug>(fern-action-reload)
  "nmap <buffer> <space> <Plug>(fern-action-mark-toggle)
  "nmap <buffer> b <Plug>(fern-action-open:split)
  "nmap <buffer> v <Plug>(fern-action-open:vsplit)
  "nmap <buffer><nowait> < <Plug>(fern-action-leave)
  "nmap <buffer><nowait> > <Plug>(fern-action-enter)
endfunction

augroup FernGroup
  autocmd!
  autocmd FileType fern call FernInit()
augroup END

autocmd TermOpen * setlocal nonumber norelativenumber

set guifont=FiraCode\ Nerd\ Font\ Mono:h12



" xmllint
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null


"set nofixendofline

"let g:ale_fixers = {}
"let g:ale_fixers.javascript = ['eslint']
"let g:ale_fix_on_save = 1
