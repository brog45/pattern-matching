fac :: Int -> Int
fac 0 = 1
fac 1 = 1
fac n = fac (n - 1) + fac (n - 2)

sorted :: [Int] -> Bool 
sorted [] = True 
sorted [_] = True
sorted (a:ys@(b:_)) = a < b && sorted ys
