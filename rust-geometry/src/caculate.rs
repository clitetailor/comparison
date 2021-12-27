use crate::geometry::Geometry;
use crate::point::Point2D;

impl Geometry for Point2D {
  fn distance(&self, point_b: &Point2D) -> f64 {
    (self.x - point_b.x).powf(2.0) + (self.y - point_b.y).powf(2.0)
  }

  fn scale(&mut self, factor: i32) {
    self.x = self.x * (factor as f64);
    self.y = self.y * (factor as f64);
  }
}
