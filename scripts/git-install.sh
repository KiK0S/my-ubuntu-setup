#/bin/bash

apt update -y && apt install -y git
git config --global pull.rebase false
git config --global branch.master.rebase true
git config --global branch.main.rebase true
git config --global rebase.autostash true

git config --global user.email 'kostya.amelichev@gmail.com'
git config --global user.name 'Konstantin Amelichev'
git --version
echo '=== GIT INSTALLED ==='