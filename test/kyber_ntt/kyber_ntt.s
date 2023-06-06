riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt

/home/alessandra.dolmeta/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	72d0106f          	j	1c009f2c <__rt_handle_illegal_instr>
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
1c008084:	6a90106f          	j	1c009f2c <__rt_handle_illegal_instr>

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
1c0080c4:	16028293          	addi	t0,t0,352 # 1c006220 <pos_fll_is_on>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	17c30313          	addi	t1,t1,380 # 1c006244 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	14610113          	addi	sp,sp,326 # 1c006220 <pos_fll_is_on>
1c0080e2:	47f010ef          	jal	ra,1c009d60 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	06638393          	addi	t2,t2,102 # 1c008154 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	49b010ef          	jal	ra,1c009d96 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	4dd000ef          	jal	ra,1c008dde <exit>
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
1c008168:	3f9000ef          	jal	ra,1c008d60 <puts>
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
1c008188:	7f4000ef          	jal	ra,1c00897c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c00818c:	1c000537          	lui	a0,0x1c000
1c008190:	12850513          	addi	a0,a0,296 # 1c000128 <__clz_tab+0x10c>
1c008194:	3cd000ef          	jal	ra,1c008d60 <puts>
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
1c00821e:	22440413          	addi	s0,s0,548 # 1c006224 <pos_fll_freq>
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
1c00824a:	22068693          	addi	a3,a3,544 # 1c006220 <pos_fll_is_on>
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
1c008284:	22068693          	addi	a3,a3,544 # 1c006220 <pos_fll_is_on>
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
1c0082ce:	22478793          	addi	a5,a5,548 # 1c006224 <pos_fll_freq>
1c0082d2:	0007a023          	sw	zero,0(a5)
1c0082d6:	0007a223          	sw	zero,4(a5)
1c0082da:	1c0067b7          	lui	a5,0x1c006
1c0082de:	22079023          	sh	zero,544(a5) # 1c006220 <pos_fll_is_on>
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
1c0082f6:	22c40413          	addi	s0,s0,556 # 1c00622c <pos_freq_domains>
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
1c008372:	1101                	addi	sp,sp,-32
1c008374:	cc22                	sw	s0,24(sp)
1c008376:	1a400437          	lui	s0,0x1a400
1c00837a:	c64e                	sw	s3,12(sp)
1c00837c:	30040993          	addi	s3,s0,768 # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008380:	ca26                	sw	s1,20(sp)
1c008382:	c84a                	sw	s2,16(sp)
1c008384:	c452                	sw	s4,8(sp)
1c008386:	ce06                	sw	ra,28(sp)
1c008388:	84aa                	mv	s1,a0
1c00838a:	20050913          	addi	s2,a0,512
1c00838e:	1c000a37          	lui	s4,0x1c000
1c008392:	40a989b3          	sub	s3,s3,a0
1c008396:	408c                	lw	a1,0(s1)
1c008398:	134a0513          	addi	a0,s4,308 # 1c000134 <__clz_tab+0x118>
1c00839c:	25f000ef          	jal	ra,1c008dfa <printf>
1c0083a0:	4098                	lw	a4,0(s1)
1c0083a2:	009987b3          	add	a5,s3,s1
1c0083a6:	0491                	addi	s1,s1,4
1c0083a8:	c398                	sw	a4,0(a5)
1c0083aa:	ff2496e3          	bne	s1,s2,1c008396 <KYBER_poly_ntt+0x24>
1c0083ae:	4785                	li	a5,1
1c0083b0:	30f42423          	sw	a5,776(s0)
1c0083b4:	30042423          	sw	zero,776(s0)
1c0083b8:	30042423          	sw	zero,776(s0)
1c0083bc:	30042423          	sw	zero,776(s0)
1c0083c0:	30042423          	sw	zero,776(s0)
1c0083c4:	30042423          	sw	zero,776(s0)
1c0083c8:	30042423          	sw	zero,776(s0)
1c0083cc:	30042423          	sw	zero,776(s0)
1c0083d0:	30042423          	sw	zero,776(s0)
1c0083d4:	30042423          	sw	zero,776(s0)
1c0083d8:	30042423          	sw	zero,776(s0)
1c0083dc:	08000793          	li	a5,128
1c0083e0:	30f42423          	sw	a5,776(s0)
1c0083e4:	30042423          	sw	zero,776(s0)
1c0083e8:	40f2                	lw	ra,28(sp)
1c0083ea:	4462                	lw	s0,24(sp)
1c0083ec:	44d2                	lw	s1,20(sp)
1c0083ee:	4942                	lw	s2,16(sp)
1c0083f0:	49b2                	lw	s3,12(sp)
1c0083f2:	4a22                	lw	s4,8(sp)
1c0083f4:	6105                	addi	sp,sp,32
1c0083f6:	8082                	ret

1c0083f8 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c0083f8:	1101                	addi	sp,sp,-32
1c0083fa:	55555f37          	lui	t5,0x55555
1c0083fe:	ce22                	sw	s0,28(sp)
1c008400:	cc26                	sw	s1,24(sp)
1c008402:	ca4a                	sw	s2,20(sp)
1c008404:	c84e                	sw	s3,16(sp)
1c008406:	c652                	sw	s4,12(sp)
1c008408:	20050f93          	addi	t6,a0,512
1c00840c:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c008410:	0015c683          	lbu	a3,1(a1)
1c008414:	0005c603          	lbu	a2,0(a1)
1c008418:	0025c783          	lbu	a5,2(a1)
1c00841c:	0035c703          	lbu	a4,3(a1)
1c008420:	06a2                	slli	a3,a3,0x8
1c008422:	8ed1                	or	a3,a3,a2
1c008424:	07c2                	slli	a5,a5,0x10
1c008426:	8fd5                	or	a5,a5,a3
1c008428:	0762                	slli	a4,a4,0x18
1c00842a:	8f5d                	or	a4,a4,a5
1c00842c:	00175793          	srli	a5,a4,0x1
1c008430:	01e7f7b3          	and	a5,a5,t5
1c008434:	01e77733          	and	a4,a4,t5
1c008438:	97ba                	add	a5,a5,a4
1c00843a:	0027da13          	srli	s4,a5,0x2
1c00843e:	0047d313          	srli	t1,a5,0x4
1c008442:	0067d993          	srli	s3,a5,0x6
1c008446:	0087d893          	srli	a7,a5,0x8
1c00844a:	00a7d913          	srli	s2,a5,0xa
1c00844e:	00c7d813          	srli	a6,a5,0xc
1c008452:	00e7d493          	srli	s1,a5,0xe
1c008456:	0107d613          	srli	a2,a5,0x10
1c00845a:	0127d413          	srli	s0,a5,0x12
1c00845e:	0147d693          	srli	a3,a5,0x14
1c008462:	0167d393          	srli	t2,a5,0x16
1c008466:	0187d713          	srli	a4,a5,0x18
1c00846a:	01a7d293          	srli	t0,a5,0x1a
1c00846e:	01c7de93          	srli	t4,a5,0x1c
1c008472:	0037fe13          	andi	t3,a5,3
1c008476:	003a7a13          	andi	s4,s4,3
1c00847a:	00337313          	andi	t1,t1,3
1c00847e:	0039f993          	andi	s3,s3,3
1c008482:	0038f893          	andi	a7,a7,3
1c008486:	00397913          	andi	s2,s2,3
1c00848a:	00387813          	andi	a6,a6,3
1c00848e:	888d                	andi	s1,s1,3
1c008490:	8a0d                	andi	a2,a2,3
1c008492:	880d                	andi	s0,s0,3
1c008494:	8a8d                	andi	a3,a3,3
1c008496:	0033f393          	andi	t2,t2,3
1c00849a:	8b0d                	andi	a4,a4,3
1c00849c:	0032f293          	andi	t0,t0,3
1c0084a0:	003efe93          	andi	t4,t4,3
1c0084a4:	83f9                	srli	a5,a5,0x1e
1c0084a6:	414e0e33          	sub	t3,t3,s4
1c0084aa:	41330333          	sub	t1,t1,s3
1c0084ae:	412888b3          	sub	a7,a7,s2
1c0084b2:	40980833          	sub	a6,a6,s1
1c0084b6:	8e01                	sub	a2,a2,s0
1c0084b8:	407686b3          	sub	a3,a3,t2
1c0084bc:	40570733          	sub	a4,a4,t0
1c0084c0:	40fe87b3          	sub	a5,t4,a5
1c0084c4:	01c51023          	sh	t3,0(a0)
1c0084c8:	00651123          	sh	t1,2(a0)
1c0084cc:	01151223          	sh	a7,4(a0)
1c0084d0:	01051323          	sh	a6,6(a0)
1c0084d4:	00c51423          	sh	a2,8(a0)
1c0084d8:	00d51523          	sh	a3,10(a0)
1c0084dc:	00e51623          	sh	a4,12(a0)
1c0084e0:	00f51723          	sh	a5,14(a0)
1c0084e4:	0541                	addi	a0,a0,16
1c0084e6:	0591                	addi	a1,a1,4
1c0084e8:	f3f514e3          	bne	a0,t6,1c008410 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c0084ec:	4472                	lw	s0,28(sp)
1c0084ee:	44e2                	lw	s1,24(sp)
1c0084f0:	4952                	lw	s2,20(sp)
1c0084f2:	49c2                	lw	s3,16(sp)
1c0084f4:	4a32                	lw	s4,12(sp)
1c0084f6:	6105                	addi	sp,sp,32
1c0084f8:	8082                	ret

1c0084fa <keccak_absorb.constprop.1>:
1c0084fa:	7151                	addi	sp,sp,-240
1c0084fc:	d3a6                	sw	s1,228(sp)
1c0084fe:	cfce                	sw	s3,220(sp)
1c008500:	cdd2                	sw	s4,216(sp)
1c008502:	cbd6                	sw	s5,212(sp)
1c008504:	84b6                	mv	s1,a3
1c008506:	d786                	sw	ra,236(sp)
1c008508:	d5a2                	sw	s0,232(sp)
1c00850a:	d1ca                	sw	s2,224(sp)
1c00850c:	c9da                	sw	s6,208(sp)
1c00850e:	8a2a                	mv	s4,a0
1c008510:	87ae                	mv	a5,a1
1c008512:	8ab2                	mv	s5,a2
1c008514:	89aa                	mv	s3,a0
1c008516:	0c850693          	addi	a3,a0,200
1c00851a:	872a                	mv	a4,a0
1c00851c:	4581                	li	a1,0
1c00851e:	4601                	li	a2,0
1c008520:	c30c                	sw	a1,0(a4)
1c008522:	c350                	sw	a2,4(a4)
1c008524:	0721                	addi	a4,a4,8
1c008526:	fee69be3          	bne	a3,a4,1c00851c <keccak_absorb.constprop.1+0x22>
1c00852a:	08700713          	li	a4,135
1c00852e:	09577363          	bgeu	a4,s5,1c0085b4 <keccak_absorb.constprop.1+0xba>
1c008532:	08878b13          	addi	s6,a5,136
1c008536:	895a                	mv	s2,s6
1c008538:	08700413          	li	s0,135
1c00853c:	86d2                	mv	a3,s4
1c00853e:	0017c703          	lbu	a4,1(a5)
1c008542:	0027ce03          	lbu	t3,2(a5)
1c008546:	0057c803          	lbu	a6,5(a5)
1c00854a:	0047cf03          	lbu	t5,4(a5)
1c00854e:	0067c503          	lbu	a0,6(a5)
1c008552:	0007ce83          	lbu	t4,0(a5)
1c008556:	0037c583          	lbu	a1,3(a5)
1c00855a:	0077c603          	lbu	a2,7(a5)
1c00855e:	0722                	slli	a4,a4,0x8
1c008560:	0e42                	slli	t3,t3,0x10
1c008562:	0822                	slli	a6,a6,0x8
1c008564:	0006a303          	lw	t1,0(a3)
1c008568:	0046a883          	lw	a7,4(a3)
1c00856c:	01c76733          	or	a4,a4,t3
1c008570:	01e86833          	or	a6,a6,t5
1c008574:	0542                	slli	a0,a0,0x10
1c008576:	01d76733          	or	a4,a4,t4
1c00857a:	05e2                	slli	a1,a1,0x18
1c00857c:	01056533          	or	a0,a0,a6
1c008580:	0662                	slli	a2,a2,0x18
1c008582:	8f4d                	or	a4,a4,a1
1c008584:	8e49                	or	a2,a2,a0
1c008586:	00e34733          	xor	a4,t1,a4
1c00858a:	00c8c633          	xor	a2,a7,a2
1c00858e:	c298                	sw	a4,0(a3)
1c008590:	c2d0                	sw	a2,4(a3)
1c008592:	07a1                	addi	a5,a5,8
1c008594:	06a1                	addi	a3,a3,8
1c008596:	faf914e3          	bne	s2,a5,1c00853e <keccak_absorb.constprop.1+0x44>
1c00859a:	85d2                	mv	a1,s4
1c00859c:	8552                	mv	a0,s4
1c00859e:	33b5                	jal	1c00830a <KeccakF1600_StatePermute>
1c0085a0:	f78a8a93          	addi	s5,s5,-136
1c0085a4:	08890913          	addi	s2,s2,136
1c0085a8:	87da                	mv	a5,s6
1c0085aa:	01547563          	bgeu	s0,s5,1c0085b4 <keccak_absorb.constprop.1+0xba>
1c0085ae:	088b0b13          	addi	s6,s6,136
1c0085b2:	b769                	j	1c00853c <keccak_absorb.constprop.1+0x42>
1c0085b4:	0038                	addi	a4,sp,8
1c0085b6:	09010e13          	addi	t3,sp,144
1c0085ba:	86ba                	mv	a3,a4
1c0085bc:	0006a023          	sw	zero,0(a3)
1c0085c0:	0691                	addi	a3,a3,4
1c0085c2:	fede1de3          	bne	t3,a3,1c0085bc <keccak_absorb.constprop.1+0xc2>
1c0085c6:	080a8263          	beqz	s5,1c00864a <keccak_absorb.constprop.1+0x150>
1c0085ca:	fffa8693          	addi	a3,s5,-1
1c0085ce:	4609                	li	a2,2
1c0085d0:	10d67163          	bgeu	a2,a3,1c0086d2 <keccak_absorb.constprop.1+0x1d8>
1c0085d4:	ffcaf313          	andi	t1,s5,-4
1c0085d8:	86be                	mv	a3,a5
1c0085da:	933e                	add	t1,t1,a5
1c0085dc:	883a                	mv	a6,a4
1c0085de:	0016c503          	lbu	a0,1(a3)
1c0085e2:	0006c883          	lbu	a7,0(a3)
1c0085e6:	0026c583          	lbu	a1,2(a3)
1c0085ea:	0036c603          	lbu	a2,3(a3)
1c0085ee:	0522                	slli	a0,a0,0x8
1c0085f0:	01156533          	or	a0,a0,a7
1c0085f4:	05c2                	slli	a1,a1,0x10
1c0085f6:	8dc9                	or	a1,a1,a0
1c0085f8:	0662                	slli	a2,a2,0x18
1c0085fa:	8e4d                	or	a2,a2,a1
1c0085fc:	00c82023          	sw	a2,0(a6)
1c008600:	0691                	addi	a3,a3,4
1c008602:	0811                	addi	a6,a6,4
1c008604:	fcd31de3          	bne	t1,a3,1c0085de <keccak_absorb.constprop.1+0xe4>
1c008608:	ffcaf693          	andi	a3,s5,-4
1c00860c:	02da8f63          	beq	s5,a3,1c00864a <keccak_absorb.constprop.1+0x150>
1c008610:	00d78633          	add	a2,a5,a3
1c008614:	00064503          	lbu	a0,0(a2)
1c008618:	098c                	addi	a1,sp,208
1c00861a:	95b6                	add	a1,a1,a3
1c00861c:	00168613          	addi	a2,a3,1
1c008620:	f2a58c23          	sb	a0,-200(a1)
1c008624:	03567363          	bgeu	a2,s5,1c00864a <keccak_absorb.constprop.1+0x150>
1c008628:	00c785b3          	add	a1,a5,a2
1c00862c:	0005c583          	lbu	a1,0(a1)
1c008630:	0988                	addi	a0,sp,208
1c008632:	962a                	add	a2,a2,a0
1c008634:	0689                	addi	a3,a3,2
1c008636:	f2b60c23          	sb	a1,-200(a2)
1c00863a:	0156f863          	bgeu	a3,s5,1c00864a <keccak_absorb.constprop.1+0x150>
1c00863e:	97b6                	add	a5,a5,a3
1c008640:	0007c783          	lbu	a5,0(a5)
1c008644:	96aa                	add	a3,a3,a0
1c008646:	f2f68c23          	sb	a5,-200(a3)
1c00864a:	099c                	addi	a5,sp,208
1c00864c:	9abe                	add	s5,s5,a5
1c00864e:	f29a8c23          	sb	s1,-200(s5)
1c008652:	08f14783          	lbu	a5,143(sp)
1c008656:	f807e793          	ori	a5,a5,-128
1c00865a:	08f107a3          	sb	a5,143(sp)
1c00865e:	00174783          	lbu	a5,1(a4)
1c008662:	00274303          	lbu	t1,2(a4)
1c008666:	00574503          	lbu	a0,5(a4)
1c00866a:	00474f03          	lbu	t5,4(a4)
1c00866e:	00674583          	lbu	a1,6(a4)
1c008672:	00074e83          	lbu	t4,0(a4)
1c008676:	00374603          	lbu	a2,3(a4)
1c00867a:	00774683          	lbu	a3,7(a4)
1c00867e:	07a2                	slli	a5,a5,0x8
1c008680:	0342                	slli	t1,t1,0x10
1c008682:	0522                	slli	a0,a0,0x8
1c008684:	0009a883          	lw	a7,0(s3)
1c008688:	0049a803          	lw	a6,4(s3)
1c00868c:	0067e7b3          	or	a5,a5,t1
1c008690:	01e56533          	or	a0,a0,t5
1c008694:	05c2                	slli	a1,a1,0x10
1c008696:	01d7e7b3          	or	a5,a5,t4
1c00869a:	0662                	slli	a2,a2,0x18
1c00869c:	8dc9                	or	a1,a1,a0
1c00869e:	06e2                	slli	a3,a3,0x18
1c0086a0:	8e5d                	or	a2,a2,a5
1c0086a2:	00b6e7b3          	or	a5,a3,a1
1c0086a6:	00c8c633          	xor	a2,a7,a2
1c0086aa:	00f847b3          	xor	a5,a6,a5
1c0086ae:	00c9a023          	sw	a2,0(s3)
1c0086b2:	00f9a223          	sw	a5,4(s3)
1c0086b6:	0721                	addi	a4,a4,8
1c0086b8:	09a1                	addi	s3,s3,8
1c0086ba:	faee12e3          	bne	t3,a4,1c00865e <keccak_absorb.constprop.1+0x164>
1c0086be:	50be                	lw	ra,236(sp)
1c0086c0:	542e                	lw	s0,232(sp)
1c0086c2:	549e                	lw	s1,228(sp)
1c0086c4:	590e                	lw	s2,224(sp)
1c0086c6:	49fe                	lw	s3,220(sp)
1c0086c8:	4a6e                	lw	s4,216(sp)
1c0086ca:	4ade                	lw	s5,212(sp)
1c0086cc:	4b4e                	lw	s6,208(sp)
1c0086ce:	616d                	addi	sp,sp,240
1c0086d0:	8082                	ret
1c0086d2:	4681                	li	a3,0
1c0086d4:	bf35                	j	1c008610 <keccak_absorb.constprop.1+0x116>

