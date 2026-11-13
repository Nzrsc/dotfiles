set nocompatible

filetype plugin indent on
syntax enable

set relativenumber
set termguicolors
set background=dark

colorscheme onedark

set number
set cursorline
set signcolumn=yes
set laststatus=2

augroup hlsl_filetype
    autocmd!
    autocmd BufRead,BufNewFile *.hlsl setfiletype hlsl
augroup END

set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20
" overwrite for gnome terminal
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[4 q"
set ruler
set colorcolumn=80
set clipboard=unnamedplus

" 4 space indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Show spaces as .
set list
set lcs+=space:·


"LSP setup
call plug#begin('~/.vim/plugged')

Plug 'prabirshrestha/vim-lsp'

call plug#end()

if executable('clangd')
    augroup lsp_clangd
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'clangd',
            \ 'cmd': {server_info->['clangd', '--background-index']},
            \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp'],
            \ })
        autocmd FileType c setlocal omnifunc=lsp#complete
    augroup end
endif

" disable suggestion
" let g:coc_suggest_disable = 1
" autocmd User CocNvimInit call coc#config('suggest.autoTrigger', 'none')

augroup glsl_live
  autocmd!
  " when you pause (even mid-insert), quietly save if there are changes
  autocmd BufRead,BufNewFile *.glsl setlocal updatetime=1000
  autocmd CursorHold,CursorHoldI *.glsl silent! update
augroup END
