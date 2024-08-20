set number
set relativenumber
set autoindent
set showcmd
set mouse=""
set hlsearch
set tabstop=4
set shiftwidth=4
set nowrap
set textwidth=0
set scrolloff=5
set formatoptions="blj"
set expandtab
colorscheme sorbet
syntax enable
nmap - :e %:p:h<CR>
nmap <C-s> :%s/\s\+$//<CR>
autocmd BufEnter * source ~/.basevimrc
autocmd BufWritePost * :%s/\s\+$//e
