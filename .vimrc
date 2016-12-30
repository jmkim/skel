" File encodings
set fencs=ucs-bom,utf-8,cp949

" Show line number
set number

" Auto indentation
set smartindent

" Indent width
set expandtab
set softtabstop=4
set shiftwidth=4

" Syntax and color scheme
syntax on

if has("gui_running")
    set guifont=D2Coding:h11,Consolas:h11

    map <C-F>c :set guifont=Consolas:h11<CR>
    map <C-F>d :set guifont=D2Coding:h11<CR>
else
    " Terminal colour
    set t_Co=256
endif

if has("unix") || has("gui_running")
    set background=dark
    colorscheme solarized
endif

if has("win32")
    " Open markdown files with Chrome
    autocmd BufEnter *.md exe 'noremap <C-S-B> :!start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "%:p"<CR>'
endif

map <C-T> :echo strftime("%H:%M:%S %Z")<CR>
map <C-D> :echo strftime("%a, %d %b %Y %H:%M:%S %Z")<CR>

map <C-P> :set nopaste<CR>
map <C-P>p :set paste<CR>

map <C-U>u :e ++enc=utf-8<CR>
map <C-U>e :e ++enc=euc-kr<CR>
map <C-U><C-U>u :set fileencoding=utf-8
map <C-U><C-U>e :set fileencoding=euc-kr

map <C-E>n :tabnew<CR>
map <C-E>s :tabnew<CR>
map <C-E>v :tabnew<CR>

map <C-E>e :tabnext<CR>
map <C-E>h :tabnext<CR>

map <C-E>E :tabprevious<CR>
map <C-E>p :tabprevious<CR>
map <C-E>l :tabprevious<CR>

map <C-E>c :tabclose<CR>
map <C-E>q :tabclose<CR>
