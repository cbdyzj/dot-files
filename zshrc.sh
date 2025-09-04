# shell prompt
ZSH_PROMPT_NEWLINE=$'\n'
PS1="%n@$(hostname):%~${ZSH_PROMPT_NEWLINE}$ "

# completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
autoload -U compinit && compinit

# bin
if [ -d "$HOME/bin" ]; then
    export PATH="$HOME/bin:$PATH"
fi

# aliases
. "$(dirname "$0")/aliases.sh"

# node
export N_PREFIX="$HOME/.npm-packages"
export PATH="$HOME/.npm-packages/bin:$PATH"
export PNPM_HOME="$HOME/.npm-packages/pnpm"

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# gradle
alias gradle="\$HOME/gradle/gradle-9.0.0/bin/gradle"

# python
export PATH="$HOME/Library/Python/3.9/bin:$PATH"

# env
[ -f "$(dirname "$0")/.env" ] && source "$(dirname "$0")/.env"
