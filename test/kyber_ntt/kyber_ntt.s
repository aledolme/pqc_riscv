riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt

/home/alessandra.dolmeta/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	0000206f          	j	1c00a000 <__rt_handle_illegal_instr>
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
1c008084:	77d0106f          	j	1c00a000 <__rt_handle_illegal_instr>

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
1c0080c4:	14028293          	addi	t0,t0,320 # 1c006200 <pos_fll_is_on>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	15c30313          	addi	t1,t1,348 # 1c006224 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	12610113          	addi	sp,sp,294 # 1c006200 <pos_fll_is_on>
1c0080e2:	553010ef          	jal	ra,1c009e34 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	06638393          	addi	t2,t2,102 # 1c008154 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	56f010ef          	jal	ra,1c009e6a <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	5b1000ef          	jal	ra,1c008eb2 <exit>
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
1c008168:	4cd000ef          	jal	ra,1c008e34 <puts>
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
1c008188:	077000ef          	jal	ra,1c0089fe <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c00818c:	1c000537          	lui	a0,0x1c000
1c008190:	12850513          	addi	a0,a0,296 # 1c000128 <__clz_tab+0x10c>
1c008194:	4a1000ef          	jal	ra,1c008e34 <puts>
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
1c00821e:	20440413          	addi	s0,s0,516 # 1c006204 <pos_fll_freq>
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
1c00824a:	20068693          	addi	a3,a3,512 # 1c006200 <pos_fll_is_on>
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
1c008284:	20068693          	addi	a3,a3,512 # 1c006200 <pos_fll_is_on>
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
1c0082ce:	20478793          	addi	a5,a5,516 # 1c006204 <pos_fll_freq>
1c0082d2:	0007a023          	sw	zero,0(a5)
1c0082d6:	0007a223          	sw	zero,4(a5)
1c0082da:	1c0067b7          	lui	a5,0x1c006
1c0082de:	20079023          	sh	zero,512(a5) # 1c006200 <pos_fll_is_on>
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
1c0082f6:	20c40413          	addi	s0,s0,524 # 1c00620c <pos_freq_domains>
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
1c0083e6:	2e9000ef          	jal	ra,1c008ece <printf>
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
1c008702:	0e5010ef          	jal	ra,1c009fe6 <pi_l2_malloc>
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
1c00881c:	7d60106f          	j	1c009ff2 <pi_l2_free>
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
1c008954:	2bb9                	jal	1c008eb2 <exit>

1c008956 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c008956:	9a010113          	addi	sp,sp,-1632
1c00895a:	4601                	li	a2,0
1c00895c:	100c                	addi	a1,sp,32
1c00895e:	0088                	addi	a0,sp,64
1c008960:	64112e23          	sw	ra,1628(sp)
1c008964:	64912a23          	sw	s1,1620(sp)
1c008968:	65212823          	sw	s2,1616(sp)
1c00896c:	65312623          	sw	s3,1612(sp)
1c008970:	65412423          	sw	s4,1608(sp)
1c008974:	65512223          	sw	s5,1604(sp)
1c008978:	64812c23          	sw	s0,1624(sp)
1c00897c:	2841                	jal	1c008a0c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00897e:	4605                	li	a2,1
1c008980:	100c                	addi	a1,sp,32
1c008982:	0488                	addi	a0,sp,576
1c008984:	2061                	jal	1c008a0c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c008986:	4609                	li	a2,2
1c008988:	100c                	addi	a1,sp,32
1c00898a:	44010513          	addi	a0,sp,1088
1c00898e:	28bd                	jal	1c008a0c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c008990:	1c000537          	lui	a0,0x1c000
1c008994:	13c50513          	addi	a0,a0,316 # 1c00013c <__clz_tab+0x120>
1c008998:	2971                	jal	1c008e34 <puts>
1c00899a:	0088                	addi	a0,sp,64
1c00899c:	2849                	jal	1c008a2e <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00899e:	1c000537          	lui	a0,0x1c000
1c0089a2:	15050513          	addi	a0,a0,336 # 1c000150 <__clz_tab+0x134>
1c0089a6:	2179                	jal	1c008e34 <puts>
1c0089a8:	0484                	addi	s1,sp,576
1c0089aa:	4981                	li	s3,0
1c0089ac:	1c000ab7          	lui	s5,0x1c000
1c0089b0:	1c000937          	lui	s2,0x1c000
1c0089b4:	4a0d                	li	s4,3
1c0089b6:	85ce                	mv	a1,s3
1c0089b8:	168a8513          	addi	a0,s5,360 # 1c000168 <__clz_tab+0x14c>
1c0089bc:	2b09                	jal	1c008ece <printf>
1c0089be:	e0048413          	addi	s0,s1,-512
1c0089c2:	00045583          	lhu	a1,0(s0)
1c0089c6:	17c90513          	addi	a0,s2,380 # 1c00017c <__clz_tab+0x160>
1c0089ca:	0409                	addi	s0,s0,2
1c0089cc:	2309                	jal	1c008ece <printf>
1c0089ce:	fe941ae3          	bne	s0,s1,1c0089c2 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x6c>
1c0089d2:	0985                	addi	s3,s3,1
1c0089d4:	20040493          	addi	s1,s0,512
1c0089d8:	fd499fe3          	bne	s3,s4,1c0089b6 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x60>
1c0089dc:	65c12083          	lw	ra,1628(sp)
1c0089e0:	65812403          	lw	s0,1624(sp)
1c0089e4:	65412483          	lw	s1,1620(sp)
1c0089e8:	65012903          	lw	s2,1616(sp)
1c0089ec:	64c12983          	lw	s3,1612(sp)
1c0089f0:	64812a03          	lw	s4,1608(sp)
1c0089f4:	64412a83          	lw	s5,1604(sp)
1c0089f8:	66010113          	addi	sp,sp,1632
1c0089fc:	8082                	ret

1c0089fe <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c0089fe:	1141                	addi	sp,sp,-16
1c008a00:	c606                	sw	ra,12(sp)
1c008a02:	3f91                	jal	1c008956 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c008a04:	40b2                	lw	ra,12(sp)
1c008a06:	4501                	li	a0,0
1c008a08:	0141                	addi	sp,sp,16
1c008a0a:	8082                	ret

1c008a0c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c008a0c:	7175                	addi	sp,sp,-144
1c008a0e:	c522                	sw	s0,136(sp)
1c008a10:	86b2                	mv	a3,a2
1c008a12:	842a                	mv	s0,a0
1c008a14:	862e                	mv	a2,a1
1c008a16:	850a                	mv	a0,sp
1c008a18:	08000593          	li	a1,128
1c008a1c:	c706                	sw	ra,140(sp)
1c008a1e:	22a5                	jal	1c008b86 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c008a20:	858a                	mv	a1,sp
1c008a22:	8522                	mv	a0,s0
1c008a24:	3ad9                	jal	1c0083fa <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c008a26:	40ba                	lw	ra,140(sp)
1c008a28:	442a                	lw	s0,136(sp)
1c008a2a:	6149                	addi	sp,sp,144
1c008a2c:	8082                	ret

1c008a2e <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c008a2e:	9c010113          	addi	sp,sp,-1600
1c008a32:	63312623          	sw	s3,1580(sp)
1c008a36:	69c1                	lui	s3,0x10
1c008a38:	62812c23          	sw	s0,1592(sp)
1c008a3c:	62912a23          	sw	s1,1588(sp)
1c008a40:	63212823          	sw	s2,1584(sp)
1c008a44:	63412423          	sw	s4,1576(sp)
1c008a48:	63512223          	sw	s5,1572(sp)
1c008a4c:	63612023          	sw	s6,1568(sp)
1c008a50:	61912a23          	sw	s9,1556(sp)
1c008a54:	61a12823          	sw	s10,1552(sp)
1c008a58:	61b12623          	sw	s11,1548(sp)
1c008a5c:	62112e23          	sw	ra,1596(sp)
1c008a60:	61712e23          	sw	s7,1564(sp)
1c008a64:	61812c23          	sw	s8,1560(sp)
1c008a68:	00250b13          	addi	s6,a0,2
1c008a6c:	4a81                	li	s5,0
1c008a6e:	40010413          	addi	s0,sp,1024
1c008a72:	20010913          	addi	s2,sp,512
1c008a76:	1c000db7          	lui	s11,0x1c000
1c008a7a:	1c0004b7          	lui	s1,0x1c000
1c008a7e:	1c000d37          	lui	s10,0x1c000
1c008a82:	1c000cb7          	lui	s9,0x1c000
1c008a86:	19fd                	addi	s3,s3,-1
1c008a88:	10000a13          	li	s4,256
1c008a8c:	20000613          	li	a2,512
1c008a90:	ffeb0593          	addi	a1,s6,-2 # ff00fffe <__l2_shared_end+0xe2fffffe>
1c008a94:	8522                	mv	a0,s0
1c008a96:	2ac9                	jal	1c008c68 <memcpy>
1c008a98:	20000613          	li	a2,512
1c008a9c:	4581                	li	a1,0
1c008a9e:	850a                	mv	a0,sp
1c008aa0:	2291                	jal	1c008be4 <memset>
1c008aa2:	20000613          	li	a2,512
1c008aa6:	4581                	li	a1,0
1c008aa8:	854a                	mv	a0,s2
1c008aaa:	2a2d                	jal	1c008be4 <memset>
1c008aac:	8622                	mv	a2,s0
1c008aae:	4681                	li	a3,0
1c008ab0:	00061703          	lh	a4,0(a2)
1c008ab4:	00261583          	lh	a1,2(a2)
1c008ab8:	4016d793          	srai	a5,a3,0x1
1c008abc:	078a                	slli	a5,a5,0x2
1c008abe:	0742                	slli	a4,a4,0x10
1c008ac0:	0135f5b3          	and	a1,a1,s3
1c008ac4:	60010513          	addi	a0,sp,1536
1c008ac8:	97aa                	add	a5,a5,a0
1c008aca:	8f4d                	or	a4,a4,a1
1c008acc:	a0e7a023          	sw	a4,-1536(a5)
1c008ad0:	0689                	addi	a3,a3,2
1c008ad2:	0611                	addi	a2,a2,4
1c008ad4:	fd469ee3          	bne	a3,s4,1c008ab0 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x82>
1c008ad8:	85d6                	mv	a1,s5
1c008ada:	184d8513          	addi	a0,s11,388 # 1c000184 <__clz_tab+0x168>
1c008ade:	2ec5                	jal	1c008ece <printf>
1c008ae0:	8b8a                	mv	s7,sp
1c008ae2:	000ba583          	lw	a1,0(s7)
1c008ae6:	13448513          	addi	a0,s1,308 # 1c000134 <__clz_tab+0x118>
1c008aea:	0b91                	addi	s7,s7,4
1c008aec:	26cd                	jal	1c008ece <printf>
1c008aee:	ff791ae3          	bne	s2,s7,1c008ae2 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0xb4>
1c008af2:	190d0513          	addi	a0,s10,400 # 1c000190 <__clz_tab+0x174>
1c008af6:	2e3d                	jal	1c008e34 <puts>
1c008af8:	85ca                	mv	a1,s2
1c008afa:	850a                	mv	a0,sp
1c008afc:	877ff0ef          	jal	ra,1c008372 <KYBER_poly_ntt>
1c008b00:	1b4c8513          	addi	a0,s9,436 # 1c0001b4 <__clz_tab+0x198>
1c008b04:	2e05                	jal	1c008e34 <puts>
1c008b06:	1c0007b7          	lui	a5,0x1c000
1c008b0a:	85d6                	mv	a1,s5
1c008b0c:	1d478513          	addi	a0,a5,468 # 1c0001d4 <__clz_tab+0x1b8>
1c008b10:	2e7d                	jal	1c008ece <printf>
1c008b12:	8bca                	mv	s7,s2
1c008b14:	8c4a                	mv	s8,s2
1c008b16:	000c2583          	lw	a1,0(s8)
1c008b1a:	13448513          	addi	a0,s1,308
1c008b1e:	0c11                	addi	s8,s8,4
1c008b20:	267d                	jal	1c008ece <printf>
1c008b22:	fe8c1ae3          	bne	s8,s0,1c008b16 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0xe8>
1c008b26:	87da                	mv	a5,s6
1c008b28:	000ba683          	lw	a3,0(s7)
1c008b2c:	0b91                	addi	s7,s7,4
1c008b2e:	0791                	addi	a5,a5,4
1c008b30:	0106d613          	srli	a2,a3,0x10
1c008b34:	fec79d23          	sh	a2,-6(a5)
1c008b38:	fed79e23          	sh	a3,-4(a5)
1c008b3c:	fe8b96e3          	bne	s7,s0,1c008b28 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0xfa>
1c008b40:	0a85                	addi	s5,s5,1
1c008b42:	478d                	li	a5,3
1c008b44:	200b0b13          	addi	s6,s6,512
1c008b48:	f4fa92e3          	bne	s5,a5,1c008a8c <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x5e>
1c008b4c:	63c12083          	lw	ra,1596(sp)
1c008b50:	63812403          	lw	s0,1592(sp)
1c008b54:	63412483          	lw	s1,1588(sp)
1c008b58:	63012903          	lw	s2,1584(sp)
1c008b5c:	62c12983          	lw	s3,1580(sp)
1c008b60:	62812a03          	lw	s4,1576(sp)
1c008b64:	62412a83          	lw	s5,1572(sp)
1c008b68:	62012b03          	lw	s6,1568(sp)
1c008b6c:	61c12b83          	lw	s7,1564(sp)
1c008b70:	61812c03          	lw	s8,1560(sp)
1c008b74:	61412c83          	lw	s9,1556(sp)
1c008b78:	61012d03          	lw	s10,1552(sp)
1c008b7c:	60c12d83          	lw	s11,1548(sp)
1c008b80:	64010113          	addi	sp,sp,1600
1c008b84:	8082                	ret

1c008b86 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c008b86:	7139                	addi	sp,sp,-64
1c008b88:	87b2                	mv	a5,a2
1c008b8a:	da26                	sw	s1,52(sp)
1c008b8c:	d84a                	sw	s2,48(sp)
1c008b8e:	84aa                	mv	s1,a0
1c008b90:	892e                	mv	s2,a1
1c008b92:	02000613          	li	a2,32
1c008b96:	85be                	mv	a1,a5
1c008b98:	0068                	addi	a0,sp,12
1c008b9a:	de06                	sw	ra,60(sp)
1c008b9c:	dc22                	sw	s0,56(sp)
1c008b9e:	8436                	mv	s0,a3
1c008ba0:	20e1                	jal	1c008c68 <memcpy>
1c008ba2:	0070                	addi	a2,sp,12
1c008ba4:	85ca                	mv	a1,s2
1c008ba6:	8526                	mv	a0,s1
1c008ba8:	02100693          	li	a3,33
1c008bac:	02810623          	sb	s0,44(sp)
1c008bb0:	3625                	jal	1c0086d8 <shake256>
1c008bb2:	50f2                	lw	ra,60(sp)
1c008bb4:	5462                	lw	s0,56(sp)
1c008bb6:	54d2                	lw	s1,52(sp)
1c008bb8:	5942                	lw	s2,48(sp)
1c008bba:	6121                	addi	sp,sp,64
1c008bbc:	8082                	ret

1c008bbe <pos_wait_forever>:
1c008bbe:	f14027f3          	csrr	a5,mhartid
1c008bc2:	8795                	srai	a5,a5,0x5
1c008bc4:	03f7f793          	andi	a5,a5,63
1c008bc8:	477d                	li	a4,31
1c008bca:	00e78363          	beq	a5,a4,1c008bd0 <pos_wait_forever+0x12>
1c008bce:	a001                	j	1c008bce <pos_wait_forever+0x10>
1c008bd0:	1a10a7b7          	lui	a5,0x1a10a
1c008bd4:	577d                	li	a4,-1
1c008bd6:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c008bda:	10500073          	wfi
1c008bde:	10500073          	wfi
1c008be2:	bfe5                	j	1c008bda <pos_wait_forever+0x1c>

