int fib(int n) {
	int d = n;
	int c = 0;
	int a = 1;
	if (d-0 == 0) goto A;
	if (d-1 == 0) goto E;
	goto FOR;
FOR:
	c += a;
	c += a;
	//a = c - a;
	a = -a;
	a = a + c;
	c = c - a;
	d--;
	if (d-1 > 0) goto FOR;
	goto E;
A:
	a = c;
	goto E;
E:
	return a;
}

