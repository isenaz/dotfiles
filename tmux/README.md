# dotfiles for tmux

## Pre-requisites

- tmux を事前にインストールしておくこと

## init

初期構築の一回のみ、 `init.sh` を実行する。

以下が実行される。

- tpm (tmux plugin manager) のインストール
- true color の設定
  - tmux 上で `curl -s https://gist.githubusercontent.com/lifepillar/09a44b8cf0f9397465614e622979107f/raw/24-bit-color.sh | bash ` を実行し、グラデーションがきれいに表示されれば OK
  - 環境によっては正常動作しないことがあるので環境ごとに確認する
  - [詳細](https://gist.github.com/bbqtd/a4ac060d6f6b9ea6fe3aabe735aa9d95)

## maintenance

- plugin の追加
  - .tmux.conf に追加する
  - `tmux source ~/.tmux.conf` でリロードする
  - Prefix(ctrl-b) + I でプラグインをインストールする
- plugin の更新
  - Prefix + U
- plugin の消去
  - .tmux.conf から不要なプラグインを消去
  - `tmux source ~/.tmux.conf` でリロードする
  - Prefix + u でプラグインをアンインストールする
- プラグインの実在り処の確認
  - `tree -d ~/.tmux`

## usages

- [tmux cheat sheet](https://tmuxcheatsheet.com/)
- prefix z -> ペインをズーム表示
- prefix p -> ポップアップウィンドウ
- C-n/C-p -> ウィンドウ移動
