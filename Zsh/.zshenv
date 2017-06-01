
# create necessary folders
mkdir -p $HOME/Library/Zsh

# define variables
export JAVA_HOME=$(/usr/libexec/java_home)
export ZDOTDIR=$HOME/Library/Preferences/Zsh/
export HISTFILE=$HOME/Library/Zsh/history

source $ZDOTDIR/.zprezto/runcoms/zshenv

