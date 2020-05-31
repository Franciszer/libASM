			section	.text
			global	_ft_write

;ssize_t ft_write(int fd, void *buf, size_t nbyte);
_ft_write:
	mov rax, 0x2000004; ;read syscall address for write
	syscall; ;rdi, rsi, r12 get passed in as arguments
	ret