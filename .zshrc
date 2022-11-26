# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/
export ZSH=$ZSH

export XDG_CONFIG_HOME="$HOME/.config/"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="amuse"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

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
HISTSIZE=50000
SAVEHIST=$HISTSIZE
export HISTFILE="$XDG_DATA_HOME"/zsh/history

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(common-aliases mvn sudo web-search colored-man-pages django systemd
         virtualenv)

# User configuration

export PATH=$HOME/.local/bin:/usr/local/bin:$PATH
export EDITOR=vim
# export MANPATH="/usr/local/man:$MANPATH"


# You may need to manually set your language environment
export LANG=en_US.UTF-8

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
alias xclip="/usr/bin/xclip -selection c"
alias ptpb="curl -F 'f:1=<-' ix.io"
alias scap='maim -s ~/Downloads/scrot_$(date "+%Y%m%d_%H%M%S").png'
alias ssh='TERM=linux ssh'
alias e="emacsclient -s instance1 -n "
alias dc="docker-compose"
alias pip-upgrade="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
alias wsjtx="/usr/bin/wsjtx --stylesheet :/qdarkstyle/style.qss"
# git
alias gp="git pull"
alias gch="git checkout"
loop() { n=$1; shift; for run in {1..$n}; do $@; done }
loopp() { n=$1; shift; for run in {1..$n}; do $@ &; done }

# default user:
DEFAULT_USER='marcin'

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
fi
export GPG_TTY=$(tty)
echo "UPDATESTARTUPTTY" | gpg-connect-agent > /dev/null 2>&1

source /usr/share/doc/pkgfile/command-not-found.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh
source "$XDG_CONFIG_HOME/xdg_war.sh"
unalias wget
wget() { curl "$1" -o `basename "$1"` }

# User-specific config
unalias rm # rm -i
export CHROOT=$HOME/chroot
export TERMINAL=alacritty
export DOCKER_BUILDKIT=1
export BUILDKIT_PROGRESS=plain
zstyle ':completion:*' rehash true
bindkey '^H' backward-kill-word

# fzf
source /usr/share/fzf/key-bindings.zsh
