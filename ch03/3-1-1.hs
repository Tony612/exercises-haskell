--file: ch03/3-1-1.hs
--converse of fromList

data List a = Cons a (List a)
            | Nil
			  deriving (Show)
converseList (Cons a b) = (a:(converseList b))
converseList Nil = []
