--file: 3-2-4.hs

palindrome (x:xs) = [x] ++ (palindrome xs) ++ [x]
palindrome [] = []
