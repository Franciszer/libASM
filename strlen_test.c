/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   strlen_test.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: franciszer <franciszer@student.42.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/07 12:24:04 by user42            #+#    #+#             */
/*   Updated: 2020/07/07 20:18:20 by franciszer       ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <stdio.h>

int main()
{
   char *tmp2;
   
   printf("\n__FT_STRDUP__\n\n");
	tmp2 = ft_strdup("toto");
	printf("%s\n", ft_strdup("hello"));
	free(tmp2);
	printf("%s\n", ft_strdup("totobar"));
	printf("%s\n", ft_strdup("long message"));
	printf("%s\n", ft_strdup(""));
	//DUP(NULL)
	printf("DONE!\n");
}