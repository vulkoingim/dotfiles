brew update
brew upgrade

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


bToInstall = (aom autoconf autojump automake aws-sam-cli awscli bandwhich bash bat bison cloc cmake coreutils cscope csshx direnv docbook docbook-xsl docker-credential-helper-ecr dog fping freetype fzf gdbm gettext ghostscript git git-crypt git-lfs glib gnu-getopt gnu-sed go-swagger gradle grep gron helm icdiff icu4c ilmbase imagemagick jmeter jpeg jq kops krb5 kubernetes-cli libde265 libffi libheif libidn2 liblqr libomp libpng libtiff libtool libunistring libxml2 libyaml little-cms2 lua macvim md5sha1sum minikube mysql ncurses node oniguruma openexr openjdk openjpeg openssl@1.1 packer parallel pcre pcre2 pigz pkg-config postgresql protobuf protobuf@3.7 python@2 python@3.8 python@3.9 readline ripgrep ripgrep-all ruby shared-mime-info shellcheck sqlite tcl-tk telnet tfenv tig watch webp wget x265 xmlto xsv xz zlib zsh-syntax-highlighting)

bCaskToInstall = (aws-vault google-cloud-sdk gpg-suite java maccy multipass vagrant virtualbox)

brew install zsh-syntax-highlighting

git clone git@github.com:geometry-zsh/geometry.git ~/.oh-my-zsh/themes/
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh

# FZF
brew install fzf
$(brew --prefix)/opt/fzf/install

# Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# install rust
curl https://sh.rustup.rs -sSf | sh

# direnv per directory environments
brew install direnv
# terraform environments
brew install tfenv

brew cask install multipass
brew cask install virtualbox

# git tree view
brew install tig

# bat (CAT), rg, xsv
brew install bat
brew install ripgrep
brew install xsv
brew install autojump

# crypto
brew install openssl
brew cask install gpg-suite
brew install git-crypt

curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-269.0.0-darwin-x86_64.tar.gz | sudo tar xzf - | ./google-cloud-sdk/install.sh

brew install coreutils
brew install git-lfs
brew install imagemagick 
brew install pigz
brew install grep
brew install telnet
brew isntall python 

brew install kops
brew install awscli
brew cask install aws-vault

sudo xcodebuild -license accept

brew cleanup

files=(".gitconfig" ".profile" ".bash_profile" ".vimrc" ".zprofile" ".zshenv" ".zshrc")
for i in "${files[@]}";do
	cp $i ~/
done
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
