# disable "ctrl+D to close terminal"
set -o ignoreeof

# --------------------
# alias custom command
# --------------------
alias ls='ls -F'
alias la='ls -la'
# cdをするとlsをしてフォルダ内のファイル一覧を表示
alias cd='(){cd $1 && ls}'
# git logをグラフできれいに表示する
alias gl="git log --graph --branches --remotes --tags --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --abbrev-commit"
# tmuxペインパターン
alias ide='tmux split-window -h -p 15 && tmux split-window -v -p 33'

# --------------------
# fzf
# --------------------
# ctrl-u / ctrl-d で fzf のプレビューのページ送りをする
export FZF_DEFAULT_OPTS="--bind ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down"
