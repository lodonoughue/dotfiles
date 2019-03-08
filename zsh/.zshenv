
# map XDG directories to the 
# OS X default app data directories
export XDG_CONFIG_HOME=$HOME/Library/Preferences
export XDG_DATA_HOME=$HOME/Library
export XDG_CACHE_HOME=$HOME/Library/Caches

# create necessary folders
mkdir -p $XDG_DATA_HOME/Zsh

# define variables
export JAVA_HOME=$(/usr/libexec/java_home)
export GRADLE_HOME=/usr/local/Cellar/gradle/4.3.1/libexec
export ZDOTDIR=$XDG_CONFIG_HOME/Zsh
export HISTFILE=$XDG_DATA_HOME/Zsh/history
export PYLINTHOME=$XDG_CONFIG_HOME/Python

# source the rest of the zprezto
# zshenv config
source $ZDOTDIR/.zprezto/runcoms/zshenv

