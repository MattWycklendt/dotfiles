################# Defined by Matt Wycklendt ###################################
set -o vi
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
source /usr/local/bin/virtualenvwrapper.sh
