#!/bin/bash

# Projects
function site ()
{
    cd ~/Sites
    if [[ $# > 0 ]]; then
        cd $@
    fi
}

alias kirby='server kirby $@'

# Convert .mov (QuickTime videos) to .mp4
function mov2mp4 ()
{
    base=`basename $1 .mov`
    ffmpeg -i $1 $base.mp4
}

# GIT
function git_change_author ()
{
    if [[ $# < 3 ]]; then
        echo "Usage $FUNCNAME <old email> <new name> <new email>"
        return
    fi

    oldEmail="$1"
    newName="$2"
    newEmail="$3"
    git filter-branch -f --commit-filter '
        if [ "$GIT_COMMITTER_EMAIL" = "'"$oldEmail"'" ];
        then
            GIT_COMMITTER_NAME="'"$newName"'";
            GIT_AUTHOR_NAME="'"$newName"'";
            GIT_COMMITTER_EMAIL="'"$newEmail"'";
            GIT_AUTHOR_EMAIL="'"$newEmail"'";
            git commit-tree "$@";
        else
            git commit-tree "$@";
        fi' HEAD
}


# Capkod :)
if [[ -f ~/.capkod.bash ]]; then
    . ~/.capkod.bash
fi

# Perso...
function instlr ()
{
    USER_EMAIL="jacques@bodin-hullin.net" \
    USER_NAME="Jacques Bodin-Hullin" \
    COMPANY_NAME="Jacques Bodin-Hullin" \
    COMPANY_NAME_SHORT="jacquesbh" \
    COMPANY_URL="http://jacques.sh" \
    php -f ~/Sites/Installer/Installer.php
}

# Mr Biz
function mrbiz ()
{
    USER_EMAIL="jacques.bodinhullin@monsieurbiz.com" \
    USER_NAME="Jacques Bodin-Hullin" \
    COMPANY_NAME="Monsieur Biz" \
    COMPANY_NAME_SHORT="mrbiz" \
    COMPANY_URL="http://monsieurbiz.com" \
    php -f ~/Sites/Installer/Installer.php
}
