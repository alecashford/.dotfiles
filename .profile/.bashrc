# Environment variables
export GOPATH=$HOME/go # Go workspace
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export GOBIN=$GOPATH/bin

# Adds pemfile to ssh for AWS authentication
sudo ssh-add ~/.ssh/normal.pem &> /dev/null

# Add Visual Studio Code (code) command
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin

# Settings
# Sets bash history to unlimited length
HISTSIZE= 
HISTFILESIZE=

export BAT_PAGER="less -R"
alias les='bat'

# added by pipsi (https://github.com/mitsuhiko/pipsi)
export PATH="/Users/alec/.local/bin:$PATH"

# added by pipsi (https://github.com/mitsuhiko/pipsi)
export PATH="/Users/alec/.local/bin:$PATH"

# For Pyenv path manipulation
eval "$(pyenv init -)"

# For Go path manipulation
export PATH=$PATH:$GOPATH/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
