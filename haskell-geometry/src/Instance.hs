module Instance (distance) where

import Data (Point2D (..))
import Typeclass (Geometry (..))

instance Geometry Point2D where
  distance pointA pointB =
    sqrt ((x pointA - x pointB) ^ 2 + (y pointA - y pointB) ^ 2)
