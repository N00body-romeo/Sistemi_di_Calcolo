// Scrivi la soluzione qui...

void drop_spaces(char* text) {
	char* s = text;	//puntatore che punta alla stessa stringa di text
	while(*text) {
		if (*text == ' ') {
			text++;	//incrementa il puntatore
		}
		else {
			*s++ = *text++;
		}
	}
	*s = '\0';
}
