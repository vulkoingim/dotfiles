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

# crypto
brew install openssl
brew cask install gpg-suite
brew install git-crypt

curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-269.0.0-darwin-x86_64.tar.gz | sudo tar xzf - | ./google-cloud-sdk/install.sh

brew install coreutils
brew install git-lfs
brew install imagemagick --with-webp
brew install pigz


sudo xcodebuild -license accept

brew cleanup
# Keka https://www.keka.io/en/
# BetterTouchTool https://folivora.ai/
# Docker.dmg
# Firefox 71.0b2.dmg https://www.mozilla.org/en-GB/firefox/developer/
# Flux.zip  https://justgetflux.com/
# Install Spotify.app/ https://www.spotify.com/uk/download/mac
# Slack-4.1.0-macOS.dmg https://slack.com/intl/en-gb/downloads/mac
# bazel-1.0.1-installer-darwin-x86_64.sh https://docs.bazel.build/versions/master/install-os-x.html
# jetbrains-toolbox-1.16.6016.dmg https://www.jetbrains.com/toolbox-app/download/download-thanks.html

# aleksandaraleksandrov-db.json
# aleksandaraleksandrov.yubi
