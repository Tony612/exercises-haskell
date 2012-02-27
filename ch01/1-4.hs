-- file: ch01/1-4.hs

main = interact charCount
    where charCount input = show (length input) ++ "\n"
