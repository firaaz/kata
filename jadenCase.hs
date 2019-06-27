{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Char as Char

jadenCall :: String -> [Char]
jadenCall [] = []
jadenCall x = Char.toUpper (head (head (words x))) : tail (head (words x)) ++ " " ++ jadenCall (unwords(tail (words x )))

toJadenCase x = init (jadenCall x)

-- toJadenCase  :: String -> String
-- toJadenCase = unwords . map firstCap . words
--   where firstCap (x: xs) = Char.toUpper x : xs
--         firstCap []      = []
