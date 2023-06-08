riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt

/home/alessandra.dolmeta/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	7170106f          	j	1c009f16 <__rt_handle_illegal_instr>
1c008004:	0840006f          	j	1c008088 <pos_no_irq_handler>
1c008008:	0800006f          	j	1c008088 <pos_no_irq_handler>
1c00800c:	07c0006f          	j	1c008088 <pos_no_irq_handler>
1c008010:	0780006f          	j	1c008088 <pos_no_irq_handler>
1c008014:	0740006f          	j	1c008088 <pos_no_irq_handler>
1c008018:	0700006f          	j	1c008088 <pos_no_irq_handler>
1c00801c:	06c0006f          	j	1c008088 <pos_no_irq_handler>
1c008020:	0680006f          	j	1c008088 <pos_no_irq_handler>
1c008024:	0640006f          	j	1c008088 <pos_no_irq_handler>
1c008028:	0600006f          	j	1c008088 <pos_no_irq_handler>
1c00802c:	05c0006f          	j	1c008088 <pos_no_irq_handler>
1c008030:	0580006f          	j	1c008088 <pos_no_irq_handler>
1c008034:	0540006f          	j	1c008088 <pos_no_irq_handler>
1c008038:	0500006f          	j	1c008088 <pos_no_irq_handler>
1c00803c:	04c0006f          	j	1c008088 <pos_no_irq_handler>
1c008040:	0480006f          	j	1c008088 <pos_no_irq_handler>
1c008044:	0440006f          	j	1c008088 <pos_no_irq_handler>
1c008048:	0400006f          	j	1c008088 <pos_no_irq_handler>
1c00804c:	03c0006f          	j	1c008088 <pos_no_irq_handler>
1c008050:	0380006f          	j	1c008088 <pos_no_irq_handler>
1c008054:	0340006f          	j	1c008088 <pos_no_irq_handler>
1c008058:	0300006f          	j	1c008088 <pos_no_irq_handler>
1c00805c:	02c0006f          	j	1c008088 <pos_no_irq_handler>
1c008060:	0280006f          	j	1c008088 <pos_no_irq_handler>
1c008064:	0240006f          	j	1c008088 <pos_no_irq_handler>
1c008068:	0200006f          	j	1c008088 <pos_no_irq_handler>
1c00806c:	01c0006f          	j	1c008088 <pos_no_irq_handler>
1c008070:	0180006f          	j	1c008088 <pos_no_irq_handler>
1c008074:	0140006f          	j	1c008088 <pos_no_irq_handler>
1c008078:	0100006f          	j	1c008088 <pos_no_irq_handler>
1c00807c:	00c0006f          	j	1c008088 <pos_no_irq_handler>

1c008080 <_start>:
1c008080:	0400006f          	j	1c0080c0 <_stext>

1c008084 <pos_illegal_instr>:
1c008084:	6930106f          	j	1c009f16 <__rt_handle_illegal_instr>

1c008088 <pos_no_irq_handler>:
1c008088:	30200073          	mret

1c00808c <pos_semihosting_call>:
1c00808c:	00100073          	ebreak
1c008090:	00008067          	ret

1c008094 <do_cl_boot>:
1c008094:	10200137          	lui	sp,0x10200
1c008098:	00100193          	li	gp,1
1c00809c:	00000217          	auipc	tp,0x0
1c0080a0:	fe420213          	addi	tp,tp,-28 # 1c008080 <_start>
1c0080a4:	04412023          	sw	tp,64(sp) # 10200040 <__CTOR_LIST__-0xbdfffc4>
1c0080a8:	00312423          	sw	gp,8(sp)

1c0080ac <loop>:
1c0080ac:	1a10a137          	lui	sp,0x1a10a
1c0080b0:	80010113          	addi	sp,sp,-2048 # 1a109800 <__CTOR_LIST__-0x1ef6804>
1c0080b4:	00012023          	sw	zero,0(sp)
1c0080b8:	10500073          	wfi
1c0080bc:	ff1ff06f          	j	1c0080ac <loop>

Disassembly of section .text:

1c0080c0 <_stext>:
1c0080c0:	ffffe297          	auipc	t0,0xffffe
1c0080c4:	0f028293          	addi	t0,t0,240 # 1c0061b0 <pos_fll_is_on>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	10c30313          	addi	t1,t1,268 # 1c0061d4 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	0d610113          	addi	sp,sp,214 # 1c0061b0 <pos_fll_is_on>
1c0080e2:	469010ef          	jal	ra,1c009d4a <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	06638393          	addi	t2,t2,102 # 1c008154 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	485010ef          	jal	ra,1c009d80 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	4c7000ef          	jal	ra,1c008dc8 <exit>
	...

1c008108 <__clzsi2>:
1c008108:	000107b7          	lui	a5,0x10
1c00810c:	02f57a63          	bgeu	a0,a5,1c008140 <__clzsi2+0x38>
1c008110:	0ff00793          	li	a5,255
1c008114:	00a7b7b3          	sltu	a5,a5,a0
1c008118:	00379793          	slli	a5,a5,0x3
1c00811c:	1c000737          	lui	a4,0x1c000
1c008120:	02000693          	li	a3,32
1c008124:	40f686b3          	sub	a3,a3,a5
1c008128:	00f55533          	srl	a0,a0,a5
1c00812c:	01c70793          	addi	a5,a4,28 # 1c00001c <__clz_tab>
1c008130:	00a78533          	add	a0,a5,a0
1c008134:	00054503          	lbu	a0,0(a0)
1c008138:	40a68533          	sub	a0,a3,a0
1c00813c:	00008067          	ret
1c008140:	01000737          	lui	a4,0x1000
1c008144:	01000793          	li	a5,16
1c008148:	fce56ae3          	bltu	a0,a4,1c00811c <__clzsi2+0x14>
1c00814c:	01800793          	li	a5,24
1c008150:	fcdff06f          	j	1c00811c <__clzsi2+0x14>

1c008154 <main>:
1c008154:	81010113          	addi	sp,sp,-2032
1c008158:	1c000537          	lui	a0,0x1c000
1c00815c:	7e112623          	sw	ra,2028(sp)
1c008160:	11c50513          	addi	a0,a0,284 # 1c00011c <__clz_tab+0x100>
1c008164:	9e010113          	addi	sp,sp,-1568
1c008168:	3e3000ef          	jal	ra,1c008d4a <puts>
1c00816c:	6705                	lui	a4,0x1
1c00816e:	e0070793          	addi	a5,a4,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c008172:	757d                	lui	a0,0xfffff
1c008174:	978a                	add	a5,a5,sp
1c008176:	6a050593          	addi	a1,a0,1696 # fffff6a0 <__l2_shared_end+0xe3fef6a0>
1c00817a:	95be                	add	a1,a1,a5
1c00817c:	e0070793          	addi	a5,a4,-512
1c008180:	978a                	add	a5,a5,sp
1c008182:	20050513          	addi	a0,a0,512
1c008186:	953e                	add	a0,a0,a5
1c008188:	7f6000ef          	jal	ra,1c00897e <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c00818c:	1c000537          	lui	a0,0x1c000
1c008190:	12850513          	addi	a0,a0,296 # 1c000128 <__clz_tab+0x10c>
1c008194:	3b7000ef          	jal	ra,1c008d4a <puts>
1c008198:	62010113          	addi	sp,sp,1568
1c00819c:	7ec12083          	lw	ra,2028(sp)
1c0081a0:	4501                	li	a0,0
1c0081a2:	7f010113          	addi	sp,sp,2032
1c0081a6:	8082                	ret

1c0081a8 <pos_fll_init>:
1c0081a8:	1101                	addi	sp,sp,-32
1c0081aa:	1a1005b7          	lui	a1,0x1a100
1c0081ae:	c64e                	sw	s3,12(sp)
1c0081b0:	00451613          	slli	a2,a0,0x4
1c0081b4:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c0081b8:	99b2                	add	s3,s3,a2
1c0081ba:	0009a703          	lw	a4,0(s3)
1c0081be:	ca26                	sw	s1,20(sp)
1c0081c0:	ce06                	sw	ra,28(sp)
1c0081c2:	cc22                	sw	s0,24(sp)
1c0081c4:	c84a                	sw	s2,16(sp)
1c0081c6:	c452                	sw	s4,8(sp)
1c0081c8:	84aa                	mv	s1,a0
1c0081ca:	87ba                	mv	a5,a4
1c0081cc:	04074763          	bltz	a4,1c00821a <pos_fll_init+0x72>
1c0081d0:	00858693          	addi	a3,a1,8
1c0081d4:	96b2                	add	a3,a3,a2
1c0081d6:	429c                	lw	a5,0(a3)
1c0081d8:	f0000537          	lui	a0,0xf0000
1c0081dc:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c0081e0:	8fe9                	and	a5,a5,a0
1c0081e2:	00502537          	lui	a0,0x502
1c0081e6:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c0081ea:	8fc9                	or	a5,a5,a0
1c0081ec:	05b1                	addi	a1,a1,12
1c0081ee:	c29c                	sw	a5,0(a3)
1c0081f0:	962e                	add	a2,a2,a1
1c0081f2:	4214                	lw	a3,0(a2)
1c0081f4:	fc0107b7          	lui	a5,0xfc010
1c0081f8:	17fd                	addi	a5,a5,-1
1c0081fa:	01875593          	srli	a1,a4,0x18
1c0081fe:	8efd                	and	a3,a3,a5
1c008200:	0c05e593          	ori	a1,a1,192
1c008204:	00871793          	slli	a5,a4,0x8
1c008208:	014c0537          	lui	a0,0x14c0
1c00820c:	8ec9                	or	a3,a3,a0
1c00820e:	05e2                	slli	a1,a1,0x18
1c008210:	83a1                	srli	a5,a5,0x8
1c008212:	c214                	sw	a3,0(a2)
1c008214:	8fcd                	or	a5,a5,a1
1c008216:	00f9a023          	sw	a5,0(s3)
1c00821a:	1c006437          	lui	s0,0x1c006
1c00821e:	1b440413          	addi	s0,s0,436 # 1c0061b4 <pos_fll_freq>
1c008222:	00249a13          	slli	s4,s1,0x2
1c008226:	014406b3          	add	a3,s0,s4
1c00822a:	0006a903          	lw	s2,0(a3)
1c00822e:	02091d63          	bnez	s2,1c008268 <pos_fll_init+0xc0>
1c008232:	83e9                	srli	a5,a5,0x1a
1c008234:	0742                	slli	a4,a4,0x10
1c008236:	8341                	srli	a4,a4,0x10
1c008238:	8bbd                	andi	a5,a5,15
1c00823a:	073e                	slli	a4,a4,0xf
1c00823c:	17fd                	addi	a5,a5,-1
1c00823e:	00f75933          	srl	s2,a4,a5
1c008242:	0126a023          	sw	s2,0(a3)
1c008246:	1c0066b7          	lui	a3,0x1c006
1c00824a:	1b068693          	addi	a3,a3,432 # 1c0061b0 <pos_fll_is_on>
1c00824e:	96a6                	add	a3,a3,s1
1c008250:	4785                	li	a5,1
1c008252:	00f68023          	sb	a5,0(a3)
1c008256:	40f2                	lw	ra,28(sp)
1c008258:	4462                	lw	s0,24(sp)
1c00825a:	44d2                	lw	s1,20(sp)
1c00825c:	49b2                	lw	s3,12(sp)
1c00825e:	4a22                	lw	s4,8(sp)
1c008260:	854a                	mv	a0,s2
1c008262:	4942                	lw	s2,16(sp)
1c008264:	6105                	addi	sp,sp,32
1c008266:	8082                	ret
1c008268:	854a                	mv	a0,s2
1c00826a:	3d79                	jal	1c008108 <__clzsi2>
1c00826c:	1579                	addi	a0,a0,-2
1c00826e:	8105                	srli	a0,a0,0x1
1c008270:	c939                	beqz	a0,1c0082c6 <pos_fll_init+0x11e>
1c008272:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c008276:	1c0066b7          	lui	a3,0x1c006
1c00827a:	4785                	li	a5,1
1c00827c:	00c797b3          	sll	a5,a5,a2
1c008280:	00a91733          	sll	a4,s2,a0
1c008284:	1b068693          	addi	a3,a3,432 # 1c0061b0 <pos_fll_is_on>
1c008288:	7661                	lui	a2,0xffff8
1c00828a:	8e79                	and	a2,a2,a4
1c00828c:	009685b3          	add	a1,a3,s1
1c008290:	97b2                	add	a5,a5,a2
1c008292:	0005c603          	lbu	a2,0(a1)
1c008296:	9452                	add	s0,s0,s4
1c008298:	00a7d7b3          	srl	a5,a5,a0
1c00829c:	c01c                	sw	a5,0(s0)
1c00829e:	da45                	beqz	a2,1c00824e <pos_fll_init+0xa6>
1c0082a0:	0009a783          	lw	a5,0(s3)
1c0082a4:	833d                	srli	a4,a4,0xf
1c0082a6:	0742                	slli	a4,a4,0x10
1c0082a8:	7641                	lui	a2,0xffff0
1c0082aa:	8341                	srli	a4,a4,0x10
1c0082ac:	8ff1                	and	a5,a5,a2
1c0082ae:	8fd9                	or	a5,a5,a4
1c0082b0:	0505                	addi	a0,a0,1
1c0082b2:	c4000737          	lui	a4,0xc4000
1c0082b6:	893d                	andi	a0,a0,15
1c0082b8:	177d                	addi	a4,a4,-1
1c0082ba:	056a                	slli	a0,a0,0x1a
1c0082bc:	8ff9                	and	a5,a5,a4
1c0082be:	8d5d                	or	a0,a0,a5
1c0082c0:	00a9a023          	sw	a0,0(s3)
1c0082c4:	b769                	j	1c00824e <pos_fll_init+0xa6>
1c0082c6:	4505                	li	a0,1
1c0082c8:	b76d                	j	1c008272 <pos_fll_init+0xca>

1c0082ca <pos_fll_constructor>:
1c0082ca:	1c0067b7          	lui	a5,0x1c006
1c0082ce:	1b478793          	addi	a5,a5,436 # 1c0061b4 <pos_fll_freq>
1c0082d2:	0007a023          	sw	zero,0(a5)
1c0082d6:	0007a223          	sw	zero,4(a5)
1c0082da:	1c0067b7          	lui	a5,0x1c006
1c0082de:	1a079823          	sh	zero,432(a5) # 1c0061b0 <pos_fll_is_on>
1c0082e2:	8082                	ret

1c0082e4 <pos_soc_init>:
1c0082e4:	1141                	addi	sp,sp,-16
1c0082e6:	c606                	sw	ra,12(sp)
1c0082e8:	c422                	sw	s0,8(sp)
1c0082ea:	37c5                	jal	1c0082ca <pos_fll_constructor>
1c0082ec:	4501                	li	a0,0
1c0082ee:	3d6d                	jal	1c0081a8 <pos_fll_init>
1c0082f0:	1c006437          	lui	s0,0x1c006
1c0082f4:	87aa                	mv	a5,a0
1c0082f6:	1bc40413          	addi	s0,s0,444 # 1c0061bc <pos_freq_domains>
1c0082fa:	4505                	li	a0,1
1c0082fc:	c01c                	sw	a5,0(s0)
1c0082fe:	356d                	jal	1c0081a8 <pos_fll_init>
1c008300:	40b2                	lw	ra,12(sp)
1c008302:	c408                	sw	a0,8(s0)
1c008304:	4422                	lw	s0,8(sp)
1c008306:	0141                	addi	sp,sp,16
1c008308:	8082                	ret

1c00830a <KeccakF1600_StatePermute>:
1c00830a:	1a400837          	lui	a6,0x1a400
1c00830e:	87aa                	mv	a5,a0
1c008310:	0c850613          	addi	a2,a0,200
1c008314:	1141                	addi	sp,sp,-16
1c008316:	40a80533          	sub	a0,a6,a0
1c00831a:	4394                	lw	a3,0(a5)
1c00831c:	00f50733          	add	a4,a0,a5
1c008320:	0791                	addi	a5,a5,4
1c008322:	c314                	sw	a3,0(a4)
1c008324:	fec79be3          	bne	a5,a2,1c00831a <KeccakF1600_StatePermute+0x10>
1c008328:	4785                	li	a5,1
1c00832a:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c00832e:	1a400737          	lui	a4,0x1a400
1c008332:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c008336:	8b85                	andi	a5,a5,1
1c008338:	dfed                	beqz	a5,1c008332 <KeccakF1600_StatePermute+0x28>
1c00833a:	c602                	sw	zero,12(sp)
1c00833c:	4732                	lw	a4,12(sp)
1c00833e:	03100793          	li	a5,49
1c008342:	02e7c663          	blt	a5,a4,1c00836e <KeccakF1600_StatePermute+0x64>
1c008346:	1a400637          	lui	a2,0x1a400
1c00834a:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00834e:	03100513          	li	a0,49
1c008352:	4732                	lw	a4,12(sp)
1c008354:	47b2                	lw	a5,12(sp)
1c008356:	070a                	slli	a4,a4,0x2
1c008358:	9732                	add	a4,a4,a2
1c00835a:	4314                	lw	a3,0(a4)
1c00835c:	4732                	lw	a4,12(sp)
1c00835e:	078a                	slli	a5,a5,0x2
1c008360:	97ae                	add	a5,a5,a1
1c008362:	0705                	addi	a4,a4,1
1c008364:	c63a                	sw	a4,12(sp)
1c008366:	4732                	lw	a4,12(sp)
1c008368:	c394                	sw	a3,0(a5)
1c00836a:	fee554e3          	bge	a0,a4,1c008352 <KeccakF1600_StatePermute+0x48>
1c00836e:	0141                	addi	sp,sp,16
1c008370:	8082                	ret

1c008372 <KYBER_poly_ntt>:
1c008372:	1141                	addi	sp,sp,-16
1c008374:	c606                	sw	ra,12(sp)
1c008376:	c422                	sw	s0,8(sp)
1c008378:	c226                	sw	s1,4(sp)
1c00837a:	c04a                	sw	s2,0(sp)
1c00837c:	1a4007b7          	lui	a5,0x1a400
1c008380:	4705                	li	a4,1
1c008382:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c008386:	3007a423          	sw	zero,776(a5)
1c00838a:	20050693          	addi	a3,a0,512
1c00838e:	1a400737          	lui	a4,0x1a400
1c008392:	411c                	lw	a5,0(a0)
1c008394:	0511                	addi	a0,a0,4
1c008396:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00839a:	fed51ce3          	bne	a0,a3,1c008392 <KYBER_poly_ntt+0x20>
1c00839e:	08000793          	li	a5,128
1c0083a2:	30f72423          	sw	a5,776(a4)
1c0083a6:	30072423          	sw	zero,776(a4)
1c0083aa:	1a400737          	lui	a4,0x1a400
1c0083ae:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c0083b2:	8b85                	andi	a5,a5,1
1c0083b4:	dfed                	beqz	a5,1c0083ae <KYBER_poly_ntt+0x3c>
1c0083b6:	47c1                	li	a5,16
1c0083b8:	30f72423          	sw	a5,776(a4)
1c0083bc:	842e                	mv	s0,a1
1c0083be:	30072423          	sw	zero,776(a4)
1c0083c2:	20058493          	addi	s1,a1,512
1c0083c6:	87ae                	mv	a5,a1
1c0083c8:	1a4006b7          	lui	a3,0x1a400
1c0083cc:	3046a703          	lw	a4,772(a3) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c0083d0:	0791                	addi	a5,a5,4
1c0083d2:	fee7ae23          	sw	a4,-4(a5)
1c0083d6:	fef49be3          	bne	s1,a5,1c0083cc <KYBER_poly_ntt+0x5a>
1c0083da:	1c000937          	lui	s2,0x1c000
1c0083de:	400c                	lw	a1,0(s0)
1c0083e0:	13490513          	addi	a0,s2,308 # 1c000134 <__clz_tab+0x118>
1c0083e4:	0411                	addi	s0,s0,4
1c0083e6:	1ff000ef          	jal	ra,1c008de4 <printf>
1c0083ea:	fe941ae3          	bne	s0,s1,1c0083de <KYBER_poly_ntt+0x6c>
1c0083ee:	40b2                	lw	ra,12(sp)
1c0083f0:	4422                	lw	s0,8(sp)
1c0083f2:	4492                	lw	s1,4(sp)
1c0083f4:	4902                	lw	s2,0(sp)
1c0083f6:	0141                	addi	sp,sp,16
1c0083f8:	8082                	ret

