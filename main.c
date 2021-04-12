/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: framdani <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/12 11:03:16 by framdani          #+#    #+#             */
/*   Updated: 2021/04/12 11:03:57 by framdani         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int				ft_isascii(char);
size_t			ft_strlen(char *);
char 			*ft_strcpy(char * dst, const char * src);

int				main()
{
	char *s;
	char *dst = (char *)malloc(15);

	s = "okokokokok";

	printf("%s\n", strcpy(dst, s));
	printf("%s\n", ft_strcpy(dst, s));
	return (0);
}
