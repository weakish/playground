use fmt;

export fn main() void = {
	const z: *[_]int = &[1, 3, 3, 7];
	z[4] = 8; // undefined behavior
	fmt::println(z[3])!; // prints 8 on my machine
};
