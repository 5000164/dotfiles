# 履歴ファイルの保存先
export HISTFILE=~/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=10000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=10000000

# 履歴を複数の端末で共有する
setopt share_history

# 複数の zsh を同時に使用した際に履歴ファイルを上書きせず追加する
setopt append_history

# 履歴ファイルに zsh の開始・終了時刻を記録する
setopt extended_history

# nodebrew を使えるようにする
export PATH=$HOME/.nodebrew/current/bin:$PATH
export NODEBREW_ROOT=/usr/local/var/nodebrew

# jEnv 用
export PATH="$HOME/.jenv/bin:$PATH"

# coreutils 用
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Rust 用
export PATH="$HOME/.cargo/bin:$PATH"
