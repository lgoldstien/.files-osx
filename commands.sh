###
# .files-osx
#
# Custom commands
#
# @author Lawrence Goldstien
###

# Set and reset PATH
function pathset {
    if [ -z $1 ]
        then
            echo $__pathset_NO_ARGS
    fi
}

# Use the updated ps1 command line if we have powerline-shell
function _update_ps1() {
    export PS1="$(~/.powerline-shell/powerline-shell.py $? 2> /dev/null)"
}

# If there is a .workspace file in the directory you have cd'd into then source it
function workspace_cd() {
    cd $@ && [ -f ".workspace" ] && source .workspace
}
