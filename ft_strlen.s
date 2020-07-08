			section	.text
			global	ft_strlen

ft_strlen:
		xor rax, rax
		jmp check_null

check_null:
	cmp rdi, 0
	jz return
	jmp check_end

increment:
		inc rax

check_end:
		cmp byte[rdi + rax], 0
		jnz increment
		jz return

return:
	ret
