execute pathogen#infect()
execute pathogen#helptags()
"filetype off
"filetype plugin indent off
"set runtimepath+=/usr/local/opt/go/libexec/misc/vim
"filetype plugin indent on
"autocmd BufWritePre *.go Fmt

syntax on
set nocompatible
set backspace=2
set number
set noeb
"set nowrap
set modeline
set ls=2
"set clipboard=unnamedplus
"set background=dark
"let g:solarized_degrade=1
"let g:solarized_termcolors=256
set t_Co=256
set tabstop=4
set shiftwidth=4
set smartindent
set autoindent
set smarttab
set cindent
set expandtab
set nowrap
set dir=~/.vimswap//
set backupdir=~/.vimbackup//
colo solarized

" for vim-better-whitespace plugin
autocmd BufEnter * EnableStripWhitespaceOnSave

" language-specific settings
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2
autocmd Filetype python setlocak tabstop=2 shiftwidth=2

" syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:syntastic_cpp_checkers = ['gcc']
"let g:syntastic_cpp_compiler = 'gcc'
"let g:syntastic_cpp_compiler_options = '-std=c++11'

:nmap <C-n> :tabn <CR>
:nmap <C-p> :tabp <CR>
