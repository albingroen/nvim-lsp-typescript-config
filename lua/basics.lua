vim.api.nvim_exec(
[[
" Set leader to the spacebar
let mapleader = "\<Space>"

" Better code indentation
filetype plugin indent on

" Show line numbers
set number

" Do not wrap lines
set nowrap

" Convert tabs to spaces
set expandtab

" Show results while searching
set incsearch

" Tabs results in 2 spaces
set tabstop=2

" Highlight current line
set cursorline

" Ignore case when searching
set ignorecase

" Do not highlight search results
set nohlsearch

" Do not use swapfiles
set noswapfile

" Move cursor on horizontal split
set splitbelow

" Move cursor on vertical split
set splitright

" Start scrolling when 3 rows from top or bottom
set scrolloff=3

" No system sounds on errors
set noerrorbells

" Indentation uses 2 spaces
set shiftwidth=2

" Line numbers take up more space
set numberwidth=4

" Move 2 spaces when pressing tab
set softtabstop=2

" Enable terminal colors
set termguicolors

" Enables line at column 80
set colorcolumn=80

" Line numbers are relative from the current position
set relativenumber

" Enable left column for errors, warnings & information
set signcolumn=yes

" Don't show current mode in statusline
set noshowmode

" Always show tabline
set showtabline=2

" Split vertically using just "vs"
nnoremap vs :vs<CR>

" Split horizontally using just "sp"
nnoremap sp :sp<CR>

" Move one pane right using "ctrl+l"
nnoremap <C-L> <C-W><C-L>

" Move one pane left using "ctrl+h"
nnoremap <C-H> <C-W><C-H>

" Move one pane up using "ctrl+k"
nnoremap <C-K> <C-W><C-K>

" Move one pane down using "ctrl+j"
nnoremap <C-J> <C-W><C-J>

" Create a new tab using "tn"
nnoremap tn :tabnew<CR>

" Move one tab right using "tk"
nnoremap tk :tabnext<CR>

" Move one tab right using "tj"
nnoremap tj :tabprev<CR>

" Only show current tab "to"
nnoremap to :tabo<CR>

" Open explorer using "ctrl+n"
noremap <silent> <C-n> :call ToggleNetrw()<CR>

" Open
nnoremap <C-s> :%s/

" Explorer is closed by default
let g:NetrwIsOpen=0

" Disable top information
let g:netrw_banner = 0

" Use nested tree style explorer
let g:netrw_liststyle = 3

" Explorer takes up 25% of screen
let g:netrw_winsize = 25

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore!
    endif
endfunction
]],
true
)
