// scrivere la soluzione qui...

/*
The strcat() function shall append a copy of the string pointed to by s2 (including the terminating null byte) to the end of the string pointed to by s1. The initial byte of s2 overwrites the null byte at the end of s1. If copying takes place between objects that overlap, the behavior is undefined.
*/


#include <stdio.h>
#include <stdlib.h>

#include <string.h>

char *my_strcat(char *dest, const char *src) {
	char* d = dest;
	while(*dest) {
		*dest++;
	}
	while(*src) {
		*dest++ = *src++;
	}
	*dest = 0;
	return d;
}


