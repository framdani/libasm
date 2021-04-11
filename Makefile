NAME 	= test
CC 		= clang
FLAGS 	= -Wall -Wextra -Werror

SRC 	= ft_strlen.s

OBJ 	= $(SRC:.s=.o)

all : $(NAME)
$(NAME):$(SRC)
	nasm -f macho64 ft_strlen.s -o ft_strlen.o
	ar rc $(NAME) $(OBJ)

clean:
	@rm -rf *.o
fclean:clean
	@rm -rf $(NAME)
re: fclean all

.PHONY : make re all clean fclean