1c008be4 <memset>:
1c008be4:	fff60e13          	addi	t3,a2,-1
1c008be8:	ce25                	beqz	a2,1c008c60 <memset+0x7c>
1c008bea:	4789                	li	a5,2
1c008bec:	0ff5f593          	andi	a1,a1,255
1c008bf0:	07c7fa63          	bgeu	a5,t3,1c008c64 <memset+0x80>
1c008bf4:	00859793          	slli	a5,a1,0x8
1c008bf8:	8fcd                	or	a5,a5,a1
1c008bfa:	01059713          	slli	a4,a1,0x10
1c008bfe:	8f5d                	or	a4,a4,a5
1c008c00:	01859693          	slli	a3,a1,0x18
1c008c04:	8ed9                	or	a3,a3,a4
1c008c06:	0086d313          	srli	t1,a3,0x8
1c008c0a:	0106d893          	srli	a7,a3,0x10
1c008c0e:	ffc67813          	andi	a6,a2,-4
1c008c12:	87aa                	mv	a5,a0
1c008c14:	982a                	add	a6,a6,a0
1c008c16:	0ff77713          	andi	a4,a4,255
1c008c1a:	82e1                	srli	a3,a3,0x18
1c008c1c:	0ff37313          	andi	t1,t1,255
1c008c20:	0ff8f893          	andi	a7,a7,255
1c008c24:	00e78023          	sb	a4,0(a5)
1c008c28:	006780a3          	sb	t1,1(a5)
1c008c2c:	01178123          	sb	a7,2(a5)
1c008c30:	00d781a3          	sb	a3,3(a5)
1c008c34:	0791                	addi	a5,a5,4
1c008c36:	ff0797e3          	bne	a5,a6,1c008c24 <memset+0x40>
1c008c3a:	ffc67793          	andi	a5,a2,-4
1c008c3e:	00f50733          	add	a4,a0,a5
1c008c42:	40fe0e33          	sub	t3,t3,a5
1c008c46:	00f60e63          	beq	a2,a5,1c008c62 <memset+0x7e>
1c008c4a:	00b70023          	sb	a1,0(a4)
1c008c4e:	000e0963          	beqz	t3,1c008c60 <memset+0x7c>
1c008c52:	00b700a3          	sb	a1,1(a4)
1c008c56:	4785                	li	a5,1
1c008c58:	00fe0463          	beq	t3,a5,1c008c60 <memset+0x7c>
1c008c5c:	00b70123          	sb	a1,2(a4)
1c008c60:	8082                	ret
1c008c62:	8082                	ret
1c008c64:	872a                	mv	a4,a0
1c008c66:	b7d5                	j	1c008c4a <memset+0x66>

1c008c68 <memcpy>:
1c008c68:	00c5e7b3          	or	a5,a1,a2
1c008c6c:	8fc9                	or	a5,a5,a0
1c008c6e:	8b8d                	andi	a5,a5,3
1c008c70:	872e                	mv	a4,a1
1c008c72:	882a                	mv	a6,a0
1c008c74:	cbc5                	beqz	a5,1c008d24 <memcpy+0xbc>
1c008c76:	c279                	beqz	a2,1c008d3c <memcpy+0xd4>
1c008c78:	00350793          	addi	a5,a0,3
1c008c7c:	8f8d                	sub	a5,a5,a1
1c008c7e:	0077b793          	sltiu	a5,a5,7
1c008c82:	e7d1                	bnez	a5,1c008d0e <memcpy+0xa6>
1c008c84:	fff60793          	addi	a5,a2,-1
1c008c88:	0047b793          	sltiu	a5,a5,4
1c008c8c:	e3c9                	bnez	a5,1c008d0e <memcpy+0xa6>
1c008c8e:	ffc67e13          	andi	t3,a2,-4
1c008c92:	9e2e                	add	t3,t3,a1
1c008c94:	00174883          	lbu	a7,1(a4)
1c008c98:	00074303          	lbu	t1,0(a4)
1c008c9c:	00274683          	lbu	a3,2(a4)
1c008ca0:	00374783          	lbu	a5,3(a4)
1c008ca4:	08a2                	slli	a7,a7,0x8
1c008ca6:	0068e8b3          	or	a7,a7,t1
1c008caa:	06c2                	slli	a3,a3,0x10
1c008cac:	0116e6b3          	or	a3,a3,a7
1c008cb0:	07e2                	slli	a5,a5,0x18
1c008cb2:	8fd5                	or	a5,a5,a3
1c008cb4:	0087d313          	srli	t1,a5,0x8
1c008cb8:	0107d893          	srli	a7,a5,0x10
1c008cbc:	83e1                	srli	a5,a5,0x18
1c008cbe:	00d80023          	sb	a3,0(a6) # ff010000 <__l2_shared_end+0xe3000000>
1c008cc2:	006800a3          	sb	t1,1(a6)
1c008cc6:	01180123          	sb	a7,2(a6)
1c008cca:	00f801a3          	sb	a5,3(a6)
1c008cce:	0711                	addi	a4,a4,4
1c008cd0:	0811                	addi	a6,a6,4
1c008cd2:	fdc711e3          	bne	a4,t3,1c008c94 <memcpy+0x2c>
1c008cd6:	ffc67793          	andi	a5,a2,-4
1c008cda:	00367693          	andi	a3,a2,3
1c008cde:	00f50733          	add	a4,a0,a5
1c008ce2:	95be                	add	a1,a1,a5
1c008ce4:	02f60f63          	beq	a2,a5,1c008d22 <memcpy+0xba>
1c008ce8:	0005c603          	lbu	a2,0(a1)
1c008cec:	fff68793          	addi	a5,a3,-1
1c008cf0:	00c70023          	sb	a2,0(a4)
1c008cf4:	c79d                	beqz	a5,1c008d22 <memcpy+0xba>
1c008cf6:	0015c603          	lbu	a2,1(a1)
1c008cfa:	4789                	li	a5,2
1c008cfc:	00c700a3          	sb	a2,1(a4)
1c008d00:	02f68163          	beq	a3,a5,1c008d22 <memcpy+0xba>
1c008d04:	0025c783          	lbu	a5,2(a1)
1c008d08:	00f70123          	sb	a5,2(a4)
1c008d0c:	8082                	ret
1c008d0e:	962e                	add	a2,a2,a1
1c008d10:	87aa                	mv	a5,a0
1c008d12:	0005c703          	lbu	a4,0(a1)
1c008d16:	0585                	addi	a1,a1,1
1c008d18:	0785                	addi	a5,a5,1
1c008d1a:	fee78fa3          	sb	a4,-1(a5)
1c008d1e:	fec59ae3          	bne	a1,a2,1c008d12 <memcpy+0xaa>
1c008d22:	8082                	ret
1c008d24:	de7d                	beqz	a2,1c008d22 <memcpy+0xba>
1c008d26:	87aa                	mv	a5,a0
1c008d28:	4194                	lw	a3,0(a1)
1c008d2a:	0791                	addi	a5,a5,4
1c008d2c:	40c78733          	sub	a4,a5,a2
1c008d30:	fed7ae23          	sw	a3,-4(a5)
1c008d34:	0591                	addi	a1,a1,4
1c008d36:	fea719e3          	bne	a4,a0,1c008d28 <memcpy+0xc0>
1c008d3a:	8082                	ret
1c008d3c:	8082                	ret

1c008d3e <memmove>:
1c008d3e:	40b507b3          	sub	a5,a0,a1
1c008d42:	0ac7e063          	bltu	a5,a2,1c008de2 <memmove+0xa4>
1c008d46:	c661                	beqz	a2,1c008e0e <memmove+0xd0>
1c008d48:	00350793          	addi	a5,a0,3
1c008d4c:	8f8d                	sub	a5,a5,a1
1c008d4e:	0077b793          	sltiu	a5,a5,7
1c008d52:	e3dd                	bnez	a5,1c008df8 <memmove+0xba>
1c008d54:	fff60793          	addi	a5,a2,-1
1c008d58:	0047b793          	sltiu	a5,a5,4
1c008d5c:	efd1                	bnez	a5,1c008df8 <memmove+0xba>
1c008d5e:	ffc67e13          	andi	t3,a2,-4
1c008d62:	872e                	mv	a4,a1
1c008d64:	882a                	mv	a6,a0
1c008d66:	9e2e                	add	t3,t3,a1
1c008d68:	00174883          	lbu	a7,1(a4)
1c008d6c:	00074303          	lbu	t1,0(a4)
1c008d70:	00274683          	lbu	a3,2(a4)
1c008d74:	00374783          	lbu	a5,3(a4)
1c008d78:	08a2                	slli	a7,a7,0x8
1c008d7a:	0068e8b3          	or	a7,a7,t1
1c008d7e:	06c2                	slli	a3,a3,0x10
1c008d80:	0116e6b3          	or	a3,a3,a7
1c008d84:	07e2                	slli	a5,a5,0x18
1c008d86:	8fd5                	or	a5,a5,a3
1c008d88:	0087d313          	srli	t1,a5,0x8
1c008d8c:	0107d893          	srli	a7,a5,0x10
1c008d90:	83e1                	srli	a5,a5,0x18
1c008d92:	00d80023          	sb	a3,0(a6)
1c008d96:	006800a3          	sb	t1,1(a6)
1c008d9a:	01180123          	sb	a7,2(a6)
1c008d9e:	00f801a3          	sb	a5,3(a6)
1c008da2:	0711                	addi	a4,a4,4
1c008da4:	0811                	addi	a6,a6,4
1c008da6:	fdc711e3          	bne	a4,t3,1c008d68 <memmove+0x2a>
1c008daa:	ffc67793          	andi	a5,a2,-4
1c008dae:	00367693          	andi	a3,a2,3
1c008db2:	00f50733          	add	a4,a0,a5
1c008db6:	95be                	add	a1,a1,a5
1c008db8:	04f60a63          	beq	a2,a5,1c008e0c <memmove+0xce>
1c008dbc:	0005c603          	lbu	a2,0(a1)
1c008dc0:	fff68793          	addi	a5,a3,-1
1c008dc4:	00c70023          	sb	a2,0(a4)
1c008dc8:	c3b1                	beqz	a5,1c008e0c <memmove+0xce>
1c008dca:	0015c603          	lbu	a2,1(a1)
1c008dce:	4789                	li	a5,2
1c008dd0:	00c700a3          	sb	a2,1(a4)
1c008dd4:	02f68c63          	beq	a3,a5,1c008e0c <memmove+0xce>
1c008dd8:	0025c783          	lbu	a5,2(a1)
1c008ddc:	00f70123          	sb	a5,2(a4)
1c008de0:	8082                	ret
1c008de2:	167d                	addi	a2,a2,-1
1c008de4:	00c587b3          	add	a5,a1,a2
1c008de8:	0007c703          	lbu	a4,0(a5)
1c008dec:	00c507b3          	add	a5,a0,a2
1c008df0:	00e78023          	sb	a4,0(a5)
1c008df4:	f67d                	bnez	a2,1c008de2 <memmove+0xa4>
1c008df6:	8082                	ret
1c008df8:	962a                	add	a2,a2,a0
1c008dfa:	87aa                	mv	a5,a0
1c008dfc:	0005c703          	lbu	a4,0(a1)
1c008e00:	0785                	addi	a5,a5,1
1c008e02:	0585                	addi	a1,a1,1
1c008e04:	fee78fa3          	sb	a4,-1(a5)
1c008e08:	fec79ae3          	bne	a5,a2,1c008dfc <memmove+0xbe>
1c008e0c:	8082                	ret
1c008e0e:	8082                	ret

1c008e10 <strchr>:
1c008e10:	00054703          	lbu	a4,0(a0)
1c008e14:	0ff5f593          	andi	a1,a1,255
1c008e18:	87aa                	mv	a5,a0
1c008e1a:	00b70863          	beq	a4,a1,1c008e2a <strchr+0x1a>
1c008e1e:	cb01                	beqz	a4,1c008e2e <strchr+0x1e>
1c008e20:	0017c703          	lbu	a4,1(a5)
1c008e24:	0785                	addi	a5,a5,1
1c008e26:	feb71ce3          	bne	a4,a1,1c008e1e <strchr+0xe>
1c008e2a:	853e                	mv	a0,a5
1c008e2c:	8082                	ret
1c008e2e:	4501                	li	a0,0
1c008e30:	dded                	beqz	a1,1c008e2a <strchr+0x1a>
1c008e32:	8082                	ret

1c008e34 <puts>:
1c008e34:	00054783          	lbu	a5,0(a0)
1c008e38:	c78d                	beqz	a5,1c008e62 <puts+0x2e>
1c008e3a:	f14026f3          	csrr	a3,mhartid
1c008e3e:	00369713          	slli	a4,a3,0x3
1c008e42:	1a10f637          	lui	a2,0x1a10f
1c008e46:	0ff77713          	andi	a4,a4,255
1c008e4a:	9732                	add	a4,a4,a2
1c008e4c:	6609                	lui	a2,0x2
1c008e4e:	068a                	slli	a3,a3,0x2
1c008e50:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008e54:	8ef1                	and	a3,a3,a2
1c008e56:	9736                	add	a4,a4,a3
1c008e58:	c31c                	sw	a5,0(a4)
1c008e5a:	00154783          	lbu	a5,1(a0)
1c008e5e:	0505                	addi	a0,a0,1
1c008e60:	ffe5                	bnez	a5,1c008e58 <puts+0x24>
1c008e62:	f1402773          	csrr	a4,mhartid
1c008e66:	00371793          	slli	a5,a4,0x3
1c008e6a:	1a10f6b7          	lui	a3,0x1a10f
1c008e6e:	0ff7f793          	andi	a5,a5,255
1c008e72:	97b6                	add	a5,a5,a3
1c008e74:	6689                	lui	a3,0x2
1c008e76:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008e7a:	070a                	slli	a4,a4,0x2
1c008e7c:	8f75                	and	a4,a4,a3
1c008e7e:	97ba                	add	a5,a5,a4
1c008e80:	4729                	li	a4,10
1c008e82:	c398                	sw	a4,0(a5)
1c008e84:	4501                	li	a0,0
1c008e86:	8082                	ret

1c008e88 <pos_libc_fputc_locked>:
1c008e88:	6689                	lui	a3,0x2
1c008e8a:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008e8e:	f14027f3          	csrr	a5,mhartid
1c008e92:	00379713          	slli	a4,a5,0x3
1c008e96:	078a                	slli	a5,a5,0x2
1c008e98:	8ff5                	and	a5,a5,a3
1c008e9a:	0ff77713          	andi	a4,a4,255
1c008e9e:	1a10f6b7          	lui	a3,0x1a10f
1c008ea2:	9736                	add	a4,a4,a3
1c008ea4:	97ba                	add	a5,a5,a4
1c008ea6:	0ff57513          	andi	a0,a0,255
1c008eaa:	c388                	sw	a0,0(a5)
1c008eac:	4501                	li	a0,0
1c008eae:	8082                	ret

1c008eb0 <pos_libc_prf_locked>:
1c008eb0:	a0b1                	j	1c008efc <pos_libc_prf>

1c008eb2 <exit>:
1c008eb2:	800007b7          	lui	a5,0x80000
1c008eb6:	1141                	addi	sp,sp,-16
1c008eb8:	8d5d                	or	a0,a0,a5
1c008eba:	c606                	sw	ra,12(sp)
1c008ebc:	1a1047b7          	lui	a5,0x1a104
1c008ec0:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008ec4:	39ed                	jal	1c008bbe <pos_wait_forever>

1c008ec6 <pos_io_start>:
1c008ec6:	4501                	li	a0,0
1c008ec8:	8082                	ret

1c008eca <pos_io_stop>:
1c008eca:	4501                	li	a0,0
1c008ecc:	8082                	ret

