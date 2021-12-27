pub trait Geometry {
    fn distance(&self, point_b: &Self) -> f64;
    fn scale(&mut self, factor: i32);
}

pub fn print_distance_after_scale<A: Geometry>(geo1: &mut A, geo2: &mut A) {
    geo1.scale(2);
    geo2.scale(2);
    println!("Distance after scale: {}", geo1.distance(&*geo2));
}
