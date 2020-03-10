# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: wbarendr <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2020/03/06 17:28:19 by wbarendr       #+#    #+#                 #
#    Updated: 2020/03/10 18:54:40 by wbarendr      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRCS = ft_strlen.s ft_strcpy.s ft_write.s ft_strcmp.s ft_read.s ft_strdup.s

OFILES  = $(SRCS:.s=.o)

NASM_FLAGS = nasm -f macho64

all: $(NAME)

$(NAME): $(OFILES)
	ar rcs $(NAME) $(OFILES)

%.o: %.s
		$(NASM_FLAGS) $<

test:
	clang -o run test.c libasm.a
	./run

clean:
	rm -f $(OFILES)
	rm -f a.out

fclean: clean
	rm -f $(NAME)
	rm -f run

re: fclean all
