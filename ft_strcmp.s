# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aidrissi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/08 14:45:18 by aidrissi          #+#    #+#              #
#    Updated: 2020/03/10 14:56:26 by aidrissi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strcmp
_ft_strcmp:
        mov rcx,0
        mov rax,0
        mov rdx,0
start:
        mov al,BYTE[rdi+rcx]
        mov dl,BYTE[rsi+rcx]
        cmp al,dl
        jne first_cond
        cmp dl,0
        je second_cond
        inc rcx
        jmp start
first_cond:
        sub rax,rdx
        jmp return
second_cond:
        mov rax,0
return:
        ret