1c0083fa <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c0083fa:	1101                	addi	sp,sp,-32
1c0083fc:	55555f37          	lui	t5,0x55555
1c008400:	ce22                	sw	s0,28(sp)
1c008402:	cc26                	sw	s1,24(sp)
1c008404:	ca4a                	sw	s2,20(sp)
1c008406:	c84e                	sw	s3,16(sp)
1c008408:	c652                	sw	s4,12(sp)
1c00840a:	20050f93          	addi	t6,a0,512
1c00840e:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c008412:	0015c683          	lbu	a3,1(a1)
1c008416:	0005c603          	lbu	a2,0(a1)
1c00841a:	0025c783          	lbu	a5,2(a1)
1c00841e:	0035c703          	lbu	a4,3(a1)
1c008422:	06a2                	slli	a3,a3,0x8
1c008424:	8ed1                	or	a3,a3,a2
1c008426:	07c2                	slli	a5,a5,0x10
1c008428:	8fd5                	or	a5,a5,a3
1c00842a:	0762                	slli	a4,a4,0x18
1c00842c:	8f5d                	or	a4,a4,a5
1c00842e:	00175793          	srli	a5,a4,0x1
1c008432:	01e7f7b3          	and	a5,a5,t5
1c008436:	01e77733          	and	a4,a4,t5
1c00843a:	97ba                	add	a5,a5,a4
1c00843c:	0027da13          	srli	s4,a5,0x2
1c008440:	0047d313          	srli	t1,a5,0x4
1c008444:	0067d993          	srli	s3,a5,0x6
1c008448:	0087d893          	srli	a7,a5,0x8
1c00844c:	00a7d913          	srli	s2,a5,0xa
1c008450:	00c7d813          	srli	a6,a5,0xc
1c008454:	00e7d493          	srli	s1,a5,0xe
1c008458:	0107d613          	srli	a2,a5,0x10
1c00845c:	0127d413          	srli	s0,a5,0x12
1c008460:	0147d693          	srli	a3,a5,0x14
1c008464:	0167d393          	srli	t2,a5,0x16
1c008468:	0187d713          	srli	a4,a5,0x18
1c00846c:	01a7d293          	srli	t0,a5,0x1a
1c008470:	01c7de93          	srli	t4,a5,0x1c
1c008474:	0037fe13          	andi	t3,a5,3
1c008478:	003a7a13          	andi	s4,s4,3
1c00847c:	00337313          	andi	t1,t1,3
1c008480:	0039f993          	andi	s3,s3,3
1c008484:	0038f893          	andi	a7,a7,3
1c008488:	00397913          	andi	s2,s2,3
1c00848c:	00387813          	andi	a6,a6,3
1c008490:	888d                	andi	s1,s1,3
1c008492:	8a0d                	andi	a2,a2,3
1c008494:	880d                	andi	s0,s0,3
1c008496:	8a8d                	andi	a3,a3,3
1c008498:	0033f393          	andi	t2,t2,3
1c00849c:	8b0d                	andi	a4,a4,3
1c00849e:	0032f293          	andi	t0,t0,3
1c0084a2:	003efe93          	andi	t4,t4,3
1c0084a6:	83f9                	srli	a5,a5,0x1e
1c0084a8:	414e0e33          	sub	t3,t3,s4
1c0084ac:	41330333          	sub	t1,t1,s3
1c0084b0:	412888b3          	sub	a7,a7,s2
1c0084b4:	40980833          	sub	a6,a6,s1
1c0084b8:	8e01                	sub	a2,a2,s0
1c0084ba:	407686b3          	sub	a3,a3,t2
1c0084be:	40570733          	sub	a4,a4,t0
1c0084c2:	40fe87b3          	sub	a5,t4,a5
1c0084c6:	01c51023          	sh	t3,0(a0)
1c0084ca:	00651123          	sh	t1,2(a0)
1c0084ce:	01151223          	sh	a7,4(a0)
1c0084d2:	01051323          	sh	a6,6(a0)
1c0084d6:	00c51423          	sh	a2,8(a0)
1c0084da:	00d51523          	sh	a3,10(a0)
1c0084de:	00e51623          	sh	a4,12(a0)
1c0084e2:	00f51723          	sh	a5,14(a0)
1c0084e6:	0541                	addi	a0,a0,16
1c0084e8:	0591                	addi	a1,a1,4
1c0084ea:	f3f514e3          	bne	a0,t6,1c008412 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c0084ee:	4472                	lw	s0,28(sp)
1c0084f0:	44e2                	lw	s1,24(sp)
1c0084f2:	4952                	lw	s2,20(sp)
1c0084f4:	49c2                	lw	s3,16(sp)
1c0084f6:	4a32                	lw	s4,12(sp)
1c0084f8:	6105                	addi	sp,sp,32
1c0084fa:	8082                	ret

1c0084fc <keccak_absorb.constprop.1>:
1c0084fc:	7151                	addi	sp,sp,-240
1c0084fe:	d3a6                	sw	s1,228(sp)
1c008500:	cfce                	sw	s3,220(sp)
1c008502:	cdd2                	sw	s4,216(sp)
1c008504:	cbd6                	sw	s5,212(sp)
1c008506:	84b6                	mv	s1,a3
1c008508:	d786                	sw	ra,236(sp)
1c00850a:	d5a2                	sw	s0,232(sp)
1c00850c:	d1ca                	sw	s2,224(sp)
1c00850e:	c9da                	sw	s6,208(sp)
1c008510:	8a2a                	mv	s4,a0
1c008512:	87ae                	mv	a5,a1
1c008514:	8ab2                	mv	s5,a2
1c008516:	89aa                	mv	s3,a0
1c008518:	0c850693          	addi	a3,a0,200
1c00851c:	872a                	mv	a4,a0
1c00851e:	4581                	li	a1,0
1c008520:	4601                	li	a2,0
1c008522:	c30c                	sw	a1,0(a4)
1c008524:	c350                	sw	a2,4(a4)
1c008526:	0721                	addi	a4,a4,8
1c008528:	fee69be3          	bne	a3,a4,1c00851e <keccak_absorb.constprop.1+0x22>
1c00852c:	08700713          	li	a4,135
1c008530:	09577363          	bgeu	a4,s5,1c0085b6 <keccak_absorb.constprop.1+0xba>
1c008534:	08878b13          	addi	s6,a5,136
1c008538:	895a                	mv	s2,s6
1c00853a:	08700413          	li	s0,135
1c00853e:	86d2                	mv	a3,s4
1c008540:	0017c703          	lbu	a4,1(a5)
1c008544:	0027ce03          	lbu	t3,2(a5)
1c008548:	0057c803          	lbu	a6,5(a5)
1c00854c:	0047cf03          	lbu	t5,4(a5)
1c008550:	0067c503          	lbu	a0,6(a5)
1c008554:	0007ce83          	lbu	t4,0(a5)
1c008558:	0037c583          	lbu	a1,3(a5)
1c00855c:	0077c603          	lbu	a2,7(a5)
1c008560:	0722                	slli	a4,a4,0x8
1c008562:	0e42                	slli	t3,t3,0x10
1c008564:	0822                	slli	a6,a6,0x8
1c008566:	0006a303          	lw	t1,0(a3)
1c00856a:	0046a883          	lw	a7,4(a3)
1c00856e:	01c76733          	or	a4,a4,t3
1c008572:	01e86833          	or	a6,a6,t5
1c008576:	0542                	slli	a0,a0,0x10
1c008578:	01d76733          	or	a4,a4,t4
1c00857c:	05e2                	slli	a1,a1,0x18
1c00857e:	01056533          	or	a0,a0,a6
1c008582:	0662                	slli	a2,a2,0x18
1c008584:	8f4d                	or	a4,a4,a1
1c008586:	8e49                	or	a2,a2,a0
1c008588:	00e34733          	xor	a4,t1,a4
1c00858c:	00c8c633          	xor	a2,a7,a2
1c008590:	c298                	sw	a4,0(a3)
1c008592:	c2d0                	sw	a2,4(a3)
1c008594:	07a1                	addi	a5,a5,8
1c008596:	06a1                	addi	a3,a3,8
1c008598:	faf914e3          	bne	s2,a5,1c008540 <keccak_absorb.constprop.1+0x44>
1c00859c:	85d2                	mv	a1,s4
1c00859e:	8552                	mv	a0,s4
1c0085a0:	33ad                	jal	1c00830a <KeccakF1600_StatePermute>
1c0085a2:	f78a8a93          	addi	s5,s5,-136
1c0085a6:	08890913          	addi	s2,s2,136
1c0085aa:	87da                	mv	a5,s6
1c0085ac:	01547563          	bgeu	s0,s5,1c0085b6 <keccak_absorb.constprop.1+0xba>
1c0085b0:	088b0b13          	addi	s6,s6,136
1c0085b4:	b769                	j	1c00853e <keccak_absorb.constprop.1+0x42>
1c0085b6:	0038                	addi	a4,sp,8
1c0085b8:	09010e13          	addi	t3,sp,144
1c0085bc:	86ba                	mv	a3,a4
1c0085be:	0006a023          	sw	zero,0(a3)
1c0085c2:	0691                	addi	a3,a3,4
1c0085c4:	fede1de3          	bne	t3,a3,1c0085be <keccak_absorb.constprop.1+0xc2>
1c0085c8:	080a8263          	beqz	s5,1c00864c <keccak_absorb.constprop.1+0x150>
1c0085cc:	fffa8693          	addi	a3,s5,-1
1c0085d0:	4609                	li	a2,2
1c0085d2:	10d67163          	bgeu	a2,a3,1c0086d4 <keccak_absorb.constprop.1+0x1d8>
1c0085d6:	ffcaf313          	andi	t1,s5,-4
1c0085da:	86be                	mv	a3,a5
1c0085dc:	933e                	add	t1,t1,a5
1c0085de:	883a                	mv	a6,a4
1c0085e0:	0016c503          	lbu	a0,1(a3)
1c0085e4:	0006c883          	lbu	a7,0(a3)
1c0085e8:	0026c583          	lbu	a1,2(a3)
1c0085ec:	0036c603          	lbu	a2,3(a3)
1c0085f0:	0522                	slli	a0,a0,0x8
1c0085f2:	01156533          	or	a0,a0,a7
1c0085f6:	05c2                	slli	a1,a1,0x10
1c0085f8:	8dc9                	or	a1,a1,a0
1c0085fa:	0662                	slli	a2,a2,0x18
1c0085fc:	8e4d                	or	a2,a2,a1
1c0085fe:	00c82023          	sw	a2,0(a6)
1c008602:	0691                	addi	a3,a3,4
1c008604:	0811                	addi	a6,a6,4
1c008606:	fcd31de3          	bne	t1,a3,1c0085e0 <keccak_absorb.constprop.1+0xe4>
1c00860a:	ffcaf693          	andi	a3,s5,-4
1c00860e:	02da8f63          	beq	s5,a3,1c00864c <keccak_absorb.constprop.1+0x150>
1c008612:	00d78633          	add	a2,a5,a3
1c008616:	00064503          	lbu	a0,0(a2)
1c00861a:	098c                	addi	a1,sp,208
1c00861c:	95b6                	add	a1,a1,a3
1c00861e:	00168613          	addi	a2,a3,1
1c008622:	f2a58c23          	sb	a0,-200(a1)
1c008626:	03567363          	bgeu	a2,s5,1c00864c <keccak_absorb.constprop.1+0x150>
1c00862a:	00c785b3          	add	a1,a5,a2
1c00862e:	0005c583          	lbu	a1,0(a1)
1c008632:	0988                	addi	a0,sp,208
1c008634:	962a                	add	a2,a2,a0
1c008636:	0689                	addi	a3,a3,2
1c008638:	f2b60c23          	sb	a1,-200(a2)
1c00863c:	0156f863          	bgeu	a3,s5,1c00864c <keccak_absorb.constprop.1+0x150>
1c008640:	97b6                	add	a5,a5,a3
1c008642:	0007c783          	lbu	a5,0(a5)
1c008646:	96aa                	add	a3,a3,a0
1c008648:	f2f68c23          	sb	a5,-200(a3)
1c00864c:	099c                	addi	a5,sp,208
1c00864e:	9abe                	add	s5,s5,a5
1c008650:	f29a8c23          	sb	s1,-200(s5)
1c008654:	08f14783          	lbu	a5,143(sp)
1c008658:	f807e793          	ori	a5,a5,-128
1c00865c:	08f107a3          	sb	a5,143(sp)
1c008660:	00174783          	lbu	a5,1(a4)
1c008664:	00274303          	lbu	t1,2(a4)
1c008668:	00574503          	lbu	a0,5(a4)
1c00866c:	00474f03          	lbu	t5,4(a4)
1c008670:	00674583          	lbu	a1,6(a4)
1c008674:	00074e83          	lbu	t4,0(a4)
1c008678:	00374603          	lbu	a2,3(a4)
1c00867c:	00774683          	lbu	a3,7(a4)
1c008680:	07a2                	slli	a5,a5,0x8
1c008682:	0342                	slli	t1,t1,0x10
1c008684:	0522                	slli	a0,a0,0x8
1c008686:	0009a883          	lw	a7,0(s3)
1c00868a:	0049a803          	lw	a6,4(s3)
1c00868e:	0067e7b3          	or	a5,a5,t1
1c008692:	01e56533          	or	a0,a0,t5
1c008696:	05c2                	slli	a1,a1,0x10
1c008698:	01d7e7b3          	or	a5,a5,t4
1c00869c:	0662                	slli	a2,a2,0x18
1c00869e:	8dc9                	or	a1,a1,a0
1c0086a0:	06e2                	slli	a3,a3,0x18
1c0086a2:	8e5d                	or	a2,a2,a5
1c0086a4:	00b6e7b3          	or	a5,a3,a1
1c0086a8:	00c8c633          	xor	a2,a7,a2
1c0086ac:	00f847b3          	xor	a5,a6,a5
1c0086b0:	00c9a023          	sw	a2,0(s3)
1c0086b4:	00f9a223          	sw	a5,4(s3)
1c0086b8:	0721                	addi	a4,a4,8
1c0086ba:	09a1                	addi	s3,s3,8
1c0086bc:	faee12e3          	bne	t3,a4,1c008660 <keccak_absorb.constprop.1+0x164>
1c0086c0:	50be                	lw	ra,236(sp)
1c0086c2:	542e                	lw	s0,232(sp)
1c0086c4:	549e                	lw	s1,228(sp)
1c0086c6:	590e                	lw	s2,224(sp)
1c0086c8:	49fe                	lw	s3,220(sp)
1c0086ca:	4a6e                	lw	s4,216(sp)
1c0086cc:	4ade                	lw	s5,212(sp)
1c0086ce:	4b4e                	lw	s6,208(sp)
1c0086d0:	616d                	addi	sp,sp,240
1c0086d2:	8082                	ret
1c0086d4:	4681                	li	a3,0
1c0086d6:	bf35                	j	1c008612 <keccak_absorb.constprop.1+0x116>

1c0086d8 <shake256>:
1c0086d8:	7131                	addi	sp,sp,-192
1c0086da:	db26                	sw	s1,180(sp)
1c0086dc:	d74e                	sw	s3,172(sp)
1c0086de:	84aa                	mv	s1,a0
1c0086e0:	08800993          	li	s3,136
1c0086e4:	0c800513          	li	a0,200
1c0086e8:	dd22                	sw	s0,184(sp)
1c0086ea:	d94a                	sw	s2,176(sp)
1c0086ec:	d356                	sw	s5,164(sp)
1c0086ee:	df06                	sw	ra,188(sp)
1c0086f0:	d552                	sw	s4,168(sp)
1c0086f2:	d15a                	sw	s6,160(sp)
1c0086f4:	cf5e                	sw	s7,156(sp)
1c0086f6:	cd62                	sw	s8,152(sp)
1c0086f8:	0335d9b3          	divu	s3,a1,s3
1c0086fc:	892e                	mv	s2,a1
1c0086fe:	8432                	mv	s0,a2
1c008700:	8ab6                	mv	s5,a3
1c008702:	7fa010ef          	jal	ra,1c009efc <pi_l2_malloc>
1c008706:	24050563          	beqz	a0,1c008950 <shake256+0x278>
1c00870a:	46fd                	li	a3,31
1c00870c:	8656                	mv	a2,s5
1c00870e:	85a2                	mv	a1,s0
1c008710:	8a2a                	mv	s4,a0
1c008712:	33ed                	jal	1c0084fc <keccak_absorb.constprop.1>
1c008714:	08700793          	li	a5,135
1c008718:	0d27fe63          	bgeu	a5,s2,1c0087f4 <shake256+0x11c>
1c00871c:	00499413          	slli	s0,s3,0x4
1c008720:	944e                	add	s0,s0,s3
1c008722:	040e                	slli	s0,s0,0x3
1c008724:	7bc1                	lui	s7,0xffff0
1c008726:	ff010b37          	lui	s6,0xff010
1c00872a:	01000ab7          	lui	s5,0x1000
1c00872e:	9426                	add	s0,s0,s1
1c008730:	8c26                	mv	s8,s1
1c008732:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008736:	1b7d                	addi	s6,s6,-1
1c008738:	1afd                	addi	s5,s5,-1
1c00873a:	85d2                	mv	a1,s4
1c00873c:	8552                	mv	a0,s4
1c00873e:	36f1                	jal	1c00830a <KeccakF1600_StatePermute>
1c008740:	87e2                	mv	a5,s8
1c008742:	418a0533          	sub	a0,s4,s8
1c008746:	088c0593          	addi	a1,s8,136
1c00874a:	00f50733          	add	a4,a0,a5
1c00874e:	4314                	lw	a3,0(a4)
1c008750:	4358                	lw	a4,4(a4)
1c008752:	07a1                	addi	a5,a5,8
1c008754:	0086d313          	srli	t1,a3,0x8
1c008758:	00875893          	srli	a7,a4,0x8
1c00875c:	0ff6f813          	andi	a6,a3,255
1c008760:	0ff77613          	andi	a2,a4,255
1c008764:	0ff37313          	andi	t1,t1,255
1c008768:	0ff8f893          	andi	a7,a7,255
1c00876c:	0322                	slli	t1,t1,0x8
1c00876e:	08a2                	slli	a7,a7,0x8
1c008770:	01787833          	and	a6,a6,s7
1c008774:	01767633          	and	a2,a2,s7
1c008778:	00686833          	or	a6,a6,t1
1c00877c:	01166633          	or	a2,a2,a7
1c008780:	00ff0337          	lui	t1,0xff0
1c008784:	00ff08b7          	lui	a7,0xff0
1c008788:	0066f333          	and	t1,a3,t1
1c00878c:	011778b3          	and	a7,a4,a7
1c008790:	01687833          	and	a6,a6,s6
1c008794:	01667633          	and	a2,a2,s6
1c008798:	00686833          	or	a6,a6,t1
1c00879c:	01166633          	or	a2,a2,a7
1c0087a0:	82e1                	srli	a3,a3,0x18
1c0087a2:	8361                	srli	a4,a4,0x18
1c0087a4:	01587833          	and	a6,a6,s5
1c0087a8:	01567633          	and	a2,a2,s5
1c0087ac:	06e2                	slli	a3,a3,0x18
1c0087ae:	0762                	slli	a4,a4,0x18
1c0087b0:	00d866b3          	or	a3,a6,a3
1c0087b4:	8f51                	or	a4,a4,a2
1c0087b6:	0086de93          	srli	t4,a3,0x8
1c0087ba:	0106de13          	srli	t3,a3,0x10
1c0087be:	00875313          	srli	t1,a4,0x8
1c0087c2:	01075893          	srli	a7,a4,0x10
1c0087c6:	82e1                	srli	a3,a3,0x18
1c0087c8:	8361                	srli	a4,a4,0x18
1c0087ca:	ff078c23          	sb	a6,-8(a5)
1c0087ce:	ffd78ca3          	sb	t4,-7(a5)
1c0087d2:	ffc78d23          	sb	t3,-6(a5)
1c0087d6:	fed78da3          	sb	a3,-5(a5)
1c0087da:	fec78e23          	sb	a2,-4(a5)
1c0087de:	fe678ea3          	sb	t1,-3(a5)
1c0087e2:	ff178f23          	sb	a7,-2(a5)
1c0087e6:	fee78fa3          	sb	a4,-1(a5)
1c0087ea:	f6f590e3          	bne	a1,a5,1c00874a <shake256+0x72>
1c0087ee:	8c2e                	mv	s8,a1
1c0087f0:	f48595e3          	bne	a1,s0,1c00873a <shake256+0x62>
1c0087f4:	08800593          	li	a1,136
1c0087f8:	02b97933          	remu	s2,s2,a1
1c0087fc:	02091263          	bnez	s2,1c008820 <shake256+0x148>
1c008800:	546a                	lw	s0,184(sp)
1c008802:	50fa                	lw	ra,188(sp)
1c008804:	54da                	lw	s1,180(sp)
1c008806:	594a                	lw	s2,176(sp)
1c008808:	59ba                	lw	s3,172(sp)
1c00880a:	5a9a                	lw	s5,164(sp)
1c00880c:	5b0a                	lw	s6,160(sp)
1c00880e:	4bfa                	lw	s7,156(sp)
1c008810:	4c6a                	lw	s8,152(sp)
1c008812:	8552                	mv	a0,s4
1c008814:	5a2a                	lw	s4,168(sp)
1c008816:	0c800593          	li	a1,200
1c00881a:	6129                	addi	sp,sp,192
1c00881c:	6ec0106f          	j	1c009f08 <pi_l2_free>
1c008820:	85d2                	mv	a1,s4
1c008822:	8552                	mv	a0,s4
1c008824:	34dd                	jal	1c00830a <KeccakF1600_StatePermute>
1c008826:	002c                	addi	a1,sp,8
1c008828:	78c1                	lui	a7,0xffff0
1c00882a:	ff010837          	lui	a6,0xff010
1c00882e:	01000537          	lui	a0,0x1000
1c008832:	09010e13          	addi	t3,sp,144
1c008836:	862e                	mv	a2,a1
1c008838:	40ba0333          	sub	t1,s4,a1
1c00883c:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008840:	187d                	addi	a6,a6,-1
1c008842:	157d                	addi	a0,a0,-1
1c008844:	00c307b3          	add	a5,t1,a2
1c008848:	0007ae83          	lw	t4,0(a5)
1c00884c:	43d4                	lw	a3,4(a5)
1c00884e:	0621                	addi	a2,a2,8
1c008850:	008edf93          	srli	t6,t4,0x8
1c008854:	0086df13          	srli	t5,a3,0x8
1c008858:	0ffef713          	andi	a4,t4,255
1c00885c:	0ff6f793          	andi	a5,a3,255
1c008860:	0fffff93          	andi	t6,t6,255
1c008864:	0fff7f13          	andi	t5,t5,255
1c008868:	0fa2                	slli	t6,t6,0x8
1c00886a:	0f22                	slli	t5,t5,0x8
1c00886c:	01177733          	and	a4,a4,a7
1c008870:	0117f7b3          	and	a5,a5,a7
1c008874:	01f76733          	or	a4,a4,t6
1c008878:	01e7e7b3          	or	a5,a5,t5
1c00887c:	00ff0fb7          	lui	t6,0xff0
1c008880:	00ff0f37          	lui	t5,0xff0
1c008884:	01feffb3          	and	t6,t4,t6
1c008888:	01e6ff33          	and	t5,a3,t5
1c00888c:	01077733          	and	a4,a4,a6
1c008890:	0107f7b3          	and	a5,a5,a6
1c008894:	01f76733          	or	a4,a4,t6
1c008898:	018ede93          	srli	t4,t4,0x18
1c00889c:	01e7e7b3          	or	a5,a5,t5
1c0088a0:	82e1                	srli	a3,a3,0x18
1c0088a2:	0ee2                	slli	t4,t4,0x18
1c0088a4:	8f69                	and	a4,a4,a0
1c0088a6:	06e2                	slli	a3,a3,0x18
1c0088a8:	8fe9                	and	a5,a5,a0
1c0088aa:	01d76733          	or	a4,a4,t4
1c0088ae:	8fd5                	or	a5,a5,a3
1c0088b0:	fee62c23          	sw	a4,-8(a2)
1c0088b4:	fef62e23          	sw	a5,-4(a2)
1c0088b8:	f8ce16e3          	bne	t3,a2,1c008844 <shake256+0x16c>
1c0088bc:	fff90793          	addi	a5,s2,-1
1c0088c0:	4709                	li	a4,2
1c0088c2:	08f77363          	bgeu	a4,a5,1c008948 <shake256+0x270>
1c0088c6:	00499413          	slli	s0,s3,0x4
1c0088ca:	013407b3          	add	a5,s0,s3
1c0088ce:	078e                	slli	a5,a5,0x3
1c0088d0:	97a6                	add	a5,a5,s1
1c0088d2:	0fc97813          	andi	a6,s2,252
1c0088d6:	983e                	add	a6,a6,a5
1c0088d8:	4198                	lw	a4,0(a1)
1c0088da:	0791                	addi	a5,a5,4
1c0088dc:	0591                	addi	a1,a1,4
1c0088de:	00875513          	srli	a0,a4,0x8
1c0088e2:	01075613          	srli	a2,a4,0x10
1c0088e6:	01875693          	srli	a3,a4,0x18
1c0088ea:	fea78ea3          	sb	a0,-3(a5)
1c0088ee:	fec78f23          	sb	a2,-2(a5)
1c0088f2:	fed78fa3          	sb	a3,-1(a5)
1c0088f6:	fee78e23          	sb	a4,-4(a5)
1c0088fa:	fcf81fe3          	bne	a6,a5,1c0088d8 <shake256+0x200>
1c0088fe:	ffc97793          	andi	a5,s2,-4
1c008902:	eef90fe3          	beq	s2,a5,1c008800 <shake256+0x128>
1c008906:	0918                	addi	a4,sp,144
1c008908:	973e                	add	a4,a4,a5
1c00890a:	99a2                	add	s3,s3,s0
1c00890c:	f7874683          	lbu	a3,-136(a4)
1c008910:	098e                	slli	s3,s3,0x3
1c008912:	99a6                	add	s3,s3,s1
1c008914:	00f98733          	add	a4,s3,a5
1c008918:	00d70023          	sb	a3,0(a4)
1c00891c:	00178713          	addi	a4,a5,1
1c008920:	ef2770e3          	bgeu	a4,s2,1c008800 <shake256+0x128>
1c008924:	0914                	addi	a3,sp,144
1c008926:	96ba                	add	a3,a3,a4
1c008928:	f786c683          	lbu	a3,-136(a3)
1c00892c:	974e                	add	a4,a4,s3
1c00892e:	0789                	addi	a5,a5,2
1c008930:	00d70023          	sb	a3,0(a4)
1c008934:	ed27f6e3          	bgeu	a5,s2,1c008800 <shake256+0x128>
1c008938:	0918                	addi	a4,sp,144
1c00893a:	973e                	add	a4,a4,a5
1c00893c:	f7874703          	lbu	a4,-136(a4)
1c008940:	99be                	add	s3,s3,a5
1c008942:	00e98023          	sb	a4,0(s3)
1c008946:	bd6d                	j	1c008800 <shake256+0x128>
1c008948:	4781                	li	a5,0
1c00894a:	00499413          	slli	s0,s3,0x4
1c00894e:	bf65                	j	1c008906 <shake256+0x22e>
1c008950:	06f00513          	li	a0,111
1c008954:	2995                	jal	1c008dc8 <exit>

