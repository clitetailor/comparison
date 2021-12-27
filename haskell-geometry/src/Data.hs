module Data (Point2D (Point2D, x, y)) where

data Point2D = Point2D
  { x :: Double,
    y :: Double
  }
  deriving (Show)
