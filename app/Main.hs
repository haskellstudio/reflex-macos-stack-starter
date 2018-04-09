{-# LANGUAGE OverloadedStrings #-}
module Main where

import Reflex.Dom
import qualified Data.Text as T
import qualified Data.Map as Map
import           Data.Monoid ((<>))

main :: IO ()
--main = mainWidget $ el "div" $ do
--  el "h1" $ text "reflex-starter"
--  el "a" $ text "Now you can start playing with Reflex!"
--main = mainWidget $ display =<< count =<< button "ClickMe"
--main = mainWidget $ el "h1" $ text "Hello World!"
{-main = mainWidget $ do
        el "h1" $ text "Hello World"
        el "div" $ do
                el "p" $ text "I am:"
                el "ul" $ do
                    el "li" $ text "Smart"
                    el "li" $ text "Fun"
                    el "li" $ text "Efficient" -}


main = mainWidget $ do
    el "h1" $ text "A link-- to Google in a new tab"
    elAttr "a" attrs $ text "Google!"

attrs :: Map.Map T.Text T.Text
attrs = ("target" =: "_blank") <> ("href" =: "http://google.com")
