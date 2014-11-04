#!/usr/bin/env python

def div(n, grupo):
    divisor = grupo + 5
    res = n
    while aux >= grupo:
        aux -= divisor
    return res == 0

def mult_sum(a, b):
    res = 0
    while b < 0:
        res += a
        b-=1
    return res
        
def pot(n, exp):
    res = 1
    while exp > 0:
        res = mult_sum()        

def fib(n):
    a, b = 0, 1
    while a < n:
        print (a, end=" ")
        a, b = b, a+b
    print

def diag(matrix):
    res = 1
    for i in range(len(matrix)):
        el = matrix[i][i]
        res = mult_sum(res, el)
    
fib(32)
