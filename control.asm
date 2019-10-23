;gets user input for array
;declare array of qword integers
;call fill function to insert into array

global control

extern printf
extern scanf
extern getchar
extern fill
extern display

segment .data

	greeting db "you will be entering integers into an array",10,0
	ready db "are you ready? (y or n)",10,0

	stringformat db "%s"
	integerformat db "%ld"

segment .bss

	;declare array of qword ints
	nums resq 10

segment .text

control:

	push	rbp
    	mov    rbp, rsp

    	push	rbx
    	push   rcx
    	push   rdx
    	push   rsi
    	push   rdi
    	push   r8
    	push   r9
    	push   r10
    	push   r11
    	push   r12
    	push   r13
    	push   r14
	push   r15

;===== print welcome statement =================================================

	mov qword	rax, 0
	mov		rdi, stringformat
	mov		rsi, greeting
	call		printf

beginning:
;===== print ready statement ===================================================

	mov qword	rax, 0
	mov		rdi, stringformat
	mov		rsi, ready
	call 		printf

;===== get user input ==========================================================

	push qword 0
	mov qword  rax, 0
	mov 	    rdi, integerformat
	mov        rsi, rsp
	call 	    scanf

	mov	rax, 0
	call	getchar
	cmp	rax, 110
	je	beginning

;===== call fill ===============================================================

	mov	rax, 0
	mov	rdi, nums
	mov	rsi, 10
	call	fill

	mov	r15, rax	;stores count

	mov qword	rax, 0
	mov		rdi, integerformat
	mov		rsi, r15
	call		printf

;===== call display ============================================================

	mov 	rax, 0
	mov 	rdi, nums
	mov	rsi, 10
	call 	display

;===== call getchar ===========================================================

	push qword 0
	mov qword  rax, 0
	mov 	    rdi, integerformat
	mov        rsi, rsp
	call 	    scanf

	mov	rax, 0
	call	getchar
	cmp	rax, 110
	je	beginning

;===== call sum ===============================================================

	mov 	rax, 0
	mov	rdi, nums
	mov 	rsi, 10
	call 	sum

	mov	rax, r15 ;stores the sum from sum.asm

	pop 	r15
	pop	r14
	pop    r13
	pop    r12
	pop    r11
	pop    r10
	pop    r9
	pop    r8
	pop    rdi
	pop    rsi
	pop    rdx
	pop    rcx
	pop    rbx
	pop    rbp

	ret
