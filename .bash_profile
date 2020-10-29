alias lsa='ls -FGlAhp'
alias lsl='ls -l'
alias sts="git status"
alias gush="git push origin HEAD"
alias gat="git add ."
alias gull="git pull origin HEAD"
alias prdir="cd ~/projects"
alias glog="git log"
alias giff="git diff"
alias giffs="git diff --staged"
alias gcmt="git commit"
alias gco="git checkout"
alias protogrpc="protoc -I=. --go_out=plugins=grpc:. *.proto"
alias gwcnt="git whatchanged -1 --format=oneline | wc -l"
alias gwchg="git whatchanged"
alias grep="grep --color"
alias php="/usr/local/php5/bin/php"
alias gsupd="git submodule update --recursive"
alias gtr="tig"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias gundo="git reset HEAD~"
alias rslvtheirs="gco --theirs"
alias rslvours="gco --ours"
alias gmpull="gco master && git pull"
alias bfg="java -jar /usr/local/bin/bfg.jar"
alias gmt='function _gmt(){ git commit -m"$1";};_gmt'
alias k8mini='kubectl config use-context minikube'
alias cat='bat -p'
alias chclient="clickhouse client"
alias k="imp-kubectl"
alias gen="go run . gen --tag_for_unpinned=20200107-1301-4591 --output_dir pwgen"
#alias greset="git reset $(git merge-base master $(git rev-parse --abbrev-ref HEAD))"
alias ovim="/usr/bin/vim"
# version overrides
#alias vim="nvim"
alias cdir="pwd | pbcopy"
alias python="/usr/local/bin/python3"
#alias pip="python -m pip"

greset(){
	git reset $(git merge-base master $(git rev-parse --abbrev-ref HEAD))
}

mcommit=(
    "¯\\_(ツ)_/¯"
    "¯\\_㋡_/¯"
    "(╯°Д°)╯︵/(.□ . \\)"
    "(┛◉Д◉)┛彡┻━┻"
    "┻━┻︵ \\(°□°)/ ︵ ┻━┻"
    "(┛ಠ_ಠ)┛彡┻━┻"
    "(ノಠ益ಠ)ノ彡┻━┻"
    "(╯°□°)╯︵ ┻━┻"
    "(˚Õ˚)ر ~~~~╚╩╩╝"
    "ヽ(ຈل͜ຈ)ﾉ︵ ┻━┻"
    "┬─┬ノ( º _ ºノ)"
)

#alias fct='function _gmt(){ git commit -m"$1 $mcommit[$(( $RANDOM % $#mcommit+1 ))]";};_gmt'

# find the top 10 largest directories
alias largestdir="du -a /var | sort -n -r | head -n 10"
# remove files that start with snapshot* older than 3 days
alias rmolderthan3="find snapshot* -mtime +3 -exec rm {} \;"
alias lsize="du -shc *"

alias ministart="minikube start --insecure-registry=192.168.99.1:5000 --cpus 3 --memory 3096"
alias dockerstart="docker run -d -p 5000:5000 --restart=always --name registry registry:2"
alias gbr="git for-each-ref --sort='-committerdate:iso8601' --format=' %(committerdate:iso8601)%09%(refname)' refs/heads"
alias updateGoToVersion='function _updGo(){ cd /usr/local && sudo rm -fr go && curl https://storage.googleapis.com/golang/go"$1".darwin-amd64.tar.gz | sudo tar xzf - ;};_updGo'
#   Set Paths
#   ------------------------------------------------------------

alias getLatestGoVersion="curl https://golang.org/VERSION?m=text | sed 's/go//'"

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home/


export GO111MODULE=on
export GOPATH=~/$HOME/go
export GOBIN=$GOPATH/bin
export GOROOT=/usr/local/go
PATH=$PATH:/opt/apache-maven-3.3.9/bin:/opt/apache-cassandra-3.9/bin:/opt/protoc-3.6.1-osx-x86_64/bin:/usr/local/mysql/bin:/usr/local/php5/bin:$GOBIN:$GOPATH:$GOROOT/bin:/usr/local/sbin:$HOME/Library/Python/3.6/bin

#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------

# Remove duplicate items from history
export HISTCONTROL=ignoreboth:erasedups

alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'


#   ---------------------------
#   4.  SEARCHING
#   ---------------------------

alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

#   ---------------------------
#   5.  PROCESS MANAGEMENT
#   ---------------------------


#   findPid: find out the pid of a specified process
#   -----------------------------------------------------
#       Note that the command name can be specified via a regex
#       E.g. findPid '/d$/' finds pids of all processes with names ending in 'd'
#       Without the 'sudo' it will only find processes of the current user
#   -----------------------------------------------------
    findPid () { lsof -t -c "$@" ; }

#   ---------------------------
#   6.  NETWORKING
#   ---------------------------

alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs



#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }


#==============================#
#==AUTOCOMPLETE SSH Hostnames==#
#==============================#

_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
                cat ~/.ssh/config | \
                        grep "^Host " | \
                        awk '{print $2}'
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}
#compdef _complete_ssh_hosts ssh

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


# sync history between shell (arleady open ones)
PROMPT_COMMAND='history -a; history -n;'

export POD_NAMES='--no-headers -o custom-columns=":metadata.name"'
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"
export YUBI_KEY_ID=$(gpg --card-status | sed -nE 's/^Signature key.*(....) (....)$/\1\2/p')

export PATH="$HOME/.cargo/bin:/usr/local/opt/grep/libexec/gnubin:$PATH"
export PATH="$HOME/.improbable/imp-tool/subscriptions:$HOME/bin:/usr/local/Cellar/openssl/1.0.2t/bin:$PATH"

alias latestTag="git ls-remote --tags  | sed 's/.*\///; s/\^{}//' | grep -oP '\d{8}-\d{4}-\d{4}' | sort | tail -n 1"
alias genLatestPlaywright='go run . gen --tag_for_unpinned=$(latestTag) --output_dir pwgen'
#alias terraform='av terraform'
# switch yubikeys
alias swykey='gpg-connect-agent "scd serialno" "learn --force" /bye'

alias cls="circle local presubmit"




# istio workshop
export ISTIO_VERSION=1.5.1
export ARCHITECTURE=osx
export ISTIO_INSTALL_DIR=$HOME/projects/istio/istio-$ISTIO_VERSION-$ARCHITECTURE

export PATH="${HOME}/.pyenv/bin:${PATH}"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

showpvc(){
	imp-kubectl $1 a get pods -o=json | jq -c '.items[] | {name: .metadata.name, namespace: .metadata.namespace, claimName: .spec |  select( has ("volumes") ).volumes[] | select( has ("persistentVolumeClaim") ).persistentVolumeClaim.claimName }'
}

fct(){
	git commit -m"$1 $mcommit[$(( $RANDOM % $#mcommit+1 ))]"
}

b64(){
	echo -n "$1" | base64 | pbcopy
}

b64d(){
	echo -n "$1" | base64 -D | pbcopy
}
delPod(){
	imp-kubectl $1 $2 get pods -o name | rg $3 | xargs -I {} imp-kubectl $1 $2 delete {}
}
