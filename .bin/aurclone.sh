#!env bash
cd "$HOME/packages"
git clone https://aur.archlinux.org/$1.git
cd $1
git remote set-url origin git+ssh://aur@aur.archlinux.org/$1.git