1c0086d6 <shake256>:
1c0086d6:	7131                	addi	sp,sp,-192
1c0086d8:	db26                	sw	s1,180(sp)
1c0086da:	d74e                	sw	s3,172(sp)
1c0086dc:	84aa                	mv	s1,a0
1c0086de:	08800993          	li	s3,136
1c0086e2:	0c800513          	li	a0,200
1c0086e6:	dd22                	sw	s0,184(sp)
1c0086e8:	d94a                	sw	s2,176(sp)
1c0086ea:	d356                	sw	s5,164(sp)
1c0086ec:	df06                	sw	ra,188(sp)
1c0086ee:	d552                	sw	s4,168(sp)
1c0086f0:	d15a                	sw	s6,160(sp)
1c0086f2:	cf5e                	sw	s7,156(sp)
1c0086f4:	cd62                	sw	s8,152(sp)
1c0086f6:	0335d9b3          	divu	s3,a1,s3
1c0086fa:	892e                	mv	s2,a1
1c0086fc:	8432                	mv	s0,a2
1c0086fe:	8ab6                	mv	s5,a3
1c008700:	013010ef          	jal	ra,1c009f12 <pi_l2_malloc>
1c008704:	24050563          	beqz	a0,1c00894e <shake256+0x278>
1c008708:	46fd                	li	a3,31
1c00870a:	8656                	mv	a2,s5
1c00870c:	85a2                	mv	a1,s0
1c00870e:	8a2a                	mv	s4,a0
1c008710:	33ed                	jal	1c0084fa <keccak_absorb.constprop.1>
1c008712:	08700793          	li	a5,135
1c008716:	0d27fe63          	bgeu	a5,s2,1c0087f2 <shake256+0x11c>
1c00871a:	00499413          	slli	s0,s3,0x4
1c00871e:	944e                	add	s0,s0,s3
1c008720:	040e                	slli	s0,s0,0x3
1c008722:	7bc1                	lui	s7,0xffff0
1c008724:	ff010b37          	lui	s6,0xff010
1c008728:	01000ab7          	lui	s5,0x1000
1c00872c:	9426                	add	s0,s0,s1
1c00872e:	8c26                	mv	s8,s1
1c008730:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008734:	1b7d                	addi	s6,s6,-1
1c008736:	1afd                	addi	s5,s5,-1
1c008738:	85d2                	mv	a1,s4
1c00873a:	8552                	mv	a0,s4
1c00873c:	36f9                	jal	1c00830a <KeccakF1600_StatePermute>
1c00873e:	87e2                	mv	a5,s8
1c008740:	418a0533          	sub	a0,s4,s8
1c008744:	088c0593          	addi	a1,s8,136
1c008748:	00f50733          	add	a4,a0,a5
1c00874c:	4314                	lw	a3,0(a4)
1c00874e:	4358                	lw	a4,4(a4)
1c008750:	07a1                	addi	a5,a5,8
1c008752:	0086d313          	srli	t1,a3,0x8
1c008756:	00875893          	srli	a7,a4,0x8
1c00875a:	0ff6f813          	andi	a6,a3,255
1c00875e:	0ff77613          	andi	a2,a4,255
1c008762:	0ff37313          	andi	t1,t1,255
1c008766:	0ff8f893          	andi	a7,a7,255
1c00876a:	0322                	slli	t1,t1,0x8
1c00876c:	08a2                	slli	a7,a7,0x8
1c00876e:	01787833          	and	a6,a6,s7
1c008772:	01767633          	and	a2,a2,s7
1c008776:	00686833          	or	a6,a6,t1
1c00877a:	01166633          	or	a2,a2,a7
1c00877e:	00ff0337          	lui	t1,0xff0
1c008782:	00ff08b7          	lui	a7,0xff0
1c008786:	0066f333          	and	t1,a3,t1
1c00878a:	011778b3          	and	a7,a4,a7
1c00878e:	01687833          	and	a6,a6,s6
1c008792:	01667633          	and	a2,a2,s6
1c008796:	00686833          	or	a6,a6,t1
1c00879a:	01166633          	or	a2,a2,a7
1c00879e:	82e1                	srli	a3,a3,0x18
1c0087a0:	8361                	srli	a4,a4,0x18
1c0087a2:	01587833          	and	a6,a6,s5
1c0087a6:	01567633          	and	a2,a2,s5
1c0087aa:	06e2                	slli	a3,a3,0x18
1c0087ac:	0762                	slli	a4,a4,0x18
1c0087ae:	00d866b3          	or	a3,a6,a3
1c0087b2:	8f51                	or	a4,a4,a2
1c0087b4:	0086de93          	srli	t4,a3,0x8
1c0087b8:	0106de13          	srli	t3,a3,0x10
1c0087bc:	00875313          	srli	t1,a4,0x8
1c0087c0:	01075893          	srli	a7,a4,0x10
1c0087c4:	82e1                	srli	a3,a3,0x18
1c0087c6:	8361                	srli	a4,a4,0x18
1c0087c8:	ff078c23          	sb	a6,-8(a5)
1c0087cc:	ffd78ca3          	sb	t4,-7(a5)
1c0087d0:	ffc78d23          	sb	t3,-6(a5)
1c0087d4:	fed78da3          	sb	a3,-5(a5)
1c0087d8:	fec78e23          	sb	a2,-4(a5)
1c0087dc:	fe678ea3          	sb	t1,-3(a5)
1c0087e0:	ff178f23          	sb	a7,-2(a5)
1c0087e4:	fee78fa3          	sb	a4,-1(a5)
1c0087e8:	f6f590e3          	bne	a1,a5,1c008748 <shake256+0x72>
1c0087ec:	8c2e                	mv	s8,a1
1c0087ee:	f48595e3          	bne	a1,s0,1c008738 <shake256+0x62>
1c0087f2:	08800593          	li	a1,136
1c0087f6:	02b97933          	remu	s2,s2,a1
1c0087fa:	02091263          	bnez	s2,1c00881e <shake256+0x148>
1c0087fe:	546a                	lw	s0,184(sp)
1c008800:	50fa                	lw	ra,188(sp)
1c008802:	54da                	lw	s1,180(sp)
1c008804:	594a                	lw	s2,176(sp)
1c008806:	59ba                	lw	s3,172(sp)
1c008808:	5a9a                	lw	s5,164(sp)
1c00880a:	5b0a                	lw	s6,160(sp)
1c00880c:	4bfa                	lw	s7,156(sp)
1c00880e:	4c6a                	lw	s8,152(sp)
1c008810:	8552                	mv	a0,s4
1c008812:	5a2a                	lw	s4,168(sp)
1c008814:	0c800593          	li	a1,200
1c008818:	6129                	addi	sp,sp,192
1c00881a:	7040106f          	j	1c009f1e <pi_l2_free>
1c00881e:	85d2                	mv	a1,s4
1c008820:	8552                	mv	a0,s4
1c008822:	34e5                	jal	1c00830a <KeccakF1600_StatePermute>
1c008824:	002c                	addi	a1,sp,8
1c008826:	78c1                	lui	a7,0xffff0
1c008828:	ff010837          	lui	a6,0xff010
1c00882c:	01000537          	lui	a0,0x1000
1c008830:	09010e13          	addi	t3,sp,144
1c008834:	862e                	mv	a2,a1
1c008836:	40ba0333          	sub	t1,s4,a1
1c00883a:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00883e:	187d                	addi	a6,a6,-1
1c008840:	157d                	addi	a0,a0,-1
1c008842:	00c307b3          	add	a5,t1,a2
1c008846:	0007ae83          	lw	t4,0(a5)
1c00884a:	43d4                	lw	a3,4(a5)
1c00884c:	0621                	addi	a2,a2,8
1c00884e:	008edf93          	srli	t6,t4,0x8
1c008852:	0086df13          	srli	t5,a3,0x8
1c008856:	0ffef713          	andi	a4,t4,255
1c00885a:	0ff6f793          	andi	a5,a3,255
1c00885e:	0fffff93          	andi	t6,t6,255
1c008862:	0fff7f13          	andi	t5,t5,255
1c008866:	0fa2                	slli	t6,t6,0x8
1c008868:	0f22                	slli	t5,t5,0x8
1c00886a:	01177733          	and	a4,a4,a7
1c00886e:	0117f7b3          	and	a5,a5,a7
1c008872:	01f76733          	or	a4,a4,t6
1c008876:	01e7e7b3          	or	a5,a5,t5
1c00887a:	00ff0fb7          	lui	t6,0xff0
1c00887e:	00ff0f37          	lui	t5,0xff0
1c008882:	01feffb3          	and	t6,t4,t6
1c008886:	01e6ff33          	and	t5,a3,t5
1c00888a:	01077733          	and	a4,a4,a6
1c00888e:	0107f7b3          	and	a5,a5,a6
1c008892:	01f76733          	or	a4,a4,t6
1c008896:	018ede93          	srli	t4,t4,0x18
1c00889a:	01e7e7b3          	or	a5,a5,t5
1c00889e:	82e1                	srli	a3,a3,0x18
1c0088a0:	0ee2                	slli	t4,t4,0x18
1c0088a2:	8f69                	and	a4,a4,a0
1c0088a4:	06e2                	slli	a3,a3,0x18
1c0088a6:	8fe9                	and	a5,a5,a0
1c0088a8:	01d76733          	or	a4,a4,t4
1c0088ac:	8fd5                	or	a5,a5,a3
1c0088ae:	fee62c23          	sw	a4,-8(a2)
1c0088b2:	fef62e23          	sw	a5,-4(a2)
1c0088b6:	f8ce16e3          	bne	t3,a2,1c008842 <shake256+0x16c>
1c0088ba:	fff90793          	addi	a5,s2,-1
1c0088be:	4709                	li	a4,2
1c0088c0:	08f77363          	bgeu	a4,a5,1c008946 <shake256+0x270>
1c0088c4:	00499413          	slli	s0,s3,0x4
1c0088c8:	013407b3          	add	a5,s0,s3
1c0088cc:	078e                	slli	a5,a5,0x3
1c0088ce:	97a6                	add	a5,a5,s1
1c0088d0:	0fc97813          	andi	a6,s2,252
1c0088d4:	983e                	add	a6,a6,a5
1c0088d6:	4198                	lw	a4,0(a1)
1c0088d8:	0791                	addi	a5,a5,4
1c0088da:	0591                	addi	a1,a1,4
1c0088dc:	00875513          	srli	a0,a4,0x8
1c0088e0:	01075613          	srli	a2,a4,0x10
1c0088e4:	01875693          	srli	a3,a4,0x18
1c0088e8:	fea78ea3          	sb	a0,-3(a5)
1c0088ec:	fec78f23          	sb	a2,-2(a5)
1c0088f0:	fed78fa3          	sb	a3,-1(a5)
1c0088f4:	fee78e23          	sb	a4,-4(a5)
1c0088f8:	fcf81fe3          	bne	a6,a5,1c0088d6 <shake256+0x200>
1c0088fc:	ffc97793          	andi	a5,s2,-4
1c008900:	eef90fe3          	beq	s2,a5,1c0087fe <shake256+0x128>
1c008904:	0918                	addi	a4,sp,144
1c008906:	973e                	add	a4,a4,a5
1c008908:	99a2                	add	s3,s3,s0
1c00890a:	f7874683          	lbu	a3,-136(a4)
1c00890e:	098e                	slli	s3,s3,0x3
1c008910:	99a6                	add	s3,s3,s1
1c008912:	00f98733          	add	a4,s3,a5
1c008916:	00d70023          	sb	a3,0(a4)
1c00891a:	00178713          	addi	a4,a5,1
1c00891e:	ef2770e3          	bgeu	a4,s2,1c0087fe <shake256+0x128>
1c008922:	0914                	addi	a3,sp,144
1c008924:	96ba                	add	a3,a3,a4
1c008926:	f786c683          	lbu	a3,-136(a3)
1c00892a:	974e                	add	a4,a4,s3
1c00892c:	0789                	addi	a5,a5,2
1c00892e:	00d70023          	sb	a3,0(a4)
1c008932:	ed27f6e3          	bgeu	a5,s2,1c0087fe <shake256+0x128>
1c008936:	0918                	addi	a4,sp,144
1c008938:	973e                	add	a4,a4,a5
1c00893a:	f7874703          	lbu	a4,-136(a4)
1c00893e:	99be                	add	s3,s3,a5
1c008940:	00e98023          	sb	a4,0(s3)
1c008944:	bd6d                	j	1c0087fe <shake256+0x128>
1c008946:	4781                	li	a5,0
1c008948:	00499413          	slli	s0,s3,0x4
1c00894c:	bf65                	j	1c008904 <shake256+0x22e>
1c00894e:	06f00513          	li	a0,111
1c008952:	2171                	jal	1c008dde <exit>

1c008954 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c008954:	9b010113          	addi	sp,sp,-1616
1c008958:	100c                	addi	a1,sp,32
1c00895a:	4601                	li	a2,0
1c00895c:	0088                	addi	a0,sp,64
1c00895e:	64112623          	sw	ra,1612(sp)
1c008962:	2025                	jal	1c00898a <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c008964:	1c000537          	lui	a0,0x1c000
1c008968:	13c50513          	addi	a0,a0,316 # 1c00013c <__clz_tab+0x120>
1c00896c:	2ed5                	jal	1c008d60 <puts>
1c00896e:	0088                	addi	a0,sp,64
1c008970:	2835                	jal	1c0089ac <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c008972:	64c12083          	lw	ra,1612(sp)
1c008976:	65010113          	addi	sp,sp,1616
1c00897a:	8082                	ret

1c00897c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c00897c:	1141                	addi	sp,sp,-16
1c00897e:	c606                	sw	ra,12(sp)
1c008980:	3fd1                	jal	1c008954 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c008982:	40b2                	lw	ra,12(sp)
1c008984:	4501                	li	a0,0
1c008986:	0141                	addi	sp,sp,16
1c008988:	8082                	ret

1c00898a <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c00898a:	7175                	addi	sp,sp,-144
1c00898c:	c522                	sw	s0,136(sp)
1c00898e:	86b2                	mv	a3,a2
1c008990:	842a                	mv	s0,a0
1c008992:	862e                	mv	a2,a1
1c008994:	850a                	mv	a0,sp
1c008996:	08000593          	li	a1,128
1c00899a:	c706                	sw	ra,140(sp)
1c00899c:	2a19                	jal	1c008ab2 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00899e:	858a                	mv	a1,sp
1c0089a0:	8522                	mv	a0,s0
1c0089a2:	3c99                	jal	1c0083f8 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c0089a4:	40ba                	lw	ra,140(sp)
1c0089a6:	442a                	lw	s0,136(sp)
1c0089a8:	6149                	addi	sp,sp,144
1c0089aa:	8082                	ret

1c0089ac <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c0089ac:	86010113          	addi	sp,sp,-1952
1c0089b0:	78812c23          	sw	s0,1944(sp)
1c0089b4:	0c800613          	li	a2,200
1c0089b8:	842a                	mv	s0,a0
1c0089ba:	4581                	li	a1,0
1c0089bc:	850a                	mv	a0,sp
1c0089be:	78112e23          	sw	ra,1948(sp)
1c0089c2:	78912a23          	sw	s1,1940(sp)
1c0089c6:	79212823          	sw	s2,1936(sp)
1c0089ca:	2299                	jal	1c008b10 <memset>
1c0089cc:	0c800613          	li	a2,200
1c0089d0:	4581                	li	a1,0
1c0089d2:	01a8                	addi	a0,sp,200
1c0089d4:	2a35                	jal	1c008b10 <memset>
1c0089d6:	20000613          	li	a2,512
1c0089da:	4581                	li	a1,0
1c0089dc:	0b08                	addi	a0,sp,400
1c0089de:	2a0d                	jal	1c008b10 <memset>
1c0089e0:	0f04                	addi	s1,sp,912
1c0089e2:	20000613          	li	a2,512
1c0089e6:	4581                	li	a1,0
1c0089e8:	8526                	mv	a0,s1
1c0089ea:	221d                	jal	1c008b10 <memset>
1c0089ec:	20000613          	li	a2,512
1c0089f0:	85a2                	mv	a1,s0
1c0089f2:	59010513          	addi	a0,sp,1424
1c0089f6:	2a79                	jal	1c008b94 <memcpy>
1c0089f8:	6541                	lui	a0,0x10
1c0089fa:	59010693          	addi	a3,sp,1424
1c0089fe:	4601                	li	a2,0
1c008a00:	157d                	addi	a0,a0,-1
1c008a02:	10000813          	li	a6,256
1c008a06:	00069703          	lh	a4,0(a3)
1c008a0a:	00269583          	lh	a1,2(a3)
1c008a0e:	00165793          	srli	a5,a2,0x1
1c008a12:	078a                	slli	a5,a5,0x2
1c008a14:	0742                	slli	a4,a4,0x10
1c008a16:	8de9                	and	a1,a1,a0
1c008a18:	79010413          	addi	s0,sp,1936
1c008a1c:	97a2                	add	a5,a5,s0
1c008a1e:	8f4d                	or	a4,a4,a1
1c008a20:	a0e7a023          	sw	a4,-1536(a5)
1c008a24:	0609                	addi	a2,a2,2
1c008a26:	0691                	addi	a3,a3,4
1c008a28:	fd061fe3          	bne	a2,a6,1c008a06 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x5a>
1c008a2c:	0b00                	addi	s0,sp,400
1c008a2e:	1c000937          	lui	s2,0x1c000
1c008a32:	400c                	lw	a1,0(s0)
1c008a34:	13490513          	addi	a0,s2,308 # 1c000134 <__clz_tab+0x118>
1c008a38:	0411                	addi	s0,s0,4
1c008a3a:	26c1                	jal	1c008dfa <printf>
1c008a3c:	fe849be3          	bne	s1,s0,1c008a32 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x86>
1c008a40:	1c000537          	lui	a0,0x1c000
1c008a44:	15050513          	addi	a0,a0,336 # 1c000150 <__clz_tab+0x134>
1c008a48:	2e21                	jal	1c008d60 <puts>
1c008a4a:	85a6                	mv	a1,s1
1c008a4c:	0b08                	addi	a0,sp,400
1c008a4e:	3215                	jal	1c008372 <KYBER_poly_ntt>
1c008a50:	1c000537          	lui	a0,0x1c000
1c008a54:	17450513          	addi	a0,a0,372 # 1c000174 <__clz_tab+0x158>
1c008a58:	2621                	jal	1c008d60 <puts>
1c008a5a:	1c000537          	lui	a0,0x1c000
1c008a5e:	19450513          	addi	a0,a0,404 # 1c000194 <__clz_tab+0x178>
1c008a62:	2e61                	jal	1c008dfa <printf>
1c008a64:	7369c7b7          	lui	a5,0x7369c
1c008a68:	66778793          	addi	a5,a5,1639 # 7369c667 <__l2_shared_end+0x5768c667>
1c008a6c:	c03e                	sw	a5,0(sp)
1c008a6e:	ec4b07b7          	lui	a5,0xec4b0
1c008a72:	f5178793          	addi	a5,a5,-175 # ec4aff51 <__l2_shared_end+0xd049ff51>
1c008a76:	c23e                	sw	a5,4(sp)
1c008a78:	abbad7b7          	lui	a5,0xabbad
1c008a7c:	d2978793          	addi	a5,a5,-727 # abbacd29 <__l2_shared_end+0x8fb9cd29>
1c008a80:	c43e                	sw	a5,8(sp)
1c008a82:	47c1                	li	a5,16
1c008a84:	01ac                	addi	a1,sp,200
1c008a86:	c63e                	sw	a5,12(sp)
1c008a88:	850a                	mv	a0,sp
1c008a8a:	800007b7          	lui	a5,0x80000
1c008a8e:	debe                	sw	a5,124(sp)
1c008a90:	38ad                	jal	1c00830a <KeccakF1600_StatePermute>
1c008a92:	1c000537          	lui	a0,0x1c000
1c008a96:	1cc50513          	addi	a0,a0,460 # 1c0001cc <__clz_tab+0x1b0>
1c008a9a:	2685                	jal	1c008dfa <printf>
1c008a9c:	79c12083          	lw	ra,1948(sp)
1c008aa0:	79812403          	lw	s0,1944(sp)
1c008aa4:	79412483          	lw	s1,1940(sp)
1c008aa8:	79012903          	lw	s2,1936(sp)
1c008aac:	7a010113          	addi	sp,sp,1952
1c008ab0:	8082                	ret

