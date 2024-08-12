#/bin/bash

cd ~/Downloads
wget https://storage.googleapis.com/dart-archive/channels/stable/release/1.24.2/dartium/dartium-linux-x64-release.zip
unzip dartium-*-.zip
sudo apt install -y libgconf-2-4                                                                               127 ↵

cd dartium-*/
./chrome --version