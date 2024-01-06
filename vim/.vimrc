
"--------------------
" settings for native vim
"--------------------
" set vim menu to english
let $LANG = 'en_US'
" set encodings
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
call plug#begin('~/.vim/plugged')

  " ----------
  " nerdcommenter - set comments in file
  " ----------
  Plug 'preservim/nerdcommenter'
  let g:NERDSpaceDelims = 1
  let g:NERDDefaultAlign = 'left'
  let g:NERDCommentEmptyLines = 1

  " ----------
  " vim-fugitive - use git functions in vim
  " ----------
  Plug 'tpope/vim-fugitive' 

  " ----------
  " fern and related plugins - file explorer in vim
  " ----------
  Plug 'lambdalisue/fern.vim'

  " make vim's default file explorer to fern
  Plug 'lambdalisue/fern-hijack.vim'
  " <Leader>e でファイルエクスプローラーを表示し、開いているファイルまでのツリーを展開する
  nmap <Leader>e :Fern . -reveal=%<CR>
  " 隠しファイルを表示する
  let g:fern#default_hidden=1

  " preview files in fern
  Plug 'yuki-yano/fern-preview.vim'
  " 各種ショートカットキーの設定
  function! s:fern_settings() abort
    nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
    nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
    nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
    nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
    nmap <silent> <buffer> S <Plug>(fern-action-open:below)
  endfunction
  augroup fern-settings
    autocmd!
    autocmd FileType fern call s:fern_settings()
  augroup END

  " show git status in files in fern 
  Plug 'lambdalisue/fern-git-status.vim'

  " show file type icons in fern
  Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  Plug 'lambdalisue/nerdfont.vim'
  let g:fern#renderer = 'nerdfont'

  " ----------
  " auto-pairs - auto input other pair of brackets
  " ----------
  Plug 'jiangmiao/auto-pairs'

  " ----------
  " fzf and related plugins - fuzzy search
  " ----------
  Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
  Plug 'junegunn/fzf.vim'
  " ファイル名検索 - :Filesコマンドではgitignoreされているファイルも検索対象になるため、agを利用
  nmap <Leader>f :call fzf#run(fzf#vim#with_preview(fzf#wrap({'source': 'ag --hidden -g ""', 'options': '--multi'})))<CR> 
  " 全ファイル検索 - gitignoreされているファイルも含む。:Filesコマンドでは隠しファイルが表示されてないためfindを利用
  nmap <Leader>af :call fzf#run(fzf#vim#with_preview(fzf#wrap({'source': 'find .', 'options': '--multi'})))<CR> 
  " 全文検索 - :Ag コマンドではファイル名もヒットしてしまうため、delimiterオプションでファイル名を除くようにする
  nmap <Leader><S-f> :call fzf#vim#ag('', fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), 0)<CR> 
  " gitファイル検索 - :GFilesコマンドでは、ファイルエクスプローラーでエラーになり実行ができないので自作
  nmap <Leader>g :call fzf#vim#gitfiles("", fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}))<CR> 
  " gitコミット検索（logのl）
  nmap <Leader>l :Commits!<CR> 

	" ----------
	" coc
	" ----------
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" install coc extensions
	let g:coc_global_extensions = ['coc-json', 'coc-snippets', 'coc-eslint', 'coc-yaml', 'coc-tsserver', 'coc-pyright', 'coc-prettier']

	" Remap keys for gotos
	nmap <silent> gd :call CocAction("jumpDefinition", v:false)<CR>
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Use K to show documentation in preview window
	nnoremap <silent> K :call <SID>show_documentation()<CR>
	function! s:show_documentation()
		if (index(['vim','help'], &filetype) >= 0)
			execute 'h '.expand('<cword>')
		else
			call CocAction('doHover')
		endif
	endfunction

	" Use <c-@> to trigger completion.
	inoremap <silent><expr> <c-@> coc#refresh()


	" Use [g and ]g to navigate diagnostics
	nmap <silent> [g <Plug>(coc-diagnostic-prev)
	nmap <silent> ]g <Plug>(coc-diagnostic-next)

	" Highlight symbol under cursor on CursorHold
	autocmd CursorHold * silent call CocActionAsync('highlight')

	" Add status line support, for integration with other plugin, checkout :h coc-status
	set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

	" scroll documentation with <C-f> / <C-b>
	if has('nvim-0.4.0') || has('patch-8.2.0750')
		nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
		nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
		inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
		inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
		vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
		vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
	endif

call plug#end()