1c008ab2 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c008ab2:	7139                	addi	sp,sp,-64
1c008ab4:	87b2                	mv	a5,a2
1c008ab6:	da26                	sw	s1,52(sp)
1c008ab8:	d84a                	sw	s2,48(sp)
1c008aba:	84aa                	mv	s1,a0
1c008abc:	892e                	mv	s2,a1
1c008abe:	02000613          	li	a2,32
1c008ac2:	85be                	mv	a1,a5
1c008ac4:	0068                	addi	a0,sp,12
1c008ac6:	de06                	sw	ra,60(sp)
1c008ac8:	dc22                	sw	s0,56(sp)
1c008aca:	8436                	mv	s0,a3
1c008acc:	20e1                	jal	1c008b94 <memcpy>
1c008ace:	0070                	addi	a2,sp,12
1c008ad0:	85ca                	mv	a1,s2
1c008ad2:	8526                	mv	a0,s1
1c008ad4:	02100693          	li	a3,33
1c008ad8:	02810623          	sb	s0,44(sp)
1c008adc:	3eed                	jal	1c0086d6 <shake256>
1c008ade:	50f2                	lw	ra,60(sp)
1c008ae0:	5462                	lw	s0,56(sp)
1c008ae2:	54d2                	lw	s1,52(sp)
1c008ae4:	5942                	lw	s2,48(sp)
1c008ae6:	6121                	addi	sp,sp,64
1c008ae8:	8082                	ret

1c008aea <pos_wait_forever>:
1c008aea:	f14027f3          	csrr	a5,mhartid
1c008aee:	8795                	srai	a5,a5,0x5
1c008af0:	03f7f793          	andi	a5,a5,63
1c008af4:	477d                	li	a4,31
1c008af6:	00e78363          	beq	a5,a4,1c008afc <pos_wait_forever+0x12>
1c008afa:	a001                	j	1c008afa <pos_wait_forever+0x10>
1c008afc:	1a10a7b7          	lui	a5,0x1a10a
1c008b00:	577d                	li	a4,-1
1c008b02:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c008b06:	10500073          	wfi
1c008b0a:	10500073          	wfi
1c008b0e:	bfe5                	j	1c008b06 <pos_wait_forever+0x1c>

1c008b10 <memset>:
1c008b10:	fff60e13          	addi	t3,a2,-1
1c008b14:	ce25                	beqz	a2,1c008b8c <memset+0x7c>
1c008b16:	4789                	li	a5,2
1c008b18:	0ff5f593          	andi	a1,a1,255
1c008b1c:	07c7fa63          	bgeu	a5,t3,1c008b90 <memset+0x80>
1c008b20:	00859793          	slli	a5,a1,0x8
1c008b24:	8fcd                	or	a5,a5,a1
1c008b26:	01059713          	slli	a4,a1,0x10
1c008b2a:	8f5d                	or	a4,a4,a5
1c008b2c:	01859693          	slli	a3,a1,0x18
1c008b30:	8ed9                	or	a3,a3,a4
1c008b32:	0086d313          	srli	t1,a3,0x8
1c008b36:	0106d893          	srli	a7,a3,0x10
1c008b3a:	ffc67813          	andi	a6,a2,-4
1c008b3e:	87aa                	mv	a5,a0
1c008b40:	982a                	add	a6,a6,a0
1c008b42:	0ff77713          	andi	a4,a4,255
1c008b46:	82e1                	srli	a3,a3,0x18
1c008b48:	0ff37313          	andi	t1,t1,255
1c008b4c:	0ff8f893          	andi	a7,a7,255
1c008b50:	00e78023          	sb	a4,0(a5)
1c008b54:	006780a3          	sb	t1,1(a5)
1c008b58:	01178123          	sb	a7,2(a5)
1c008b5c:	00d781a3          	sb	a3,3(a5)
1c008b60:	0791                	addi	a5,a5,4
1c008b62:	ff0797e3          	bne	a5,a6,1c008b50 <memset+0x40>
1c008b66:	ffc67793          	andi	a5,a2,-4
1c008b6a:	00f50733          	add	a4,a0,a5
1c008b6e:	40fe0e33          	sub	t3,t3,a5
1c008b72:	00f60e63          	beq	a2,a5,1c008b8e <memset+0x7e>
1c008b76:	00b70023          	sb	a1,0(a4)
1c008b7a:	000e0963          	beqz	t3,1c008b8c <memset+0x7c>
1c008b7e:	00b700a3          	sb	a1,1(a4)
1c008b82:	4785                	li	a5,1
1c008b84:	00fe0463          	beq	t3,a5,1c008b8c <memset+0x7c>
1c008b88:	00b70123          	sb	a1,2(a4)
1c008b8c:	8082                	ret
1c008b8e:	8082                	ret
1c008b90:	872a                	mv	a4,a0
1c008b92:	b7d5                	j	1c008b76 <memset+0x66>

1c008b94 <memcpy>:
1c008b94:	00c5e7b3          	or	a5,a1,a2
1c008b98:	8fc9                	or	a5,a5,a0
1c008b9a:	8b8d                	andi	a5,a5,3
1c008b9c:	872e                	mv	a4,a1
1c008b9e:	882a                	mv	a6,a0
1c008ba0:	cbc5                	beqz	a5,1c008c50 <memcpy+0xbc>
1c008ba2:	c279                	beqz	a2,1c008c68 <memcpy+0xd4>
1c008ba4:	00350793          	addi	a5,a0,3
1c008ba8:	8f8d                	sub	a5,a5,a1
1c008baa:	0077b793          	sltiu	a5,a5,7
1c008bae:	e7d1                	bnez	a5,1c008c3a <memcpy+0xa6>
1c008bb0:	fff60793          	addi	a5,a2,-1
1c008bb4:	0047b793          	sltiu	a5,a5,4
1c008bb8:	e3c9                	bnez	a5,1c008c3a <memcpy+0xa6>
1c008bba:	ffc67e13          	andi	t3,a2,-4
1c008bbe:	9e2e                	add	t3,t3,a1
1c008bc0:	00174883          	lbu	a7,1(a4)
1c008bc4:	00074303          	lbu	t1,0(a4)
1c008bc8:	00274683          	lbu	a3,2(a4)
1c008bcc:	00374783          	lbu	a5,3(a4)
1c008bd0:	08a2                	slli	a7,a7,0x8
1c008bd2:	0068e8b3          	or	a7,a7,t1
1c008bd6:	06c2                	slli	a3,a3,0x10
1c008bd8:	0116e6b3          	or	a3,a3,a7
1c008bdc:	07e2                	slli	a5,a5,0x18
1c008bde:	8fd5                	or	a5,a5,a3
1c008be0:	0087d313          	srli	t1,a5,0x8
1c008be4:	0107d893          	srli	a7,a5,0x10
1c008be8:	83e1                	srli	a5,a5,0x18
1c008bea:	00d80023          	sb	a3,0(a6) # ff010000 <__l2_shared_end+0xe3000000>
1c008bee:	006800a3          	sb	t1,1(a6)
1c008bf2:	01180123          	sb	a7,2(a6)
1c008bf6:	00f801a3          	sb	a5,3(a6)
1c008bfa:	0711                	addi	a4,a4,4
1c008bfc:	0811                	addi	a6,a6,4
1c008bfe:	fdc711e3          	bne	a4,t3,1c008bc0 <memcpy+0x2c>
1c008c02:	ffc67793          	andi	a5,a2,-4
1c008c06:	00367693          	andi	a3,a2,3
1c008c0a:	00f50733          	add	a4,a0,a5
1c008c0e:	95be                	add	a1,a1,a5
1c008c10:	02f60f63          	beq	a2,a5,1c008c4e <memcpy+0xba>
1c008c14:	0005c603          	lbu	a2,0(a1)
1c008c18:	fff68793          	addi	a5,a3,-1
1c008c1c:	00c70023          	sb	a2,0(a4)
1c008c20:	c79d                	beqz	a5,1c008c4e <memcpy+0xba>
1c008c22:	0015c603          	lbu	a2,1(a1)
1c008c26:	4789                	li	a5,2
1c008c28:	00c700a3          	sb	a2,1(a4)
1c008c2c:	02f68163          	beq	a3,a5,1c008c4e <memcpy+0xba>
1c008c30:	0025c783          	lbu	a5,2(a1)
1c008c34:	00f70123          	sb	a5,2(a4)
1c008c38:	8082                	ret
1c008c3a:	962e                	add	a2,a2,a1
1c008c3c:	87aa                	mv	a5,a0
1c008c3e:	0005c703          	lbu	a4,0(a1)
1c008c42:	0585                	addi	a1,a1,1
1c008c44:	0785                	addi	a5,a5,1
1c008c46:	fee78fa3          	sb	a4,-1(a5)
1c008c4a:	fec59ae3          	bne	a1,a2,1c008c3e <memcpy+0xaa>
1c008c4e:	8082                	ret
1c008c50:	de7d                	beqz	a2,1c008c4e <memcpy+0xba>
1c008c52:	87aa                	mv	a5,a0
1c008c54:	4194                	lw	a3,0(a1)
1c008c56:	0791                	addi	a5,a5,4
1c008c58:	40c78733          	sub	a4,a5,a2
1c008c5c:	fed7ae23          	sw	a3,-4(a5)
1c008c60:	0591                	addi	a1,a1,4
1c008c62:	fea719e3          	bne	a4,a0,1c008c54 <memcpy+0xc0>
1c008c66:	8082                	ret
1c008c68:	8082                	ret

1c008c6a <memmove>:
1c008c6a:	40b507b3          	sub	a5,a0,a1
1c008c6e:	0ac7e063          	bltu	a5,a2,1c008d0e <memmove+0xa4>
1c008c72:	c661                	beqz	a2,1c008d3a <memmove+0xd0>
1c008c74:	00350793          	addi	a5,a0,3
1c008c78:	8f8d                	sub	a5,a5,a1
1c008c7a:	0077b793          	sltiu	a5,a5,7
1c008c7e:	e3dd                	bnez	a5,1c008d24 <memmove+0xba>
1c008c80:	fff60793          	addi	a5,a2,-1
1c008c84:	0047b793          	sltiu	a5,a5,4
1c008c88:	efd1                	bnez	a5,1c008d24 <memmove+0xba>
1c008c8a:	ffc67e13          	andi	t3,a2,-4
1c008c8e:	872e                	mv	a4,a1
1c008c90:	882a                	mv	a6,a0
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
1c008cbe:	00d80023          	sb	a3,0(a6)
1c008cc2:	006800a3          	sb	t1,1(a6)
1c008cc6:	01180123          	sb	a7,2(a6)
1c008cca:	00f801a3          	sb	a5,3(a6)
1c008cce:	0711                	addi	a4,a4,4
1c008cd0:	0811                	addi	a6,a6,4
1c008cd2:	fdc711e3          	bne	a4,t3,1c008c94 <memmove+0x2a>
1c008cd6:	ffc67793          	andi	a5,a2,-4
1c008cda:	00367693          	andi	a3,a2,3
1c008cde:	00f50733          	add	a4,a0,a5
1c008ce2:	95be                	add	a1,a1,a5
1c008ce4:	04f60a63          	beq	a2,a5,1c008d38 <memmove+0xce>
1c008ce8:	0005c603          	lbu	a2,0(a1)
1c008cec:	fff68793          	addi	a5,a3,-1
1c008cf0:	00c70023          	sb	a2,0(a4)
1c008cf4:	c3b1                	beqz	a5,1c008d38 <memmove+0xce>
1c008cf6:	0015c603          	lbu	a2,1(a1)
1c008cfa:	4789                	li	a5,2
1c008cfc:	00c700a3          	sb	a2,1(a4)
1c008d00:	02f68c63          	beq	a3,a5,1c008d38 <memmove+0xce>
1c008d04:	0025c783          	lbu	a5,2(a1)
1c008d08:	00f70123          	sb	a5,2(a4)
1c008d0c:	8082                	ret
1c008d0e:	167d                	addi	a2,a2,-1
1c008d10:	00c587b3          	add	a5,a1,a2
1c008d14:	0007c703          	lbu	a4,0(a5)
1c008d18:	00c507b3          	add	a5,a0,a2
1c008d1c:	00e78023          	sb	a4,0(a5)
1c008d20:	f67d                	bnez	a2,1c008d0e <memmove+0xa4>
1c008d22:	8082                	ret
1c008d24:	962a                	add	a2,a2,a0
1c008d26:	87aa                	mv	a5,a0
1c008d28:	0005c703          	lbu	a4,0(a1)
1c008d2c:	0785                	addi	a5,a5,1
1c008d2e:	0585                	addi	a1,a1,1
1c008d30:	fee78fa3          	sb	a4,-1(a5)
1c008d34:	fec79ae3          	bne	a5,a2,1c008d28 <memmove+0xbe>
1c008d38:	8082                	ret
1c008d3a:	8082                	ret

1c008d3c <strchr>:
1c008d3c:	00054703          	lbu	a4,0(a0)
1c008d40:	0ff5f593          	andi	a1,a1,255
1c008d44:	87aa                	mv	a5,a0
1c008d46:	00b70863          	beq	a4,a1,1c008d56 <strchr+0x1a>
1c008d4a:	cb01                	beqz	a4,1c008d5a <strchr+0x1e>
1c008d4c:	0017c703          	lbu	a4,1(a5)
1c008d50:	0785                	addi	a5,a5,1
1c008d52:	feb71ce3          	bne	a4,a1,1c008d4a <strchr+0xe>
1c008d56:	853e                	mv	a0,a5
1c008d58:	8082                	ret
1c008d5a:	4501                	li	a0,0
1c008d5c:	dded                	beqz	a1,1c008d56 <strchr+0x1a>
1c008d5e:	8082                	ret

1c008d60 <puts>:
1c008d60:	00054783          	lbu	a5,0(a0)
1c008d64:	c78d                	beqz	a5,1c008d8e <puts+0x2e>
1c008d66:	f14026f3          	csrr	a3,mhartid
1c008d6a:	00369713          	slli	a4,a3,0x3
1c008d6e:	1a10f637          	lui	a2,0x1a10f
1c008d72:	0ff77713          	andi	a4,a4,255
1c008d76:	9732                	add	a4,a4,a2
1c008d78:	6609                	lui	a2,0x2
1c008d7a:	068a                	slli	a3,a3,0x2
1c008d7c:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008d80:	8ef1                	and	a3,a3,a2
1c008d82:	9736                	add	a4,a4,a3
1c008d84:	c31c                	sw	a5,0(a4)
1c008d86:	00154783          	lbu	a5,1(a0)
1c008d8a:	0505                	addi	a0,a0,1
1c008d8c:	ffe5                	bnez	a5,1c008d84 <puts+0x24>
1c008d8e:	f1402773          	csrr	a4,mhartid
1c008d92:	00371793          	slli	a5,a4,0x3
1c008d96:	1a10f6b7          	lui	a3,0x1a10f
1c008d9a:	0ff7f793          	andi	a5,a5,255
1c008d9e:	97b6                	add	a5,a5,a3
1c008da0:	6689                	lui	a3,0x2
1c008da2:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008da6:	070a                	slli	a4,a4,0x2
1c008da8:	8f75                	and	a4,a4,a3
1c008daa:	97ba                	add	a5,a5,a4
1c008dac:	4729                	li	a4,10
1c008dae:	c398                	sw	a4,0(a5)
1c008db0:	4501                	li	a0,0
1c008db2:	8082                	ret

1c008db4 <pos_libc_fputc_locked>:
1c008db4:	6689                	lui	a3,0x2
1c008db6:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008dba:	f14027f3          	csrr	a5,mhartid
1c008dbe:	00379713          	slli	a4,a5,0x3
1c008dc2:	078a                	slli	a5,a5,0x2
1c008dc4:	8ff5                	and	a5,a5,a3
1c008dc6:	0ff77713          	andi	a4,a4,255
1c008dca:	1a10f6b7          	lui	a3,0x1a10f
1c008dce:	9736                	add	a4,a4,a3
1c008dd0:	97ba                	add	a5,a5,a4
1c008dd2:	0ff57513          	andi	a0,a0,255
1c008dd6:	c388                	sw	a0,0(a5)
1c008dd8:	4501                	li	a0,0
1c008dda:	8082                	ret

1c008ddc <pos_libc_prf_locked>:
1c008ddc:	a0b1                	j	1c008e28 <pos_libc_prf>

1c008dde <exit>:
1c008dde:	800007b7          	lui	a5,0x80000
1c008de2:	1141                	addi	sp,sp,-16
1c008de4:	8d5d                	or	a0,a0,a5
1c008de6:	c606                	sw	ra,12(sp)
1c008de8:	1a1047b7          	lui	a5,0x1a104
1c008dec:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008df0:	39ed                	jal	1c008aea <pos_wait_forever>

1c008df2 <pos_io_start>:
1c008df2:	4501                	li	a0,0
1c008df4:	8082                	ret

1c008df6 <pos_io_stop>:
1c008df6:	4501                	li	a0,0
1c008df8:	8082                	ret

