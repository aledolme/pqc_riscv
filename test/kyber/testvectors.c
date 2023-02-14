#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "api.h"
#include "randombytes.h"


int main(void) {
  uint8_t key_a[PQCLEAN_KYBER768_CLEAN_CRYPTO_BYTES], key_b[PQCLEAN_KYBER768_CLEAN_CRYPTO_BYTES];
    uint8_t pk[PQCLEAN_KYBER768_CLEAN_CRYPTO_PUBLICKEYBYTES];
    uint8_t sendb[PQCLEAN_KYBER768_CLEAN_CRYPTO_CIPHERTEXTBYTES];
    uint8_t sk_a[PQCLEAN_KYBER768_CLEAN_CRYPTO_SECRETKEYBYTES];
    int j;

    // Key-pair generation
	printf("Keypair starts!\n");
    PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair(pk, sk_a);
	printf("Keypair done!\n");

    return 0;
}
