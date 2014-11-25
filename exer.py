#!/usr/bin/env python3

#Exercício 1
def div(n, grupo):
    divisor = grupo + 5
    res = n
    while res >= grupo:
        res -= divisor
    
    return res

def mult_sum(a, b):
    res = 0
    while b > 0:
        res += a
        b-=1
    return res
        
#Exercício 7
def pot(n, exp):
    res = 1
    while exp > 0:
        res = mult_sum(res, n)        
        exp -=1
    return res

#Exercício 12
def fib(n):
    a, b, c = 0, 1, 0
    res = []
    while c < n:
        res[a] = b
        a, b = b, a+b
        c+=1
    print("\n")

#Exercício 21
def diag(matrix):
    res = 1
    for i in range(len(matrix)):
        el = matrix[i][i]
        res = mult_sum(res, el)
    return res

print("FIB:" + str(fib(7)))
print("POT(3,3):" + str(pot(3,3)))
print("DIV(12,1):" + str(div(12,1)))

matrix = [[0 for x in range(5)] for x in range(5)] 
matrix = [ [1,2,2,2,2], [2,2,2,2,2], [2,2,3,2,2], [2,2,2,4,2], [2,2,2,2,5] ]
p1rint('MATRIX:')
print('\n'.join([''.join(['{:4}'.format(item) for item in row])for row in matrix]))
print(diag(matrix))