1c008ece <printf>:
1c008ece:	7139                	addi	sp,sp,-64
1c008ed0:	02410313          	addi	t1,sp,36
1c008ed4:	d432                	sw	a2,40(sp)
1c008ed6:	862a                	mv	a2,a0
1c008ed8:	1c009537          	lui	a0,0x1c009
1c008edc:	d22e                	sw	a1,36(sp)
1c008ede:	d636                	sw	a3,44(sp)
1c008ee0:	4589                	li	a1,2
1c008ee2:	869a                	mv	a3,t1
1c008ee4:	e8850513          	addi	a0,a0,-376 # 1c008e88 <pos_libc_fputc_locked>
1c008ee8:	ce06                	sw	ra,28(sp)
1c008eea:	d83a                	sw	a4,48(sp)
1c008eec:	da3e                	sw	a5,52(sp)
1c008eee:	dc42                	sw	a6,56(sp)
1c008ef0:	de46                	sw	a7,60(sp)
1c008ef2:	c61a                	sw	t1,12(sp)
1c008ef4:	3f75                	jal	1c008eb0 <pos_libc_prf_locked>
1c008ef6:	40f2                	lw	ra,28(sp)
1c008ef8:	6121                	addi	sp,sp,64
1c008efa:	8082                	ret

1c008efc <pos_libc_prf>:
1c008efc:	7169                	addi	sp,sp,-304
1c008efe:	12112623          	sw	ra,300(sp)
1c008f02:	12812423          	sw	s0,296(sp)
1c008f06:	12912223          	sw	s1,292(sp)
1c008f0a:	13212023          	sw	s2,288(sp)
1c008f0e:	11312e23          	sw	s3,284(sp)
1c008f12:	11412c23          	sw	s4,280(sp)
1c008f16:	11512a23          	sw	s5,276(sp)
1c008f1a:	11612823          	sw	s6,272(sp)
1c008f1e:	11712623          	sw	s7,268(sp)
1c008f22:	11812423          	sw	s8,264(sp)
1c008f26:	11912223          	sw	s9,260(sp)
1c008f2a:	11a12023          	sw	s10,256(sp)
1c008f2e:	dfee                	sw	s11,252(sp)
1c008f30:	00064783          	lbu	a5,0(a2)
1c008f34:	c636                	sw	a3,12(sp)
1c008f36:	3c0781e3          	beqz	a5,1c009af8 <pos_libc_prf+0xbfc>
1c008f3a:	7741                	lui	a4,0xffff0
1c008f3c:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008f40:	cc3a                	sw	a4,24(sp)
1c008f42:	10000737          	lui	a4,0x10000
1c008f46:	177d                	addi	a4,a4,-1
1c008f48:	8caa                	mv	s9,a0
1c008f4a:	84ae                	mv	s1,a1
1c008f4c:	00160c13          	addi	s8,a2,1
1c008f50:	4401                	li	s0,0
1c008f52:	1c000d37          	lui	s10,0x1c000
1c008f56:	ca3a                	sw	a4,20(sp)
1c008f58:	853e                	mv	a0,a5
1c008f5a:	02500793          	li	a5,37
1c008f5e:	04f50863          	beq	a0,a5,1c008fae <pos_libc_prf+0xb2>
1c008f62:	85a6                	mv	a1,s1
1c008f64:	9c82                	jalr	s9
1c008f66:	57fd                	li	a5,-1
1c008f68:	4cf50b63          	beq	a0,a5,1c00943e <pos_libc_prf+0x542>
1c008f6c:	0405                	addi	s0,s0,1
1c008f6e:	000c4503          	lbu	a0,0(s8)
1c008f72:	0c05                	addi	s8,s8,1
1c008f74:	f17d                	bnez	a0,1c008f5a <pos_libc_prf+0x5e>
1c008f76:	12c12083          	lw	ra,300(sp)
1c008f7a:	8522                	mv	a0,s0
1c008f7c:	12812403          	lw	s0,296(sp)
1c008f80:	12412483          	lw	s1,292(sp)
1c008f84:	12012903          	lw	s2,288(sp)
1c008f88:	11c12983          	lw	s3,284(sp)
1c008f8c:	11812a03          	lw	s4,280(sp)
1c008f90:	11412a83          	lw	s5,276(sp)
1c008f94:	11012b03          	lw	s6,272(sp)
1c008f98:	10c12b83          	lw	s7,268(sp)
1c008f9c:	10812c03          	lw	s8,264(sp)
1c008fa0:	10412c83          	lw	s9,260(sp)
1c008fa4:	10012d03          	lw	s10,256(sp)
1c008fa8:	5dfe                	lw	s11,252(sp)
1c008faa:	6155                	addi	sp,sp,304
1c008fac:	8082                	ret
1c008fae:	8de2                	mv	s11,s8
1c008fb0:	000dcc03          	lbu	s8,0(s11)
1c008fb4:	1e4d0513          	addi	a0,s10,484 # 1c0001e4 <__clz_tab+0x1c8>
1c008fb8:	c826                	sw	s1,16(sp)
1c008fba:	85e2                	mv	a1,s8
1c008fbc:	c202                	sw	zero,4(sp)
1c008fbe:	c402                	sw	zero,8(sp)
1c008fc0:	c002                	sw	zero,0(sp)
1c008fc2:	001d8493          	addi	s1,s11,1
1c008fc6:	35a9                	jal	1c008e10 <strchr>
1c008fc8:	02000913          	li	s2,32
1c008fcc:	4b81                	li	s7,0
1c008fce:	02b00993          	li	s3,43
1c008fd2:	02d00b13          	li	s6,45
1c008fd6:	03000a93          	li	s5,48
1c008fda:	02000a13          	li	s4,32
1c008fde:	8626                	mv	a2,s1
1c008fe0:	c51d                	beqz	a0,1c00900e <pos_libc_prf+0x112>
1c008fe2:	413c0e63          	beq	s8,s3,1c0093fe <pos_libc_prf+0x502>
1c008fe6:	3f89ec63          	bltu	s3,s8,1c0093de <pos_libc_prf+0x4e2>
1c008fea:	414c0663          	beq	s8,s4,1c0093f6 <pos_libc_prf+0x4fa>
1c008fee:	02300793          	li	a5,35
1c008ff2:	3efc1363          	bne	s8,a5,1c0093d8 <pos_libc_prf+0x4dc>
1c008ff6:	4b85                	li	s7,1
1c008ff8:	8da6                	mv	s11,s1
1c008ffa:	000dcc03          	lbu	s8,0(s11)
1c008ffe:	1e4d0513          	addi	a0,s10,484
1c009002:	001d8493          	addi	s1,s11,1
1c009006:	85e2                	mv	a1,s8
1c009008:	3521                	jal	1c008e10 <strchr>
1c00900a:	8626                	mv	a2,s1
1c00900c:	f979                	bnez	a0,1c008fe2 <pos_libc_prf+0xe6>
1c00900e:	87e2                	mv	a5,s8
1c009010:	ce5e                	sw	s7,28(sp)
1c009012:	02a00693          	li	a3,42
1c009016:	8c6e                	mv	s8,s11
1c009018:	8ba6                	mv	s7,s1
1c00901a:	8dbe                	mv	s11,a5
1c00901c:	44c2                	lw	s1,16(sp)
1c00901e:	42d78263          	beq	a5,a3,1c009442 <pos_libc_prf+0x546>
1c009022:	fd078693          	addi	a3,a5,-48
1c009026:	4525                	li	a0,9
1c009028:	4a01                	li	s4,0
1c00902a:	3cd57f63          	bgeu	a0,a3,1c009408 <pos_libc_prf+0x50c>
1c00902e:	02e00793          	li	a5,46
1c009032:	5afd                	li	s5,-1
1c009034:	74fd8363          	beq	s11,a5,1c00977a <pos_libc_prf+0x87e>
1c009038:	1c0007b7          	lui	a5,0x1c000
1c00903c:	85ee                	mv	a1,s11
1c00903e:	1ec78513          	addi	a0,a5,492 # 1c0001ec <__clz_tab+0x1d0>
1c009042:	c832                	sw	a2,16(sp)
1c009044:	33f1                	jal	1c008e10 <strchr>
1c009046:	4642                	lw	a2,16(sp)
1c009048:	8c32                	mv	s8,a2
1c00904a:	c509                	beqz	a0,1c009054 <pos_libc_prf+0x158>
1c00904c:	00064d83          	lbu	s11,0(a2)
1c009050:	00160c13          	addi	s8,a2,1
1c009054:	06900793          	li	a5,105
1c009058:	0afd8ee3          	beq	s11,a5,1c009914 <pos_libc_prf+0xa18>
1c00905c:	4db7c763          	blt	a5,s11,1c00952a <pos_libc_prf+0x62e>
1c009060:	05800793          	li	a5,88
1c009064:	4efd8163          	beq	s11,a5,1c009546 <pos_libc_prf+0x64a>
1c009068:	41b7c163          	blt	a5,s11,1c00946a <pos_libc_prf+0x56e>
1c00906c:	02500793          	li	a5,37
1c009070:	26fd8ae3          	beq	s11,a5,1c009ae4 <pos_libc_prf+0xbe8>
1c009074:	3fb7d863          	bge	a5,s11,1c009464 <pos_libc_prf+0x568>
1c009078:	fbbd8793          	addi	a5,s11,-69
1c00907c:	4689                	li	a3,2
1c00907e:	eef6e8e3          	bltu	a3,a5,1c008f6e <pos_libc_prf+0x72>
1c009082:	47b2                	lw	a5,12(sp)
1c009084:	7ff00893          	li	a7,2047
1c009088:	00778b13          	addi	s6,a5,7
1c00908c:	ff8b7b13          	andi	s6,s6,-8
1c009090:	004b2783          	lw	a5,4(s6)
1c009094:	000b2603          	lw	a2,0(s6)
1c009098:	0b21                	addi	s6,s6,8
1c00909a:	00b79693          	slli	a3,a5,0xb
1c00909e:	01565513          	srli	a0,a2,0x15
1c0090a2:	8ec9                	or	a3,a3,a0
1c0090a4:	0147d813          	srli	a6,a5,0x14
1c0090a8:	0686                	slli	a3,a3,0x1
1c0090aa:	7ff87813          	andi	a6,a6,2047
1c0090ae:	0016d513          	srli	a0,a3,0x1
1c0090b2:	00b61313          	slli	t1,a2,0xb
1c0090b6:	86be                	mv	a3,a5
1c0090b8:	41180263          	beq	a6,a7,1c0094bc <pos_libc_prf+0x5c0>
1c0090bc:	04600793          	li	a5,70
1c0090c0:	00fd9463          	bne	s11,a5,1c0090c8 <pos_libc_prf+0x1cc>
1c0090c4:	06600d93          	li	s11,102
1c0090c8:	006867b3          	or	a5,a6,t1
1c0090cc:	00a7e8b3          	or	a7,a5,a0
1c0090d0:	862a                	mv	a2,a0
1c0090d2:	340885e3          	beqz	a7,1c009c1c <pos_libc_prf+0xd20>
1c0090d6:	80000637          	lui	a2,0x80000
1c0090da:	c0280813          	addi	a6,a6,-1022
1c0090de:	879a                	mv	a5,t1
1c0090e0:	8e49                	or	a2,a2,a0
1c0090e2:	4606c7e3          	bltz	a3,1c009d50 <pos_libc_prf+0xe54>
1c0090e6:	4722                	lw	a4,8(sp)
1c0090e8:	480708e3          	beqz	a4,1c009d78 <pos_libc_prf+0xe7c>
1c0090ec:	02b00693          	li	a3,43
1c0090f0:	02d10223          	sb	a3,36(sp)
1c0090f4:	02510f13          	addi	t5,sp,37
1c0090f8:	56f9                	li	a3,-2
1c0090fa:	4301                	li	t1,0
1c0090fc:	06d85663          	bge	a6,a3,1c009168 <pos_libc_prf+0x26c>
1c009100:	333338b7          	lui	a7,0x33333
1c009104:	80000e37          	lui	t3,0x80000
1c009108:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00910c:	fffe4e13          	not	t3,t3
1c009110:	5ef9                	li	t4,-2
1c009112:	01f61593          	slli	a1,a2,0x1f
1c009116:	0017d693          	srli	a3,a5,0x1
1c00911a:	0017f713          	andi	a4,a5,1
1c00911e:	8ecd                	or	a3,a3,a1
1c009120:	00d707b3          	add	a5,a4,a3
1c009124:	00e7b733          	sltu	a4,a5,a4
1c009128:	8205                	srli	a2,a2,0x1
1c00912a:	963a                	add	a2,a2,a4
1c00912c:	8742                	mv	a4,a6
1c00912e:	0805                	addi	a6,a6,1
1c009130:	fec8e1e3          	bltu	a7,a2,1c009112 <pos_libc_prf+0x216>
1c009134:	00279593          	slli	a1,a5,0x2
1c009138:	01e7d513          	srli	a0,a5,0x1e
1c00913c:	00261693          	slli	a3,a2,0x2
1c009140:	97ae                	add	a5,a5,a1
1c009142:	8ec9                	or	a3,a3,a0
1c009144:	9636                	add	a2,a2,a3
1c009146:	00b7b5b3          	sltu	a1,a5,a1
1c00914a:	962e                	add	a2,a2,a1
1c00914c:	01f7d693          	srli	a3,a5,0x1f
1c009150:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c009154:	137d                	addi	t1,t1,-1
1c009156:	01c61763          	bne	a2,t3,1c009164 <pos_libc_prf+0x268>
1c00915a:	00170813          	addi	a6,a4,1
1c00915e:	0786                	slli	a5,a5,0x1
1c009160:	ffe6e613          	ori	a2,a3,-2
1c009164:	fbd847e3          	blt	a6,t4,1c009112 <pos_libc_prf+0x216>
1c009168:	07005363          	blez	a6,1c0091ce <pos_libc_prf+0x2d2>
1c00916c:	800008b7          	lui	a7,0x80000
1c009170:	4e15                	li	t3,5
1c009172:	fff8c893          	not	a7,a7
1c009176:	00278693          	addi	a3,a5,2
1c00917a:	00f6b7b3          	sltu	a5,a3,a5
1c00917e:	963e                	add	a2,a2,a5
1c009180:	03c657b3          	divu	a5,a2,t3
1c009184:	0036d713          	srli	a4,a3,0x3
1c009188:	187d                	addi	a6,a6,-1
1c00918a:	0305                	addi	t1,t1,1
1c00918c:	00279593          	slli	a1,a5,0x2
1c009190:	95be                	add	a1,a1,a5
1c009192:	8e0d                	sub	a2,a2,a1
1c009194:	0676                	slli	a2,a2,0x1d
1c009196:	8f51                	or	a4,a4,a2
1c009198:	03c75633          	divu	a2,a4,t3
1c00919c:	00361713          	slli	a4,a2,0x3
1c0091a0:	00561593          	slli	a1,a2,0x5
1c0091a4:	95ba                	add	a1,a1,a4
1c0091a6:	8e8d                	sub	a3,a3,a1
1c0091a8:	03c6d6b3          	divu	a3,a3,t3
1c0091ac:	8275                	srli	a2,a2,0x1d
1c0091ae:	963e                	add	a2,a2,a5
1c0091b0:	00e687b3          	add	a5,a3,a4
1c0091b4:	00d7b6b3          	sltu	a3,a5,a3
1c0091b8:	9636                	add	a2,a2,a3
1c0091ba:	01f7d713          	srli	a4,a5,0x1f
1c0091be:	0606                	slli	a2,a2,0x1
1c0091c0:	8e59                	or	a2,a2,a4
1c0091c2:	0786                	slli	a5,a5,0x1
1c0091c4:	187d                	addi	a6,a6,-1
1c0091c6:	fec8fae3          	bgeu	a7,a2,1c0091ba <pos_libc_prf+0x2be>
1c0091ca:	fb0046e3          	bgtz	a6,1c009176 <pos_libc_prf+0x27a>
1c0091ce:	4e11                	li	t3,4
1c0091d0:	01f61693          	slli	a3,a2,0x1f
1c0091d4:	0017d713          	srli	a4,a5,0x1
1c0091d8:	8f55                	or	a4,a4,a3
1c0091da:	8b85                	andi	a5,a5,1
1c0091dc:	00e78533          	add	a0,a5,a4
1c0091e0:	8205                	srli	a2,a2,0x1
1c0091e2:	00f537b3          	sltu	a5,a0,a5
1c0091e6:	00c788b3          	add	a7,a5,a2
1c0091ea:	0805                	addi	a6,a6,1
1c0091ec:	87aa                	mv	a5,a0
1c0091ee:	8646                	mv	a2,a7
1c0091f0:	ffc810e3          	bne	a6,t3,1c0091d0 <pos_libc_prf+0x2d4>
1c0091f4:	06700793          	li	a5,103
1c0091f8:	2a0acee3          	bltz	s5,1c009cb4 <pos_libc_prf+0xdb8>
1c0091fc:	28fd83e3          	beq	s11,a5,1c009c82 <pos_libc_prf+0xd86>
1c009200:	04700793          	li	a5,71
1c009204:	26fd8fe3          	beq	s11,a5,1c009c82 <pos_libc_prf+0xd86>
1c009208:	06600793          	li	a5,102
1c00920c:	2cfd85e3          	beq	s11,a5,1c009cd6 <pos_libc_prf+0xdda>
1c009210:	001a8813          	addi	a6,s5,1
1c009214:	47c1                	li	a5,16
1c009216:	0107d363          	bge	a5,a6,1c00921c <pos_libc_prf+0x320>
1c00921a:	4841                	li	a6,16
1c00921c:	187d                	addi	a6,a6,-1
1c00921e:	4601                	li	a2,0
1c009220:	4781                	li	a5,0
1c009222:	080006b7          	lui	a3,0x8000
1c009226:	4e15                	li	t3,5
1c009228:	5efd                	li	t4,-1
1c00922a:	00278713          	addi	a4,a5,2
1c00922e:	00f737b3          	sltu	a5,a4,a5
1c009232:	97b6                	add	a5,a5,a3
1c009234:	03c7dfb3          	divu	t6,a5,t3
1c009238:	00375593          	srli	a1,a4,0x3
1c00923c:	187d                	addi	a6,a6,-1
1c00923e:	002f9693          	slli	a3,t6,0x2
1c009242:	96fe                	add	a3,a3,t6
1c009244:	8f95                	sub	a5,a5,a3
1c009246:	07f6                	slli	a5,a5,0x1d
1c009248:	8ddd                	or	a1,a1,a5
1c00924a:	03c5d5b3          	divu	a1,a1,t3
1c00924e:	00359693          	slli	a3,a1,0x3
1c009252:	00559793          	slli	a5,a1,0x5
1c009256:	97b6                	add	a5,a5,a3
1c009258:	8f1d                	sub	a4,a4,a5
1c00925a:	03c757b3          	divu	a5,a4,t3
1c00925e:	81f5                	srli	a1,a1,0x1d
1c009260:	95fe                	add	a1,a1,t6
1c009262:	96be                	add	a3,a3,a5
1c009264:	00f6b733          	sltu	a4,a3,a5
1c009268:	972e                	add	a4,a4,a1
1c00926a:	01f71593          	slli	a1,a4,0x1f
1c00926e:	0016d793          	srli	a5,a3,0x1
1c009272:	8fcd                	or	a5,a5,a1
1c009274:	8a85                	andi	a3,a3,1
1c009276:	97b6                	add	a5,a5,a3
1c009278:	8305                	srli	a4,a4,0x1
1c00927a:	00d7b6b3          	sltu	a3,a5,a3
1c00927e:	96ba                	add	a3,a3,a4
1c009280:	fbd815e3          	bne	a6,t4,1c00922a <pos_libc_prf+0x32e>
1c009284:	97aa                	add	a5,a5,a0
1c009286:	96c6                	add	a3,a3,a7
1c009288:	00a7b533          	sltu	a0,a5,a0
1c00928c:	00d508b3          	add	a7,a0,a3
1c009290:	f00006b7          	lui	a3,0xf0000
1c009294:	0116f6b3          	and	a3,a3,a7
1c009298:	c2b5                	beqz	a3,1c0092fc <pos_libc_prf+0x400>
1c00929a:	00278813          	addi	a6,a5,2
1c00929e:	00f836b3          	sltu	a3,a6,a5
1c0092a2:	98b6                	add	a7,a7,a3
1c0092a4:	4e95                	li	t4,5
1c0092a6:	03d8de33          	divu	t3,a7,t4
1c0092aa:	00385693          	srli	a3,a6,0x3
1c0092ae:	0305                	addi	t1,t1,1
1c0092b0:	002e1513          	slli	a0,t3,0x2
1c0092b4:	9572                	add	a0,a0,t3
1c0092b6:	40a888b3          	sub	a7,a7,a0
1c0092ba:	01d89513          	slli	a0,a7,0x1d
1c0092be:	8ec9                	or	a3,a3,a0
1c0092c0:	03d6d6b3          	divu	a3,a3,t4
1c0092c4:	00369513          	slli	a0,a3,0x3
1c0092c8:	00569793          	slli	a5,a3,0x5
1c0092cc:	97aa                	add	a5,a5,a0
1c0092ce:	40f807b3          	sub	a5,a6,a5
1c0092d2:	03d7d7b3          	divu	a5,a5,t4
1c0092d6:	82f5                	srli	a3,a3,0x1d
1c0092d8:	96f2                	add	a3,a3,t3
1c0092da:	953e                	add	a0,a0,a5
1c0092dc:	00f537b3          	sltu	a5,a0,a5
1c0092e0:	96be                	add	a3,a3,a5
1c0092e2:	01f69813          	slli	a6,a3,0x1f
1c0092e6:	00155793          	srli	a5,a0,0x1
1c0092ea:	00f867b3          	or	a5,a6,a5
1c0092ee:	8905                	andi	a0,a0,1
1c0092f0:	97aa                	add	a5,a5,a0
1c0092f2:	8285                	srli	a3,a3,0x1
1c0092f4:	00a7b533          	sltu	a0,a5,a0
1c0092f8:	00d508b3          	add	a7,a0,a3
1c0092fc:	001f0993          	addi	s3,t5,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c009300:	06600693          	li	a3,102
1c009304:	884e                	mv	a6,s3
1c009306:	4edd8163          	beq	s11,a3,1c0097e8 <pos_libc_prf+0x8ec>
1c00930a:	00279693          	slli	a3,a5,0x2
1c00930e:	01e7d513          	srli	a0,a5,0x1e
1c009312:	00289e13          	slli	t3,a7,0x2
1c009316:	97b6                	add	a5,a5,a3
1c009318:	01c56e33          	or	t3,a0,t3
1c00931c:	00d7b833          	sltu	a6,a5,a3
1c009320:	011e06b3          	add	a3,t3,a7
1c009324:	9836                	add	a6,a6,a3
1c009326:	0806                	slli	a6,a6,0x1
1c009328:	01f7d693          	srli	a3,a5,0x1f
1c00932c:	0106e833          	or	a6,a3,a6
1c009330:	01c85693          	srli	a3,a6,0x1c
1c009334:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c009338:	4772                	lw	a4,28(sp)
1c00933a:	00af0023          	sb	a0,0(t5)
1c00933e:	00179513          	slli	a0,a5,0x1
1c009342:	47d2                	lw	a5,20(sp)
1c009344:	00d036b3          	snez	a3,a3
1c009348:	01576bb3          	or	s7,a4,s5
1c00934c:	00f87833          	and	a6,a6,a5
1c009350:	40d30333          	sub	t1,t1,a3
1c009354:	060b8463          	beqz	s7,1c0093bc <pos_libc_prf+0x4c0>
1c009358:	02e00793          	li	a5,46
1c00935c:	00ff00a3          	sb	a5,1(t5)
1c009360:	002f0993          	addi	s3,t5,2
1c009364:	040a8c63          	beqz	s5,1c0093bc <pos_libc_prf+0x4c0>
1c009368:	002a8793          	addi	a5,s5,2
1c00936c:	9f3e                	add	t5,t5,a5
1c00936e:	88ce                	mv	a7,s3
1c009370:	4ebd                	li	t4,15
1c009372:	03000f93          	li	t6,48
1c009376:	00251793          	slli	a5,a0,0x2
1c00937a:	01e55693          	srli	a3,a0,0x1e
1c00937e:	00281713          	slli	a4,a6,0x2
1c009382:	00a785b3          	add	a1,a5,a0
1c009386:	8f55                	or	a4,a4,a3
1c009388:	9742                	add	a4,a4,a6
1c00938a:	00f5b7b3          	sltu	a5,a1,a5
1c00938e:	97ba                	add	a5,a5,a4
1c009390:	0786                	slli	a5,a5,0x1
1c009392:	01f5d713          	srli	a4,a1,0x1f
1c009396:	8fd9                	or	a5,a5,a4
1c009398:	01c7d713          	srli	a4,a5,0x1c
1c00939c:	03070713          	addi	a4,a4,48
1c0093a0:	0885                	addi	a7,a7,1
1c0093a2:	53d05763          	blez	t4,1c0098d0 <pos_libc_prf+0x9d4>
1c0093a6:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c0093aa:	4752                	lw	a4,20(sp)
1c0093ac:	1efd                	addi	t4,t4,-1
1c0093ae:	00159513          	slli	a0,a1,0x1
1c0093b2:	00e7f833          	and	a6,a5,a4
1c0093b6:	fd1f10e3          	bne	t5,a7,1c009376 <pos_libc_prf+0x47a>
1c0093ba:	99d6                	add	s3,s3,s5
1c0093bc:	4e061c63          	bnez	a2,1c0098b4 <pos_libc_prf+0x9b8>
1c0093c0:	fdfdf793          	andi	a5,s11,-33
1c0093c4:	04500693          	li	a3,69
1c0093c8:	00d781e3          	beq	a5,a3,1c009bca <pos_libc_prf+0xcce>
1c0093cc:	105c                	addi	a5,sp,36
1c0093ce:	00098023          	sb	zero,0(s3) # 10000 <__CTOR_LIST__-0x1bff0004>
1c0093d2:	40f989b3          	sub	s3,s3,a5
1c0093d6:	aa05                	j	1c009506 <pos_libc_prf+0x60a>
1c0093d8:	b80c0fe3          	beqz	s8,1c008f76 <pos_libc_prf+0x7a>
1c0093dc:	b931                	j	1c008ff8 <pos_libc_prf+0xfc>
1c0093de:	016c0863          	beq	s8,s6,1c0093ee <pos_libc_prf+0x4f2>
1c0093e2:	c15c1be3          	bne	s8,s5,1c008ff8 <pos_libc_prf+0xfc>
1c0093e6:	03000913          	li	s2,48
1c0093ea:	8da6                	mv	s11,s1
1c0093ec:	b139                	j	1c008ffa <pos_libc_prf+0xfe>
1c0093ee:	4785                	li	a5,1
1c0093f0:	c03e                	sw	a5,0(sp)
1c0093f2:	8da6                	mv	s11,s1
1c0093f4:	b119                	j	1c008ffa <pos_libc_prf+0xfe>
1c0093f6:	4785                	li	a5,1
1c0093f8:	c23e                	sw	a5,4(sp)
1c0093fa:	8da6                	mv	s11,s1
1c0093fc:	befd                	j	1c008ffa <pos_libc_prf+0xfe>
1c0093fe:	4785                	li	a5,1
1c009400:	c43e                	sw	a5,8(sp)
1c009402:	8da6                	mv	s11,s1
1c009404:	bedd                	j	1c008ffa <pos_libc_prf+0xfe>
1c009406:	0b85                	addi	s7,s7,1
1c009408:	002a1793          	slli	a5,s4,0x2
1c00940c:	97d2                	add	a5,a5,s4
1c00940e:	0786                	slli	a5,a5,0x1
1c009410:	97ee                	add	a5,a5,s11
1c009412:	000bcd83          	lbu	s11,0(s7)
1c009416:	fd078a13          	addi	s4,a5,-48
1c00941a:	8662                	mv	a2,s8
1c00941c:	fd0d8793          	addi	a5,s11,-48
1c009420:	8c5e                	mv	s8,s7
1c009422:	fef572e3          	bgeu	a0,a5,1c009406 <pos_libc_prf+0x50a>
1c009426:	0609                	addi	a2,a2,2
1c009428:	0c800793          	li	a5,200
1c00942c:	c147f1e3          	bgeu	a5,s4,1c00902e <pos_libc_prf+0x132>
1c009430:	0c800a13          	li	s4,200
1c009434:	beed                	j	1c00902e <pos_libc_prf+0x132>
1c009436:	0c800793          	li	a5,200
1c00943a:	b3b7dae3          	bge	a5,s11,1c008f6e <pos_libc_prf+0x72>
1c00943e:	547d                	li	s0,-1
1c009440:	be1d                	j	1c008f76 <pos_libc_prf+0x7a>
1c009442:	47b2                	lw	a5,12(sp)
1c009444:	0007aa03          	lw	s4,0(a5)
1c009448:	00478693          	addi	a3,a5,4
1c00944c:	000a5663          	bgez	s4,1c009458 <pos_libc_prf+0x55c>
1c009450:	4785                	li	a5,1
1c009452:	41400a33          	neg	s4,s4
1c009456:	c03e                	sw	a5,0(sp)
1c009458:	000bcd83          	lbu	s11,0(s7)
1c00945c:	c636                	sw	a3,12(sp)
1c00945e:	002c0613          	addi	a2,s8,2
1c009462:	b7d9                	j	1c009428 <pos_libc_prf+0x52c>
1c009464:	b00d89e3          	beqz	s11,1c008f76 <pos_libc_prf+0x7a>
1c009468:	b619                	j	1c008f6e <pos_libc_prf+0x72>
1c00946a:	06400793          	li	a5,100
1c00946e:	4afd8363          	beq	s11,a5,1c009914 <pos_libc_prf+0xa18>
1c009472:	19b7d963          	bge	a5,s11,1c009604 <pos_libc_prf+0x708>
1c009476:	f9bd8793          	addi	a5,s11,-101
1c00947a:	4689                	li	a3,2
1c00947c:	aef6e9e3          	bltu	a3,a5,1c008f6e <pos_libc_prf+0x72>
1c009480:	47b2                	lw	a5,12(sp)
1c009482:	7ff00893          	li	a7,2047
1c009486:	00778b13          	addi	s6,a5,7
1c00948a:	ff8b7b13          	andi	s6,s6,-8
1c00948e:	004b2783          	lw	a5,4(s6)
1c009492:	000b2603          	lw	a2,0(s6)
1c009496:	0b21                	addi	s6,s6,8
1c009498:	00b79693          	slli	a3,a5,0xb
1c00949c:	01565813          	srli	a6,a2,0x15
1c0094a0:	0147d513          	srli	a0,a5,0x14
1c0094a4:	00d866b3          	or	a3,a6,a3
1c0094a8:	0686                	slli	a3,a3,0x1
1c0094aa:	7ff57813          	andi	a6,a0,2047
1c0094ae:	00b61313          	slli	t1,a2,0xb
1c0094b2:	0016d513          	srli	a0,a3,0x1
1c0094b6:	86be                	mv	a3,a5
1c0094b8:	c11818e3          	bne	a6,a7,1c0090c8 <pos_libc_prf+0x1cc>
1c0094bc:	105c                	addi	a5,sp,36
1c0094be:	0006d863          	bgez	a3,1c0094ce <pos_libc_prf+0x5d2>
1c0094c2:	02d00793          	li	a5,45
1c0094c6:	02f10223          	sb	a5,36(sp)
1c0094ca:	02510793          	addi	a5,sp,37
1c0094ce:	00a36633          	or	a2,t1,a0
1c0094d2:	fbfd8593          	addi	a1,s11,-65
1c0094d6:	00378993          	addi	s3,a5,3
1c0094da:	46e5                	li	a3,25
1c0094dc:	0c0612e3          	bnez	a2,1c009da0 <pos_libc_prf+0xea4>
1c0094e0:	10b6e5e3          	bltu	a3,a1,1c009dea <pos_libc_prf+0xeee>
1c0094e4:	04900693          	li	a3,73
1c0094e8:	00d78023          	sb	a3,0(a5)
1c0094ec:	04e00693          	li	a3,78
1c0094f0:	00d780a3          	sb	a3,1(a5)
1c0094f4:	04600693          	li	a3,70
1c0094f8:	00d78123          	sb	a3,2(a5)
1c0094fc:	000781a3          	sb	zero,3(a5)
1c009500:	105c                	addi	a5,sp,36
1c009502:	40f989b3          	sub	s3,s3,a5
1c009506:	47a2                	lw	a5,8(sp)
1c009508:	4712                	lw	a4,4(sp)
1c00950a:	8fd9                	or	a5,a5,a4
1c00950c:	ce3e                	sw	a5,28(sp)
1c00950e:	5e079b63          	bnez	a5,1c009b04 <pos_libc_prf+0xc08>
1c009512:	02414683          	lbu	a3,36(sp)
1c009516:	02d00793          	li	a5,45
1c00951a:	5ef68563          	beq	a3,a5,1c009b04 <pos_libc_prf+0xc08>
1c00951e:	0c800793          	li	a5,200
1c009522:	0d37d863          	bge	a5,s3,1c0095f2 <pos_libc_prf+0x6f6>
1c009526:	547d                	li	s0,-1
1c009528:	b4b9                	j	1c008f76 <pos_libc_prf+0x7a>
1c00952a:	07000793          	li	a5,112
1c00952e:	46fd8f63          	beq	s11,a5,1c0099ac <pos_libc_prf+0xab0>
1c009532:	1bb7d663          	bge	a5,s11,1c0096de <pos_libc_prf+0x7e2>
1c009536:	07500793          	li	a5,117
1c00953a:	52fd8763          	beq	s11,a5,1c009a68 <pos_libc_prf+0xb6c>
1c00953e:	07800793          	li	a5,120
1c009542:	16fd9163          	bne	s11,a5,1c0096a4 <pos_libc_prf+0x7a8>
1c009546:	47b2                	lw	a5,12(sp)
1c009548:	1054                	addi	a3,sp,36
1c00954a:	4390                	lw	a2,0(a5)
1c00954c:	00478b13          	addi	s6,a5,4
1c009550:	47f2                	lw	a5,28(sp)
1c009552:	28079163          	bnez	a5,1c0097d4 <pos_libc_prf+0x8d8>
1c009556:	87b6                	mv	a5,a3
1c009558:	4ea5                	li	t4,9
1c00955a:	4e3d                	li	t3,15
1c00955c:	a039                	j	1c00956a <pos_libc_prf+0x66e>
1c00955e:	ff098fa3          	sb	a6,-1(s3)
1c009562:	02ce7663          	bgeu	t3,a2,1c00958e <pos_libc_prf+0x692>
1c009566:	862a                	mv	a2,a0
1c009568:	87ce                	mv	a5,s3
1c00956a:	00f67593          	andi	a1,a2,15
1c00956e:	00178993          	addi	s3,a5,1
1c009572:	05758813          	addi	a6,a1,87
1c009576:	03058713          	addi	a4,a1,48
1c00957a:	00465513          	srli	a0,a2,0x4
1c00957e:	febee0e3          	bltu	t4,a1,1c00955e <pos_libc_prf+0x662>
1c009582:	00e78023          	sb	a4,0(a5)
1c009586:	00178993          	addi	s3,a5,1
1c00958a:	fcce6ee3          	bltu	t3,a2,1c009566 <pos_libc_prf+0x66a>
1c00958e:	40d98633          	sub	a2,s3,a3
1c009592:	01565c63          	bge	a2,s5,1c0095aa <pos_libc_prf+0x6ae>
1c009596:	03000513          	li	a0,48
1c00959a:	87ce                	mv	a5,s3
1c00959c:	0985                	addi	s3,s3,1
1c00959e:	40d98733          	sub	a4,s3,a3
1c0095a2:	fea98fa3          	sb	a0,-1(s3)
1c0095a6:	ff574ae3          	blt	a4,s5,1c00959a <pos_libc_prf+0x69e>
1c0095aa:	00098023          	sb	zero,0(s3)
1c0095ae:	00f6fe63          	bgeu	a3,a5,1c0095ca <pos_libc_prf+0x6ce>
1c0095b2:	0006c603          	lbu	a2,0(a3)
1c0095b6:	0007c703          	lbu	a4,0(a5)
1c0095ba:	0685                	addi	a3,a3,1
1c0095bc:	00c78023          	sb	a2,0(a5)
1c0095c0:	fee68fa3          	sb	a4,-1(a3)
1c0095c4:	17fd                	addi	a5,a5,-1
1c0095c6:	fef6e6e3          	bltu	a3,a5,1c0095b2 <pos_libc_prf+0x6b6>
1c0095ca:	05800793          	li	a5,88
1c0095ce:	66fd8463          	beq	s11,a5,1c009c36 <pos_libc_prf+0xd3a>
1c0095d2:	105c                	addi	a5,sp,36
1c0095d4:	40f989b3          	sub	s3,s3,a5
1c0095d8:	47f2                	lw	a5,28(sp)
1c0095da:	c399                	beqz	a5,1c0095e0 <pos_libc_prf+0x6e4>
1c0095dc:	4789                	li	a5,2
1c0095de:	ce3e                	sw	a5,28(sp)
1c0095e0:	57fd                	li	a5,-1
1c0095e2:	f2fa8ee3          	beq	s5,a5,1c00951e <pos_libc_prf+0x622>
1c0095e6:	0c800793          	li	a5,200
1c0095ea:	e537cae3          	blt	a5,s3,1c00943e <pos_libc_prf+0x542>
1c0095ee:	02000913          	li	s2,32
1c0095f2:	00198613          	addi	a2,s3,1
1c0095f6:	0349c963          	blt	s3,s4,1c009628 <pos_libc_prf+0x72c>
1c0095fa:	c65a                	sw	s6,12(sp)
1c0095fc:	8a4e                	mv	s4,s3
1c0095fe:	1a0a1663          	bnez	s4,1c0097aa <pos_libc_prf+0x8ae>
1c009602:	b2b5                	j	1c008f6e <pos_libc_prf+0x72>
1c009604:	06300793          	li	a5,99
1c009608:	96fd93e3          	bne	s11,a5,1c008f6e <pos_libc_prf+0x72>
1c00960c:	4732                	lw	a4,12(sp)
1c00960e:	020102a3          	sb	zero,37(sp)
1c009612:	4785                	li	a5,1
1c009614:	4314                	lw	a3,0(a4)
1c009616:	00470b13          	addi	s6,a4,4
1c00961a:	02d10223          	sb	a3,36(sp)
1c00961e:	1947d463          	bge	a5,s4,1c0097a6 <pos_libc_prf+0x8aa>
1c009622:	4609                	li	a2,2
1c009624:	4985                	li	s3,1
1c009626:	ce02                	sw	zero,28(sp)
1c009628:	4782                	lw	a5,0(sp)
1c00962a:	4e078463          	beqz	a5,1c009b12 <pos_libc_prf+0xc16>
1c00962e:	413a07b3          	sub	a5,s4,s3
1c009632:	4585                	li	a1,1
1c009634:	0149d363          	bge	s3,s4,1c00963a <pos_libc_prf+0x73e>
1c009638:	85be                	mv	a1,a5
1c00963a:	17fd                	addi	a5,a5,-1
1c00963c:	0037b793          	sltiu	a5,a5,3
1c009640:	eb95                	bnez	a5,1c009674 <pos_libc_prf+0x778>
1c009642:	0349d963          	bge	s3,s4,1c009674 <pos_libc_prf+0x778>
1c009646:	105c                	addi	a5,sp,36
1c009648:	97ce                	add	a5,a5,s3
1c00964a:	ffc5f613          	andi	a2,a1,-4
1c00964e:	963e                	add	a2,a2,a5
1c009650:	02000693          	li	a3,32
1c009654:	00d78023          	sb	a3,0(a5)
1c009658:	00d780a3          	sb	a3,1(a5)
1c00965c:	00d78123          	sb	a3,2(a5)
1c009660:	00d781a3          	sb	a3,3(a5)
1c009664:	0791                	addi	a5,a5,4
1c009666:	fef617e3          	bne	a2,a5,1c009654 <pos_libc_prf+0x758>
1c00966a:	ffc5f793          	andi	a5,a1,-4
1c00966e:	99be                	add	s3,s3,a5
1c009670:	02b78663          	beq	a5,a1,1c00969c <pos_libc_prf+0x7a0>
1c009674:	199c                	addi	a5,sp,240
1c009676:	97ce                	add	a5,a5,s3
1c009678:	02000693          	li	a3,32
1c00967c:	f2d78a23          	sb	a3,-204(a5)
1c009680:	00198793          	addi	a5,s3,1
1c009684:	0147dc63          	bge	a5,s4,1c00969c <pos_libc_prf+0x7a0>
1c009688:	1998                	addi	a4,sp,240
1c00968a:	97ba                	add	a5,a5,a4
1c00968c:	f2d78a23          	sb	a3,-204(a5)
1c009690:	0989                	addi	s3,s3,2
1c009692:	0149d563          	bge	s3,s4,1c00969c <pos_libc_prf+0x7a0>
1c009696:	99ba                	add	s3,s3,a4
1c009698:	f2d98a23          	sb	a3,-204(s3)
1c00969c:	c65a                	sw	s6,12(sp)
1c00969e:	100a1663          	bnez	s4,1c0097aa <pos_libc_prf+0x8ae>
1c0096a2:	b0f1                	j	1c008f6e <pos_libc_prf+0x72>
1c0096a4:	07300793          	li	a5,115
1c0096a8:	d8fd97e3          	bne	s11,a5,1c009436 <pos_libc_prf+0x53a>
1c0096ac:	47b2                	lw	a5,12(sp)
1c0096ae:	4981                	li	s3,0
1c0096b0:	0c800693          	li	a3,200
1c0096b4:	438c                	lw	a1,0(a5)
1c0096b6:	00478b13          	addi	s6,a5,4
1c0096ba:	a021                	j	1c0096c2 <pos_libc_prf+0x7c6>
1c0096bc:	0985                	addi	s3,s3,1
1c0096be:	6ad98163          	beq	s3,a3,1c009d60 <pos_libc_prf+0xe64>
1c0096c2:	013587b3          	add	a5,a1,s3
1c0096c6:	0007c783          	lbu	a5,0(a5)
1c0096ca:	fbed                	bnez	a5,1c0096bc <pos_libc_prf+0x7c0>
1c0096cc:	000ac563          	bltz	s5,1c0096d6 <pos_libc_prf+0x7da>
1c0096d0:	013ad363          	bge	s5,s3,1c0096d6 <pos_libc_prf+0x7da>
1c0096d4:	89d6                	mv	s3,s5
1c0096d6:	5a099163          	bnez	s3,1c009c78 <pos_libc_prf+0xd7c>
1c0096da:	c65a                	sw	s6,12(sp)
1c0096dc:	b849                	j	1c008f6e <pos_libc_prf+0x72>
1c0096de:	06e00793          	li	a5,110
1c0096e2:	36fd8c63          	beq	s11,a5,1c009a5a <pos_libc_prf+0xb5e>
1c0096e6:	06f00793          	li	a5,111
1c0096ea:	88fd92e3          	bne	s11,a5,1c008f6e <pos_libc_prf+0x72>
1c0096ee:	47b2                	lw	a5,12(sp)
1c0096f0:	4390                	lw	a2,0(a5)
1c0096f2:	00478b13          	addi	s6,a5,4
1c0096f6:	47f2                	lw	a5,28(sp)
1c0096f8:	c7f5                	beqz	a5,1c0097e4 <pos_libc_prf+0x8e8>
1c0096fa:	03000793          	li	a5,48
1c0096fe:	02f10223          	sb	a5,36(sp)
1c009702:	02510693          	addi	a3,sp,37
1c009706:	60060b63          	beqz	a2,1c009d1c <pos_libc_prf+0xe20>
1c00970a:	89b6                	mv	s3,a3
1c00970c:	481d                	li	a6,7
1c00970e:	00767713          	andi	a4,a2,7
1c009712:	03070713          	addi	a4,a4,48
1c009716:	85b2                	mv	a1,a2
1c009718:	00e98023          	sb	a4,0(s3)
1c00971c:	87ce                	mv	a5,s3
1c00971e:	820d                	srli	a2,a2,0x3
1c009720:	0985                	addi	s3,s3,1
1c009722:	feb866e3          	bltu	a6,a1,1c00970e <pos_libc_prf+0x812>
1c009726:	40d98633          	sub	a2,s3,a3
1c00972a:	01565c63          	bge	a2,s5,1c009742 <pos_libc_prf+0x846>
1c00972e:	03000593          	li	a1,48
1c009732:	87ce                	mv	a5,s3
1c009734:	0985                	addi	s3,s3,1
1c009736:	40d98733          	sub	a4,s3,a3
1c00973a:	feb98fa3          	sb	a1,-1(s3)
1c00973e:	ff574ae3          	blt	a4,s5,1c009732 <pos_libc_prf+0x836>
1c009742:	00098023          	sb	zero,0(s3)
1c009746:	00f6fe63          	bgeu	a3,a5,1c009762 <pos_libc_prf+0x866>
1c00974a:	0006c603          	lbu	a2,0(a3)
1c00974e:	0007c703          	lbu	a4,0(a5)
1c009752:	0685                	addi	a3,a3,1
1c009754:	00c78023          	sb	a2,0(a5)
1c009758:	fee68fa3          	sb	a4,-1(a3)
1c00975c:	17fd                	addi	a5,a5,-1
1c00975e:	fef6e6e3          	bltu	a3,a5,1c00974a <pos_libc_prf+0x84e>
1c009762:	1058                	addi	a4,sp,36
1c009764:	57fd                	li	a5,-1
1c009766:	40e989b3          	sub	s3,s3,a4
1c00976a:	36fa8763          	beq	s5,a5,1c009ad8 <pos_libc_prf+0xbdc>
1c00976e:	0c800793          	li	a5,200
1c009772:	cd37c6e3          	blt	a5,s3,1c00943e <pos_libc_prf+0x542>
1c009776:	ce02                	sw	zero,28(sp)
1c009778:	bd9d                	j	1c0095ee <pos_libc_prf+0x6f2>
1c00977a:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00977e:	02a00793          	li	a5,42
1c009782:	00160693          	addi	a3,a2,1
1c009786:	14f59b63          	bne	a1,a5,1c0098dc <pos_libc_prf+0x9e0>
1c00978a:	47b2                	lw	a5,12(sp)
1c00978c:	00164d83          	lbu	s11,1(a2)
1c009790:	0609                	addi	a2,a2,2
1c009792:	0007aa83          	lw	s5,0(a5)
1c009796:	0791                	addi	a5,a5,4
1c009798:	c63e                	sw	a5,12(sp)
1c00979a:	0c800793          	li	a5,200
1c00979e:	8957dde3          	bge	a5,s5,1c009038 <pos_libc_prf+0x13c>
1c0097a2:	5afd                	li	s5,-1
1c0097a4:	b851                	j	1c009038 <pos_libc_prf+0x13c>
1c0097a6:	c65a                	sw	s6,12(sp)
1c0097a8:	4a05                	li	s4,1
1c0097aa:	02410913          	addi	s2,sp,36
1c0097ae:	59fd                	li	s3,-1
1c0097b0:	41240ab3          	sub	s5,s0,s2
1c0097b4:	9a4a                	add	s4,s4,s2
1c0097b6:	a029                	j	1c0097c0 <pos_libc_prf+0x8c4>
1c0097b8:	012a8433          	add	s0,s5,s2
1c0097bc:	fb490963          	beq	s2,s4,1c008f6e <pos_libc_prf+0x72>
1c0097c0:	00094503          	lbu	a0,0(s2)
1c0097c4:	85a6                	mv	a1,s1
1c0097c6:	0905                	addi	s2,s2,1
1c0097c8:	9c82                	jalr	s9
1c0097ca:	ff3517e3          	bne	a0,s3,1c0097b8 <pos_libc_prf+0x8bc>
1c0097ce:	547d                	li	s0,-1
1c0097d0:	fa6ff06f          	j	1c008f76 <pos_libc_prf+0x7a>
1c0097d4:	77e1                	lui	a5,0xffff8
1c0097d6:	8307c793          	xori	a5,a5,-2000
1c0097da:	02f11223          	sh	a5,36(sp)
1c0097de:	02610693          	addi	a3,sp,38
1c0097e2:	bb95                	j	1c009556 <pos_libc_prf+0x65a>
1c0097e4:	1054                	addi	a3,sp,36
1c0097e6:	b715                	j	1c00970a <pos_libc_prf+0x80e>
1c0097e8:	5c605a63          	blez	t1,1c009dbc <pos_libc_prf+0xec0>
1c0097ec:	006f09b3          	add	s3,t5,t1
1c0097f0:	4541                	li	a0,16
1c0097f2:	03000e13          	li	t3,48
1c0097f6:	00279713          	slli	a4,a5,0x2
1c0097fa:	01e7d593          	srli	a1,a5,0x1e
1c0097fe:	00289693          	slli	a3,a7,0x2
1c009802:	00f70333          	add	t1,a4,a5
1c009806:	8ecd                	or	a3,a3,a1
1c009808:	96c6                	add	a3,a3,a7
1c00980a:	00e33733          	sltu	a4,t1,a4
1c00980e:	9736                	add	a4,a4,a3
1c009810:	0706                	slli	a4,a4,0x1
1c009812:	01f35693          	srli	a3,t1,0x1f
1c009816:	8f55                	or	a4,a4,a3
1c009818:	01c75693          	srli	a3,a4,0x1c
1c00981c:	03068693          	addi	a3,a3,48
1c009820:	4ea05463          	blez	a0,1c009d08 <pos_libc_prf+0xe0c>
1c009824:	fed80fa3          	sb	a3,-1(a6)
1c009828:	46d2                	lw	a3,20(sp)
1c00982a:	157d                	addi	a0,a0,-1
1c00982c:	00131793          	slli	a5,t1,0x1
1c009830:	00d778b3          	and	a7,a4,a3
1c009834:	4d099e63          	bne	s3,a6,1c009d10 <pos_libc_prf+0xe14>
1c009838:	4301                	li	t1,0
1c00983a:	4772                	lw	a4,28(sp)
1c00983c:	01576bb3          	or	s7,a4,s5
1c009840:	060b8863          	beqz	s7,1c0098b0 <pos_libc_prf+0x9b4>
1c009844:	02e00693          	li	a3,46
1c009848:	00d98023          	sb	a3,0(s3)
1c00984c:	00198e93          	addi	t4,s3,1
1c009850:	5c0a8763          	beqz	s5,1c009e1e <pos_libc_prf+0xf22>
1c009854:	001a8693          	addi	a3,s5,1
1c009858:	99b6                	add	s3,s3,a3
1c00985a:	8876                	mv	a6,t4
1c00985c:	03000f13          	li	t5,48
1c009860:	0805                	addi	a6,a6,1
1c009862:	4a031963          	bnez	t1,1c009d14 <pos_libc_prf+0xe18>
1c009866:	00279713          	slli	a4,a5,0x2
1c00986a:	01e7d593          	srli	a1,a5,0x1e
1c00986e:	00289693          	slli	a3,a7,0x2
1c009872:	00f70e33          	add	t3,a4,a5
1c009876:	8ecd                	or	a3,a3,a1
1c009878:	96c6                	add	a3,a3,a7
1c00987a:	00ee3733          	sltu	a4,t3,a4
1c00987e:	9736                	add	a4,a4,a3
1c009880:	0706                	slli	a4,a4,0x1
1c009882:	01fe5693          	srli	a3,t3,0x1f
1c009886:	8f55                	or	a4,a4,a3
1c009888:	01c75593          	srli	a1,a4,0x1c
1c00988c:	03000693          	li	a3,48
1c009890:	00a05a63          	blez	a0,1c0098a4 <pos_libc_prf+0x9a8>
1c009894:	03058693          	addi	a3,a1,48
1c009898:	45d2                	lw	a1,20(sp)
1c00989a:	157d                	addi	a0,a0,-1
1c00989c:	001e1793          	slli	a5,t3,0x1
1c0098a0:	00b778b3          	and	a7,a4,a1
1c0098a4:	fed80fa3          	sb	a3,-1(a6)
1c0098a8:	fb099ce3          	bne	s3,a6,1c009860 <pos_libc_prf+0x964>
1c0098ac:	015e89b3          	add	s3,t4,s5
1c0098b0:	b0060ee3          	beqz	a2,1c0093cc <pos_libc_prf+0x4d0>
1c0098b4:	03000613          	li	a2,48
1c0098b8:	fff9c783          	lbu	a5,-1(s3)
1c0098bc:	86ce                	mv	a3,s3
1c0098be:	19fd                	addi	s3,s3,-1
1c0098c0:	fec78ce3          	beq	a5,a2,1c0098b8 <pos_libc_prf+0x9bc>
1c0098c4:	02e00613          	li	a2,46
1c0098c8:	aec78ce3          	beq	a5,a2,1c0093c0 <pos_libc_prf+0x4c4>
1c0098cc:	89b6                	mv	s3,a3
1c0098ce:	bccd                	j	1c0093c0 <pos_libc_prf+0x4c4>
1c0098d0:	fff88fa3          	sb	t6,-1(a7)
1c0098d4:	ab1f11e3          	bne	t5,a7,1c009376 <pos_libc_prf+0x47a>
1c0098d8:	99d6                	add	s3,s3,s5
1c0098da:	b4cd                	j	1c0093bc <pos_libc_prf+0x4c0>
1c0098dc:	fd058713          	addi	a4,a1,-48
1c0098e0:	47a5                	li	a5,9
1c0098e2:	8dae                	mv	s11,a1
1c0098e4:	4a81                	li	s5,0
1c0098e6:	4525                	li	a0,9
1c0098e8:	00e7f463          	bgeu	a5,a4,1c0098f0 <pos_libc_prf+0x9f4>
1c0098ec:	a199                	j	1c009d32 <pos_libc_prf+0xe36>
1c0098ee:	0685                	addi	a3,a3,1
1c0098f0:	002a9793          	slli	a5,s5,0x2
1c0098f4:	97d6                	add	a5,a5,s5
1c0098f6:	0786                	slli	a5,a5,0x1
1c0098f8:	97ee                	add	a5,a5,s11
1c0098fa:	0006cd83          	lbu	s11,0(a3)
1c0098fe:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c009902:	8732                	mv	a4,a2
1c009904:	fd0d8793          	addi	a5,s11,-48
1c009908:	8636                	mv	a2,a3
1c00990a:	fef572e3          	bgeu	a0,a5,1c0098ee <pos_libc_prf+0x9f2>
1c00990e:	00270613          	addi	a2,a4,2
1c009912:	b561                	j	1c00979a <pos_libc_prf+0x89e>
1c009914:	47b2                	lw	a5,12(sp)
1c009916:	0007a303          	lw	t1,0(a5)
1c00991a:	00478b13          	addi	s6,a5,4
1c00991e:	2e034263          	bltz	t1,1c009c02 <pos_libc_prf+0xd06>
1c009922:	47a2                	lw	a5,8(sp)
1c009924:	861a                	mv	a2,t1
1c009926:	3c078663          	beqz	a5,1c009cf2 <pos_libc_prf+0xdf6>
1c00992a:	02b00793          	li	a5,43
1c00992e:	02f10223          	sb	a5,36(sp)
1c009932:	02510693          	addi	a3,sp,37
1c009936:	89b6                	mv	s3,a3
1c009938:	4529                	li	a0,10
1c00993a:	48a5                	li	a7,9
1c00993c:	02a67733          	remu	a4,a2,a0
1c009940:	87ce                	mv	a5,s3
1c009942:	0985                	addi	s3,s3,1
1c009944:	85b2                	mv	a1,a2
1c009946:	03070713          	addi	a4,a4,48
1c00994a:	fee98fa3          	sb	a4,-1(s3)
1c00994e:	02a65633          	divu	a2,a2,a0
1c009952:	feb8e5e3          	bltu	a7,a1,1c00993c <pos_libc_prf+0xa40>
1c009956:	40d98633          	sub	a2,s3,a3
1c00995a:	01565c63          	bge	a2,s5,1c009972 <pos_libc_prf+0xa76>
1c00995e:	03000593          	li	a1,48
1c009962:	87ce                	mv	a5,s3
1c009964:	0985                	addi	s3,s3,1
1c009966:	40d98733          	sub	a4,s3,a3
1c00996a:	feb98fa3          	sb	a1,-1(s3)
1c00996e:	ff574ae3          	blt	a4,s5,1c009962 <pos_libc_prf+0xa66>
1c009972:	00098023          	sb	zero,0(s3)
1c009976:	00f6fe63          	bgeu	a3,a5,1c009992 <pos_libc_prf+0xa96>
1c00997a:	0006c603          	lbu	a2,0(a3)
1c00997e:	0007c703          	lbu	a4,0(a5)
1c009982:	0685                	addi	a3,a3,1
1c009984:	00c78023          	sb	a2,0(a5)
1c009988:	fee68fa3          	sb	a4,-1(a3)
1c00998c:	17fd                	addi	a5,a5,-1
1c00998e:	fef6e6e3          	bltu	a3,a5,1c00997a <pos_libc_prf+0xa7e>
1c009992:	4712                	lw	a4,4(sp)
1c009994:	47a2                	lw	a5,8(sp)
1c009996:	8fd9                	or	a5,a5,a4
1c009998:	ce3e                	sw	a5,28(sp)
1c00999a:	1058                	addi	a4,sp,36
1c00999c:	40e989b3          	sub	s3,s3,a4
1c0099a0:	c40790e3          	bnez	a5,1c0095e0 <pos_libc_prf+0x6e4>
1c0099a4:	01f35793          	srli	a5,t1,0x1f
1c0099a8:	ce3e                	sw	a5,28(sp)
1c0099aa:	b91d                	j	1c0095e0 <pos_libc_prf+0x6e4>
1c0099ac:	47b2                	lw	a5,12(sp)
1c0099ae:	02610613          	addi	a2,sp,38
1c0099b2:	4ea5                	li	t4,9
1c0099b4:	438c                	lw	a1,0(a5)
1c0099b6:	00478b13          	addi	s6,a5,4
1c0099ba:	77e1                	lui	a5,0xffff8
1c0099bc:	8307c793          	xori	a5,a5,-2000
1c0099c0:	02f11223          	sh	a5,36(sp)
1c0099c4:	4e3d                	li	t3,15
1c0099c6:	87b2                	mv	a5,a2
1c0099c8:	a039                	j	1c0099d6 <pos_libc_prf+0xada>
1c0099ca:	ff168fa3          	sb	a7,-1(a3)
1c0099ce:	02be7663          	bgeu	t3,a1,1c0099fa <pos_libc_prf+0xafe>
1c0099d2:	85c2                	mv	a1,a6
1c0099d4:	87b6                	mv	a5,a3
1c0099d6:	00f5f513          	andi	a0,a1,15
1c0099da:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c0099de:	05750893          	addi	a7,a0,87
1c0099e2:	03050713          	addi	a4,a0,48
1c0099e6:	0045d813          	srli	a6,a1,0x4
1c0099ea:	feaee0e3          	bltu	t4,a0,1c0099ca <pos_libc_prf+0xace>
1c0099ee:	00e78023          	sb	a4,0(a5)
1c0099f2:	00178693          	addi	a3,a5,1
1c0099f6:	fcbe6ee3          	bltu	t3,a1,1c0099d2 <pos_libc_prf+0xad6>
1c0099fa:	40c689b3          	sub	s3,a3,a2
1c0099fe:	459d                	li	a1,7
1c009a00:	0135cc63          	blt	a1,s3,1c009a18 <pos_libc_prf+0xb1c>
1c009a04:	03000513          	li	a0,48
1c009a08:	87b6                	mv	a5,a3
1c009a0a:	0685                	addi	a3,a3,1
1c009a0c:	40c689b3          	sub	s3,a3,a2
1c009a10:	fea68fa3          	sb	a0,-1(a3)
1c009a14:	ff35dae3          	bge	a1,s3,1c009a08 <pos_libc_prf+0xb0c>
1c009a18:	00068023          	sb	zero,0(a3)
1c009a1c:	86b2                	mv	a3,a2
1c009a1e:	00f67e63          	bgeu	a2,a5,1c009a3a <pos_libc_prf+0xb3e>
1c009a22:	0006c603          	lbu	a2,0(a3)
1c009a26:	0007c703          	lbu	a4,0(a5)
1c009a2a:	0685                	addi	a3,a3,1
1c009a2c:	00c78023          	sb	a2,0(a5)
1c009a30:	fee68fa3          	sb	a4,-1(a3)
1c009a34:	17fd                	addi	a5,a5,-1
1c009a36:	fef6e6e3          	bltu	a3,a5,1c009a22 <pos_libc_prf+0xb26>
1c009a3a:	57fd                	li	a5,-1
1c009a3c:	0989                	addi	s3,s3,2
1c009a3e:	22fa8663          	beq	s5,a5,1c009c6a <pos_libc_prf+0xd6e>
1c009a42:	0c800793          	li	a5,200
1c009a46:	9f37cce3          	blt	a5,s3,1c00943e <pos_libc_prf+0x542>
1c009a4a:	02000913          	li	s2,32
1c009a4e:	0b49d863          	bge	s3,s4,1c009afe <pos_libc_prf+0xc02>
1c009a52:	00198613          	addi	a2,s3,1
1c009a56:	ce02                	sw	zero,28(sp)
1c009a58:	bec1                	j	1c009628 <pos_libc_prf+0x72c>
1c009a5a:	4732                	lw	a4,12(sp)
1c009a5c:	431c                	lw	a5,0(a4)
1c009a5e:	0711                	addi	a4,a4,4
1c009a60:	c63a                	sw	a4,12(sp)
1c009a62:	c380                	sw	s0,0(a5)
1c009a64:	d0aff06f          	j	1c008f6e <pos_libc_prf+0x72>
1c009a68:	47b2                	lw	a5,12(sp)
1c009a6a:	4529                	li	a0,10
1c009a6c:	48a5                	li	a7,9
1c009a6e:	4390                	lw	a2,0(a5)
1c009a70:	00478b13          	addi	s6,a5,4
1c009a74:	105c                	addi	a5,sp,36
1c009a76:	02a67733          	remu	a4,a2,a0
1c009a7a:	86be                	mv	a3,a5
1c009a7c:	0785                	addi	a5,a5,1
1c009a7e:	85b2                	mv	a1,a2
1c009a80:	03070713          	addi	a4,a4,48
1c009a84:	fee78fa3          	sb	a4,-1(a5)
1c009a88:	02a65633          	divu	a2,a2,a0
1c009a8c:	feb8e5e3          	bltu	a7,a1,1c009a76 <pos_libc_prf+0xb7a>
1c009a90:	1058                	addi	a4,sp,36
1c009a92:	40e789b3          	sub	s3,a5,a4
1c009a96:	0159dd63          	bge	s3,s5,1c009ab0 <pos_libc_prf+0xbb4>
1c009a9a:	03000613          	li	a2,48
1c009a9e:	86be                	mv	a3,a5
1c009aa0:	1058                	addi	a4,sp,36
1c009aa2:	0785                	addi	a5,a5,1
1c009aa4:	40e789b3          	sub	s3,a5,a4
1c009aa8:	fec78fa3          	sb	a2,-1(a5)
1c009aac:	ff59c9e3          	blt	s3,s5,1c009a9e <pos_libc_prf+0xba2>
1c009ab0:	00078023          	sb	zero,0(a5)
1c009ab4:	105c                	addi	a5,sp,36
1c009ab6:	00d7fe63          	bgeu	a5,a3,1c009ad2 <pos_libc_prf+0xbd6>
1c009aba:	0007c603          	lbu	a2,0(a5)
1c009abe:	0006c703          	lbu	a4,0(a3)
1c009ac2:	0785                	addi	a5,a5,1
1c009ac4:	00c68023          	sb	a2,0(a3)
1c009ac8:	fee78fa3          	sb	a4,-1(a5)
1c009acc:	16fd                	addi	a3,a3,-1
1c009ace:	fed7e6e3          	bltu	a5,a3,1c009aba <pos_libc_prf+0xbbe>
1c009ad2:	57fd                	li	a5,-1
1c009ad4:	c8fa9de3          	bne	s5,a5,1c00976e <pos_libc_prf+0x872>
1c009ad8:	0c800793          	li	a5,200
1c009adc:	9737c1e3          	blt	a5,s3,1c00943e <pos_libc_prf+0x542>
1c009ae0:	ce02                	sw	zero,28(sp)
1c009ae2:	be01                	j	1c0095f2 <pos_libc_prf+0x6f6>
1c009ae4:	85a6                	mv	a1,s1
1c009ae6:	02500513          	li	a0,37
1c009aea:	9c82                	jalr	s9
1c009aec:	57fd                	li	a5,-1
1c009aee:	c6f51f63          	bne	a0,a5,1c008f6c <pos_libc_prf+0x70>
1c009af2:	547d                	li	s0,-1
1c009af4:	c82ff06f          	j	1c008f76 <pos_libc_prf+0x7a>
1c009af8:	4401                	li	s0,0
1c009afa:	c7cff06f          	j	1c008f76 <pos_libc_prf+0x7a>
1c009afe:	8a4e                	mv	s4,s3
1c009b00:	c65a                	sw	s6,12(sp)
1c009b02:	b165                	j	1c0097aa <pos_libc_prf+0x8ae>
1c009b04:	0c800793          	li	a5,200
1c009b08:	9337cbe3          	blt	a5,s3,1c00943e <pos_libc_prf+0x542>
1c009b0c:	4785                	li	a5,1
1c009b0e:	ce3e                	sw	a5,28(sp)
1c009b10:	b4cd                	j	1c0095f2 <pos_libc_prf+0x6f6>
1c009b12:	104c                	addi	a1,sp,36
1c009b14:	413a09b3          	sub	s3,s4,s3
1c009b18:	01358533          	add	a0,a1,s3
1c009b1c:	a22ff0ef          	jal	ra,1c008d3e <memmove>
1c009b20:	02000793          	li	a5,32
1c009b24:	24f90863          	beq	s2,a5,1c009d74 <pos_libc_prf+0xe78>
1c009b28:	47f2                	lw	a5,28(sp)
1c009b2a:	99be                	add	s3,s3,a5
1c009b2c:	47f2                	lw	a5,28(sp)
1c009b2e:	b737d7e3          	bge	a5,s3,1c00969c <pos_libc_prf+0x7a0>
1c009b32:	4772                	lw	a4,28(sp)
1c009b34:	4789                	li	a5,2
1c009b36:	40e988b3          	sub	a7,s3,a4
1c009b3a:	fff88693          	addi	a3,a7,-1
1c009b3e:	06d7f063          	bgeu	a5,a3,1c009b9e <pos_libc_prf+0xca2>
1c009b42:	47e2                	lw	a5,24(sp)
1c009b44:	00891613          	slli	a2,s2,0x8
1c009b48:	ffc8f593          	andi	a1,a7,-4
1c009b4c:	00f976b3          	and	a3,s2,a5
1c009b50:	8ed1                	or	a3,a3,a2
1c009b52:	01091793          	slli	a5,s2,0x10
1c009b56:	8edd                	or	a3,a3,a5
1c009b58:	01891613          	slli	a2,s2,0x18
1c009b5c:	8e55                	or	a2,a2,a3
1c009b5e:	105c                	addi	a5,sp,36
1c009b60:	00865813          	srli	a6,a2,0x8
1c009b64:	01065513          	srli	a0,a2,0x10
1c009b68:	97ba                	add	a5,a5,a4
1c009b6a:	95be                	add	a1,a1,a5
1c009b6c:	0306f693          	andi	a3,a3,48
1c009b70:	8261                	srli	a2,a2,0x18
1c009b72:	0ff87813          	andi	a6,a6,255
1c009b76:	0ff57513          	andi	a0,a0,255
1c009b7a:	00d78023          	sb	a3,0(a5)
1c009b7e:	010780a3          	sb	a6,1(a5)
1c009b82:	00a78123          	sb	a0,2(a5)
1c009b86:	00c781a3          	sb	a2,3(a5)
1c009b8a:	0791                	addi	a5,a5,4
1c009b8c:	fef597e3          	bne	a1,a5,1c009b7a <pos_libc_prf+0xc7e>
1c009b90:	4772                	lw	a4,28(sp)
1c009b92:	ffc8f793          	andi	a5,a7,-4
1c009b96:	973e                	add	a4,a4,a5
1c009b98:	ce3a                	sw	a4,28(sp)
1c009b9a:	b11781e3          	beq	a5,a7,1c00969c <pos_libc_prf+0x7a0>
1c009b9e:	4772                	lw	a4,28(sp)
1c009ba0:	199c                	addi	a5,sp,240
1c009ba2:	97ba                	add	a5,a5,a4
1c009ba4:	f3278a23          	sb	s2,-204(a5)
1c009ba8:	00170793          	addi	a5,a4,1
1c009bac:	af37d8e3          	bge	a5,s3,1c00969c <pos_libc_prf+0x7a0>
1c009bb0:	1994                	addi	a3,sp,240
1c009bb2:	97b6                	add	a5,a5,a3
1c009bb4:	f3278a23          	sb	s2,-204(a5)
1c009bb8:	00270b93          	addi	s7,a4,2
1c009bbc:	af3bd0e3          	bge	s7,s3,1c00969c <pos_libc_prf+0x7a0>
1c009bc0:	9bb6                	add	s7,s7,a3
1c009bc2:	f32b8a23          	sb	s2,-204(s7)
1c009bc6:	c65a                	sw	s6,12(sp)
1c009bc8:	bcd9                	j	1c00969e <pos_libc_prf+0x7a2>
1c009bca:	01b98023          	sb	s11,0(s3)
1c009bce:	02b00613          	li	a2,43
1c009bd2:	00035663          	bgez	t1,1c009bde <pos_libc_prf+0xce2>
1c009bd6:	40600333          	neg	t1,t1
1c009bda:	02d00613          	li	a2,45
1c009bde:	47a9                	li	a5,10
1c009be0:	02f346b3          	div	a3,t1,a5
1c009be4:	00c980a3          	sb	a2,1(s3)
1c009be8:	0991                	addi	s3,s3,4
1c009bea:	02f367b3          	rem	a5,t1,a5
1c009bee:	03068693          	addi	a3,a3,48
1c009bf2:	fed98f23          	sb	a3,-2(s3)
1c009bf6:	03078793          	addi	a5,a5,48
1c009bfa:	fef98fa3          	sb	a5,-1(s3)
1c009bfe:	fceff06f          	j	1c0093cc <pos_libc_prf+0x4d0>
1c009c02:	02d00793          	li	a5,45
1c009c06:	02f10223          	sb	a5,36(sp)
1c009c0a:	800007b7          	lui	a5,0x80000
1c009c0e:	14f30e63          	beq	t1,a5,1c009d6a <pos_libc_prf+0xe6e>
1c009c12:	40600633          	neg	a2,t1
1c009c16:	02510693          	addi	a3,sp,37
1c009c1a:	bb31                	j	1c009936 <pos_libc_prf+0xa3a>
1c009c1c:	4722                	lw	a4,8(sp)
1c009c1e:	10070d63          	beqz	a4,1c009d38 <pos_libc_prf+0xe3c>
1c009c22:	02b00693          	li	a3,43
1c009c26:	02d10223          	sb	a3,36(sp)
1c009c2a:	02510f13          	addi	t5,sp,37
1c009c2e:	4301                	li	t1,0
1c009c30:	4801                	li	a6,0
1c009c32:	d9cff06f          	j	1c0091ce <pos_libc_prf+0x2d2>
1c009c36:	02414783          	lbu	a5,36(sp)
1c009c3a:	98078ce3          	beqz	a5,1c0095d2 <pos_libc_prf+0x6d6>
1c009c3e:	1054                	addi	a3,sp,36
1c009c40:	45e5                	li	a1,25
1c009c42:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c009c46:	f9f78793          	addi	a5,a5,-97
1c009c4a:	0ff7f793          	andi	a5,a5,255
1c009c4e:	00f5e963          	bltu	a1,a5,1c009c60 <pos_libc_prf+0xd64>
1c009c52:	0016c783          	lbu	a5,1(a3)
1c009c56:	00e68023          	sb	a4,0(a3)
1c009c5a:	0685                	addi	a3,a3,1
1c009c5c:	f3fd                	bnez	a5,1c009c42 <pos_libc_prf+0xd46>
1c009c5e:	ba95                	j	1c0095d2 <pos_libc_prf+0x6d6>
1c009c60:	0016c783          	lbu	a5,1(a3)
1c009c64:	0685                	addi	a3,a3,1
1c009c66:	fff1                	bnez	a5,1c009c42 <pos_libc_prf+0xd46>
1c009c68:	b2ad                	j	1c0095d2 <pos_libc_prf+0x6d6>
1c009c6a:	0c800793          	li	a5,200
1c009c6e:	df37d0e3          	bge	a5,s3,1c009a4e <pos_libc_prf+0xb52>
1c009c72:	547d                	li	s0,-1
1c009c74:	b02ff06f          	j	1c008f76 <pos_libc_prf+0x7a>
1c009c78:	864e                	mv	a2,s3
1c009c7a:	1048                	addi	a0,sp,36
1c009c7c:	fedfe0ef          	jal	ra,1c008c68 <memcpy>
1c009c80:	b3f9                	j	1c009a4e <pos_libc_prf+0xb52>
1c009c82:	47f2                	lw	a5,28(sp)
1c009c84:	4601                	li	a2,0
1c009c86:	e399                	bnez	a5,1c009c8c <pos_libc_prf+0xd90>
1c009c88:	01503633          	snez	a2,s5
1c009c8c:	57f5                	li	a5,-3
1c009c8e:	001a8813          	addi	a6,s5,1
1c009c92:	00f34463          	blt	t1,a5,1c009c9a <pos_libc_prf+0xd9e>
1c009c96:	04685163          	bge	a6,t1,1c009cd8 <pos_libc_prf+0xddc>
1c009c9a:	47c1                	li	a5,16
1c009c9c:	0107d363          	bge	a5,a6,1c009ca2 <pos_libc_prf+0xda6>
1c009ca0:	4841                	li	a6,16
1c009ca2:	06700793          	li	a5,103
1c009ca6:	187d                	addi	a6,a6,-1
1c009ca8:	02fd8363          	beq	s11,a5,1c009cce <pos_libc_prf+0xdd2>
1c009cac:	04500d93          	li	s11,69
1c009cb0:	d70ff06f          	j	1c009220 <pos_libc_prf+0x324>
1c009cb4:	4a99                	li	s5,6
1c009cb6:	d4fd9563          	bne	s11,a5,1c009200 <pos_libc_prf+0x304>
1c009cba:	4772                	lw	a4,28(sp)
1c009cbc:	4605                	li	a2,1
1c009cbe:	57f5                	li	a5,-3
1c009cc0:	8e19                	sub	a2,a2,a4
1c009cc2:	00f34563          	blt	t1,a5,1c009ccc <pos_libc_prf+0xdd0>
1c009cc6:	479d                	li	a5,7
1c009cc8:	0067d863          	bge	a5,t1,1c009cd8 <pos_libc_prf+0xddc>
1c009ccc:	4819                	li	a6,6
1c009cce:	06500d93          	li	s11,101
1c009cd2:	d4eff06f          	j	1c009220 <pos_libc_prf+0x324>
1c009cd6:	4601                	li	a2,0
1c009cd8:	006a8833          	add	a6,s5,t1
1c009cdc:	0b005b63          	blez	a6,1c009d92 <pos_libc_prf+0xe96>
1c009ce0:	47c1                	li	a5,16
1c009ce2:	0107d363          	bge	a5,a6,1c009ce8 <pos_libc_prf+0xdec>
1c009ce6:	4841                	li	a6,16
1c009ce8:	187d                	addi	a6,a6,-1
1c009cea:	06600d93          	li	s11,102
1c009cee:	d32ff06f          	j	1c009220 <pos_libc_prf+0x324>
1c009cf2:	4792                	lw	a5,4(sp)
1c009cf4:	1054                	addi	a3,sp,36
1c009cf6:	c40780e3          	beqz	a5,1c009936 <pos_libc_prf+0xa3a>
1c009cfa:	02000793          	li	a5,32
1c009cfe:	02f10223          	sb	a5,36(sp)
1c009d02:	02510693          	addi	a3,sp,37
1c009d06:	b905                	j	1c009936 <pos_libc_prf+0xa3a>
1c009d08:	ffc80fa3          	sb	t3,-1(a6)
1c009d0c:	b30986e3          	beq	s3,a6,1c009838 <pos_libc_prf+0x93c>
1c009d10:	0805                	addi	a6,a6,1
1c009d12:	b4d5                	j	1c0097f6 <pos_libc_prf+0x8fa>
1c009d14:	ffe80fa3          	sb	t5,-1(a6)
1c009d18:	0305                	addi	t1,t1,1
1c009d1a:	b679                	j	1c0098a8 <pos_libc_prf+0x9ac>
1c009d1c:	020102a3          	sb	zero,37(sp)
1c009d20:	57fd                	li	a5,-1
1c009d22:	0cfa8263          	beq	s5,a5,1c009de6 <pos_libc_prf+0xeea>
1c009d26:	4785                	li	a5,1
1c009d28:	0b47c063          	blt	a5,s4,1c009dc8 <pos_libc_prf+0xecc>
1c009d2c:	4a72                	lw	s4,28(sp)
1c009d2e:	c65a                	sw	s6,12(sp)
1c009d30:	bcad                	j	1c0097aa <pos_libc_prf+0x8ae>
1c009d32:	8636                	mv	a2,a3
1c009d34:	b04ff06f          	j	1c009038 <pos_libc_prf+0x13c>
1c009d38:	4712                	lw	a4,4(sp)
1c009d3a:	c77d                	beqz	a4,1c009e28 <pos_libc_prf+0xf2c>
1c009d3c:	02000693          	li	a3,32
1c009d40:	02d10223          	sb	a3,36(sp)
1c009d44:	4301                	li	t1,0
1c009d46:	4801                	li	a6,0
1c009d48:	02510f13          	addi	t5,sp,37
1c009d4c:	c82ff06f          	j	1c0091ce <pos_libc_prf+0x2d2>
1c009d50:	02d00693          	li	a3,45
1c009d54:	02d10223          	sb	a3,36(sp)
1c009d58:	02510f13          	addi	t5,sp,37
1c009d5c:	b9cff06f          	j	1c0090f8 <pos_libc_prf+0x1fc>
1c009d60:	0c800613          	li	a2,200
1c009d64:	960ad6e3          	bgez	s5,1c0096d0 <pos_libc_prf+0x7d4>
1c009d68:	bf09                	j	1c009c7a <pos_libc_prf+0xd7e>
1c009d6a:	80000637          	lui	a2,0x80000
1c009d6e:	02510693          	addi	a3,sp,37
1c009d72:	b6d1                	j	1c009936 <pos_libc_prf+0xa3a>
1c009d74:	ce02                	sw	zero,28(sp)
1c009d76:	bb5d                	j	1c009b2c <pos_libc_prf+0xc30>
1c009d78:	4712                	lw	a4,4(sp)
1c009d7a:	02410f13          	addi	t5,sp,36
1c009d7e:	b6070d63          	beqz	a4,1c0090f8 <pos_libc_prf+0x1fc>
1c009d82:	02000693          	li	a3,32
1c009d86:	02d10223          	sb	a3,36(sp)
1c009d8a:	02510f13          	addi	t5,sp,37
1c009d8e:	b6aff06f          	j	1c0090f8 <pos_libc_prf+0x1fc>
1c009d92:	06600d93          	li	s11,102
1c009d96:	4781                	li	a5,0
1c009d98:	080006b7          	lui	a3,0x8000
1c009d9c:	ce8ff06f          	j	1c009284 <pos_libc_prf+0x388>
1c009da0:	06b6e363          	bltu	a3,a1,1c009e06 <pos_libc_prf+0xf0a>
1c009da4:	04e00693          	li	a3,78
1c009da8:	04100613          	li	a2,65
1c009dac:	00d78023          	sb	a3,0(a5)
1c009db0:	00c780a3          	sb	a2,1(a5)
1c009db4:	00d78123          	sb	a3,2(a5)
1c009db8:	f44ff06f          	j	1c0094fc <pos_libc_prf+0x600>
1c009dbc:	03000693          	li	a3,48
1c009dc0:	00df0023          	sb	a3,0(t5)
1c009dc4:	4541                	li	a0,16
1c009dc6:	bc95                	j	1c00983a <pos_libc_prf+0x93e>
1c009dc8:	4982                	lw	s3,0(sp)
1c009dca:	860992e3          	bnez	s3,1c00962e <pos_libc_prf+0x732>
1c009dce:	104c                	addi	a1,sp,36
1c009dd0:	fffa0993          	addi	s3,s4,-1
1c009dd4:	4609                	li	a2,2
1c009dd6:	01358533          	add	a0,a1,s3
1c009dda:	f65fe0ef          	jal	ra,1c008d3e <memmove>
1c009dde:	02000913          	li	s2,32
1c009de2:	ce02                	sw	zero,28(sp)
1c009de4:	b3b9                	j	1c009b32 <pos_libc_prf+0xc36>
1c009de6:	49f2                	lw	s3,28(sp)
1c009de8:	b19d                	j	1c009a4e <pos_libc_prf+0xb52>
1c009dea:	06900693          	li	a3,105
1c009dee:	00d78023          	sb	a3,0(a5)
1c009df2:	06e00693          	li	a3,110
1c009df6:	00d780a3          	sb	a3,1(a5)
1c009dfa:	06600693          	li	a3,102
1c009dfe:	00d78123          	sb	a3,2(a5)
1c009e02:	efaff06f          	j	1c0094fc <pos_libc_prf+0x600>
1c009e06:	06e00693          	li	a3,110
1c009e0a:	06100613          	li	a2,97
1c009e0e:	00d78023          	sb	a3,0(a5)
1c009e12:	00c780a3          	sb	a2,1(a5)
1c009e16:	00d78123          	sb	a3,2(a5)
1c009e1a:	ee2ff06f          	j	1c0094fc <pos_libc_prf+0x600>
1c009e1e:	89f6                	mv	s3,t4
1c009e20:	a8061ae3          	bnez	a2,1c0098b4 <pos_libc_prf+0x9b8>
1c009e24:	da8ff06f          	j	1c0093cc <pos_libc_prf+0x4d0>
1c009e28:	4301                	li	t1,0
1c009e2a:	4801                	li	a6,0
1c009e2c:	02410f13          	addi	t5,sp,36
1c009e30:	b9eff06f          	j	1c0091ce <pos_libc_prf+0x2d2>

