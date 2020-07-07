			section	.text
			global	ft_strcpy

;char	*ft_strcpy(char *dest, char *src)
; rdi = dest
; rsi : src

ft_strcpy:
			xor rax, rax
			xor rcx, rcx
			cmp rsi, 0
			jz return
			jmp copy

copy:
			mov bl, byte[rsi + rcx]
			mov byte[rdi + rcx], bl
			cmp bl, 0
			jz return
			inc rcx
			jmp copy

return:
			mov rax, rdi
			ret