# Mac OS セットアップ

## 初期セットアップ

1. キーボードショートカットのカスタマイズ
   - キーボード
     - 「次のウィンドウを操作対象にする」 -> ctrl + space
   - 入力ソース
     - 「前の入力ソースを選択」 -> disable
     - 「入力メニューの次のソースを選択」 -> disable
   - アプリのショートカット
     - 「Finder.app」 -> 「ダウンロード」 -> cmd + shift + L

2. CLIでのみ設定可能な項目の設定
   - `sh init.sh` を実行し、再起動で反映させる

3. 定番アプリのインストール
   - Google 日本語入力
   - Raycast
   - Arc Browser
   - Homebrew
   - Karabiner-Elements [dotfiles有]
   - Alacritty [dotfiles有]
   - Hemmerspoon [dotfiles有]

4. 定番brew install
   `brew deps --installed --tree`を実行することで依存関係を調査し、不要な依存ライブラリを消去できる
   - vim
     - MacOSのデフォルトはバージョンが古いため最新版をインストール
   - tmux
     - .tmux.confで管理
   - fzf
     - `$(brew --prefix)/opt/fzf/install`で得られるショートカットキー機能やcompletion機能はあまり使わないのでしない
     - .zshrc, .vimrc で管理
   - the_silver_searcher
     - agコマンドをfzf.vimで利用するため
     - fzf.vim内で利用（個人カスタマイズはなし）
   - [git-delta](https://github.com/dandavison/delta)
     - .gitconfigで管理
   - tree
   - htop
   - zinit
     - zsh package manager
     - インストール後は .zshrc にパスを通す
     - .zshrcで管理
 5. その他インストール
   - [nvm](https://github.com/nvm-sh/nvm)
    - node version management
    - brewインストールは非推奨になっているのでマニュアルインストール
    - zshrcでパス管理