1c009e34 <pos_init_start>:
1c009e34:	1141                	addi	sp,sp,-16
1c009e36:	c422                	sw	s0,8(sp)
1c009e38:	1c000437          	lui	s0,0x1c000
1c009e3c:	c606                	sw	ra,12(sp)
1c009e3e:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009e42:	ca2fe0ef          	jal	ra,1c0082e4 <pos_soc_init>
1c009e46:	2a75                	jal	1c00a002 <pos_irq_init>
1c009e48:	22e5                	jal	1c00a030 <pos_soc_event_init>
1c009e4a:	2225                	jal	1c009f72 <pos_allocs_init>
1c009e4c:	405c                	lw	a5,4(s0)
1c009e4e:	c791                	beqz	a5,1c009e5a <pos_init_start+0x26>
1c009e50:	0411                	addi	s0,s0,4
1c009e52:	0411                	addi	s0,s0,4
1c009e54:	9782                	jalr	a5
1c009e56:	401c                	lw	a5,0(s0)
1c009e58:	ffed                	bnez	a5,1c009e52 <pos_init_start+0x1e>
1c009e5a:	86cff0ef          	jal	ra,1c008ec6 <pos_io_start>
1c009e5e:	300467f3          	csrrsi	a5,mstatus,8
1c009e62:	40b2                	lw	ra,12(sp)
1c009e64:	4422                	lw	s0,8(sp)
1c009e66:	0141                	addi	sp,sp,16
1c009e68:	8082                	ret

