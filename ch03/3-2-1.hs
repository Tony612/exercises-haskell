--file: 3-2-1.hs
numList :: [a] -> Integer

numList (x:xs) = 1 + numList xs
numList [] = 0
