{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}
{-# LANGUAGE OverloadedStrings #-}


shortest_list :: Foldable t => [t a] -> [Int]
shortest_list [] = []
shortest_list (x : xs) = length x : shortest_list xs

find_shortest :: String -> Int
find_shortest x = foldr1 min (shortest_list (words x))
