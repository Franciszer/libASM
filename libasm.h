/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: franciszer <franciszer@student.42.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/28 13:17:04 by frthierr          #+#    #+#             */
/*   Updated: 2020/07/08 10:12:53 by franciszer       ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H

# define LIBASM_H

# include <unistd.h>

#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>

# define STRLEN(x)			printf("`%s` = %d (%d)\n", x, ft_strlen(x), (int)strlen(x));
# define STRCMP(a, b)		printf("`%s`:`%s` = %d (%d)\n", a, b, ft_strcmp(a, b), strcmp(a, b));
# define DUP(s)				tmp = ft_strdup(s); printf("`%s` (`%s`)\n", tmp, s); free(tmp); tmp = NULL;

int		ft_strlen(const char *s);
char	*ft_strcpy(char *dest, char *src);
int		ft_strcmp(char *s1, char *s2);
ssize_t	ft_read(int fd, void *buf, size_t nbyte);
ssize_t ft_write(int fd, void *buf, size_t nbyte);
char	*ft_strdup(const char *source);

#endif