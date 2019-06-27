partsSum :: [Integer] -> [Integer]
partsSum [] = [0]
partsSum (x:xs) = sum (x: xs) : partsSum xs
