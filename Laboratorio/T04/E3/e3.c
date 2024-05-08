/*char my_strcmp(const char* s1, const char* s2) {
    while (*s1 && *s1 == *s2) {
        s1++;
        s2++;
    }
    return *s1 - *s2;
}*/

char my_strcmp(const char* s1, const char* s2) {
	const char* c = s1;
	const char* d = s2;
L:;	char a = *c;
E:	if (a != 0) goto A;
A:	if (a == *d) goto WHILE;
	goto R;
WHILE:
	c++;
	d++;
	goto L;
R:	a -= *d;
	return a;
}
