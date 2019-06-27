import Data.List

grouper x = (group (sort x))

findOdd x = findOdd' $ grouper x

findOdd' :: [[Int]] -> Int
findOdd' (x:xs)
  | odd (length (x)) = head x
  | otherwise = findOdd' xs
