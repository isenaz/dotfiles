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

### 2. CLI でのみ設定可能な項目の設定

- `sh init.sh` を実行し、PC 再起動で反映させる

### 3. 手動インストールする必要があるものをインストール

- 各 HP から GUI で dmg や pkg を DL してインストール（定番のみ抜粋）
  - Google 日本語入力
  - Raycast
  - Arc Browser
  - xcode command line tool
    - AppStore から XCode をインストールするか、 `git -v` などと実行すると CLI ツールだけがインストールされる
  - Karabiner-Elements [dotfiles 有]
  - Alacritty [dotfiles 有]
  - Hemmerspoon [dotfiles 有]
- スクリプトを実行するなどしてマニュアルインストール
  - Homebrew [dotfiles 有]
  - [nvm](https://github.com/nvm-sh/nvm)
    - node version management
    - brew インストールは非推奨になっているのでマニュアルインストール
    - zshrc でパス管理
  - [poetry](https://python-poetry.org/)
    - python version management / virtual environment
    - zshrc でパス管理

### 各種 dotfiles の反映

各種 dotfiles のフォルダ内の README にしたがって dotfiles を反映/初期セットアップしていく。

依存関係があるので以下の順番が良い。

1. hammerspoon （順不同）
2. karabiner-elements （順不同）
3. homebrew
4. alacritty
5. git
6. tmux
7. zsh
8. powerlevel10k
9. vim
