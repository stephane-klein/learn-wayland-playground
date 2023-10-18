#include <stdio.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <sys/un.h>

int main(void) {
    char *xdg_runtime_dir = getenv("XDG_RUNTIME_DIR");

    if (xdg_runtime_dir == NULL) {
        puts("Erreur");
    } else {
        puts("Succès");
        puts(xdg_runtime_dir);
    }

    struct sockaddr_un addr = {.sun_family = AF_UNIX};
    puts("sun_path size");
    printf("%i", sizeof(addr.sun_path));

    return 0;
}
