--file: 3-2-2.hs
meanList (x:xs) = sumList (x:xs) / (fromIntegral len)
    where len = length (x:xs)
          sumList (x:xs) = x + sumList xs
          sumList [] = 0
meanList [] = 0
