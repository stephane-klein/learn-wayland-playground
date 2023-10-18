# My "Learn Wayland by writing a GUI from scratch" playground

In this repository I try to follow [Learn Wayland by writing a GUI from scratch](https://gaultier.github.io/blog/wayland_from_scratch.html).

Context issue (in french): https://github.com/stephane-klein/backlog/issues/329

```sh
$ sudo dnf install gcc
```

> If `$WAYLAND_DISPLAY` is set, attempt to connect to `$XDG_RUNTIME_DIR/$WAYLAND_DISPLAY`

```
$ echo $WAYLAND_DISPLAY
wayland-0

$ echo $XDG_RUNTIME_DIR/$WAYLAND_DISPLAY
/run/user/1000/wayland-0

$ ls -lha /run/user/1000/wayland-0
srwxr-xr-x. 1 stephane stephane 0 18 oct.  09:48 /run/user/1000/wayland-0
```
