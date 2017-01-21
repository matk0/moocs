use std::io;

fn main() {
    let ounces_per_minute = 192;
    let ounces_per_water_bottle = 16;

    println!("For how many minutes do you shower: ");

    let mut duration = String::new();

    io::stdin().read_line(&mut duration)
        .expect("Failed to read line");


    println!("You used the equivalent of {} bottles of water.",
             duration.trim().parse::<u32>().unwrap()
             *ounces_per_minute
             /ounces_per_water_bottle
             )
}
