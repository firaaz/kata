getMiddle :: String -> String
getMiddle x
  | even (length x) = x !! ((div ( length x ) 2 ) - 1) : x !! (div ( length x ) 2) : []
  | odd (length x) = x !! (div (length x) 2) : []
  | otherwise = []
