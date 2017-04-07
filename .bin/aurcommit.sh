#!/bin/zsh

updpkgsums
mksrcinfo
git add PKGBUILD .SRCINFO
ver=$(grep -r PKGBUILD -e "pkgver=")
ver=${ver/pkgver=/}
ver="Version ${ver}"
lastver=$(git log|sed -n 5p|xargs)
if [ "${lastver}" = "${ver}" ]; then
    pkgrel=$(grep -r PKGBUILD -e "pkgrel=")
    pkgrel=${pkgrel/pkgrel=/}
    ver+="-${pkgrel}"
fi

git commit -S -m "${ver}"
GIT_SSH_COMMAND="ssh -i ~/.ssh/aur" git push
