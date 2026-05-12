#include <stdio.h>

int main(int argc, char* argv[]) {
    /* check that we have the correct amt of arguments */
    if (argc != 2) {
        printf("Can't call me in this manner! Try ./proj3 <filename> instead.\n");
        return 1;
    }

    /* open file with parameters to read binary; check that its been successfully opened */
    FILE* toRead = fopen(argv[1], "rb");

    if (toRead == NULL) {
        printf("Couldn't open given file!\n");
        return 1;
    }

    /* create variables for current (relative) address, chunk of chars to read and amt of bytes already read*/
    unsigned int address = 0;
    unsigned char chunk[16];
    size_t bytesRead = fread(chunk, 1, 16, toRead);

    /* read 16 bytes until we're out of bytes to read */
    while (bytesRead > 0) {
        /* print address + buffer space */
        printf("%08x", address);
        printf(" ");

        /* print hex + buffer space */
        for (int i = 0; i < 16; i++) {
            if (i < bytesRead) {
                printf("%02x", chunk[i]);
                printf(" ");
            }
        }

        /* print ascii characters if they're within ascii range; print . if not. box with | */
        printf("|");
        for (int i = 0; i < bytesRead; i++) {
            if (chunk[i] >= 32 && chunk[i] <= 126) {
                printf("%c", chunk[i]);
            } else {
                printf(".");
            }
        }
        printf("|\n");

        /* increment address, read next bytes */
        address += 16;
        bytesRead = fread(chunk, 1, 16, toRead);
    }

    /* close file */
    fclose(toRead);
    return 0;
}