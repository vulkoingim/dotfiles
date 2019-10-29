brew update
brew upgrade

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/geometry-zsh/geometry ~/.oh-my-zsh/themes/
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# FZF
brew install fzf
$(brew --prefix)/opt/fzf/install

# install rust
curl https://sh.rustup.rs -sSf | sh

# direnv per directory environments
brew install direnv
# terraform environments
brew install tfenv

# git tree view
brew install tig

# bat (CAT), rg, xsv
brew install bat
brew install ripgrep
brew install xsv

# openssl
brew install openssl

brew cask install gpg-suite
brew install git-crypt

curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-269.0.0-darwin-x86_64.tar.gz | sudo tar xzf - | ./google-cloud-sdk/install.sh


# BetterTouchTool.zip
# Docker.dmg
# Firefox 71.0b2.dmg
# Flux.zip
# Install Spotify.app/
# LastPass.dmg
# Slack-4.1.0-macOS.dmg
# SpotifyInstaller.zip
# aleksandaraleksandrov-db.json
# aleksandaraleksandrov.yubi
# bazel-1.0.1-installer-darwin-x86_64.sh
# files-WhatsApp.dmg
# jetbrains-toolbox-1.16.6016.dmg
# yubikey.pub
