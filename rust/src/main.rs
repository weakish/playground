fn main() {
    let x: i32 = 2 ^ 31 - 1;
    let y: i32 = 2 ^ 31 - 1;
    println!("{}", x+y); // 56 (IntegerOverflow)
}
