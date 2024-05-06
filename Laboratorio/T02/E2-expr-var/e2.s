# scrivere la soluzione qui...

.globl f				#int f(int x) {
f:
	movl 4(%esp), %eax	#	int a = x;
	imull %eax, %eax	#	a = a * a;
	imull $2, %eax		#	a = a * 2;
	movl 4(%esp), %ecx	#	int c = x;
	imull $7, %ecx		#	c = c * 7;
	subl %ecx, %eax		#	a = a - c;
	incl %eax			#	a = a + 1;
	ret					#	return a;

