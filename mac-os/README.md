# Mac OS セットアップ

## 初期セットアップ

1. キーボードショートカットのカスタマイズ
   - キーボード
     - 「次のウィンドウを操作対象にする」 -> ctrl + space
   - 入力ソース
     - 「前の入力ソースを選択」 -> disable
     - 「入力メニューの次のソースを選択」 -> disable

2. CLIでのみ設定可能な項目の設定
   - `sh init.sh` を実行し、再起動で反映させる

3. 定番アプリのインストール
   - Google 日本語入力
   - Karabiner-Elements
   - Raycast
   - Alacritty
   - Hemmerspoon
   - Homebrew
   - Arc Browser

4. 定番brew install
   `brew deps --installed --tree`を実行することで依存関係を調査し、不要な依存ライブラリを消去できる
   - tmux
   - fzf
     - `$(brew --prefix)/opt/fzf/install`で得られるショートカットキー機能やcompletion機能はあまり使わないのでしない
   - the_silver_searcher
     - agコマンドをfzf.vimで利用するため