1c008dfa <printf>:
1c008dfa:	7139                	addi	sp,sp,-64
1c008dfc:	02410313          	addi	t1,sp,36
1c008e00:	d432                	sw	a2,40(sp)
1c008e02:	862a                	mv	a2,a0
1c008e04:	1c009537          	lui	a0,0x1c009
1c008e08:	d22e                	sw	a1,36(sp)
1c008e0a:	d636                	sw	a3,44(sp)
1c008e0c:	4589                	li	a1,2
1c008e0e:	869a                	mv	a3,t1
1c008e10:	db450513          	addi	a0,a0,-588 # 1c008db4 <pos_libc_fputc_locked>
1c008e14:	ce06                	sw	ra,28(sp)
1c008e16:	d83a                	sw	a4,48(sp)
1c008e18:	da3e                	sw	a5,52(sp)
1c008e1a:	dc42                	sw	a6,56(sp)
1c008e1c:	de46                	sw	a7,60(sp)
1c008e1e:	c61a                	sw	t1,12(sp)
1c008e20:	3f75                	jal	1c008ddc <pos_libc_prf_locked>
1c008e22:	40f2                	lw	ra,28(sp)
1c008e24:	6121                	addi	sp,sp,64
1c008e26:	8082                	ret

1c008e28 <pos_libc_prf>:
1c008e28:	7169                	addi	sp,sp,-304
1c008e2a:	12112623          	sw	ra,300(sp)
1c008e2e:	12812423          	sw	s0,296(sp)
1c008e32:	12912223          	sw	s1,292(sp)
1c008e36:	13212023          	sw	s2,288(sp)
1c008e3a:	11312e23          	sw	s3,284(sp)
1c008e3e:	11412c23          	sw	s4,280(sp)
1c008e42:	11512a23          	sw	s5,276(sp)
1c008e46:	11612823          	sw	s6,272(sp)
1c008e4a:	11712623          	sw	s7,268(sp)
1c008e4e:	11812423          	sw	s8,264(sp)
1c008e52:	11912223          	sw	s9,260(sp)
1c008e56:	11a12023          	sw	s10,256(sp)
1c008e5a:	dfee                	sw	s11,252(sp)
1c008e5c:	00064783          	lbu	a5,0(a2)
1c008e60:	c636                	sw	a3,12(sp)
1c008e62:	3c0781e3          	beqz	a5,1c009a24 <pos_libc_prf+0xbfc>
1c008e66:	7741                	lui	a4,0xffff0
1c008e68:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008e6c:	cc3a                	sw	a4,24(sp)
1c008e6e:	10000737          	lui	a4,0x10000
1c008e72:	177d                	addi	a4,a4,-1
1c008e74:	8caa                	mv	s9,a0
1c008e76:	84ae                	mv	s1,a1
1c008e78:	00160c13          	addi	s8,a2,1
1c008e7c:	4401                	li	s0,0
1c008e7e:	1c000d37          	lui	s10,0x1c000
1c008e82:	ca3a                	sw	a4,20(sp)
1c008e84:	853e                	mv	a0,a5
1c008e86:	02500793          	li	a5,37
1c008e8a:	04f50863          	beq	a0,a5,1c008eda <pos_libc_prf+0xb2>
1c008e8e:	85a6                	mv	a1,s1
1c008e90:	9c82                	jalr	s9
1c008e92:	57fd                	li	a5,-1
1c008e94:	4cf50b63          	beq	a0,a5,1c00936a <pos_libc_prf+0x542>
1c008e98:	0405                	addi	s0,s0,1
1c008e9a:	000c4503          	lbu	a0,0(s8)
1c008e9e:	0c05                	addi	s8,s8,1
1c008ea0:	f17d                	bnez	a0,1c008e86 <pos_libc_prf+0x5e>
1c008ea2:	12c12083          	lw	ra,300(sp)
1c008ea6:	8522                	mv	a0,s0
1c008ea8:	12812403          	lw	s0,296(sp)
1c008eac:	12412483          	lw	s1,292(sp)
1c008eb0:	12012903          	lw	s2,288(sp)
1c008eb4:	11c12983          	lw	s3,284(sp)
1c008eb8:	11812a03          	lw	s4,280(sp)
1c008ebc:	11412a83          	lw	s5,276(sp)
1c008ec0:	11012b03          	lw	s6,272(sp)
1c008ec4:	10c12b83          	lw	s7,268(sp)
1c008ec8:	10812c03          	lw	s8,264(sp)
1c008ecc:	10412c83          	lw	s9,260(sp)
1c008ed0:	10012d03          	lw	s10,256(sp)
1c008ed4:	5dfe                	lw	s11,252(sp)
1c008ed6:	6155                	addi	sp,sp,304
1c008ed8:	8082                	ret
1c008eda:	8de2                	mv	s11,s8
1c008edc:	000dcc03          	lbu	s8,0(s11)
1c008ee0:	204d0513          	addi	a0,s10,516 # 1c000204 <__clz_tab+0x1e8>
1c008ee4:	c826                	sw	s1,16(sp)
1c008ee6:	85e2                	mv	a1,s8
1c008ee8:	c202                	sw	zero,4(sp)
1c008eea:	c402                	sw	zero,8(sp)
1c008eec:	c002                	sw	zero,0(sp)
1c008eee:	001d8493          	addi	s1,s11,1
1c008ef2:	35a9                	jal	1c008d3c <strchr>
1c008ef4:	02000913          	li	s2,32
1c008ef8:	4b81                	li	s7,0
1c008efa:	02b00993          	li	s3,43
1c008efe:	02d00b13          	li	s6,45
1c008f02:	03000a93          	li	s5,48
1c008f06:	02000a13          	li	s4,32
1c008f0a:	8626                	mv	a2,s1
1c008f0c:	c51d                	beqz	a0,1c008f3a <pos_libc_prf+0x112>
1c008f0e:	413c0e63          	beq	s8,s3,1c00932a <pos_libc_prf+0x502>
1c008f12:	3f89ec63          	bltu	s3,s8,1c00930a <pos_libc_prf+0x4e2>
1c008f16:	414c0663          	beq	s8,s4,1c009322 <pos_libc_prf+0x4fa>
1c008f1a:	02300793          	li	a5,35
1c008f1e:	3efc1363          	bne	s8,a5,1c009304 <pos_libc_prf+0x4dc>
1c008f22:	4b85                	li	s7,1
1c008f24:	8da6                	mv	s11,s1
1c008f26:	000dcc03          	lbu	s8,0(s11)
1c008f2a:	204d0513          	addi	a0,s10,516
1c008f2e:	001d8493          	addi	s1,s11,1
1c008f32:	85e2                	mv	a1,s8
1c008f34:	3521                	jal	1c008d3c <strchr>
1c008f36:	8626                	mv	a2,s1
1c008f38:	f979                	bnez	a0,1c008f0e <pos_libc_prf+0xe6>
1c008f3a:	87e2                	mv	a5,s8
1c008f3c:	ce5e                	sw	s7,28(sp)
1c008f3e:	02a00693          	li	a3,42
1c008f42:	8c6e                	mv	s8,s11
1c008f44:	8ba6                	mv	s7,s1
1c008f46:	8dbe                	mv	s11,a5
1c008f48:	44c2                	lw	s1,16(sp)
1c008f4a:	42d78263          	beq	a5,a3,1c00936e <pos_libc_prf+0x546>
1c008f4e:	fd078693          	addi	a3,a5,-48
1c008f52:	4525                	li	a0,9
1c008f54:	4a01                	li	s4,0
1c008f56:	3cd57f63          	bgeu	a0,a3,1c009334 <pos_libc_prf+0x50c>
1c008f5a:	02e00793          	li	a5,46
1c008f5e:	5afd                	li	s5,-1
1c008f60:	74fd8363          	beq	s11,a5,1c0096a6 <pos_libc_prf+0x87e>
1c008f64:	1c0007b7          	lui	a5,0x1c000
1c008f68:	85ee                	mv	a1,s11
1c008f6a:	20c78513          	addi	a0,a5,524 # 1c00020c <__clz_tab+0x1f0>
1c008f6e:	c832                	sw	a2,16(sp)
1c008f70:	33f1                	jal	1c008d3c <strchr>
1c008f72:	4642                	lw	a2,16(sp)
1c008f74:	8c32                	mv	s8,a2
1c008f76:	c509                	beqz	a0,1c008f80 <pos_libc_prf+0x158>
1c008f78:	00064d83          	lbu	s11,0(a2)
1c008f7c:	00160c13          	addi	s8,a2,1
1c008f80:	06900793          	li	a5,105
1c008f84:	0afd8ee3          	beq	s11,a5,1c009840 <pos_libc_prf+0xa18>
1c008f88:	4db7c763          	blt	a5,s11,1c009456 <pos_libc_prf+0x62e>
1c008f8c:	05800793          	li	a5,88
1c008f90:	4efd8163          	beq	s11,a5,1c009472 <pos_libc_prf+0x64a>
1c008f94:	41b7c163          	blt	a5,s11,1c009396 <pos_libc_prf+0x56e>
1c008f98:	02500793          	li	a5,37
1c008f9c:	26fd8ae3          	beq	s11,a5,1c009a10 <pos_libc_prf+0xbe8>
1c008fa0:	3fb7d863          	bge	a5,s11,1c009390 <pos_libc_prf+0x568>
1c008fa4:	fbbd8793          	addi	a5,s11,-69
1c008fa8:	4689                	li	a3,2
1c008faa:	eef6e8e3          	bltu	a3,a5,1c008e9a <pos_libc_prf+0x72>
1c008fae:	47b2                	lw	a5,12(sp)
1c008fb0:	7ff00893          	li	a7,2047
1c008fb4:	00778b13          	addi	s6,a5,7
1c008fb8:	ff8b7b13          	andi	s6,s6,-8
1c008fbc:	004b2783          	lw	a5,4(s6) # ff010004 <__l2_shared_end+0xe3000004>
1c008fc0:	000b2603          	lw	a2,0(s6)
1c008fc4:	0b21                	addi	s6,s6,8
1c008fc6:	00b79693          	slli	a3,a5,0xb
1c008fca:	01565513          	srli	a0,a2,0x15
1c008fce:	8ec9                	or	a3,a3,a0
1c008fd0:	0147d813          	srli	a6,a5,0x14
1c008fd4:	0686                	slli	a3,a3,0x1
1c008fd6:	7ff87813          	andi	a6,a6,2047
1c008fda:	0016d513          	srli	a0,a3,0x1
1c008fde:	00b61313          	slli	t1,a2,0xb
1c008fe2:	86be                	mv	a3,a5
1c008fe4:	41180263          	beq	a6,a7,1c0093e8 <pos_libc_prf+0x5c0>
1c008fe8:	04600793          	li	a5,70
1c008fec:	00fd9463          	bne	s11,a5,1c008ff4 <pos_libc_prf+0x1cc>
1c008ff0:	06600d93          	li	s11,102
1c008ff4:	006867b3          	or	a5,a6,t1
1c008ff8:	00a7e8b3          	or	a7,a5,a0
1c008ffc:	862a                	mv	a2,a0
1c008ffe:	340885e3          	beqz	a7,1c009b48 <pos_libc_prf+0xd20>
1c009002:	80000637          	lui	a2,0x80000
1c009006:	c0280813          	addi	a6,a6,-1022
1c00900a:	879a                	mv	a5,t1
1c00900c:	8e49                	or	a2,a2,a0
1c00900e:	4606c7e3          	bltz	a3,1c009c7c <pos_libc_prf+0xe54>
1c009012:	4722                	lw	a4,8(sp)
1c009014:	480708e3          	beqz	a4,1c009ca4 <pos_libc_prf+0xe7c>
1c009018:	02b00693          	li	a3,43
1c00901c:	02d10223          	sb	a3,36(sp)
1c009020:	02510f13          	addi	t5,sp,37
1c009024:	56f9                	li	a3,-2
1c009026:	4301                	li	t1,0
1c009028:	06d85663          	bge	a6,a3,1c009094 <pos_libc_prf+0x26c>
1c00902c:	333338b7          	lui	a7,0x33333
1c009030:	80000e37          	lui	t3,0x80000
1c009034:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c009038:	fffe4e13          	not	t3,t3
1c00903c:	5ef9                	li	t4,-2
1c00903e:	01f61593          	slli	a1,a2,0x1f
1c009042:	0017d693          	srli	a3,a5,0x1
1c009046:	0017f713          	andi	a4,a5,1
1c00904a:	8ecd                	or	a3,a3,a1
1c00904c:	00d707b3          	add	a5,a4,a3
1c009050:	00e7b733          	sltu	a4,a5,a4
1c009054:	8205                	srli	a2,a2,0x1
1c009056:	963a                	add	a2,a2,a4
1c009058:	8742                	mv	a4,a6
1c00905a:	0805                	addi	a6,a6,1
1c00905c:	fec8e1e3          	bltu	a7,a2,1c00903e <pos_libc_prf+0x216>
1c009060:	00279593          	slli	a1,a5,0x2
1c009064:	01e7d513          	srli	a0,a5,0x1e
1c009068:	00261693          	slli	a3,a2,0x2
1c00906c:	97ae                	add	a5,a5,a1
1c00906e:	8ec9                	or	a3,a3,a0
1c009070:	9636                	add	a2,a2,a3
1c009072:	00b7b5b3          	sltu	a1,a5,a1
1c009076:	962e                	add	a2,a2,a1
1c009078:	01f7d693          	srli	a3,a5,0x1f
1c00907c:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c009080:	137d                	addi	t1,t1,-1
1c009082:	01c61763          	bne	a2,t3,1c009090 <pos_libc_prf+0x268>
1c009086:	00170813          	addi	a6,a4,1
1c00908a:	0786                	slli	a5,a5,0x1
1c00908c:	ffe6e613          	ori	a2,a3,-2
1c009090:	fbd847e3          	blt	a6,t4,1c00903e <pos_libc_prf+0x216>
1c009094:	07005363          	blez	a6,1c0090fa <pos_libc_prf+0x2d2>
1c009098:	800008b7          	lui	a7,0x80000
1c00909c:	4e15                	li	t3,5
1c00909e:	fff8c893          	not	a7,a7
1c0090a2:	00278693          	addi	a3,a5,2
1c0090a6:	00f6b7b3          	sltu	a5,a3,a5
1c0090aa:	963e                	add	a2,a2,a5
1c0090ac:	03c657b3          	divu	a5,a2,t3
1c0090b0:	0036d713          	srli	a4,a3,0x3
1c0090b4:	187d                	addi	a6,a6,-1
1c0090b6:	0305                	addi	t1,t1,1
1c0090b8:	00279593          	slli	a1,a5,0x2
1c0090bc:	95be                	add	a1,a1,a5
1c0090be:	8e0d                	sub	a2,a2,a1
1c0090c0:	0676                	slli	a2,a2,0x1d
1c0090c2:	8f51                	or	a4,a4,a2
1c0090c4:	03c75633          	divu	a2,a4,t3
1c0090c8:	00361713          	slli	a4,a2,0x3
1c0090cc:	00561593          	slli	a1,a2,0x5
1c0090d0:	95ba                	add	a1,a1,a4
1c0090d2:	8e8d                	sub	a3,a3,a1
1c0090d4:	03c6d6b3          	divu	a3,a3,t3
1c0090d8:	8275                	srli	a2,a2,0x1d
1c0090da:	963e                	add	a2,a2,a5
1c0090dc:	00e687b3          	add	a5,a3,a4
1c0090e0:	00d7b6b3          	sltu	a3,a5,a3
1c0090e4:	9636                	add	a2,a2,a3
1c0090e6:	01f7d713          	srli	a4,a5,0x1f
1c0090ea:	0606                	slli	a2,a2,0x1
1c0090ec:	8e59                	or	a2,a2,a4
1c0090ee:	0786                	slli	a5,a5,0x1
1c0090f0:	187d                	addi	a6,a6,-1
1c0090f2:	fec8fae3          	bgeu	a7,a2,1c0090e6 <pos_libc_prf+0x2be>
1c0090f6:	fb0046e3          	bgtz	a6,1c0090a2 <pos_libc_prf+0x27a>
1c0090fa:	4e11                	li	t3,4
1c0090fc:	01f61693          	slli	a3,a2,0x1f
1c009100:	0017d713          	srli	a4,a5,0x1
1c009104:	8f55                	or	a4,a4,a3
1c009106:	8b85                	andi	a5,a5,1
1c009108:	00e78533          	add	a0,a5,a4
1c00910c:	8205                	srli	a2,a2,0x1
1c00910e:	00f537b3          	sltu	a5,a0,a5
1c009112:	00c788b3          	add	a7,a5,a2
1c009116:	0805                	addi	a6,a6,1
1c009118:	87aa                	mv	a5,a0
1c00911a:	8646                	mv	a2,a7
1c00911c:	ffc810e3          	bne	a6,t3,1c0090fc <pos_libc_prf+0x2d4>
1c009120:	06700793          	li	a5,103
1c009124:	2a0acee3          	bltz	s5,1c009be0 <pos_libc_prf+0xdb8>
1c009128:	28fd83e3          	beq	s11,a5,1c009bae <pos_libc_prf+0xd86>
1c00912c:	04700793          	li	a5,71
1c009130:	26fd8fe3          	beq	s11,a5,1c009bae <pos_libc_prf+0xd86>
1c009134:	06600793          	li	a5,102
1c009138:	2cfd85e3          	beq	s11,a5,1c009c02 <pos_libc_prf+0xdda>
1c00913c:	001a8813          	addi	a6,s5,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c009140:	47c1                	li	a5,16
1c009142:	0107d363          	bge	a5,a6,1c009148 <pos_libc_prf+0x320>
1c009146:	4841                	li	a6,16
1c009148:	187d                	addi	a6,a6,-1
1c00914a:	4601                	li	a2,0
1c00914c:	4781                	li	a5,0
1c00914e:	080006b7          	lui	a3,0x8000
1c009152:	4e15                	li	t3,5
1c009154:	5efd                	li	t4,-1
1c009156:	00278713          	addi	a4,a5,2
1c00915a:	00f737b3          	sltu	a5,a4,a5
1c00915e:	97b6                	add	a5,a5,a3
1c009160:	03c7dfb3          	divu	t6,a5,t3
1c009164:	00375593          	srli	a1,a4,0x3
1c009168:	187d                	addi	a6,a6,-1
1c00916a:	002f9693          	slli	a3,t6,0x2
1c00916e:	96fe                	add	a3,a3,t6
1c009170:	8f95                	sub	a5,a5,a3
1c009172:	07f6                	slli	a5,a5,0x1d
1c009174:	8ddd                	or	a1,a1,a5
1c009176:	03c5d5b3          	divu	a1,a1,t3
1c00917a:	00359693          	slli	a3,a1,0x3
1c00917e:	00559793          	slli	a5,a1,0x5
1c009182:	97b6                	add	a5,a5,a3
1c009184:	8f1d                	sub	a4,a4,a5
1c009186:	03c757b3          	divu	a5,a4,t3
1c00918a:	81f5                	srli	a1,a1,0x1d
1c00918c:	95fe                	add	a1,a1,t6
1c00918e:	96be                	add	a3,a3,a5
1c009190:	00f6b733          	sltu	a4,a3,a5
1c009194:	972e                	add	a4,a4,a1
1c009196:	01f71593          	slli	a1,a4,0x1f
1c00919a:	0016d793          	srli	a5,a3,0x1
1c00919e:	8fcd                	or	a5,a5,a1
1c0091a0:	8a85                	andi	a3,a3,1
1c0091a2:	97b6                	add	a5,a5,a3
1c0091a4:	8305                	srli	a4,a4,0x1
1c0091a6:	00d7b6b3          	sltu	a3,a5,a3
1c0091aa:	96ba                	add	a3,a3,a4
1c0091ac:	fbd815e3          	bne	a6,t4,1c009156 <pos_libc_prf+0x32e>
1c0091b0:	97aa                	add	a5,a5,a0
1c0091b2:	96c6                	add	a3,a3,a7
1c0091b4:	00a7b533          	sltu	a0,a5,a0
1c0091b8:	00d508b3          	add	a7,a0,a3
1c0091bc:	f00006b7          	lui	a3,0xf0000
1c0091c0:	0116f6b3          	and	a3,a3,a7
1c0091c4:	c2b5                	beqz	a3,1c009228 <pos_libc_prf+0x400>
1c0091c6:	00278813          	addi	a6,a5,2
1c0091ca:	00f836b3          	sltu	a3,a6,a5
1c0091ce:	98b6                	add	a7,a7,a3
1c0091d0:	4e95                	li	t4,5
1c0091d2:	03d8de33          	divu	t3,a7,t4
1c0091d6:	00385693          	srli	a3,a6,0x3
1c0091da:	0305                	addi	t1,t1,1
1c0091dc:	002e1513          	slli	a0,t3,0x2
1c0091e0:	9572                	add	a0,a0,t3
1c0091e2:	40a888b3          	sub	a7,a7,a0
1c0091e6:	01d89513          	slli	a0,a7,0x1d
1c0091ea:	8ec9                	or	a3,a3,a0
1c0091ec:	03d6d6b3          	divu	a3,a3,t4
1c0091f0:	00369513          	slli	a0,a3,0x3
1c0091f4:	00569793          	slli	a5,a3,0x5
1c0091f8:	97aa                	add	a5,a5,a0
1c0091fa:	40f807b3          	sub	a5,a6,a5
1c0091fe:	03d7d7b3          	divu	a5,a5,t4
1c009202:	82f5                	srli	a3,a3,0x1d
1c009204:	96f2                	add	a3,a3,t3
1c009206:	953e                	add	a0,a0,a5
1c009208:	00f537b3          	sltu	a5,a0,a5
1c00920c:	96be                	add	a3,a3,a5
1c00920e:	01f69813          	slli	a6,a3,0x1f
1c009212:	00155793          	srli	a5,a0,0x1
1c009216:	00f867b3          	or	a5,a6,a5
1c00921a:	8905                	andi	a0,a0,1
1c00921c:	97aa                	add	a5,a5,a0
1c00921e:	8285                	srli	a3,a3,0x1
1c009220:	00a7b533          	sltu	a0,a5,a0
1c009224:	00d508b3          	add	a7,a0,a3
1c009228:	001f0993          	addi	s3,t5,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00922c:	06600693          	li	a3,102
1c009230:	884e                	mv	a6,s3
1c009232:	4edd8163          	beq	s11,a3,1c009714 <pos_libc_prf+0x8ec>
1c009236:	00279693          	slli	a3,a5,0x2
1c00923a:	01e7d513          	srli	a0,a5,0x1e
1c00923e:	00289e13          	slli	t3,a7,0x2
1c009242:	97b6                	add	a5,a5,a3
1c009244:	01c56e33          	or	t3,a0,t3
1c009248:	00d7b833          	sltu	a6,a5,a3
1c00924c:	011e06b3          	add	a3,t3,a7
1c009250:	9836                	add	a6,a6,a3
1c009252:	0806                	slli	a6,a6,0x1
1c009254:	01f7d693          	srli	a3,a5,0x1f
1c009258:	0106e833          	or	a6,a3,a6
1c00925c:	01c85693          	srli	a3,a6,0x1c
1c009260:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c009264:	4772                	lw	a4,28(sp)
1c009266:	00af0023          	sb	a0,0(t5)
1c00926a:	00179513          	slli	a0,a5,0x1
1c00926e:	47d2                	lw	a5,20(sp)
1c009270:	00d036b3          	snez	a3,a3
1c009274:	01576bb3          	or	s7,a4,s5
1c009278:	00f87833          	and	a6,a6,a5
1c00927c:	40d30333          	sub	t1,t1,a3
1c009280:	060b8463          	beqz	s7,1c0092e8 <pos_libc_prf+0x4c0>
1c009284:	02e00793          	li	a5,46
1c009288:	00ff00a3          	sb	a5,1(t5)
1c00928c:	002f0993          	addi	s3,t5,2
1c009290:	040a8c63          	beqz	s5,1c0092e8 <pos_libc_prf+0x4c0>
1c009294:	002a8793          	addi	a5,s5,2
1c009298:	9f3e                	add	t5,t5,a5
1c00929a:	88ce                	mv	a7,s3
1c00929c:	4ebd                	li	t4,15
1c00929e:	03000f93          	li	t6,48
1c0092a2:	00251793          	slli	a5,a0,0x2
1c0092a6:	01e55693          	srli	a3,a0,0x1e
1c0092aa:	00281713          	slli	a4,a6,0x2
1c0092ae:	00a785b3          	add	a1,a5,a0
1c0092b2:	8f55                	or	a4,a4,a3
1c0092b4:	9742                	add	a4,a4,a6
1c0092b6:	00f5b7b3          	sltu	a5,a1,a5
1c0092ba:	97ba                	add	a5,a5,a4
1c0092bc:	0786                	slli	a5,a5,0x1
1c0092be:	01f5d713          	srli	a4,a1,0x1f
1c0092c2:	8fd9                	or	a5,a5,a4
1c0092c4:	01c7d713          	srli	a4,a5,0x1c
1c0092c8:	03070713          	addi	a4,a4,48
1c0092cc:	0885                	addi	a7,a7,1
1c0092ce:	53d05763          	blez	t4,1c0097fc <pos_libc_prf+0x9d4>
1c0092d2:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c0092d6:	4752                	lw	a4,20(sp)
1c0092d8:	1efd                	addi	t4,t4,-1
1c0092da:	00159513          	slli	a0,a1,0x1
1c0092de:	00e7f833          	and	a6,a5,a4
1c0092e2:	fd1f10e3          	bne	t5,a7,1c0092a2 <pos_libc_prf+0x47a>
1c0092e6:	99d6                	add	s3,s3,s5
1c0092e8:	4e061c63          	bnez	a2,1c0097e0 <pos_libc_prf+0x9b8>
1c0092ec:	fdfdf793          	andi	a5,s11,-33
1c0092f0:	04500693          	li	a3,69
1c0092f4:	00d781e3          	beq	a5,a3,1c009af6 <pos_libc_prf+0xcce>
1c0092f8:	105c                	addi	a5,sp,36
1c0092fa:	00098023          	sb	zero,0(s3)
1c0092fe:	40f989b3          	sub	s3,s3,a5
1c009302:	aa05                	j	1c009432 <pos_libc_prf+0x60a>
1c009304:	b80c0fe3          	beqz	s8,1c008ea2 <pos_libc_prf+0x7a>
1c009308:	b931                	j	1c008f24 <pos_libc_prf+0xfc>
1c00930a:	016c0863          	beq	s8,s6,1c00931a <pos_libc_prf+0x4f2>
1c00930e:	c15c1be3          	bne	s8,s5,1c008f24 <pos_libc_prf+0xfc>
1c009312:	03000913          	li	s2,48
1c009316:	8da6                	mv	s11,s1
1c009318:	b139                	j	1c008f26 <pos_libc_prf+0xfe>
1c00931a:	4785                	li	a5,1
1c00931c:	c03e                	sw	a5,0(sp)
1c00931e:	8da6                	mv	s11,s1
1c009320:	b119                	j	1c008f26 <pos_libc_prf+0xfe>
1c009322:	4785                	li	a5,1
1c009324:	c23e                	sw	a5,4(sp)
1c009326:	8da6                	mv	s11,s1
1c009328:	befd                	j	1c008f26 <pos_libc_prf+0xfe>
1c00932a:	4785                	li	a5,1
1c00932c:	c43e                	sw	a5,8(sp)
1c00932e:	8da6                	mv	s11,s1
1c009330:	bedd                	j	1c008f26 <pos_libc_prf+0xfe>
1c009332:	0b85                	addi	s7,s7,1
1c009334:	002a1793          	slli	a5,s4,0x2
1c009338:	97d2                	add	a5,a5,s4
1c00933a:	0786                	slli	a5,a5,0x1
1c00933c:	97ee                	add	a5,a5,s11
1c00933e:	000bcd83          	lbu	s11,0(s7)
1c009342:	fd078a13          	addi	s4,a5,-48
1c009346:	8662                	mv	a2,s8
1c009348:	fd0d8793          	addi	a5,s11,-48
1c00934c:	8c5e                	mv	s8,s7
1c00934e:	fef572e3          	bgeu	a0,a5,1c009332 <pos_libc_prf+0x50a>
1c009352:	0609                	addi	a2,a2,2
1c009354:	0c800793          	li	a5,200
1c009358:	c147f1e3          	bgeu	a5,s4,1c008f5a <pos_libc_prf+0x132>
1c00935c:	0c800a13          	li	s4,200
1c009360:	beed                	j	1c008f5a <pos_libc_prf+0x132>
1c009362:	0c800793          	li	a5,200
1c009366:	b3b7dae3          	bge	a5,s11,1c008e9a <pos_libc_prf+0x72>
1c00936a:	547d                	li	s0,-1
1c00936c:	be1d                	j	1c008ea2 <pos_libc_prf+0x7a>
1c00936e:	47b2                	lw	a5,12(sp)
1c009370:	0007aa03          	lw	s4,0(a5)
1c009374:	00478693          	addi	a3,a5,4
1c009378:	000a5663          	bgez	s4,1c009384 <pos_libc_prf+0x55c>
1c00937c:	4785                	li	a5,1
1c00937e:	41400a33          	neg	s4,s4
1c009382:	c03e                	sw	a5,0(sp)
1c009384:	000bcd83          	lbu	s11,0(s7)
1c009388:	c636                	sw	a3,12(sp)
1c00938a:	002c0613          	addi	a2,s8,2
1c00938e:	b7d9                	j	1c009354 <pos_libc_prf+0x52c>
1c009390:	b00d89e3          	beqz	s11,1c008ea2 <pos_libc_prf+0x7a>
1c009394:	b619                	j	1c008e9a <pos_libc_prf+0x72>
1c009396:	06400793          	li	a5,100
1c00939a:	4afd8363          	beq	s11,a5,1c009840 <pos_libc_prf+0xa18>
1c00939e:	19b7d963          	bge	a5,s11,1c009530 <pos_libc_prf+0x708>
1c0093a2:	f9bd8793          	addi	a5,s11,-101
1c0093a6:	4689                	li	a3,2
1c0093a8:	aef6e9e3          	bltu	a3,a5,1c008e9a <pos_libc_prf+0x72>
1c0093ac:	47b2                	lw	a5,12(sp)
1c0093ae:	7ff00893          	li	a7,2047
1c0093b2:	00778b13          	addi	s6,a5,7
1c0093b6:	ff8b7b13          	andi	s6,s6,-8
1c0093ba:	004b2783          	lw	a5,4(s6)
1c0093be:	000b2603          	lw	a2,0(s6)
1c0093c2:	0b21                	addi	s6,s6,8
1c0093c4:	00b79693          	slli	a3,a5,0xb
1c0093c8:	01565813          	srli	a6,a2,0x15
1c0093cc:	0147d513          	srli	a0,a5,0x14
1c0093d0:	00d866b3          	or	a3,a6,a3
1c0093d4:	0686                	slli	a3,a3,0x1
1c0093d6:	7ff57813          	andi	a6,a0,2047
1c0093da:	00b61313          	slli	t1,a2,0xb
1c0093de:	0016d513          	srli	a0,a3,0x1
1c0093e2:	86be                	mv	a3,a5
1c0093e4:	c11818e3          	bne	a6,a7,1c008ff4 <pos_libc_prf+0x1cc>
1c0093e8:	105c                	addi	a5,sp,36
1c0093ea:	0006d863          	bgez	a3,1c0093fa <pos_libc_prf+0x5d2>
1c0093ee:	02d00793          	li	a5,45
1c0093f2:	02f10223          	sb	a5,36(sp)
1c0093f6:	02510793          	addi	a5,sp,37
1c0093fa:	00a36633          	or	a2,t1,a0
1c0093fe:	fbfd8593          	addi	a1,s11,-65
1c009402:	00378993          	addi	s3,a5,3
1c009406:	46e5                	li	a3,25
1c009408:	0c0612e3          	bnez	a2,1c009ccc <pos_libc_prf+0xea4>
1c00940c:	10b6e5e3          	bltu	a3,a1,1c009d16 <pos_libc_prf+0xeee>
1c009410:	04900693          	li	a3,73
1c009414:	00d78023          	sb	a3,0(a5)
1c009418:	04e00693          	li	a3,78
1c00941c:	00d780a3          	sb	a3,1(a5)
1c009420:	04600693          	li	a3,70
1c009424:	00d78123          	sb	a3,2(a5)
1c009428:	000781a3          	sb	zero,3(a5)
1c00942c:	105c                	addi	a5,sp,36
1c00942e:	40f989b3          	sub	s3,s3,a5
1c009432:	47a2                	lw	a5,8(sp)
1c009434:	4712                	lw	a4,4(sp)
1c009436:	8fd9                	or	a5,a5,a4
1c009438:	ce3e                	sw	a5,28(sp)
1c00943a:	5e079b63          	bnez	a5,1c009a30 <pos_libc_prf+0xc08>
1c00943e:	02414683          	lbu	a3,36(sp)
1c009442:	02d00793          	li	a5,45
1c009446:	5ef68563          	beq	a3,a5,1c009a30 <pos_libc_prf+0xc08>
1c00944a:	0c800793          	li	a5,200
1c00944e:	0d37d863          	bge	a5,s3,1c00951e <pos_libc_prf+0x6f6>
1c009452:	547d                	li	s0,-1
1c009454:	b4b9                	j	1c008ea2 <pos_libc_prf+0x7a>
1c009456:	07000793          	li	a5,112
1c00945a:	46fd8f63          	beq	s11,a5,1c0098d8 <pos_libc_prf+0xab0>
1c00945e:	1bb7d663          	bge	a5,s11,1c00960a <pos_libc_prf+0x7e2>
1c009462:	07500793          	li	a5,117
1c009466:	52fd8763          	beq	s11,a5,1c009994 <pos_libc_prf+0xb6c>
1c00946a:	07800793          	li	a5,120
1c00946e:	16fd9163          	bne	s11,a5,1c0095d0 <pos_libc_prf+0x7a8>
1c009472:	47b2                	lw	a5,12(sp)
1c009474:	1054                	addi	a3,sp,36
1c009476:	4390                	lw	a2,0(a5)
1c009478:	00478b13          	addi	s6,a5,4
1c00947c:	47f2                	lw	a5,28(sp)
1c00947e:	28079163          	bnez	a5,1c009700 <pos_libc_prf+0x8d8>
1c009482:	87b6                	mv	a5,a3
1c009484:	4ea5                	li	t4,9
1c009486:	4e3d                	li	t3,15
1c009488:	a039                	j	1c009496 <pos_libc_prf+0x66e>
1c00948a:	ff098fa3          	sb	a6,-1(s3)
1c00948e:	02ce7663          	bgeu	t3,a2,1c0094ba <pos_libc_prf+0x692>
1c009492:	862a                	mv	a2,a0
1c009494:	87ce                	mv	a5,s3
1c009496:	00f67593          	andi	a1,a2,15
1c00949a:	00178993          	addi	s3,a5,1
1c00949e:	05758813          	addi	a6,a1,87
1c0094a2:	03058713          	addi	a4,a1,48
1c0094a6:	00465513          	srli	a0,a2,0x4
1c0094aa:	febee0e3          	bltu	t4,a1,1c00948a <pos_libc_prf+0x662>
1c0094ae:	00e78023          	sb	a4,0(a5)
1c0094b2:	00178993          	addi	s3,a5,1
1c0094b6:	fcce6ee3          	bltu	t3,a2,1c009492 <pos_libc_prf+0x66a>
1c0094ba:	40d98633          	sub	a2,s3,a3
1c0094be:	01565c63          	bge	a2,s5,1c0094d6 <pos_libc_prf+0x6ae>
1c0094c2:	03000513          	li	a0,48
1c0094c6:	87ce                	mv	a5,s3
1c0094c8:	0985                	addi	s3,s3,1
1c0094ca:	40d98733          	sub	a4,s3,a3
1c0094ce:	fea98fa3          	sb	a0,-1(s3)
1c0094d2:	ff574ae3          	blt	a4,s5,1c0094c6 <pos_libc_prf+0x69e>
1c0094d6:	00098023          	sb	zero,0(s3)
1c0094da:	00f6fe63          	bgeu	a3,a5,1c0094f6 <pos_libc_prf+0x6ce>
1c0094de:	0006c603          	lbu	a2,0(a3)
1c0094e2:	0007c703          	lbu	a4,0(a5)
1c0094e6:	0685                	addi	a3,a3,1
1c0094e8:	00c78023          	sb	a2,0(a5)
1c0094ec:	fee68fa3          	sb	a4,-1(a3)
1c0094f0:	17fd                	addi	a5,a5,-1
1c0094f2:	fef6e6e3          	bltu	a3,a5,1c0094de <pos_libc_prf+0x6b6>
1c0094f6:	05800793          	li	a5,88
1c0094fa:	66fd8463          	beq	s11,a5,1c009b62 <pos_libc_prf+0xd3a>
1c0094fe:	105c                	addi	a5,sp,36
1c009500:	40f989b3          	sub	s3,s3,a5
1c009504:	47f2                	lw	a5,28(sp)
1c009506:	c399                	beqz	a5,1c00950c <pos_libc_prf+0x6e4>
1c009508:	4789                	li	a5,2
1c00950a:	ce3e                	sw	a5,28(sp)
1c00950c:	57fd                	li	a5,-1
1c00950e:	f2fa8ee3          	beq	s5,a5,1c00944a <pos_libc_prf+0x622>
1c009512:	0c800793          	li	a5,200
1c009516:	e537cae3          	blt	a5,s3,1c00936a <pos_libc_prf+0x542>
1c00951a:	02000913          	li	s2,32
1c00951e:	00198613          	addi	a2,s3,1
1c009522:	0349c963          	blt	s3,s4,1c009554 <pos_libc_prf+0x72c>
1c009526:	c65a                	sw	s6,12(sp)
1c009528:	8a4e                	mv	s4,s3
1c00952a:	1a0a1663          	bnez	s4,1c0096d6 <pos_libc_prf+0x8ae>
1c00952e:	b2b5                	j	1c008e9a <pos_libc_prf+0x72>
1c009530:	06300793          	li	a5,99
1c009534:	96fd93e3          	bne	s11,a5,1c008e9a <pos_libc_prf+0x72>
1c009538:	4732                	lw	a4,12(sp)
1c00953a:	020102a3          	sb	zero,37(sp)
1c00953e:	4785                	li	a5,1
1c009540:	4314                	lw	a3,0(a4)
1c009542:	00470b13          	addi	s6,a4,4
1c009546:	02d10223          	sb	a3,36(sp)
1c00954a:	1947d463          	bge	a5,s4,1c0096d2 <pos_libc_prf+0x8aa>
1c00954e:	4609                	li	a2,2
1c009550:	4985                	li	s3,1
1c009552:	ce02                	sw	zero,28(sp)
1c009554:	4782                	lw	a5,0(sp)
1c009556:	4e078463          	beqz	a5,1c009a3e <pos_libc_prf+0xc16>
1c00955a:	413a07b3          	sub	a5,s4,s3
1c00955e:	4585                	li	a1,1
1c009560:	0149d363          	bge	s3,s4,1c009566 <pos_libc_prf+0x73e>
1c009564:	85be                	mv	a1,a5
1c009566:	17fd                	addi	a5,a5,-1
1c009568:	0037b793          	sltiu	a5,a5,3
1c00956c:	eb95                	bnez	a5,1c0095a0 <pos_libc_prf+0x778>
1c00956e:	0349d963          	bge	s3,s4,1c0095a0 <pos_libc_prf+0x778>
1c009572:	105c                	addi	a5,sp,36
1c009574:	97ce                	add	a5,a5,s3
1c009576:	ffc5f613          	andi	a2,a1,-4
1c00957a:	963e                	add	a2,a2,a5
1c00957c:	02000693          	li	a3,32
1c009580:	00d78023          	sb	a3,0(a5)
1c009584:	00d780a3          	sb	a3,1(a5)
1c009588:	00d78123          	sb	a3,2(a5)
1c00958c:	00d781a3          	sb	a3,3(a5)
1c009590:	0791                	addi	a5,a5,4
1c009592:	fef617e3          	bne	a2,a5,1c009580 <pos_libc_prf+0x758>
1c009596:	ffc5f793          	andi	a5,a1,-4
1c00959a:	99be                	add	s3,s3,a5
1c00959c:	02b78663          	beq	a5,a1,1c0095c8 <pos_libc_prf+0x7a0>
1c0095a0:	199c                	addi	a5,sp,240
1c0095a2:	97ce                	add	a5,a5,s3
1c0095a4:	02000693          	li	a3,32
1c0095a8:	f2d78a23          	sb	a3,-204(a5)
1c0095ac:	00198793          	addi	a5,s3,1
1c0095b0:	0147dc63          	bge	a5,s4,1c0095c8 <pos_libc_prf+0x7a0>
1c0095b4:	1998                	addi	a4,sp,240
1c0095b6:	97ba                	add	a5,a5,a4
1c0095b8:	f2d78a23          	sb	a3,-204(a5)
1c0095bc:	0989                	addi	s3,s3,2
1c0095be:	0149d563          	bge	s3,s4,1c0095c8 <pos_libc_prf+0x7a0>
1c0095c2:	99ba                	add	s3,s3,a4
1c0095c4:	f2d98a23          	sb	a3,-204(s3)
1c0095c8:	c65a                	sw	s6,12(sp)
1c0095ca:	100a1663          	bnez	s4,1c0096d6 <pos_libc_prf+0x8ae>
1c0095ce:	b0f1                	j	1c008e9a <pos_libc_prf+0x72>
1c0095d0:	07300793          	li	a5,115
1c0095d4:	d8fd97e3          	bne	s11,a5,1c009362 <pos_libc_prf+0x53a>
1c0095d8:	47b2                	lw	a5,12(sp)
1c0095da:	4981                	li	s3,0
1c0095dc:	0c800693          	li	a3,200
1c0095e0:	438c                	lw	a1,0(a5)
1c0095e2:	00478b13          	addi	s6,a5,4
1c0095e6:	a021                	j	1c0095ee <pos_libc_prf+0x7c6>
1c0095e8:	0985                	addi	s3,s3,1
1c0095ea:	6ad98163          	beq	s3,a3,1c009c8c <pos_libc_prf+0xe64>
1c0095ee:	013587b3          	add	a5,a1,s3
1c0095f2:	0007c783          	lbu	a5,0(a5)
1c0095f6:	fbed                	bnez	a5,1c0095e8 <pos_libc_prf+0x7c0>
1c0095f8:	000ac563          	bltz	s5,1c009602 <pos_libc_prf+0x7da>
1c0095fc:	013ad363          	bge	s5,s3,1c009602 <pos_libc_prf+0x7da>
1c009600:	89d6                	mv	s3,s5
1c009602:	5a099163          	bnez	s3,1c009ba4 <pos_libc_prf+0xd7c>
1c009606:	c65a                	sw	s6,12(sp)
1c009608:	b849                	j	1c008e9a <pos_libc_prf+0x72>
1c00960a:	06e00793          	li	a5,110
1c00960e:	36fd8c63          	beq	s11,a5,1c009986 <pos_libc_prf+0xb5e>
1c009612:	06f00793          	li	a5,111
1c009616:	88fd92e3          	bne	s11,a5,1c008e9a <pos_libc_prf+0x72>
1c00961a:	47b2                	lw	a5,12(sp)
1c00961c:	4390                	lw	a2,0(a5)
1c00961e:	00478b13          	addi	s6,a5,4
1c009622:	47f2                	lw	a5,28(sp)
1c009624:	c7f5                	beqz	a5,1c009710 <pos_libc_prf+0x8e8>
1c009626:	03000793          	li	a5,48
1c00962a:	02f10223          	sb	a5,36(sp)
1c00962e:	02510693          	addi	a3,sp,37
1c009632:	60060b63          	beqz	a2,1c009c48 <pos_libc_prf+0xe20>
1c009636:	89b6                	mv	s3,a3
1c009638:	481d                	li	a6,7
1c00963a:	00767713          	andi	a4,a2,7
1c00963e:	03070713          	addi	a4,a4,48
1c009642:	85b2                	mv	a1,a2
1c009644:	00e98023          	sb	a4,0(s3)
1c009648:	87ce                	mv	a5,s3
1c00964a:	820d                	srli	a2,a2,0x3
1c00964c:	0985                	addi	s3,s3,1
1c00964e:	feb866e3          	bltu	a6,a1,1c00963a <pos_libc_prf+0x812>
1c009652:	40d98633          	sub	a2,s3,a3
1c009656:	01565c63          	bge	a2,s5,1c00966e <pos_libc_prf+0x846>
1c00965a:	03000593          	li	a1,48
1c00965e:	87ce                	mv	a5,s3
1c009660:	0985                	addi	s3,s3,1
1c009662:	40d98733          	sub	a4,s3,a3
1c009666:	feb98fa3          	sb	a1,-1(s3)
1c00966a:	ff574ae3          	blt	a4,s5,1c00965e <pos_libc_prf+0x836>
1c00966e:	00098023          	sb	zero,0(s3)
1c009672:	00f6fe63          	bgeu	a3,a5,1c00968e <pos_libc_prf+0x866>
1c009676:	0006c603          	lbu	a2,0(a3)
1c00967a:	0007c703          	lbu	a4,0(a5)
1c00967e:	0685                	addi	a3,a3,1
1c009680:	00c78023          	sb	a2,0(a5)
1c009684:	fee68fa3          	sb	a4,-1(a3)
1c009688:	17fd                	addi	a5,a5,-1
1c00968a:	fef6e6e3          	bltu	a3,a5,1c009676 <pos_libc_prf+0x84e>
1c00968e:	1058                	addi	a4,sp,36
1c009690:	57fd                	li	a5,-1
1c009692:	40e989b3          	sub	s3,s3,a4
1c009696:	36fa8763          	beq	s5,a5,1c009a04 <pos_libc_prf+0xbdc>
1c00969a:	0c800793          	li	a5,200
1c00969e:	cd37c6e3          	blt	a5,s3,1c00936a <pos_libc_prf+0x542>
1c0096a2:	ce02                	sw	zero,28(sp)
1c0096a4:	bd9d                	j	1c00951a <pos_libc_prf+0x6f2>
1c0096a6:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c0096aa:	02a00793          	li	a5,42
1c0096ae:	00160693          	addi	a3,a2,1
1c0096b2:	14f59b63          	bne	a1,a5,1c009808 <pos_libc_prf+0x9e0>
1c0096b6:	47b2                	lw	a5,12(sp)
1c0096b8:	00164d83          	lbu	s11,1(a2)
1c0096bc:	0609                	addi	a2,a2,2
1c0096be:	0007aa83          	lw	s5,0(a5)
1c0096c2:	0791                	addi	a5,a5,4
1c0096c4:	c63e                	sw	a5,12(sp)
1c0096c6:	0c800793          	li	a5,200
1c0096ca:	8957dde3          	bge	a5,s5,1c008f64 <pos_libc_prf+0x13c>
1c0096ce:	5afd                	li	s5,-1
1c0096d0:	b851                	j	1c008f64 <pos_libc_prf+0x13c>
1c0096d2:	c65a                	sw	s6,12(sp)
1c0096d4:	4a05                	li	s4,1
1c0096d6:	02410913          	addi	s2,sp,36
1c0096da:	59fd                	li	s3,-1
1c0096dc:	41240ab3          	sub	s5,s0,s2
1c0096e0:	9a4a                	add	s4,s4,s2
1c0096e2:	a029                	j	1c0096ec <pos_libc_prf+0x8c4>
1c0096e4:	012a8433          	add	s0,s5,s2
1c0096e8:	fb490963          	beq	s2,s4,1c008e9a <pos_libc_prf+0x72>
1c0096ec:	00094503          	lbu	a0,0(s2)
1c0096f0:	85a6                	mv	a1,s1
1c0096f2:	0905                	addi	s2,s2,1
1c0096f4:	9c82                	jalr	s9
1c0096f6:	ff3517e3          	bne	a0,s3,1c0096e4 <pos_libc_prf+0x8bc>
1c0096fa:	547d                	li	s0,-1
1c0096fc:	fa6ff06f          	j	1c008ea2 <pos_libc_prf+0x7a>
1c009700:	77e1                	lui	a5,0xffff8
1c009702:	8307c793          	xori	a5,a5,-2000
1c009706:	02f11223          	sh	a5,36(sp)
1c00970a:	02610693          	addi	a3,sp,38
1c00970e:	bb95                	j	1c009482 <pos_libc_prf+0x65a>
1c009710:	1054                	addi	a3,sp,36
1c009712:	b715                	j	1c009636 <pos_libc_prf+0x80e>
1c009714:	5c605a63          	blez	t1,1c009ce8 <pos_libc_prf+0xec0>
1c009718:	006f09b3          	add	s3,t5,t1
1c00971c:	4541                	li	a0,16
1c00971e:	03000e13          	li	t3,48
1c009722:	00279713          	slli	a4,a5,0x2
1c009726:	01e7d593          	srli	a1,a5,0x1e
1c00972a:	00289693          	slli	a3,a7,0x2
1c00972e:	00f70333          	add	t1,a4,a5
1c009732:	8ecd                	or	a3,a3,a1
1c009734:	96c6                	add	a3,a3,a7
1c009736:	00e33733          	sltu	a4,t1,a4
1c00973a:	9736                	add	a4,a4,a3
1c00973c:	0706                	slli	a4,a4,0x1
1c00973e:	01f35693          	srli	a3,t1,0x1f
1c009742:	8f55                	or	a4,a4,a3
1c009744:	01c75693          	srli	a3,a4,0x1c
1c009748:	03068693          	addi	a3,a3,48
1c00974c:	4ea05463          	blez	a0,1c009c34 <pos_libc_prf+0xe0c>
1c009750:	fed80fa3          	sb	a3,-1(a6)
1c009754:	46d2                	lw	a3,20(sp)
1c009756:	157d                	addi	a0,a0,-1
1c009758:	00131793          	slli	a5,t1,0x1
1c00975c:	00d778b3          	and	a7,a4,a3
1c009760:	4d099e63          	bne	s3,a6,1c009c3c <pos_libc_prf+0xe14>
1c009764:	4301                	li	t1,0
1c009766:	4772                	lw	a4,28(sp)
1c009768:	01576bb3          	or	s7,a4,s5
1c00976c:	060b8863          	beqz	s7,1c0097dc <pos_libc_prf+0x9b4>
1c009770:	02e00693          	li	a3,46
1c009774:	00d98023          	sb	a3,0(s3)
1c009778:	00198e93          	addi	t4,s3,1
1c00977c:	5c0a8763          	beqz	s5,1c009d4a <pos_libc_prf+0xf22>
1c009780:	001a8693          	addi	a3,s5,1
1c009784:	99b6                	add	s3,s3,a3
1c009786:	8876                	mv	a6,t4
1c009788:	03000f13          	li	t5,48
1c00978c:	0805                	addi	a6,a6,1
1c00978e:	4a031963          	bnez	t1,1c009c40 <pos_libc_prf+0xe18>
1c009792:	00279713          	slli	a4,a5,0x2
1c009796:	01e7d593          	srli	a1,a5,0x1e
1c00979a:	00289693          	slli	a3,a7,0x2
1c00979e:	00f70e33          	add	t3,a4,a5
1c0097a2:	8ecd                	or	a3,a3,a1
1c0097a4:	96c6                	add	a3,a3,a7
1c0097a6:	00ee3733          	sltu	a4,t3,a4
1c0097aa:	9736                	add	a4,a4,a3
1c0097ac:	0706                	slli	a4,a4,0x1
1c0097ae:	01fe5693          	srli	a3,t3,0x1f
1c0097b2:	8f55                	or	a4,a4,a3
1c0097b4:	01c75593          	srli	a1,a4,0x1c
1c0097b8:	03000693          	li	a3,48
1c0097bc:	00a05a63          	blez	a0,1c0097d0 <pos_libc_prf+0x9a8>
1c0097c0:	03058693          	addi	a3,a1,48
1c0097c4:	45d2                	lw	a1,20(sp)
1c0097c6:	157d                	addi	a0,a0,-1
1c0097c8:	001e1793          	slli	a5,t3,0x1
1c0097cc:	00b778b3          	and	a7,a4,a1
1c0097d0:	fed80fa3          	sb	a3,-1(a6)
1c0097d4:	fb099ce3          	bne	s3,a6,1c00978c <pos_libc_prf+0x964>
1c0097d8:	015e89b3          	add	s3,t4,s5
1c0097dc:	b0060ee3          	beqz	a2,1c0092f8 <pos_libc_prf+0x4d0>
1c0097e0:	03000613          	li	a2,48
1c0097e4:	fff9c783          	lbu	a5,-1(s3)
1c0097e8:	86ce                	mv	a3,s3
1c0097ea:	19fd                	addi	s3,s3,-1
1c0097ec:	fec78ce3          	beq	a5,a2,1c0097e4 <pos_libc_prf+0x9bc>
1c0097f0:	02e00613          	li	a2,46
1c0097f4:	aec78ce3          	beq	a5,a2,1c0092ec <pos_libc_prf+0x4c4>
1c0097f8:	89b6                	mv	s3,a3
1c0097fa:	bccd                	j	1c0092ec <pos_libc_prf+0x4c4>
1c0097fc:	fff88fa3          	sb	t6,-1(a7)
1c009800:	ab1f11e3          	bne	t5,a7,1c0092a2 <pos_libc_prf+0x47a>
1c009804:	99d6                	add	s3,s3,s5
1c009806:	b4cd                	j	1c0092e8 <pos_libc_prf+0x4c0>
1c009808:	fd058713          	addi	a4,a1,-48
1c00980c:	47a5                	li	a5,9
1c00980e:	8dae                	mv	s11,a1
1c009810:	4a81                	li	s5,0
1c009812:	4525                	li	a0,9
1c009814:	00e7f463          	bgeu	a5,a4,1c00981c <pos_libc_prf+0x9f4>
1c009818:	a199                	j	1c009c5e <pos_libc_prf+0xe36>
1c00981a:	0685                	addi	a3,a3,1
1c00981c:	002a9793          	slli	a5,s5,0x2
1c009820:	97d6                	add	a5,a5,s5
1c009822:	0786                	slli	a5,a5,0x1
1c009824:	97ee                	add	a5,a5,s11
1c009826:	0006cd83          	lbu	s11,0(a3)
1c00982a:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00982e:	8732                	mv	a4,a2
1c009830:	fd0d8793          	addi	a5,s11,-48
1c009834:	8636                	mv	a2,a3
1c009836:	fef572e3          	bgeu	a0,a5,1c00981a <pos_libc_prf+0x9f2>
1c00983a:	00270613          	addi	a2,a4,2
1c00983e:	b561                	j	1c0096c6 <pos_libc_prf+0x89e>
1c009840:	47b2                	lw	a5,12(sp)
1c009842:	0007a303          	lw	t1,0(a5)
1c009846:	00478b13          	addi	s6,a5,4
1c00984a:	2e034263          	bltz	t1,1c009b2e <pos_libc_prf+0xd06>
1c00984e:	47a2                	lw	a5,8(sp)
1c009850:	861a                	mv	a2,t1
1c009852:	3c078663          	beqz	a5,1c009c1e <pos_libc_prf+0xdf6>
1c009856:	02b00793          	li	a5,43
1c00985a:	02f10223          	sb	a5,36(sp)
1c00985e:	02510693          	addi	a3,sp,37
1c009862:	89b6                	mv	s3,a3
1c009864:	4529                	li	a0,10
1c009866:	48a5                	li	a7,9
1c009868:	02a67733          	remu	a4,a2,a0
1c00986c:	87ce                	mv	a5,s3
1c00986e:	0985                	addi	s3,s3,1
1c009870:	85b2                	mv	a1,a2
1c009872:	03070713          	addi	a4,a4,48
1c009876:	fee98fa3          	sb	a4,-1(s3)
1c00987a:	02a65633          	divu	a2,a2,a0
1c00987e:	feb8e5e3          	bltu	a7,a1,1c009868 <pos_libc_prf+0xa40>
1c009882:	40d98633          	sub	a2,s3,a3
1c009886:	01565c63          	bge	a2,s5,1c00989e <pos_libc_prf+0xa76>
1c00988a:	03000593          	li	a1,48
1c00988e:	87ce                	mv	a5,s3
1c009890:	0985                	addi	s3,s3,1
1c009892:	40d98733          	sub	a4,s3,a3
1c009896:	feb98fa3          	sb	a1,-1(s3)
1c00989a:	ff574ae3          	blt	a4,s5,1c00988e <pos_libc_prf+0xa66>
1c00989e:	00098023          	sb	zero,0(s3)
1c0098a2:	00f6fe63          	bgeu	a3,a5,1c0098be <pos_libc_prf+0xa96>
1c0098a6:	0006c603          	lbu	a2,0(a3)
1c0098aa:	0007c703          	lbu	a4,0(a5)
1c0098ae:	0685                	addi	a3,a3,1
1c0098b0:	00c78023          	sb	a2,0(a5)
1c0098b4:	fee68fa3          	sb	a4,-1(a3)
1c0098b8:	17fd                	addi	a5,a5,-1
1c0098ba:	fef6e6e3          	bltu	a3,a5,1c0098a6 <pos_libc_prf+0xa7e>
1c0098be:	4712                	lw	a4,4(sp)
1c0098c0:	47a2                	lw	a5,8(sp)
1c0098c2:	8fd9                	or	a5,a5,a4
1c0098c4:	ce3e                	sw	a5,28(sp)
1c0098c6:	1058                	addi	a4,sp,36
1c0098c8:	40e989b3          	sub	s3,s3,a4
1c0098cc:	c40790e3          	bnez	a5,1c00950c <pos_libc_prf+0x6e4>
1c0098d0:	01f35793          	srli	a5,t1,0x1f
1c0098d4:	ce3e                	sw	a5,28(sp)
1c0098d6:	b91d                	j	1c00950c <pos_libc_prf+0x6e4>
1c0098d8:	47b2                	lw	a5,12(sp)
1c0098da:	02610613          	addi	a2,sp,38
1c0098de:	4ea5                	li	t4,9
1c0098e0:	438c                	lw	a1,0(a5)
1c0098e2:	00478b13          	addi	s6,a5,4
1c0098e6:	77e1                	lui	a5,0xffff8
1c0098e8:	8307c793          	xori	a5,a5,-2000
1c0098ec:	02f11223          	sh	a5,36(sp)
1c0098f0:	4e3d                	li	t3,15
1c0098f2:	87b2                	mv	a5,a2
1c0098f4:	a039                	j	1c009902 <pos_libc_prf+0xada>
1c0098f6:	ff168fa3          	sb	a7,-1(a3)
1c0098fa:	02be7663          	bgeu	t3,a1,1c009926 <pos_libc_prf+0xafe>
1c0098fe:	85c2                	mv	a1,a6
1c009900:	87b6                	mv	a5,a3
1c009902:	00f5f513          	andi	a0,a1,15
1c009906:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00990a:	05750893          	addi	a7,a0,87
1c00990e:	03050713          	addi	a4,a0,48
1c009912:	0045d813          	srli	a6,a1,0x4
1c009916:	feaee0e3          	bltu	t4,a0,1c0098f6 <pos_libc_prf+0xace>
1c00991a:	00e78023          	sb	a4,0(a5)
1c00991e:	00178693          	addi	a3,a5,1
1c009922:	fcbe6ee3          	bltu	t3,a1,1c0098fe <pos_libc_prf+0xad6>
1c009926:	40c689b3          	sub	s3,a3,a2
1c00992a:	459d                	li	a1,7
1c00992c:	0135cc63          	blt	a1,s3,1c009944 <pos_libc_prf+0xb1c>
1c009930:	03000513          	li	a0,48
1c009934:	87b6                	mv	a5,a3
1c009936:	0685                	addi	a3,a3,1
1c009938:	40c689b3          	sub	s3,a3,a2
1c00993c:	fea68fa3          	sb	a0,-1(a3)
1c009940:	ff35dae3          	bge	a1,s3,1c009934 <pos_libc_prf+0xb0c>
1c009944:	00068023          	sb	zero,0(a3)
1c009948:	86b2                	mv	a3,a2
1c00994a:	00f67e63          	bgeu	a2,a5,1c009966 <pos_libc_prf+0xb3e>
1c00994e:	0006c603          	lbu	a2,0(a3)
1c009952:	0007c703          	lbu	a4,0(a5)
1c009956:	0685                	addi	a3,a3,1
1c009958:	00c78023          	sb	a2,0(a5)
1c00995c:	fee68fa3          	sb	a4,-1(a3)
1c009960:	17fd                	addi	a5,a5,-1
1c009962:	fef6e6e3          	bltu	a3,a5,1c00994e <pos_libc_prf+0xb26>
1c009966:	57fd                	li	a5,-1
1c009968:	0989                	addi	s3,s3,2
1c00996a:	22fa8663          	beq	s5,a5,1c009b96 <pos_libc_prf+0xd6e>
1c00996e:	0c800793          	li	a5,200
1c009972:	9f37cce3          	blt	a5,s3,1c00936a <pos_libc_prf+0x542>
1c009976:	02000913          	li	s2,32
1c00997a:	0b49d863          	bge	s3,s4,1c009a2a <pos_libc_prf+0xc02>
1c00997e:	00198613          	addi	a2,s3,1
1c009982:	ce02                	sw	zero,28(sp)
1c009984:	bec1                	j	1c009554 <pos_libc_prf+0x72c>
1c009986:	4732                	lw	a4,12(sp)
1c009988:	431c                	lw	a5,0(a4)
1c00998a:	0711                	addi	a4,a4,4
1c00998c:	c63a                	sw	a4,12(sp)
1c00998e:	c380                	sw	s0,0(a5)
1c009990:	d0aff06f          	j	1c008e9a <pos_libc_prf+0x72>
1c009994:	47b2                	lw	a5,12(sp)
1c009996:	4529                	li	a0,10
1c009998:	48a5                	li	a7,9
1c00999a:	4390                	lw	a2,0(a5)
1c00999c:	00478b13          	addi	s6,a5,4
1c0099a0:	105c                	addi	a5,sp,36
1c0099a2:	02a67733          	remu	a4,a2,a0
1c0099a6:	86be                	mv	a3,a5
1c0099a8:	0785                	addi	a5,a5,1
1c0099aa:	85b2                	mv	a1,a2
1c0099ac:	03070713          	addi	a4,a4,48
1c0099b0:	fee78fa3          	sb	a4,-1(a5)
1c0099b4:	02a65633          	divu	a2,a2,a0
1c0099b8:	feb8e5e3          	bltu	a7,a1,1c0099a2 <pos_libc_prf+0xb7a>
1c0099bc:	1058                	addi	a4,sp,36
1c0099be:	40e789b3          	sub	s3,a5,a4
1c0099c2:	0159dd63          	bge	s3,s5,1c0099dc <pos_libc_prf+0xbb4>
1c0099c6:	03000613          	li	a2,48
1c0099ca:	86be                	mv	a3,a5
1c0099cc:	1058                	addi	a4,sp,36
1c0099ce:	0785                	addi	a5,a5,1
1c0099d0:	40e789b3          	sub	s3,a5,a4
1c0099d4:	fec78fa3          	sb	a2,-1(a5)
1c0099d8:	ff59c9e3          	blt	s3,s5,1c0099ca <pos_libc_prf+0xba2>
1c0099dc:	00078023          	sb	zero,0(a5)
1c0099e0:	105c                	addi	a5,sp,36
1c0099e2:	00d7fe63          	bgeu	a5,a3,1c0099fe <pos_libc_prf+0xbd6>
1c0099e6:	0007c603          	lbu	a2,0(a5)
1c0099ea:	0006c703          	lbu	a4,0(a3)
1c0099ee:	0785                	addi	a5,a5,1
1c0099f0:	00c68023          	sb	a2,0(a3)
1c0099f4:	fee78fa3          	sb	a4,-1(a5)
1c0099f8:	16fd                	addi	a3,a3,-1
1c0099fa:	fed7e6e3          	bltu	a5,a3,1c0099e6 <pos_libc_prf+0xbbe>
1c0099fe:	57fd                	li	a5,-1
1c009a00:	c8fa9de3          	bne	s5,a5,1c00969a <pos_libc_prf+0x872>
1c009a04:	0c800793          	li	a5,200
1c009a08:	9737c1e3          	blt	a5,s3,1c00936a <pos_libc_prf+0x542>
1c009a0c:	ce02                	sw	zero,28(sp)
1c009a0e:	be01                	j	1c00951e <pos_libc_prf+0x6f6>
1c009a10:	85a6                	mv	a1,s1
1c009a12:	02500513          	li	a0,37
1c009a16:	9c82                	jalr	s9
1c009a18:	57fd                	li	a5,-1
1c009a1a:	c6f51f63          	bne	a0,a5,1c008e98 <pos_libc_prf+0x70>
1c009a1e:	547d                	li	s0,-1
1c009a20:	c82ff06f          	j	1c008ea2 <pos_libc_prf+0x7a>
1c009a24:	4401                	li	s0,0
1c009a26:	c7cff06f          	j	1c008ea2 <pos_libc_prf+0x7a>
1c009a2a:	8a4e                	mv	s4,s3
1c009a2c:	c65a                	sw	s6,12(sp)
1c009a2e:	b165                	j	1c0096d6 <pos_libc_prf+0x8ae>
1c009a30:	0c800793          	li	a5,200
1c009a34:	9337cbe3          	blt	a5,s3,1c00936a <pos_libc_prf+0x542>
1c009a38:	4785                	li	a5,1
1c009a3a:	ce3e                	sw	a5,28(sp)
1c009a3c:	b4cd                	j	1c00951e <pos_libc_prf+0x6f6>
1c009a3e:	104c                	addi	a1,sp,36
1c009a40:	413a09b3          	sub	s3,s4,s3
1c009a44:	01358533          	add	a0,a1,s3
1c009a48:	a22ff0ef          	jal	ra,1c008c6a <memmove>
1c009a4c:	02000793          	li	a5,32
1c009a50:	24f90863          	beq	s2,a5,1c009ca0 <pos_libc_prf+0xe78>
1c009a54:	47f2                	lw	a5,28(sp)
1c009a56:	99be                	add	s3,s3,a5
1c009a58:	47f2                	lw	a5,28(sp)
1c009a5a:	b737d7e3          	bge	a5,s3,1c0095c8 <pos_libc_prf+0x7a0>
1c009a5e:	4772                	lw	a4,28(sp)
1c009a60:	4789                	li	a5,2
1c009a62:	40e988b3          	sub	a7,s3,a4
1c009a66:	fff88693          	addi	a3,a7,-1
1c009a6a:	06d7f063          	bgeu	a5,a3,1c009aca <pos_libc_prf+0xca2>
1c009a6e:	47e2                	lw	a5,24(sp)
1c009a70:	00891613          	slli	a2,s2,0x8
1c009a74:	ffc8f593          	andi	a1,a7,-4
1c009a78:	00f976b3          	and	a3,s2,a5
1c009a7c:	8ed1                	or	a3,a3,a2
1c009a7e:	01091793          	slli	a5,s2,0x10
1c009a82:	8edd                	or	a3,a3,a5
1c009a84:	01891613          	slli	a2,s2,0x18
1c009a88:	8e55                	or	a2,a2,a3
1c009a8a:	105c                	addi	a5,sp,36
1c009a8c:	00865813          	srli	a6,a2,0x8
1c009a90:	01065513          	srli	a0,a2,0x10
1c009a94:	97ba                	add	a5,a5,a4
1c009a96:	95be                	add	a1,a1,a5
1c009a98:	0306f693          	andi	a3,a3,48
1c009a9c:	8261                	srli	a2,a2,0x18
1c009a9e:	0ff87813          	andi	a6,a6,255
1c009aa2:	0ff57513          	andi	a0,a0,255
1c009aa6:	00d78023          	sb	a3,0(a5)
1c009aaa:	010780a3          	sb	a6,1(a5)
1c009aae:	00a78123          	sb	a0,2(a5)
1c009ab2:	00c781a3          	sb	a2,3(a5)
1c009ab6:	0791                	addi	a5,a5,4
1c009ab8:	fef597e3          	bne	a1,a5,1c009aa6 <pos_libc_prf+0xc7e>
1c009abc:	4772                	lw	a4,28(sp)
1c009abe:	ffc8f793          	andi	a5,a7,-4
1c009ac2:	973e                	add	a4,a4,a5
1c009ac4:	ce3a                	sw	a4,28(sp)
1c009ac6:	b11781e3          	beq	a5,a7,1c0095c8 <pos_libc_prf+0x7a0>
1c009aca:	4772                	lw	a4,28(sp)
1c009acc:	199c                	addi	a5,sp,240
1c009ace:	97ba                	add	a5,a5,a4
1c009ad0:	f3278a23          	sb	s2,-204(a5)
1c009ad4:	00170793          	addi	a5,a4,1
1c009ad8:	af37d8e3          	bge	a5,s3,1c0095c8 <pos_libc_prf+0x7a0>
1c009adc:	1994                	addi	a3,sp,240
1c009ade:	97b6                	add	a5,a5,a3
1c009ae0:	f3278a23          	sb	s2,-204(a5)
1c009ae4:	00270b93          	addi	s7,a4,2
1c009ae8:	af3bd0e3          	bge	s7,s3,1c0095c8 <pos_libc_prf+0x7a0>
1c009aec:	9bb6                	add	s7,s7,a3
1c009aee:	f32b8a23          	sb	s2,-204(s7)
1c009af2:	c65a                	sw	s6,12(sp)
1c009af4:	bcd9                	j	1c0095ca <pos_libc_prf+0x7a2>
1c009af6:	01b98023          	sb	s11,0(s3)
1c009afa:	02b00613          	li	a2,43
1c009afe:	00035663          	bgez	t1,1c009b0a <pos_libc_prf+0xce2>
1c009b02:	40600333          	neg	t1,t1
1c009b06:	02d00613          	li	a2,45
1c009b0a:	47a9                	li	a5,10
1c009b0c:	02f346b3          	div	a3,t1,a5
1c009b10:	00c980a3          	sb	a2,1(s3)
1c009b14:	0991                	addi	s3,s3,4
1c009b16:	02f367b3          	rem	a5,t1,a5
1c009b1a:	03068693          	addi	a3,a3,48
1c009b1e:	fed98f23          	sb	a3,-2(s3)
1c009b22:	03078793          	addi	a5,a5,48
1c009b26:	fef98fa3          	sb	a5,-1(s3)
1c009b2a:	fceff06f          	j	1c0092f8 <pos_libc_prf+0x4d0>
1c009b2e:	02d00793          	li	a5,45
1c009b32:	02f10223          	sb	a5,36(sp)
1c009b36:	800007b7          	lui	a5,0x80000
1c009b3a:	14f30e63          	beq	t1,a5,1c009c96 <pos_libc_prf+0xe6e>
1c009b3e:	40600633          	neg	a2,t1
1c009b42:	02510693          	addi	a3,sp,37
1c009b46:	bb31                	j	1c009862 <pos_libc_prf+0xa3a>
1c009b48:	4722                	lw	a4,8(sp)
1c009b4a:	10070d63          	beqz	a4,1c009c64 <pos_libc_prf+0xe3c>
1c009b4e:	02b00693          	li	a3,43
1c009b52:	02d10223          	sb	a3,36(sp)
1c009b56:	02510f13          	addi	t5,sp,37
1c009b5a:	4301                	li	t1,0
1c009b5c:	4801                	li	a6,0
1c009b5e:	d9cff06f          	j	1c0090fa <pos_libc_prf+0x2d2>
1c009b62:	02414783          	lbu	a5,36(sp)
1c009b66:	98078ce3          	beqz	a5,1c0094fe <pos_libc_prf+0x6d6>
1c009b6a:	1054                	addi	a3,sp,36
1c009b6c:	45e5                	li	a1,25
1c009b6e:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c009b72:	f9f78793          	addi	a5,a5,-97
1c009b76:	0ff7f793          	andi	a5,a5,255
1c009b7a:	00f5e963          	bltu	a1,a5,1c009b8c <pos_libc_prf+0xd64>
1c009b7e:	0016c783          	lbu	a5,1(a3)
1c009b82:	00e68023          	sb	a4,0(a3)
1c009b86:	0685                	addi	a3,a3,1
1c009b88:	f3fd                	bnez	a5,1c009b6e <pos_libc_prf+0xd46>
1c009b8a:	ba95                	j	1c0094fe <pos_libc_prf+0x6d6>
1c009b8c:	0016c783          	lbu	a5,1(a3)
1c009b90:	0685                	addi	a3,a3,1
1c009b92:	fff1                	bnez	a5,1c009b6e <pos_libc_prf+0xd46>
1c009b94:	b2ad                	j	1c0094fe <pos_libc_prf+0x6d6>
1c009b96:	0c800793          	li	a5,200
1c009b9a:	df37d0e3          	bge	a5,s3,1c00997a <pos_libc_prf+0xb52>
1c009b9e:	547d                	li	s0,-1
1c009ba0:	b02ff06f          	j	1c008ea2 <pos_libc_prf+0x7a>
1c009ba4:	864e                	mv	a2,s3
1c009ba6:	1048                	addi	a0,sp,36
1c009ba8:	fedfe0ef          	jal	ra,1c008b94 <memcpy>
1c009bac:	b3f9                	j	1c00997a <pos_libc_prf+0xb52>
1c009bae:	47f2                	lw	a5,28(sp)
1c009bb0:	4601                	li	a2,0
1c009bb2:	e399                	bnez	a5,1c009bb8 <pos_libc_prf+0xd90>
1c009bb4:	01503633          	snez	a2,s5
1c009bb8:	57f5                	li	a5,-3
1c009bba:	001a8813          	addi	a6,s5,1
1c009bbe:	00f34463          	blt	t1,a5,1c009bc6 <pos_libc_prf+0xd9e>
1c009bc2:	04685163          	bge	a6,t1,1c009c04 <pos_libc_prf+0xddc>
1c009bc6:	47c1                	li	a5,16
1c009bc8:	0107d363          	bge	a5,a6,1c009bce <pos_libc_prf+0xda6>
1c009bcc:	4841                	li	a6,16
1c009bce:	06700793          	li	a5,103
1c009bd2:	187d                	addi	a6,a6,-1
1c009bd4:	02fd8363          	beq	s11,a5,1c009bfa <pos_libc_prf+0xdd2>
1c009bd8:	04500d93          	li	s11,69
1c009bdc:	d70ff06f          	j	1c00914c <pos_libc_prf+0x324>
1c009be0:	4a99                	li	s5,6
1c009be2:	d4fd9563          	bne	s11,a5,1c00912c <pos_libc_prf+0x304>
1c009be6:	4772                	lw	a4,28(sp)
1c009be8:	4605                	li	a2,1
1c009bea:	57f5                	li	a5,-3
1c009bec:	8e19                	sub	a2,a2,a4
1c009bee:	00f34563          	blt	t1,a5,1c009bf8 <pos_libc_prf+0xdd0>
1c009bf2:	479d                	li	a5,7
1c009bf4:	0067d863          	bge	a5,t1,1c009c04 <pos_libc_prf+0xddc>
1c009bf8:	4819                	li	a6,6
1c009bfa:	06500d93          	li	s11,101
1c009bfe:	d4eff06f          	j	1c00914c <pos_libc_prf+0x324>
1c009c02:	4601                	li	a2,0
1c009c04:	006a8833          	add	a6,s5,t1
1c009c08:	0b005b63          	blez	a6,1c009cbe <pos_libc_prf+0xe96>
1c009c0c:	47c1                	li	a5,16
1c009c0e:	0107d363          	bge	a5,a6,1c009c14 <pos_libc_prf+0xdec>
1c009c12:	4841                	li	a6,16
1c009c14:	187d                	addi	a6,a6,-1
1c009c16:	06600d93          	li	s11,102
1c009c1a:	d32ff06f          	j	1c00914c <pos_libc_prf+0x324>
1c009c1e:	4792                	lw	a5,4(sp)
1c009c20:	1054                	addi	a3,sp,36
1c009c22:	c40780e3          	beqz	a5,1c009862 <pos_libc_prf+0xa3a>
1c009c26:	02000793          	li	a5,32
1c009c2a:	02f10223          	sb	a5,36(sp)
1c009c2e:	02510693          	addi	a3,sp,37
1c009c32:	b905                	j	1c009862 <pos_libc_prf+0xa3a>
1c009c34:	ffc80fa3          	sb	t3,-1(a6)
1c009c38:	b30986e3          	beq	s3,a6,1c009764 <pos_libc_prf+0x93c>
1c009c3c:	0805                	addi	a6,a6,1
1c009c3e:	b4d5                	j	1c009722 <pos_libc_prf+0x8fa>
1c009c40:	ffe80fa3          	sb	t5,-1(a6)
1c009c44:	0305                	addi	t1,t1,1
1c009c46:	b679                	j	1c0097d4 <pos_libc_prf+0x9ac>
1c009c48:	020102a3          	sb	zero,37(sp)
1c009c4c:	57fd                	li	a5,-1
1c009c4e:	0cfa8263          	beq	s5,a5,1c009d12 <pos_libc_prf+0xeea>
1c009c52:	4785                	li	a5,1
1c009c54:	0b47c063          	blt	a5,s4,1c009cf4 <pos_libc_prf+0xecc>
1c009c58:	4a72                	lw	s4,28(sp)
1c009c5a:	c65a                	sw	s6,12(sp)
1c009c5c:	bcad                	j	1c0096d6 <pos_libc_prf+0x8ae>
1c009c5e:	8636                	mv	a2,a3
1c009c60:	b04ff06f          	j	1c008f64 <pos_libc_prf+0x13c>
1c009c64:	4712                	lw	a4,4(sp)
1c009c66:	c77d                	beqz	a4,1c009d54 <pos_libc_prf+0xf2c>
1c009c68:	02000693          	li	a3,32
1c009c6c:	02d10223          	sb	a3,36(sp)
1c009c70:	4301                	li	t1,0
1c009c72:	4801                	li	a6,0
1c009c74:	02510f13          	addi	t5,sp,37
1c009c78:	c82ff06f          	j	1c0090fa <pos_libc_prf+0x2d2>
1c009c7c:	02d00693          	li	a3,45
1c009c80:	02d10223          	sb	a3,36(sp)
1c009c84:	02510f13          	addi	t5,sp,37
1c009c88:	b9cff06f          	j	1c009024 <pos_libc_prf+0x1fc>
1c009c8c:	0c800613          	li	a2,200
1c009c90:	960ad6e3          	bgez	s5,1c0095fc <pos_libc_prf+0x7d4>
1c009c94:	bf09                	j	1c009ba6 <pos_libc_prf+0xd7e>
1c009c96:	80000637          	lui	a2,0x80000
1c009c9a:	02510693          	addi	a3,sp,37
1c009c9e:	b6d1                	j	1c009862 <pos_libc_prf+0xa3a>
1c009ca0:	ce02                	sw	zero,28(sp)
1c009ca2:	bb5d                	j	1c009a58 <pos_libc_prf+0xc30>
1c009ca4:	4712                	lw	a4,4(sp)
1c009ca6:	02410f13          	addi	t5,sp,36
1c009caa:	b6070d63          	beqz	a4,1c009024 <pos_libc_prf+0x1fc>
1c009cae:	02000693          	li	a3,32
1c009cb2:	02d10223          	sb	a3,36(sp)
1c009cb6:	02510f13          	addi	t5,sp,37
1c009cba:	b6aff06f          	j	1c009024 <pos_libc_prf+0x1fc>
1c009cbe:	06600d93          	li	s11,102
1c009cc2:	4781                	li	a5,0
1c009cc4:	080006b7          	lui	a3,0x8000
1c009cc8:	ce8ff06f          	j	1c0091b0 <pos_libc_prf+0x388>
1c009ccc:	06b6e363          	bltu	a3,a1,1c009d32 <pos_libc_prf+0xf0a>
1c009cd0:	04e00693          	li	a3,78
1c009cd4:	04100613          	li	a2,65
1c009cd8:	00d78023          	sb	a3,0(a5)
1c009cdc:	00c780a3          	sb	a2,1(a5)
1c009ce0:	00d78123          	sb	a3,2(a5)
1c009ce4:	f44ff06f          	j	1c009428 <pos_libc_prf+0x600>
1c009ce8:	03000693          	li	a3,48
1c009cec:	00df0023          	sb	a3,0(t5)
1c009cf0:	4541                	li	a0,16
1c009cf2:	bc95                	j	1c009766 <pos_libc_prf+0x93e>
1c009cf4:	4982                	lw	s3,0(sp)
1c009cf6:	860992e3          	bnez	s3,1c00955a <pos_libc_prf+0x732>
1c009cfa:	104c                	addi	a1,sp,36
1c009cfc:	fffa0993          	addi	s3,s4,-1
1c009d00:	4609                	li	a2,2
1c009d02:	01358533          	add	a0,a1,s3
1c009d06:	f65fe0ef          	jal	ra,1c008c6a <memmove>
1c009d0a:	02000913          	li	s2,32
1c009d0e:	ce02                	sw	zero,28(sp)
1c009d10:	b3b9                	j	1c009a5e <pos_libc_prf+0xc36>
1c009d12:	49f2                	lw	s3,28(sp)
1c009d14:	b19d                	j	1c00997a <pos_libc_prf+0xb52>
1c009d16:	06900693          	li	a3,105
1c009d1a:	00d78023          	sb	a3,0(a5)
1c009d1e:	06e00693          	li	a3,110
1c009d22:	00d780a3          	sb	a3,1(a5)
1c009d26:	06600693          	li	a3,102
1c009d2a:	00d78123          	sb	a3,2(a5)
1c009d2e:	efaff06f          	j	1c009428 <pos_libc_prf+0x600>
1c009d32:	06e00693          	li	a3,110
1c009d36:	06100613          	li	a2,97
1c009d3a:	00d78023          	sb	a3,0(a5)
1c009d3e:	00c780a3          	sb	a2,1(a5)
1c009d42:	00d78123          	sb	a3,2(a5)
1c009d46:	ee2ff06f          	j	1c009428 <pos_libc_prf+0x600>
1c009d4a:	89f6                	mv	s3,t4
1c009d4c:	a8061ae3          	bnez	a2,1c0097e0 <pos_libc_prf+0x9b8>
1c009d50:	da8ff06f          	j	1c0092f8 <pos_libc_prf+0x4d0>
1c009d54:	4301                	li	t1,0
1c009d56:	4801                	li	a6,0
1c009d58:	02410f13          	addi	t5,sp,36
1c009d5c:	b9eff06f          	j	1c0090fa <pos_libc_prf+0x2d2>

