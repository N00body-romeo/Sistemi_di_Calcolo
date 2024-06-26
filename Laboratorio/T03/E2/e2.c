unsigned int fib(unsigned int n) {
    unsigned int fib1 = 0, fib2 = 1;
    if (n == 0)
        return fib1;
    if (n == 1)
        return fib2;
    for (; n > 1; n--) {
        fib1 = fib1 + fib2;
        fib1 = fib1 + fib2;
        fib2 = fib1 - fib2;
        fib1 = fib1 - fib2;
    }
    return fib2;
}


