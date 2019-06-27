{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}
import Data.List

-- findMin :: Ord a => [a] -> a
-- findMin = foldr1 min

removeSmallest :: Ord a => [a] -> [a]
removeSmallest [] = []
removeSmallest [x] = delete (foldr1 min [x]) [x]
removeSmallest (x: xs: xy) = delete (foldr1 min (x : xs : xy)) (x : xs : xy)
