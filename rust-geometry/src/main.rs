use geometryrs::point::Point2D;

fn main() {
    let point_a = Point2D {
        x: 0 as f64,
        y: 0 as f64,
    };
    let point_b = Point2D {
        x: 0 as f64,
        y: 3 as f64,
    };

    println!("{:?}", point_a);
    println!("{:?}", point_b);
}
