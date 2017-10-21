mul35 n = (sum [3,6..limit] + sum [5,10..limit]) - sum [15,30..limit] where limit = n - 1

main = print (mul35 1000)
