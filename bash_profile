# combine mkdir cd
mkcd(){
mkdir "$1"
cd "$1"
}

# git commands 
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gh='git checkout'
alias gr='git pull --rebase upstream master'
alias gu='git pull upstream master'
alias gpush='git push origin master'
alias gpull='git pull origin master'

alias bashreload=". ~/.bash_profile"

alias hello="echo hello chant long!"

alias ds="cd /Users/chantlong/Desktop/"
alias dd="cd /Users/chantlong/Downloads/"

# parse branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# show branch name
export PS1="\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
