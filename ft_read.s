			section	.text
			global	_ft_read

;ssize_t	ft_read(int fd, void *buf, size_t nbyte);
_ft_read:
		mov	rax, 0x2000003 ;read syscall address for read
		syscall ;rdi, rsi, r12 get passed in as arguments
		ret