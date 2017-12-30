# dotfiles

## 各ファイルの説明

- .bash_profile
    - bash の設定
- .ideavimrc
    - IntelliJ IDEA の ideaVim の設定
- .tmux.conf
    - tmux の設定
- Brewfile
    - Homebrew でインストールするパッケージ

## Brewfile の生成方法

```bash
rm Brewfile
brew bundle dump
```
