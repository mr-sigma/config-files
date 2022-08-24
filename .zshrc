autoload -Uz compinit && compinit

export PS1="%#%n@%m:%1~  "

# git completion stuff
# download this first https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
# then download https://github.com/git/git/blob/master/contrib/completion/git-completion.zsh
# follow installation instructions
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

# Git branch name stuff
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    '%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
RPROMPT=$'$(vcs_info_wrapper)'

# User specific aliases and functions
alias ls='ls -G'
alias la='ls -lahG'
alias exaa='exa -lah'
alias h='history'
alias df='df -H'
alias du='du -ch'
alias adog='git log --all --decorate --oneline --graph'
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias rubocop_changed='git status --porcelain | xargs rubocop'
alias tmux="TERM=screen-256color-bce tmux"
alias sunstat="sun -a 41.310726, -72.929916"

export PATH=$HOME/bin:$PATH
export GIT_EDITOR=vim

REPOS=(
)
function repo_pr_status {
  echo $1
  if [[ $2 == "--all" ]]; then
    #statements
    gh pr status --repo $1
  else
    gh pr status --repo $1 | grep --after-context 20 --color=never "Requesting a code review from you"
  fi
}
function all-pr-status {
  for repo in $REPOS
  do
    repo_pr_status $repo
  done
}
function list-prs {
  for repo in $REPOS
  do
    gh pr list --repo $repo
  done
}
function mergable-prs {
  for repo in $REPOS
  do
    GH_PAGER=cat gh pr list --label "Ready for Merge" --repo $repo
  done
}

function kill-port-process {
  sudo kill $(sudo lsof -t -i:$1)
}

autoload -Uz compinit
compinit

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
