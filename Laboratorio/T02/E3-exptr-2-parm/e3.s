# scrivere la soluzione qui...

.globl f				#int f(int x, int y)
f: 
	movl 4(%esp), %eax	#	int a = x;
	movl 8(%esp), %ecx	#	int c = y;
	addl %ecx, %eax		#	a = a + c;
	movl 4(%esp), %ecx	#	c = x;
	subl 8(%esp), %ecx	#	c = c - y;
	imull %ecx, %eax	#	a = a * c;
	ret					#	return a;
	
