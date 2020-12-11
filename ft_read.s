# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aidrissi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/08 14:46:37 by aidrissi          #+#    #+#              #
#    Updated: 2020/03/10 14:56:06 by aidrissi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_read
_ft_read:
        mov rax,0x2000003
        syscall
        jc error
        jmp return
error:
        mov rax,-1
return:
        ret
