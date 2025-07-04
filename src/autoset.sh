#!/bin/zsh

# Install M1 mac homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Configure Homebrew PATH
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Rosetta2
sudo softwareupdate --install-rosetta --agree-to-license

# Configure script directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Install Brew bundles
brew bundle --file="$SCRIPT_DIR/../Brewfile"

# Configure VSC PATH
VSCODE_PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
echo "export PATH=\"\$PATH:$VSCODE_PATH\"" >> ~/.zprofile
export PATH="$PATH:$VSCODE_PATH"

# Install VSC extensions
bash "$SCRIPT_DIR/../vsce.sh"