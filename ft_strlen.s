# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aidrissi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/08 14:42:50 by aidrissi          #+#    #+#              #
#    Updated: 2020/03/10 14:57:06 by aidrissi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strlen
_ft_strlen:
        mov rax,0
        jmp compare
compare:
        cmp BYTE[rdi + rax] , 0
        je return
        inc rax
        jmp compare
return:
        ret
