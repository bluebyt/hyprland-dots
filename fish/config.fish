set fish_greeting
#neofetch --off --block_range 0 7
#neofetch
neofetch --block_range 0 7
#alias c="clear; neofetch --off --block_range 0 7"
alias c="clear; neofetch --block_range 0 7"
alias update="sudo pacman -Syu"
alias pipe="$HOME/Active/color-scripts/color-scripts/./pipes2"
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
alias play='ncmpcpp'
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias pacmandir= 'pacman -Ql' #To retrieve a list of the files installed by a package
alias pacmanR= 'pacman -Rs' #To remove a package and its dependencies
alias pacmanQ= 'pacman -Qs' #To search for already installed packages
alias pacmanQi= 'pacman -Qi' #To display information about locally installed packages
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'  # remove orphaned packages
alias clean='sudo pacman -Sc' #removing old packages from cache
#alias extract='for i in *.rar; do unrar x -o+ "$i"; end' 
. ~/.config/fish/functions/noti.fish
starship init fish | source
