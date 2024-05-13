# scrivere la soluzione qui...

#include <stdlib.h>
#include <string.h>

.globl clone				#void* clone(const void* src, int n) {
clone:
	pushl %edi				
	movl 8(%esp), %edi		#	const void* edi = src;
	movl 12(%esp), %edx		#	int d = n;
	
	
	pushl %edx				#	void* a = malloc(d); 
	call malloc
	popl %edx
	
	testl %eax, %eax		#	if (a-0==0)
	je R0 					#	goto R0;
	
	pushl %edx
	pushl %edi
	pushl %eax
	call memcpy				#	memcpy(a,edi,d);
	popl %eax
	popl %edi
	popl %edx
	
	jmp R					#	goto R;
R0: movl $0, %eax			#R0: a = 0;
	
R:	popl %edi	
	ret						#R:	return a; }
