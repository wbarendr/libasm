# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    ft_strcpy.s                                        :+:    :+:             #
#                                                      +:+                     #
#    By: wbarendr <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2020/03/04 15:17:17 by wbarendr       #+#    #+#                 #
#    Updated: 2020/03/10 14:48:16 by wbarendr      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_strcpy

_ft_strcpy:
		mov		rax, -1					; value = -1
loop:
		inc		rax						; value++
		mov		dl, byte[rsi + rax]		; save byte in dl
		mov		byte[rdi + rax], dl		; put byte back in dst
		cmp		dl, 0
		jne		loop
return:
		mov		rax, rdi				; put counter to start of dst
		ret
