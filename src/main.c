/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hhismans <hhismans@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/28 05:22:53 by hhismans          #+#    #+#             */
/*   Updated: 2015/05/29 10:11:41 by hhismans         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libasm.h"
#include "testasm.h"
#include "libft.h"

int main(void)
{
	int i;
	t_flags fct_tab[]={
		{"ft_bzero", test_bzero},
		{"ft_isdigit", test_isdigit},
		{"ft_isalpha", test_isalpha},
		{"ft_isalnum", test_isalnum},
		{"ft_isprint", test_isprint},
		{"ft_isascii", test_isascii},
		{"ft_toupper", test_toupper},
		{"ft_tolower", test_tolower},
		{"ft_strcat", test_strcat},
		{"ft_puts", test_puts},
		{"", NULL}
	};

	i = 0;
	while(*(fct_tab[i].flag))
	{
		ft_putstr(fct_tab[i].flag);
		if (!fct_tab[i].p())
			ft_putendl("\t OK!");
		i++;
	}
}
