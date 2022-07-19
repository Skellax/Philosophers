# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mfuhrman <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/07 09:04:22 by mfuhrman          #+#    #+#              #
#    Updated: 2022/06/07 10:09:23 by mfuhrman         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME  = philo 
SRCS  = srcs/utils.c srcs/init.c srcs/thread.c srcs/main.c
OBJS = $(SRCS:.c=.o)
FLAGS = -Wall -Wextra -Werror

NONE = '\033[0m'
GREEN = '\033[92m'
GRAY = '\033[90m'
RED = '\033[91m'
CURSIVE = '\033[3m'

all: $(NAME)

$(NAME): $(OBJS)
	@echo $(CURSIVE)$(GRAY)" -- Making philo --"$(NONE)
	gcc $(FLAGS) $(OBJS) -o $(NAME)
	@echo "$(NAME): $(GREEN)$(NAME) was created !$(NONE)"

clean:
	@echo $(CURSIVE)$(GRAY)" -- Deleting objects --"$(NONE)
	rm -rf $(OBJS)
	@echo "$(RED) objects was deleted !$(NONE)"

fclean: clean
	@echo $(CURSIVE)$(GRAY)" -- Deleting philo --"$(NONE)
	@rm -rf $(NAME)
	@echo "$(RED) philo was deleted !"$(NONE)

re: fclean all 

.PHONY: all clean fclean re 
