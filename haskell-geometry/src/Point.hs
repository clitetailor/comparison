module Point (Point2D (..)) where

data Point2D = Point2D
  { x :: Double,
    y :: Double
  }
  deriving (Show)
