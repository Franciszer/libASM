/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: frthierr <frthierr@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/28 13:19:54 by frthierr          #+#    #+#             */
/*   Updated: 2020/05/29 14:20:08 by frthierr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int	main()
{
	int		i;
	long	r;
	char	buffer[100];
	char	*tmp;
	char	*tmp2;

	r = 0;
	i = 0;
	bzero(buffer, 100);
	int fd = open("test_write.txt", O_WRONLY | O_CREAT);

		
	printf("__FT_STRLEN__\n\n");
	STRLEN("")
	STRLEN("toto")
	STRLEN("totototo")
	STRLEN("0123456789abcdef")
	STRLEN("42")
	STRLEN("1")
	printf("DONE!\n\n");
	
	printf("__FT_STRCMP__\n\n");
	STRCMP("", "")
	STRCMP("toto", "toto")
	STRCMP("", "toto")
	STRCMP("toto", "")
	STRCMP("toto", "totobar")
	printf("DONE!\n\n");
	
	printf("__FT_STRCPY__\n\n");
	printf("`%s` (`toto`)\n", ft_strcpy(buffer, "toto"));
	printf("`%s` (empty)\n", ft_strcpy(buffer, ""));
	printf("`%s` (`long message`)\n", ft_strcpy(buffer, "long message"));
	printf("`%s` (NULL > not modified)\n", ft_strcpy(buffer, NULL));
	printf("DONE!\n\n");

	printf("\n__FT_STRDUP__\n\n");
	tmp2 = ft_strdup("toto");
	DUP(tmp2)
	free(tmp2);
	DUP("totobar")
	DUP("long message")
	DUP("")
	DUP(NULL)
	printf("DONE!\n");
	
	printf("__WRITE__\n\n");
	char test_std_output[] = "This will be output to standard out\n";
	char test_tofile[] = "This will be output to test_write\n";
	ft_write(1, test_std_output, ft_strlen(test_std_output));
	ft_write(fd, test_tofile, ft_strlen(test_tofile));
	printf("DONE!\n\n");
	
	printf("__FT_READ__\n\n");
	int	fd_read = open("test_read.txt", O_RDONLY);
	bzero(buffer, 100);
	ft_read(fd_read, buffer, 99);
	printf("%s\n\n", buffer);
	printf("Type some text to test ft_read on standard output (100 characters max due to the size of the buffer):\n");
	bzero(buffer, 100);
	ft_read(1, buffer, 100);
	printf("read: %s\n", buffer);
	printf("DONE!\n\n");
	
	return 0;
}