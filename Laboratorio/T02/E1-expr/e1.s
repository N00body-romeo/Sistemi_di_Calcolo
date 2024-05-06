# scrivere la soluzione qui...

.globl f	#int f() 
f: 			
	movl $2, %eax		#	int a = 2;
	addl $3, %eax		#	a += 3;
	movl $4, %ecx		#	int c = 4;
	subl $2, %ecx		#	c -= 2;
	imull %ecx, %eax	#	a *= c;
	movl $2, %ecx		#	c = 2;
	addl $3, %ecx		#	c += 3;
	subl %ecx, %eax		#	a -= c;
	imull $3, %eax		#	a *= 3;
	incl %eax;			#   a += 1;
	ret					#	return a;

