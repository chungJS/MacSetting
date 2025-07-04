#!/bin/zsh

# Install M1 mac homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Configure PATH
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/$(whoami)/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
VSCODE_PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
echo "export PATH=\"\$PATH:$VSCODE_PATH\"" >> ~/.zprofile
export PATH="$PATH:$VSCODE_PATH"

# Install Rosetta2
sudo softwareupdate --install-rosetta

# Install Brew bundles
brew bundle --file=../Brewfile

# Install VSC extensions
bash ../vsce.sh