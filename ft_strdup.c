/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tdeliot <tdeliot@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/12 10:25:45 by tdeliot           #+#    #+#             */
/*   Updated: 2024/11/18 12:40:20 by tdeliot          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

//dupplique une chaine en une autre return un pointer
//sur cette nouvelle chaine.
char	*ft_strdup(const char *s)
{
	size_t	len;
	char	*new_str;

	if (s == NULL)
		return (NULL);
	len = ft_strlen(s) + 1;
	new_str = (char *)malloc(len);
	if (new_str == NULL)
	{
		errno = ENOMEM;
		return (NULL);
	}
	ft_strlcpy(new_str, s, len);
	return (new_str);
}
