#include <stdio.h>

int main() {
    int x = 1;
    x = NULL; // clang warns: -Wint-conversion
    puts("int can be NULL");
}
