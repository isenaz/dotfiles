# disable "ctrl+D to close terminal"
set -o ignoreeof

# --------------------
# fzf
# --------------------
# ctrl-u / ctrl-d で fzf のプレビューのページ送りをする
export FZF_DEFAULT_OPTS="--bind ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down"
