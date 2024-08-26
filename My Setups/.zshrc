oste@vale:~$ exit
logout
Connection to 192.168.1.100 closed.
➜  Monitor3 cat ~/.zshrc
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

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:${HOME}/go/bin
export PATH=$PATH:${HOME}/.pdtm/go/bin
# Created by `pipx` on 2024-06-27 10:33:39
export PATH="$PATH:${HOME}/.local/bin"

# Docker Aliases
alias dcr="sudo docker ps -a"
alias dcud="sudo docker compose up -d"
alias dcu="sudo docker compose up"
alias dcd="sudo docker compose down"
alias di="sudo docker images"

# VPN Aliases
alias htbm="sudo openvpn ~/Documents/VPN/htb-machines.ovpn"
alias htbe="sudo openvpn ~/Documents/VPN/htb-endgames.ovpn"
alias htse="sudo openvpn ~/Documents/VPN/htb-seasonal.ovpn"
# alias xxx="sudo openvpn ~/Documents/VPN/xxxxx.ovpn"
# alias xxx="sudo openvpn ~/Documents/VPN/xxxxx.ovpn"
# alias xxx="sudo openvpn ~/Documents/VPN/xxxxx.ovpn"
# alias xxx="sudo openvpn ~/Documents/VPN/xxxxx.ovpn"

# Nmap Aliases

alias fpsw="sudo nmap -sCV -T4 -A -p- -v -Pn -oA nmap-results"
alias fpsl="sudo nmap -sCV -T4 -A -p- -v -oA nmap-results"
alias anarchy="/opt/username-anarchy/anarchy"
alias hunt="cat ~/Desktop/commands.txt | grep "

# Misc Aliases

alias z="nano ~/.zshrc"
alias pc="pwncat-cs -lp"
alias lp="cp ~/Documents/Tools/compiled-binaries/Scripts/linpeas.sh ."
alias serve="echo "Web server URL: http://$(ifconfig tun0 | grep 'inet ' | awk '{print $2}'):8080/" && python3 -m http.server 8080"

# SSH Sessions
alias vale="ssh xxxxx@xxx.xx.xx.xx"
alias rt="ssh xxxx@xxx.xx.xx.xx"