def exer1(n, grupo):
    return n % (grupo+5) == 0

def mult_sum(a, b):
    if b == 1:
        return a

    if b == 0:
        return 0

    aux = mult_sum(a, b // 2)

    if b % 2==0:
        return aux + aux

    return n + aux + aux
       
def exer7(n, exp):
    if exp == 1:
        return n
    if exp == 0:
        return 1

    aux = exer7(n, exp // 2)

    if exp%2==0:
        return mult_sum(aux, aux)

    return mult_sum(mult_sum(aux, aux), n)

def fib(n):   
    if n<=1:
        return 1;
    return fib(n - 2) + fib(n - 1)

def mult_diagonal(matrix):
    res = 1
    for i in range(len(matrix)):
        el = matrix[i][i]
        res = mult_sum(res, el)
    
print fib(7)
