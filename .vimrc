call system('module add ripgrep/13')
set number
set relativenumber
set scrolloff=10
colorscheme colorized
"color
syntax on
se t_Co=256
set nohlsearch
set incsearch
"indenting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shortmess-=S
set omnifunc=tagcomplete#Complete
command! W w
command! F f
command! Q q

let &t_TI = ""
let &t_TE = ""

nnoremap gb :Ex<CR>

noremap Q !!sh<CR>
" move tabs 
nnoremap <C-S-PageUp> :tabm +1<CR>
nnoremap <C-S-PageDown> :tabm -1<CR>
" open the tags definition to the new tab
nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
" fzf
nnoremap <Leader>pf :Files %:p:h<CR>
nnoremap <Leader>sf :Files<CR>
nnoremap <Leader>bf :Buffers<CR>
" git blame
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
" open a terminal on the current dir
map <Leader>tt :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>
map <Leader>tv :rightb vert term<CR>
" close a buffer
nnoremap <Leader>q :q<CR>
nnoremap <Leader>f :f<CR>
" enable the long undos
if has('persistent_undo')         
  set undodir=$HOME/.vim/undo     
    set undofile                   
endif
packadd cfilter

call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'zivyangll/git-blame.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'junegunn/seoul256.vim'
call plug#end()

