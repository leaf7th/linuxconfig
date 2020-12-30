" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Plug list
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'preservim/tagbar'
Plug 'wakatime/vim-wakatime'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'morhetz/gruvbox'
Plug 'Chiel92/vim-autoformat'
call plug#end()

" YCM
set completeopt-=preview

" Colorscheme
set background=dark
colorscheme gruvbox 

" Nerdtree
""Open a NERDTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Map
map <F2> :NERDTreeToggle<CR>
" Right side
let g:NERDTreeWinPos = "right"
" Autoclose when all tabs close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Close tips
let NERDTreeMinimalUI=1


"Nercommenter
"Map
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

"Tagbar
map <F3> :TagbarToggle<CR>
let g:tagbar_left=1
let g:tagbar_width=24
let g:tagbar_autofocus = 1

" Powerline
set laststatus=2
set showtabline=2
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256


" Custom Vim
" Tab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Leader
let mapleader = "\<space>"
nnoremap <Leader>a :echo "Hey there space"<CR>

" Num
set number
" switch between rn and n
nnoremap <Leader>n :exec &nu+&rnu==2 ? "se rnu!" : "se nu rnu"<CR>


" C++ compile
filetype on
filetype plugin on
