			section	.text
			global	ft_write
			extern __errno_location

;ssize_t ft_write(int fd, void *buf, size_t nbyte);
ft_write:
	mov rax, 1; syscall write
	syscall; ;rdi, rsi, rdx == arguments registers
	cmp rax, 0      ; check return value
    jl handle_error
	ret

handle_error:
	neg rax
	mov rbx, rax
	push rbx
	call __errno_location
	pop  rbx
	mov [rax], rbx ; [] == dereferencing
	mov rax, -1 ; set return to error
	ret    