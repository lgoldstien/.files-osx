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