1c009e6a <pos_init_stop>:
1c009e6a:	1141                	addi	sp,sp,-16
1c009e6c:	c422                	sw	s0,8(sp)
1c009e6e:	1c000437          	lui	s0,0x1c000
1c009e72:	c606                	sw	ra,12(sp)
1c009e74:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009e78:	852ff0ef          	jal	ra,1c008eca <pos_io_stop>
1c009e7c:	405c                	lw	a5,4(s0)
1c009e7e:	c791                	beqz	a5,1c009e8a <pos_init_stop+0x20>
1c009e80:	0411                	addi	s0,s0,4
1c009e82:	0411                	addi	s0,s0,4
1c009e84:	9782                	jalr	a5
1c009e86:	401c                	lw	a5,0(s0)
1c009e88:	ffed                	bnez	a5,1c009e82 <pos_init_stop+0x18>
1c009e8a:	40b2                	lw	ra,12(sp)
1c009e8c:	4422                	lw	s0,8(sp)
1c009e8e:	0141                	addi	sp,sp,16
1c009e90:	8082                	ret

1c009e92 <pos_alloc_init>:
1c009e92:	00758793          	addi	a5,a1,7
1c009e96:	9be1                	andi	a5,a5,-8
1c009e98:	40b785b3          	sub	a1,a5,a1
1c009e9c:	c11c                	sw	a5,0(a0)
1c009e9e:	40b605b3          	sub	a1,a2,a1
1c009ea2:	00b05663          	blez	a1,1c009eae <pos_alloc_init+0x1c>
1c009ea6:	99e1                	andi	a1,a1,-8
1c009ea8:	c38c                	sw	a1,0(a5)
1c009eaa:	0007a223          	sw	zero,4(a5)
1c009eae:	8082                	ret

