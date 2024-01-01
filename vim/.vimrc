"--------------------
" settings for native vim
"--------------------
set encoding=utf8
set fenc=utf-8
" colorscheme
set background=dark
"ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=[ENC=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[LOW=%l/%L]
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2
" 行番号を表示
set number relativenumber
" カーソル行を強調
set cursorline
" インデント関連
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2

" ステータスバーでのディレクトリ移動の挙動を設定
set wildmenu
set wildmode=longest,list,full

" 小文字検索の場合大文字小文字区別しないが、大文字検索の場合する
set ignorecase
set smartcase
" 検索結果をハイライト
set hlsearch
" インクリメンタル検索
set incsearch

" 対応する括弧を強調
set showmatch matchtime=1
" 行をまたいで移動
set whichwrap=b,s,h,l,<,>,[,],~

" 折返し行でも上下に移動
nnoremap j gj
nnoremap k gk

" ESC二回でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" シンタックスハイライト
syntax on

" change cursor shape in normal mode and insert mode
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" make regexp faster for syntax highlighting
" (or else vim will hang up)
set re=0

" vim上でyankした内容をOSのクリップボードにコピーする
set clipboard=unnamed

" :source $VIMRUNTIMEmacros/matchit.vim
set nocompatible
filetype plugin on
runtime macros/matchit.vim

"--------------------
" plugins
"--------------------
source ~/.dotfiles/vim/plugins/others.vim
