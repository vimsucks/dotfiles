export GOPATH=~/.go
export WORKON_HOME=~/.virtualenvs
#export PATH=$HOME/Scripts:$HOME/.local/bin:/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.node_modules/bin:/opt/android-sdk/platform-tools:$GOPATH/bin:$PATH
export WORKON_HOME=$HOME/.virtualenv # virtualenv path
export EDITOR=nvim
export ANDROID_HOME=/opt/android-sdk
export FZF_DEFAULT_COMMAND='ag -g "" -f'

typeset -U path
path=($HOME/Scripts $HOME/.local/bin /bin /usr/bin /usr/local/bin /usr/local/sbin /opt/android-sdk/platform-tools /opt/android-sdk/tools /usr/lib/jvm/default/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl $HOME/.node_modules/bin /opt/android-sdk/platform-tools $GOPATH/bin $path[@])