1c009d60 <pos_init_start>:
1c009d60:	1141                	addi	sp,sp,-16
1c009d62:	c422                	sw	s0,8(sp)
1c009d64:	1c000437          	lui	s0,0x1c000
1c009d68:	c606                	sw	ra,12(sp)
1c009d6a:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009d6e:	d76fe0ef          	jal	ra,1c0082e4 <pos_soc_init>
1c009d72:	2a75                	jal	1c009f2e <pos_irq_init>
1c009d74:	22e5                	jal	1c009f5c <pos_soc_event_init>
1c009d76:	2225                	jal	1c009e9e <pos_allocs_init>
1c009d78:	405c                	lw	a5,4(s0)
1c009d7a:	c791                	beqz	a5,1c009d86 <pos_init_start+0x26>
1c009d7c:	0411                	addi	s0,s0,4
1c009d7e:	0411                	addi	s0,s0,4
1c009d80:	9782                	jalr	a5
1c009d82:	401c                	lw	a5,0(s0)
1c009d84:	ffed                	bnez	a5,1c009d7e <pos_init_start+0x1e>
1c009d86:	86cff0ef          	jal	ra,1c008df2 <pos_io_start>
1c009d8a:	300467f3          	csrrsi	a5,mstatus,8
1c009d8e:	40b2                	lw	ra,12(sp)
1c009d90:	4422                	lw	s0,8(sp)
1c009d92:	0141                	addi	sp,sp,16
1c009d94:	8082                	ret

