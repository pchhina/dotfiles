call plug#begin('~/.local/share/nvim/plugged')
Plug 'jalvesaq/Nvim-R'
Plug 'roxma/nvim-completion-manager'
Plug 'gaalcaras/ncm-R'
Plug 'sirver/UltiSnips'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
call plug#end()

set nocompatible
set number relativenumber

:set tabstop=4 shiftwidth=4 expandtab

colorscheme base16-tomorrow-night
set termguicolors

syntax enable
"filetype plugin indent on

" TAG JUMPING:

" Create the 'tags' file (need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
"  - Use ^] to jump to the tag under the cursor
"  - Use g^] for ambigous tags
"  - Use ^t to jump back up the tag stack

"  This does not work out of the box for R
"  Following code is added for that
let g:tagbar_type_r = {
    \ 'ctagstype' : 'r',
    \ 'kinds'     : [
        \ 'f:Functions',
        \ 'g:GlobalVariables',
        \ 'v:FunctionVariables',
    \ ]
\ }

"N-vim-R options
let maplocalleader = ","
autocmd VimResized * let R_rconsole_width = winwidth(0) / 2
let R_nvimpager = "no"

" keybinding Nvim-R
nmap <LocalLeader>m <Plug>RSendParagraph
nmap <LocalLeader>f <Plug>RSendFile
nmap <LocalLeader>s <Plug>RObjectStr

" Use tmux for terminal emulator instead of Nvim built in emulator
let R_in_buffer = 0

" keybindings non- Nvim-R
" FZF buffers
:map <C-j> :Buffers<CR>

" FZF Files
:map <C-f> :Files<CR>

