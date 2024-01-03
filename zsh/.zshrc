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

# ブランチ一覧から選択・ファジー検索できるようにする関数
# バッファの途中に選択したブランチ名が入る
# previewにそのブランチのgit logが表示される
# ctrl-g でこの関数を実行する
function fzf-git-select-branch() {
  local branch=`git branch -a | cut -c 3- | fzf --reverse --height=80% --preview 'git log --graph --pretty=format:"<%an - %ai> %s %C(bold blue)%Creset" {} --' --preview-window 'wrap'`
  BUFFER="${BUFFER}${branch}"
  zle redisplay
}
zle -N fzf-git-select-branch
bindkey '^G' fzf-git-select-branch

# バッファの最後の文字列をパスとして、そのパス内をfzfで検索する。
# 選択されたパスがバッファに入る
# 例） `cp ~` でctrl-f → ~内でfzf検索する
# 例） `` でctrl-f → カレントディレクトリ内でfzf検索する
function fzf-find-directory() {
  sep=" "
  arguments=(${(ps.$sep.)BUFFER}) # バッファの文字列をスペースでsplitする
  fzf_path=${arguments[-1]:-.} # 最後の文字列をパスとして読み込み、存在しなければカレントディレクトリを指定
  fzf_path=${fzf_path:s/~/$HOME} # 文字列形式の~は動作しないため絶対パスに変換する
  local selected_path=`\
    find ${fzf_path} | \
      fzf \
      --reverse \
      --height 80% \
      --preview 'if [[ -d {} ]]; then ls -aF {} ; else cat {}; fi'\
    ` # プレビューでは、ディレクトリならlsを、ファイルならcatをプレビューする。
  arguments[-1]=$selected_path # バッファの文字列部分を選択されたパスで置換する
  BUFFER="${arguments}" # バッファの更新
  CURSOR=$#BUFFER # バッファの末尾にカーソルを配置
  zle redisplay
}
zle -N fzf-find-directory
bindkey '^f' fzf-find-directory

# コマンド履歴からfzf検索
# ctrl-r でこの関数を実行する
function fzf-find-history() {
  local selected_command=`\
    history -n -50 | \
      fzf \
      --reverse \
      --height 80% \
    ` # プレビューでは、ディレクトリならlsを、ファイルならcatをプレビューする。
  BUFFER="$selected_command" # バッファの更新
  CURSOR=$#BUFFER # バッファの末尾にカーソルを配置
  zle redisplay
}
zle -N fzf-find-history
bindkey '^r' fzf-find-history