1c009d96 <pos_init_stop>:
1c009d96:	1141                	addi	sp,sp,-16
1c009d98:	c422                	sw	s0,8(sp)
1c009d9a:	1c000437          	lui	s0,0x1c000
1c009d9e:	c606                	sw	ra,12(sp)
1c009da0:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009da4:	852ff0ef          	jal	ra,1c008df6 <pos_io_stop>
1c009da8:	405c                	lw	a5,4(s0)
1c009daa:	c791                	beqz	a5,1c009db6 <pos_init_stop+0x20>
1c009dac:	0411                	addi	s0,s0,4
1c009dae:	0411                	addi	s0,s0,4
1c009db0:	9782                	jalr	a5
1c009db2:	401c                	lw	a5,0(s0)
1c009db4:	ffed                	bnez	a5,1c009dae <pos_init_stop+0x18>
1c009db6:	40b2                	lw	ra,12(sp)
1c009db8:	4422                	lw	s0,8(sp)
1c009dba:	0141                	addi	sp,sp,16
1c009dbc:	8082                	ret

1c009dbe <pos_alloc_init>:
1c009dbe:	00758793          	addi	a5,a1,7
1c009dc2:	9be1                	andi	a5,a5,-8
1c009dc4:	40b785b3          	sub	a1,a5,a1
1c009dc8:	c11c                	sw	a5,0(a0)
1c009dca:	40b605b3          	sub	a1,a2,a1
1c009dce:	00b05663          	blez	a1,1c009dda <pos_alloc_init+0x1c>
1c009dd2:	99e1                	andi	a1,a1,-8
1c009dd4:	c38c                	sw	a1,0(a5)
1c009dd6:	0007a223          	sw	zero,4(a5)
1c009dda:	8082                	ret

