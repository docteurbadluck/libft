# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tdeliot <tdeliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/11 11:25:00 by tdeliot           #+#    #+#              #
#    Updated: 2024/11/21 11:22:28 by tdeliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CFLAGS = -Wall -Wextra -Werror

SRC_FILES = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c \
ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c \
ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c \
ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c \
ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c \
ft_substr.c ft_tolower.c ft_touper.c

SRC_FILES_BONUS = ft_lstadd_back.c ft_lstadd_front.c ft_lstdelone.c \
ft_lstiter.c ft_lstlast.c ft_lstnew.c ft_lstsize.c \
ft_lstclear.c ft_lstmap.c

OBJ_FILES = $(SRC_FILES:.c=.o)

OBJ_FILES_BONUS = $(SRC_FILES_BONUS:.c=.o)

NAME = libft.a

all: $(NAME)

$(NAME): $(OBJ_FILES)
	@echo "Creating library $@"
	ar rcs $@ $^

bonus: all $(OBJ_FILES_BONUS)
	@echo "add bonus file $@"
	ar rcs $(NAME) $(OBJ_FILES_BONUS)

%.o: %.c
	@echo "compiling $<"
	$(CC) $(CFLAGS) -I . -c $< -o $@

clean:
	@echo "Cleaning up..."
	rm -f $(OBJ_FILES) $(OBJ_FILES_BONUS)
	
fclean :clean
	@echo "Removing library $@"
	rm -f $(NAME)

re: fclean all 

.PHONY :all clean fclean re bonus


