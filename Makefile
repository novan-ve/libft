# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: novan-ve <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2019/11/01 17:02:03 by novan-ve      #+#    #+#                  #
#    Updated: 2019/11/15 15:13:45 by novan-ve      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_atoi.c \
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

BSRC = ft_lstnew_bonus.c \
	   ft_lstsize_bonus.c \
	   ft_lstadd_front_bonus.c \
	   ft_lstlast_bonus.c \
	   ft_lstadd_back_bonus.c \
	   ft_lstdelone_bonus.c \
	   ft_lstclear_bonus.c \
	   ft_lstiter_bonus.c \
	   ft_lstmap_bonus.c

OBJ = ft_atoi.o \
	  ft_bzero.o \
	  ft_calloc.o \
	  ft_isalnum.o \
	  ft_isalpha.o \
	  ft_isascii.o \
	  ft_isdigit.o \
	  ft_isprint.o \
	  ft_memccpy.o \
	  ft_memchr.o \
	  ft_memcmp.o \
	  ft_memcpy.o \
	  ft_memmove.o \
	  ft_memset.o \
	  ft_putchar_fd.o \
	  ft_putendl_fd.o \
	  ft_putnbr_fd.o \
	  ft_putstr_fd.o \
	  ft_strlcat.o \
	  ft_strlcpy.o \
	  ft_strlen.o \
	  ft_strncmp.o \
	  ft_strnstr.o \
	  ft_strchr.o \
	  ft_strdup.o \
	  ft_strjoin.o \
	  ft_strrchr.o \
	  ft_substr.o \
	  ft_tolower.o \
	  ft_toupper.o \
	  ft_substr.o \
	  ft_strjoin.o \
	  ft_strtrim.o \
	  ft_itoa.o \
	  ft_strmapi.o \
	  ft_split.o

BOBJ = ft_lstnew_bonus.o \
	   ft_lstsize_bonus.o \
	   ft_lstadd_front_bonus.o \
	   ft_lstlast_bonus.o \
	   ft_lstadd_back_bonus.o \
	   ft_lstdelone_bonus.o \
	   ft_lstclear_bonus.o \
	   ft_lstiter_bonus.o \
	   ft_lstmap_bonus.o

all: $(NAME)
FLAGS: -Wall -Werror -Wextra

$(NAME): $(SRC) libft.h
	gcc $(FLAGS) -c $(SRC)
	ar rc $(NAME) $(OBJ)

bonus: $(BSRC) libft.h
	gcc $(FLAGS) -c $(BSRC)
	ar rc $(NAME) $(BOBJ)

clean:
	/bin/rm -f *.o

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