1c009eb0 <pos_alloc>:
1c009eb0:	411c                	lw	a5,0(a0)
1c009eb2:	00758713          	addi	a4,a1,7
1c009eb6:	862a                	mv	a2,a0
1c009eb8:	ff877593          	andi	a1,a4,-8
1c009ebc:	4681                	li	a3,0
1c009ebe:	e789                	bnez	a5,1c009ec8 <pos_alloc+0x18>
1c009ec0:	a091                	j	1c009f04 <pos_alloc+0x54>
1c009ec2:	86be                	mv	a3,a5
1c009ec4:	c505                	beqz	a0,1c009eec <pos_alloc+0x3c>
1c009ec6:	87aa                	mv	a5,a0
1c009ec8:	4398                	lw	a4,0(a5)
1c009eca:	43c8                	lw	a0,4(a5)
1c009ecc:	feb74be3          	blt	a4,a1,1c009ec2 <pos_alloc+0x12>
1c009ed0:	00b70f63          	beq	a4,a1,1c009eee <pos_alloc+0x3e>
1c009ed4:	00b78833          	add	a6,a5,a1
1c009ed8:	8f0d                	sub	a4,a4,a1
1c009eda:	00e82023          	sw	a4,0(a6)
1c009ede:	00a82223          	sw	a0,4(a6)
1c009ee2:	ca91                	beqz	a3,1c009ef6 <pos_alloc+0x46>
1c009ee4:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c009ee8:	853e                	mv	a0,a5
1c009eea:	8082                	ret
1c009eec:	8082                	ret
1c009eee:	ca81                	beqz	a3,1c009efe <pos_alloc+0x4e>
1c009ef0:	c2c8                	sw	a0,4(a3)
1c009ef2:	853e                	mv	a0,a5
1c009ef4:	8082                	ret
1c009ef6:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c009efa:	853e                	mv	a0,a5
1c009efc:	8082                	ret
1c009efe:	c208                	sw	a0,0(a2)
1c009f00:	853e                	mv	a0,a5
1c009f02:	8082                	ret
1c009f04:	4501                	li	a0,0
1c009f06:	8082                	ret

