/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agarijo- <agarijo-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/30 18:07:58 by agarijo-          #+#    #+#             */
/*   Updated: 2022/09/30 18:26:54 by agarijo-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *s, int c)
{
	while (*s != (char) c)
	{
		if (!*s++)
			return (NULL);
	}
	return ((char *)s);
}
