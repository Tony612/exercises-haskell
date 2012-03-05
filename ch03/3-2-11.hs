--file: 3-2-11.hs

data Direction = MyLeft
               | MyRight
			   | MyStraight
	             deriving (Show)

getTurn (x1, y1) (x2, y2) (x3, y3)
	                    | x > 0 = MyLeft
						| x == 0 = MyStraight
						| x < 0 = MyRight
	where x = (x2-x1) * (y3-y1) - (x3-x1) * (y2-y1)
getTurn (x1, y1) (x2, y2) _ = MyStraight

getTurnList ((x1, y1):(x2, y2):(x3, y3):l) = [getTurn (x1, y1) (x2, y2) (x3, y3)] ++ getTurnList ((x2, y2):(x3, y3):l)
getTurnList [(x1, y1), (x2, y2)] = []
