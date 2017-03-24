-- |
-- Copyright:  (c) 2016 Ertugrul Söylemez
-- License:    BSD3
-- Maintainer: Ertugrul Söylemez <esz@posteo.de>

module Main where


-- data Bool
--     = False
--     | True
--
-- data () = ()


data Weekday
    = Monday
    | Tuesday
    | Wednesday
    | Thursday
    | Friday
    | Saturday
    | Sunday
    deriving (Bounded, Enum, Eq, Ord, Show)


nextDay :: Weekday -> Weekday
nextDay Sunday = Monday
nextDay x      = succ x


myNot :: Bool -> Bool
myNot False = True
myNot b     = False


-- data Maybe a
--     = Nothing
--     | Just a
--     deriving (Eq, Ord, Show)


fromMaybeInteger :: Maybe Integer -> Integer
fromMaybeInteger Nothing = 17
fromMaybeInteger (Just x) = x


isqrt :: Integer -> Maybe Integer
isqrt 0 = Just 0
isqrt 1 = Just 1
isqrt 4 = Just 2
isqrt _ = Nothing


main :: IO ()
main = pure ()