1c008956 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c008956:	9b010113          	addi	sp,sp,-1616
1c00895a:	100c                	addi	a1,sp,32
1c00895c:	4601                	li	a2,0
1c00895e:	0088                	addi	a0,sp,64
1c008960:	64112623          	sw	ra,1612(sp)
1c008964:	2025                	jal	1c00898c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c008966:	1c000537          	lui	a0,0x1c000
1c00896a:	13c50513          	addi	a0,a0,316 # 1c00013c <__clz_tab+0x120>
1c00896e:	2ef1                	jal	1c008d4a <puts>
1c008970:	0088                	addi	a0,sp,64
1c008972:	2835                	jal	1c0089ae <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c008974:	64c12083          	lw	ra,1612(sp)
1c008978:	65010113          	addi	sp,sp,1616
1c00897c:	8082                	ret

1c00897e <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c00897e:	1141                	addi	sp,sp,-16
1c008980:	c606                	sw	ra,12(sp)
1c008982:	3fd1                	jal	1c008956 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c008984:	40b2                	lw	ra,12(sp)
1c008986:	4501                	li	a0,0
1c008988:	0141                	addi	sp,sp,16
1c00898a:	8082                	ret

1c00898c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c00898c:	7175                	addi	sp,sp,-144
1c00898e:	c522                	sw	s0,136(sp)
1c008990:	86b2                	mv	a3,a2
1c008992:	842a                	mv	s0,a0
1c008994:	862e                	mv	a2,a1
1c008996:	850a                	mv	a0,sp
1c008998:	08000593          	li	a1,128
1c00899c:	c706                	sw	ra,140(sp)
1c00899e:	28fd                	jal	1c008a9c <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c0089a0:	858a                	mv	a1,sp
1c0089a2:	8522                	mv	a0,s0
1c0089a4:	3c99                	jal	1c0083fa <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c0089a6:	40ba                	lw	ra,140(sp)
1c0089a8:	442a                	lw	s0,136(sp)
1c0089aa:	6149                	addi	sp,sp,144
1c0089ac:	8082                	ret

1c0089ae <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c0089ae:	9e010113          	addi	sp,sp,-1568
1c0089b2:	60912a23          	sw	s1,1556(sp)
1c0089b6:	20000613          	li	a2,512
1c0089ba:	84aa                	mv	s1,a0
1c0089bc:	4581                	li	a1,0
1c0089be:	850a                	mv	a0,sp
1c0089c0:	60112e23          	sw	ra,1564(sp)
1c0089c4:	60812c23          	sw	s0,1560(sp)
1c0089c8:	61312623          	sw	s3,1548(sp)
1c0089cc:	61212823          	sw	s2,1552(sp)
1c0089d0:	61412423          	sw	s4,1544(sp)
1c0089d4:	0400                	addi	s0,sp,512
1c0089d6:	2215                	jal	1c008afa <memset>
1c0089d8:	20000613          	li	a2,512
1c0089dc:	4581                	li	a1,0
1c0089de:	8522                	mv	a0,s0
1c0089e0:	2a29                	jal	1c008afa <memset>
1c0089e2:	40010993          	addi	s3,sp,1024
1c0089e6:	20000613          	li	a2,512
1c0089ea:	85a6                	mv	a1,s1
1c0089ec:	854e                	mv	a0,s3
1c0089ee:	2a41                	jal	1c008b7e <memcpy>
1c0089f0:	6541                	lui	a0,0x10
1c0089f2:	864e                	mv	a2,s3
1c0089f4:	4681                	li	a3,0
1c0089f6:	157d                	addi	a0,a0,-1
1c0089f8:	10000813          	li	a6,256
1c0089fc:	00061703          	lh	a4,0(a2)
1c008a00:	00261583          	lh	a1,2(a2)
1c008a04:	0016d793          	srli	a5,a3,0x1
1c008a08:	078a                	slli	a5,a5,0x2
1c008a0a:	0742                	slli	a4,a4,0x10
1c008a0c:	8de9                	and	a1,a1,a0
1c008a0e:	60010893          	addi	a7,sp,1536
1c008a12:	97c6                	add	a5,a5,a7
1c008a14:	8f4d                	or	a4,a4,a1
1c008a16:	a0e7a023          	sw	a4,-1536(a5)
1c008a1a:	0689                	addi	a3,a3,2
1c008a1c:	0611                	addi	a2,a2,4
1c008a1e:	fd069fe3          	bne	a3,a6,1c0089fc <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x4e>
1c008a22:	890a                	mv	s2,sp
1c008a24:	1c000a37          	lui	s4,0x1c000
1c008a28:	00092583          	lw	a1,0(s2)
1c008a2c:	134a0513          	addi	a0,s4,308 # 1c000134 <__clz_tab+0x118>
1c008a30:	0911                	addi	s2,s2,4
1c008a32:	2e4d                	jal	1c008de4 <printf>
1c008a34:	ff241ae3          	bne	s0,s2,1c008a28 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x7a>
1c008a38:	1c000537          	lui	a0,0x1c000
1c008a3c:	15050513          	addi	a0,a0,336 # 1c000150 <__clz_tab+0x134>
1c008a40:	2629                	jal	1c008d4a <puts>
1c008a42:	85a2                	mv	a1,s0
1c008a44:	850a                	mv	a0,sp
1c008a46:	3235                	jal	1c008372 <KYBER_poly_ntt>
1c008a48:	1c000537          	lui	a0,0x1c000
1c008a4c:	17450513          	addi	a0,a0,372 # 1c000174 <__clz_tab+0x158>
1c008a50:	2ced                	jal	1c008d4a <puts>
1c008a52:	8922                	mv	s2,s0
1c008a54:	00092583          	lw	a1,0(s2)
1c008a58:	134a0513          	addi	a0,s4,308
1c008a5c:	0911                	addi	s2,s2,4
1c008a5e:	2659                	jal	1c008de4 <printf>
1c008a60:	ff299ae3          	bne	s3,s2,1c008a54 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0xa6>
1c008a64:	00248793          	addi	a5,s1,2
1c008a68:	4018                	lw	a4,0(s0)
1c008a6a:	0411                	addi	s0,s0,4
1c008a6c:	0791                	addi	a5,a5,4
1c008a6e:	01075693          	srli	a3,a4,0x10
1c008a72:	fed79d23          	sh	a3,-6(a5)
1c008a76:	fee79e23          	sh	a4,-4(a5)
1c008a7a:	fe8997e3          	bne	s3,s0,1c008a68 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0xba>
1c008a7e:	61c12083          	lw	ra,1564(sp)
1c008a82:	61812403          	lw	s0,1560(sp)
1c008a86:	61412483          	lw	s1,1556(sp)
1c008a8a:	61012903          	lw	s2,1552(sp)
1c008a8e:	60c12983          	lw	s3,1548(sp)
1c008a92:	60812a03          	lw	s4,1544(sp)
1c008a96:	62010113          	addi	sp,sp,1568
1c008a9a:	8082                	ret

1c008a9c <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c008a9c:	7139                	addi	sp,sp,-64
1c008a9e:	87b2                	mv	a5,a2
1c008aa0:	da26                	sw	s1,52(sp)
1c008aa2:	d84a                	sw	s2,48(sp)
1c008aa4:	84aa                	mv	s1,a0
1c008aa6:	892e                	mv	s2,a1
1c008aa8:	02000613          	li	a2,32
1c008aac:	85be                	mv	a1,a5
1c008aae:	0068                	addi	a0,sp,12
1c008ab0:	de06                	sw	ra,60(sp)
1c008ab2:	dc22                	sw	s0,56(sp)
1c008ab4:	8436                	mv	s0,a3
1c008ab6:	20e1                	jal	1c008b7e <memcpy>
1c008ab8:	0070                	addi	a2,sp,12
1c008aba:	85ca                	mv	a1,s2
1c008abc:	8526                	mv	a0,s1
1c008abe:	02100693          	li	a3,33
1c008ac2:	02810623          	sb	s0,44(sp)
1c008ac6:	3909                	jal	1c0086d8 <shake256>
1c008ac8:	50f2                	lw	ra,60(sp)
1c008aca:	5462                	lw	s0,56(sp)
1c008acc:	54d2                	lw	s1,52(sp)
1c008ace:	5942                	lw	s2,48(sp)
1c008ad0:	6121                	addi	sp,sp,64
1c008ad2:	8082                	ret

1c008ad4 <pos_wait_forever>:
1c008ad4:	f14027f3          	csrr	a5,mhartid
1c008ad8:	8795                	srai	a5,a5,0x5
1c008ada:	03f7f793          	andi	a5,a5,63
1c008ade:	477d                	li	a4,31
1c008ae0:	00e78363          	beq	a5,a4,1c008ae6 <pos_wait_forever+0x12>
1c008ae4:	a001                	j	1c008ae4 <pos_wait_forever+0x10>
1c008ae6:	1a10a7b7          	lui	a5,0x1a10a
1c008aea:	577d                	li	a4,-1
1c008aec:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c008af0:	10500073          	wfi
1c008af4:	10500073          	wfi
1c008af8:	bfe5                	j	1c008af0 <pos_wait_forever+0x1c>

1c008afa <memset>:
1c008afa:	fff60e13          	addi	t3,a2,-1
1c008afe:	ce25                	beqz	a2,1c008b76 <memset+0x7c>
1c008b00:	4789                	li	a5,2
1c008b02:	0ff5f593          	andi	a1,a1,255
1c008b06:	07c7fa63          	bgeu	a5,t3,1c008b7a <memset+0x80>
1c008b0a:	00859793          	slli	a5,a1,0x8
1c008b0e:	8fcd                	or	a5,a5,a1
1c008b10:	01059713          	slli	a4,a1,0x10
1c008b14:	8f5d                	or	a4,a4,a5
1c008b16:	01859693          	slli	a3,a1,0x18
1c008b1a:	8ed9                	or	a3,a3,a4
1c008b1c:	0086d313          	srli	t1,a3,0x8
1c008b20:	0106d893          	srli	a7,a3,0x10
1c008b24:	ffc67813          	andi	a6,a2,-4
1c008b28:	87aa                	mv	a5,a0
1c008b2a:	982a                	add	a6,a6,a0
1c008b2c:	0ff77713          	andi	a4,a4,255
1c008b30:	82e1                	srli	a3,a3,0x18
1c008b32:	0ff37313          	andi	t1,t1,255
1c008b36:	0ff8f893          	andi	a7,a7,255
1c008b3a:	00e78023          	sb	a4,0(a5)
1c008b3e:	006780a3          	sb	t1,1(a5)
1c008b42:	01178123          	sb	a7,2(a5)
1c008b46:	00d781a3          	sb	a3,3(a5)
1c008b4a:	0791                	addi	a5,a5,4
1c008b4c:	ff0797e3          	bne	a5,a6,1c008b3a <memset+0x40>
1c008b50:	ffc67793          	andi	a5,a2,-4
1c008b54:	00f50733          	add	a4,a0,a5
1c008b58:	40fe0e33          	sub	t3,t3,a5
1c008b5c:	00f60e63          	beq	a2,a5,1c008b78 <memset+0x7e>
1c008b60:	00b70023          	sb	a1,0(a4)
1c008b64:	000e0963          	beqz	t3,1c008b76 <memset+0x7c>
1c008b68:	00b700a3          	sb	a1,1(a4)
1c008b6c:	4785                	li	a5,1
1c008b6e:	00fe0463          	beq	t3,a5,1c008b76 <memset+0x7c>
1c008b72:	00b70123          	sb	a1,2(a4)
1c008b76:	8082                	ret
1c008b78:	8082                	ret
1c008b7a:	872a                	mv	a4,a0
1c008b7c:	b7d5                	j	1c008b60 <memset+0x66>

1c008b7e <memcpy>:
1c008b7e:	00c5e7b3          	or	a5,a1,a2
1c008b82:	8fc9                	or	a5,a5,a0
1c008b84:	8b8d                	andi	a5,a5,3
1c008b86:	872e                	mv	a4,a1
1c008b88:	882a                	mv	a6,a0
1c008b8a:	cbc5                	beqz	a5,1c008c3a <memcpy+0xbc>
1c008b8c:	c279                	beqz	a2,1c008c52 <memcpy+0xd4>
1c008b8e:	00350793          	addi	a5,a0,3
1c008b92:	8f8d                	sub	a5,a5,a1
1c008b94:	0077b793          	sltiu	a5,a5,7
1c008b98:	e7d1                	bnez	a5,1c008c24 <memcpy+0xa6>
1c008b9a:	fff60793          	addi	a5,a2,-1
1c008b9e:	0047b793          	sltiu	a5,a5,4
1c008ba2:	e3c9                	bnez	a5,1c008c24 <memcpy+0xa6>
1c008ba4:	ffc67e13          	andi	t3,a2,-4
1c008ba8:	9e2e                	add	t3,t3,a1
1c008baa:	00174883          	lbu	a7,1(a4)
1c008bae:	00074303          	lbu	t1,0(a4)
1c008bb2:	00274683          	lbu	a3,2(a4)
1c008bb6:	00374783          	lbu	a5,3(a4)
1c008bba:	08a2                	slli	a7,a7,0x8
1c008bbc:	0068e8b3          	or	a7,a7,t1
1c008bc0:	06c2                	slli	a3,a3,0x10
1c008bc2:	0116e6b3          	or	a3,a3,a7
1c008bc6:	07e2                	slli	a5,a5,0x18
1c008bc8:	8fd5                	or	a5,a5,a3
1c008bca:	0087d313          	srli	t1,a5,0x8
1c008bce:	0107d893          	srli	a7,a5,0x10
1c008bd2:	83e1                	srli	a5,a5,0x18
1c008bd4:	00d80023          	sb	a3,0(a6) # ff010000 <__l2_shared_end+0xe3000000>
1c008bd8:	006800a3          	sb	t1,1(a6)
1c008bdc:	01180123          	sb	a7,2(a6)
1c008be0:	00f801a3          	sb	a5,3(a6)
1c008be4:	0711                	addi	a4,a4,4
1c008be6:	0811                	addi	a6,a6,4
1c008be8:	fdc711e3          	bne	a4,t3,1c008baa <memcpy+0x2c>
1c008bec:	ffc67793          	andi	a5,a2,-4
1c008bf0:	00367693          	andi	a3,a2,3
1c008bf4:	00f50733          	add	a4,a0,a5
1c008bf8:	95be                	add	a1,a1,a5
1c008bfa:	02f60f63          	beq	a2,a5,1c008c38 <memcpy+0xba>
1c008bfe:	0005c603          	lbu	a2,0(a1)
1c008c02:	fff68793          	addi	a5,a3,-1
1c008c06:	00c70023          	sb	a2,0(a4)
1c008c0a:	c79d                	beqz	a5,1c008c38 <memcpy+0xba>
1c008c0c:	0015c603          	lbu	a2,1(a1)
1c008c10:	4789                	li	a5,2
1c008c12:	00c700a3          	sb	a2,1(a4)
1c008c16:	02f68163          	beq	a3,a5,1c008c38 <memcpy+0xba>
1c008c1a:	0025c783          	lbu	a5,2(a1)
1c008c1e:	00f70123          	sb	a5,2(a4)
1c008c22:	8082                	ret
1c008c24:	962e                	add	a2,a2,a1
1c008c26:	87aa                	mv	a5,a0
1c008c28:	0005c703          	lbu	a4,0(a1)
1c008c2c:	0585                	addi	a1,a1,1
1c008c2e:	0785                	addi	a5,a5,1
1c008c30:	fee78fa3          	sb	a4,-1(a5)
1c008c34:	fec59ae3          	bne	a1,a2,1c008c28 <memcpy+0xaa>
1c008c38:	8082                	ret
1c008c3a:	de7d                	beqz	a2,1c008c38 <memcpy+0xba>
1c008c3c:	87aa                	mv	a5,a0
1c008c3e:	4194                	lw	a3,0(a1)
1c008c40:	0791                	addi	a5,a5,4
1c008c42:	40c78733          	sub	a4,a5,a2
1c008c46:	fed7ae23          	sw	a3,-4(a5)
1c008c4a:	0591                	addi	a1,a1,4
1c008c4c:	fea719e3          	bne	a4,a0,1c008c3e <memcpy+0xc0>
1c008c50:	8082                	ret
1c008c52:	8082                	ret

