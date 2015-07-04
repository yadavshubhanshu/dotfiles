#!/bin/bash

echo "Setting up the system..."
sleep 1

echo "Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Done."

./brew.sh