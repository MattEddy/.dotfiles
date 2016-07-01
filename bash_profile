export PATH=/usr/local/bin:$PATH:/usr/local/git/bin
alias node-jasmine-spec="jasmine-node spec/ --autotest --color --watch ./"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*source /Users/Matt/.rvm/scripts/rvm
source ~/.profile
source ~/.git-completion.bash

alias ll='ls -al'
alias gst='git status'
alias gg="git status -sb"
alias at="autotest -cf"
alias rk="rake db:migrate db:test:prepare"
alias also="&&"
alias conflicts="git diff --name-only | uniq | xargs subl"
alias ip="ifconfig | grep 192 | awk '{print $2}' | tee >(pbcopy)"
alias gitx='open -a GitX .'
alias fix-jscs='jscs app tests --fix'
alias explode_and_build='rm -rf node_modules bower_components dist tmp && npm cache clean && bower cache clean && npm install && bower install'
function google() {
  search_terms=`echo $@`
  query=${search_terms// /+}
  open /Applications/Google\ Chrome.app/ https://google.com/search?q=$query
}
function work() {
  cd ~/Documents/Zesty/$(find ~/Documents/Zesty -type d -maxdepth 2 -depth 1 | sed 's/\/Users\/MattEddy\/Documents\/Zesty\///' | fzf -1 -q "$1")
}

function projects() {
  cd ~/Documents/Zesty/$(find ~/Documents/projects -type d -maxdepth 2 -depth 1 | sed 's/\/Users\/MattEddy\/Documents\/projects\///' | fzf -1 -q "$1")
}

[ `uname -s` != "Darwin" ] && return


