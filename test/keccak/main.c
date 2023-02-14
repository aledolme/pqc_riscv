#include <stdio.h>
#include <inttypes.h>
#include <string.h>

#include "keccak.h"

int main(){

	uint32_t Din[50];
	memset(Din, 0, sizeof(Din));
	
 
	Din[0] = 0x7369C667;
	Din[1] = 0xEC4AFF51;
	Din[2] = 0xABBACD29;
	Din[3] = 0x00000010;
	Din[31] = 0x80000000;


    KeccakF1600_StatePermute(Din);	
	
	return 0;

}
