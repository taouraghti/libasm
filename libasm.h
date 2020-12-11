/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aidrissi <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/09 18:26:11 by aidrissi          #+#    #+#             */
/*   Updated: 2020/03/10 14:57:33 by aidrissi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <unistd.h>
# include <stdlib.h>

ssize_t		ft_read(int fildes, void *buf, size_t nbyte);
ssize_t		ft_write(int fildes, const void *buf, size_t nbyte);
int			ft_strcmp(const char *s1, const char *s2);
char		*ft_strdup(const char *s1);
char		*ft_strcpy(char *dst, const char *src);
size_t		ft_strlen(const char *s);

#endif