1c008c54 <memmove>:
1c008c54:	40b507b3          	sub	a5,a0,a1
1c008c58:	0ac7e063          	bltu	a5,a2,1c008cf8 <memmove+0xa4>
1c008c5c:	c661                	beqz	a2,1c008d24 <memmove+0xd0>
1c008c5e:	00350793          	addi	a5,a0,3
1c008c62:	8f8d                	sub	a5,a5,a1
1c008c64:	0077b793          	sltiu	a5,a5,7
1c008c68:	e3dd                	bnez	a5,1c008d0e <memmove+0xba>
1c008c6a:	fff60793          	addi	a5,a2,-1
1c008c6e:	0047b793          	sltiu	a5,a5,4
1c008c72:	efd1                	bnez	a5,1c008d0e <memmove+0xba>
1c008c74:	ffc67e13          	andi	t3,a2,-4
1c008c78:	872e                	mv	a4,a1
1c008c7a:	882a                	mv	a6,a0
1c008c7c:	9e2e                	add	t3,t3,a1
1c008c7e:	00174883          	lbu	a7,1(a4)
1c008c82:	00074303          	lbu	t1,0(a4)
1c008c86:	00274683          	lbu	a3,2(a4)
1c008c8a:	00374783          	lbu	a5,3(a4)
1c008c8e:	08a2                	slli	a7,a7,0x8
1c008c90:	0068e8b3          	or	a7,a7,t1
1c008c94:	06c2                	slli	a3,a3,0x10
1c008c96:	0116e6b3          	or	a3,a3,a7
1c008c9a:	07e2                	slli	a5,a5,0x18
1c008c9c:	8fd5                	or	a5,a5,a3
1c008c9e:	0087d313          	srli	t1,a5,0x8
1c008ca2:	0107d893          	srli	a7,a5,0x10
1c008ca6:	83e1                	srli	a5,a5,0x18
1c008ca8:	00d80023          	sb	a3,0(a6)
1c008cac:	006800a3          	sb	t1,1(a6)
1c008cb0:	01180123          	sb	a7,2(a6)
1c008cb4:	00f801a3          	sb	a5,3(a6)
1c008cb8:	0711                	addi	a4,a4,4
1c008cba:	0811                	addi	a6,a6,4
1c008cbc:	fdc711e3          	bne	a4,t3,1c008c7e <memmove+0x2a>
1c008cc0:	ffc67793          	andi	a5,a2,-4
1c008cc4:	00367693          	andi	a3,a2,3
1c008cc8:	00f50733          	add	a4,a0,a5
1c008ccc:	95be                	add	a1,a1,a5
1c008cce:	04f60a63          	beq	a2,a5,1c008d22 <memmove+0xce>
1c008cd2:	0005c603          	lbu	a2,0(a1)
1c008cd6:	fff68793          	addi	a5,a3,-1
1c008cda:	00c70023          	sb	a2,0(a4)
1c008cde:	c3b1                	beqz	a5,1c008d22 <memmove+0xce>
1c008ce0:	0015c603          	lbu	a2,1(a1)
1c008ce4:	4789                	li	a5,2
1c008ce6:	00c700a3          	sb	a2,1(a4)
1c008cea:	02f68c63          	beq	a3,a5,1c008d22 <memmove+0xce>
1c008cee:	0025c783          	lbu	a5,2(a1)
1c008cf2:	00f70123          	sb	a5,2(a4)
1c008cf6:	8082                	ret
1c008cf8:	167d                	addi	a2,a2,-1
1c008cfa:	00c587b3          	add	a5,a1,a2
1c008cfe:	0007c703          	lbu	a4,0(a5)
1c008d02:	00c507b3          	add	a5,a0,a2
1c008d06:	00e78023          	sb	a4,0(a5)
1c008d0a:	f67d                	bnez	a2,1c008cf8 <memmove+0xa4>
1c008d0c:	8082                	ret
1c008d0e:	962a                	add	a2,a2,a0
1c008d10:	87aa                	mv	a5,a0
1c008d12:	0005c703          	lbu	a4,0(a1)
1c008d16:	0785                	addi	a5,a5,1
1c008d18:	0585                	addi	a1,a1,1
1c008d1a:	fee78fa3          	sb	a4,-1(a5)
1c008d1e:	fec79ae3          	bne	a5,a2,1c008d12 <memmove+0xbe>
1c008d22:	8082                	ret
1c008d24:	8082                	ret

1c008d26 <strchr>:
1c008d26:	00054703          	lbu	a4,0(a0)
1c008d2a:	0ff5f593          	andi	a1,a1,255
1c008d2e:	87aa                	mv	a5,a0
1c008d30:	00b70863          	beq	a4,a1,1c008d40 <strchr+0x1a>
1c008d34:	cb01                	beqz	a4,1c008d44 <strchr+0x1e>
1c008d36:	0017c703          	lbu	a4,1(a5)
1c008d3a:	0785                	addi	a5,a5,1
1c008d3c:	feb71ce3          	bne	a4,a1,1c008d34 <strchr+0xe>
1c008d40:	853e                	mv	a0,a5
1c008d42:	8082                	ret
1c008d44:	4501                	li	a0,0
1c008d46:	dded                	beqz	a1,1c008d40 <strchr+0x1a>
1c008d48:	8082                	ret

1c008d4a <puts>:
1c008d4a:	00054783          	lbu	a5,0(a0)
1c008d4e:	c78d                	beqz	a5,1c008d78 <puts+0x2e>
1c008d50:	f14026f3          	csrr	a3,mhartid
1c008d54:	00369713          	slli	a4,a3,0x3
1c008d58:	1a10f637          	lui	a2,0x1a10f
1c008d5c:	0ff77713          	andi	a4,a4,255
1c008d60:	9732                	add	a4,a4,a2
1c008d62:	6609                	lui	a2,0x2
1c008d64:	068a                	slli	a3,a3,0x2
1c008d66:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008d6a:	8ef1                	and	a3,a3,a2
1c008d6c:	9736                	add	a4,a4,a3
1c008d6e:	c31c                	sw	a5,0(a4)
1c008d70:	00154783          	lbu	a5,1(a0)
1c008d74:	0505                	addi	a0,a0,1
1c008d76:	ffe5                	bnez	a5,1c008d6e <puts+0x24>
1c008d78:	f1402773          	csrr	a4,mhartid
1c008d7c:	00371793          	slli	a5,a4,0x3
1c008d80:	1a10f6b7          	lui	a3,0x1a10f
1c008d84:	0ff7f793          	andi	a5,a5,255
1c008d88:	97b6                	add	a5,a5,a3
1c008d8a:	6689                	lui	a3,0x2
1c008d8c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008d90:	070a                	slli	a4,a4,0x2
1c008d92:	8f75                	and	a4,a4,a3
1c008d94:	97ba                	add	a5,a5,a4
1c008d96:	4729                	li	a4,10
1c008d98:	c398                	sw	a4,0(a5)
1c008d9a:	4501                	li	a0,0
1c008d9c:	8082                	ret

1c008d9e <pos_libc_fputc_locked>:
1c008d9e:	6689                	lui	a3,0x2
1c008da0:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008da4:	f14027f3          	csrr	a5,mhartid
1c008da8:	00379713          	slli	a4,a5,0x3
1c008dac:	078a                	slli	a5,a5,0x2
1c008dae:	8ff5                	and	a5,a5,a3
1c008db0:	0ff77713          	andi	a4,a4,255
1c008db4:	1a10f6b7          	lui	a3,0x1a10f
1c008db8:	9736                	add	a4,a4,a3
1c008dba:	97ba                	add	a5,a5,a4
1c008dbc:	0ff57513          	andi	a0,a0,255
1c008dc0:	c388                	sw	a0,0(a5)
1c008dc2:	4501                	li	a0,0
1c008dc4:	8082                	ret

1c008dc6 <pos_libc_prf_locked>:
1c008dc6:	a0b1                	j	1c008e12 <pos_libc_prf>

1c008dc8 <exit>:
1c008dc8:	800007b7          	lui	a5,0x80000
1c008dcc:	1141                	addi	sp,sp,-16
1c008dce:	8d5d                	or	a0,a0,a5
1c008dd0:	c606                	sw	ra,12(sp)
1c008dd2:	1a1047b7          	lui	a5,0x1a104
1c008dd6:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008dda:	39ed                	jal	1c008ad4 <pos_wait_forever>

1c008ddc <pos_io_start>:
1c008ddc:	4501                	li	a0,0
1c008dde:	8082                	ret

1c008de0 <pos_io_stop>:
1c008de0:	4501                	li	a0,0
1c008de2:	8082                	ret

1c008de4 <printf>:
1c008de4:	7139                	addi	sp,sp,-64
1c008de6:	02410313          	addi	t1,sp,36
1c008dea:	d432                	sw	a2,40(sp)
1c008dec:	862a                	mv	a2,a0
1c008dee:	1c009537          	lui	a0,0x1c009
1c008df2:	d22e                	sw	a1,36(sp)
1c008df4:	d636                	sw	a3,44(sp)
1c008df6:	4589                	li	a1,2
1c008df8:	869a                	mv	a3,t1
1c008dfa:	d9e50513          	addi	a0,a0,-610 # 1c008d9e <pos_libc_fputc_locked>
1c008dfe:	ce06                	sw	ra,28(sp)
1c008e00:	d83a                	sw	a4,48(sp)
1c008e02:	da3e                	sw	a5,52(sp)
1c008e04:	dc42                	sw	a6,56(sp)
1c008e06:	de46                	sw	a7,60(sp)
1c008e08:	c61a                	sw	t1,12(sp)
1c008e0a:	3f75                	jal	1c008dc6 <pos_libc_prf_locked>
1c008e0c:	40f2                	lw	ra,28(sp)
1c008e0e:	6121                	addi	sp,sp,64
1c008e10:	8082                	ret

