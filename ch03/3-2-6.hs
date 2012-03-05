--file: 3-2-6.hs

import Data.List (sortBy)

sortList :: [[a]] -> [[a]]

sortList ((x:xs):(y:ys)) = sortBy com ((x:xs):(y:ys))
    where com (x:xs) (y:ys) | (length (x:xs)) > (length (y:ys)) = GT
                            | otherwise = LT
