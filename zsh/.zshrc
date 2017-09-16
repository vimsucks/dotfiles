# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#export GOPATH=~/go
#export WORKON_HOME=~/.virtualenvs
#export PATH=$HOME/Scripts:$HOME/.local/bin:/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.node_modules/bin:/opt/android-sdk/platform-tools:$GOPATH/bin:$PATH
#export WORKON_HOME=$HOME/.virtualenv # virtualenv path
#export EDITOR=nvim
#export ANDROID_HOME=/opt/android-sdk

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"
#ZSH_THEME="agnoster"

# Prompt Variables Override
SPACESHIP_NODE_SHOW=true
SPACESHIP_PYTHON_SHOW=true
SPACESHIP_RUBY_SHOW=false
SPACESHIP_XCODE_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_SWIFT_SHOW=false

# automatically find new executables
zstyle ':completion:*' rehash true

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colorize git autojump virtualz gitignore zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

setopt nosharehistory
#setopt noincappendhistory

# Plugin Settings


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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="nvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias npm="snpm"
alias youp="you-get -p bomi"
alias c11="clang++ -std=c++11 -Wall -Weffc++ -Wextra -pedantic -O3"
alias pacr="sudo pacman -Rsc"
alias pacsu="sudo pacman -Su"
alias pacsyu="yaourt -Syu --aur"
alias pacsyut="yaourt -Syu --aur --tmp ~/Temp"
alias pacsyutn="yaourt -Syu --aur --tmp ~/Pkg --noconfirm"
alias tmuxa="tmux attach"
alias sc="systemctl"
alias ssc="sudo systemctl"
alias ssp="https_proxy=\"http://127.0.0.1:7777/\" http_proxy=\"http://127.0.0.1:7777/\""
alias sspdo="https_proxy=\"http://127.0.0.1:7777/\" http_proxy=\"http://127.0.0.1:7777/\""
alias sspbwg="https_proxy=\"http://127.0.0.1:7778/\" http_proxy=\"http://127.0.0.1:7778/\""
alias sspl="https_proxy=\"http://127.0.0.1:7777/\" http_proxy=\"http://127.0.0.1:7777/\" fc -e : -1"
alias sspa="https_proxy=\"http://127.0.0.1:7777/\" http_proxy=\"http://127.0.0.1:7777/\" aria2c"
alias pg="ps aux | grep -i"
alias cmdx="chmod +x"
alias x="xsel --clipboard --output"

# Key bindings
#bindkey "^P" up-line-or-search
#bindkey "^N" down-line-or-search

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#source /usr/share/nvm/init-nvm.sh
#eval $(thefuck --alias)

nvm() {
	SPACESHIP_NODE_SHOW=true
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
}
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
transfer() {
    # write to output to tmpfile because of progress bar
    tmpfile=$( mktemp -t transferXXX )
    curl --progress-bar --upload-file $1 https://transfer.sh/$(basename $1) >> $tmpfile;
    cat $tmpfile;
    rm -f $tmpfile;
}
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

source ~/.zshenv


source "/home/vimsucks/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
