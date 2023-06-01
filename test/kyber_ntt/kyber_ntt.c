#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "api.h"
#include "randombytes.h"

int main(void) {
  
    uint8_t pk[PQCLEAN_KYBER768_CLEAN_CRYPTO_PUBLICKEYBYTES];
    uint8_t sk_a[PQCLEAN_KYBER768_CLEAN_CRYPTO_SECRETKEYBYTES];

  
    printf("NTT starts!\n");
    PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair(pk, sk_a);
    printf("NTT done!\n");


  
    return 0;
}
