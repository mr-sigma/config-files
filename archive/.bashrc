# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# show current git branch in prompt if applicable
if [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
  source /usr/share/git-core/contrib/completion/git-prompt.sh
  PS1='\u@\h:\W$(__git_ps1)\[\e[0m\]\[\e[1;30m\]\\\>\[\e[0m\] '
else
  PS1='\u@\h:\W$ '
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# User specific aliases and functions
alias ls='ls -G'
alias la='ls -lahG'
alias h='history'
alias df='df -H'
alias du='du -ch'
alias py='python'
alias xbox='sudo xboxdrv --detach-kernel-driver --mimic-xpad --silent'
alias adog='git log --all --decorate --oneline --graph'
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias rubocop_changed='git status --porcelain | xargs rubocop'

export PATH=$HOME/bin:$PATH
