# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    ft_write.s                                         :+:    :+:             #
#                                                      +:+                     #
#    By: wbarendr <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2020/03/06 17:51:01 by wbarendr       #+#    #+#                 #
#    Updated: 2020/03/09 11:02:11 by wbarendr      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_write
_ft_write:
		mov			rax, 0x2000004
		syscall
		jc			error
		ret
error:
		mov			rax, -1
		ret
