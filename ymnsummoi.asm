lw $s0, 0 ($0) #������ �����
lw $s1, 4 ($0) #������ �����
li $s2, 0 #��������, ������� ������ �������������

multiply: #����, �� ������� ������� ������������ ���� �����
add $s2, $s2, $s0
sub $s1, $s1, 1
bnez $s1, multiply #���������� ��� ������, ���� �������� � �������� $s1 �� ������ ����

sw $s2, 8 ($0)
