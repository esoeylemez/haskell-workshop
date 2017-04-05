module Utils where 

rep4 :: a -> [a]
rep4 x = replicate 4 x

pot x = map (^2) [1.. (div x 2)]
sq x = filter (==x) ( pot(x))

--data Maybe a = Just a | Nothing  deriving (Show)
data Kannsein a = Einfach a  | Nichts deriving (Show, Ord, Eq )

--mysqrt 0 = 0

mysqrt :: Int -> Maybe Int 
mysqrt x = sqt 1 x

sqt :: Int -> Int -> Maybe Int
sqt n x     | n2  ==   x       = Just n
            | n2  <    x       = sqt (n+1) x
            | otherwise        = Nothing
    where
    n2 = n^2

mysqrt' :: Integer -> Kannsein Integer
mysqrt' x = sqt' 0 x

sqt' :: Integer -> Integer -> Kannsein Integer
sqt' n x =
    case compare (n^2) x of
      EQ -> Einfach n
      GT -> Nichts
      LT -> sqt' (n + 1) x

    -- case = pattern matching
