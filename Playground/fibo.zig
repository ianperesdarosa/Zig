const std = @import("std");

fn fibonacci(n: usize) usize {
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}

pub fn main() void {
    const numTerms: usize = 10;

    std.debug.print("Sequência Fibonacci com {} termos:\n", .{numTerms});

    for (numTerms) |i| {
        std.debug.print("{} ", .{fibonacci(i)});
    }

    std.debug.print("\n", .{});
}
