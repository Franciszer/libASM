			section	.text
			global	_ft_strdup
			extern _malloc

;char	*ft_strdup(const char *source)
;source = rdi

_ft_strdup:
		xor rax, rax
		xor rcx, rcx
		cmp rdi, 0; source = NULL
		jz err
		jmp get_len

increment:
		inc rcx
get_len:
		cmp byte[rdi + rcx], 0
		jz increment

allocate_string:
		inc rcx
		push rdi
		mov rdi, rcx
		call _malloc
		pop rdi
		cmp rax, 0
		jz err

copy_init:
		xor rcx, rcx
		xor rdx, rdx
		jmp copy_source

increment_1:
		inc rcx

copy_source:
		mov dl, byte[rdi + rcx]
		mov byte[rax + rcx], dl
		cmp dl, 0
		jnz increment_1
		jz return

err:
		xor rax, rax
		jmp return

return:
		ret