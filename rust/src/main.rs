use std::io;
use std::cmp::Ordering;

fn another_function() {
    println!("Another function. {}", (0, 1, 2).1);
}

fn main() {
    println!("Guess the number!");

    println!("Please input your guess.");

    let mut guess = String::new();

    io::stdin().read_line(&mut guess)
        .expect("Failed to read line");

    let guess: u8 = guess.trim().parse()
        .expect("Please type a number!");

    println!("You guessed: {}", guess);

    let secret_number: u8 = 42;
    match guess.cmp(&secret_number) {
        Ordering::Less => println!("Too small!"),
        Ordering::Greater => println!("Too big!"),
        Ordering::Equal => println!("You win!"),
    }

    another_function();
}