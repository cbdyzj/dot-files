alias ls='ls -G'
alias ll='ls -alh'
alias grep='grep --color'
alias tree='tree -N'
alias iconv-gb18030='iconv -f gb18030'
alias cwd='pwd | pbcopy'
alias code='open -b com.microsoft.VSCode'
alias ls-bun='bun -g list'
alias ls-npm='npm -g ls --depth 0'
alias ls-pnpm='pnpm -g ls --depth 0'
alias pm2r="pm2 resurrect"
alias use-python='export PATH="$HOME/Library/Python/3.9/bin:$PATH"'
alias ubuntu="docker run --rm -it public.ecr.aws/docker/library/ubuntu:24.04"
alias vimtmp='t=$(mktemp) && vim "$t" && echo "$t"'
alias vimold='[ -f "$HOME/.viminfo" ] && grep "^>" "$HOME/.viminfo" | sed "s/^> //"'
alias claude='claude --dangerously-skip-permissions'
alias codex='codex --yolo'
alias ship="opencode run --command ship"
