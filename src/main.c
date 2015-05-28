/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hhismans <hhismans@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/28 05:22:53 by hhismans          #+#    #+#             */
/*   Updated: 2015/05/28 05:25:48 by hhismans         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libasm.h"

int main(void)
{
	int i;
	char tab[] = "salut";
	i = 0;

	while (i < 200)
	{
		if (isalnum(i) != ft_isalnum(i))
		{
			printf("ERROR isalnum\n");
		}
		i++;
	}
}
