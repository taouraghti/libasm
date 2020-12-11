# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aidrissi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/08 14:46:59 by aidrissi          #+#    #+#              #
#    Updated: 2020/03/10 14:56:56 by aidrissi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strdup
extern _ft_strlen
extern _ft_strcpy
extern _malloc
_ft_strdup:
        cmp rdi,0
        je error
start:
        call _ft_strlen
        push rdi
        mov rdi,rax
        inc rdi
        call _malloc
        pop rsi
        cmp rax,0
        je error
        mov rdi,rax
copy:
        call _ft_strcpy
        jmp return
error:
        mov rax,0
return:
        ret
