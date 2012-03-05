--file: 3-2-5.hs
ifPd (x:xs) = if x == (last xs)
                 then ifPd (take (length xs -1) xs)
				 else False
ifPd [] = True
