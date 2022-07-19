/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mfuhrman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/07 08:50:46 by mfuhrman          #+#    #+#             */
/*   Updated: 2022/06/07 15:28:43 by mfuhrman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/philosophers.h"

int	main(int ac, char **av)
{
	t_rules	rules;

	if (ac != 6 && ac != 5)
		return (printf("\033[91mERROR : trop ou pas assez d'arguments !\n"));
	if (init_all(&rules, av) == FAILURE)
		return (printf("\033[91mERROR : initialisation echoue !\n"));
	if (start_thread(&rules) == FAILURE)
		return (printf("\033[91mERROR : erreur dans la creation des threads!\n"));
	return (SUCESS);
}
