#![no_std]

use kernel::io::STDOUT;
use kernel::print;

pub fn hello() -> () {
    print!();
    print!("Coucou depuis l'utilisateur land ;)\n");
}