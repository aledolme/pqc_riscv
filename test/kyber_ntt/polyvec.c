#include "params.h"
#include "poly.h"
#include "polyvec.h"
#include <stdint.h>

static void printbytes(const uint8_t *x, size_t xlen) {
    size_t i;
    for (i = 0; i < xlen; i++) {
        printf("%02x", x[i]);
    }
    printf("\n");
    }
/*************************************************
* Name:        PQCLEAN_KYBER768_CLEAN_polyvec_ntt
*
* Description: Apply forward NTT to all elements of a vector of polynomials
*
* Arguments:   - polyvec *r: pointer to in/output vector of polynomials
**************************************************/
void PQCLEAN_KYBER768_CLEAN_polyvec_ntt(polyvec *r) {
    unsigned int i;
	int16_t Din[256], Dout[256];

	for (i = 0; i < 256; i++) {	 
		Din[i] = &r->vec[0]->coeffs)
	}

	printf("NTT accelerator starts working!\n");
	KYBER_poly_ntt(Din[256], Dout[256]);
	printf("NTT accelerator ends working!\n");

	for (size_t k2 = 0; k2 < 128; ++k2) {
      uint32_t value = Din[k2];
      uint16_t msb = (value >> 16) & 0xFFFF;
      uint16_t lsb = value & 0xFFFF;

      // Assign the MSB and LSB to the corresponding elements in r
      r->vec->coeffs[2 * k2] = msb; // Assign MSB
      r->vec->coeffs[2 * k2 + 1] = lsb; // Assign LSB
  }

  for (int i = 0; i < 256; i++) {	 
		printf("%04x-",&r->vec[0]->coeffs);
	}
 
 printf("THE end!!\n");
	

}

