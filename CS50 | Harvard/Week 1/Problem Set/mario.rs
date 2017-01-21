use std::io;

fn main() {

    let mut height = String::new();
    println!("Height: ");

    loop {
        io::stdin().read_line(&mut height)
            .expect("Failed to read line.");

        let height: u32 = height.trim().parse()
            .expect("Please type a number!");

        if height > 0 && height < 32 {
            break;
        } else {
            println!("Please type a number between 1 and 32");
        }
    }

    let height: u32 = height.trim().parse().unwrap();

    for step in 1..(height + 1) {

        for _ in 0..(height - step) {
            print!(" ");
        }

        for _ in 0..step {
            print!("#");
        }

        print!(" ");

        for _ in 0..step {
            print!("#");
        }

        for _ in 0..(height - step) {
            print!(" ");
        }

        println!("");
    }
}
