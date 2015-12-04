
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi


alias mq='hg -R $(hg root)/.hg/patches'
vim()
{
    # osx users, use stty -g
    local STTYOPTS="$(stty --save)"
    stty stop '' -ixoff
    command vim "$@"
    stty "$STTYOPTS"
}
export MODULEPATH=$MODULEPATH:/home/hangzhang/.local/modules/

export CSCOPE_DB=/home/hangzhang/global/cscopeDB
