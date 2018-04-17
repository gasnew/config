execute pathogen#infect()
syntax on
filetype plugin indent on

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['eslint']

" ALE
let g:ale_javascript_eslint_use_global = 1
let g:ale_linters = {
			\   'javascript': ['eslint'],
			\}
let g:ale_fixers = {
	\   'javascript': ['eslint'],
	\}

" EasyMotion
let g:EasyMotion_leader_key = 't'
map <Leader> <Plug>(easymotion-prefix)

" NERDCommenter
let g:NERDDefaultAlign = 'left'
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
" let g:NERDCompactSexyComs = 1

" Commentarino
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Tabaroonies
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 et
autocmd Filetype python setlocal ts=2 sts=2 sw=2 et
autocmd Filetype json setlocal ts=2 sts=2 sw=2 et
autocmd Filetype yml setlocal ts=2 sts=2 sw=2 et

" Split stuff
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Add full file path to your existing statusline
set laststatus=2
set statusline+=%F

" Line numbers because
set number

" Adding blank lines
nmap <C-Enter> O<Esc>j

" Silly startup commands
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd l
