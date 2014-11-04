#!/usr/bin/env python3
def div(n, grupo):
    divisor = grupo + 5
    res = n
    while res >= grupo:
        res -= divisor
    
    return res == 0

def mult_sum(a, b):
    res = 0
    while b > 0:
        res += a
        b-=1
    return res
        
def pot(n, exp):
    res = 1
    while exp > 0:
        res = mult_sum(res, n)        
        exp -=1
    print (res)
    return res
def fib(n):
    a, b, c = 0, 1, 0
    while c < n:
        print (a, end=" ")
        a, b = b, a+b
        c+=1
    print("\n")

def diag(matrix):
    res = 1
    for i in range(len(matrix)):
        el = matrix[i][i]
        res = mult_sum(res, el)
    return res

print("FIB:")
fib(7)
print("POT(3,3):" + str(pot(3,3)))
print("DIV(12,1):" + str(div(12,1)))
matrix = [[0 for x in range(5)] for x in range(5)] 
for x in range(5):
    for y in range(5):
        matrix[x][y] = x+y+1
print('MATRIX:')
print('\n'.join([''.join(['{:4}'.format(item) for item in row])for row in matrix]))
print(diag(matrix))
