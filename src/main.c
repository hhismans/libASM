/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hhismans <hhismans@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/28 05:22:53 by hhismans          #+#    #+#             */
/*   Updated: 2015/05/28 05:35:32 by hhismans         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libasm.h"

int main(void)
{
	int i;
	
	i = 0;

	while (i < 200)
	{
		if (isalpha(i) != ft_isalpha(i))
		{
			printf("ERROR isalnum\n");
		}
		i++;
	}

	while (i < 200)
	{
		if (isdigit(i) != ft_isdigit(i))
		{
			printf("ERROR isalnum\n");
		}
	}
}