1c008e12 <pos_libc_prf>:
1c008e12:	7169                	addi	sp,sp,-304
1c008e14:	12112623          	sw	ra,300(sp)
1c008e18:	12812423          	sw	s0,296(sp)
1c008e1c:	12912223          	sw	s1,292(sp)
1c008e20:	13212023          	sw	s2,288(sp)
1c008e24:	11312e23          	sw	s3,284(sp)
1c008e28:	11412c23          	sw	s4,280(sp)
1c008e2c:	11512a23          	sw	s5,276(sp)
1c008e30:	11612823          	sw	s6,272(sp)
1c008e34:	11712623          	sw	s7,268(sp)
1c008e38:	11812423          	sw	s8,264(sp)
1c008e3c:	11912223          	sw	s9,260(sp)
1c008e40:	11a12023          	sw	s10,256(sp)
1c008e44:	dfee                	sw	s11,252(sp)
1c008e46:	00064783          	lbu	a5,0(a2)
1c008e4a:	c636                	sw	a3,12(sp)
1c008e4c:	3c0781e3          	beqz	a5,1c009a0e <pos_libc_prf+0xbfc>
1c008e50:	7741                	lui	a4,0xffff0
1c008e52:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008e56:	cc3a                	sw	a4,24(sp)
1c008e58:	10000737          	lui	a4,0x10000
1c008e5c:	177d                	addi	a4,a4,-1
1c008e5e:	8caa                	mv	s9,a0
1c008e60:	84ae                	mv	s1,a1
1c008e62:	00160c13          	addi	s8,a2,1
1c008e66:	4401                	li	s0,0
1c008e68:	1c000d37          	lui	s10,0x1c000
1c008e6c:	ca3a                	sw	a4,20(sp)
1c008e6e:	853e                	mv	a0,a5
1c008e70:	02500793          	li	a5,37
1c008e74:	04f50863          	beq	a0,a5,1c008ec4 <pos_libc_prf+0xb2>
1c008e78:	85a6                	mv	a1,s1
1c008e7a:	9c82                	jalr	s9
1c008e7c:	57fd                	li	a5,-1
1c008e7e:	4cf50b63          	beq	a0,a5,1c009354 <pos_libc_prf+0x542>
1c008e82:	0405                	addi	s0,s0,1
1c008e84:	000c4503          	lbu	a0,0(s8)
1c008e88:	0c05                	addi	s8,s8,1
1c008e8a:	f17d                	bnez	a0,1c008e70 <pos_libc_prf+0x5e>
1c008e8c:	12c12083          	lw	ra,300(sp)
1c008e90:	8522                	mv	a0,s0
1c008e92:	12812403          	lw	s0,296(sp)
1c008e96:	12412483          	lw	s1,292(sp)
1c008e9a:	12012903          	lw	s2,288(sp)
1c008e9e:	11c12983          	lw	s3,284(sp)
1c008ea2:	11812a03          	lw	s4,280(sp)
1c008ea6:	11412a83          	lw	s5,276(sp)
1c008eaa:	11012b03          	lw	s6,272(sp)
1c008eae:	10c12b83          	lw	s7,268(sp)
1c008eb2:	10812c03          	lw	s8,264(sp)
1c008eb6:	10412c83          	lw	s9,260(sp)
1c008eba:	10012d03          	lw	s10,256(sp)
1c008ebe:	5dfe                	lw	s11,252(sp)
1c008ec0:	6155                	addi	sp,sp,304
1c008ec2:	8082                	ret
1c008ec4:	8de2                	mv	s11,s8
1c008ec6:	000dcc03          	lbu	s8,0(s11)
1c008eca:	194d0513          	addi	a0,s10,404 # 1c000194 <__clz_tab+0x178>
1c008ece:	c826                	sw	s1,16(sp)
1c008ed0:	85e2                	mv	a1,s8
1c008ed2:	c202                	sw	zero,4(sp)
1c008ed4:	c402                	sw	zero,8(sp)
1c008ed6:	c002                	sw	zero,0(sp)
1c008ed8:	001d8493          	addi	s1,s11,1
1c008edc:	35a9                	jal	1c008d26 <strchr>
1c008ede:	02000913          	li	s2,32
1c008ee2:	4b81                	li	s7,0
1c008ee4:	02b00993          	li	s3,43
1c008ee8:	02d00b13          	li	s6,45
1c008eec:	03000a93          	li	s5,48
1c008ef0:	02000a13          	li	s4,32
1c008ef4:	8626                	mv	a2,s1
1c008ef6:	c51d                	beqz	a0,1c008f24 <pos_libc_prf+0x112>
1c008ef8:	413c0e63          	beq	s8,s3,1c009314 <pos_libc_prf+0x502>
1c008efc:	3f89ec63          	bltu	s3,s8,1c0092f4 <pos_libc_prf+0x4e2>
1c008f00:	414c0663          	beq	s8,s4,1c00930c <pos_libc_prf+0x4fa>
1c008f04:	02300793          	li	a5,35
1c008f08:	3efc1363          	bne	s8,a5,1c0092ee <pos_libc_prf+0x4dc>
1c008f0c:	4b85                	li	s7,1
1c008f0e:	8da6                	mv	s11,s1
1c008f10:	000dcc03          	lbu	s8,0(s11)
1c008f14:	194d0513          	addi	a0,s10,404
1c008f18:	001d8493          	addi	s1,s11,1
1c008f1c:	85e2                	mv	a1,s8
1c008f1e:	3521                	jal	1c008d26 <strchr>
1c008f20:	8626                	mv	a2,s1
1c008f22:	f979                	bnez	a0,1c008ef8 <pos_libc_prf+0xe6>
1c008f24:	87e2                	mv	a5,s8
1c008f26:	ce5e                	sw	s7,28(sp)
1c008f28:	02a00693          	li	a3,42
1c008f2c:	8c6e                	mv	s8,s11
1c008f2e:	8ba6                	mv	s7,s1
1c008f30:	8dbe                	mv	s11,a5
1c008f32:	44c2                	lw	s1,16(sp)
1c008f34:	42d78263          	beq	a5,a3,1c009358 <pos_libc_prf+0x546>
1c008f38:	fd078693          	addi	a3,a5,-48
1c008f3c:	4525                	li	a0,9
1c008f3e:	4a01                	li	s4,0
1c008f40:	3cd57f63          	bgeu	a0,a3,1c00931e <pos_libc_prf+0x50c>
1c008f44:	02e00793          	li	a5,46
1c008f48:	5afd                	li	s5,-1
1c008f4a:	74fd8363          	beq	s11,a5,1c009690 <pos_libc_prf+0x87e>
1c008f4e:	1c0007b7          	lui	a5,0x1c000
1c008f52:	85ee                	mv	a1,s11
1c008f54:	19c78513          	addi	a0,a5,412 # 1c00019c <__clz_tab+0x180>
1c008f58:	c832                	sw	a2,16(sp)
1c008f5a:	33f1                	jal	1c008d26 <strchr>
1c008f5c:	4642                	lw	a2,16(sp)
1c008f5e:	8c32                	mv	s8,a2
1c008f60:	c509                	beqz	a0,1c008f6a <pos_libc_prf+0x158>
1c008f62:	00064d83          	lbu	s11,0(a2)
1c008f66:	00160c13          	addi	s8,a2,1
1c008f6a:	06900793          	li	a5,105
1c008f6e:	0afd8ee3          	beq	s11,a5,1c00982a <pos_libc_prf+0xa18>
1c008f72:	4db7c763          	blt	a5,s11,1c009440 <pos_libc_prf+0x62e>
1c008f76:	05800793          	li	a5,88
1c008f7a:	4efd8163          	beq	s11,a5,1c00945c <pos_libc_prf+0x64a>
1c008f7e:	41b7c163          	blt	a5,s11,1c009380 <pos_libc_prf+0x56e>
1c008f82:	02500793          	li	a5,37
1c008f86:	26fd8ae3          	beq	s11,a5,1c0099fa <pos_libc_prf+0xbe8>
1c008f8a:	3fb7d863          	bge	a5,s11,1c00937a <pos_libc_prf+0x568>
1c008f8e:	fbbd8793          	addi	a5,s11,-69
1c008f92:	4689                	li	a3,2
1c008f94:	eef6e8e3          	bltu	a3,a5,1c008e84 <pos_libc_prf+0x72>
1c008f98:	47b2                	lw	a5,12(sp)
1c008f9a:	7ff00893          	li	a7,2047
1c008f9e:	00778b13          	addi	s6,a5,7
1c008fa2:	ff8b7b13          	andi	s6,s6,-8
1c008fa6:	004b2783          	lw	a5,4(s6) # ff010004 <__l2_shared_end+0xe3000004>
1c008faa:	000b2603          	lw	a2,0(s6)
1c008fae:	0b21                	addi	s6,s6,8
1c008fb0:	00b79693          	slli	a3,a5,0xb
1c008fb4:	01565513          	srli	a0,a2,0x15
1c008fb8:	8ec9                	or	a3,a3,a0
1c008fba:	0147d813          	srli	a6,a5,0x14
1c008fbe:	0686                	slli	a3,a3,0x1
1c008fc0:	7ff87813          	andi	a6,a6,2047
1c008fc4:	0016d513          	srli	a0,a3,0x1
1c008fc8:	00b61313          	slli	t1,a2,0xb
1c008fcc:	86be                	mv	a3,a5
1c008fce:	41180263          	beq	a6,a7,1c0093d2 <pos_libc_prf+0x5c0>
1c008fd2:	04600793          	li	a5,70
1c008fd6:	00fd9463          	bne	s11,a5,1c008fde <pos_libc_prf+0x1cc>
1c008fda:	06600d93          	li	s11,102
1c008fde:	006867b3          	or	a5,a6,t1
1c008fe2:	00a7e8b3          	or	a7,a5,a0
1c008fe6:	862a                	mv	a2,a0
1c008fe8:	340885e3          	beqz	a7,1c009b32 <pos_libc_prf+0xd20>
1c008fec:	80000637          	lui	a2,0x80000
1c008ff0:	c0280813          	addi	a6,a6,-1022
1c008ff4:	879a                	mv	a5,t1
1c008ff6:	8e49                	or	a2,a2,a0
1c008ff8:	4606c7e3          	bltz	a3,1c009c66 <pos_libc_prf+0xe54>
1c008ffc:	4722                	lw	a4,8(sp)
1c008ffe:	480708e3          	beqz	a4,1c009c8e <pos_libc_prf+0xe7c>
1c009002:	02b00693          	li	a3,43
1c009006:	02d10223          	sb	a3,36(sp)
1c00900a:	02510f13          	addi	t5,sp,37
1c00900e:	56f9                	li	a3,-2
1c009010:	4301                	li	t1,0
1c009012:	06d85663          	bge	a6,a3,1c00907e <pos_libc_prf+0x26c>
1c009016:	333338b7          	lui	a7,0x33333
1c00901a:	80000e37          	lui	t3,0x80000
1c00901e:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c009022:	fffe4e13          	not	t3,t3
1c009026:	5ef9                	li	t4,-2
1c009028:	01f61593          	slli	a1,a2,0x1f
1c00902c:	0017d693          	srli	a3,a5,0x1
1c009030:	0017f713          	andi	a4,a5,1
1c009034:	8ecd                	or	a3,a3,a1
1c009036:	00d707b3          	add	a5,a4,a3
1c00903a:	00e7b733          	sltu	a4,a5,a4
1c00903e:	8205                	srli	a2,a2,0x1
1c009040:	963a                	add	a2,a2,a4
1c009042:	8742                	mv	a4,a6
1c009044:	0805                	addi	a6,a6,1
1c009046:	fec8e1e3          	bltu	a7,a2,1c009028 <pos_libc_prf+0x216>
1c00904a:	00279593          	slli	a1,a5,0x2
1c00904e:	01e7d513          	srli	a0,a5,0x1e
1c009052:	00261693          	slli	a3,a2,0x2
1c009056:	97ae                	add	a5,a5,a1
1c009058:	8ec9                	or	a3,a3,a0
1c00905a:	9636                	add	a2,a2,a3
1c00905c:	00b7b5b3          	sltu	a1,a5,a1
1c009060:	962e                	add	a2,a2,a1
1c009062:	01f7d693          	srli	a3,a5,0x1f
1c009066:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00906a:	137d                	addi	t1,t1,-1
1c00906c:	01c61763          	bne	a2,t3,1c00907a <pos_libc_prf+0x268>
1c009070:	00170813          	addi	a6,a4,1
1c009074:	0786                	slli	a5,a5,0x1
1c009076:	ffe6e613          	ori	a2,a3,-2
1c00907a:	fbd847e3          	blt	a6,t4,1c009028 <pos_libc_prf+0x216>
1c00907e:	07005363          	blez	a6,1c0090e4 <pos_libc_prf+0x2d2>
1c009082:	800008b7          	lui	a7,0x80000
1c009086:	4e15                	li	t3,5
1c009088:	fff8c893          	not	a7,a7
1c00908c:	00278693          	addi	a3,a5,2
1c009090:	00f6b7b3          	sltu	a5,a3,a5
1c009094:	963e                	add	a2,a2,a5
1c009096:	03c657b3          	divu	a5,a2,t3
1c00909a:	0036d713          	srli	a4,a3,0x3
1c00909e:	187d                	addi	a6,a6,-1
1c0090a0:	0305                	addi	t1,t1,1
1c0090a2:	00279593          	slli	a1,a5,0x2
1c0090a6:	95be                	add	a1,a1,a5
1c0090a8:	8e0d                	sub	a2,a2,a1
1c0090aa:	0676                	slli	a2,a2,0x1d
1c0090ac:	8f51                	or	a4,a4,a2
1c0090ae:	03c75633          	divu	a2,a4,t3
1c0090b2:	00361713          	slli	a4,a2,0x3
1c0090b6:	00561593          	slli	a1,a2,0x5
1c0090ba:	95ba                	add	a1,a1,a4
1c0090bc:	8e8d                	sub	a3,a3,a1
1c0090be:	03c6d6b3          	divu	a3,a3,t3
1c0090c2:	8275                	srli	a2,a2,0x1d
1c0090c4:	963e                	add	a2,a2,a5
1c0090c6:	00e687b3          	add	a5,a3,a4
1c0090ca:	00d7b6b3          	sltu	a3,a5,a3
1c0090ce:	9636                	add	a2,a2,a3
1c0090d0:	01f7d713          	srli	a4,a5,0x1f
1c0090d4:	0606                	slli	a2,a2,0x1
1c0090d6:	8e59                	or	a2,a2,a4
1c0090d8:	0786                	slli	a5,a5,0x1
1c0090da:	187d                	addi	a6,a6,-1
1c0090dc:	fec8fae3          	bgeu	a7,a2,1c0090d0 <pos_libc_prf+0x2be>
1c0090e0:	fb0046e3          	bgtz	a6,1c00908c <pos_libc_prf+0x27a>
1c0090e4:	4e11                	li	t3,4
1c0090e6:	01f61693          	slli	a3,a2,0x1f
1c0090ea:	0017d713          	srli	a4,a5,0x1
1c0090ee:	8f55                	or	a4,a4,a3
1c0090f0:	8b85                	andi	a5,a5,1
1c0090f2:	00e78533          	add	a0,a5,a4
1c0090f6:	8205                	srli	a2,a2,0x1
1c0090f8:	00f537b3          	sltu	a5,a0,a5
1c0090fc:	00c788b3          	add	a7,a5,a2
1c009100:	0805                	addi	a6,a6,1
1c009102:	87aa                	mv	a5,a0
1c009104:	8646                	mv	a2,a7
1c009106:	ffc810e3          	bne	a6,t3,1c0090e6 <pos_libc_prf+0x2d4>
1c00910a:	06700793          	li	a5,103
1c00910e:	2a0acee3          	bltz	s5,1c009bca <pos_libc_prf+0xdb8>
1c009112:	28fd83e3          	beq	s11,a5,1c009b98 <pos_libc_prf+0xd86>
1c009116:	04700793          	li	a5,71
1c00911a:	26fd8fe3          	beq	s11,a5,1c009b98 <pos_libc_prf+0xd86>
1c00911e:	06600793          	li	a5,102
1c009122:	2cfd85e3          	beq	s11,a5,1c009bec <pos_libc_prf+0xdda>
1c009126:	001a8813          	addi	a6,s5,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c00912a:	47c1                	li	a5,16
1c00912c:	0107d363          	bge	a5,a6,1c009132 <pos_libc_prf+0x320>
1c009130:	4841                	li	a6,16
1c009132:	187d                	addi	a6,a6,-1
1c009134:	4601                	li	a2,0
1c009136:	4781                	li	a5,0
1c009138:	080006b7          	lui	a3,0x8000
1c00913c:	4e15                	li	t3,5
1c00913e:	5efd                	li	t4,-1
1c009140:	00278713          	addi	a4,a5,2
1c009144:	00f737b3          	sltu	a5,a4,a5
1c009148:	97b6                	add	a5,a5,a3
1c00914a:	03c7dfb3          	divu	t6,a5,t3
1c00914e:	00375593          	srli	a1,a4,0x3
1c009152:	187d                	addi	a6,a6,-1
1c009154:	002f9693          	slli	a3,t6,0x2
1c009158:	96fe                	add	a3,a3,t6
1c00915a:	8f95                	sub	a5,a5,a3
1c00915c:	07f6                	slli	a5,a5,0x1d
1c00915e:	8ddd                	or	a1,a1,a5
1c009160:	03c5d5b3          	divu	a1,a1,t3
1c009164:	00359693          	slli	a3,a1,0x3
1c009168:	00559793          	slli	a5,a1,0x5
1c00916c:	97b6                	add	a5,a5,a3
1c00916e:	8f1d                	sub	a4,a4,a5
1c009170:	03c757b3          	divu	a5,a4,t3
1c009174:	81f5                	srli	a1,a1,0x1d
1c009176:	95fe                	add	a1,a1,t6
1c009178:	96be                	add	a3,a3,a5
1c00917a:	00f6b733          	sltu	a4,a3,a5
1c00917e:	972e                	add	a4,a4,a1
1c009180:	01f71593          	slli	a1,a4,0x1f
1c009184:	0016d793          	srli	a5,a3,0x1
1c009188:	8fcd                	or	a5,a5,a1
1c00918a:	8a85                	andi	a3,a3,1
1c00918c:	97b6                	add	a5,a5,a3
1c00918e:	8305                	srli	a4,a4,0x1
1c009190:	00d7b6b3          	sltu	a3,a5,a3
1c009194:	96ba                	add	a3,a3,a4
1c009196:	fbd815e3          	bne	a6,t4,1c009140 <pos_libc_prf+0x32e>
1c00919a:	97aa                	add	a5,a5,a0
1c00919c:	96c6                	add	a3,a3,a7
1c00919e:	00a7b533          	sltu	a0,a5,a0
1c0091a2:	00d508b3          	add	a7,a0,a3
1c0091a6:	f00006b7          	lui	a3,0xf0000
1c0091aa:	0116f6b3          	and	a3,a3,a7
1c0091ae:	c2b5                	beqz	a3,1c009212 <pos_libc_prf+0x400>
1c0091b0:	00278813          	addi	a6,a5,2
1c0091b4:	00f836b3          	sltu	a3,a6,a5
1c0091b8:	98b6                	add	a7,a7,a3
1c0091ba:	4e95                	li	t4,5
1c0091bc:	03d8de33          	divu	t3,a7,t4
1c0091c0:	00385693          	srli	a3,a6,0x3
1c0091c4:	0305                	addi	t1,t1,1
1c0091c6:	002e1513          	slli	a0,t3,0x2
1c0091ca:	9572                	add	a0,a0,t3
1c0091cc:	40a888b3          	sub	a7,a7,a0
1c0091d0:	01d89513          	slli	a0,a7,0x1d
1c0091d4:	8ec9                	or	a3,a3,a0
1c0091d6:	03d6d6b3          	divu	a3,a3,t4
1c0091da:	00369513          	slli	a0,a3,0x3
1c0091de:	00569793          	slli	a5,a3,0x5
1c0091e2:	97aa                	add	a5,a5,a0
1c0091e4:	40f807b3          	sub	a5,a6,a5
1c0091e8:	03d7d7b3          	divu	a5,a5,t4
1c0091ec:	82f5                	srli	a3,a3,0x1d
1c0091ee:	96f2                	add	a3,a3,t3
1c0091f0:	953e                	add	a0,a0,a5
1c0091f2:	00f537b3          	sltu	a5,a0,a5
1c0091f6:	96be                	add	a3,a3,a5
1c0091f8:	01f69813          	slli	a6,a3,0x1f
1c0091fc:	00155793          	srli	a5,a0,0x1
1c009200:	00f867b3          	or	a5,a6,a5
1c009204:	8905                	andi	a0,a0,1
1c009206:	97aa                	add	a5,a5,a0
1c009208:	8285                	srli	a3,a3,0x1
1c00920a:	00a7b533          	sltu	a0,a5,a0
1c00920e:	00d508b3          	add	a7,a0,a3
1c009212:	001f0993          	addi	s3,t5,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c009216:	06600693          	li	a3,102
1c00921a:	884e                	mv	a6,s3
1c00921c:	4edd8163          	beq	s11,a3,1c0096fe <pos_libc_prf+0x8ec>
1c009220:	00279693          	slli	a3,a5,0x2
1c009224:	01e7d513          	srli	a0,a5,0x1e
1c009228:	00289e13          	slli	t3,a7,0x2
1c00922c:	97b6                	add	a5,a5,a3
1c00922e:	01c56e33          	or	t3,a0,t3
1c009232:	00d7b833          	sltu	a6,a5,a3
1c009236:	011e06b3          	add	a3,t3,a7
1c00923a:	9836                	add	a6,a6,a3
1c00923c:	0806                	slli	a6,a6,0x1
1c00923e:	01f7d693          	srli	a3,a5,0x1f
1c009242:	0106e833          	or	a6,a3,a6
1c009246:	01c85693          	srli	a3,a6,0x1c
1c00924a:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00924e:	4772                	lw	a4,28(sp)
1c009250:	00af0023          	sb	a0,0(t5)
1c009254:	00179513          	slli	a0,a5,0x1
1c009258:	47d2                	lw	a5,20(sp)
1c00925a:	00d036b3          	snez	a3,a3
1c00925e:	01576bb3          	or	s7,a4,s5
1c009262:	00f87833          	and	a6,a6,a5
1c009266:	40d30333          	sub	t1,t1,a3
1c00926a:	060b8463          	beqz	s7,1c0092d2 <pos_libc_prf+0x4c0>
1c00926e:	02e00793          	li	a5,46
1c009272:	00ff00a3          	sb	a5,1(t5)
1c009276:	002f0993          	addi	s3,t5,2
1c00927a:	040a8c63          	beqz	s5,1c0092d2 <pos_libc_prf+0x4c0>
1c00927e:	002a8793          	addi	a5,s5,2
1c009282:	9f3e                	add	t5,t5,a5
1c009284:	88ce                	mv	a7,s3
1c009286:	4ebd                	li	t4,15
1c009288:	03000f93          	li	t6,48
1c00928c:	00251793          	slli	a5,a0,0x2
1c009290:	01e55693          	srli	a3,a0,0x1e
1c009294:	00281713          	slli	a4,a6,0x2
1c009298:	00a785b3          	add	a1,a5,a0
1c00929c:	8f55                	or	a4,a4,a3
1c00929e:	9742                	add	a4,a4,a6
1c0092a0:	00f5b7b3          	sltu	a5,a1,a5
1c0092a4:	97ba                	add	a5,a5,a4
1c0092a6:	0786                	slli	a5,a5,0x1
1c0092a8:	01f5d713          	srli	a4,a1,0x1f
1c0092ac:	8fd9                	or	a5,a5,a4
1c0092ae:	01c7d713          	srli	a4,a5,0x1c
1c0092b2:	03070713          	addi	a4,a4,48
1c0092b6:	0885                	addi	a7,a7,1
1c0092b8:	53d05763          	blez	t4,1c0097e6 <pos_libc_prf+0x9d4>
1c0092bc:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c0092c0:	4752                	lw	a4,20(sp)
1c0092c2:	1efd                	addi	t4,t4,-1
1c0092c4:	00159513          	slli	a0,a1,0x1
1c0092c8:	00e7f833          	and	a6,a5,a4
1c0092cc:	fd1f10e3          	bne	t5,a7,1c00928c <pos_libc_prf+0x47a>
1c0092d0:	99d6                	add	s3,s3,s5
1c0092d2:	4e061c63          	bnez	a2,1c0097ca <pos_libc_prf+0x9b8>
1c0092d6:	fdfdf793          	andi	a5,s11,-33
1c0092da:	04500693          	li	a3,69
1c0092de:	00d781e3          	beq	a5,a3,1c009ae0 <pos_libc_prf+0xcce>
1c0092e2:	105c                	addi	a5,sp,36
1c0092e4:	00098023          	sb	zero,0(s3)
1c0092e8:	40f989b3          	sub	s3,s3,a5
1c0092ec:	aa05                	j	1c00941c <pos_libc_prf+0x60a>
1c0092ee:	b80c0fe3          	beqz	s8,1c008e8c <pos_libc_prf+0x7a>
1c0092f2:	b931                	j	1c008f0e <pos_libc_prf+0xfc>
1c0092f4:	016c0863          	beq	s8,s6,1c009304 <pos_libc_prf+0x4f2>
1c0092f8:	c15c1be3          	bne	s8,s5,1c008f0e <pos_libc_prf+0xfc>
1c0092fc:	03000913          	li	s2,48
1c009300:	8da6                	mv	s11,s1
1c009302:	b139                	j	1c008f10 <pos_libc_prf+0xfe>
1c009304:	4785                	li	a5,1
1c009306:	c03e                	sw	a5,0(sp)
1c009308:	8da6                	mv	s11,s1
1c00930a:	b119                	j	1c008f10 <pos_libc_prf+0xfe>
1c00930c:	4785                	li	a5,1
1c00930e:	c23e                	sw	a5,4(sp)
1c009310:	8da6                	mv	s11,s1
1c009312:	befd                	j	1c008f10 <pos_libc_prf+0xfe>
1c009314:	4785                	li	a5,1
1c009316:	c43e                	sw	a5,8(sp)
1c009318:	8da6                	mv	s11,s1
1c00931a:	bedd                	j	1c008f10 <pos_libc_prf+0xfe>
1c00931c:	0b85                	addi	s7,s7,1
1c00931e:	002a1793          	slli	a5,s4,0x2
1c009322:	97d2                	add	a5,a5,s4
1c009324:	0786                	slli	a5,a5,0x1
1c009326:	97ee                	add	a5,a5,s11
1c009328:	000bcd83          	lbu	s11,0(s7)
1c00932c:	fd078a13          	addi	s4,a5,-48
1c009330:	8662                	mv	a2,s8
1c009332:	fd0d8793          	addi	a5,s11,-48
1c009336:	8c5e                	mv	s8,s7
1c009338:	fef572e3          	bgeu	a0,a5,1c00931c <pos_libc_prf+0x50a>
1c00933c:	0609                	addi	a2,a2,2
1c00933e:	0c800793          	li	a5,200
1c009342:	c147f1e3          	bgeu	a5,s4,1c008f44 <pos_libc_prf+0x132>
1c009346:	0c800a13          	li	s4,200
1c00934a:	beed                	j	1c008f44 <pos_libc_prf+0x132>
1c00934c:	0c800793          	li	a5,200
1c009350:	b3b7dae3          	bge	a5,s11,1c008e84 <pos_libc_prf+0x72>
1c009354:	547d                	li	s0,-1
1c009356:	be1d                	j	1c008e8c <pos_libc_prf+0x7a>
1c009358:	47b2                	lw	a5,12(sp)
1c00935a:	0007aa03          	lw	s4,0(a5)
1c00935e:	00478693          	addi	a3,a5,4
1c009362:	000a5663          	bgez	s4,1c00936e <pos_libc_prf+0x55c>
1c009366:	4785                	li	a5,1
1c009368:	41400a33          	neg	s4,s4
1c00936c:	c03e                	sw	a5,0(sp)
1c00936e:	000bcd83          	lbu	s11,0(s7)
1c009372:	c636                	sw	a3,12(sp)
1c009374:	002c0613          	addi	a2,s8,2
1c009378:	b7d9                	j	1c00933e <pos_libc_prf+0x52c>
1c00937a:	b00d89e3          	beqz	s11,1c008e8c <pos_libc_prf+0x7a>
1c00937e:	b619                	j	1c008e84 <pos_libc_prf+0x72>
1c009380:	06400793          	li	a5,100
1c009384:	4afd8363          	beq	s11,a5,1c00982a <pos_libc_prf+0xa18>
1c009388:	19b7d963          	bge	a5,s11,1c00951a <pos_libc_prf+0x708>
1c00938c:	f9bd8793          	addi	a5,s11,-101
1c009390:	4689                	li	a3,2
1c009392:	aef6e9e3          	bltu	a3,a5,1c008e84 <pos_libc_prf+0x72>
1c009396:	47b2                	lw	a5,12(sp)
1c009398:	7ff00893          	li	a7,2047
1c00939c:	00778b13          	addi	s6,a5,7
1c0093a0:	ff8b7b13          	andi	s6,s6,-8
1c0093a4:	004b2783          	lw	a5,4(s6)
1c0093a8:	000b2603          	lw	a2,0(s6)
1c0093ac:	0b21                	addi	s6,s6,8
1c0093ae:	00b79693          	slli	a3,a5,0xb
1c0093b2:	01565813          	srli	a6,a2,0x15
1c0093b6:	0147d513          	srli	a0,a5,0x14
1c0093ba:	00d866b3          	or	a3,a6,a3
1c0093be:	0686                	slli	a3,a3,0x1
1c0093c0:	7ff57813          	andi	a6,a0,2047
1c0093c4:	00b61313          	slli	t1,a2,0xb
1c0093c8:	0016d513          	srli	a0,a3,0x1
1c0093cc:	86be                	mv	a3,a5
1c0093ce:	c11818e3          	bne	a6,a7,1c008fde <pos_libc_prf+0x1cc>
1c0093d2:	105c                	addi	a5,sp,36
1c0093d4:	0006d863          	bgez	a3,1c0093e4 <pos_libc_prf+0x5d2>
1c0093d8:	02d00793          	li	a5,45
1c0093dc:	02f10223          	sb	a5,36(sp)
1c0093e0:	02510793          	addi	a5,sp,37
1c0093e4:	00a36633          	or	a2,t1,a0
1c0093e8:	fbfd8593          	addi	a1,s11,-65
1c0093ec:	00378993          	addi	s3,a5,3
1c0093f0:	46e5                	li	a3,25
1c0093f2:	0c0612e3          	bnez	a2,1c009cb6 <pos_libc_prf+0xea4>
1c0093f6:	10b6e5e3          	bltu	a3,a1,1c009d00 <pos_libc_prf+0xeee>
1c0093fa:	04900693          	li	a3,73
1c0093fe:	00d78023          	sb	a3,0(a5)
1c009402:	04e00693          	li	a3,78
1c009406:	00d780a3          	sb	a3,1(a5)
1c00940a:	04600693          	li	a3,70
1c00940e:	00d78123          	sb	a3,2(a5)
1c009412:	000781a3          	sb	zero,3(a5)
1c009416:	105c                	addi	a5,sp,36
1c009418:	40f989b3          	sub	s3,s3,a5
1c00941c:	47a2                	lw	a5,8(sp)
1c00941e:	4712                	lw	a4,4(sp)
1c009420:	8fd9                	or	a5,a5,a4
1c009422:	ce3e                	sw	a5,28(sp)
1c009424:	5e079b63          	bnez	a5,1c009a1a <pos_libc_prf+0xc08>
1c009428:	02414683          	lbu	a3,36(sp)
1c00942c:	02d00793          	li	a5,45
1c009430:	5ef68563          	beq	a3,a5,1c009a1a <pos_libc_prf+0xc08>
1c009434:	0c800793          	li	a5,200
1c009438:	0d37d863          	bge	a5,s3,1c009508 <pos_libc_prf+0x6f6>
1c00943c:	547d                	li	s0,-1
1c00943e:	b4b9                	j	1c008e8c <pos_libc_prf+0x7a>
1c009440:	07000793          	li	a5,112
1c009444:	46fd8f63          	beq	s11,a5,1c0098c2 <pos_libc_prf+0xab0>
1c009448:	1bb7d663          	bge	a5,s11,1c0095f4 <pos_libc_prf+0x7e2>
1c00944c:	07500793          	li	a5,117
1c009450:	52fd8763          	beq	s11,a5,1c00997e <pos_libc_prf+0xb6c>
1c009454:	07800793          	li	a5,120
1c009458:	16fd9163          	bne	s11,a5,1c0095ba <pos_libc_prf+0x7a8>
1c00945c:	47b2                	lw	a5,12(sp)
1c00945e:	1054                	addi	a3,sp,36
1c009460:	4390                	lw	a2,0(a5)
1c009462:	00478b13          	addi	s6,a5,4
1c009466:	47f2                	lw	a5,28(sp)
1c009468:	28079163          	bnez	a5,1c0096ea <pos_libc_prf+0x8d8>
1c00946c:	87b6                	mv	a5,a3
1c00946e:	4ea5                	li	t4,9
1c009470:	4e3d                	li	t3,15
1c009472:	a039                	j	1c009480 <pos_libc_prf+0x66e>
1c009474:	ff098fa3          	sb	a6,-1(s3)
1c009478:	02ce7663          	bgeu	t3,a2,1c0094a4 <pos_libc_prf+0x692>
1c00947c:	862a                	mv	a2,a0
1c00947e:	87ce                	mv	a5,s3
1c009480:	00f67593          	andi	a1,a2,15
1c009484:	00178993          	addi	s3,a5,1
1c009488:	05758813          	addi	a6,a1,87
1c00948c:	03058713          	addi	a4,a1,48
1c009490:	00465513          	srli	a0,a2,0x4
1c009494:	febee0e3          	bltu	t4,a1,1c009474 <pos_libc_prf+0x662>
1c009498:	00e78023          	sb	a4,0(a5)
1c00949c:	00178993          	addi	s3,a5,1
1c0094a0:	fcce6ee3          	bltu	t3,a2,1c00947c <pos_libc_prf+0x66a>
1c0094a4:	40d98633          	sub	a2,s3,a3
1c0094a8:	01565c63          	bge	a2,s5,1c0094c0 <pos_libc_prf+0x6ae>
1c0094ac:	03000513          	li	a0,48
1c0094b0:	87ce                	mv	a5,s3
1c0094b2:	0985                	addi	s3,s3,1
1c0094b4:	40d98733          	sub	a4,s3,a3
1c0094b8:	fea98fa3          	sb	a0,-1(s3)
1c0094bc:	ff574ae3          	blt	a4,s5,1c0094b0 <pos_libc_prf+0x69e>
1c0094c0:	00098023          	sb	zero,0(s3)
1c0094c4:	00f6fe63          	bgeu	a3,a5,1c0094e0 <pos_libc_prf+0x6ce>
1c0094c8:	0006c603          	lbu	a2,0(a3)
1c0094cc:	0007c703          	lbu	a4,0(a5)
1c0094d0:	0685                	addi	a3,a3,1
1c0094d2:	00c78023          	sb	a2,0(a5)
1c0094d6:	fee68fa3          	sb	a4,-1(a3)
1c0094da:	17fd                	addi	a5,a5,-1
1c0094dc:	fef6e6e3          	bltu	a3,a5,1c0094c8 <pos_libc_prf+0x6b6>
1c0094e0:	05800793          	li	a5,88
1c0094e4:	66fd8463          	beq	s11,a5,1c009b4c <pos_libc_prf+0xd3a>
1c0094e8:	105c                	addi	a5,sp,36
1c0094ea:	40f989b3          	sub	s3,s3,a5
1c0094ee:	47f2                	lw	a5,28(sp)
1c0094f0:	c399                	beqz	a5,1c0094f6 <pos_libc_prf+0x6e4>
1c0094f2:	4789                	li	a5,2
1c0094f4:	ce3e                	sw	a5,28(sp)
1c0094f6:	57fd                	li	a5,-1
1c0094f8:	f2fa8ee3          	beq	s5,a5,1c009434 <pos_libc_prf+0x622>
1c0094fc:	0c800793          	li	a5,200
1c009500:	e537cae3          	blt	a5,s3,1c009354 <pos_libc_prf+0x542>
1c009504:	02000913          	li	s2,32
1c009508:	00198613          	addi	a2,s3,1
1c00950c:	0349c963          	blt	s3,s4,1c00953e <pos_libc_prf+0x72c>
1c009510:	c65a                	sw	s6,12(sp)
1c009512:	8a4e                	mv	s4,s3
1c009514:	1a0a1663          	bnez	s4,1c0096c0 <pos_libc_prf+0x8ae>
1c009518:	b2b5                	j	1c008e84 <pos_libc_prf+0x72>
1c00951a:	06300793          	li	a5,99
1c00951e:	96fd93e3          	bne	s11,a5,1c008e84 <pos_libc_prf+0x72>
1c009522:	4732                	lw	a4,12(sp)
1c009524:	020102a3          	sb	zero,37(sp)
1c009528:	4785                	li	a5,1
1c00952a:	4314                	lw	a3,0(a4)
1c00952c:	00470b13          	addi	s6,a4,4
1c009530:	02d10223          	sb	a3,36(sp)
1c009534:	1947d463          	bge	a5,s4,1c0096bc <pos_libc_prf+0x8aa>
1c009538:	4609                	li	a2,2
1c00953a:	4985                	li	s3,1
1c00953c:	ce02                	sw	zero,28(sp)
1c00953e:	4782                	lw	a5,0(sp)
1c009540:	4e078463          	beqz	a5,1c009a28 <pos_libc_prf+0xc16>
1c009544:	413a07b3          	sub	a5,s4,s3
1c009548:	4585                	li	a1,1
1c00954a:	0149d363          	bge	s3,s4,1c009550 <pos_libc_prf+0x73e>
1c00954e:	85be                	mv	a1,a5
1c009550:	17fd                	addi	a5,a5,-1
1c009552:	0037b793          	sltiu	a5,a5,3
1c009556:	eb95                	bnez	a5,1c00958a <pos_libc_prf+0x778>
1c009558:	0349d963          	bge	s3,s4,1c00958a <pos_libc_prf+0x778>
1c00955c:	105c                	addi	a5,sp,36
1c00955e:	97ce                	add	a5,a5,s3
1c009560:	ffc5f613          	andi	a2,a1,-4
1c009564:	963e                	add	a2,a2,a5
1c009566:	02000693          	li	a3,32
1c00956a:	00d78023          	sb	a3,0(a5)
1c00956e:	00d780a3          	sb	a3,1(a5)
1c009572:	00d78123          	sb	a3,2(a5)
1c009576:	00d781a3          	sb	a3,3(a5)
1c00957a:	0791                	addi	a5,a5,4
1c00957c:	fef617e3          	bne	a2,a5,1c00956a <pos_libc_prf+0x758>
1c009580:	ffc5f793          	andi	a5,a1,-4
1c009584:	99be                	add	s3,s3,a5
1c009586:	02b78663          	beq	a5,a1,1c0095b2 <pos_libc_prf+0x7a0>
1c00958a:	199c                	addi	a5,sp,240
1c00958c:	97ce                	add	a5,a5,s3
1c00958e:	02000693          	li	a3,32
1c009592:	f2d78a23          	sb	a3,-204(a5)
1c009596:	00198793          	addi	a5,s3,1
1c00959a:	0147dc63          	bge	a5,s4,1c0095b2 <pos_libc_prf+0x7a0>
1c00959e:	1998                	addi	a4,sp,240
1c0095a0:	97ba                	add	a5,a5,a4
1c0095a2:	f2d78a23          	sb	a3,-204(a5)
1c0095a6:	0989                	addi	s3,s3,2
1c0095a8:	0149d563          	bge	s3,s4,1c0095b2 <pos_libc_prf+0x7a0>
1c0095ac:	99ba                	add	s3,s3,a4
1c0095ae:	f2d98a23          	sb	a3,-204(s3)
1c0095b2:	c65a                	sw	s6,12(sp)
1c0095b4:	100a1663          	bnez	s4,1c0096c0 <pos_libc_prf+0x8ae>
1c0095b8:	b0f1                	j	1c008e84 <pos_libc_prf+0x72>
1c0095ba:	07300793          	li	a5,115
1c0095be:	d8fd97e3          	bne	s11,a5,1c00934c <pos_libc_prf+0x53a>
1c0095c2:	47b2                	lw	a5,12(sp)
1c0095c4:	4981                	li	s3,0
1c0095c6:	0c800693          	li	a3,200
1c0095ca:	438c                	lw	a1,0(a5)
1c0095cc:	00478b13          	addi	s6,a5,4
1c0095d0:	a021                	j	1c0095d8 <pos_libc_prf+0x7c6>
1c0095d2:	0985                	addi	s3,s3,1
1c0095d4:	6ad98163          	beq	s3,a3,1c009c76 <pos_libc_prf+0xe64>
1c0095d8:	013587b3          	add	a5,a1,s3
1c0095dc:	0007c783          	lbu	a5,0(a5)
1c0095e0:	fbed                	bnez	a5,1c0095d2 <pos_libc_prf+0x7c0>
1c0095e2:	000ac563          	bltz	s5,1c0095ec <pos_libc_prf+0x7da>
1c0095e6:	013ad363          	bge	s5,s3,1c0095ec <pos_libc_prf+0x7da>
1c0095ea:	89d6                	mv	s3,s5
1c0095ec:	5a099163          	bnez	s3,1c009b8e <pos_libc_prf+0xd7c>
1c0095f0:	c65a                	sw	s6,12(sp)
1c0095f2:	b849                	j	1c008e84 <pos_libc_prf+0x72>
1c0095f4:	06e00793          	li	a5,110
1c0095f8:	36fd8c63          	beq	s11,a5,1c009970 <pos_libc_prf+0xb5e>
1c0095fc:	06f00793          	li	a5,111
1c009600:	88fd92e3          	bne	s11,a5,1c008e84 <pos_libc_prf+0x72>
1c009604:	47b2                	lw	a5,12(sp)
1c009606:	4390                	lw	a2,0(a5)
1c009608:	00478b13          	addi	s6,a5,4
1c00960c:	47f2                	lw	a5,28(sp)
1c00960e:	c7f5                	beqz	a5,1c0096fa <pos_libc_prf+0x8e8>
1c009610:	03000793          	li	a5,48
1c009614:	02f10223          	sb	a5,36(sp)
1c009618:	02510693          	addi	a3,sp,37
1c00961c:	60060b63          	beqz	a2,1c009c32 <pos_libc_prf+0xe20>
1c009620:	89b6                	mv	s3,a3
1c009622:	481d                	li	a6,7
1c009624:	00767713          	andi	a4,a2,7
1c009628:	03070713          	addi	a4,a4,48
1c00962c:	85b2                	mv	a1,a2
1c00962e:	00e98023          	sb	a4,0(s3)
1c009632:	87ce                	mv	a5,s3
1c009634:	820d                	srli	a2,a2,0x3
1c009636:	0985                	addi	s3,s3,1
1c009638:	feb866e3          	bltu	a6,a1,1c009624 <pos_libc_prf+0x812>
1c00963c:	40d98633          	sub	a2,s3,a3
1c009640:	01565c63          	bge	a2,s5,1c009658 <pos_libc_prf+0x846>
1c009644:	03000593          	li	a1,48
1c009648:	87ce                	mv	a5,s3
1c00964a:	0985                	addi	s3,s3,1
1c00964c:	40d98733          	sub	a4,s3,a3
1c009650:	feb98fa3          	sb	a1,-1(s3)
1c009654:	ff574ae3          	blt	a4,s5,1c009648 <pos_libc_prf+0x836>
1c009658:	00098023          	sb	zero,0(s3)
1c00965c:	00f6fe63          	bgeu	a3,a5,1c009678 <pos_libc_prf+0x866>
1c009660:	0006c603          	lbu	a2,0(a3)
1c009664:	0007c703          	lbu	a4,0(a5)
1c009668:	0685                	addi	a3,a3,1
1c00966a:	00c78023          	sb	a2,0(a5)
1c00966e:	fee68fa3          	sb	a4,-1(a3)
1c009672:	17fd                	addi	a5,a5,-1
1c009674:	fef6e6e3          	bltu	a3,a5,1c009660 <pos_libc_prf+0x84e>
1c009678:	1058                	addi	a4,sp,36
1c00967a:	57fd                	li	a5,-1
1c00967c:	40e989b3          	sub	s3,s3,a4
1c009680:	36fa8763          	beq	s5,a5,1c0099ee <pos_libc_prf+0xbdc>
1c009684:	0c800793          	li	a5,200
1c009688:	cd37c6e3          	blt	a5,s3,1c009354 <pos_libc_prf+0x542>
1c00968c:	ce02                	sw	zero,28(sp)
1c00968e:	bd9d                	j	1c009504 <pos_libc_prf+0x6f2>
1c009690:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c009694:	02a00793          	li	a5,42
1c009698:	00160693          	addi	a3,a2,1
1c00969c:	14f59b63          	bne	a1,a5,1c0097f2 <pos_libc_prf+0x9e0>
1c0096a0:	47b2                	lw	a5,12(sp)
1c0096a2:	00164d83          	lbu	s11,1(a2)
1c0096a6:	0609                	addi	a2,a2,2
1c0096a8:	0007aa83          	lw	s5,0(a5)
1c0096ac:	0791                	addi	a5,a5,4
1c0096ae:	c63e                	sw	a5,12(sp)
1c0096b0:	0c800793          	li	a5,200
1c0096b4:	8957dde3          	bge	a5,s5,1c008f4e <pos_libc_prf+0x13c>
1c0096b8:	5afd                	li	s5,-1
1c0096ba:	b851                	j	1c008f4e <pos_libc_prf+0x13c>
1c0096bc:	c65a                	sw	s6,12(sp)
1c0096be:	4a05                	li	s4,1
1c0096c0:	02410913          	addi	s2,sp,36
1c0096c4:	59fd                	li	s3,-1
1c0096c6:	41240ab3          	sub	s5,s0,s2
1c0096ca:	9a4a                	add	s4,s4,s2
1c0096cc:	a029                	j	1c0096d6 <pos_libc_prf+0x8c4>
1c0096ce:	012a8433          	add	s0,s5,s2
1c0096d2:	fb490963          	beq	s2,s4,1c008e84 <pos_libc_prf+0x72>
1c0096d6:	00094503          	lbu	a0,0(s2)
1c0096da:	85a6                	mv	a1,s1
1c0096dc:	0905                	addi	s2,s2,1
1c0096de:	9c82                	jalr	s9
1c0096e0:	ff3517e3          	bne	a0,s3,1c0096ce <pos_libc_prf+0x8bc>
1c0096e4:	547d                	li	s0,-1
1c0096e6:	fa6ff06f          	j	1c008e8c <pos_libc_prf+0x7a>
1c0096ea:	77e1                	lui	a5,0xffff8
1c0096ec:	8307c793          	xori	a5,a5,-2000
1c0096f0:	02f11223          	sh	a5,36(sp)
1c0096f4:	02610693          	addi	a3,sp,38
1c0096f8:	bb95                	j	1c00946c <pos_libc_prf+0x65a>
1c0096fa:	1054                	addi	a3,sp,36
1c0096fc:	b715                	j	1c009620 <pos_libc_prf+0x80e>
1c0096fe:	5c605a63          	blez	t1,1c009cd2 <pos_libc_prf+0xec0>
1c009702:	006f09b3          	add	s3,t5,t1
1c009706:	4541                	li	a0,16
1c009708:	03000e13          	li	t3,48
1c00970c:	00279713          	slli	a4,a5,0x2
1c009710:	01e7d593          	srli	a1,a5,0x1e
1c009714:	00289693          	slli	a3,a7,0x2
1c009718:	00f70333          	add	t1,a4,a5
1c00971c:	8ecd                	or	a3,a3,a1
1c00971e:	96c6                	add	a3,a3,a7
1c009720:	00e33733          	sltu	a4,t1,a4
1c009724:	9736                	add	a4,a4,a3
1c009726:	0706                	slli	a4,a4,0x1
1c009728:	01f35693          	srli	a3,t1,0x1f
1c00972c:	8f55                	or	a4,a4,a3
1c00972e:	01c75693          	srli	a3,a4,0x1c
1c009732:	03068693          	addi	a3,a3,48
1c009736:	4ea05463          	blez	a0,1c009c1e <pos_libc_prf+0xe0c>
1c00973a:	fed80fa3          	sb	a3,-1(a6)
1c00973e:	46d2                	lw	a3,20(sp)
1c009740:	157d                	addi	a0,a0,-1
1c009742:	00131793          	slli	a5,t1,0x1
1c009746:	00d778b3          	and	a7,a4,a3
1c00974a:	4d099e63          	bne	s3,a6,1c009c26 <pos_libc_prf+0xe14>
1c00974e:	4301                	li	t1,0
1c009750:	4772                	lw	a4,28(sp)
1c009752:	01576bb3          	or	s7,a4,s5
1c009756:	060b8863          	beqz	s7,1c0097c6 <pos_libc_prf+0x9b4>
1c00975a:	02e00693          	li	a3,46
1c00975e:	00d98023          	sb	a3,0(s3)
1c009762:	00198e93          	addi	t4,s3,1
1c009766:	5c0a8763          	beqz	s5,1c009d34 <pos_libc_prf+0xf22>
1c00976a:	001a8693          	addi	a3,s5,1
1c00976e:	99b6                	add	s3,s3,a3
1c009770:	8876                	mv	a6,t4
1c009772:	03000f13          	li	t5,48
1c009776:	0805                	addi	a6,a6,1
1c009778:	4a031963          	bnez	t1,1c009c2a <pos_libc_prf+0xe18>
1c00977c:	00279713          	slli	a4,a5,0x2
1c009780:	01e7d593          	srli	a1,a5,0x1e
1c009784:	00289693          	slli	a3,a7,0x2
1c009788:	00f70e33          	add	t3,a4,a5
1c00978c:	8ecd                	or	a3,a3,a1
1c00978e:	96c6                	add	a3,a3,a7
1c009790:	00ee3733          	sltu	a4,t3,a4
1c009794:	9736                	add	a4,a4,a3
1c009796:	0706                	slli	a4,a4,0x1
1c009798:	01fe5693          	srli	a3,t3,0x1f
1c00979c:	8f55                	or	a4,a4,a3
1c00979e:	01c75593          	srli	a1,a4,0x1c
1c0097a2:	03000693          	li	a3,48
1c0097a6:	00a05a63          	blez	a0,1c0097ba <pos_libc_prf+0x9a8>
1c0097aa:	03058693          	addi	a3,a1,48
1c0097ae:	45d2                	lw	a1,20(sp)
1c0097b0:	157d                	addi	a0,a0,-1
1c0097b2:	001e1793          	slli	a5,t3,0x1
1c0097b6:	00b778b3          	and	a7,a4,a1
1c0097ba:	fed80fa3          	sb	a3,-1(a6)
1c0097be:	fb099ce3          	bne	s3,a6,1c009776 <pos_libc_prf+0x964>
1c0097c2:	015e89b3          	add	s3,t4,s5
1c0097c6:	b0060ee3          	beqz	a2,1c0092e2 <pos_libc_prf+0x4d0>
1c0097ca:	03000613          	li	a2,48
1c0097ce:	fff9c783          	lbu	a5,-1(s3)
1c0097d2:	86ce                	mv	a3,s3
1c0097d4:	19fd                	addi	s3,s3,-1
1c0097d6:	fec78ce3          	beq	a5,a2,1c0097ce <pos_libc_prf+0x9bc>
1c0097da:	02e00613          	li	a2,46
1c0097de:	aec78ce3          	beq	a5,a2,1c0092d6 <pos_libc_prf+0x4c4>
1c0097e2:	89b6                	mv	s3,a3
1c0097e4:	bccd                	j	1c0092d6 <pos_libc_prf+0x4c4>
1c0097e6:	fff88fa3          	sb	t6,-1(a7)
1c0097ea:	ab1f11e3          	bne	t5,a7,1c00928c <pos_libc_prf+0x47a>
1c0097ee:	99d6                	add	s3,s3,s5
1c0097f0:	b4cd                	j	1c0092d2 <pos_libc_prf+0x4c0>
1c0097f2:	fd058713          	addi	a4,a1,-48
1c0097f6:	47a5                	li	a5,9
1c0097f8:	8dae                	mv	s11,a1
1c0097fa:	4a81                	li	s5,0
1c0097fc:	4525                	li	a0,9
1c0097fe:	00e7f463          	bgeu	a5,a4,1c009806 <pos_libc_prf+0x9f4>
1c009802:	a199                	j	1c009c48 <pos_libc_prf+0xe36>
1c009804:	0685                	addi	a3,a3,1
1c009806:	002a9793          	slli	a5,s5,0x2
1c00980a:	97d6                	add	a5,a5,s5
1c00980c:	0786                	slli	a5,a5,0x1
1c00980e:	97ee                	add	a5,a5,s11
1c009810:	0006cd83          	lbu	s11,0(a3)
1c009814:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c009818:	8732                	mv	a4,a2
1c00981a:	fd0d8793          	addi	a5,s11,-48
1c00981e:	8636                	mv	a2,a3
1c009820:	fef572e3          	bgeu	a0,a5,1c009804 <pos_libc_prf+0x9f2>
1c009824:	00270613          	addi	a2,a4,2
1c009828:	b561                	j	1c0096b0 <pos_libc_prf+0x89e>
1c00982a:	47b2                	lw	a5,12(sp)
1c00982c:	0007a303          	lw	t1,0(a5)
1c009830:	00478b13          	addi	s6,a5,4
1c009834:	2e034263          	bltz	t1,1c009b18 <pos_libc_prf+0xd06>
1c009838:	47a2                	lw	a5,8(sp)
1c00983a:	861a                	mv	a2,t1
1c00983c:	3c078663          	beqz	a5,1c009c08 <pos_libc_prf+0xdf6>
1c009840:	02b00793          	li	a5,43
1c009844:	02f10223          	sb	a5,36(sp)
1c009848:	02510693          	addi	a3,sp,37
1c00984c:	89b6                	mv	s3,a3
1c00984e:	4529                	li	a0,10
1c009850:	48a5                	li	a7,9
1c009852:	02a67733          	remu	a4,a2,a0
1c009856:	87ce                	mv	a5,s3
1c009858:	0985                	addi	s3,s3,1
1c00985a:	85b2                	mv	a1,a2
1c00985c:	03070713          	addi	a4,a4,48
1c009860:	fee98fa3          	sb	a4,-1(s3)
1c009864:	02a65633          	divu	a2,a2,a0
1c009868:	feb8e5e3          	bltu	a7,a1,1c009852 <pos_libc_prf+0xa40>
1c00986c:	40d98633          	sub	a2,s3,a3
1c009870:	01565c63          	bge	a2,s5,1c009888 <pos_libc_prf+0xa76>
1c009874:	03000593          	li	a1,48
1c009878:	87ce                	mv	a5,s3
1c00987a:	0985                	addi	s3,s3,1
1c00987c:	40d98733          	sub	a4,s3,a3
1c009880:	feb98fa3          	sb	a1,-1(s3)
1c009884:	ff574ae3          	blt	a4,s5,1c009878 <pos_libc_prf+0xa66>
1c009888:	00098023          	sb	zero,0(s3)
1c00988c:	00f6fe63          	bgeu	a3,a5,1c0098a8 <pos_libc_prf+0xa96>
1c009890:	0006c603          	lbu	a2,0(a3)
1c009894:	0007c703          	lbu	a4,0(a5)
1c009898:	0685                	addi	a3,a3,1
1c00989a:	00c78023          	sb	a2,0(a5)
1c00989e:	fee68fa3          	sb	a4,-1(a3)
1c0098a2:	17fd                	addi	a5,a5,-1
1c0098a4:	fef6e6e3          	bltu	a3,a5,1c009890 <pos_libc_prf+0xa7e>
1c0098a8:	4712                	lw	a4,4(sp)
1c0098aa:	47a2                	lw	a5,8(sp)
1c0098ac:	8fd9                	or	a5,a5,a4
1c0098ae:	ce3e                	sw	a5,28(sp)
1c0098b0:	1058                	addi	a4,sp,36
1c0098b2:	40e989b3          	sub	s3,s3,a4
1c0098b6:	c40790e3          	bnez	a5,1c0094f6 <pos_libc_prf+0x6e4>
1c0098ba:	01f35793          	srli	a5,t1,0x1f
1c0098be:	ce3e                	sw	a5,28(sp)
1c0098c0:	b91d                	j	1c0094f6 <pos_libc_prf+0x6e4>
1c0098c2:	47b2                	lw	a5,12(sp)
1c0098c4:	02610613          	addi	a2,sp,38
1c0098c8:	4ea5                	li	t4,9
1c0098ca:	438c                	lw	a1,0(a5)
1c0098cc:	00478b13          	addi	s6,a5,4
1c0098d0:	77e1                	lui	a5,0xffff8
1c0098d2:	8307c793          	xori	a5,a5,-2000
1c0098d6:	02f11223          	sh	a5,36(sp)
1c0098da:	4e3d                	li	t3,15
1c0098dc:	87b2                	mv	a5,a2
1c0098de:	a039                	j	1c0098ec <pos_libc_prf+0xada>
1c0098e0:	ff168fa3          	sb	a7,-1(a3)
1c0098e4:	02be7663          	bgeu	t3,a1,1c009910 <pos_libc_prf+0xafe>
1c0098e8:	85c2                	mv	a1,a6
1c0098ea:	87b6                	mv	a5,a3
1c0098ec:	00f5f513          	andi	a0,a1,15
1c0098f0:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c0098f4:	05750893          	addi	a7,a0,87
1c0098f8:	03050713          	addi	a4,a0,48
1c0098fc:	0045d813          	srli	a6,a1,0x4
1c009900:	feaee0e3          	bltu	t4,a0,1c0098e0 <pos_libc_prf+0xace>
1c009904:	00e78023          	sb	a4,0(a5)
1c009908:	00178693          	addi	a3,a5,1
1c00990c:	fcbe6ee3          	bltu	t3,a1,1c0098e8 <pos_libc_prf+0xad6>
1c009910:	40c689b3          	sub	s3,a3,a2
1c009914:	459d                	li	a1,7
1c009916:	0135cc63          	blt	a1,s3,1c00992e <pos_libc_prf+0xb1c>
1c00991a:	03000513          	li	a0,48
1c00991e:	87b6                	mv	a5,a3
1c009920:	0685                	addi	a3,a3,1
1c009922:	40c689b3          	sub	s3,a3,a2
1c009926:	fea68fa3          	sb	a0,-1(a3)
1c00992a:	ff35dae3          	bge	a1,s3,1c00991e <pos_libc_prf+0xb0c>
1c00992e:	00068023          	sb	zero,0(a3)
1c009932:	86b2                	mv	a3,a2
1c009934:	00f67e63          	bgeu	a2,a5,1c009950 <pos_libc_prf+0xb3e>
1c009938:	0006c603          	lbu	a2,0(a3)
1c00993c:	0007c703          	lbu	a4,0(a5)
1c009940:	0685                	addi	a3,a3,1
1c009942:	00c78023          	sb	a2,0(a5)
1c009946:	fee68fa3          	sb	a4,-1(a3)
1c00994a:	17fd                	addi	a5,a5,-1
1c00994c:	fef6e6e3          	bltu	a3,a5,1c009938 <pos_libc_prf+0xb26>
1c009950:	57fd                	li	a5,-1
1c009952:	0989                	addi	s3,s3,2
1c009954:	22fa8663          	beq	s5,a5,1c009b80 <pos_libc_prf+0xd6e>
1c009958:	0c800793          	li	a5,200
1c00995c:	9f37cce3          	blt	a5,s3,1c009354 <pos_libc_prf+0x542>
1c009960:	02000913          	li	s2,32
1c009964:	0b49d863          	bge	s3,s4,1c009a14 <pos_libc_prf+0xc02>
1c009968:	00198613          	addi	a2,s3,1
1c00996c:	ce02                	sw	zero,28(sp)
1c00996e:	bec1                	j	1c00953e <pos_libc_prf+0x72c>
1c009970:	4732                	lw	a4,12(sp)
1c009972:	431c                	lw	a5,0(a4)
1c009974:	0711                	addi	a4,a4,4
1c009976:	c63a                	sw	a4,12(sp)
1c009978:	c380                	sw	s0,0(a5)
1c00997a:	d0aff06f          	j	1c008e84 <pos_libc_prf+0x72>
1c00997e:	47b2                	lw	a5,12(sp)
1c009980:	4529                	li	a0,10
1c009982:	48a5                	li	a7,9
1c009984:	4390                	lw	a2,0(a5)
1c009986:	00478b13          	addi	s6,a5,4
1c00998a:	105c                	addi	a5,sp,36
1c00998c:	02a67733          	remu	a4,a2,a0
1c009990:	86be                	mv	a3,a5
1c009992:	0785                	addi	a5,a5,1
1c009994:	85b2                	mv	a1,a2
1c009996:	03070713          	addi	a4,a4,48
1c00999a:	fee78fa3          	sb	a4,-1(a5)
1c00999e:	02a65633          	divu	a2,a2,a0
1c0099a2:	feb8e5e3          	bltu	a7,a1,1c00998c <pos_libc_prf+0xb7a>
1c0099a6:	1058                	addi	a4,sp,36
1c0099a8:	40e789b3          	sub	s3,a5,a4
1c0099ac:	0159dd63          	bge	s3,s5,1c0099c6 <pos_libc_prf+0xbb4>
1c0099b0:	03000613          	li	a2,48
1c0099b4:	86be                	mv	a3,a5
1c0099b6:	1058                	addi	a4,sp,36
1c0099b8:	0785                	addi	a5,a5,1
1c0099ba:	40e789b3          	sub	s3,a5,a4
1c0099be:	fec78fa3          	sb	a2,-1(a5)
1c0099c2:	ff59c9e3          	blt	s3,s5,1c0099b4 <pos_libc_prf+0xba2>
1c0099c6:	00078023          	sb	zero,0(a5)
1c0099ca:	105c                	addi	a5,sp,36
1c0099cc:	00d7fe63          	bgeu	a5,a3,1c0099e8 <pos_libc_prf+0xbd6>
1c0099d0:	0007c603          	lbu	a2,0(a5)
1c0099d4:	0006c703          	lbu	a4,0(a3)
1c0099d8:	0785                	addi	a5,a5,1
1c0099da:	00c68023          	sb	a2,0(a3)
1c0099de:	fee78fa3          	sb	a4,-1(a5)
1c0099e2:	16fd                	addi	a3,a3,-1
1c0099e4:	fed7e6e3          	bltu	a5,a3,1c0099d0 <pos_libc_prf+0xbbe>
1c0099e8:	57fd                	li	a5,-1
1c0099ea:	c8fa9de3          	bne	s5,a5,1c009684 <pos_libc_prf+0x872>
1c0099ee:	0c800793          	li	a5,200
1c0099f2:	9737c1e3          	blt	a5,s3,1c009354 <pos_libc_prf+0x542>
1c0099f6:	ce02                	sw	zero,28(sp)
1c0099f8:	be01                	j	1c009508 <pos_libc_prf+0x6f6>
1c0099fa:	85a6                	mv	a1,s1
1c0099fc:	02500513          	li	a0,37
1c009a00:	9c82                	jalr	s9
1c009a02:	57fd                	li	a5,-1
1c009a04:	c6f51f63          	bne	a0,a5,1c008e82 <pos_libc_prf+0x70>
1c009a08:	547d                	li	s0,-1
1c009a0a:	c82ff06f          	j	1c008e8c <pos_libc_prf+0x7a>
1c009a0e:	4401                	li	s0,0
1c009a10:	c7cff06f          	j	1c008e8c <pos_libc_prf+0x7a>
1c009a14:	8a4e                	mv	s4,s3
1c009a16:	c65a                	sw	s6,12(sp)
1c009a18:	b165                	j	1c0096c0 <pos_libc_prf+0x8ae>
1c009a1a:	0c800793          	li	a5,200
1c009a1e:	9337cbe3          	blt	a5,s3,1c009354 <pos_libc_prf+0x542>
1c009a22:	4785                	li	a5,1
1c009a24:	ce3e                	sw	a5,28(sp)
1c009a26:	b4cd                	j	1c009508 <pos_libc_prf+0x6f6>
1c009a28:	104c                	addi	a1,sp,36
1c009a2a:	413a09b3          	sub	s3,s4,s3
1c009a2e:	01358533          	add	a0,a1,s3
1c009a32:	a22ff0ef          	jal	ra,1c008c54 <memmove>
1c009a36:	02000793          	li	a5,32
1c009a3a:	24f90863          	beq	s2,a5,1c009c8a <pos_libc_prf+0xe78>
1c009a3e:	47f2                	lw	a5,28(sp)
1c009a40:	99be                	add	s3,s3,a5
1c009a42:	47f2                	lw	a5,28(sp)
1c009a44:	b737d7e3          	bge	a5,s3,1c0095b2 <pos_libc_prf+0x7a0>
1c009a48:	4772                	lw	a4,28(sp)
1c009a4a:	4789                	li	a5,2
1c009a4c:	40e988b3          	sub	a7,s3,a4
1c009a50:	fff88693          	addi	a3,a7,-1
1c009a54:	06d7f063          	bgeu	a5,a3,1c009ab4 <pos_libc_prf+0xca2>
1c009a58:	47e2                	lw	a5,24(sp)
1c009a5a:	00891613          	slli	a2,s2,0x8
1c009a5e:	ffc8f593          	andi	a1,a7,-4
1c009a62:	00f976b3          	and	a3,s2,a5
1c009a66:	8ed1                	or	a3,a3,a2
1c009a68:	01091793          	slli	a5,s2,0x10
1c009a6c:	8edd                	or	a3,a3,a5
1c009a6e:	01891613          	slli	a2,s2,0x18
1c009a72:	8e55                	or	a2,a2,a3
1c009a74:	105c                	addi	a5,sp,36
1c009a76:	00865813          	srli	a6,a2,0x8
1c009a7a:	01065513          	srli	a0,a2,0x10
1c009a7e:	97ba                	add	a5,a5,a4
1c009a80:	95be                	add	a1,a1,a5
1c009a82:	0306f693          	andi	a3,a3,48
1c009a86:	8261                	srli	a2,a2,0x18
1c009a88:	0ff87813          	andi	a6,a6,255
1c009a8c:	0ff57513          	andi	a0,a0,255
1c009a90:	00d78023          	sb	a3,0(a5)
1c009a94:	010780a3          	sb	a6,1(a5)
1c009a98:	00a78123          	sb	a0,2(a5)
1c009a9c:	00c781a3          	sb	a2,3(a5)
1c009aa0:	0791                	addi	a5,a5,4
1c009aa2:	fef597e3          	bne	a1,a5,1c009a90 <pos_libc_prf+0xc7e>
1c009aa6:	4772                	lw	a4,28(sp)
1c009aa8:	ffc8f793          	andi	a5,a7,-4
1c009aac:	973e                	add	a4,a4,a5
1c009aae:	ce3a                	sw	a4,28(sp)
1c009ab0:	b11781e3          	beq	a5,a7,1c0095b2 <pos_libc_prf+0x7a0>
1c009ab4:	4772                	lw	a4,28(sp)
1c009ab6:	199c                	addi	a5,sp,240
1c009ab8:	97ba                	add	a5,a5,a4
1c009aba:	f3278a23          	sb	s2,-204(a5)
1c009abe:	00170793          	addi	a5,a4,1
1c009ac2:	af37d8e3          	bge	a5,s3,1c0095b2 <pos_libc_prf+0x7a0>
1c009ac6:	1994                	addi	a3,sp,240
1c009ac8:	97b6                	add	a5,a5,a3
1c009aca:	f3278a23          	sb	s2,-204(a5)
1c009ace:	00270b93          	addi	s7,a4,2
1c009ad2:	af3bd0e3          	bge	s7,s3,1c0095b2 <pos_libc_prf+0x7a0>
1c009ad6:	9bb6                	add	s7,s7,a3
1c009ad8:	f32b8a23          	sb	s2,-204(s7)
1c009adc:	c65a                	sw	s6,12(sp)
1c009ade:	bcd9                	j	1c0095b4 <pos_libc_prf+0x7a2>
1c009ae0:	01b98023          	sb	s11,0(s3)
1c009ae4:	02b00613          	li	a2,43
1c009ae8:	00035663          	bgez	t1,1c009af4 <pos_libc_prf+0xce2>
1c009aec:	40600333          	neg	t1,t1
1c009af0:	02d00613          	li	a2,45
1c009af4:	47a9                	li	a5,10
1c009af6:	02f346b3          	div	a3,t1,a5
1c009afa:	00c980a3          	sb	a2,1(s3)
1c009afe:	0991                	addi	s3,s3,4
1c009b00:	02f367b3          	rem	a5,t1,a5
1c009b04:	03068693          	addi	a3,a3,48
1c009b08:	fed98f23          	sb	a3,-2(s3)
1c009b0c:	03078793          	addi	a5,a5,48
1c009b10:	fef98fa3          	sb	a5,-1(s3)
1c009b14:	fceff06f          	j	1c0092e2 <pos_libc_prf+0x4d0>
1c009b18:	02d00793          	li	a5,45
1c009b1c:	02f10223          	sb	a5,36(sp)
1c009b20:	800007b7          	lui	a5,0x80000
1c009b24:	14f30e63          	beq	t1,a5,1c009c80 <pos_libc_prf+0xe6e>
1c009b28:	40600633          	neg	a2,t1
1c009b2c:	02510693          	addi	a3,sp,37
1c009b30:	bb31                	j	1c00984c <pos_libc_prf+0xa3a>
1c009b32:	4722                	lw	a4,8(sp)
1c009b34:	10070d63          	beqz	a4,1c009c4e <pos_libc_prf+0xe3c>
1c009b38:	02b00693          	li	a3,43
1c009b3c:	02d10223          	sb	a3,36(sp)
1c009b40:	02510f13          	addi	t5,sp,37
1c009b44:	4301                	li	t1,0
1c009b46:	4801                	li	a6,0
1c009b48:	d9cff06f          	j	1c0090e4 <pos_libc_prf+0x2d2>
1c009b4c:	02414783          	lbu	a5,36(sp)
1c009b50:	98078ce3          	beqz	a5,1c0094e8 <pos_libc_prf+0x6d6>
1c009b54:	1054                	addi	a3,sp,36
1c009b56:	45e5                	li	a1,25
1c009b58:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c009b5c:	f9f78793          	addi	a5,a5,-97
1c009b60:	0ff7f793          	andi	a5,a5,255
1c009b64:	00f5e963          	bltu	a1,a5,1c009b76 <pos_libc_prf+0xd64>
1c009b68:	0016c783          	lbu	a5,1(a3)
1c009b6c:	00e68023          	sb	a4,0(a3)
1c009b70:	0685                	addi	a3,a3,1
1c009b72:	f3fd                	bnez	a5,1c009b58 <pos_libc_prf+0xd46>
1c009b74:	ba95                	j	1c0094e8 <pos_libc_prf+0x6d6>
1c009b76:	0016c783          	lbu	a5,1(a3)
1c009b7a:	0685                	addi	a3,a3,1
1c009b7c:	fff1                	bnez	a5,1c009b58 <pos_libc_prf+0xd46>
1c009b7e:	b2ad                	j	1c0094e8 <pos_libc_prf+0x6d6>
1c009b80:	0c800793          	li	a5,200
1c009b84:	df37d0e3          	bge	a5,s3,1c009964 <pos_libc_prf+0xb52>
1c009b88:	547d                	li	s0,-1
1c009b8a:	b02ff06f          	j	1c008e8c <pos_libc_prf+0x7a>
1c009b8e:	864e                	mv	a2,s3
1c009b90:	1048                	addi	a0,sp,36
1c009b92:	fedfe0ef          	jal	ra,1c008b7e <memcpy>
1c009b96:	b3f9                	j	1c009964 <pos_libc_prf+0xb52>
1c009b98:	47f2                	lw	a5,28(sp)
1c009b9a:	4601                	li	a2,0
1c009b9c:	e399                	bnez	a5,1c009ba2 <pos_libc_prf+0xd90>
1c009b9e:	01503633          	snez	a2,s5
1c009ba2:	57f5                	li	a5,-3
1c009ba4:	001a8813          	addi	a6,s5,1
1c009ba8:	00f34463          	blt	t1,a5,1c009bb0 <pos_libc_prf+0xd9e>
1c009bac:	04685163          	bge	a6,t1,1c009bee <pos_libc_prf+0xddc>
1c009bb0:	47c1                	li	a5,16
1c009bb2:	0107d363          	bge	a5,a6,1c009bb8 <pos_libc_prf+0xda6>
1c009bb6:	4841                	li	a6,16
1c009bb8:	06700793          	li	a5,103
1c009bbc:	187d                	addi	a6,a6,-1
1c009bbe:	02fd8363          	beq	s11,a5,1c009be4 <pos_libc_prf+0xdd2>
1c009bc2:	04500d93          	li	s11,69
1c009bc6:	d70ff06f          	j	1c009136 <pos_libc_prf+0x324>
1c009bca:	4a99                	li	s5,6
1c009bcc:	d4fd9563          	bne	s11,a5,1c009116 <pos_libc_prf+0x304>
1c009bd0:	4772                	lw	a4,28(sp)
1c009bd2:	4605                	li	a2,1
1c009bd4:	57f5                	li	a5,-3
1c009bd6:	8e19                	sub	a2,a2,a4
1c009bd8:	00f34563          	blt	t1,a5,1c009be2 <pos_libc_prf+0xdd0>
1c009bdc:	479d                	li	a5,7
1c009bde:	0067d863          	bge	a5,t1,1c009bee <pos_libc_prf+0xddc>
1c009be2:	4819                	li	a6,6
1c009be4:	06500d93          	li	s11,101
1c009be8:	d4eff06f          	j	1c009136 <pos_libc_prf+0x324>
1c009bec:	4601                	li	a2,0
1c009bee:	006a8833          	add	a6,s5,t1
1c009bf2:	0b005b63          	blez	a6,1c009ca8 <pos_libc_prf+0xe96>
1c009bf6:	47c1                	li	a5,16
1c009bf8:	0107d363          	bge	a5,a6,1c009bfe <pos_libc_prf+0xdec>
1c009bfc:	4841                	li	a6,16
1c009bfe:	187d                	addi	a6,a6,-1
1c009c00:	06600d93          	li	s11,102
1c009c04:	d32ff06f          	j	1c009136 <pos_libc_prf+0x324>
1c009c08:	4792                	lw	a5,4(sp)
1c009c0a:	1054                	addi	a3,sp,36
1c009c0c:	c40780e3          	beqz	a5,1c00984c <pos_libc_prf+0xa3a>
1c009c10:	02000793          	li	a5,32
1c009c14:	02f10223          	sb	a5,36(sp)
1c009c18:	02510693          	addi	a3,sp,37
1c009c1c:	b905                	j	1c00984c <pos_libc_prf+0xa3a>
1c009c1e:	ffc80fa3          	sb	t3,-1(a6)
1c009c22:	b30986e3          	beq	s3,a6,1c00974e <pos_libc_prf+0x93c>
1c009c26:	0805                	addi	a6,a6,1
1c009c28:	b4d5                	j	1c00970c <pos_libc_prf+0x8fa>
1c009c2a:	ffe80fa3          	sb	t5,-1(a6)
1c009c2e:	0305                	addi	t1,t1,1
1c009c30:	b679                	j	1c0097be <pos_libc_prf+0x9ac>
1c009c32:	020102a3          	sb	zero,37(sp)
1c009c36:	57fd                	li	a5,-1
1c009c38:	0cfa8263          	beq	s5,a5,1c009cfc <pos_libc_prf+0xeea>
1c009c3c:	4785                	li	a5,1
1c009c3e:	0b47c063          	blt	a5,s4,1c009cde <pos_libc_prf+0xecc>
1c009c42:	4a72                	lw	s4,28(sp)
1c009c44:	c65a                	sw	s6,12(sp)
1c009c46:	bcad                	j	1c0096c0 <pos_libc_prf+0x8ae>
1c009c48:	8636                	mv	a2,a3
1c009c4a:	b04ff06f          	j	1c008f4e <pos_libc_prf+0x13c>
1c009c4e:	4712                	lw	a4,4(sp)
1c009c50:	c77d                	beqz	a4,1c009d3e <pos_libc_prf+0xf2c>
1c009c52:	02000693          	li	a3,32
1c009c56:	02d10223          	sb	a3,36(sp)
1c009c5a:	4301                	li	t1,0
1c009c5c:	4801                	li	a6,0
1c009c5e:	02510f13          	addi	t5,sp,37
1c009c62:	c82ff06f          	j	1c0090e4 <pos_libc_prf+0x2d2>
1c009c66:	02d00693          	li	a3,45
1c009c6a:	02d10223          	sb	a3,36(sp)
1c009c6e:	02510f13          	addi	t5,sp,37
1c009c72:	b9cff06f          	j	1c00900e <pos_libc_prf+0x1fc>
1c009c76:	0c800613          	li	a2,200
1c009c7a:	960ad6e3          	bgez	s5,1c0095e6 <pos_libc_prf+0x7d4>
1c009c7e:	bf09                	j	1c009b90 <pos_libc_prf+0xd7e>
1c009c80:	80000637          	lui	a2,0x80000
1c009c84:	02510693          	addi	a3,sp,37
1c009c88:	b6d1                	j	1c00984c <pos_libc_prf+0xa3a>
1c009c8a:	ce02                	sw	zero,28(sp)
1c009c8c:	bb5d                	j	1c009a42 <pos_libc_prf+0xc30>
1c009c8e:	4712                	lw	a4,4(sp)
1c009c90:	02410f13          	addi	t5,sp,36
1c009c94:	b6070d63          	beqz	a4,1c00900e <pos_libc_prf+0x1fc>
1c009c98:	02000693          	li	a3,32
1c009c9c:	02d10223          	sb	a3,36(sp)
1c009ca0:	02510f13          	addi	t5,sp,37
1c009ca4:	b6aff06f          	j	1c00900e <pos_libc_prf+0x1fc>
1c009ca8:	06600d93          	li	s11,102
1c009cac:	4781                	li	a5,0
1c009cae:	080006b7          	lui	a3,0x8000
1c009cb2:	ce8ff06f          	j	1c00919a <pos_libc_prf+0x388>
1c009cb6:	06b6e363          	bltu	a3,a1,1c009d1c <pos_libc_prf+0xf0a>
1c009cba:	04e00693          	li	a3,78
1c009cbe:	04100613          	li	a2,65
1c009cc2:	00d78023          	sb	a3,0(a5)
1c009cc6:	00c780a3          	sb	a2,1(a5)
1c009cca:	00d78123          	sb	a3,2(a5)
1c009cce:	f44ff06f          	j	1c009412 <pos_libc_prf+0x600>
1c009cd2:	03000693          	li	a3,48
1c009cd6:	00df0023          	sb	a3,0(t5)
1c009cda:	4541                	li	a0,16
1c009cdc:	bc95                	j	1c009750 <pos_libc_prf+0x93e>
1c009cde:	4982                	lw	s3,0(sp)
1c009ce0:	860992e3          	bnez	s3,1c009544 <pos_libc_prf+0x732>
1c009ce4:	104c                	addi	a1,sp,36
1c009ce6:	fffa0993          	addi	s3,s4,-1
1c009cea:	4609                	li	a2,2
1c009cec:	01358533          	add	a0,a1,s3
1c009cf0:	f65fe0ef          	jal	ra,1c008c54 <memmove>
1c009cf4:	02000913          	li	s2,32
1c009cf8:	ce02                	sw	zero,28(sp)
1c009cfa:	b3b9                	j	1c009a48 <pos_libc_prf+0xc36>
1c009cfc:	49f2                	lw	s3,28(sp)
1c009cfe:	b19d                	j	1c009964 <pos_libc_prf+0xb52>
1c009d00:	06900693          	li	a3,105
1c009d04:	00d78023          	sb	a3,0(a5)
1c009d08:	06e00693          	li	a3,110
1c009d0c:	00d780a3          	sb	a3,1(a5)
1c009d10:	06600693          	li	a3,102
1c009d14:	00d78123          	sb	a3,2(a5)
1c009d18:	efaff06f          	j	1c009412 <pos_libc_prf+0x600>
1c009d1c:	06e00693          	li	a3,110
1c009d20:	06100613          	li	a2,97
1c009d24:	00d78023          	sb	a3,0(a5)
1c009d28:	00c780a3          	sb	a2,1(a5)
1c009d2c:	00d78123          	sb	a3,2(a5)
1c009d30:	ee2ff06f          	j	1c009412 <pos_libc_prf+0x600>
1c009d34:	89f6                	mv	s3,t4
1c009d36:	a8061ae3          	bnez	a2,1c0097ca <pos_libc_prf+0x9b8>
1c009d3a:	da8ff06f          	j	1c0092e2 <pos_libc_prf+0x4d0>
1c009d3e:	4301                	li	t1,0
1c009d40:	4801                	li	a6,0
1c009d42:	02410f13          	addi	t5,sp,36
1c009d46:	b9eff06f          	j	1c0090e4 <pos_libc_prf+0x2d2>