1c009ddc <pos_alloc>:
1c009ddc:	411c                	lw	a5,0(a0)
1c009dde:	00758713          	addi	a4,a1,7
1c009de2:	862a                	mv	a2,a0
1c009de4:	ff877593          	andi	a1,a4,-8
1c009de8:	4681                	li	a3,0
1c009dea:	e789                	bnez	a5,1c009df4 <pos_alloc+0x18>
1c009dec:	a091                	j	1c009e30 <pos_alloc+0x54>
1c009dee:	86be                	mv	a3,a5
1c009df0:	c505                	beqz	a0,1c009e18 <pos_alloc+0x3c>
1c009df2:	87aa                	mv	a5,a0
1c009df4:	4398                	lw	a4,0(a5)
1c009df6:	43c8                	lw	a0,4(a5)
1c009df8:	feb74be3          	blt	a4,a1,1c009dee <pos_alloc+0x12>
1c009dfc:	00b70f63          	beq	a4,a1,1c009e1a <pos_alloc+0x3e>
1c009e00:	00b78833          	add	a6,a5,a1
1c009e04:	8f0d                	sub	a4,a4,a1
1c009e06:	00e82023          	sw	a4,0(a6)
1c009e0a:	00a82223          	sw	a0,4(a6)
1c009e0e:	ca91                	beqz	a3,1c009e22 <pos_alloc+0x46>
1c009e10:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c009e14:	853e                	mv	a0,a5
1c009e16:	8082                	ret
1c009e18:	8082                	ret
1c009e1a:	ca81                	beqz	a3,1c009e2a <pos_alloc+0x4e>
1c009e1c:	c2c8                	sw	a0,4(a3)
1c009e1e:	853e                	mv	a0,a5
1c009e20:	8082                	ret
1c009e22:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c009e26:	853e                	mv	a0,a5
1c009e28:	8082                	ret
1c009e2a:	c208                	sw	a0,0(a2)
1c009e2c:	853e                	mv	a0,a5
1c009e2e:	8082                	ret
1c009e30:	4501                	li	a0,0
1c009e32:	8082                	ret

