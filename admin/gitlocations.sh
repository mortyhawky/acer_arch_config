#/usr/bin env bash

clear

checkgit() {
    pushd $folder
        printf "    in folder: "; pwd
        git status --short
        printf "____----------------____\n\n"
    popd
}

folder="/home/m/.config"
checkgit
folder="/a/prog"
checkgit
folder="/a/linux/arch"
checkgit

#folder="/a/prog"
#pushd $folder
#    printf "    in folder: "; pwd
#    git status --short
#popd
#
##printf "$folder\n"
###git remote --verbose
##git status --short
##printf "___--------------------------------------___\n\n"
##
##cd /a/linux/arch
##git status
##git remote --verbose
##git status --short
##printf "___--------------------------------------___\n\n"
##
##cd /a/prog
##git status
##git remote --verbose
##git status --short
##printf "___--------------------------------------___\n\n"
##
##popd
