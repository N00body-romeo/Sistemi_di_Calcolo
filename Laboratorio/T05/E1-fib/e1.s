# scrivere la soluzione qui...

.globl fib
fib:						#int fib(int n) 
	pushl %edi				#PROLOGO (di,b registri Callee)
	pushl %ebx	

	subl $4, %esp			#facciamo scendere di 4byte lo stack
	
	movl 16(%esp), %edi		#	int di = n;
							#4byte allocati in stack+ 8byte del prologo+ 4byte valore di ritono che viene messo 
							#nella call che ha chiamato fib = 16byte

	movl $1, %eax			#	int a = 1;
	cmpl $2, %edi			#	if (di<2) goto E;
	jl E
	decl %edi				#	di--;
							#	a = fib(di);	
	movl %edi, (%esp)		#mettiamo in cima allo stack il valore d
	call fib				#----------> a = fib(di)
	movl %eax, %ebx			#	int b = a;
	decl %edi				#	di--;
	
	movl %edi, (%esp)		#	a = fib(di);
	call fib

	addl %ebx, %eax			#	a = a + b;

E:							#E:	return a;
							#mettiamo l'epilogo qui perché deve essere fatto sempre
	addl $4, %esp 			#facciamo salire di 4bit lo stack
	
	popl %ebx				#EPILOGO
	popl %edi
	ret

