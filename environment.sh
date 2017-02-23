###
# .files-osx
#
# Environment variables
#
# @author Lawrence Goldstien
###

# # Set the initial path for backup
# PATH_ORIGINAL=$PATH
#
# # Set the custom path up
# PATH_CUSTOM=$PATH_ORIGINAL

# Do we have docker installed?
# if command -v docker-machine >/dev/null 2>&1; then
#   docker-machine ls | grep Running
#if [ -z "$(docker-machine ls | grep Running)" ]; then
#    echo "There is no docker machine running, fixing that now."
#    docker-machine start development &> /dev/null
#fi
#eval "$(docker-machine env development)"

export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"
nvm use v5.1.1 &> /dev/null

eval $(thefuck --alias)

function _update_ps1() {
    PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export PATH="/usr/local/Cellar/php56/5.6.16/bin/:$PATH"
export HOMEBREW_GITHUB_API_TOKEN="7fbb052178fcb698feba3789e8c1f971951f3b21"

