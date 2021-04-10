NAME 	= libasm.a
CC 		= gcc
FLAGS 	= -Wall -Wextra -Werror

SRC 	= ft_strlen.s

OBJ 	= $(SRC:.c=.o)

all : $(NAME)
	$(CC) $(FLAGS) -c $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	@rm -rf *.o
fclean:clean
	@rm -rf $(NAME)
re: fclean all

.PHONY : make re all clean fclean
