const std = @import("std");
const print = @import("std").debug.print;

pub fn wayland_display_connect() std.net.Stream {
    var allocator = std.heap.page_allocator;

    const xdg_runtime_dir = std.os.getenv("XDG_RUNTIME_DIR");
    const wayland_display = std.os.getenv("WAYLAND_DISPLAY");

    const concatenatedString = std.fmt.allocPrint(allocator, "{?s}/{?s}", .{xdg_runtime_dir, wayland_display}) catch unreachable;
    print("{s}\n", .{concatenatedString});
    const stream = std.net.connectUnixSocket(concatenatedString) catch unreachable;
    return stream;
}

pub fn main() !void {
    const stream = wayland_display_connect();
    defer stream.close();
}
