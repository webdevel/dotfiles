" syntax highlighting
syntax on

" set more undo levels as default is 100
set undolevels=128

" set tabs to spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" copy indent from current line when starting a new line
set autoindent

" command-line auto-completion is enhanced 
set wildmenu

" show line numbers
set number

" highlight search terms
set hlsearch

" normal mode map ctrl+h no highlight search terms, turns back on when searching
nnoremap <C-h> :nohlsearch<CR>

" unix style line endings \n
set fileformat=unix

" set backspace/delete to operate on indents, newlines
set backspace=indent,eol,start

" map Q to no-operation to disable ex mode
nnoremap Q <nop>

" switch to an existing tab if the buffer is open, or creating a new one if not
set switchbuf=usetab,newtab

" set whitespace to visible characters
set listchars=eol:¶,tab:»›,trail:·,extends:▷,precedes:◁,space:·,nbsp:·

" toggle visibility of whitespace characters by control+w in normal mode
nnoremap <C-W> :set invlist list?<CR>

"" set .md to markdown file extension
"autocmd BufNewFile,BufReadPost *.md set filetype=markdown
"
"" enable fenced code block syntax highlighting
"let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'java', 'php', 'c']

