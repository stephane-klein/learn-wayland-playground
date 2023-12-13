const std = @import("std");
const print = @import("std").debug.print;

pub fn wayland_display_connect() u16 {
    var allocator = std.heap.page_allocator;

    const xdg_runtime_dir = std.os.getenv("XDG_RUNTIME_DIR");
    print("Hello 1 {?s}\n", .{xdg_runtime_dir});
    const wayland_display = std.os.getenv("WAYLAND_DISPLAY");
    print("Hello 1 {?s}\n", .{wayland_display});

    const concatenatedString = std.fmt.allocPrint(allocator, "{?s}{?s}", .{xdg_runtime_dir, wayland_display});
    print("{}\n", concatenatedString);
    const stream = std.net.connectUnixSocket("/run/user/1000/wayland-0") catch unreachable;
    defer stream.close();
    return 0;
}

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    const result = wayland_display_connect();
    try stdout.print("Result {}\n", .{result});
}
