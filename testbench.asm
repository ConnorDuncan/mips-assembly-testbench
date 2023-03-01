.data
	sample: .asciiz "Example.\n"

.text

main:
	
exit:
	li $v0, 10
	syscall
