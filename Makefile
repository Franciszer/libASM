# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frthierr <frthierr@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/27 14:02:18 by frthierr          #+#    #+#              #
#    Updated: 2020/05/29 14:15:09 by frthierr         ###   ########.fr        #
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
NASM_FLAGS = -f macho64
CC_FLAGS = -Wall -Werror -Wextra
NAME = libasm.a

%.o:	%.s
			@$(NASM) $(NASM_FLAGS) $<

all: $(NAME)

$(NAME):	$(OBJS)
				@ar rcs $(NAME) $(OBJS)
				@echo "libASM Done!"

clean:
				@rm -rf $(OBJS)
				@echo "libASM Clean!"

fclean:		clean
				@rm -rf $(NAME)

re:			fclean all

.PHONY:		all clean fclean re