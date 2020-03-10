# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    ft_strcmp.s                                        :+:    :+:             #
#                                                      +:+                     #
#    By: wbarendr <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2020/03/04 20:07:09 by wbarendr       #+#    #+#                 #
#    Updated: 2020/03/10 11:50:32 by wbarendr      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_strcmp
_ft_strcmp:
		mov		rcx, 0
loop:
		mov		rax, 0
		mov		al, [rdi]
		mov		cl, [rsi]
		cmp		al, 0
		jz		first_end
		inc		rdi
		inc		rsi
		sub		rax, rcx
		jz		loop
		ret
first_end:
		sub		rax, rcx
		ret
