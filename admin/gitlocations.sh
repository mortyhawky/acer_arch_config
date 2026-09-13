#/usr/bin env bash

clear
color_green="\[$(tput setaf 2)\]"
color_reset="\[$(tput sgr0)\]"

checkgit() {
    pushd $folder
        printf "$color_green     -->  in folder: "
            pwd
        printf "$color_reset\n"
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
