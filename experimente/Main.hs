-- Main.hs
--
-- Am besten: UTF-8 *ohne BOM*

module Main where

import System.IO

-- https://github.com/esoeylemez/haskell-workshop
-- esz@posteo.de


-- replicate :: Int -> a -> [a]
-- n :: Int
-- c :: Char
-- replicate n c :: [Char]

-- c :: IO Int
-- f :: Int -> IO String
-- c >>= f :: IO String

-- getLine  :: IO String
-- putStrLn :: String -> IO ()
-- (>>=)    :: IO a -> (a -> IO b) -> IO b
--    ("bind")

-- getLine >>= putStrLn :: IO ()
-- putStrLn "abc"


-- (>>) :: IO a -> IO b -> IO b
-- c >> d = c >>= \_ -> d

-- pure :: a -> IO a

-- pure () :: IO ()

-- id :: a -> a
-- replicate :: Int -> (a -> [a])
-- id (replicate 4 :: a -> [a]) :: a -> [a]


myForever :: IO () -> IO ()
myForever action = do
    action
    myForever action


replicateIO :: Int -> IO () -> IO ()
replicateIO 0 action = pure ()
replicateIO n action = do
    action
    replicateIO (n - 1) action


main :: IO ()
main = replicateIO 100 (putStrLn "hello")
