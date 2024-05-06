/*int f() {
    int x = ((2+3)*(4-2)-(2+3))*3;
    return x + 1;
}*/

int f() {
	int a = 2;
	a += 3;
	int b = 4;
	b -= 2;
	a *= b;
	b = 2;
	b += 3;
	a -= b;
	a *= 3;
	a += 1;
	return a;
}


