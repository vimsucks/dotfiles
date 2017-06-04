export GOPATH=~/.go
export WORKON_HOME=~/.virtualenvs
#export PATH=$HOME/Scripts:$HOME/.local/bin:/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.node_modules/bin:/opt/android-sdk/platform-tools:$GOPATH/bin:$PATH
export WORKON_HOME=$HOME/.virtualenv # virtualenv path
export EDITOR=nvim
export ANDROID_HOME=/opt/android-sdk
export FZF_DEFAULT_COMMAND='ag -g "" -f'
# export PYENV_ROOT="$HOME/.pyenv"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

typeset -U path
path=($HOME/Scripts $HOME/.local/bin /bin /usr/bin /usr/local/bin /usr/local/sbin /opt/android-sdk/platform-tools /opt/android-sdk/tools /usr/lib/jvm/default/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl $HOME/.node_modules/bin /opt/android-sdk/platform-tools $GOPATH/bin /opt/cocos2d-x/tools/cocos2d-console/bin /opt/cocos2d-x/tools/cocos2d-console/plugins/plugin_package $path[@])

if [ -z "$(tty | grep tty)" ];then
	export JAVA_HOME=/usr/lib/jvm/java-7-jdk
	export PATH=$JAVA_HOME/bin:$PATH
fi
