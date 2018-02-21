call plug#begin('~/.local/share/nvim/plugged')
Plug 'jalvesaq/Nvim-R'
Plug 'roxma/nvim-completion-manager'
Plug 'gaalcaras/ncm-R'
Plug 'sirver/UltiSnips'
Plug 'w0rp/ale'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/limelight.vim'
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
let R_max_help_w = 80
let R_min_editor_width = 80
let R_rconsole_width = 1000 

" keybinding Nvim-R
nmap <LocalLeader>m <Plug>RSendParagraph
nmap <LocalLeader>f <Plug>RSendFile
nmap <LocalLeader>s <Plug>RObjectStr

" R output is highlighted with current colorscheme
let g:rout_follow_colorscheme = 1

" R commands in R output are highlighted
let g:Rout_more_colors = 1

" More natural split opening
set splitbelow
set splitright



