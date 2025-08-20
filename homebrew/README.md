# dotfile for Homebrew

## 概要

- Brewfile に定義した内容が Homebrew を用いて PC にインストールされる
  - https://github.com/Homebrew/homebrew-bundle
- 詳細のインストール情報が Brewfile.lock.json に記録される

## 初回セットアップ

1. `sh link.sh` を実行し、~/.brew/Brewfile に Brewfile のシンボリックリンクを作成する
2. `brew bundle install --file ~/.brew/Brewfile` を実行し、Brewfile 通りにインストールする

## ライブラリの追加

Brewfile に追加したいライブラリの記述をし、 インストール時と同様のコマンドを実行する。

## ライブラリの消去

Brewfile から不要なものの記述を消去し、`brew bundle cleanup --file ~/.brew/Brewfile --force`を実行する。 `--force`がないと、消すものだけを教えてくれて何も消さない。

## メンテナンス

- `brew list` でインストール済みのライブラリ類をすべて確認できる
- `brew deps --installed --tree`を実行することで依存関係を調査できる
