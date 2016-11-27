export ANDROID_HOME='/Users/jesushula/Library/Android/sdk'
export GOPATH='/Users/jesushula/Projects/go'
export HOMEBREW_GITHUB_API_TOKEN="09f05ce893e1306497a46823c8bf6a2da983eb1e"
export NVM_DIR=~/.nvm
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rbenv/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"
export PAGER='/usr/bin/less -S'
export PGDATA='/usr/local/var/postgres'

# rbenv
eval "$(rbenv init -)"
alias gfw='proxychains4'
alias vim="mvim"
alias vi='mvim -v'
alias yadr="vim ~/.yadr"
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias nvminit='. "$(brew --prefix nvm)/nvm.sh"'
# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# nvm startup slow
# nvm
# . $(brew --prefix nvm)/nvm.sh

