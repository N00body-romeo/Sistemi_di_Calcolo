.globl counteq				#int counteq(short* v1, short* v2, int n)
counteq:
	pushl %ebx
	pushl %edi
	pushl %esi
	
	movl $0, %eax			#	int a = 0;	
	movl $0, %ecx			#	int c = 0;
	movl 24(%esp), %edx		#	int d = n;
	cmpl %ecx, %edx			#	if (c == d) goto E;
	je E
	movl 16(%esp), %ebx	 	#	short* b = v1;
	movl 20(%esp), %edi		#	short* di = v2;

L:	cmpl %edx, %ecx			#L:;		if (c < d) goto FOR;
	jl FOR
	jmp E

FOR:	movw (%ebx, %ecx, 2), %si		#FOR:	int esi = *(b+c);
		cmpw (%edi, %ecx, 2), %si	#	if (esi-*(di+c)==0) {
		je A						#		a+=1;	}
	
	incl %ecx				#	c++;
	jmp L					#	goto L;

A:	incl %eax
	incl %ecx
	jmp L

E:	popl %esi
	popl %edi
	popl %ebx
	ret						#E:		return a;
