use std::io;

fn main() {
    println!("State your name: ");
    let mut name = String::new();
    io::stdin().read_line(&mut name)
        .expect("Failed to read line");
    println!("Hello, {}", name);

}
