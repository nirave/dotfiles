" This is the vim-plug, if not found, it will download
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

""""""""""""""""""""
" Install the plugins
""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" This is auto-completion
let g:plug_timeout = 600
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" This is the debugger
Plug 'puremourning/vimspector'
let g:vimspector_enable_mappings = 'HUMAN'

" This is the file tree
Plug 'preservim/nerdtree'

" My color scheme is solarized
" Eh, not that great, but will download so we can change
Plug 'altercation/vim-colors-solarized'
" To set, run :colorscheme solarized

" this is Tag list
" TO DO - I cannot find the vim-plug

" Commenting plugin
" Plug 'preservim/nerdcomenter'
Plug 'https://github.com/preservim/nerdcommenter'

" Git integration
Plug 'tpope/vim-fugitive'

" Get language cheatsheet easily
Plug 'dbeniamine/cheat.sh-vim'

call plug#end()

""""""""""""""""""""
" Personalize setups
""""""""""""""""""""
" Unsure why, but needed for nerd commentor
filetype plugin on

" Set line numbers
set number

" Allow the mouse
set mouse=a

" Set tabs to 4
set tabstop=4
set shiftwidth=4
set expandtab

au FileType c,cpp set tabstop=8 | set shiftwidth=8

" Get rid of that annoying pop-up for YouCompleteMe after running
let g:ycm_autoclose_preview_window_after_completion = 1

" Disable the C++ load question
let g:ycm_confirm_extra_conf = 0

" NerdTree open into new tab
let NERDTreeMapOpenInTab='<ENTER>'

""""""""""""""""
" Remaps
""""""""""""""""
" Remaps for NERDTree:
"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Remaps for YCM
nnoremap ,gf :YcmCompleter GoToDefinition<CR>
nnoremap ,gr :YcmCompleter GoToReferences<CR>
nnoremap ,gd :YcmCompleter GoToDeclaration<CR>

" Need to install using :PluginInstall in vim
" Need to run: python3 build.py --clang-completer in ycmd directory
