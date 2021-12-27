package geometry

import "fmt"

type Geometry interface {
	Distance(b interface{}) float64
	Scale(factor float64)
}

func PrintDistanceAfterScale(geo1 Geometry, geo2 Geometry) {
	geo1.Scale(2)
	geo2.Scale(2)
	fmt.Println("Distance after scale:", geo1.Distance(geo2))
}
