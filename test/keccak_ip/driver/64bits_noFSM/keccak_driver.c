#include <stdint.h>
#include <stdio.h>
#include <keccak_driver.h>
#include <keccak_auto.h>

#define KECCAK_BUSY 0 

void set_input(uint32_t* Din){
   uint32_t volatile *Din_reg_start = (uint32_t*)KECCAK_DIN_0(0);
   uint32_t volatile *ctrl1_reg = (uint32_t*)KECCAK_CTRL1(0);
   uint32_t volatile *status_reg = (uint32_t*)KECCAK_STATUS(0);   	
   // Set start a 0 	
   uint32_t ctrl1_reg_old_value = *ctrl1_reg;
   *ctrl1_reg = ctrl1_reg_old_value & !(1<<KECCAK_CTRL1_START);
   // Keccak expect a 64 bit input
   for (int volatile i=0; i<(1600/64); i+=2){
	asm volatile ("": : : "memory");
	Din_reg_start[0] = Din[i];
	Din_reg_start[1] = Din[i+1];
   	// Set Din_valid to 1
   	*ctrl1_reg = *ctrl1_reg | (1<<KECCAK_CTRL1_DIN_VALID);
   	// Set Din_valid to 0
   	*ctrl1_reg = *ctrl1_reg & !(1<<KECCAK_CTRL1_DIN_VALID);
	//printf("Keccak: received input %d%d - stored in reg %d%d\n", Din[i+1], Din[i], Din_reg_start[0], Din_reg_start[1]);	
	asm volatile ("": : : "memory");
   }
   // Check if buffer_full set to 1 as expected
   uint32_t current_status = ((*status_reg) & (1<<KECCAK_STATUS_BUFFER_FULL))>>KECCAK_STATUS_BUFFER_FULL;
   //if (current_status != 1){
	//printf("Keccak : error... exprected buffer_full to 1\n");	
   //} else {
	//printf("Keccak : Buffer correctly filled\n");	
   //}
}

void poll_ready(void){
   uint32_t volatile *status_reg = (uint32_t*)KECCAK_STATUS(0);
   uint32_t current_status;
   //printf("Keccak : Checking if keccak is busy ... \n");
   // Busy waiting till the Keccak is ready to start
   do {
	current_status = (*status_reg)&(1<<KECCAK_STATUS_READY);
   } while ( current_status == KECCAK_BUSY);
   //printf("Keccak : ready\n");
}

void restart(void){
   uint32_t volatile *ctrl1_reg = (uint32_t*)KECCAK_CTRL1(0);
   uint32_t ctrl1_reg_old_value = *ctrl1_reg;
   *ctrl1_reg = ctrl1_reg_old_value | (1<<KECCAK_CTRL1_START);

int32_t volatile *ctrl1_reg = (uint32_t*)KECCAK_CTRL1(0);
   uint32_t ctrl1_reg_old_value = *ctrl1_reg;
   *ctrl1_reg = ctrl1_reg_old_value | (1<<KECCAK_CTRL1_LAST_BLOCK);
}

void get_result(uint32_t* Dout){
   
   uint32_t volatile *status_reg = (uint32_t*)KECCAK_STATUS(0);
   uint32_t volatile *Dout_reg_start = (uint32_t*)KECCAK_DOUT_0(0);

   uint32_t current_status;
   // Busy waiting till Dout_valid is set to 1
   do {
	current_status = (*status_reg)&(1<<KECCAK_STATUS_DOUT_VALID);
   } while ( current_status == 0);
   for (volatile int i = 0; i<1600/64; i+=2){
	asm volatile ("": : : "memory");
	Dout[i] = Dout_reg_start[0];
	Dout[i+1] = Dout_reg_start[1];	
	//printf("Keccak: At iteration %d, the output is %d%d\n", i/2, Dout_reg_start[0], Dout_reg_start[1]);	
	asm volatile ("": : : "memory");
   }
}


void KeccakF1600_StatePermute(uint32_t Din[50], uint32_t Dout[50] ){
	// Check if Keccak is busy finishing last permutation
	poll_ready();
	//printf("Keccak : start a new operation\n");
	// Keccak restarted by resetting the buffer 
	restart();
	//printf("Keccak : restarted\n");	
	// HASH1 (?): fase in cui keccak prende i 1600 bits in input
 	set_input(Din);
	// HASH2 (?) : Keccak start permutation, it lasts 24 ck and set ready to 1
	poll_ready();
	// set last block to 1		
	set_last_block();
	get_result(Dout);
	//printf("Keccak : finished operation !!\n");		
}
