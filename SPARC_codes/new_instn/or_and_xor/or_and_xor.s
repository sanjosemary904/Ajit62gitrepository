.text
.global main
main:
start:	mov 3, %l0
	mov 0, %l1
	mov 6, %l2
	mov 0, %l3
	xnord %l1, %l3,%l5
	ta 0
