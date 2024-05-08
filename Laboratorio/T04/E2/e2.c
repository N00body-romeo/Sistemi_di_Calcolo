/*int find(int* v, int n, int x) {
    int i;
    for (i=0; i<n; ++i)
        if (v[i] == x) return 1;
    return 0;
}*/

int find(int* v, int n, int x) {
	int* a = v;
	int c = x;
	int d = n;
E:	if (*(a+d)==c) goto R1;
	d--;
	if (d!=0) goto E;
	goto R0;
R1:	*a = 1;
	return *a;
R0: *a = 0;
	return *a;
}
