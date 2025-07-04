" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Remap VIM 0 to first non-blank character
map 0 ^

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set backspace=indent,eol,start

" Use tabs instead of spaces
set noexpandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Highlight search results
set hlsearch

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Sets how many lines of history VIM has to remember
set history=500

" Enable relative line numbers
set relativenumber

" autoformat python
au FileType python setlocal formatprg=autopep8\ -

" run flake8 linting after every save of .py file
autocmd BufWritePost *.py call flake8#Flake8()

" Remember last cursor position and scroll offset when reopening files
augroup remember_cursor
    autocmd!
    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Set cursor shape for different modes
if exists('$TMUX')
    " Inside tmux, use special escape sequences
    let &t_SI = "\e[2 q"   " Block cursor in Insert mode
    let &t_SR = "\e[2 q"   " Block cursor in Replace mode
    let &t_EI = "\e[2 q"   " Block cursor in Normal and Visual mode
else
    " Outside tmux, standard terminal sequences
    let &t_SI = "\e[6 q"   " Vertical bar cursor in Insert mode
    let &t_SR = "\e[4 q"   " Underline cursor in Replace mode
    let &t_EI = "\e[2 q"   " Block cursor in Normal and Visual mode
endif


