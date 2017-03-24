-- |
-- Copyright:  (c) 2016 Ertugrul Söylemez
-- License:    BSD3
-- Maintainer: Ertugrul Söylemez <esz@posteo.de>

module FileHandling where

import System.IO


fileTest :: IO ()
fileTest = do
    h <- openFile "test.txt" WriteMode
    hPutStrLn h "blah"
    hPutStrLn h "blubb"
    hClose h


fileTest2 :: IO ()
fileTest2 =
    withFile "test.txt" WriteMode (\h -> do
        hPutStrLn h "blah"
        hPutStrLn h "blubb")
