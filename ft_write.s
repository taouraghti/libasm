# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aidrissi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/10 14:57:12 by aidrissi          #+#    #+#              #
#    Updated: 2020/03/10 14:57:17 by aidrissi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_write
_ft_write:
        mov rax,0x2000004
        syscall
        jc error
        jmp return
error:
        mov rax,-1
return:
        ret
