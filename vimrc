call pathogen#infect()
"=================================================================================
" Configs from Coming Home to Vim
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/#why-i-switched-to-textmate
"=================================================================================
" Ignore compatibility with vanilla VI (there was some good reason for
" this but I don't remember what it was)
set nocompatible
set modelines=0
" Always use utf-8 when saving files
set encoding=utf-8
set scrolloff=3
set number
" Automatically indent files that vim understands
set autoindent
" Always show which editing mode you're in
set showmode
" Show the current command characters @ screen bottom-right
set showcmd
set nocp
" Wildmenu bits for the gVim gui...not sure what they do
set wildmenu
set wildmode=list:longest
" If you're into self-mutilation, uncomment the next line.  It makes the
" screen blink whenever an old workstation would have beeped the piezo
" speaker...especially when you overscroll up or down.
" set visualbell
"set cursorline
set ttyfast
" Make sure the cursor position is always shown @ screen bottom-right
set ruler
" Make backspace do something more sensible than default
set backspace=indent,eol,start
set laststatus=2
" The next line is only useful if you have linenumbers turned on, and then
" only if you don't mind the line numbers being relative to the current
" line.
"set relativenumber
" Use an undo file so you can undo/redo changes even if Vim crashes or you
" open up the file on another workstation
"set undofile
" Use regular Perl style regexp instead of Vim's custom kind
nnoremap / /\v
vnoremap / /\v
"set gdedefault
" Highlight all matches when searching for text
set showmatch
" hit comma space to get rid of the highligting when you're done searching
nnoremap <tab> %
vnoremap <tab> %
" Wrap text at column 79 to avoid writing "too long" lines...because
" apparently widescreen hasn't really taken off...riiight.
set wrap
set textwidth=149
set formatoptions=qrn1
set colorcolumn=150
" Remap the blanking F1 key to escape so you don't constantly hit it when
" switching modes
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
	" Write files when vim loses focus (I think this only works in gVim)
	"au FocusLost * :wa


"Highlight syntax
syntax on

" Use a mouse to select text in the terminal
set mouse=a

colorscheme delek
"Automatically indent files
"set cindent
set gfn=Meslo\ LG\ S\ DZ\ 8


"Define Tab widths
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Syntax highlighting for Objective c
au BufRead,BufNewFile *.mm set filetype=objc

" Syntax Highlighting for golang files
au BufRead,BufNewFile *.go set filetype=go
au! Syntax go source $HOME/go/misc/vim/go.vim

filetype on
filetype plugin on

set ignorecase		"Ignore case when searching
set smartcase		"Search case-sensitively if the user enters uppercase letters
set incsearch		"Search incrementally
set hlsearch		"Highlight search things




set tags=tags;/
set tags+=~/.vim/tags/boost
"set tags+=~/.vim/tags/boost-filelist
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/stdlibcpp


" New Shortcuts!
"===============================================================================+
  " Set the Leader
    let mapleader = ","
    let g:mapleader = ","

	" Remove trailing whitespace with comma W
    nnoremap <leader><space> :noh<CR>
	nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
	"nnoremap <leader>a :Ack
	nnoremap <leader>ft Vatzf
	nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
	nnoremap <leader>v V`]
	nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
	inoremap jj <ESC>
	"nnoremap <leader>w <C-w>v<C-w>l

  " Make!
    map <f9> :make<CR> :!./a.out<CR>
    map <f7> :!clojure %<CR>

  " Close buffers properly
    
  " Color Scheme
    map <leader>de :colorscheme delek<CR>
    map <leader>na :colorscheme navajo<CR>

  " Git 
    map <leader>gC  :!git commit -a<CR>
    map <leader>gpa :!git push web;git push hub;git push tester;git push gitter<CR>
    map <leader>gpd :!git push origin development:master<CR>
    map <leader>gpo :!git push origin<CR>
    map <leader>gpw :!git push web<CR>
    map <leader>gph :!git push hub<CR>
    map <leader>gpH :!git push heroku<CR>
    map <leader>gpt :!git push tester<CR>
    map <leader>gpg :!git push gitter<CR>
    map <leader>gp3 :!git push box3<CR>


    set winaltkeys=no

  " Python
    map <leader>py :!python %<CR>
    map <leader>lint :!pylint %<CR>

  " Ruby
    map <leader>rb :!ruby %<CR>

  " Move a line of text using CTRL+[jk] or Comamnd+[jk] on mac
    nmap <C-down> mz:m+<cr>`z
    nmap <C-up> mz:m-2<cr>`z
    nmap <C-left> <<
    nmap <C-right> >>
    vmap <C-down> :m'>+<cr>`<my`>mzgv`yo`z
    vmap <C-right> :m'<-2<cr>`>my`<mzgv`yo`z

  "" Move around split windows
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l

  " Folding for languages use {}
    map <leader>fo $zfa}

  " Shortcut to rapidly show/hide special chars like tab and newline
    nmap <leader>l :set list!<CR>
 
  " Manage Buffers
    map <leader>bd <Plug>Kwbd<cr>
    map <leader>ba :1,300 bd!<cr>
    map <right> :bn<cr>
    map <left> :bp<cr>
    
  " Fast saving
    nmap <leader>w :w!<cr>
    nmap <leader>x :x<cr>

  " Fast editing of the .vimrc
    map <leader>e :e! ~/.vimrc<cr>
    map <leader>E :vert sp .<cr>


    map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=999

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

nnoremap <F5> "=strftime("%a, %b %d, %Y")<CR>
inoremap <F5> <C-R>=strftime("%a, %b %d, %Y")<CR>


" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>


"Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


" Spell checking
"=====================================================================+
  " Start checking
    map <leader>ss :setlocal spell!<cr>

  " change word
    map <leader>s? z=

  " next word
    map <leader>sn ]s
    map <leader>sp [s

  " add word to dictionary
    map <leader>sa zg


""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
au FileType python set nocindent
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return 
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMDIFF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>u :diffupdate<cr>
nnoremap <Leader>g :diffget<cr>
nnoremap <Leader>p :diffput<cr>

"" Rainbow parentheses
"runtime plugin/RainbowParenthsis.vim 
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
"au Syntax * RainbowParenthesesLoadChevrons

" Ignore certain files when tab-completing
set wildignore+=*.pyc
set wildignorecase

" Disable folding
set nofoldenable
