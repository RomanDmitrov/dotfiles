# dotfiles

My personal terminal setup: [Ghostty](https://ghostty.org) + [Starship](https://starship.rs) + zsh.

## What's inside

- `zshrc` — zsh config: history settings, aliases (git, docker, Django), Starship init, eza/bat/fzf hooks
- `starship.toml` — Starship prompt config: git branch/status, language versions, command duration, clock
- `ghostty-config` — Ghostty terminal config: font, theme, keybinds, shell integration

## Prerequisites

```bash
brew install --cask ghostty
brew install starship eza bat fzf zsh-autosuggestions zsh-syntax-highlighting
$(brew --prefix)/opt/fzf/install
```

## Install

```bash
git clone git@github.com:RomanDmitrov/dotfiles.git ~/dotfiles

cp ~/dotfiles/zshrc ~/.zshrc
cp ~/dotfiles/starship.toml ~/.config/starship.toml
mkdir -p ~/.config/ghostty
cp ~/dotfiles/ghostty-config ~/.config/ghostty/config

source ~/.zshrc
```

## Stack

- Terminal: Ghostty
- Shell: zsh
- Prompt: Starship
- `ls`/`cat` replacements: eza, bat
- Fuzzy history search: fzf
- 
