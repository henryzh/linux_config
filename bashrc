# .bashrc
# setting bashrc by using scripts from cse.psu machine
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#xterm-color)
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#    ;;
#*)
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#    ;;
#esac

# Comment in the above and uncomment this below for a color prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
#if [ "$TERM" != "dumb" ]; then
#    eval "`dircolors -b`"
#    alias ls='ls --color=auto'
#    #alias dir='ls --color=auto --format=vertical'
#    #alias vdir='ls --color=auto --format=long'
#fi

# some more ls aliases
alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


#################
# module load
#################
#module load gcc/4.4.2



#echo "=================== Loading tools ===================="
module load mercurial
module load gcc/4.7.1
#module load gcc/4.8.2
module load boost/1.54.0
module load python/2.7.3
module load zlib/1.2.8
#echo "mercurial loaded!"
#module load swig/3.0.0
#echo "gcc loaded!"
#echo "python loaded!"
#module load scons
#echo "scons loaded!"
#module load swig
#echo "swig loaded!"
module load cmake
module load tmux/1.8 
#echo "cmake loaded!"
#module load opencv
#echo "opencv loaded!"
#module load ffmpeg
#echo "ffmpeg loaded!"
module load gstreamer
#echo "gstreamer loaded!"
#module load subversion
#echo "SVN loaded!"
#module load matlab/R2011a
#echo "matlab loaded!"
#echo "=================== Done ===================="
# User specific aliases and functions
#module load /gpfs/home/pzc139/work/hangzh/software/easybuild/modules/all/EasyBuild/2.0.0
#module unload intel/2015.0.090
#module unload intel/2013.0.079
# Automatically added by module
shopt -s expand_aliases

alias gem5="cd /gpfs/home/pzc139/work/database/software/gem5"
alias scratch="cd /gpfs/home/pzc139/scratch"

export CUDA_INSTALL_PATH=/gpfs/home/pzc139/work/cuda/cuda

#adding by zorrow
#export PATH=/gpfs/home/pzc139/work/hangzh/software/environment-modules/Modules/3.2.10/bin:/gpfs/home/pzc139/work/hangzh/software/bin:/gpfs/home/pzc139/pinplay/extras/pinplay/PinPoints/script/:/gpfs/home/pzc39/pinplay/extras/pinplay/PinPoints/bin:$PATH

export PATH=$PATH:/gpfs/home/pzc139/pinplay/extras/pinplay/PinPoints/script/:/gpfs/home/pzc39/pinplay/extras/pinplay/PinPoints/bin
export PATH=/gpfs/home/pzc139/work/hangzh/software/bin:/gpfs/home/pzc139/work/Software/alphaev67-unknown-linux-gnu/bin:$PATH
#export EASYBUILD_INSTALLPATH=/gpfs/home/pzc139/work/hangzh/modules
#export MODULEPATH=$MODULEPATH:/gpfs/home/pzc139/work/hangzh/software/easybuild/modules/all:/gpfs/home/pzc139/work/hangzh/modules/modules/all

#export PATH=/gpfs/home/pzc139/work/bin:$PATH
export GEM5_DIR=/gpfs/home/pzc139/work/hangzh/sim/gem5-gpu/gem5 
export NVMAIN_DIR=/gpfs/home/pzc139/work/hangzh/sim/gem5-gpu/nvmain
export OUTPUT=/gpfs/home/pzc139/work/hangzh/output/gem5/nvmain

export SCRIPT_DIR=/gpfs/home/pzc139/work/hangzh/gem5_nvmain/script/
export CSCOPE_DB=$SCRIPT_DIR/cscopeDB/
export PBS_WORK_DIR=/gpfs/home/pzc139/work/hangzh/output/gem5/single_pbs_out
export Mix_PBS_WORK_DIR=/gpfs/home/pzc139/work/hangzh/output/gem5/mix_pbs_out

alias ls='ls --color'
#"LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
#export LS_COLORS

export CUDAHOME=/gpfs/home/pzc139/work/hangzh/CUDA/cuda/
export NVIDIA_CUDA_SDK_LOCATION=/gpfs/home/pzc139/work/hangzh/CUDA/NVIDIA_GPU_Computing_SDK/C

export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/gpfs/home/pzc139/work/hangzh/software/kyotocabinet/include:/gpfs/home/pzc139/work/lib/FANN-2.0.0/include
export C_INCLUDE_PATH=$C_INCLUDE_PATH:/gpfs/home/pzc139/work/lib/FANN-2.0.0/include

#export PATH=$PATH:/gpfs/home/pzc139/work/hangzh/CUDA/cuda/bin
#export LD_LIBRARY_PATH=/usr/lib64:/lib64:/lib:/usr/lib:$LD_LIBRARY_PATH:/gpfs/home/pzc139/work/hangzh/CUDA/cuda/lib64:/gpfs/home/pzc139/work/hangzh/CUDA/cuda/lib#:/gpfs/home/pzc139/work/lib/FANN-2.0.0/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/gpfs/home/pzc139/work/lib/FANN-2.0.0/lib
#export LIBRARY_PATH=/lib64:/usr/lib64:$LIBRARY_PATH:/gpfs/home/pzc139/work/lib/FANN-2.0.0/lib
export LIBRARY_PATH=$LIBRARY_PATH:/gpfs/home/pzc139/work/lib/FANN-2.0.0/lib
export PYTHONPATH=$PYTHONPATH:/gpfs/home/pzc139/work/lib/pypng/lib/python2.7/site-packages
eval `dircolors ~/.dir_colors/dircolors.256dark`

# bash
# No ttyctl, so we need to save and then restore terminal settings
alias mq='hg -R $(hg root)/.hg/patches'
vim()
{
    # osx users, use stty -g
    local STTYOPTS="$(stty --save)"
    stty stop '' -ixoff
    command vim "$@"
    stty "$STTYOPTS"
}

