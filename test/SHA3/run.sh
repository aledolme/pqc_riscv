#!/bin/bash

/usr/bin/gcc -o shake128 fips_202.c fips_202.h test_shake128.c -std=c99
/usr/bin/gcc -o shake256 fips_202.c fips_202.h test_shake256.c -std=c99

