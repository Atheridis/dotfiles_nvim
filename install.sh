#!/bin/sh

install_dependencies() {
    if [[ -f /bin/dnf ]]
    then
        echo "installing dependencies"
        sudo dnf install g++ libstdc++ -y
    else
        echo "Cannot find dnf, please install g++ and libstdc++ using your package manager"
    fi
}

check_nvim_directory() {
	if [ -d ~/.config/nvim ]; then
		uuid=$(cat /proc/sys/kernel/random/uuid)
		mv -v ~/.config/nvim ~/.config/nvim.old.$uuid
	fi
}

version_lua() {
	ln -s $(pwd)/nvim ~/.config/nvim
}

version_no_lua() {
	ln -s $(pwd)/nvim_0-4-4/ ~/.config/nvim
}

echo "Please choose nvim version [0]: "
echo "[0]: Neovim v0.7.2+"
echo "[1]: Neovim v0.4.4"
read -p "Default [0]: " version
version=${version:-0}

check_nvim_directory
if [[ $version -eq 0 ]]; then
	version_lua
elif [[ $version -eq 1 ]]; then
	version_no_lua
fi
install_dependencies
