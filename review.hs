-- ctrl + L to clear terminal

name = ['e', 'd', 'e', 'l', 'i', 's']

boomBngs xs = [if x < 3 then "Boom!" else "Bang!" | x <- xs, odd x]

isPalindrome x = show x == reverse (show x)

scale x factor = x * factor

-- Define a function doublePos xs that doubles the positive elements in a list of integers
doublePos xs = [if x > 0 then 2 * x else x | x <- xs]

-- Define a function spaces n which returns a string of n spaces.
spaces n = [ ' ' | _ <- [1..n] ]

-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.
sumOfNatural n = sum [ x | x <- [1..(n-1)], (x `mod` 3 == 0 || x `mod` 5 == 0)]

-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.
largest = maximum [ x * y | x <- [1..999], y <- [1..999], isPalindrome (x * y)]


--Recursion
count 100 = []
count n   = n : count (n + 1)

--Fibonacci
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

--List of n Fib Numbers
listFib n = [fib x | x <- [1..n]]
listFib' n = [ (x, fib x) | x <- [1 .. n] ]

--List of Fib Numbers below n
fibList n = go n 1 1
    where 
    go n f s --first and second
        | (f+s) > n = []
        | otherwise = (f+s) : go n s (f+s)


--List of even Fib Numbers below n. Get the sum
evenFib n = sum (go n 1 1)
  where
    go n f s 
        | (f+s) > n = []
        | otherwise = if even (f+s) then (f + s) : go n s (f + s) else go n s (f + s)

