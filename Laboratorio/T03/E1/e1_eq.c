// Inserire qui il C equivalente
/*int min(int x, int y, int z) {
    if (x < y) {
        if (x < z) return x;
        else return z;
    } else {
        if (y < z) return y;
        else return z;
    }
}
*/

int min(int x, int y, int z) {
	int a = x;
	int c = y;
	int d = z;
	if (a < c) goto A;
	if (c < d) goto C;
	goto Z;
A:
	if (a < d) goto E;
	goto B;
Z:
	a = d;
	goto E;
C:
	a = c;
	goto E;
B:
	a = d;
	goto E;
E:
	return a;
}
