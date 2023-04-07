#!/bin/sh

echo 'export GOPATH=$HOME/projects/go' >> ~/.zshrc
echo 'export GOBIN=/usr/local/go/bin' >> ~/.zshrc
echo 'export GOCACHE=$HOME/.cache/go-build' >> ~/.zshrc
echo 'export PATH=$PATH:$GOBIN:$GOPATH/bin' >> ~/.zshrc


