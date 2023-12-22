#!/bin/bash
# Created by Luo Yu

ssh-keygen -t ed25519 -C "robot@aws.server"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo "\n" && cat ~/.ssh/id_ed25519.pub && echo "\n"

sudo apt install -y git zsh vim curl wget git-lfs
cd
git lfs install


