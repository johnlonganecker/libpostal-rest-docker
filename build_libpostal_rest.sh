#!/usr/bin/env bash
set -e

curl -k https://storage.googleapis.com/golang/go1.8.1.linux-amd64.tar.gz > go1.8.1.linux-amd64.tar.gz

echo "a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994  go1.8.1.linux-amd64.tar.gz" | sha256sum -c

tar xzf go1.8.1.linux-amd64.tar.gz

export GOROOT=/libpostal/go
export GOPATH=/libpostal/workspace
export PATH=$PATH:/libpostal/go/bin

go get github.com/johnlonganecker/libpostal-rest

go install github.com/johnlonganecker/libpostal-rest
