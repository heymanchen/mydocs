# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew autojump mvn osx zshmarks)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/sbin:/Users/chenhaihua/bin"
# export MANPATH="/usr/local/man:$MANPATH"
set -o vi
export EDITOR='vim'
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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export GOROOT="/usr/local/opt/go/libexec"
#export GOBIN=$GOROOT/bin
#export GOPATH="/usr/local/opt/go/libexec:/Users/chenhaihua/mygo"
export GOPATH="/Users/chenhaihua/mygo"
launchctl setenv GOPATH /Users/chenhaihua/mygo
export PATH=$PATH:${GOPATH//://bin:}/bin
export PATH=$PATH:/Users/chenhaihua/.vim-go

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export HOMEBREW_GITHUB_API_TOKEN=57bd624deab3da357665232d19885567c29b492f

alias ssh122="ssh admin@10.0.128.122"
alias sshoffice="ssh chenhaihua474@relay-sh.pajkdc.com"
alias sshonline="ssh chenhaihua474@relay00.pajkdc.com"
alias gitlog="git log --graph --oneline --all"

alias grep="grep --color=auto"
alias tree="ls -R | grep ':$' | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias flushdns="dscacheutil -flushcache"
alias topmem='ps aux | sort -nk +4 | tail'
# http_trace: to show all HTTP packets
alias http_trace='pkt_trace port 80'
# tcp_trace: to show all TCP packets
alias tcp_trace='pkt_trace tcp'
alias -s html=subl   # 在命令行直接输入后缀为 html 的文件名，会在 sublime 中打开
alias -s rb=subl     # 在命令行直接输入 ruby 文件，会在 sublime text 中打开
alias -s py=subl       # 在命令行直接输入 python 文件，会用 ublime中打开，以下类似
alias -s js=vim
alias -s c=subl
alias -s java=vim
alias -s txt=vim
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

alias mysqlStart='/usr/local/bin/mysqld_safe &'
alias mysqlstop='/usr/local/bin/mysqladmin -u root -p shutdown' 
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

alias flushdns="dscacheutil -flushcache"
alias vpndns="sudo networksetup -setdnsservers Wi-Fi 10.0.128.252 10.0.128.253"

alias g="jump"
alias s="bookmark"
alias d="deletemark"
alias p="showmarks"
alias l="showmarks"

# man page highlight
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline]]]]]]]'

#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!
#[[ -s "/Users/chenhaihua/.jenv/bin/jenv-init.sh" ]] && source "/Users/chenhaihua/.jenv/bin/jenv-init.sh" && source "/Users/chenhaihua/.jenv/commands/completion.sh"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/chenhaihua/.gvm/bin/gvm-init.sh" ]] && source "/Users/chenhaihua/.gvm/bin/gvm-init.sh"

#source ~/.gvm/springboot/current/shell-completion/bash/spring
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
