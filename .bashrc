alias resource='source ~/.bashrc'


# alias
alias .='cd ../ && pwd'
alias ..='cd ../../ && pwd'
alias ...='cd ../../../ && pwd'
alias ll='ls -la'
alias p='pwd'
alias cddl='cd ~/Downloads'
alias cdd='cd ~/Documents'
alias cdu='cd ~/Documents/Unity'
alias cdtest='cd ~/Documents/Test'
source ~/git-completion.bash 

# git
alias g='git '
alias gp='git pull '
alias gs='git st '
alias gb='git br '
alias gd='git diff $1'
alias gdc='git diff --cached $1'
alias ga='git add $1'
alias gm='git cmm $1'
alias glog='git glog'
alias gitsyymode='git config --local user.name Syy && git config --local user.email shirakawa.yy@gmail.com '


# path
export PATH="$(brew --prefix homebrew/core/php@7.0)/bin:$PATH"
export PATH="$PATH:~/.composer/vendor/bin"

#func
function mkcd() {
        mkdir $1;
        cd $1;
}

git_branch() {
  echo $(git branch 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}

export PS1='\[\033[0;33m\]\W/ \[\033[1;30m\]\t \[\033[1;32m\]$(git_branch)\[\033[0m\] $ '
