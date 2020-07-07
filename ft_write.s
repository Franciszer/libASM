			section	.text
			global	ft_write

;ssize_t ft_write(int fd, void *buf, size_t nbyte);
ft_write:
	mov rax, 1; ;read syscall address for write
	syscall; ;rdi, rsi, r12 get passed in as arguments
	ret