#include <stdlib.h>
#include <string.h>

/*void* clone(const void* src, int n) {
    void* des = malloc(n);
    if (des==0) return 0;
    memcpy(des, src, n);
    return des;
}*/

void* clone(const void* src, int n) {
	const void* edi = src;
	int d = n;
	
	void* a = malloc(d); 
	if (a-0==0) 
	goto R0;
	memcpy(a,edi,n);
	goto R;
R0: a = 0;
	
R:	return a;
}
