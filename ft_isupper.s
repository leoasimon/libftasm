section .text
	global _ft_isupper

_ft_isupper:

init:
	push rbp
	mov rbp, rsp

ft_isupper:
	cmp dil, 'A'
	jl ret_false
	cmp dil, 'Z'
	jg ret_false
	jmp ret_true

ret_false:
	mov al, 0
	jmp end

ret_true:
	mov al, 1

end:
	leave
	ret