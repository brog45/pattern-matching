fac :: Int -> Int
fac n = case n of
    0 -> 1
    1 -> 1
    _ -> fac (n - 1) + fac (n - 2)

sorted :: [Int] -> Bool
sorted xs = case xs of
    []  -> True
    [_] -> True 
    a:ys@(b:_) -> a < b && sorted ys
