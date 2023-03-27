#!/bin/bash


echo "Starting install please wait..."

# go installer for 1.20.2

sudo rm /usr/bin/go
wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz
tar -xvf go1.20.2.linux-amd64.tar.gz
sudo mv go /usr/local
sudo rm -rf go1.20.2.linux-amd64.tar.gz

echo "Go installed!"

# PATHS 
# GOPATH should be where you place your go projects, mine is set for my aws env.

echo "Adding PATHS..."

echo 'export GOPATH=$HOME/environment/projects/go' >> ~/.bashrc
echo 'export GOBIN=/usr/local/go/bin' >> ~/.bashrc
echo 'export GOCACHE=$HOME/.cache/go-build' >> ~/.bashrc
echo 'export PATH=$PATH:$GOBIN:$GOPATH/bin' >> ~/.bashrc

echo 'export GOPATH=$HOME/environment/projects/go' >> ~/.zshrc
echo 'export GOBIN=/usr/local/go/bin' >> ~/.zshrc
echo 'export GOCACHE=$HOME/.cache/go-build' >> ~/.zshrc
echo 'export PATH=$PATH:$GOBIN:$GOPATH/bin' >> ~/.zshrc

source ~/.bashrc
source ~/.zshrc
which go

echo "PATHS installed!"
echo "Restart terminal and 'go version' to verify install is complete.."
#  Install gopls -- should install in GOPATH
# go install golang.org/x/tools/gopls@latest