1c009d4a <pos_init_start>:
1c009d4a:	1141                	addi	sp,sp,-16
1c009d4c:	c422                	sw	s0,8(sp)
1c009d4e:	1c000437          	lui	s0,0x1c000
1c009d52:	c606                	sw	ra,12(sp)
1c009d54:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009d58:	d8cfe0ef          	jal	ra,1c0082e4 <pos_soc_init>
1c009d5c:	2a75                	jal	1c009f18 <pos_irq_init>
1c009d5e:	22e5                	jal	1c009f46 <pos_soc_event_init>
1c009d60:	2225                	jal	1c009e88 <pos_allocs_init>
1c009d62:	405c                	lw	a5,4(s0)
1c009d64:	c791                	beqz	a5,1c009d70 <pos_init_start+0x26>
1c009d66:	0411                	addi	s0,s0,4
1c009d68:	0411                	addi	s0,s0,4
1c009d6a:	9782                	jalr	a5
1c009d6c:	401c                	lw	a5,0(s0)
1c009d6e:	ffed                	bnez	a5,1c009d68 <pos_init_start+0x1e>
1c009d70:	86cff0ef          	jal	ra,1c008ddc <pos_io_start>
1c009d74:	300467f3          	csrrsi	a5,mstatus,8
1c009d78:	40b2                	lw	ra,12(sp)
1c009d7a:	4422                	lw	s0,8(sp)
1c009d7c:	0141                	addi	sp,sp,16
1c009d7e:	8082                	ret

