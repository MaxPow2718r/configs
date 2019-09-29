"pluggins will be download in that directory"
call plug#begin('~/vim/plugged')

"list of pluggins"

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_latexmk_continouos = 1

call plug#end()

let mapleader = ","
set nocompatible
syntax enable
filetype plugin on

"enable spell-check with Ctrl-O"
map <F2> : setlocal spell!<CR>
set spelllang=es
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"shows the line number"
set number relativenumber

"set auto indent"
set autoindent
set tabstop=4

"split the window to the right in vertical mode and below in normal mode"
set splitright splitbelow

"enable autocomplete"
set wildmode=longest,list,full

"disable autocoment below"
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"cursorline"
set cursorline

"shortcut for windows navigation"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"automatically deletes all whitespace on save"
autocmd BufWritePre * %s/\s\+$//e

"search for <++>"
inoremap <Space><Space> <ESC>/<++><CR>"_c4l
nnoremap <Space><Space> <ESC>/<++><CR>"_c4l
map <Space><Space> <ESC>/<++><CR>"_c4l

"complete pair of brackets"
inoremap () ()<Space><++><ESC>?)<CR>i
inoremap {} {}<Space><++><ESC>?}<CR>i
inoremap [] []<Space><++><ESC>?]<CR>i

"git shortcuts
map <F6> :w<CR>:sp<Space>.gitlog<CR>dG:read<Space>!git<Space>status<CR>
map <F7> :w!<CR>:!git<Space>add<Space>%<CR><CR>
map <F8> :!git<Space>commit<Space>-m<Space>""<Left>

"latex commands"
"F4 to save
autocmd Filetype tex inoremap <F4> <ESC>:w<CR>A
autocmd Filetype tex nnoremap <F4> :w<CR>
autocmd Filetype tex map <F4> :w<CR>

"snippets
"templates
autocmd Filetype tex inoremap <Leader>i <ESC>:read ~/.LaTeX_Templates/IEEE_Template<CR>kdd
autocmd Filetype tex inoremap <Leader>r <ESC>:read ~/.LaTeX_Templates/Report_Template<CR>kdd
autocmd Filetype tex inoremap <Leader>n <ESC>:read ~/.LaTeX_Templates/Notes_Template<CR>kdd
autocmd Filetype tex inoremap <Leader>s <ESC>a<()><ESC>/<\|++\|><CR>o<ESC>:read<Space>~/.LaTeX_Templates/Packages/SVG<CR>/<(>)<CR>"_c9l
autocmd Filetype tex inoremap <Leader>c <ESC>a<()><ESC>/<\|++\|><CR>o<ESC>:read<Space>~/.LaTeX_Templates/Packages/Circuits<CR>/<(>)<CR>"_c9l
autocmd Filetype tex inoremap <Leader>g <ESC>a<()><ESC>/<\|++\|><CR>o<ESC>:read<Space>~/.LaTeX_Templates/Packages/Graphics<CR>/<(>)<CR>"_c9l

"text snippets (use ;)
autocmd Filetype tex inoremap "" ``''<Space><++><ESC>6hi
autocmd Filetype tex inoremap $$ $<()>$<Space><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap ;b \textbf{}<Space><++><ESC>?}<CR>i
autocmd Filetype tex inoremap ;i \textit{}<Space><++><ESC>?}<CR>i
autocmd Filetype tex inoremap ;u \underline{}<Space><++><ESC>?}<CR>i
autocmd Filetype tex inoremap ;red \color{red}{}<Space><++><ESC>?}<CR>i
autocmd Filetype tex inoremap ;B \begin{<()>}<CR><++><CR>\end{<()>}<CR><CR><++><ESC>:%s/<()>/
autocmd Filetype tex inoremap ;e \begin{equation}<CR><()><CR>\end{equation}<CR><CR><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap ;dm \[<CR><()><CR>\]<CR><CR><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap ;s \section{<()>}<CR><CR><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap ;-s \subsection{<()>}<CR><CR><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap ;_s \subsubsection{<()>}<CR><CR><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap ;+e \begin{eqnarray}<CR><()><CR>\end{eqnarray}<CR><CR><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap ;# \begin{enumerate}<CR>\item<Space><()><CR>\end{enumerate}<CR><CR><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap ;l \begin{itemize}<CR>\item<Space><()><CR>\end{itemize}<CR><CR><++><ESC>?<()><CR>"_c4l
"math snippets (use .)
autocmd Filetype tex inoremap // \frac{<()>}{<++>}<Space><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap .I \int_{<()>}^{<++>}<++>\mathrm{d}<++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap .i \int<Space><()>\mathrm{d}<++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap .l \lim_{<()> \to <++>}<Space><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap .[ \left[<()><Space>\right]<Space><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap .{ \left\{<()><Space>\right\}<Space><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap .( \left(<()><Space>\right)<Space><++><ESC>?<()><CR>"_c4l
autocmd Filetype tex inoremap .oo \infty<Space>
autocmd Filetype tex inoremap ./ <ESC>%i\frac<ESC>%a{}<ESC>i
autocmd Filetype tex inoremap .< \langle<Space><()><Space>\rangle<Space><++><ESC>?<()><CR>"_c4l

"python commands"
"compile python"
autocmd Filetype python map <F5> :w!<CR> :exec '!python' shellescape(@%,1)<CR>
