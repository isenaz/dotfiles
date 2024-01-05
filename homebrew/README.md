# dotfile for Homebrew

## 概要

- Brewfileに定義した内容がHomebrewを用いてPCにインストールされる
  - https://github.com/Homebrew/homebrew-bundle
- 詳細のインストール情報が Brewfile.lock.json に記録される


## 初回セットアップ

1. `sh link.sh` を実行し、~/.brew/BrewfileにBrewfileのシンボリックリンクを作成する
2. `brew bundle install --file ~/.brew/Brewfile` を実行し、Brewfile通りにインストールする

## ライブラリの追加

Brewfileに追加したいライブラリの記述をし、 インストール時と同様のコマンドを実行する。

## ライブラリの消去

Brewfileから不要なものの記述を消去し、`brew bundle cleanup`を実行する。

## メンテナンス

- `brew list` でインストール済みのライブラリ類をすべて確認できる
- `brew deps --installed --tree`を実行することで依存関係を調査できる
