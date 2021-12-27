module Main where

import Point
  ( Point2D (..),
  )

main :: IO ()
main = do
  let pointA = Point2D {x = 0, y = 0}
  let pointB = Point2D {x = 0, y = 3}
  putStrLn $ show pointA
  putStrLn $ show pointB
