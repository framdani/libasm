/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: framdani <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/12 11:03:16 by framdani          #+#    #+#             */
/*   Updated: 2021/04/13 11:31:18 by framdani         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int				ft_isascii(char);
size_t			ft_strlen(char *);
char 			*ft_strcpy(char * dst, const char * src);
int				ft_strcmp(const char *s1, const char *s2);
int				main()
{
	char *s;
	char *dst = (char *)malloc(15);

	s = "/0okokoko12345678910111213141516171819";

	//printf("|%s|\n", strcpy(dst, s));
	//printf("|%s|", ft_strcpy(dst, s));
	//0 if equal
	//s1>s2 =>1 == s1 rdi
	//s1<s2 =>-1
	printf("%d\n", ft_strcmp("abcd", ""));
	printf("%d", strcmp("abcd", ""));
	return (0);
}
