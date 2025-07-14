use crypto::sha256;
use encoding::hex;
use hash;
use io;
use os;
use fmt;

export fn main() void = {
	// Pointer basics
	const i = 10;
    i = 11; // Error: cannot assign to constant
	fmt::println(i)!;
	increment(&i);
	fmt::println(i)!;

	// Applied usage
	const hash = sha256::sha256();
	const file = os::open("main.ha")!;
	io::copy(&hash, file)!;

	let sum: [sha256::SIZE]u8 = [0...];
	hash::sum(&hash, sum);
	hex::encode(os::stdout, sum)!;
	fmt::println()!;
};

fn increment(ptr: *int) void = {
	*ptr = *ptr + 1;
};