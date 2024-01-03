# dotfiles for tmux

## Pre-requisites
- tmuxを事前にインストールしておくこと

## init
初期構築の一回のみ、 `init.sh` を実行する。

以下が実行される。
- tpm (tmux plugin manager) のインストール

## maintenance

- pluginの追加
  - .tmux.confに追加する
  - `tmux source ~/.tmux.conf` でリロードする
  - Prefix(ctrl-b) + I でプラグインをインストールする
- pluginの更新
  - Prefix + U
- pluginの消去
  - .tmux.confから不要なプラグインを消去
  - `tmux source ~/.tmux.conf` でリロードする
  - Prefix + u でプラグインをアンインストールする
- プラグインの実在り処の確認
  - `tree -d ~/.tmux`

## usages
- [tmux cheat sheet](https://tmuxcheatsheet.com/)
