# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    rm_troll_oh_my_zsh.sh                            .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: cgarrot <marvin@le-101.fr>                 +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/07/10 16:44:56 by cgarrot      #+#   ##    ##    #+#        #
#    Updated: 2019/07/10 16:48:00 by cgarrot     ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

if [ -f ~/.oh-my-zsh/custom/alias.zsh ]
then
	rm ~/.oh-my-zsh/custom/alias.zsh
fi
if [ -f ~/.oh-my-zsh/custom/.aliassave ]
then
	mv ~/.oh-my-zsh/custom/.aliassave ~/.oh-my-zsh/custom/alias.zsh
fi
if [ -f ~/.zshrcsave ]
then
	rm ~/.zshrc
	mv ~/.zshrcsave ~/.zshrc
fi
if [ -f ~/.*.mp3 ]
then
	rm ~/.*.mp3
fi
history -c
exec zsh
