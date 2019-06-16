# zsh 用

## 履歴ファイルの保存先
export HISTFILE=~/.zsh_history

## メモリに保存される履歴の件数
export HISTSIZE=10000

## 履歴ファイルに保存される履歴の件数
export SAVEHIST=10000000

## 履歴を複数の端末で共有する
setopt share_history

## 複数の zsh を同時に使用した際に履歴ファイルを上書きせず追加する
setopt append_history

## 履歴ファイルに zsh の開始・終了時刻を記録する
setopt extended_history

## コマンドラインでも # 以降をコメントと見なす
setopt INTERACTIVE_COMMENTS

# ls コマンドを置き換える
alias ls="exa"
alias ll="exa -l"
alias lt="exa -lT"

# Homebrew 用
export PATH="/usr/local/sbin:$PATH"

# coreutils 用
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# jEnv 用
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# to use nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# Rust 用
export PATH="$HOME/.cargo/bin:$PATH"

# zplug 用
source /usr/local/opt/zplug/init.zsh

# zsh プラグイン

# プロンプトの見た目を見やすくする
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

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

# 未インストール項目をインストールする
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# コマンドをリンクして、PATH に追加し、プラグインは読み込む
zplug load --verbose

# zsh-autosuggestions の文字を明るくする
# 設定を上書きするためにプラグインの読み込みの後に設定している
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=242"

# 補完機能を有効化する
autoload -U compinit
compinit
