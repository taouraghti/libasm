/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aidrissi <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/08 14:49:27 by aidrissi          #+#    #+#             */
/*   Updated: 2020/03/10 14:57:43 by aidrissi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include "libasm.h"
int main()
{
    int fd = open("libasm.h",O_RDONLY);
    char buff[101];
    char d[10] = "anasidr";
    char s[5] = "taou";

    printf("\n********** test ft_strlen **********\n");

    printf("[%zu], [%zu]\n",strlen("anas"), ft_strlen("anas"));

     printf("\n*********************************\n");

     printf("\n********** test ft_strcpy **********\n");

    printf("[%s], [%s]\n",strcpy(d,s), ft_strcpy(d,s));

     printf("\n*********************************\n");

     printf("\n********** test ft_strcmp **********\n");

    printf("[%d], [%d]\n",strcmp("-2","5"), ft_strcmp("-2","5"));

     printf("\n*********************************\n");

     printf("\n********** test ft_strdup **********\n");

    printf("[%s], [%s]\n",strdup("anas"), ft_strdup("anas"));

     printf("\n*********************************\n");

     printf("\n********** test ft_write **********\n");

    printf("[%zd], [%zd]\n",write(1,"anas\n",5), ft_write(1,"anas\n",5));

     printf("\n*********************************\n");

     printf("\n********** test ft_read **********\n");

    printf("[%zd], [%zd]\n",read(fd,buff,100), ft_read(fd,buff,100));

     printf("\n*********************************\n");

}
