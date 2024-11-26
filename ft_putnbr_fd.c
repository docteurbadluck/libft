/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tdeliot <tdeliot@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/18 11:21:28 by tdeliot           #+#    #+#             */
/*   Updated: 2024/11/18 12:32:54 by tdeliot          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putnbr_fd( int n, int fd)
{
	char	*nbr;
	int		size;

	nbr = ft_itoa(n);
	size = ft_strlen(nbr);
	write(fd, nbr, size);
	free(nbr);
}
