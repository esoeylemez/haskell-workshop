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
sqt n x     | n ^ 2  ==   x       = Just n
            | n ^ 2  <    x       = sqt (n+1) x
            | otherwise           = Nothing

mysqrt' :: Integer -> Kannsein Integer
mysqrt' x = sqt' 1 x

sqt' :: Integer -> Integer -> Kannsein Integer
sqt' n x     | n ^ 2  ==   x      = Einfach n
             | n ^ 2  <    x      = sqt' (n+1) x
             | otherwise          = Nichts
