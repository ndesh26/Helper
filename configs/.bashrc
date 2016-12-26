# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
function _update_ps1() {
    PS1="$(~/.powerline/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1;history -a; history -n; $PROMPT_COMMAND"
fi

alias 210='cd ~/Studies/4sem/cs210'
alias 220='cd ~/Studies/4sem/cs220'
alias 251='cd ~/Studies/4sem/cs251'
alias 201='cd ~/Studies/4sem/mso201'
alias 151='cd ~/Studies/4sem/psy151'
alias 202='cd ~/Studies/4sem/ta202'
alias 330='cd ~/Studies/5sem/cs330'
alias 340='cd ~/Studies/5sem/cs340'
alias 345='cd ~/Studies/5sem/cs345'
alias 252='cd ~/Studies/5sem/cs252'
alias 203='cd ~/Studies/5sem/eso203'
alias 300='cd ~/Studies/5sem/cs300'
alias e='cd /run/media/ndesh/E'

alias upd='sudo dnf update'
alias inst='sudo dnf install'
alias me='sudo ~/.scripts/mount.sh E sda7'
alias mfed='sudo ~/.scripts/mount.sh F sda6'
alias m='sudo ~/.scripts/mount.sh'
alias mydrv='LIBGL_DRIVERS_PATH=~/mesa/lib LD_LIBRARY_PATH=~/mesa/lib:${LD_LIBRARY_PATH} $@'

alias mesa='~/.scripts/make-mesa.sh'
alias linux='~/.scripts/linux-build.sh'
alias list-kernel='~/.scripts/list-kernels.sh'
alias delete-kernel='~/.scripts/delete-kernels.sh'

LD_LIBRARY_PATH=~/Downloads/leda/LEDA 
export LD_LIBRARY_PATH

export HISTFILESIZE=
export HISTSIZE=
export JAVA_HOME=/usr/java/jdk1.8.0_102/
export PATH="$PATH:/home/$USER/arcanist/arcanist/bin/:/home/$USER/Downloads/android-studio/bin/"
export EDITOR="vim"
export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk-1.8.0.111-3.b16.fc25.x86_64
