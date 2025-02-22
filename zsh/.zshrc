# Export environment variables
export XDG_CONFIG_HOME="$HOME/Library/Preferences"
export XDG_DATA_HOME="$HOME/Library"
export XDG_CACHE_HOME="$HOME/Library/Caches"
export ASDF_DATA_DIR="$HOME/.asdf"
export ZSH="$HOME/.oh-my-zsh"
export HOMEBREW_AUTO_UPDATE_SECS=86400 # 1 day
export ANDROID_SDK="$XDG_DATA_HOME/Android/sdk"
export ANDROID_HOME=$ANDROID_SDK
export GEM_HOME="$HOME/.gem"
export $(grep -v "^#" "$HOME/.env.nomadis" | xargs)

# Set JAVA_HOME with asdf
source "$ASDF_DATA_DIR/plugins/java/set-java-home.zsh"

# Append to $PATH
export PATH="$ASDF_DATA_DIR/shims:$PATH" # Add asdf shims to path
export PATH="$ANDROID_SDK/platform-tools:$ANDROID_SDK/emulator:$PATH" # Add adb to $PATH
export PATH="$GEM_HOME:$PATH" # Add gem to $PATH
export PATH="$HOME/Developer/scripts:$PATH" # Add custom scripts to $PATH
export PATH="/opt/homebrew/opt/libpq/bin:$PATH" # Add psql to $PATH
export PATH="$HOME/.dotnet/tools:$PATH" # Add dotnet tools to $PATH

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# Aliases
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
alias gita="git add ."
alias gitc="git commit -m"
alias adbt="adb shell input text"
alias adbenter="adb shell input keyevent 66"
alias adbd="adb disconnect"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git macos)

if [[ "$VSCODE_PID" = "" ]]; then
 source $ZSH/oh-my-zsh.sh
fi

