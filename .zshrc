# set increased font size
# done in terminal > preferences on mac terminal

# set prompt
# documentation of prompt options can be found here - https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html#Prompt-Expansion
parse_git_branch() {
        git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1/p'
}
setopt PROMPT_SUBST
PROMPT=%B%T%b' '%2~%B' '%S\$(parse_git_branch)%s$'\n''$ '%b

# gets wifi password easily 
alias wifi="security find-generic-password -wa Fios-FNK2Y"

# ssh's into raspberry pi
alias pi="ssh pi@192.168.1.7"

# lets you delete multiple git branches using regex
# for example: `rmbr "update-*"`
function rmbr() {
    git branch | grep -i $1 | xargs git branch -D
}

# see ports being used
function ports() {
    lsof -i -P -n | grep LISTEN
}

# sets GO Path so that you can run executables 
# https://stackoverflow.com/questions/36083542/error-command-not-found-after-installing-go-eval
export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"
export PATH=$(brew --prefix openvpn)/sbin:$PATH
PATH="/usr/local/opt/sqlite/bin:$PATH"

# sets ruby path so mac ruby isn't used at command line
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# sets up tmux shell with random color, asciiart and cbonsai
alias mux="cd ~/Desktop/Git/dotfiles && chmod +x ./bin/tmux_start.sh && ./bin/tmux_start.sh"

# alias python to python3 for mac so it doesn't use python2. note it will pull whatever python3 is on $PATH
alias python="python3"
