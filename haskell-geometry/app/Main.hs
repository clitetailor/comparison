module Main where

import Caculate ()
import qualified Geometry as Geo
import Point
  ( Point2D (..),
  )

main :: IO ()
main = do
  let pointA = Point2D {x = 1, y = 2}
  let pointB = Point2D {x = 2, y = 1}
  putStrLn $
    show $ Geo.distance pointA pointB
  putStrLn $
    show $ Geo.scale pointA 2
