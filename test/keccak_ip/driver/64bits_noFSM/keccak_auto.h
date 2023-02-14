// Generated register defines for keccak

#ifndef _KECCAK_REG_DEFS_
#define _KECCAK_REG_DEFS_

#ifdef __cplusplus
extern "C" {
#endif
// starting address of keccak regs file
#define KECCAK0_BASE_ADDR 0x1a400000

// auto added parameter
#define KECCAK_PARAM_DIN 2

// auto added parameter
#define KECCAK_PARAM_DOUT 2

// Register width
#define KECCAK_PARAM_REG_WIDTH 32

// Common Interrupt Offsets

// Subword of input of Keccak module (common parameters)
#define KECCAK_DIN_DIN_FIELD_WIDTH 32
#define KECCAK_DIN_DIN_FIELDS_PER_REG 1
#define KECCAK_DIN_MULTIREG_COUNT 2

// Subword of input of Keccak module
#define KECCAK_DIN_0(id) (KECCAK##id##_BASE_ADDR + 0x0)
#define KECCAK_DIN_0_REG_OFFSET 0x0

// Subword of input of Keccak module
#define KECCAK_DIN_1(id) (KECCAK##id##_BASE_ADDR + 0x4)
#define KECCAK_DIN_1_REG_OFFSET 0x4

// Subword of results. (common parameters)
#define KECCAK_DOUT_DOUT_FIELD_WIDTH 32
#define KECCAK_DOUT_DOUT_FIELDS_PER_REG 1
#define KECCAK_DOUT_MULTIREG_COUNT 2

// Subword of results.
#define KECCAK_DOUT_0(id) (KECCAK##id##_BASE_ADDR + 0x8)
#define KECCAK_DOUT_0_REG_OFFSET 0x8

// Subword of results.
#define KECCAK_DOUT_1(id) (KECCAK##id##_BASE_ADDR + 0xc)
#define KECCAK_DOUT_1_REG_OFFSET 0xc

//  Configures and enable the accelerator
#define KECCAK_CTRL1(id) (KECCAK##id##_BASE_ADDR + 0x10)
#define KECCAK_CTRL1_REG_OFFSET 0x10
#define KECCAK_CTRL1_START 0
#define KECCAK_CTRL1_DIN_VALID 1
#define KECCAK_CTRL1_LAST_BLOCK 2

//  Contains status information about the Keccak
#define KECCAK_STATUS(id) (KECCAK##id##_BASE_ADDR + 0x14)
#define KECCAK_STATUS_REG_OFFSET 0x14
#define KECCAK_STATUS_DOUT_VALID 0
#define KECCAK_STATUS_BUFFER_FULL 1
#define KECCAK_STATUS_READY 2

#ifdef __cplusplus
}  // extern "C"
#endif
#endif  // _KECCAK_REG_DEFS_
// End generated register defines for keccak
