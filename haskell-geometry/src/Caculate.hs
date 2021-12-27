module Caculate (distance) where

import Geometry (Geometry (..))
import Point (Point2D (..))

instance Geometry Point2D where
  distance pointA pointB =
    sqrt ((x pointA - x pointB) ^ 2 + (y pointA - y pointB) ^ 2)

  scale point factor =
    point
      { x = x point * factor,
        y = y point * factor
      }
