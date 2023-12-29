use fmt;

export fn main() void = {
	const x = [1, 3, 3, 7];
	const z: *[*]int = &x;
	z[4] = 8; // undefined behavior
	fmt::println(z[4])!; // 8 on my machine
};
