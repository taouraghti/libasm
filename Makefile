# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aidrissi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/08 14:49:13 by aidrissi          #+#    #+#              #
#    Updated: 2020/03/10 14:58:30 by aidrissi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRCS = ft_strdup.s ft_strcpy.s ft_strlen.s\
		ft_strcmp.s ft_write.s ft_read.s

OUTS = $(SRCS:.s=.o)

NASM = nasm -f macho64

FLAG = -Wall -Wextra -Werror

all : $(NAME)

$(NAME) : $(OUTS) 
		ar rcs $(NAME) $(OUTS)

%.o : %.s 
		$(NASM) $<

main:
		@gcc $(FLAG) main.c $(NAME)

clean :
	    rm -rf $(OUTS)

fclean : clean
		rm -rf $(NAME)

re : fclean all
