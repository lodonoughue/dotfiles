
# source prezto file
source $ZDOTDIR/.zprezto/runcoms/zshrc

# custom syntax highlighting
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green'
ZSH_HIGHLIGHT_STYLES[path]=''

export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh
eval "$(pyenv init -)"

# source aliases
source $ZDOTDIR/.zaliases

