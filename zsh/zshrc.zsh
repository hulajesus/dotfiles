export PYTHON_CONFIGURE_OPTS="--enable-framework"
export coinbasePassword="beenhero"

fpath=($fpath ~/.yadr/zsh/zsh-completion/rancher-zsh-completion ~/.yadr/zsh/zsh-completion/kubectl-zsh-completion)
# alias
_rm(){ D=~/.Trash/; mv "$@" $D;  }
# myrm(){ D=~/.Trash/$(date +%Y%m%d%H%M%S); mkdir -p $D; mv "$@" $D && echo "moved to $D ok";  }
alias rm='_rm'
alias ycmd="ps aux | grep /tern/bin/tern | awk '{print $2}' | xargs kill -9"
alias ack='ag'
alias gfw='proxychains4'
alias vim="mvim"
alias vi='mvim -v'
alias yadr="vim ~/.yadr"
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias dn=aria2c
alias nvminit='. "$(brew --prefix nvm)/nvm.sh"'
_rmi(){ docker images -f "dangling=true" -q | xargs docker rmi; }
_stc(){ docker stop $(docker ps -a -q); }
_rmc(){ docker rm $(docker ps -a -q); }
alias rmi='_rmi'
alias stc='_stc'
alias rmc='_rmc'
alias fig='docker-compose'
alias figd='docker-compose -f docker-compose-dev.yml'
alias note='vim ~/Dropbox/Note'

alias cp="rsync -rtvP"

# direnv
eval "$(direnv hook zsh)"

# rbenv
eval "$(rbenv init -)"
# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# seth config
export DAPP_NO_SAVE=1
export ETH_GAS=3000000
export GOPATH=~/Projects/go
export PATH=$PATH:$GOPATH/bin
export ETH_FROM='0xc2d5ef1b5e6234c6bcbce87bb05d579c8e9d5720'
alias kovan="export ETH_RPC_HOST='testnet.token.im'; export ETH_RPC_PORT=34342"
alias mainnet="export ETH_RPC_HOST='web3.token.im'; export ETH_RPC_PORT=443"

load_dot_env() {
  if [ -f .env ]
  then
    export $(cat .env | xargs)
  fi
}

add-zsh-hook -Uz chpwd (){load_dot_env}

