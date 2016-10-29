# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
function _update_ps1() {
    PS1="$(~/Downloads/powerline-shell-master/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1;history -a; history -n; $PROMPT_COMMAND"
fi

alias 210='cd /home/ndesh/Desktop/Studies/4sem/cs210'
alias 220='cd /home/ndesh/Desktop/Studies/4sem/cs220'
alias 251='cd /home/ndesh/Desktop/Studies/4sem/cs251'
alias 201='cd /home/ndesh/Desktop/Studies/4sem/mso201'
alias 151='cd /home/ndesh/Desktop/Studies/4sem/psy151'
alias 202='cd /home/ndesh/Desktop/Studies/4sem/ta202'
alias 330='cd /home/ndesh/Desktop/Studies/5sem/cs330'
alias 340='cd /home/ndesh/Desktop/Studies/5sem/cs340'
alias 345='cd /home/ndesh/Desktop/Studies/5sem/cs345'
alias 252='cd /home/ndesh/Desktop/Studies/5sem/cs252'
alias 203='cd /home/ndesh/Desktop/Studies/5sem/eso203'
alias 300='cd /home/ndesh/Desktop/Studies/5sem/cs300'
alias e='cd /run/media/ndesh/E'

alias upd='sudo dnf update'
alias inst='sudo dnf install'
alias me='sudo ~/.scripts/mount.sh E sda4'
alias mfed='sudo ~/.scripts/mount.sh F sda5'
alias m='sudo ~/.scripts/mount.sh'
alias mydrv='LIBGL_DRIVERS_PATH=~/mesa/lib LD_LIBRARY_PATH=~/mesa/lib:${LD_LIBRARY_PATH} $@'


LD_LIBRARY_PATH=~/Downloads/leda/LEDA 
export LD_LIBRARY_PATH

export HISTFILESIZE=
export HISTSIZE=
export JAVA_HOME=/usr/java/jdk1.8.0_102/