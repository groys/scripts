syntax on
set nocompatible

set ignorecase
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

" use php highlighting on phpt files
autocmd BufNewFile,BufRead *.phpt set ft=php
" use haskell highlighting on hsc files
autocmd BufNewFile,BufRead *.hsc set ft=haskell
autocmd BufNewFile,BufRead *.cabal set ft=cabal
autocmd BufNewFile,BufRead *.txt set ft=text
autocmd BufNewFile,BufRead README set ft=text

autocmd FileType python set ts=4 | set shiftwidth=4 | set expandtab |
  \ set autoindent | set softtabstop=4
autocmd FileType make set noexpandtab | set tabstop=8 | set shiftwidth=8
autocmd FileType text set tw=78



" kill any trailing whitespace on save
autocmd FileType c,cabal,cpp,haskell,javascript,php,python,readme,text
  \ autocmd BufWritePre <buffer>
  \ :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

" vim7.2 intentionally makes * lamer for php.  wtf
autocmd FileType php setlocal iskeyword+=$

"
" general
"

set nocompatible

set tags=tags;/

" searching
set incsearch                 " incrimental search
set hlsearch                  " highlighting when searching

" note: cindent and smartindent do the wrong thing with # in certain files.
" but i think autoindent is more minimal and good default for all filetypes.
set autoindent
filetype plugin indent on
set cindent
set backspace=2

" display
set nolist                    " show/hide tabs and EOL chars
set nonumber                  " show/hide line numbers (nu/nonu)
set scrolloff=5               " scroll offsett, min lines above/below cursor
set scrolljump=5              " jump 5 lines when running out of the screen
set sidescroll=10             " minumum columns to scroll horizontally
set showcmd                   " show command status
set showmatch                 " flashes matching paren when one is typed
set showmode                  " show editing mode in status (-- INSERT --)
set ruler                     " show cursor position

" code folding
set nofen
set foldmethod=indent         " indent based folding

" other
set noerrorbells              " no bells in terminal
set undolevels=1000           " number of undos stored
set viminfo='50,"50           " '=marks for x files, "=registers for x files
"set makeprg=cd ~/Code/scribe;make
"set errorformat=%m\ in\ %f\ on\ line\ %l
"set number

" 80 character line completion
":mat Error '\(.\{80\}\)\@<='

"Trinity plugin related
" Open and close all the three plugins on the same time
nmap <F8>   :TrinityToggleAll<CR>

" Open and close the srcexpl.vim separately
nmap <F9>   :TrinityToggleSourceExplorer<CR>

" Open and close the taglist.vim separately
nmap <F10>  :TrinityToggleTagList<CR>

" Open and close the NERD_tree.vim separately
nmap <F11>  :TrinityToggleNERDTree<CR> 
