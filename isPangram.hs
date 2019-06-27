import Data.Char

-- BOTH THE WAYS WORK
-- tf xs = [ toLower x | x <- xs, isAlpha x ]

-- isPangram :: String -> Bool
-- isPangram x
--   | panagramCheck "abcdefghijklmnopqrstuvwxyz" (tf x) == True = True
--   | otherwise = False

-- panagramCheck (x:xs) y
--   | elem x y = panagramCheck xs y
--   | otherwise = False
-- panagramCheck [] _ = True

isPanagram  :: String -> Bool
isPanagram str = all (`elem` (map toLower str)) ['a' .. 'z']
