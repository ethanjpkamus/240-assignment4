;adds all the numbers in the array

global sum
extern printf

segment .data



segment .bss

segment .text

sum:
	push	rbp
	mov	rbp, rsp

	mov r8, 0	;stores sum
	mov r9, 0	;loop counter

;===== print out the sum of the array

;===== return the sum to control

	mov rax, r8
