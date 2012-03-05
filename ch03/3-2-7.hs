--file: 3-2-7.hs
intersperse :: a -> [[a]] -> [a]

intersperse a (la@(x:xs):lb@(y:ys)) = (la ++ [a]) ++ (intersperse a (lb))
intersperse a [l@(x:xs)] = l
intersperse a [] = []
