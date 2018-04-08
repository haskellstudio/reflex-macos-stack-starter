{-# LANGUAGE RecursiveDo #-}
{-# LANGUAGE OverloadedStrings #-}
import Reflex.Dom

main :: IO ()
main = mainWidget bodyElement 

bodyElement :: MonadWidget t m => m ()
bodyElement = do
  rec el "h2" $ text "Combining Events with leftmost"
      dynCount <- foldDyn (+) (0 :: Int) $ leftmost [1 <$ evIncr, -1 <$ evDecr]
      el "div" $ display dynCount
      evIncr <- button "Increment"
      evDecr <- button "Decrement"
  return ()