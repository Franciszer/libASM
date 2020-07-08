/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   testfile.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: franciszer <franciszer@student.42.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/08 09:28:03 by franciszer        #+#    #+#             */
/*   Updated: 2020/07/08 10:22:57 by franciszer       ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdio.h>
#include <errno.h>
#include "libasm.h"

int	main()
{
	ssize_t ret;
	if ((ret = ft_read(-2131, "ww", 2)) == -1)
		printf("errno: %s\n", strerror(errno));
	printf("%ld\n", ret);
}	