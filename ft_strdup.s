# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    ft_strdup.s                                        :+:    :+:             #
#                                                      +:+                     #
#    By: wbarendr <wbarendr@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2020/03/09 11:38:06 by wbarendr       #+#    #+#                 #
#    Updated: 2020/03/10 15:55:58 by wbarendr      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

section .text
			global _ft_strdup
			extern _malloc
			extern _ft_strcpy
			extern _ft_strlen

_ft_strdup:
			push		rdi
			call		_ft_strlen

malloc_str:
			inc			rax
			mov			rdi, rax
			call		_malloc
			cmp			rax, 0
			jne			copy_str
			pop			rdi
			xor			rax, rax
			ret

copy_str:
			pop			rsi
			mov			rdi, rax
			call		_ft_strcpy
			ret
