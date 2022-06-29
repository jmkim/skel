" File encodings
set fencs=ucs-bom,utf-8,cp949

" Show line number
set number

" Auto indentation
set smartindent

" Indent width
set expandtab
set softtabstop=2
set shiftwidth=2

" Syntax and color scheme
syntax on

set t_Co=256

if has("unix") || has("gui_running")
    set background=dark
    colorscheme solarized
endif

map <C-S-D> :echo strftime("%H:%M:%S %Z")<CR>
map <C-D> :echo strftime("%a, %d %b %Y %H:%M:%S %Z")<CR>

map <C-P> :set nopaste<CR>
map <C-P>p :set paste<CR>

map <C-E>u :e ++enc=utf-8<CR>
map <C-E>e :e ++enc=euc-kr<CR>
map <C-E><C-E>u :set fileencoding=utf-8
map <C-E><C-E>e :set fileencoding=euc-kr

map <C-T>n :tabnew<CR>
map <C-T>s :tabnew<CR>
map <C-T>v :tabnew<CR>

map <C-T>t :tabnext<CR>
map <C-T>h :tabnext<CR>

map <C-T>T :tabprevious<CR>
map <C-T>p :tabprevious<CR>
map <C-T>l :tabprevious<CR>

map <C-T>c :tabclose<CR>
map <C-T>q :tabclose<CR>

try
  source ~/.vimrc-local
catch
  " Just ignore it
endtry
