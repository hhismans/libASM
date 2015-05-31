/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hhismans <hhismans@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 18:27:53 by hhismans          #+#    #+#             */
/*   Updated: 2015/05/31 01:36:58 by hhismans         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "string.h"

char	*ft_strncat(char *s1, const char *s2, size_t n)
{
	size_t len_dst;
	size_t len_src;

	len_src = strlen(s2);
	len_dst = strlen(s1);
	memmove(&s1[len_dst], s2, n);
	if (len_src < n)
		s1[len_dst + len_src] = '\0';
	else
		s1[len_dst + n] = '\0';
	return (s1);
}
