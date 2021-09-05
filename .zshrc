# gets wifi password easily 
alias wifi="security find-generic-password -wa Fios-FNK2Y"

# ssh's into raspberry pi
alias pi="ssh pi@192.168.1.7"

# lets you delete multiple git branches using regex
# for example: `rmbr "update-*"`
function rmbr() {
    git branch | grep -i $1 | xargs git branch -D
}

# sets GO Path so that you can run executables 
# https://stackoverflow.com/questions/36083542/error-command-not-found-after-installing-go-eval
export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"