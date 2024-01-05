# Mac OS セットアップ

## 初期セットアップ

### 1. キーボードショートカットのカスタマイズ
   - キーボード
     - 「次のウィンドウを操作対象にする」 -> ctrl + space
   - 入力ソース
     - 「前の入力ソースを選択」 -> disable
     - 「入力メニューの次のソースを選択」 -> disable
   - アプリのショートカット
     - 「Finder.app」 -> 「ダウンロード」 -> cmd + shift + L

### 2. CLIでのみ設定可能な項目の設定
   - `sh init.sh` を実行し、PC再起動で反映させる

### 3. 手動インストールする必要があるものをインストール
- 各HPからGUIでdmgやpkgをDLしてインストール（定番のみ抜粋）
   - Google 日本語入力
   - Raycast
   - Arc Browser
   - xcode command line tool
     - AppStoreからXCodeをインストールするか、 `git -v` などと実行するとCLIツールだけがインストールされる
   - Karabiner-Elements [dotfiles有]
   - Alacritty [dotfiles有]
   - Hemmerspoon [dotfiles有]
- スクリプトを実行するなどしてマニュアルインストール
   - Homebrew [dotfiles有]
   - [nvm](https://github.com/nvm-sh/nvm)
        - node version management
        - brewインストールは非推奨になっているのでマニュアルインストール
        - zshrcでパス管理

### 各種dotfilesの反映

各種dotfilesのフォルダ内のREADMEにしたがってdotfilesを反映/初期セットアップしていく。

依存関係があるので以下の順番が良い。

1. hammerspoon （順不同）
1. karabiner-elements （順不同）
1. homebrew
2. alacritty
3. git
4. tmux
5. zsh
6. powerlevel10k
7. vim
