# dotfiles
just my dotfiles

not guaranteed to work with everyone's setups.

##some notes:

Tricks taken from StreakyCobra and atlassian.com

##Setup:

git init --bare $HOME/.cfg

##To some other machine:

git clone --bare https://github.com/USERNAME/dotfiles.git $HOME/.dotfiles

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

dotfiles checkout

##Combat some issues with existing files:

mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}




...
