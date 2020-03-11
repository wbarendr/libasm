/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   test.c                                             :+:    :+:            */
/*                                                     +:+                    */
/*   By: wbarendr <wbarendr@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/03/10 18:05:47 by wbarendr       #+#    #+#                */
/*   Updated: 2020/03/11 11:20:53 by wbarendr      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

void		tester_three(int fd1, int fd2)
{
	int		i;
	int		ret;
	char	buf1[100];
	char	buf2[100];

	ret = ft_read(fd1, buf1, 100);
	buf1[ret] = 0;
	i = 0;
	while (buf1[i])
	{
		ft_write(1, &buf1[i], 1);
		i++;
	}
	ret = read(fd2, buf2, 100);
	buf2[ret] = 0;
	i = 0;
	while (buf2[i])
	{
		write(1, &buf2[i], 1);
		i++;
	}
}

void		tester_two(void)
{
	char	*str_dup;
	int		fd1;
	int		fd2;
	char	*new_text1;
	char	*new_text2;

	new_text1 = "is ft_write working?\n";
	new_text2 = "is    write working?\n";
	str_dup = "is strdup working?";
	printf("ft_strdup: %s\n", ft_strdup(str_dup));
	printf("   strdup: %s\n", strdup(str_dup));
	fd1 = open("text1.txt", O_RDWR);
	ft_write(fd1, new_text1, ft_strlen(new_text1));
	close(fd1);
	fd1 = open("text1.txt", O_RDWR);
	fd2 = open("text2.txt", O_RDWR);
	write(fd2, new_text2, strlen(new_text2));
	close(fd2);
	fd2 = open("text2.txt", O_RDWR);
	tester_three(fd1, fd2);
}

int			main(void)
{
	char	*str_len;
	char	cpy_dst[25];
	char	*cpy_src;
	char	*cmp_s1;
	char	*cmp_s2;

	str_len = "how long am I ?";
	cpy_src = "copy me pls";
	cmp_s1 = "hello";
	cmp_s2 = "hella";
	printf("   strlen: %zu\n", strlen(str_len));
	printf("ft_strlen: %zu\n", ft_strlen(str_len));
	printf("   strcpy: %s\n", strcpy(cpy_dst, cpy_src));
	printf("ft_strcpy: %s\n", ft_strcpy(cpy_dst, cpy_src));
	printf("   strcmp: %d\n", strcmp(cmp_s1, cmp_s2));
	printf("ft_strcmp: %d\n", ft_strcmp(cmp_s1, cmp_s2));
	tester_two();
	return (0);
}
