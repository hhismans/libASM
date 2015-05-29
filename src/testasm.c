/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   testasm.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hhismans <hhismans@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/28 23:45:06 by hhismans          #+#    #+#             */
/*   Updated: 2015/05/29 07:31:40 by hhismans         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include "ctype.h"
#include "string.h"
#include "libft.h"
#include "time.h"
#include "testasm.h"

int rand_a_b(int a, int b)
{
	return (rand()%(b - a) + a);
}
int	test_bzero(void)
{
	char tab[100] = "salutmichelcommenttuvas?";;
	char tab2[100];

	ft_bzero(tab, 10);
	bzero(tab2,100);
	if(!ft_memcmp(tab,tab2, 10))
	{
		ft_putendl_fd("Error ft_memcmp(tab, tab2, 10)", 2);
		return (1);
	}
	ft_bzero(tab, 100);
	bzero(tab2, 100);
	if(!ft_memcmp(tab,tab2, 100))
	{
		ft_putendl_fd("Error ft_memcmp(tab, tab2, 100)", 2);
		return (1);
	}
	return (0);
}

int	test_isalpha(void)
{
	int i;
	i = -1;

	while (i < 600)
	{
		if (isalpha(i) != ft_isalpha(i))
		{
			ft_putendl_fd("Error i = ", 2);
			ft_putnbrndl(i);
			return (1);
		}
		i++;
	}
	return (0);
}

int	test_isalnum(void)
{
	int i;
	i = -1;

	while (i < 600)
	{
		if (isalnum(i) != ft_isalnum(i))
		{
			ft_putendl_fd("Error i = ", 2);
			ft_putnbrndl(i);
			return (1);
		}
		i++;
	}
	return (0);
}

int	test_isdigit(void)
{
	int i;
	i = -1;

	while (i < 600)
	{
		if (isalnum(i) != ft_isalnum(i))
		{
			ft_putendl_fd("Error i = ", 2);
			ft_putnbrndl(i);
			return (1);
		}
		i++;
	}
	return (0);
}

int	test_isascii(void)
{
	int i;
	i = -1;

	while (i < 600)
	{
		if (isascii(i) != ft_isascii(i))
		{
			ft_putendl_fd("Error i = ", 2);
			ft_putnbrndl(i);
			return (1);
		}
		i++;
	}
	return (0);
}

int	test_isprint(void)
{
	int i;
	i = -1;

	while (i < 600)
	{
		if (isprint(i) != ft_isprint(i))
		{
			ft_putendl_fd("Error i = ",2);
			ft_putnbrndl(i);
			return (1);
		}
		i++;
	}
	return (0);
}

int	test_tolower(void)
{
	int i;
	i = -1;

	while (i < 600)
	{
		if (tolower(i) != ft_tolower(i))
		{
			ft_putendl_fd("Error i = ",2);
			ft_putnbrndl(i);
			return (1);
		}
		i++;
	}
	return (0);
}
int	test_toupper(void)
{
	int i;
	i = -1;

	while (i < 600)
	{
		if (toupper(i) != ft_toupper(i))
		{
			ft_putendl_fd("Error i = ",2);
			ft_putnbrndl(i);
			return (1);
		}
		i++;
	}
	return (0);
}

int	test_strcat(void)
{
	int i;
	char test[10][10000] = {
		"123456789", "", "fdksjf", "00000000000", "salut","caca", "pipi"
		"ifghdlfjg", "asdj",""};
	int j;
	i = 0;
	while (i < 1)
	{
		j = 1;//rand_a_b(0, 10);
		if (ft_strcmp(ft_strcat(test[j], "blue"), strcat(test[j], "blue")))
		{
			ft_putendl_fd(" Error", 2);
			return (1);
		}
		i++;
	}
	return (0);
}
