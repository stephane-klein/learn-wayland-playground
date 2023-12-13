# Zig version of "Learn Wayland by writing a GUI from scratch" playground

In this repository I try to follow [Learn Wayland by writing a GUI from scratch](https://gaultier.github.io/blog/wayland_from_scratch.html).

Context issue (in french): https://github.com/stephane-klein/backlog/issues/329

This is Zig language playground.

I install Zig language with [asdf](https://asdf-vm.com/)

```sh
$ asdf plugin-add zig https://github.com/asdf-community/asdf-zig.git
$ asdf install
$ zig version
0.11.0
```

```sh
$ zig build-exe playground.zig
$ ./playground
Hello, world!
```

