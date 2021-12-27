module Geometry (Geometry (..), printDistanceAfterScale) where

class Geometry a where
  distance :: a -> a -> Double
  scale :: a -> Double -> a

printDistanceAfterScale :: Geometry a => a -> a -> IO ()
printDistanceAfterScale pointA pointB = do
  let dist = distance (scale pointA 2) (scale pointB 2)
  putStrLn $ "Distance after scale: " <> (show dist)
