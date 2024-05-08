# scrivere la soluzione qui...

.globl find						#int find(int* v, int n, int x)
find:
	movl 4(%esp), %eax			#	int* a = v;
	movl 8(%esp), %edx			#	int d = n;
	movl 12(%esp), %ecx			#	int c = x;
	
E:	cmpl %ecx, (%eax,%edx,4)	#E:	if (*(a+d)==c) goto R1;
	je R1
	decl %edx					#	d--;
	cmpl $0, %edx				#	if (d!=0) goto E;
	jne E
	jmp R0						#	goto R0;
R1: movl $1, %eax				#R1: *a = 1;
	ret							#	return *a;
R0: xorl %eax, %eax				#R0: *a = 0;
	ret							#	return *a;

