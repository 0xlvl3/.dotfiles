#!/bin/bash


# Download Go 1.20.2 
sudo wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version