1c009d80 <pos_init_stop>:
1c009d80:	1141                	addi	sp,sp,-16
1c009d82:	c422                	sw	s0,8(sp)
1c009d84:	1c000437          	lui	s0,0x1c000
1c009d88:	c606                	sw	ra,12(sp)
1c009d8a:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009d8e:	852ff0ef          	jal	ra,1c008de0 <pos_io_stop>
1c009d92:	405c                	lw	a5,4(s0)
1c009d94:	c791                	beqz	a5,1c009da0 <pos_init_stop+0x20>
1c009d96:	0411                	addi	s0,s0,4
1c009d98:	0411                	addi	s0,s0,4
1c009d9a:	9782                	jalr	a5
1c009d9c:	401c                	lw	a5,0(s0)
1c009d9e:	ffed                	bnez	a5,1c009d98 <pos_init_stop+0x18>
1c009da0:	40b2                	lw	ra,12(sp)
1c009da2:	4422                	lw	s0,8(sp)
1c009da4:	0141                	addi	sp,sp,16
1c009da6:	8082                	ret

1c009da8 <pos_alloc_init>:
1c009da8:	00758793          	addi	a5,a1,7
1c009dac:	9be1                	andi	a5,a5,-8
1c009dae:	40b785b3          	sub	a1,a5,a1
1c009db2:	c11c                	sw	a5,0(a0)
1c009db4:	40b605b3          	sub	a1,a2,a1
1c009db8:	00b05663          	blez	a1,1c009dc4 <pos_alloc_init+0x1c>
1c009dbc:	99e1                	andi	a1,a1,-8
1c009dbe:	c38c                	sw	a1,0(a5)
1c009dc0:	0007a223          	sw	zero,4(a5)
1c009dc4:	8082                	ret

