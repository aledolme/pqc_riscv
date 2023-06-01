#include <stdint.h>

void set_input(uint16_t* Din);
void trigger_ntt(void)
void poll_done(void);
void get_result(uint16_t* Dout);
void KYBER_poly_ntt(uint16_t Din[256], uint16_t Dout[256]);
