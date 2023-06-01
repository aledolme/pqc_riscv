#include <stdint.h>
#include <stdio.h>
#include <ntt_driver.h>
#include <ntt_auto.h>

#define BUSY 0 

void set_input(uint16_t* Din){
   uint16_t volatile *Din_reg_start = (uint16_t*)NTT_INTT_PWM_DIN(0);
   for (int i = 0; i<255; i++)
   {
     Din_reg_start[i] = Din[i];
   }
}


void trigger_ntt(void)
{
  uint32_t volatile * ctrl_reg = (uint32_t*)KECCAK_CTRL(0);
  asm volatile ("": : : "memory");
  *ctrl_reg = 1 << NTT_INTT_PWM_CTRL_START_NTT;
  asm volatile ("": : : "memory");
}

void poll_done(void){
   uint32_t volatile *status_reg = (uint32_t*)NTT_INTT_PWM_STATUS(0);
   uint32_t current_status;
 
   do {
	current_status = (*status_reg)&(1<<NTT_INTT_PWM_STATUS_STATUS);
   } while ( current_status == BUSY);
   //printf("Keccak : ready\n");
}

void get_result(uint32_t* Dout){
   
   uint16_t volatile *Dout_reg_start = (uint16_t*)NTT_INTT_PWM_DOUT(0);
   for (volatile int i = 0; i<255; i++){
     Dout[i] = Dout_reg_start[i];	
		
   }
}


void KYBER_poly_ntt(uint16_t Din[256], uint16_t Dout[256]){
	set_input(Din);
	trigger_ntt();
	poll_done();
	get_result(Dout);	
}
