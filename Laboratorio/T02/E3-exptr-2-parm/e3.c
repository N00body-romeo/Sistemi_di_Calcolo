/*int f(int x, int y) {
    return (x+y)*(x-y);
}*/

int f(int x, int y) {
	int a = x;
	int c = y;
	a = a + c;
	c = x;
	c = c - y;
	a = a * c;
	return a;
}

