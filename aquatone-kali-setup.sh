#! /bin/bash

# Install GoLang and packages
goVersion="1.14.1"
curl -O https://dl.google.com/go/go$goVersion.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go$goVersion.linux-amd64.tar.gz
rm go$goVersion.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source ~/.profile

# Install Aquatone
go get github.com/michenriksen/aquatone
cd ~/go/src/github.com/michenriksen/aquatone
./build.sh
cd build
rm *macos*.zip && rm *windows*.zip && rm *arm*.zip
unzip aquatone_linux* -d ~
sudo mv ~/aquatone /usr/local/bin