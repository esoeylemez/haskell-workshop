-- |
-- Copyright:  (c) 2016 Ertugrul Söylemez
-- License:    BSD3
-- Maintainer: Ertugrul Söylemez <esz@posteo.de>

module Main where


data Person a b =
    Person {
      age  :: a,
      name :: b
    }
    deriving (Eq, Ord, Show)


ertes :: Person Integer String
ertes =
    Person {
      age = 32,
      name = "ertes"
    }


main :: IO ()
main = pure ()
