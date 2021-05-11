fac :: Int -> Int
fac n
    | n == 0    = 1
    | n == 1    = 1
    | otherwise = fac (n - 1) + fac (n - 2)

sorted :: [Int] -> Bool 
sorted xs
    | length xs < 2 = True
    | otherwise     =
        let a  = head xs
            ys = tail xs
            b  = head ys
        in a < b && sorted ys
