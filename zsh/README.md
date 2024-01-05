# dotfiles of zsh

## Pre-requisites 
- fzf
  - fzfのためのconfigがあるため
- zinit
  - use for zsh package managining
    - 他ライブラリよりも高速という噂
  - zshrc に追加して、zshをロードしたら自動でインストールされる
  - `zinit zstatus` でディレクトリなど色々わかる
  - `zinit delete --clean` でzshrcから消去したプラグインが消去される
  - [Zenn:zinit をしっかりと理解する](https://zenn.dev/xeres/articles/2021-05-05-understanding-zinit-syntax)

## packages
zinitを用いて管理
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
  - コマンドをシンタクスハイライト
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
  - コマンドを予測して候補を一つ出してくれる
  - （候補を複数出してくれる[zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete)のほうが便利かも？）
- [romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k#homebrew)
  - promptのUIを高度にカスタマイズが可能
  - zshrcのlazy loadingが可能
  - promptの非同期描画が可能なので高速
  - spaceship よりも高機能かつ高速という噂

## 参考記事
- [Top Popular ZSH Plugins on GitHub (2023)](https://safjan.com/top-popular-zsh-plugins-on-github-2023/)
- [awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins)
