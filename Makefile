# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akharrou <akharrou@student.42.us.org>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/23 12:26:27 by akharrou          #+#    #+#              #
#    Updated: 2019/12/24 21:10:38 by akharrou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Main — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

all: push_swap checker

push_swap:
	@make -C ./push_swap

checker:
	@make -C ./checker

debug_push_swap:
	@make debug -C ./push_swap

debug_checker:
	@make debug -C ./checker

# House Keeping — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

DEL = /bin/rm -rf

clean:
	@$(DEL) $(shell find . -name '*.o')

fclean: clean
	@$(DEL) push_swap
	@$(DEL) checker

re: fclean all

# Text Colorization — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

GREEN = "\033[1;32m"
WHITE = "\033[1;37m"

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

.PHONY: all clean fclean re

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —
