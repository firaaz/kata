fib = zipWith (+) (0:(1:fib)) (1:fib)

fibonacci :: Int -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = last $ take (n - 1) fib
