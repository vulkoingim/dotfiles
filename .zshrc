# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

plugins=(autojump zsh-syntax-highlighting fzf zsh-autosuggestions kubectl)

#[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.shi 
source $ZSH/oh-my-zsh.sh
source $HOME/.bash_profile
source $HOME/.profile

# User configuration
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# complcache_start_auto_complete)OB
export EDITOR='vim'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

fpath=(/usr/local/share/zsh-completions $fpath)

#AUTOCOMPLETE SSH hostnames
h=()
if [[ -r ~/.ssh/config ]]; then
      h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
fi
if [[ -r ~/.ssh/known_hosts ]]; then
    h=($h ${${${(f)"$(cat ~/.ssh/known_hosts{,2} || true)"}%%\ *}%%,*}) 2>/dev/null
fi
if [[ $#h -gt 0 ]]; then
    zstyle ':completion:*:ssh:*' hosts $h
    zstyle ':completion:*:slogin:*' hosts $h
fi

#unsetopt share_history
setopt share_history

#eval $(thefuck --alias)
autoload -U +X bashcompinit && bashcompinit

# iterm2 shell integrations
source ~/.iterm2_shell_integration.zsh
# aws CLI
source /usr/local/share/zsh/site-functions/aws_zsh_completer.sh 

#gcloud
## The next line updates PATH for the Google Cloud SDK.
if [ -f $HOM/google-cloud-sdk/path.bash.inc ]; then
  source "$HOME/google-cloud-sdk/path.zsh.inc"
fi

# The next line enables shell command completion for gcloud.
if [ -f $HOME/google-cloud-sdk/completion.bash.inc ]; then
  source "$HOME/google-cloud-sdk/completion.zsh.inc"
fi


# fzf fuzzy completion 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# function ssh {
#   command ssh -R "/home/${USER}/.gnupg/S.gpg-agent     "${HOME}/.gnupg/S.gpg-agent" \
#               -R "/home/${USER}/.gnupg/S.gpg-agent.ssh "${HOME}/.gnupg/S.gpg-agent.ssh" \
#               "$@"
# }

## ONLY EVAL BEYOND THIS POINT
eval "$(direnv hook zsh)"

