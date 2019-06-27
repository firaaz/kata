positiveSum :: [Int] -> Int
positiveSum [] = 0
positiveSum (x : xs)
  | x >= 0 = x + positiveSum xs
  | otherwise = positiveSum xs
