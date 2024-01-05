# dotfiles for vim

## Pre-requisites

* Homebrewのインストールと `brew install vim` の実施
  * vimのバージョンアップ、vim-plugのインストールで利用するため
* fzf
  * fzf.vimで利用するため
* the_silver_searcher(agコマンド)
  * fzf.vimで利用するため
  fzf.vimで利用するため
* (Optional) git-delta
  * git-deltaがあると、fzf.vimのgit diffがより美しく表示される

## 使い方

Vimとプラグインの使い方

### native Vim
- :terminal
    - vim内でterminalモードを開始

### fzf
- :Commits
    - Gitコミット一覧をdiffプレビューで表示する
    - ctrl + y でハッシュをコピー
- :Commands
    - Vimコマンド一覧をリスト・ファジー検索
- 一般
    - tab/shift+tabで複数選択
    - ctrl-u/ctrl-dでプレビューのページ送りをする

### fugitive
- `:G`
    - コマンドパレットを表示
    - `=` でdiff表示
    - `s/u` でstage/unstage
    - `X` でファイルをリセット
    - `v` で部分選択
    - `cc` でコミットメッセージを編集 -> `:x` でコミット

