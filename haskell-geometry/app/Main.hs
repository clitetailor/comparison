module Main where

import Data
  ( Point2D (..),
  )
import Instance ()
import qualified Typeclass as T

main :: IO ()
main = do
  let pointA = Point2D {x = 1, y = 2}
  let pointB = Point2D {x = 2, y = 1}
  putStrLn $
    show $ T.distance pointA pointB
  putStrLn $
    show $ T.scale pointA 2
