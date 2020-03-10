# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    ft_strlen.s                                        :+:    :+:             #
#                                                      +:+                     #
#    By: wbarendr <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2020/03/04 14:16:54 by wbarendr       #+#    #+#                 #
#    Updated: 2020/03/09 18:22:53 by wbarendr      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

section	.text
		global	_ft_strlen

_ft_strlen:
			mov		rax, -1				; set value to -1
loop:
			inc		rax					; value++
			cmp		BYTE [rdi + rax], 0	; str[i] == 0
			jne		loop
return:
			ret							; return i
