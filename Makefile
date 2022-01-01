# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mort0707 <maurice809@xfk77.com>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/20 00:00:77 by mort0707          #+#    #+#              #
#    Updated: 2022/01/01 04:46:36 by tmoret           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#
# Faire des applications pour Mobile, C'est l'avenir !
#
# Mobile
# พิมรภัส ผดุงวัฒนะโชค
# PIMRAPAT PHADUNGWATANACHOK

NAME        =   get_next_line

SRC_NAME    =   main.c get_next_line.c get_next_line_utils.c

OBJ_NAME    =   $(SRC_NAME:.c=.o)

SRC         =   $(SRC_NAME)

# Choix du compilateur
C=cc

# Choix des flags de compilation
CFLAGS=-Wall -Werror -Wextra -D BUFFER_SIZE=48

all:    $(NAME)

$(NAME):
	$(CC) -o $(NAME) $(CFLAGS) $(SRC) 

 
clean:
	rm -rf $(OBJ_NAME)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY:			all clean fclean re
