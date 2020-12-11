# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aidrissi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/08 14:45:51 by aidrissi          #+#    #+#              #
#    Updated: 2020/03/10 14:56:43 by aidrissi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strcpy
_ft_strcpy:
        mov rcx,0
        cmp rsi,0
        jz return
        jmp copy
increment:
		inc rcx
copy:
	mov dl,BYTE[rsi + rcx]
        mov BYTE[rdi + rcx],dl
        cmp dl,0
        jne increment
return:
        mov rax,rdi
        ret
