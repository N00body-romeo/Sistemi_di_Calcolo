// Inserire qui la soluzione

char *my_strcpy(char *dest, const char *src) {
	char* d = dest;
	while(*src || *src!='\0') {
		*dest = *src;
		*dest++;
		*src++;
	}
	*dest = '\0';
	return d;
}
