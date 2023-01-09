"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Allow mouse interaction 
set nu smartindent 
set mouse=a

" Avoid using old vi
set nocompatible
" Avoids wrapping long sentences
set nowrap 
" Enable syntax processing
syntax enable 

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding 
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldmethod=syntax   " mode
set foldnestmax=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox
set background=dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tmux
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" allows cursor change in tmux mode
nnoremap <leader>b :buffers<CR>:buffer<Space>

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


