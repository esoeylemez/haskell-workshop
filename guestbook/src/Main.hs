-- |
-- Copyright:  (c) 2016 Ertugrul Söylemez
-- License:    BSD3
-- Maintainer: Ertugrul Söylemez <esz@posteo.de>

{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Control.Concurrent
import Control.Monad.IO.Class
import Data.Monoid
import Lucid
import Web.Scotty


page :: Html () -> Html ()
page b =
    doctype_ <>
    html_ (head_ (title_ "Gästebuch" <>
                  meta_ [charset_ "UTF-8"]) <>
           body_ b)


main :: IO ()
main = do
    ctrVar <- newMVar 0

    scotty 3000 $ do
        get "/" $ do
            setHeader "content-type" "text/html; charset=UTF-8"
            c <- liftIO (modifyMVar ctrVar (\x -> pure (x + 1, x)))
            text . renderText . page $
                p_ ("Hallo Nr. " <> toHtml (show c)) <>
                p_ "Hier geht's weiter:" <>
                p_ (a_ [href_ "/blah"] "Click me!")

        get "/blah" $ do
            setHeader "content-type" "text/html; charset=UTF-8"
            text . renderText . page $
                p_ "Groovy!"
