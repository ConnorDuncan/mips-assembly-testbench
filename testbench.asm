.data
	sample: .asciiz "Example.\n"

.text

main:
	la $t0, sample # address of word
	lb $t1, 0($t0)
	move $a0, $t1
	li $v0, 11 # 11 is syscall code for printing character
	syscall

	# change the character to lowercase
	addiu $t2, $t1, 32
	move $a0, $t2
	syscall
	
exit:
	li $v0, 10
	syscall
