package caculate

import (
	"gogeometry/point"
	"math"
)

type Point2DGeometry struct {
	point.Point2D
}

func (p *Point2DGeometry) Distance(b interface{}) float64 {
	pointA := p
	pointB := b.(*Point2DGeometry)

	return math.Sqrt(math.Pow(pointA.X - pointB.X, 2) + math.Pow(pointA.Y - pointB.Y, 2))
}

func (p *Point2DGeometry) Scale(factor float64) {
	p.X = p.X * 2
	p.Y = p.Y * 2
}
