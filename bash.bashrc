
PATH=$PATH:

shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth
alias clear='clear && neofetch --ascii_distro $random'
random=$(shuf -n1 /data/data/com.termux/files/usr/etc/.distro)
clear
PS1='
\[\e[0;93m\]\w\[\e[0m\] [ \[\e[0;91m\]zai\[\e[0m\].\[\e[91m\]project\[\e[93m\]0\[\e[0m\] ]: '
echo ""

PROMPT_DIRTRIM=2
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