1c009dc6 <pos_alloc>:
1c009dc6:	411c                	lw	a5,0(a0)
1c009dc8:	00758713          	addi	a4,a1,7
1c009dcc:	862a                	mv	a2,a0
1c009dce:	ff877593          	andi	a1,a4,-8
1c009dd2:	4681                	li	a3,0
1c009dd4:	e789                	bnez	a5,1c009dde <pos_alloc+0x18>
1c009dd6:	a091                	j	1c009e1a <pos_alloc+0x54>
1c009dd8:	86be                	mv	a3,a5
1c009dda:	c505                	beqz	a0,1c009e02 <pos_alloc+0x3c>
1c009ddc:	87aa                	mv	a5,a0
1c009dde:	4398                	lw	a4,0(a5)
1c009de0:	43c8                	lw	a0,4(a5)
1c009de2:	feb74be3          	blt	a4,a1,1c009dd8 <pos_alloc+0x12>
1c009de6:	00b70f63          	beq	a4,a1,1c009e04 <pos_alloc+0x3e>
1c009dea:	00b78833          	add	a6,a5,a1
1c009dee:	8f0d                	sub	a4,a4,a1
1c009df0:	00e82023          	sw	a4,0(a6)
1c009df4:	00a82223          	sw	a0,4(a6)
1c009df8:	ca91                	beqz	a3,1c009e0c <pos_alloc+0x46>
1c009dfa:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c009dfe:	853e                	mv	a0,a5
1c009e00:	8082                	ret
1c009e02:	8082                	ret
1c009e04:	ca81                	beqz	a3,1c009e14 <pos_alloc+0x4e>
1c009e06:	c2c8                	sw	a0,4(a3)
1c009e08:	853e                	mv	a0,a5
1c009e0a:	8082                	ret
1c009e0c:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c009e10:	853e                	mv	a0,a5
1c009e12:	8082                	ret
1c009e14:	c208                	sw	a0,0(a2)
1c009e16:	853e                	mv	a0,a5
1c009e18:	8082                	ret
1c009e1a:	4501                	li	a0,0
1c009e1c:	8082                	ret

1c009e1e <pos_free>:
1c009e1e:	411c                	lw	a5,0(a0)
1c009e20:	061d                	addi	a2,a2,7
1c009e22:	9a61                	andi	a2,a2,-8
1c009e24:	c7a1                	beqz	a5,1c009e6c <pos_free+0x4e>
1c009e26:	00b7e563          	bltu	a5,a1,1c009e30 <pos_free+0x12>
1c009e2a:	a089                	j	1c009e6c <pos_free+0x4e>
1c009e2c:	00b7f563          	bgeu	a5,a1,1c009e36 <pos_free+0x18>
1c009e30:	873e                	mv	a4,a5
1c009e32:	43dc                	lw	a5,4(a5)
1c009e34:	ffe5                	bnez	a5,1c009e2c <pos_free+0xe>
1c009e36:	00c586b3          	add	a3,a1,a2
1c009e3a:	00d78b63          	beq	a5,a3,1c009e50 <pos_free+0x32>
1c009e3e:	c190                	sw	a2,0(a1)
1c009e40:	4314                	lw	a3,0(a4)
1c009e42:	c1dc                	sw	a5,4(a1)
1c009e44:	00d70533          	add	a0,a4,a3
1c009e48:	00a58e63          	beq	a1,a0,1c009e64 <pos_free+0x46>
1c009e4c:	c34c                	sw	a1,4(a4)
1c009e4e:	8082                	ret
1c009e50:	4394                	lw	a3,0(a5)
1c009e52:	43dc                	lw	a5,4(a5)
1c009e54:	9636                	add	a2,a2,a3
1c009e56:	c190                	sw	a2,0(a1)
1c009e58:	4314                	lw	a3,0(a4)
1c009e5a:	c1dc                	sw	a5,4(a1)
1c009e5c:	00d70533          	add	a0,a4,a3
1c009e60:	fea596e3          	bne	a1,a0,1c009e4c <pos_free+0x2e>
1c009e64:	9636                	add	a2,a2,a3
1c009e66:	c310                	sw	a2,0(a4)
1c009e68:	c35c                	sw	a5,4(a4)
1c009e6a:	8082                	ret
1c009e6c:	00c58733          	add	a4,a1,a2
1c009e70:	00e78663          	beq	a5,a4,1c009e7c <pos_free+0x5e>
1c009e74:	c1dc                	sw	a5,4(a1)
1c009e76:	c190                	sw	a2,0(a1)
1c009e78:	c10c                	sw	a1,0(a0)
1c009e7a:	8082                	ret
1c009e7c:	4398                	lw	a4,0(a5)
1c009e7e:	43dc                	lw	a5,4(a5)
1c009e80:	963a                	add	a2,a2,a4
1c009e82:	c1dc                	sw	a5,4(a1)
1c009e84:	c190                	sw	a2,0(a1)
1c009e86:	bfcd                	j	1c009e78 <pos_free+0x5a>

1c009e88 <pos_allocs_init>:
1c009e88:	1c0065b7          	lui	a1,0x1c006
1c009e8c:	1141                	addi	sp,sp,-16
1c009e8e:	1d458613          	addi	a2,a1,468 # 1c0061d4 <__l2_priv0_end>
1c009e92:	1c0087b7          	lui	a5,0x1c008
1c009e96:	c606                	sw	ra,12(sp)
1c009e98:	1d458593          	addi	a1,a1,468
1c009e9c:	40c78633          	sub	a2,a5,a2
1c009ea0:	04f5d863          	bge	a1,a5,1c009ef0 <pos_allocs_init+0x68>
1c009ea4:	1c006537          	lui	a0,0x1c006
1c009ea8:	1c850513          	addi	a0,a0,456 # 1c0061c8 <pos_alloc_l2>
1c009eac:	3df5                	jal	1c009da8 <pos_alloc_init>
1c009eae:	1c00a5b7          	lui	a1,0x1c00a
1c009eb2:	f6058613          	addi	a2,a1,-160 # 1c009f60 <__l2_priv1_end>
1c009eb6:	1c0107b7          	lui	a5,0x1c010
1c009eba:	f6058593          	addi	a1,a1,-160
1c009ebe:	40c78633          	sub	a2,a5,a2
1c009ec2:	02f5da63          	bge	a1,a5,1c009ef6 <pos_allocs_init+0x6e>
1c009ec6:	1c006537          	lui	a0,0x1c006
1c009eca:	1cc50513          	addi	a0,a0,460 # 1c0061cc <pos_alloc_l2+0x4>
1c009ece:	3de9                	jal	1c009da8 <pos_alloc_init>
1c009ed0:	40b2                	lw	ra,12(sp)
1c009ed2:	1c0105b7          	lui	a1,0x1c010
1c009ed6:	00058793          	mv	a5,a1
1c009eda:	1c080637          	lui	a2,0x1c080
1c009ede:	1c006537          	lui	a0,0x1c006
1c009ee2:	8e1d                	sub	a2,a2,a5
1c009ee4:	00058593          	mv	a1,a1
1c009ee8:	1d050513          	addi	a0,a0,464 # 1c0061d0 <pos_alloc_l2+0x8>
1c009eec:	0141                	addi	sp,sp,16
1c009eee:	bd6d                	j	1c009da8 <pos_alloc_init>
1c009ef0:	4581                	li	a1,0
1c009ef2:	4601                	li	a2,0
1c009ef4:	bf45                	j	1c009ea4 <pos_allocs_init+0x1c>
1c009ef6:	4581                	li	a1,0
1c009ef8:	4601                	li	a2,0
1c009efa:	b7f1                	j	1c009ec6 <pos_allocs_init+0x3e>

1c009efc <pi_l2_malloc>:
1c009efc:	85aa                	mv	a1,a0
1c009efe:	1c006537          	lui	a0,0x1c006
1c009f02:	1c850513          	addi	a0,a0,456 # 1c0061c8 <pos_alloc_l2>
1c009f06:	b5c1                	j	1c009dc6 <pos_alloc>

1c009f08 <pi_l2_free>:
1c009f08:	862e                	mv	a2,a1
1c009f0a:	85aa                	mv	a1,a0
1c009f0c:	1c006537          	lui	a0,0x1c006
1c009f10:	1c850513          	addi	a0,a0,456 # 1c0061c8 <pos_alloc_l2>
1c009f14:	b729                	j	1c009e1e <pos_free>

1c009f16 <__rt_handle_illegal_instr>:
1c009f16:	8082                	ret

1c009f18 <pos_irq_init>:
1c009f18:	1a10a737          	lui	a4,0x1a10a
1c009f1c:	56fd                	li	a3,-1
1c009f1e:	f14027f3          	csrr	a5,mhartid
1c009f22:	8795                	srai	a5,a5,0x5
1c009f24:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c009f28:	03f7f793          	andi	a5,a5,63
1c009f2c:	477d                	li	a4,31
1c009f2e:	00e78363          	beq	a5,a4,1c009f34 <pos_irq_init+0x1c>
1c009f32:	8082                	ret
1c009f34:	1c0087b7          	lui	a5,0x1c008
1c009f38:	00078793          	mv	a5,a5
1c009f3c:	0017e793          	ori	a5,a5,1
1c009f40:	30579073          	csrw	mtvec,a5
1c009f44:	8082                	ret

1c009f46 <pos_soc_event_init>:
1c009f46:	1a1067b7          	lui	a5,0x1a106
1c009f4a:	577d                	li	a4,-1
1c009f4c:	c3d8                	sw	a4,4(a5)
1c009f4e:	c798                	sw	a4,8(a5)
1c009f50:	c7d8                	sw	a4,12(a5)
1c009f52:	cb98                	sw	a4,16(a5)
1c009f54:	cbd8                	sw	a4,20(a5)
1c009f56:	cf98                	sw	a4,24(a5)
1c009f58:	cfd8                	sw	a4,28(a5)
1c009f5a:	d398                	sw	a4,32(a5)
1c009f5c:	8082                	ret

1c009f5e <_endtext>:
	...
