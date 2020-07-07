			section	.text
			global	ft_strlen

ft_strlen:
		xor rax, rax
		jmp check_null
		jmp	check_end

check_null:
	cmp rdi, 0
	jz return
increment:
		inc rax

check_end:
		cmp byte[rdi + rax], 0
		jnz increment
		jz return

return:
	ret
