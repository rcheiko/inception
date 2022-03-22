# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rcheiko <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/21 12:53:49 by rcheiko           #+#    #+#              #
#    Updated: 2022/03/22 17:36:51 by rcheiko          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= inception

docker:
				cd ./srcs/ && docker-compose up --build
rm-conteneur:
				docker rm $(docker ps -a -q)
rm-image:
				docker rmi $(docker images -a -q)
