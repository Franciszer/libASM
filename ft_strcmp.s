			section	.text
			global	_ft_strcmp

;int		ft_strcmp(char *s1, char *s2);
; 						RDI			RSI
_ft_strcmp:
		xor rax, rax
		xor rcx, rcx
		jmp is_eos
is_eos:							;checks if one of the strings has reached its end
		cmp byte[rdi + rcx], 0
		jz check_difference
		cmp byte[rsi + rcx], 0
		jz check_difference
		jmp compare_chars

increment:
	inc rcx
	jmp is_eos
compare_chars:
		mov dl, byte[rdi + rcx]
		sub dl, byte[rsi + rcx]
		cmp dl, 0
		jz increment
		jnz check_difference

check_difference:
		mov dl, byte[rdi + rcx]
		sub dl, byte[rsi + rcx]
		cmp dl, 0
		jg greater
		jl lower
		jz equal
greater:
	mov rax, 1
	ret

lower:
	mov rax, -1
	ret

equal:
	mov rax, 0
	ret
