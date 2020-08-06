FLAGS=  -Wall -Wextra -Werror -no-pie
LIB= libasm.a
make re
cc $FLAGS -no-pie test.c libasm.a -o test && ./test
make fclean > /dev/null 2>&1
rm test