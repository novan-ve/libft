# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: novan-ve <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2019/11/01 17:02:03 by novan-ve      #+#    #+#                  #
#    Updated: 2021/03/18 13:43:43 by novan-ve      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC_DIR =   ./src/

HEADER =    libft.h

HEADER :=	$(addprefix ./include/, $(HEADER))

INCL_FOLDERS = $(dir $(HEADER))

INCL := $(addprefix -I ,$(INCL_FOLDERS))

SRC =       ft_atoi.c \
	        ft_bzero.c \
        	ft_calloc.c \
        	ft_isalnum.c \
        	ft_isalpha.c \
        	ft_isascii.c \
        	ft_isdigit.c \
        	ft_isprint.c \
        	ft_memccpy.c \
        	ft_memchr.c \
        	ft_memcmp.c \
        	ft_memcpy.c \
        	ft_memmove.c \
        	ft_memset.c \
        	ft_putchar_fd.c \
        	ft_putendl_fd.c \
        	ft_putnbr_fd.c \
        	ft_putstr_fd.c \
        	ft_strlcat.c \
        	ft_strlcpy.c \
        	ft_strlen.c \
        	ft_strncmp.c \
        	ft_strnstr.c \
        	ft_strchr.c \
        	ft_strdup.c \
        	ft_strjoin.c \
        	ft_strrchr.c \
        	ft_substr.c \
        	ft_tolower.c \
        	ft_toupper.c \
        	ft_substr.c \
        	ft_strjoin.c \
        	ft_strtrim.c \
        	ft_itoa.c \
        	ft_strmapi.c \
        	ft_split.c

BSRC =      ft_lstnew_bonus.c \
	        ft_lstsize_bonus.c \
	        ft_lstadd_front_bonus.c \
	        ft_lstlast_bonus.c \
	        ft_lstadd_back_bonus.c \
	        ft_lstdelone_bonus.c \
	        ft_lstclear_bonus.c \
	        ft_lstiter_bonus.c \
	        ft_lstmap_bonus.c

OBJ := $(SRC:%.c=./obj/%.o)
BOBJ := $(BSRC:%.c=./obj/%.o)

FLAGS = -Wall -Werror -Wextra

all: $(NAME)

obj/%.o: src/%.c $(HEADER)
	mkdir -p $(@D)
	clang $(FLAGS) $(INCL) -c $< -o $@

$(NAME): $(OBJ) $(HEADER)
	ar rc $(NAME) $(OBJ)

bonus: $(BOBJ) $(HEADER)
	ar rc $(NAME) $(BOBJ)

clean:
	/bin/rm -f $(OBJ) $(BOBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
