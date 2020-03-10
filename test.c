/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   test.c                                             :+:    :+:            */
/*                                                     +:+                    */
/*   By: wbarendr <wbarendr@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/03/10 18:05:47 by wbarendr       #+#    #+#                */
/*   Updated: 2020/03/10 18:51:06 by wbarendr      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>

size_t		ft_strlen(const char *str);

char		*ft_strcpy(char *dst, const char *src);

int			ft_strcmp(const char *s1, const char *s2);

ssize_t		ft_write(int fildes, const void *buf, size_t nbyte);

ssize_t		ft_read(int fildes, void *buf, size_t nbyte);

char 		*ft_strdup(const char *s1);

int main(void)
{
	char *str_len = "ik ben 14 lang";
	
	char cpy_dst[15]; 
	char *cpy_src =  "copy me pls";
	
	char *cmp_s1 = "hello";
	char *cmp_s2 = "hekko";

	char *str_dup = "duplicate me pls";
	
	int fd1;
	int fd2;
	char buf1[100];
	char buf2[100];
	int i;
	
	printf("ft_strlen: %zu\n", ft_strlen(str_len));
	printf("   strlen: %zu\n", strlen(str_len));
	
	printf("ft_strcpy: %s\n", ft_strcpy(cpy_dst, cpy_src));
	printf("   strcpy: %s\n", strcpy(cpy_dst, cpy_src));

	printf("ft_strcmp: %d\n", ft_strcmp(cmp_s1, cmp_s2));
	printf("   strcmp: %d\n", strcmp(cmp_s1, cmp_s2));
	
	printf("ft_strdup: %s\n", ft_strdup(str_dup));
	printf("   strdup: %s\n", strdup(str_dup));

	fd1 = open("text.txt", O_RDWR);
	fd2 = open("text.txt", O_RDWR);
	
	//ft_write(fd1, "is ft_write working?", 20);
	ft_read(fd1, buf1, 100);
	i = 0;
	while (buf1[i])
	{
		ft_write(1, &buf1[i], 1);
		i++;
	}
	//write(fd2, "is write working?", 17);
	read(fd2, buf2, 100);
	i = 0;
	while (buf2[i])
	{
		write(1, &buf2[i], 1);
		i++;
	}
	return (0);
}