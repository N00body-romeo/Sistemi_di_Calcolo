/*int counteq(short* v1, short* v2, int n) {
    int i, cnt = 0;
    for (i=0; i<n; ++i) cnt += (v1[i]==v2[i]);
    return cnt;
}*/

int counteq(short* v1, short* v2, int n) {
	int a = 0;	
	int c = 0;
	int d = n;
	if (c == d) goto E;
	short* b = v1;
	short* di = v2;
L:;		if (c < d) goto FOR;
E:		return a;
FOR:	int esi = *(b+c);
	if (esi-*(di+c)==0) {
		a+=1;
	}
	
	c++;
	goto L;
}