1c009f08 <pos_free>:
1c009f08:	411c                	lw	a5,0(a0)
1c009f0a:	061d                	addi	a2,a2,7
1c009f0c:	9a61                	andi	a2,a2,-8
1c009f0e:	c7a1                	beqz	a5,1c009f56 <pos_free+0x4e>
1c009f10:	00b7e563          	bltu	a5,a1,1c009f1a <pos_free+0x12>
1c009f14:	a089                	j	1c009f56 <pos_free+0x4e>
1c009f16:	00b7f563          	bgeu	a5,a1,1c009f20 <pos_free+0x18>
1c009f1a:	873e                	mv	a4,a5
1c009f1c:	43dc                	lw	a5,4(a5)
1c009f1e:	ffe5                	bnez	a5,1c009f16 <pos_free+0xe>
1c009f20:	00c586b3          	add	a3,a1,a2
1c009f24:	00d78b63          	beq	a5,a3,1c009f3a <pos_free+0x32>
1c009f28:	c190                	sw	a2,0(a1)
1c009f2a:	4314                	lw	a3,0(a4)
1c009f2c:	c1dc                	sw	a5,4(a1)
1c009f2e:	00d70533          	add	a0,a4,a3
1c009f32:	00a58e63          	beq	a1,a0,1c009f4e <pos_free+0x46>
1c009f36:	c34c                	sw	a1,4(a4)
1c009f38:	8082                	ret
1c009f3a:	4394                	lw	a3,0(a5)
1c009f3c:	43dc                	lw	a5,4(a5)
1c009f3e:	9636                	add	a2,a2,a3
1c009f40:	c190                	sw	a2,0(a1)
1c009f42:	4314                	lw	a3,0(a4)
1c009f44:	c1dc                	sw	a5,4(a1)
1c009f46:	00d70533          	add	a0,a4,a3
1c009f4a:	fea596e3          	bne	a1,a0,1c009f36 <pos_free+0x2e>
1c009f4e:	9636                	add	a2,a2,a3
1c009f50:	c310                	sw	a2,0(a4)
1c009f52:	c35c                	sw	a5,4(a4)
1c009f54:	8082                	ret
1c009f56:	00c58733          	add	a4,a1,a2
1c009f5a:	00e78663          	beq	a5,a4,1c009f66 <pos_free+0x5e>
1c009f5e:	c1dc                	sw	a5,4(a1)
1c009f60:	c190                	sw	a2,0(a1)
1c009f62:	c10c                	sw	a1,0(a0)
1c009f64:	8082                	ret
1c009f66:	4398                	lw	a4,0(a5)
1c009f68:	43dc                	lw	a5,4(a5)
1c009f6a:	963a                	add	a2,a2,a4
1c009f6c:	c1dc                	sw	a5,4(a1)
1c009f6e:	c190                	sw	a2,0(a1)
1c009f70:	bfcd                	j	1c009f62 <pos_free+0x5a>

