#int f(int x, int y) {
#    int b = x;
#    int di = y;
#   int a = g(b, di);
#    int si = a;
#    a = g(di, b);
#    a = a + si;
#    return a;

.globl f

f:      # int f(int x, int y) {
    pushl %ebx
    pushl %edi
    pushl %esi
    subl $8, %esp
    
    movl 24(%esp), %ebx         # int b = x;
    movl 28(%esp), %edi         # int di = y;
    
    movl %edi, 4(%esp)
    movl %ebx, (%esp)
    call g                      # int a = g(b, di);
   
    movl %eax, %esi             # int si = a;
    
    movl %ebx, 4(%esp)
    movl %edi, (%esp)
    call g                      # a = g(di, b);
    
    addl %esi, %eax             # a = a + si;
    
    addl $8, %esp
    popl %esi
    popl %edi
    popl %ebx
    
    ret             # return a;
