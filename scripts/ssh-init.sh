#/bin/bash

mkdir ~/.ssh
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N ""

echo '=== SSh key created ==='
echo 'Upload public key to github etc'
cat ~/.ssh/id_rsa.pub
read -p "Press enter to continue"
