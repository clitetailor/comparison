module Main where

import Caculate ()
import qualified Geometry as Geo
import Point
  ( Point2D (..),
  )

main :: IO ()
main = do
  let pointA = Point2D {x = 0, y = 0}
  let pointB = Point2D {x = 0, y = 3}
  Geo.printDistanceAfterScale pointA pointB
