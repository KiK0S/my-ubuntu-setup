#/bin/bash

cd ~/Downloads
wget https://storage.googleapis.com/dart-archive/channels/dev/release/1.25.0-dev.16.4/sdk/dartsdk-linux-x64-release.zip
mkdir -p ~/dev/datagrok/dart-sdk
unzip dartsdk-*.zip ~/dev/datagrok/dart-sdk
# also needs
# export PATH="$PATH:$YourDevPath/datagrok/dart-sdk/bin"