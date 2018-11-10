# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# some more ls aliases
alias ll='ls -alh'
alias la='ls -A'
alias l='ls -CF'

# User specific aliases and functions
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
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
alias 422='cd ~/Studies/6sem/cs422'
alias 315='cd ~/Studies/6sem/cs315'
alias 628='cd ~/Studies/6sem/cs628'
alias 335='cd ~/Studies/6sem/cs335'
alias 455='cd ~/Studies/6sem/phi455'
alias 771='cd ~/Studies/7sem/cs771'
alias 425='cd ~/Studies/7sem/cs425'
alias 451='cd ~/Studies/7sem/psy451'
alias 698='cd ~/Studies/7sem/cs698y'
alias 202='cd ~/Studies/7sem/mso202'
alias ugp='cd ~/Studies/7sem/ugp'
alias 401='cd ~/Studies/8sem/art401'
alias 653='cd ~/Studies/8sem/cs653'
alias 698='cd ~/Studies/8sem/cs698e'
alias ugp='cd ~/Studies/8sem/ugp'

alias e='cd /run/media/ndesh/E'

alias upd='sudo dnf update'
alias inst='sudo dnf install'
alias me='sudo ~/.scripts/mount.sh E sda9'
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

# added by travis gem
[ -f /home/ndesh/.travis/travis.sh ] && source /home/ndesh/.travis/travis.sh

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
