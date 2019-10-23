;adds all the numbers in the array

global sum
extern printf

segment .data

	sumprompt db "The sum of these numbers is: %ld",10,0

segment .bss

segment .text

sum:

	mov 	r8, 0		;stores sum
	mov 	r9, 0		;loop counter
	mov 	r10, rdi	;array
	mov 	r11, rsi	;array size

;===== find the sum of the array ===============================================

begin_loop:

	add	r8, [r10+r9*8]
	inc	r9

	cmp	c9, rsi
	jne begin_loop


;===== print out the sum of the array

	mov	rax, 0
	mov	rdi, sumprompt
	mov	rsi, r8
	call	printf

;===== return the sum to control

	mov rax, r8

	ret
