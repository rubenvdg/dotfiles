"Vim package manager, install with:
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'altercation/vim-colors-solarized'
    Plug 'nvie/vim-flake8'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-fugitive'
call plug#end()

" Jump to the next field
let g:UltiSnipsExpandTrigger="<tab>" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

"set color scheme to solarized
syntax on
let g:solarized_termcolors=16
let g:solarized_contrast="low"
set t_Co=16
set background=dark
colorscheme solarized

" Set maximum line length to 80, spell, and line number on
au BufRead,BufNewFile * setl spell tabstop=4 softtabstop=4 expandtab smarttab shiftwidth=4
au BufRead,BufNewFile *.{py} setl number tw=79
"au BufRead,BufNewFile * setl tw=80 spell number tabstop=4 softtabstop=0 expandtab smarttab shiftwidth=4

" Automatically remove trailing white spaces
autocmd BufWritePre *.py %s/\s\+$//e

"Practice to not use arrows
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

" disables error sounds
set visualbell

" Map capitals to lower case
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Mapping
map <F2> i<CR><ESC>

" Set Docstring guide to Google 
let g:ultisnips_python_style="google"

" Diff opt vertical
set diffopt=vertical