1c009f72 <pos_allocs_init>:
1c009f72:	1c0065b7          	lui	a1,0x1c006
1c009f76:	1141                	addi	sp,sp,-16
1c009f78:	22458613          	addi	a2,a1,548 # 1c006224 <__l2_priv0_end>
1c009f7c:	1c0087b7          	lui	a5,0x1c008
1c009f80:	c606                	sw	ra,12(sp)
1c009f82:	22458593          	addi	a1,a1,548
1c009f86:	40c78633          	sub	a2,a5,a2
1c009f8a:	04f5d863          	bge	a1,a5,1c009fda <pos_allocs_init+0x68>
1c009f8e:	1c006537          	lui	a0,0x1c006
1c009f92:	21850513          	addi	a0,a0,536 # 1c006218 <pos_alloc_l2>
1c009f96:	3df5                	jal	1c009e92 <pos_alloc_init>
1c009f98:	1c00a5b7          	lui	a1,0x1c00a
1c009f9c:	04858613          	addi	a2,a1,72 # 1c00a048 <__l2_priv1_end>
1c009fa0:	1c0107b7          	lui	a5,0x1c010
1c009fa4:	04858593          	addi	a1,a1,72
1c009fa8:	40c78633          	sub	a2,a5,a2
1c009fac:	02f5da63          	bge	a1,a5,1c009fe0 <pos_allocs_init+0x6e>
1c009fb0:	1c006537          	lui	a0,0x1c006
1c009fb4:	21c50513          	addi	a0,a0,540 # 1c00621c <pos_alloc_l2+0x4>
1c009fb8:	3de9                	jal	1c009e92 <pos_alloc_init>
1c009fba:	40b2                	lw	ra,12(sp)
1c009fbc:	1c0105b7          	lui	a1,0x1c010
1c009fc0:	00058793          	mv	a5,a1
1c009fc4:	1c080637          	lui	a2,0x1c080
1c009fc8:	1c006537          	lui	a0,0x1c006
1c009fcc:	8e1d                	sub	a2,a2,a5
1c009fce:	00058593          	mv	a1,a1
1c009fd2:	22050513          	addi	a0,a0,544 # 1c006220 <pos_alloc_l2+0x8>
1c009fd6:	0141                	addi	sp,sp,16
1c009fd8:	bd6d                	j	1c009e92 <pos_alloc_init>
1c009fda:	4581                	li	a1,0
1c009fdc:	4601                	li	a2,0
1c009fde:	bf45                	j	1c009f8e <pos_allocs_init+0x1c>
1c009fe0:	4581                	li	a1,0
1c009fe2:	4601                	li	a2,0
1c009fe4:	b7f1                	j	1c009fb0 <pos_allocs_init+0x3e>

1c009fe6 <pi_l2_malloc>:
1c009fe6:	85aa                	mv	a1,a0
1c009fe8:	1c006537          	lui	a0,0x1c006
1c009fec:	21850513          	addi	a0,a0,536 # 1c006218 <pos_alloc_l2>
1c009ff0:	b5c1                	j	1c009eb0 <pos_alloc>

1c009ff2 <pi_l2_free>:
1c009ff2:	862e                	mv	a2,a1
1c009ff4:	85aa                	mv	a1,a0
1c009ff6:	1c006537          	lui	a0,0x1c006
1c009ffa:	21850513          	addi	a0,a0,536 # 1c006218 <pos_alloc_l2>
1c009ffe:	b729                	j	1c009f08 <pos_free>

1c00a000 <__rt_handle_illegal_instr>:
1c00a000:	8082                	ret

1c00a002 <pos_irq_init>:
1c00a002:	1a10a737          	lui	a4,0x1a10a
1c00a006:	56fd                	li	a3,-1
1c00a008:	f14027f3          	csrr	a5,mhartid
1c00a00c:	8795                	srai	a5,a5,0x5
1c00a00e:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a012:	03f7f793          	andi	a5,a5,63
1c00a016:	477d                	li	a4,31
1c00a018:	00e78363          	beq	a5,a4,1c00a01e <pos_irq_init+0x1c>
1c00a01c:	8082                	ret
1c00a01e:	1c0087b7          	lui	a5,0x1c008
1c00a022:	00078793          	mv	a5,a5
1c00a026:	0017e793          	ori	a5,a5,1
1c00a02a:	30579073          	csrw	mtvec,a5
1c00a02e:	8082                	ret

1c00a030 <pos_soc_event_init>:
1c00a030:	1a1067b7          	lui	a5,0x1a106
1c00a034:	577d                	li	a4,-1
1c00a036:	c3d8                	sw	a4,4(a5)
1c00a038:	c798                	sw	a4,8(a5)
1c00a03a:	c7d8                	sw	a4,12(a5)
1c00a03c:	cb98                	sw	a4,16(a5)
1c00a03e:	cbd8                	sw	a4,20(a5)
1c00a040:	cf98                	sw	a4,24(a5)
1c00a042:	cfd8                	sw	a4,28(a5)
1c00a044:	d398                	sw	a4,32(a5)
1c00a046:	8082                	ret
