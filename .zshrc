#exports
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/Users/kds/.spicetify
export PATH="/opt/homebrew/opt/php@8.0/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.0/sbin:$PATH"
##REDACTED1##
##REDACTED2##
export PATH="$PATH:/Users/kds/.local/bin"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="$PATH:/Users/kds/Git/clones/diff-so-fancy/diff-so-fancy"

export SHELL="zsh"
export DYLD_LIBRARY_PATH="/Applications/Xcode.app/Contents/Frameworks"
##REDACTED3##
##REDACTED4##
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk/"
export ZSH="$HOME/.oh-my-zsh"
##REDACTED5##
##REDACTED6##
export EDITOR="nvim"
##REDACTED7##
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_AVD_HOME=~/.android/avd
export LANG=en_US.UTF-8

[ -s "/Users/kds/.bun/_bun" ] && source "/Users/kds/.bun/_bun"
export BUN_INSTALL="/Users/kds/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#zsh settings
ZSH_THEME="shayan" # Fav themes: shayan, peepcode. But currently using Starship
zstyle ':omz:update' mode auto      # update automatically without asking
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
COMPLETION_WAITING_DOTS="true"

### INIT plugins + ZSH
plugins=(git)
source $ZSH/oh-my-zsh.sh

#ALIAS
#alias zshconfig="mate ~/.zshrc"
#alias ohmyzsh="mate ~/.oh-my-zsh"
alias ad="arc diff --nolint"
alias add="ad --draft"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kds/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kds/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kds/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kds/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

source /Users/kds/.docker/init-zsh.sh || true # Added by Docker Desktop

alias t='tmux attach || tmux new -s main'
alias lzd='lazydocker'
alias lzg='lazygit'
alias vim=nvim
alias cat=bat
alias pip=pip3
alias python=python3
#alias grbm="git rebase -i master"
alias l="exa --color=auto --icons --grid"
alias la="exa -a --icons --grid --color=auto"
alias ll="exa -lah --icons --grid --color=auto"
alias ls="exa --color=auto --icons --grid"
if [ "$(command -v exa)" ]; then
    unalias -m "ll"
    unalias -m "l"
    unalias -m "la"
    unalias -m "ls"
    alias ls="exa"
    alias la="exa -la --color always --icons --grid"
    alias ll="exa -l --color always --icons  --grid"
fi
if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat'
fi
alias v="nvim"

# 🚀 
eval "$(starship init zsh)"
