#include <stdio.h>
#include <inttypes.h>
//#include "pulp.h"

#define KYBER_N 256

typedef struct {
    int16_t coeffs[KYBER_N];
} poly;

void readPolyFile(const char* filename, poly* p) {
    FILE* file = fopen(filename, "r");
    if (file == NULL) {
        printf("Failed to open the file.\n");
        return;
    }

    char line[5];  // Assuming each line has 4 characters for the hexadecimal number
    int i = 0;
    while (fgets(line, sizeof(line), file) != NULL) {
        sscanf(line, "%hx", &p->coeffs[i++]);
        if (i >= KYBER_N)
            break;
    }

    fclose(file);
}

int main(){

	printf("Hello! Startint the NTT!\n");
	poly e;

	readPolyFile("../ntt_test/ntt_DIN3.txt", &e);
	for (int i=0; i < KYBER_N; i++){
		printf("Coefficient %d: %02X\n", i, e.coeffs[i]);
	}

	
	return 0;

}

