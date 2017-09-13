#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion


################# Defined by Matt Wycklendt ###################################
export VISUAL=vim
export EDITOR="$VISUAL"

export VF_BUILD_CPUS=2
export VAGRANT_CPUS=2
export VAGRANT_MEM=6144
export VAGRANT_SHARE_NFS=1

export OS_USERNAME=mwycklendt
export OS_TENANT_NAME=vflow
export OS_AUTH_URL=http://openstack:35357/v2.0

export TERM=xterm-16color

### virtualenv ###
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/bin/virtualenvwrapper.sh
# On Ubuntu it is:
#source /usr/local/bin/virtualenvwrapper.sh

### git bash prompt ###
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Custom
source ~/.bash-git-prompt/gitprompt.sh

### Normal bash prompt ###
export PS1="\[\e[33m\]\w\[\e[m\]\[\e[37m\]😎\[\e[m\] "

