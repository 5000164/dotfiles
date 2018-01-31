# zplug 用
source /usr/local/opt/zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load --verbose

# 補完機能を有効化する
autoload -U compinit
compinit

# ls コマンドを置き換える
alias ls='exa'
alias ll='exa -l'
alias lt='exa -lT'

# rbenv 用
eval "$(rbenv init -)"
