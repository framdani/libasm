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
#include <sys/_types/_errno_t.h>
#include <unistd.h>
#include <errno.h>
size_t			ft_strlen(char *);
char 			*ft_strcpy(char * dst, const char * src);
int				ft_strcmp(const char *s1, const char *s2);
int				ft_write(int fd, char *str, int length);
int				ft_read(int fd, void *buf, size_t nbyte);
int				ft_test(char *str);
int				main()
{
	char *s;
	char *dst = (char *)malloc(15);

	s = "/0okokoko12345678910111213141516171819";
	
	printf("%d", ft_test("o"));

}
