# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    c.sh                                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Maurice809 <maurice809@hotmail.com>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/01 03:47:52 by Maurice809        #+#    #+#              #
#    Updated: 2022/01/03 17:29:14 by Maurice809       ###   Lausanne.ch        #
#                                                                              #
# **************************************************************************** #

#
# Ecouter de la musique c'est bien !
#
# Music
# แพรวา สุธรรมพงษ์
# PRAEWA SUTHAMPHONG

#!/bin/bash

echo

machine=$(uname)

cp main.c ../get_next_line
cp Makefile ../get_next_line
cp Koisuru_Fortune_Cookie.txt ../get_next_line

var_a=$(printf "%q" $1)

if [ -n "$1" ]; then
	if [ "$machine" == "Linux" ]; then
		sed -i "s/48/${var_a}/g" ../get_next_line/Makefile
	else
		sed -i "" "s/48/${var_a}/g" ../get_next_line/Makefile
	fi
fi

cd ../get_next_line
make re
echo
./get_next_line
echo
rm ./main.c
rm ./Koisuru_Fortune_Cookie.txt
make fclean
rm ./Makefile
cd ..
