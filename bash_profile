# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
# export PATH

#echo $PATH
# For intel
# Enable Intel Compilers
#. /opt/intel/composerxe/bin/compilervars.sh intel64
#  Add MPI

export PATH=/opt/openmpi/bin/:/usr/local/bin/:/sw/bin:$PATH
export LD_LIBRARY_PATH=/opt/openmpi/lib/:$LD_LIBRARY_PATH

if [ -f /home/hangzhang/software/bin/zsh ]; then
	export SHELL=/home/hangzhang/software/bin/zsh
	exec /home/hangzhang/software/bin/zsh -l
fi



# Portland compilers
#export PGI=/sw/pgi
#set PATH=/sw/pgi/linux86-64/2013/bin:$PATH

