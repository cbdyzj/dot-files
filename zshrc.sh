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
NODE_PATH="$HOME/get-node"
if [ -f "$NODE_PATH/.profile" ]; then
    . "$NODE_PATH/.profile"
fi

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# gradle
alias gradle="$HOME/gradle/gradle-8.10.1/bin/gradle"

# groovy
export GROOVY_HOME="$HOME/groovy/groovy-4.0.21"
alias groovy="$HOME/groovy/groovy-4.0.21/bin/groovy"
