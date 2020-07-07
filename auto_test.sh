FLAGS=  -Wall -Wextra -Werror -no-pie
LIB= libasm.a
make re
touch test_read.txt test_write.txt
cc $FLAGS -no-pie test.c libasm.a -o test && ./test
make fclean > /dev/null 2>&1
rm test test_read.txt test_write.txt