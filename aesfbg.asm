j main

ygadai:
lw $t0, 0x0 ($sp)
lw $t1, 0x4 ($sp)
addu $t2, $t0, $t1
beq $t2, $s2, on_equal
addi $s3, $0, 1
j finish

on_equal:
addi $s3, $0, 100

finish:
jr $ra

main:
addi $sp, $0, 0x200
addi $s2, $0, 68
lw $s0, 0x0 ($0)
lw $s1, 0x4 ($0)
addi $sp, $sp, -8
sw $s0, 0x0 ($sp)
sw $s1, 0x4 ($sp)
jal ygadai
addi $sp, $sp, 8
sw $s3, 0x8 ($sp)


















