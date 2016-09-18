-- arrows look nice
fac :: Int -> Int
fac 0 = 1
fac n = n * fac (n - 1)

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fib' :: Int -> Int
fib' n
  | n <= 1    = 1
  | otherwise = fib' (n - 1) + fib' (n - 2)

cube :: (Num a) => a -> a
cube = a * a * a

-- function composition
f = x . g
cubedFib = (fib 5 . cube)

-- lambdas are lambdas
lessThanFive :: (Num a) => [a] -> [Bool]
lessThanFive = (\ x -> x < 5)

doubledCountdown = map (\ x -> x * 2) [5,4,3,2,1]

-- arrows
->  -- ->
<-  -- <-
=>  -- =>
=<< -- =<<
>>= -- >>=
>=> -- >=>
<=< -- <=<
-<  -- -<
-<< -- -<<
>-  -- >-
>>- -- >>-
