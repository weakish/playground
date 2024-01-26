const std = @import("std");
const print = std.debug.print;

/// A structure for storing a timestamp, with nanosecond precision (this is a
/// multiline doc comment).
// cSpell:words struct
const Timestamp = struct {
    seconds: i64 = 0, // signed so we can represent pre-1970 (not a doc comment)
    nanoSeconds: u32 = 0,
};

pub fn main() !void {
    print("Hi, ", .{});
    const stdout = std.io.getStdOut();
    _ = try stdout.write("there!\n");
    const epoch = Timestamp{};
    print("Unix Epoch: {}.{}\n", .{ epoch.seconds, epoch.nanoSeconds });
    const hhaeee = 2;
    print("Haeee, {}", .{hhaeee});
}
