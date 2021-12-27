package main

import (
	"gogeometry/caculate"
	"gogeometry/geometry"
	"gogeometry/point"
)

func main() {
	pointA := point.Point2D{
		X: 0, Y: 0,
	}
	pointB := point.Point2D{
		X: 0, Y: 3,
	}

	geometry.PrintDistanceAfterScale(
		&caculate.Point2DGeometry{pointA},
		&caculate.Point2DGeometry{pointB},
	)
}
