# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    ft_read.s                                          :+:    :+:             #
#                                                      +:+                     #
#    By: wbarendr <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2020/03/06 18:12:38 by wbarendr       #+#    #+#                 #
#    Updated: 2020/03/09 11:05:48 by wbarendr      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_read
_ft_read:
		mov			rax, 0x2000003
		syscall
		jc			error
		ret
error:
		mov			rax, -1
		ret
