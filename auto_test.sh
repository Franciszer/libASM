make re 1>/dev/null
gcc -Wall -Wextra -Werror -L. -lasm -o test test.c && ./test
make fclean 1>/dev/null
rm test 1>/dev/null