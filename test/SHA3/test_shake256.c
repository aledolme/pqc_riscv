#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <inttypes.h>

#include "fips_202.h"

const unsigned char plaintext[16] = "0123456789abcdef";
const unsigned char expected[32] = {
	0xf2, 0x05, 0xe4, 0x48, 0xf1, 0x3f, 0x75, 0xe2, 0x42, 0xc2, 0x37, 0xac,
	0x0c, 0x15, 0x05, 0xb0, 0x02, 0x0c, 0xde, 0x5b, 0x8b, 0xd5, 0xe6, 0xf0,
	0xb0, 0x5c, 0x44, 0x42, 0x99, 0x81, 0x7f, 0xf7
};


int main() {

	unsigned char output[32];
    int i = 0;

    shake256(output, 32, plaintext, 16);

    if (memcmp(expected, output, 32) != 0) {
        printf("ERROR shake128 output did not match test vector.\n");
        printf("Expected: ");
        for (i = 0; i < 32; i++) {
            printf("%02X", expected[i]);
        }
        printf("\n");
        printf("Received: ");
        for (i = 0; i < 32; i++) {
            printf("%02X", output[i]);
        }
        printf("\n");
        return 1;
    }
	else {
		printf("Shake256 goes well! :)\n");
		return 0;		
	}

 
}
