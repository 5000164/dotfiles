# 補完機能を有効化する
autoload -U compinit
compinit

# ls コマンドを置き換える
alias ls='exa'
alias ll='exa -l'
alias lt='exa -lT'

# rbenv 用
eval "$(rbenv init -)"
