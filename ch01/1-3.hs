-- file: ch01/1-3.hs
main = interact wordCount
    where wordCount input = show (length (words input)) ++ "\n"
