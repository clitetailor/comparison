use geometryrs::geometry::print_distance_after_scale;
use geometryrs::point::Point2D;

fn main() {
    let mut point_a = Point2D {
        x: 0 as f64,
        y: 0 as f64,
    };
    let mut point_b = Point2D {
        x: 0 as f64,
        y: 3 as f64,
    };

    print_distance_after_scale(&mut point_a, &mut point_b);
}
