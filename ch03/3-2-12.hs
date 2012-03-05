--file: 3-2-12.hs

import Data.List (sortBy)

data Direction = MyLeft
               | MyRight
			   | MyStraight
	             deriving (Eq, Show)

getTurn (x0, y0) (x1, y1) (x2, y2)
	                    | x > 0 = MyLeft
						| x == 0 = MyStraight
						| x < 0 = MyRight
	where x = (x1-x0) * (y2-y0) - (x2-x0) * (y1-y0)
getTurn (x0, y0) (x1, y1) _ = MyStraight

getTurnList ((x0, y0):(x1, y1):(x2, y2):l) = [getTurn (x0, y0) (x1, y1) (x2, y2)] ++ getTurnList ((x1, y1):(x2, y2):l)
getTurnList [(x0, y0), (x1, y1)] = []

grahamCH l1@((x0, y0):l) ch = if getTurn (last (init ch)) (last ch) (x0, y0) == MyRight
						   then grahamCH l1 (init ch)
						   else grahamCH l (ch ++ [(x0, y0)])
grahamCH _ ch = ch


findFirst l = sortBy comp l
    where comp (x0, y0) (x1, y1) | (y1 < y0 || (y1 == y0 && x1 < x0)) = GT
					             | otherwise = LT

initial ((x0, y0):l) = [(x0, y0)] ++ sortBy comp l
	where comp (x1, y1) (x2, y2) | ((x1 - x0) * (y2 - y0) - (x2 - x0) * (y1 - y0)) > 0 = LT
					             | (x1 - x0) * (y2 - y0) == (x2 - x0) * (y1 - y0) && x1 < x2 = LT
								 | otherwise = GT

findConvexHull l = grahamCH (tail (tail l1)) (take 2 l1)
	where l1 = initial (findFirst l)