1c009e34 <pos_free>:
1c009e34:	411c                	lw	a5,0(a0)
1c009e36:	061d                	addi	a2,a2,7
1c009e38:	9a61                	andi	a2,a2,-8
1c009e3a:	c7a1                	beqz	a5,1c009e82 <pos_free+0x4e>
1c009e3c:	00b7e563          	bltu	a5,a1,1c009e46 <pos_free+0x12>
1c009e40:	a089                	j	1c009e82 <pos_free+0x4e>
1c009e42:	00b7f563          	bgeu	a5,a1,1c009e4c <pos_free+0x18>
1c009e46:	873e                	mv	a4,a5
1c009e48:	43dc                	lw	a5,4(a5)
1c009e4a:	ffe5                	bnez	a5,1c009e42 <pos_free+0xe>
1c009e4c:	00c586b3          	add	a3,a1,a2
1c009e50:	00d78b63          	beq	a5,a3,1c009e66 <pos_free+0x32>
1c009e54:	c190                	sw	a2,0(a1)
1c009e56:	4314                	lw	a3,0(a4)
1c009e58:	c1dc                	sw	a5,4(a1)
1c009e5a:	00d70533          	add	a0,a4,a3
1c009e5e:	00a58e63          	beq	a1,a0,1c009e7a <pos_free+0x46>
1c009e62:	c34c                	sw	a1,4(a4)
1c009e64:	8082                	ret
1c009e66:	4394                	lw	a3,0(a5)
1c009e68:	43dc                	lw	a5,4(a5)
1c009e6a:	9636                	add	a2,a2,a3
1c009e6c:	c190                	sw	a2,0(a1)
1c009e6e:	4314                	lw	a3,0(a4)
1c009e70:	c1dc                	sw	a5,4(a1)
1c009e72:	00d70533          	add	a0,a4,a3
1c009e76:	fea596e3          	bne	a1,a0,1c009e62 <pos_free+0x2e>
1c009e7a:	9636                	add	a2,a2,a3
1c009e7c:	c310                	sw	a2,0(a4)
1c009e7e:	c35c                	sw	a5,4(a4)
1c009e80:	8082                	ret
1c009e82:	00c58733          	add	a4,a1,a2
1c009e86:	00e78663          	beq	a5,a4,1c009e92 <pos_free+0x5e>
1c009e8a:	c1dc                	sw	a5,4(a1)
1c009e8c:	c190                	sw	a2,0(a1)
1c009e8e:	c10c                	sw	a1,0(a0)
1c009e90:	8082                	ret
1c009e92:	4398                	lw	a4,0(a5)
1c009e94:	43dc                	lw	a5,4(a5)
1c009e96:	963a                	add	a2,a2,a4
1c009e98:	c1dc                	sw	a5,4(a1)
1c009e9a:	c190                	sw	a2,0(a1)
1c009e9c:	bfcd                	j	1c009e8e <pos_free+0x5a>

1c009e9e <pos_allocs_init>:
1c009e9e:	1c0065b7          	lui	a1,0x1c006
1c009ea2:	1141                	addi	sp,sp,-16
1c009ea4:	24458613          	addi	a2,a1,580 # 1c006244 <__l2_priv0_end>
1c009ea8:	1c0087b7          	lui	a5,0x1c008
1c009eac:	c606                	sw	ra,12(sp)
1c009eae:	24458593          	addi	a1,a1,580
1c009eb2:	40c78633          	sub	a2,a5,a2
1c009eb6:	04f5d863          	bge	a1,a5,1c009f06 <pos_allocs_init+0x68>
1c009eba:	1c006537          	lui	a0,0x1c006
1c009ebe:	23850513          	addi	a0,a0,568 # 1c006238 <pos_alloc_l2>
1c009ec2:	3df5                	jal	1c009dbe <pos_alloc_init>
1c009ec4:	1c00a5b7          	lui	a1,0x1c00a
1c009ec8:	f7458613          	addi	a2,a1,-140 # 1c009f74 <__l2_priv1_end>
1c009ecc:	1c0107b7          	lui	a5,0x1c010
1c009ed0:	f7458593          	addi	a1,a1,-140
1c009ed4:	40c78633          	sub	a2,a5,a2
1c009ed8:	02f5da63          	bge	a1,a5,1c009f0c <pos_allocs_init+0x6e>
1c009edc:	1c006537          	lui	a0,0x1c006
1c009ee0:	23c50513          	addi	a0,a0,572 # 1c00623c <pos_alloc_l2+0x4>
1c009ee4:	3de9                	jal	1c009dbe <pos_alloc_init>
1c009ee6:	40b2                	lw	ra,12(sp)
1c009ee8:	1c0105b7          	lui	a1,0x1c010
1c009eec:	00058793          	mv	a5,a1
1c009ef0:	1c080637          	lui	a2,0x1c080
1c009ef4:	1c006537          	lui	a0,0x1c006
1c009ef8:	8e1d                	sub	a2,a2,a5
1c009efa:	00058593          	mv	a1,a1
1c009efe:	24050513          	addi	a0,a0,576 # 1c006240 <pos_alloc_l2+0x8>
1c009f02:	0141                	addi	sp,sp,16
1c009f04:	bd6d                	j	1c009dbe <pos_alloc_init>
1c009f06:	4581                	li	a1,0
1c009f08:	4601                	li	a2,0
1c009f0a:	bf45                	j	1c009eba <pos_allocs_init+0x1c>
1c009f0c:	4581                	li	a1,0
1c009f0e:	4601                	li	a2,0
1c009f10:	b7f1                	j	1c009edc <pos_allocs_init+0x3e>

1c009f12 <pi_l2_malloc>:
1c009f12:	85aa                	mv	a1,a0
1c009f14:	1c006537          	lui	a0,0x1c006
1c009f18:	23850513          	addi	a0,a0,568 # 1c006238 <pos_alloc_l2>
1c009f1c:	b5c1                	j	1c009ddc <pos_alloc>

1c009f1e <pi_l2_free>:
1c009f1e:	862e                	mv	a2,a1
1c009f20:	85aa                	mv	a1,a0
1c009f22:	1c006537          	lui	a0,0x1c006
1c009f26:	23850513          	addi	a0,a0,568 # 1c006238 <pos_alloc_l2>
1c009f2a:	b729                	j	1c009e34 <pos_free>

1c009f2c <__rt_handle_illegal_instr>:
1c009f2c:	8082                	ret

1c009f2e <pos_irq_init>:
1c009f2e:	1a10a737          	lui	a4,0x1a10a
1c009f32:	56fd                	li	a3,-1
1c009f34:	f14027f3          	csrr	a5,mhartid
1c009f38:	8795                	srai	a5,a5,0x5
1c009f3a:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c009f3e:	03f7f793          	andi	a5,a5,63
1c009f42:	477d                	li	a4,31
1c009f44:	00e78363          	beq	a5,a4,1c009f4a <pos_irq_init+0x1c>
1c009f48:	8082                	ret
1c009f4a:	1c0087b7          	lui	a5,0x1c008
1c009f4e:	00078793          	mv	a5,a5
1c009f52:	0017e793          	ori	a5,a5,1
1c009f56:	30579073          	csrw	mtvec,a5
1c009f5a:	8082                	ret

1c009f5c <pos_soc_event_init>:
1c009f5c:	1a1067b7          	lui	a5,0x1a106
1c009f60:	577d                	li	a4,-1
1c009f62:	c3d8                	sw	a4,4(a5)
1c009f64:	c798                	sw	a4,8(a5)
1c009f66:	c7d8                	sw	a4,12(a5)
1c009f68:	cb98                	sw	a4,16(a5)
1c009f6a:	cbd8                	sw	a4,20(a5)
1c009f6c:	cf98                	sw	a4,24(a5)
1c009f6e:	cfd8                	sw	a4,28(a5)
1c009f70:	d398                	sw	a4,32(a5)
1c009f72:	8082                	ret
