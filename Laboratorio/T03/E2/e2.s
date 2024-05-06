.globl fib					#int fib(int n)
fib:
	movl 4(%esp), %edx		#	int d = n;
	movl $0, %ecx			#	int c = 0;
	movl $1, %eax			#	int a = 1;
	cmpl $0, %edx			#	if (d-0 == 0) 
	je A					#	goto A;
	cmpl $1, %edx			#	if (d-1 == 0) 
	je E					#	goto E;
	jmp FOR					#	goto FOR;

FOR:
	addl %eax, %ecx			#	c += a;
	addl %eax, %ecx			#	c += a;
							#	//a = c - a;
	negl %eax				#	a = -a;
	addl %ecx, %eax			#	a = a + c;
	subl %eax, %ecx			#	c = c - a;
	decl %edx				#	d--;
	cmpl $1, %edx			#	if (d-1 > 0) 
	jg FOR					#	goto FOR;

	jmp E					#	goto E;
A:
	movl %ecx, %eax			#	a = c;
	jmp E					#	goto E;
E:
	ret
