#
# ~/.bash_profile
#

### Add home to path. Needed for git-so-fancy ###
PATH=$PATH:~

[[ -f ~/.extend.bash_profile ]] && . ~/.extend.bash_profile
[[ -f ~/.bashrc ]] && . ~/.bashrc

