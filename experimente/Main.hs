-- Main.hs
--
-- Am besten: UTF-8 *ohne BOM*

module Main where

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


-- (>>) :: IO a -> IO b -> IO b
-- c >> d = c >>= \_ -> d


main :: IO ()
main = do
    line <- getLine
    putStrLn ("Hello, " ++ line)
    putStrLn ""
    putStrLn "... world!"

    -- getLine >>= (\line -> putStrLn ("blah: " ++ line))
