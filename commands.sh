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

# If there is a .workspace file in the directory you have cd'd into then source it
# function workspace_cd() {
#     cd $@ && [ -f ".workspace" ] && source .workspace
# }


# Set up the chained ssh command
function chain-ssh {
    CHAIN_HOSTS=( "$@" );
    for i in "${CHAIN_HOSTS[@]}"; do
       echo $i
    done


    # ssh tribepad-jump -t "command; ssh test-www1 -t 'bash'"
}
