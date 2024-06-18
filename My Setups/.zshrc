# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 2

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git adb ansible colored-man-pages debian vi-mode vagrant tmux terminitor ssh docker docker-compose )
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Docker Aliases
alias dcr="sudo docker ps -a"
alias dcud="sudo docker compose up -d"
alias dcu="sudo docker compose up"
alias dcd="sudo docker compose down"
alias di="sudo docker images"

# VPN Aliases
alias htb="sudo openvpn ~/Documents/VPN/xxxxx.ovpn"
alias thm="sudo openvpn ~/Documents/VPN/xxxxx.ovpn"
alias pg="sudo openvpn ~/Documents/VPN/xxxxx.ovpn"
alias rt="sudo openvpn ~/Documents/VPN/xxxxx.ovpn"
# alias xxx="sudo openvpn ~/Documents/VPN/xxxxx.ovpn"
# alias xxx="sudo openvpn ~/Documents/VPN/xxxxx.ovpn"
# alias xxx="sudo openvpn ~/Documents/VPN/xxxxx.ovpn"
# alias xxx="sudo openvpn ~/Documents/VPN/xxxxx.ovpn"

# Nmap Aliases

alias fps="sudo nmap -sCV -T4 -A -p- -oA nmap-results"
alias feroxd="sudo nmap -sCV -T4 -A -p- -oA nmap-results"
alias feroxe="sudo nmap -sCV -T4 -A -p- -oA nmap-results"
# alias feroxd="sudo nmap -sCV -T4 -A -p- -oA nmap-results"

