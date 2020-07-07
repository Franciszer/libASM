# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: franciszer <franciszer@student.42.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/27 14:02:18 by frthierr          #+#    #+#              #
#    Updated: 2020/07/07 20:06:47 by franciszer       ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_strlen.s\
		ft_strcpy.s\
		ft_strcmp.s\
		ft_read.s\
		ft_write.s\
		ft_strdup.s
		
OBJS = $(SRCS:.s=.o)
NASM = nasm
NASM_FLAGS = -felf64
CC_FLAGS = -no-pie #-Wall -Werror -Wextra
NAME = libasm.a

%.o:	%.s
			$(NASM) $(NASM_FLAGS) $<

all: $(NAME)

$(NAME):	$(OBJS)
				ar rc $(NAME) $(OBJS)
				ranlib ${NAME}
				@echo "libASM Done!"

clean:
				@rm -rf $(OBJS)
				@echo "libASM Clean!"

fclean:		clean
				@rm -rf $(NAME)

re:			fclean all

.PHONY:		all clean fclean re