#include <unistd.h>
#include <stdio.h>


int main() {
    int num = 10;
    for (; num > 0; num--) {
        if (num == 5) {
            break;
        }
    }
    printf("%d = 5\n", num);
    for (char user_input[1];
         user_input[0] != '\n' && user_input[0] != '\r' && user_input[0] != EOF;
         read(0, &user_input, 1)) {
        printf("%s", user_input);
    }
}