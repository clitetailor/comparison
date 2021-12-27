module Geometry (Geometry (..)) where

class Geometry a where
  distance :: a -> a -> Double
  scale :: a -> Double -> a
