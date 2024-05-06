# Inserire qui la soluzione

.globl min				#int min(int x, int y, int z)

min:
	movl 4(%esp), %eax	#	int a = x;
	movl 8(%esp), %ecx	#	int c = y;
	movl 12(%esp), %edx	#	int d = z;
	cmpl %eax, %ecx		#	if (a < c) 
	jg A				#	goto A;
	cmpl %ecx, %edx		#	if (c < d) 
	jg C				#	goto C;
	jmp Z				#	goto Z;

A:						#A:
	cmpl %eax, %edx		#	if (a < d)
	jg E				#	goto E;
	jmp B				#	goto B;
Z:						#Z:
	movl %edx, %eax		#	a = d;
	jmp E				#	goto E;
C: 						#C:
	movl %ecx, %eax		#	a = c;
	jmp E				#	goto E;
B:						#B:
	movl %edx, %eax		#	a = d;
	jmp E				#	goto E;
E:						#E:
	ret					#	return a;
	
