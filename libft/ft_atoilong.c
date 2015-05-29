/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hhismans <hhismans@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 13:23:25 by hhismans          #+#    #+#             */
/*   Updated: 2015/03/20 01:31:56 by hhismans         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

long int		ft_atoilong(const char *str)
{
	int			i;
	long int	nb;
	int			signe;

	signe = 0;
	nb = 0;
	i = 0;
	while (str[i] == ' ' || str[i] == '\t' || str[i] == '\v' || str[i] == '\f'
			|| str[i] == '\r' || str[i] == '\n')
		i++;
	if (!ft_isdigit(str[i]) && str[i] != '-' && str[i] != '+')
		return (0);
	if (str[i] == '-' || str[i] == '+')
		signe = i++;
	if (!ft_isdigit(str[i]))
		return (0);
	while (ft_isdigit(str[i]))
	{
		if (str[i] != '\0')
			nb = (nb * 10) + str[i] - '0';
		i++;
	}
	if (str[signe] == '-')
		return (-nb);
	return (nb);
}
