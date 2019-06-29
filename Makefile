C = clang

NAME = libftprintf.a

FLAGS = -Wall -Wextra -Werror -c

LIBFT = libft

DIR_S = sources

DIR_O = temporary

HEADER = include

TEST = main.c

SOURCES = add_flags.c add_flags2.c format_final.c ft_power_rangers.c ft_printf.c \
ft_check_type.c ft_parsing.c result_without_flags.c type_csp.c type_dioux.c \
type_f.c prec_float_core.c prec_float_process.c prec_float_add.c final_process.c \
add_flags3.c

OBJS = $(addprefix $(DIR_O)/,$(SOURCES:.c=.o))

all: $(NAME)

$(NAME): $(OBJS)
	@make -C $(LIBFT)
	@cp libft/libft.a ./$(NAME)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)

$(DIR_O)/%.o: $(DIR_S)/%.c
	@mkdir -p temporary
	@$(CC) $(FLAGS) -I $(HEADER) -o $@ -c $<

clean:
	@rm -f $(OBJS)
	@rm -rf $(DIR_O)
	@make clean -C $(LIBFT)

fclean: clean
	@rm -f $(NAME)
	@make fclean -C $(LIBFT)

re: fclean all

test:
	gcc -o build $(TEST) $(NAME)	-I $(HEADER)
