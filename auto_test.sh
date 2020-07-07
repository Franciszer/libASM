FLAGS= # -Wall -Wextra -Werror
make re
cc $FLAGS -o test test.c && ./test
make fclean
rm test