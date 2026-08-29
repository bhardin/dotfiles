# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.


# Replicates "git compare" from hub
git config --global alias.compare "!gh pr create --web"

## Delete merged branches, prune, and remove empty directories
# alias git-clean='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d && git remote prune origin && find . -type d -empty -delete'

# Delete branches already merged into origin's default branch, any merge strategy
alias git-clean=git-prune-merged # bin/git-prune-merged (also `git prune-merged`)
