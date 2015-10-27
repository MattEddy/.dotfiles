export PATH=/usr/local/bin:$PATH:/usr/local/git/bin
alias node-jasmine-spec="jasmine-node spec/ --autotest --color --watch ./"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*source /Users/Matt/.rvm/scripts/rvm
source ~/.profile
source ~/.git-completion.bash

alias work='cd ~/Documents/Zesty/'
alias ll='ls -al'
alias gst='git status'
alias gg="git status -sb"
alias at="autotest -cf"
alias rk="rake db:migrate db:test:prepare"
alias also="&&"
alias conflicts="git diff --name-only | uniq | xargs subl"
alias ip="ifconfig | grep 192 | awk '{print $2}' | tee >(pbcopy)"
alias gitx='open -a GitX .'

function google() {
  search_terms=`echo $@`
  query=${search_terms// /+}
  open /Applications/Google\ Chrome.app/ https://google.com/search?q=$query
}

[ `uname -s` != "Darwin" ] && return

function tab () {
    local cmd=""
    local cdto="$PWD"
    local args="$@"

    if [ -d "$1" ]; then
        cdto=`cd "$1"; pwd`
        args="${@:2}"
    fi

    if [ -n "$args" ]; then
        cmd="; $args"
    fi

    osascript &>/dev/null <<EOF
        tell application "iTerm"
            tell current terminal
                launch session "Default Session"
                tell the last session
                    write text "cd \"$cdto\"$cmd"
                end tell
            end tell
        end tell
EOF
}
