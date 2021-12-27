package main

import (
	"fmt"
	"gogeometry/point"
)

func main() {
	pointA := point.Point2D{
		X: 0, Y: 0,
	}
	pointB := point.Point2D{
		X: 0, Y: 3,
	}

	fmt.Println(pointA)
	fmt.Println(pointB)
}
