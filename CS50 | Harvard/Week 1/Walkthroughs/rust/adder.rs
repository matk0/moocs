use std::io;

fn main() {
    println!("Please give me an int: ");
    let mut name = String::new();
    io::stdin().read_line(&mut name)
        .expect("Failed to read line");
    println!("Hello, {}", name);

}
