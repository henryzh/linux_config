# Path to your oh-my-zsh installation.
export ZSH=/home/hangzhang/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump)

# User configuration

#export PATH="/opt/openmpi/bin/:/usr/local/bin/:/sw/bin:/opt/intel/composer_xe_2013_sp1.0.080/bin/intel64:/opt/intel/composer_xe_2013_sp1.0.080/mpirt/bin/intel64:/opt/intel/composer_xe_2013_sp1.0.080/debugger/gdb/intel64_mic/py26/bin:/opt/intel/composer_xe_2013_sp1.0.080/debugger/gdb/intel64/py26/bin:/opt/intel/composer_xe_2013_sp1.0.080/bin/intel64:/opt/intel/composer_xe_2013_sp1.0.080/bin/intel64_mic:/opt/intel/composer_xe_2013_sp1.0.080/debugger/gui/intel64:/home/hangzhang/software/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/ibutils/bin:/home/hangzhang/bin"
export PATH="/home/hangzhang/local/clang/bin:/opt/openmpi/bin/:/usr/local/bin/:/sw/bin:/home/hangzhang/software/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/ibutils/bin:/home/hangzhang/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

vim() STTY=-ixon command vim "$@"

alias mq='hg -R $(hg root)/.hg/patches'
alias vi='vim'
setopt NO_BEEP
export MY_GPGPUSIM=/home/hangzhang/work_space/gpgpu-sim/
export CUDA_INSTALL_PATH=/home/hangzhang/local/cuda/4.0
export CUDAHOME=$CUDA_INSTALL_PATH
export PATH=/home/hangzhang/global/R/3.1.0/bin:/home/hangzhang/local/gnuplot/5.0/bin:/home/hangzhang/local/clang/bin:/home/hangzhang/software/bin:$CUDA_INSTALL_PATH/bin:$PATH

export NVIDIA_COMPUTE_SDK_LOCATION=/home/hangzhang/local/NVIDIA_GPU_Computing_SDK/4.0
export NVIDIA_CUDA_SDK_LOCATION=$NVIDIA_COMPUTE_SDK_LOCATION
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/hangzhang/software/lib:$CUDA_INSTALL_PATH/lib64:$CUDA_INSTALL_PATH/lib:$NVIDIA_COMPUTE_SDK_LOCATION/C/lib/
export LIBRARY_PATH=$LIBRARY_PATH:$NVIDIA_COMPUTE_SDK_LOCATION/C/lib/

export WORK_DIR=/home/hangzhang/work_space/script/projects/gpu_sttram
export CACHE=/home/hangzhang/work_space/script/projects/gpu_l1cache
DISABLE_AUTO_UPDATE="true"
export TERM=xterm-256color
