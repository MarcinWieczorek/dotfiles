

# dotfile-war [CONFIRMED]
export CCACHE_DIR="$XDG_CACHE_HOME/ccache"
export ATOM_HOME="$XDG_DATA_HOME/atom"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export TASKDATA="$XDG_DATA_HOME"/task
export TASKRC="$XDG_CONFIG_HOME"/task/taskrc
# confirm
alias abook='/usr/bin/abook --config "$XDG_CONFIG_HOME"/abook/abookrc --datafile "$XDG_DATA_HOME"/abook/addressbook'
alias mbsync="mbsync -c $XDG_CONFIG_HOME/isync/mbsyncrc"
export NVM_DIR="$XDG_DATA_HOME"/nvm
export ANSIBLE_CONFIG="$XDG_CONFIG_HOME/ansible/ansible.cfg"
# might want to change
export SQLITE_HISTORY=$XDG_DATA_HOME/sqlite_history
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export PSQL_HISTORY="$XDG_CACHE_HOME/pg/psql_history"
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export WAKATIME_HOME="$XDG_CONFIG_HOME"/wakatime/
which compinit 2>/dev/null 1>&2 && compinit -d $XDG_CACHE_HOME/zcompdump-$ZSH_VERSION
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export GOPATH="$XDG_DATA_HOME"/go
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
export WEECHAT_HOME="$XDG_CONFIG_HOME"/weechat
alias weechat='/usr/bin/weechat -d "$XDG_CONFIG_HOME"/weechat'

# broken
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
