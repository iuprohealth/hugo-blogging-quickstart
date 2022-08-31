#!/usr/bin/env bash
# Copyright 2022 Alexander L. Hayes
# MIT License (https://opensource.org/licenses/MIT)


# Goal: Download the `hugo` binary to the base of this repository.
# Run:
#           bash setup_hugo_macos.sh

mkdir hugo_download

(
    cd hugo_download
    curl -L https://github.com/gohugoio/hugo/releases/download/v0.102.2/hugo_0.102.2_macOS-universal.tar.gz > hugo_0.102.2_macOS-universal.tar.gz
    tar -zxvf hugo_0.102.2_macOS-universal.tar.gz
    mv hugo ..
)

rm -rf hugo_download
