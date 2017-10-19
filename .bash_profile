# ls コマンドを置き換える
alias ls='exa'
alias ll='exa -l'
alias lt='exa -lT'

# Android 用の設定
export PATH=$PATH:/Users/hiroshi/Library/Android/sdk/platform-tools

# tmux の異なるセッションで history を共有する
function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTSIZE=9999
