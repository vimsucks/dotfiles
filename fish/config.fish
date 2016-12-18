# path
set GOPATH ~/go
set WORKON_HOME ~/.virtualenvs
set -x fish_user_paths $HOME/Scripts $HOME/.local/bin /bin /usr/bin /usr/local/bin /usr/local/sbin /opt/android-sdk/platform-tools /opt/android-sdk/tools /usr/lib/jvm/default/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl $HOME/.node_modules/bin $PATH /opt/android-sdk/platform-tools $fish_user_paths
set -x PYTHONPATH $HOME/.local/lib/python2.7/site-packages $HOME/.local/lib/python3.5/site-packages /usr/lib/python2.7/site-packages /usr/lib/python2.7/site-packages
set -x EDITOR nvim
set ANDROID_HOME /opt/android-sdk
set -x LANG en_US.UTF-8
set -x LC_NUMERIC en_US.UTF-8
set -x LC_TIME en_US.UTF-8
set -x LC_MONETARY en_US.UTF-8
set -x LC_PAPER en_US.UTF-8
set -x LC_MEASUREMENT en_US.UTF-8

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "$HOME/.config/omf"
#

#set -g Z_SCRIPT_PATH /usr/lib/z.sh
bind \ej accept-autosuggestion

set grc_plugin_execs ls cat cvs df diff dig gcc g++ ifconfig make mount mtr netstat ping ps tail traceroute wdiff
set grcplugin_ls --color -lh

function fish_greeting
echo "                   _ooOoo_"
echo "                  o8888888o"
echo "                  88"\ \ .\ \ "88"
echo "                  (| -_- |)"
echo "                  O\  =  /O"
echo "               ____/`---'\____"
echo "             .'  \\|       |// '."
echo "            /  \\\\|||  :  |||//  \\"
echo "           /  _||||| -:- |||||-  \\"
echo "           |   | \\\   -   /// |  |"
echo "           | \_|  ''\---/''  |   |"
echo "           \  .-\__  `-`  ___/-. /"
echo "         ___`. .'  /--.--\  `. . __"
echo "      .\"\" '<  `.___\_<|>_/___.'  >'\"\"."
echo "     | | :  `- \`.;`\ _ /`;.`/ - ` : | |"
echo "     \  \ `-.   \_ __\ /__ _/   .-` /  /"
echo "======`-.____`-.___\_____/___.-`____.-'======"
echo "                   `=---='"
end

function fish_user_key_bindgins
	fish_default_key_bindings
end

function ialias -d "set alias in an intelligent way."
    # if the current user is root, then there is no need to keep a
    # `sudo` prefix in commands.
    [ (id -u) -eq 0 ]; and set argv[2] (echo $argv[2] | sed -r 's/sudo\s+//')
    eval "function $argv[1]; $argv[2..-1] \$argv; end"
end
# alias
ialias youp "you-get -p smplayer"
ialias c11 "clang++ -std=c++11 -Wall -Weffc++ -Wextra -pedantic -O3"
ialias pacs "sudo pacman -S"
ialias pacr "sudo pacman -Rsc"
ialias pacsu "sudo pacman -Su"
ialias pacsyu "sudo pacman -Syyu"
ialias tmuxa "tmux attach"
ialias shad "env https_proxy=\"http://127.0.0.1:7777/\" http_proxy=\"http://127.0.0.1:7777/\""

#eval $(fasd --init auto)
eval (python -m virtualfish)

if test -n "$WINDOWID"
	transset-df --id "$WINDOWID" 0.75 > /dev/null
end

#startx at login
if status --is-login
		if test -z "$DISPLAY" -a "$XDG_VTNR" -eq "1"
				exec startx
		end
end

# use jdk-7 if not in tty
if test (tty | grep tty) -z
	set JAVA_HOME /usr/lib/jvm/java-7-jdk
	set PATH $JAVA_HOME/bin $PATH
end
