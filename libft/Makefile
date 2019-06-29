
C = clang

NAME = libft.a

FLAGS = -Wall -Wextra -Werror -O2

HEADER = libft.h

LIBFILES = $(SRC:.c=.o)

SRC		= 	  ft_islower.c    ft_lstnew.c     ft_putchar_fd.c ft_strcat.c     ft_striteri.c   ft_strndup.c    ft_toupper.c \
ft_abs.c        ft_isprint.c    ft_memalloc.c   ft_putendl.c    ft_strchr.c     ft_strjoin.c    ft_strnequ.c    ft_upper_str.c\
ft_atoi.c       ft_isupper.c    ft_memccpy.c    ft_putendl_fd.c ft_strchr_pos.c ft_strlcat.c    ft_strnew.c    \
ft_bzero.c      ft_itoa.c       ft_memchr.c     ft_putnbr.c     ft_strclr.c     ft_strlen.c     ft_strnstr.c\
ft_close_file.c ft_itoa_base.c  ft_memcmp.c     ft_putnbr_fd.c  ft_strcmp.c     ft_strmap.c     ft_strrchr.c\
ft_cntwrds.c    ft_lstadd.c     ft_memcpy.c     ft_putnstr.c    ft_strcpy.c     ft_strmapi.c    ft_strsplit.c\
ft_isalnum.c    ft_lstdel.c     ft_memdel.c     ft_putstr.c     ft_strdel.c     ft_strncat.c    ft_strstr.c\
ft_isalpha.c    ft_lstdelone.c  ft_memmove.c    ft_putstr_fd.c  ft_strdup.c     ft_strnchr.c    ft_strsub.c\
ft_isascii.c    ft_lstiter.c    ft_memset.c     ft_read_file.c  ft_strequ.c     ft_strncmp.c    ft_strtrim.c\
ft_isdigit.c    ft_lstmap.c     ft_putchar.c    ft_sqrt.c       ft_striter.c    ft_strncpy.c    ft_tolower.c\

all: $(NAME)

$(NAME):
	@gcc $(FLAGS) -c $(SRC) -I $(HEADER)
	@ar rc $(NAME) $(LIBFILES)
	@ranlib $(NAME)

clean:
	@rm -f $(LIBFILES)

fclean: clean
	@rm -f $(NAME)

re: fclean all