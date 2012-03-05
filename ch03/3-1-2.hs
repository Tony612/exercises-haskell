--file: ch03/3-1-2.hs
--test: Node "p" (Main.Just(Node "l" Main.Nothing Main.Nothing)) (Main.Just(Node "r" Main.Nothing Main.Nothing))
import Prelude hiding (Maybe)

data Maybe a = Just a
             | Nothing
               deriving (Show)
data MyTree a = Node a (Maybe (MyTree a)) (Maybe (MyTree a))
                deriving (Show)
