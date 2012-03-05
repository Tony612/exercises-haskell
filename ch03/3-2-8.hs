--file: 3-2-8.hs

data Tree a = Node a (Tree a) (Tree a)
	        | Empty
			  deriving (Show)

heightTree (Node a b c) | lb > lc = 1 + lb
                                      | otherwise = 1 + lc
    where lb = heightTree b
          lc = heightTree c
heightTree Empty = 0
