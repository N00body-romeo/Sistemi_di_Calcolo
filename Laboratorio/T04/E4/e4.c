int count_substrings(const char* s, const char* sub) {
	int count = 0;
	while (*s != 0) {
		const char* temp_s = s;
		const char* temp_sub = sub;
		while (*temp_s != 0 && *temp_sub != 0 && *temp_s == *temp_sub) {
			temp_s++;
			temp_sub++;
			if (*temp_sub == 0) {
				count++;
			}
		}
		s++;
	}
	if (*s == 0 && *sub == 0) {
		count++;
	}
	return count;
}
