# 履歴ファイルの保存先
export HISTFILE=~/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=100000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 重複を記録しない
setopt hist_ignore_dups

# 履歴を複数の端末で共有する
setopt share_history

# 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_dups

# 重複するコマンドは古い方を削除する
setopt hist_ignore_all_dups

# 複数の zsh を同時に使用した際に履歴ファイルを上書きせず追加する
setopt append_history

# 履歴ファイルに zsh の開始・終了時刻を記録する
setopt extended_history

# Android 用の設定
export PATH=$PATH:/Users/hiroshi/Library/Android/sdk/platform-tools

# Rust を使えるようにする
export PATH=$HOME/.cargo/bin:$PATH

# nodebrew を使えるようにする
export PATH=$HOME/.nodebrew/current/bin:$PATH

# jEnv 用
export PATH="$HOME/.jenv/bin:$PATH"

# svm 用
export SCALA_HOME=~/.svm/current/rt
export PATH=$SCALA_HOME/bin:$PATH

# coreutils 用
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
