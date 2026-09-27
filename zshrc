eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.local/bin:$PATH"
# === История команд ===
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY        # синхронизация истории между вкладками/сплитами
setopt HIST_IGNORE_DUPS     # не дублировать одинаковые команды подряд

# === Автодополнение ===
autoload -Uz compinit && compinit

# === Prompt (простой, но с git-веткой) ===
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
setopt PROMPT_SUBST
PROMPT='%F{cyan}%~%f%F{yellow}${vcs_info_msg_0_}%f %# '

# === Алиасы: git ===
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate -10'
alias gd='git diff'
alias gco='git checkout'

# === Алиасы: docker / docker-compose ===
alias dc='docker-compose'
alias dcu='docker-compose up -d'
alias dcd='docker-compose down'
alias dcl='docker-compose logs -f'
alias dps='docker ps'

# === Алиасы: python / django ===
alias py='python3'
alias venv='python3 -m venv .venv && source .venv/bin/activate'
alias av='source .venv/bin/activate'
alias runserver='python manage.py runserver'
alias migrate='python manage.py migrate'
alias makemigrations='python manage.py makemigrations'

# === Общие ===
alias ll='ls -lah'
alias ..='cd ..'
alias ...='cd ../..'
eval "$(starship init zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
alias ls='eza --icons'
alias ll='eza -lah --icons --git'
alias cat='bat --paging=never --theme="Coldark-Dark"'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
