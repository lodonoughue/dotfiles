# Export environment variables
export XDG_CONFIG_HOME="$HOME/Library/Preferences"
export XDG_DATA_HOME="$HOME/Library"
export XDG_CACHE_HOME="$HOME/Library/Caches"
export ZSH="/Users/lodonoughue/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
export ANDROID_SDK="/Users/lodonoughue/Library/Android/sdk"
export ANDROID_HOME=$ANDROID_SDK
export GEM_HOME="$HOME/.gem"

# Set JAVA_HOME with asdf
source $HOME/.asdf/plugins/java/set-java-home.zsh

# Append to $PATH
export PATH="/usr/local/opt/libpq/bin:$PATH" # Add psql to $PATH
export PATH="$ANDROID_SDK/platform-tools:$ANDROID_SDK/emulator:$PATH" # Add adb to $PATH
export PATH="$GEM_HOME:$PATH" # Add gem to $PATH

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
source $(brew --prefix asdf)/libexec/asdf.sh

# Aliases
alias gita="git add ."
alias gitc="git commit -m"
alias adbt="adb shell input text"
alias adbenter="adb shell input keyevent 66"
alias adbd="adb disconnect"
alias adbprod="adb shell am start -a android.intent.action.VIEW -d 'fonsetv://run/environment/set/TV_PRODUCTION'"
alias adb7802="adb connect 10.0.0.10"
alias adbchiclet="adb connect 10.0.0.11"
alias adbfiretv="adb connect 10.0.0.12"
alias fonse77="adb shell am start -a android.intent.action.VIEW -d 'fonsetv://run/login/username/fonse77/password/'\$(op read op://oygubvjrnncere6c57wy2duoni/4l7z32zqbrhdjg2no5rub3p3gu/password)"
alias retailstore="adb shell am start -a android.intent.action.VIEW -d 'fonsetv://run/login/username/fonsec8b@bellaliant.net/password/'\$(op read op://oygubvjrnncere6c57wy2duoni/wn6mq72fvcnj34hcouylhd6emq/password)"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git macos asdf)

source $ZSH/oh-my-zsh.sh

