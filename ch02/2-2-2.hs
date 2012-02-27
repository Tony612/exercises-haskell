--file: ch02/2-2-2.hs
--Name it like that because there are more than one EXERCISES in one chapter.
lastButOne :: [a] -> a

lastButOne xs = last (take (length xs - 1) xs )
