{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}

getCount1 :: String -> Int -> Int
getCount1 [] val = val
getCount1 (x:xs) val
  | elem x "aeiou" = getCount1 (xs) (val+1)
  | otherwise = getCount1 (xs) val

getCount :: String -> Int
getCount []  = 0
getCount (x:xs) = getCount1 (x:xs) 0

