# zplug 用
source /usr/local/opt/zplug/init.zsh

# zsh プラグイン

# プロンプトの見た目を見やすくする
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# コマンドに色を付ける
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# 入力している内容でヒストリーサーチする
zplug "zsh-users/zsh-history-substring-search"
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

# 入力している内容からコマンド候補を提示する
zplug "zsh-users/zsh-autosuggestions"

# サードパーティ製のコマンドを補完する
zplug "zsh-users/zsh-completions"

# ディレクトリを移動しやすくする
zplug "b4b4r07/enhancd", use:init.sh

# zplug 用
# 最後に実行する必要がある
zplug "zplug/zplug", hook-build:"zplug --self-manage"
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load --verbose

# zsh-autosuggestions の文字を明るくする
# 設定を上書きするためにプラグインの読み込みの後に設定している
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=242"

# 補完機能を有効化する
autoload -U compinit
compinit

# コマンドラインでも # 以降をコメントと見なす
setopt INTERACTIVE_COMMENTS

# ls コマンドを置き換える
alias ls="exa"
alias ll="exa -l"
alias lt="exa -lT"

# jEnv 用
eval "$(jenv init -)"
