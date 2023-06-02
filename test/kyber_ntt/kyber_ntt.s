riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	7030106f          	j	1c009f02 <__rt_handle_illegal_instr>
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
1c008084:	67f0106f          	j	1c009f02 <__rt_handle_illegal_instr>

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
1c0080c4:	17028293          	addi	t0,t0,368 # 1c006230 <stack>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	18c30313          	addi	t1,t1,396 # 1c006254 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	15610113          	addi	sp,sp,342 # 1c006230 <stack>
1c0080e2:	465010ef          	jal	ra,1c009d46 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	481010ef          	jal	ra,1c009d7c <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	499000ef          	jal	ra,1c008d9a <exit>

1c008106 <__clzsi2>:
1c008106:	67c1                	lui	a5,0x10
1c008108:	02f57663          	bleu	a5,a0,1c008134 <__clzsi2+0x2e>
1c00810c:	0ff00793          	li	a5,255
1c008110:	00a7b7b3          	sltu	a5,a5,a0
1c008114:	078e                	slli	a5,a5,0x3
1c008116:	02000713          	li	a4,32
1c00811a:	8f1d                	sub	a4,a4,a5
1c00811c:	00f557b3          	srl	a5,a0,a5
1c008120:	1c000537          	lui	a0,0x1c000
1c008124:	01c50513          	addi	a0,a0,28 # 1c00001c <__DTOR_END__>
1c008128:	97aa                	add	a5,a5,a0
1c00812a:	0007c503          	lbu	a0,0(a5) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00812e:	40a70533          	sub	a0,a4,a0
1c008132:	8082                	ret
1c008134:	01000737          	lui	a4,0x1000
1c008138:	47c1                	li	a5,16
1c00813a:	fce56ee3          	bltu	a0,a4,1c008116 <__clzsi2+0x10>
1c00813e:	47e1                	li	a5,24
1c008140:	bfd9                	j	1c008116 <__clzsi2+0x10>

1c008142 <main>:
1c008142:	81010113          	addi	sp,sp,-2032
1c008146:	1c000537          	lui	a0,0x1c000
1c00814a:	7e112623          	sw	ra,2028(sp)
1c00814e:	11c50513          	addi	a0,a0,284 # 1c00011c <__DTOR_END__+0x100>
1c008152:	9e010113          	addi	sp,sp,-1568
1c008156:	3c7000ef          	jal	ra,1c008d1c <puts>
1c00815a:	6785                	lui	a5,0x1
1c00815c:	757d                	lui	a0,0xfffff
1c00815e:	e0078793          	addi	a5,a5,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c008162:	978a                	add	a5,a5,sp
1c008164:	6a050593          	addi	a1,a0,1696 # fffff6a0 <pulp__FC+0xfffff6a1>
1c008168:	20050513          	addi	a0,a0,512
1c00816c:	95be                	add	a1,a1,a5
1c00816e:	953e                	add	a0,a0,a5
1c008170:	7e2000ef          	jal	ra,1c008952 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c008174:	1c000537          	lui	a0,0x1c000
1c008178:	12850513          	addi	a0,a0,296 # 1c000128 <__DTOR_END__+0x10c>
1c00817c:	3a1000ef          	jal	ra,1c008d1c <puts>
1c008180:	62010113          	addi	sp,sp,1568
1c008184:	7ec12083          	lw	ra,2028(sp)
1c008188:	4501                	li	a0,0
1c00818a:	7f010113          	addi	sp,sp,2032
1c00818e:	8082                	ret

1c008190 <pos_fll_init>:
1c008190:	1101                	addi	sp,sp,-32
1c008192:	1a100637          	lui	a2,0x1a100
1c008196:	ca26                	sw	s1,20(sp)
1c008198:	00451693          	slli	a3,a0,0x4
1c00819c:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c0081a0:	94b6                	add	s1,s1,a3
1c0081a2:	4098                	lw	a4,0(s1)
1c0081a4:	c84a                	sw	s2,16(sp)
1c0081a6:	ce06                	sw	ra,28(sp)
1c0081a8:	cc22                	sw	s0,24(sp)
1c0081aa:	c64e                	sw	s3,12(sp)
1c0081ac:	c452                	sw	s4,8(sp)
1c0081ae:	892a                	mv	s2,a0
1c0081b0:	87ba                	mv	a5,a4
1c0081b2:	04074563          	bltz	a4,1c0081fc <pos_fll_init+0x6c>
1c0081b6:	00860593          	addi	a1,a2,8
1c0081ba:	95b6                	add	a1,a1,a3
1c0081bc:	419c                	lw	a5,0(a1)
1c0081be:	7541                	lui	a0,0xffff0
1c0081c0:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c0081c4:	8fe9                	and	a5,a5,a0
1c0081c6:	6509                	lui	a0,0x2
1c0081c8:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c0081cc:	8fc9                	or	a5,a5,a0
1c0081ce:	f0010537          	lui	a0,0xf0010
1c0081d2:	157d                	addi	a0,a0,-1
1c0081d4:	8fe9                	and	a5,a5,a0
1c0081d6:	00500537          	lui	a0,0x500
1c0081da:	8fc9                	or	a5,a5,a0
1c0081dc:	0631                	addi	a2,a2,12
1c0081de:	c19c                	sw	a5,0(a1)
1c0081e0:	96b2                	add	a3,a3,a2
1c0081e2:	429c                	lw	a5,0(a3)
1c0081e4:	fc010637          	lui	a2,0xfc010
1c0081e8:	167d                	addi	a2,a2,-1
1c0081ea:	8ff1                	and	a5,a5,a2
1c0081ec:	014c0637          	lui	a2,0x14c0
1c0081f0:	8fd1                	or	a5,a5,a2
1c0081f2:	c29c                	sw	a5,0(a3)
1c0081f4:	c00007b7          	lui	a5,0xc0000
1c0081f8:	8fd9                	or	a5,a5,a4
1c0081fa:	c09c                	sw	a5,0(s1)
1c0081fc:	1c006437          	lui	s0,0x1c006
1c008200:	23440413          	addi	s0,s0,564 # 1c006234 <pos_fll_freq>
1c008204:	00291993          	slli	s3,s2,0x2
1c008208:	013406b3          	add	a3,s0,s3
1c00820c:	0006aa03          	lw	s4,0(a3)
1c008210:	020a1d63          	bnez	s4,1c00824a <pos_fll_init+0xba>
1c008214:	83e9                	srli	a5,a5,0x1a
1c008216:	0742                	slli	a4,a4,0x10
1c008218:	8341                	srli	a4,a4,0x10
1c00821a:	8bbd                	andi	a5,a5,15
1c00821c:	073e                	slli	a4,a4,0xf
1c00821e:	17fd                	addi	a5,a5,-1
1c008220:	00f75a33          	srl	s4,a4,a5
1c008224:	1c006537          	lui	a0,0x1c006
1c008228:	0146a023          	sw	s4,0(a3)
1c00822c:	23050513          	addi	a0,a0,560 # 1c006230 <stack>
1c008230:	954a                	add	a0,a0,s2
1c008232:	4685                	li	a3,1
1c008234:	00d50023          	sb	a3,0(a0)
1c008238:	40f2                	lw	ra,28(sp)
1c00823a:	4462                	lw	s0,24(sp)
1c00823c:	8552                	mv	a0,s4
1c00823e:	44d2                	lw	s1,20(sp)
1c008240:	4942                	lw	s2,16(sp)
1c008242:	49b2                	lw	s3,12(sp)
1c008244:	4a22                	lw	s4,8(sp)
1c008246:	6105                	addi	sp,sp,32
1c008248:	8082                	ret
1c00824a:	8552                	mv	a0,s4
1c00824c:	3d6d                	jal	1c008106 <__clzsi2>
1c00824e:	1579                	addi	a0,a0,-2
1c008250:	00155613          	srli	a2,a0,0x1
1c008254:	e631                	bnez	a2,1c0082a0 <pos_fll_init+0x110>
1c008256:	4709                	li	a4,2
1c008258:	4585                	li	a1,1
1c00825a:	4605                	li	a2,1
1c00825c:	00ca17b3          	sll	a5,s4,a2
1c008260:	76e1                	lui	a3,0xffff8
1c008262:	1c006537          	lui	a0,0x1c006
1c008266:	8efd                	and	a3,a3,a5
1c008268:	23050513          	addi	a0,a0,560 # 1c006230 <stack>
1c00826c:	96ae                	add	a3,a3,a1
1c00826e:	012505b3          	add	a1,a0,s2
1c008272:	00c6d6b3          	srl	a3,a3,a2
1c008276:	944e                	add	s0,s0,s3
1c008278:	0005c603          	lbu	a2,0(a1)
1c00827c:	c014                	sw	a3,0(s0)
1c00827e:	da4d                	beqz	a2,1c008230 <pos_fll_init+0xa0>
1c008280:	4094                	lw	a3,0(s1)
1c008282:	83bd                	srli	a5,a5,0xf
1c008284:	07c2                	slli	a5,a5,0x10
1c008286:	7641                	lui	a2,0xffff0
1c008288:	83c1                	srli	a5,a5,0x10
1c00828a:	8ef1                	and	a3,a3,a2
1c00828c:	8edd                	or	a3,a3,a5
1c00828e:	c40007b7          	lui	a5,0xc4000
1c008292:	8b3d                	andi	a4,a4,15
1c008294:	17fd                	addi	a5,a5,-1
1c008296:	076a                	slli	a4,a4,0x1a
1c008298:	8efd                	and	a3,a3,a5
1c00829a:	8ed9                	or	a3,a3,a4
1c00829c:	c094                	sw	a3,0(s1)
1c00829e:	bf49                	j	1c008230 <pos_fll_init+0xa0>
1c0082a0:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c0082a4:	4685                	li	a3,1
1c0082a6:	00b695b3          	sll	a1,a3,a1
1c0082aa:	00160713          	addi	a4,a2,1
1c0082ae:	b77d                	j	1c00825c <pos_fll_init+0xcc>

1c0082b0 <pos_fll_constructor>:
1c0082b0:	1c0067b7          	lui	a5,0x1c006
1c0082b4:	23478793          	addi	a5,a5,564 # 1c006234 <pos_fll_freq>
1c0082b8:	0007a023          	sw	zero,0(a5)
1c0082bc:	0007a223          	sw	zero,4(a5)
1c0082c0:	1c0067b7          	lui	a5,0x1c006
1c0082c4:	22079823          	sh	zero,560(a5) # 1c006230 <stack>
1c0082c8:	8082                	ret

1c0082ca <pos_soc_init>:
1c0082ca:	1141                	addi	sp,sp,-16
1c0082cc:	c606                	sw	ra,12(sp)
1c0082ce:	c422                	sw	s0,8(sp)
1c0082d0:	37c5                	jal	1c0082b0 <pos_fll_constructor>
1c0082d2:	4501                	li	a0,0
1c0082d4:	3d75                	jal	1c008190 <pos_fll_init>
1c0082d6:	1c006437          	lui	s0,0x1c006
1c0082da:	22a42e23          	sw	a0,572(s0) # 1c00623c <pos_freq_domains>
1c0082de:	4505                	li	a0,1
1c0082e0:	3d45                	jal	1c008190 <pos_fll_init>
1c0082e2:	23c40413          	addi	s0,s0,572
1c0082e6:	c408                	sw	a0,8(s0)
1c0082e8:	40b2                	lw	ra,12(sp)
1c0082ea:	4422                	lw	s0,8(sp)
1c0082ec:	0141                	addi	sp,sp,16
1c0082ee:	8082                	ret

1c0082f0 <KeccakF1600_StatePermute>:
1c0082f0:	1a4007b7          	lui	a5,0x1a400
1c0082f4:	1141                	addi	sp,sp,-16
1c0082f6:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c0082fa:	4118                	lw	a4,0(a0)
1c0082fc:	0791                	addi	a5,a5,4
1c0082fe:	fee7ae23          	sw	a4,-4(a5)
1c008302:	0511                	addi	a0,a0,4
1c008304:	fed79be3          	bne	a5,a3,1c0082fa <KeccakF1600_StatePermute+0xa>
1c008308:	1a4007b7          	lui	a5,0x1a400
1c00830c:	4705                	li	a4,1
1c00830e:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c008312:	1a400737          	lui	a4,0x1a400
1c008316:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c00831a:	8b85                	andi	a5,a5,1
1c00831c:	dfed                	beqz	a5,1c008316 <KeccakF1600_StatePermute+0x26>
1c00831e:	c602                	sw	zero,12(sp)
1c008320:	4732                	lw	a4,12(sp)
1c008322:	03100793          	li	a5,49
1c008326:	02e7c663          	blt	a5,a4,1c008352 <KeccakF1600_StatePermute+0x62>
1c00832a:	1a400637          	lui	a2,0x1a400
1c00832e:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c008332:	03100513          	li	a0,49
1c008336:	4732                	lw	a4,12(sp)
1c008338:	47b2                	lw	a5,12(sp)
1c00833a:	070a                	slli	a4,a4,0x2
1c00833c:	9732                	add	a4,a4,a2
1c00833e:	4314                	lw	a3,0(a4)
1c008340:	4732                	lw	a4,12(sp)
1c008342:	078a                	slli	a5,a5,0x2
1c008344:	0705                	addi	a4,a4,1
1c008346:	c63a                	sw	a4,12(sp)
1c008348:	97ae                	add	a5,a5,a1
1c00834a:	4732                	lw	a4,12(sp)
1c00834c:	c394                	sw	a3,0(a5)
1c00834e:	fee554e3          	ble	a4,a0,1c008336 <KeccakF1600_StatePermute+0x46>
1c008352:	0141                	addi	sp,sp,16
1c008354:	8082                	ret

1c008356 <KYBER_poly_ntt>:
1c008356:	1141                	addi	sp,sp,-16
1c008358:	c226                	sw	s1,4(sp)
1c00835a:	84aa                	mv	s1,a0
1c00835c:	1c000537          	lui	a0,0x1c000
1c008360:	13450513          	addi	a0,a0,308 # 1c000134 <__DTOR_END__+0x118>
1c008364:	c606                	sw	ra,12(sp)
1c008366:	c422                	sw	s0,8(sp)
1c008368:	c04a                	sw	s2,0(sp)
1c00836a:	1b3000ef          	jal	ra,1c008d1c <puts>
1c00836e:	1a401437          	lui	s0,0x1a401
1c008372:	4785                	li	a5,1
1c008374:	c41c                	sw	a5,8(s0)
1c008376:	00042423          	sw	zero,8(s0) # 1a401008 <__CTOR_LIST__-0x1bfeffc>
1c00837a:	00042423          	sw	zero,8(s0)
1c00837e:	00042423          	sw	zero,8(s0)
1c008382:	00042423          	sw	zero,8(s0)
1c008386:	00042423          	sw	zero,8(s0)
1c00838a:	00042423          	sw	zero,8(s0)
1c00838e:	00042423          	sw	zero,8(s0)
1c008392:	00042423          	sw	zero,8(s0)
1c008396:	00042423          	sw	zero,8(s0)
1c00839a:	1c000537          	lui	a0,0x1c000
1c00839e:	14850513          	addi	a0,a0,328 # 1c000148 <__DTOR_END__+0x12c>
1c0083a2:	17b000ef          	jal	ra,1c008d1c <puts>
1c0083a6:	20049583          	lh	a1,512(s1)
1c0083aa:	00042423          	sw	zero,8(s0)
1c0083ae:	1a4017b7          	lui	a5,0x1a401
1c0083b2:	e5bff637          	lui	a2,0xe5bff
1c0083b6:	20078693          	addi	a3,a5,512 # 1a401200 <__CTOR_LIST__-0x1bfee04>
1c0083ba:	00f58733          	add	a4,a1,a5
1c0083be:	9732                	add	a4,a4,a2
1c0083c0:	00071703          	lh	a4,0(a4)
1c0083c4:	0789                	addi	a5,a5,2
1c0083c6:	fee79f23          	sh	a4,-2(a5)
1c0083ca:	fed798e3          	bne	a5,a3,1c0083ba <KYBER_poly_ntt+0x64>
1c0083ce:	4401                	li	s0,0
1c0083d0:	1c0004b7          	lui	s1,0x1c000
1c0083d4:	4965                	li	s2,25
1c0083d6:	0405                	addi	s0,s0,1
1c0083d8:	85a2                	mv	a1,s0
1c0083da:	19c48513          	addi	a0,s1,412 # 1c00019c <__DTOR_END__+0x180>
1c0083de:	1d9000ef          	jal	ra,1c008db6 <printf>
1c0083e2:	ff241ae3          	bne	s0,s2,1c0083d6 <KYBER_poly_ntt+0x80>
1c0083e6:	1c000537          	lui	a0,0x1c000
1c0083ea:	1a050513          	addi	a0,a0,416 # 1c0001a0 <__DTOR_END__+0x184>
1c0083ee:	12f000ef          	jal	ra,1c008d1c <puts>
1c0083f2:	1a4017b7          	lui	a5,0x1a401
1c0083f6:	08000713          	li	a4,128
1c0083fa:	c798                	sw	a4,8(a5)
1c0083fc:	1c000537          	lui	a0,0x1c000
1c008400:	18050513          	addi	a0,a0,384 # 1c000180 <__DTOR_END__+0x164>
1c008404:	119000ef          	jal	ra,1c008d1c <puts>
1c008408:	4401                	li	s0,0
1c00840a:	38800913          	li	s2,904
1c00840e:	0405                	addi	s0,s0,1
1c008410:	85a2                	mv	a1,s0
1c008412:	19c48513          	addi	a0,s1,412
1c008416:	1a1000ef          	jal	ra,1c008db6 <printf>
1c00841a:	ff241ae3          	bne	s0,s2,1c00840e <KYBER_poly_ntt+0xb8>
1c00841e:	1c000537          	lui	a0,0x1c000
1c008422:	19050513          	addi	a0,a0,400 # 1c000190 <__DTOR_END__+0x174>
1c008426:	0f7000ef          	jal	ra,1c008d1c <puts>
1c00842a:	1a4017b7          	lui	a5,0x1a401
1c00842e:	4741                	li	a4,16
1c008430:	c798                	sw	a4,8(a5)
1c008432:	4422                	lw	s0,8(sp)
1c008434:	40b2                	lw	ra,12(sp)
1c008436:	4492                	lw	s1,4(sp)
1c008438:	4902                	lw	s2,0(sp)
1c00843a:	1c000537          	lui	a0,0x1c000
1c00843e:	16450513          	addi	a0,a0,356 # 1c000164 <__DTOR_END__+0x148>
1c008442:	0141                	addi	sp,sp,16
1c008444:	0d90006f          	j	1c008d1c <puts>

1c008448 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c008448:	1141                	addi	sp,sp,-16
1c00844a:	55555337          	lui	t1,0x55555
1c00844e:	68c1                	lui	a7,0x10
1c008450:	c622                	sw	s0,12(sp)
1c008452:	c426                	sw	s1,8(sp)
1c008454:	c24a                	sw	s2,4(sp)
1c008456:	20050e13          	addi	t3,a0,512
1c00845a:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00845e:	18fd                	addi	a7,a7,-1
1c008460:	419c                	lw	a5,0(a1)
1c008462:	0541                	addi	a0,a0,16
1c008464:	0017d713          	srli	a4,a5,0x1
1c008468:	00677733          	and	a4,a4,t1
1c00846c:	0067f7b3          	and	a5,a5,t1
1c008470:	97ba                	add	a5,a5,a4
1c008472:	0027d913          	srli	s2,a5,0x2
1c008476:	0087d693          	srli	a3,a5,0x8
1c00847a:	00a7d493          	srli	s1,a5,0xa
1c00847e:	0107d713          	srli	a4,a5,0x10
1c008482:	0127d413          	srli	s0,a5,0x12
1c008486:	0037f613          	andi	a2,a5,3
1c00848a:	00397913          	andi	s2,s2,3
1c00848e:	8a8d                	andi	a3,a3,3
1c008490:	888d                	andi	s1,s1,3
1c008492:	8b0d                	andi	a4,a4,3
1c008494:	880d                	andi	s0,s0,3
1c008496:	0047df13          	srli	t5,a5,0x4
1c00849a:	0067d393          	srli	t2,a5,0x6
1c00849e:	00c7de93          	srli	t4,a5,0xc
1c0084a2:	00e7d293          	srli	t0,a5,0xe
1c0084a6:	0147d813          	srli	a6,a5,0x14
1c0084aa:	0167df93          	srli	t6,a5,0x16
1c0084ae:	41260633          	sub	a2,a2,s2
1c0084b2:	8e85                	sub	a3,a3,s1
1c0084b4:	8f01                	sub	a4,a4,s0
1c0084b6:	0033f393          	andi	t2,t2,3
1c0084ba:	0032f293          	andi	t0,t0,3
1c0084be:	003fff93          	andi	t6,t6,3
1c0084c2:	003f7f13          	andi	t5,t5,3
1c0084c6:	003efe93          	andi	t4,t4,3
1c0084ca:	00387813          	andi	a6,a6,3
1c0084ce:	0642                	slli	a2,a2,0x10
1c0084d0:	06c2                	slli	a3,a3,0x10
1c0084d2:	0742                	slli	a4,a4,0x10
1c0084d4:	407f0f33          	sub	t5,t5,t2
1c0084d8:	405e8eb3          	sub	t4,t4,t0
1c0084dc:	41f80833          	sub	a6,a6,t6
1c0084e0:	0187d293          	srli	t0,a5,0x18
1c0084e4:	01a7d393          	srli	t2,a5,0x1a
1c0084e8:	01c7df93          	srli	t6,a5,0x1c
1c0084ec:	8241                	srli	a2,a2,0x10
1c0084ee:	82c1                	srli	a3,a3,0x10
1c0084f0:	8341                	srli	a4,a4,0x10
1c0084f2:	0842                	slli	a6,a6,0x10
1c0084f4:	0f42                	slli	t5,t5,0x10
1c0084f6:	01167633          	and	a2,a2,a7
1c0084fa:	0ec2                	slli	t4,t4,0x10
1c0084fc:	0116f6b3          	and	a3,a3,a7
1c008500:	01177733          	and	a4,a4,a7
1c008504:	0032f293          	andi	t0,t0,3
1c008508:	0033f393          	andi	t2,t2,3
1c00850c:	003fff93          	andi	t6,t6,3
1c008510:	83f9                	srli	a5,a5,0x1e
1c008512:	01076733          	or	a4,a4,a6
1c008516:	01e66633          	or	a2,a2,t5
1c00851a:	01d6e6b3          	or	a3,a3,t4
1c00851e:	40728833          	sub	a6,t0,t2
1c008522:	40ff87b3          	sub	a5,t6,a5
1c008526:	fec52823          	sw	a2,-16(a0)
1c00852a:	fed52a23          	sw	a3,-12(a0)
1c00852e:	fee52c23          	sw	a4,-8(a0)
1c008532:	ff051e23          	sh	a6,-4(a0)
1c008536:	fef51f23          	sh	a5,-2(a0)
1c00853a:	0591                	addi	a1,a1,4
1c00853c:	f3c512e3          	bne	a0,t3,1c008460 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c008540:	4432                	lw	s0,12(sp)
1c008542:	44a2                	lw	s1,8(sp)
1c008544:	4912                	lw	s2,4(sp)
1c008546:	0141                	addi	sp,sp,16
1c008548:	8082                	ret

1c00854a <keccak_absorb.constprop.7>:
1c00854a:	7151                	addi	sp,sp,-240
1c00854c:	d3a6                	sw	s1,228(sp)
1c00854e:	cfce                	sw	s3,220(sp)
1c008550:	cdd2                	sw	s4,216(sp)
1c008552:	cbd6                	sw	s5,212(sp)
1c008554:	d786                	sw	ra,236(sp)
1c008556:	d5a2                	sw	s0,232(sp)
1c008558:	d1ca                	sw	s2,224(sp)
1c00855a:	89aa                	mv	s3,a0
1c00855c:	8a32                	mv	s4,a2
1c00855e:	84b6                	mv	s1,a3
1c008560:	8aaa                	mv	s5,a0
1c008562:	0c850713          	addi	a4,a0,200
1c008566:	87aa                	mv	a5,a0
1c008568:	4601                	li	a2,0
1c00856a:	4681                	li	a3,0
1c00856c:	c390                	sw	a2,0(a5)
1c00856e:	c3d4                	sw	a3,4(a5)
1c008570:	07a1                	addi	a5,a5,8
1c008572:	fef71be3          	bne	a4,a5,1c008568 <keccak_absorb.constprop.7+0x1e>
1c008576:	08700793          	li	a5,135
1c00857a:	0747fb63          	bleu	s4,a5,1c0085f0 <keccak_absorb.constprop.7+0xa6>
1c00857e:	08700413          	li	s0,135
1c008582:	08858913          	addi	s2,a1,136
1c008586:	874e                	mv	a4,s3
1c008588:	0015c783          	lbu	a5,1(a1)
1c00858c:	0025c603          	lbu	a2,2(a1)
1c008590:	0055c883          	lbu	a7,5(a1)
1c008594:	0045c303          	lbu	t1,4(a1)
1c008598:	0065c803          	lbu	a6,6(a1)
1c00859c:	0005ce03          	lbu	t3,0(a1)
1c0085a0:	0035c503          	lbu	a0,3(a1)
1c0085a4:	0075c683          	lbu	a3,7(a1)
1c0085a8:	0642                	slli	a2,a2,0x10
1c0085aa:	07a2                	slli	a5,a5,0x8
1c0085ac:	08a2                	slli	a7,a7,0x8
1c0085ae:	8fd1                	or	a5,a5,a2
1c0085b0:	0068e8b3          	or	a7,a7,t1
1c0085b4:	0842                	slli	a6,a6,0x10
1c0085b6:	00072303          	lw	t1,0(a4)
1c0085ba:	4350                	lw	a2,4(a4)
1c0085bc:	01c7e7b3          	or	a5,a5,t3
1c0085c0:	0562                	slli	a0,a0,0x18
1c0085c2:	01186833          	or	a6,a6,a7
1c0085c6:	06e2                	slli	a3,a3,0x18
1c0085c8:	8fc9                	or	a5,a5,a0
1c0085ca:	0106e6b3          	or	a3,a3,a6
1c0085ce:	00f347b3          	xor	a5,t1,a5
1c0085d2:	8eb1                	xor	a3,a3,a2
1c0085d4:	c31c                	sw	a5,0(a4)
1c0085d6:	c354                	sw	a3,4(a4)
1c0085d8:	05a1                	addi	a1,a1,8
1c0085da:	0721                	addi	a4,a4,8
1c0085dc:	fab916e3          	bne	s2,a1,1c008588 <keccak_absorb.constprop.7+0x3e>
1c0085e0:	85ce                	mv	a1,s3
1c0085e2:	854e                	mv	a0,s3
1c0085e4:	3331                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c0085e6:	f78a0a13          	addi	s4,s4,-136
1c0085ea:	85ca                	mv	a1,s2
1c0085ec:	f9446be3          	bltu	s0,s4,1c008582 <keccak_absorb.constprop.7+0x38>
1c0085f0:	003c                	addi	a5,sp,8
1c0085f2:	0918                	addi	a4,sp,144
1c0085f4:	883e                	mv	a6,a5
1c0085f6:	4681                	li	a3,0
1c0085f8:	00d82023          	sw	a3,0(a6)
1c0085fc:	0811                	addi	a6,a6,4
1c0085fe:	ff071ce3          	bne	a4,a6,1c0085f6 <keccak_absorb.constprop.7+0xac>
1c008602:	060a0463          	beqz	s4,1c00866a <keccak_absorb.constprop.7+0x120>
1c008606:	fffa0713          	addi	a4,s4,-1
1c00860a:	4689                	li	a3,2
1c00860c:	0ee6f163          	bleu	a4,a3,1c0086ee <keccak_absorb.constprop.7+0x1a4>
1c008610:	002a5893          	srli	a7,s4,0x2
1c008614:	862e                	mv	a2,a1
1c008616:	86be                	mv	a3,a5
1c008618:	4701                	li	a4,0
1c00861a:	4208                	lw	a0,0(a2)
1c00861c:	0705                	addi	a4,a4,1
1c00861e:	c288                	sw	a0,0(a3)
1c008620:	0611                	addi	a2,a2,4
1c008622:	0691                	addi	a3,a3,4
1c008624:	ff176be3          	bltu	a4,a7,1c00861a <keccak_absorb.constprop.7+0xd0>
1c008628:	ffca7713          	andi	a4,s4,-4
1c00862c:	02ea0f63          	beq	s4,a4,1c00866a <keccak_absorb.constprop.7+0x120>
1c008630:	00e586b3          	add	a3,a1,a4
1c008634:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c008638:	0988                	addi	a0,sp,208
1c00863a:	00e506b3          	add	a3,a0,a4
1c00863e:	f2c68c23          	sb	a2,-200(a3)
1c008642:	00170693          	addi	a3,a4,1
1c008646:	0346f263          	bleu	s4,a3,1c00866a <keccak_absorb.constprop.7+0x120>
1c00864a:	00d58633          	add	a2,a1,a3
1c00864e:	00064603          	lbu	a2,0(a2) # e5bff000 <pulp__FC+0xe5bff001>
1c008652:	96aa                	add	a3,a3,a0
1c008654:	f2c68c23          	sb	a2,-200(a3)
1c008658:	0709                	addi	a4,a4,2
1c00865a:	01477863          	bleu	s4,a4,1c00866a <keccak_absorb.constprop.7+0x120>
1c00865e:	95ba                	add	a1,a1,a4
1c008660:	0005c683          	lbu	a3,0(a1)
1c008664:	972a                	add	a4,a4,a0
1c008666:	f2d70c23          	sb	a3,-200(a4)
1c00866a:	0990                	addi	a2,sp,208
1c00866c:	9a32                	add	s4,s4,a2
1c00866e:	f29a0c23          	sb	s1,-200(s4)
1c008672:	08f14703          	lbu	a4,143(sp)
1c008676:	f8076713          	ori	a4,a4,-128
1c00867a:	08e107a3          	sb	a4,143(sp)
1c00867e:	0017c703          	lbu	a4,1(a5) # 1a401001 <__CTOR_LIST__-0x1bff003>
1c008682:	0027c883          	lbu	a7,2(a5)
1c008686:	0057c503          	lbu	a0,5(a5)
1c00868a:	0047c303          	lbu	t1,4(a5)
1c00868e:	0067c583          	lbu	a1,6(a5)
1c008692:	0007ce03          	lbu	t3,0(a5)
1c008696:	0037c603          	lbu	a2,3(a5)
1c00869a:	0077c683          	lbu	a3,7(a5)
1c00869e:	08c2                	slli	a7,a7,0x10
1c0086a0:	0722                	slli	a4,a4,0x8
1c0086a2:	0522                	slli	a0,a0,0x8
1c0086a4:	01176733          	or	a4,a4,a7
1c0086a8:	00656533          	or	a0,a0,t1
1c0086ac:	05c2                	slli	a1,a1,0x10
1c0086ae:	000aa303          	lw	t1,0(s5)
1c0086b2:	004aa883          	lw	a7,4(s5)
1c0086b6:	01c76733          	or	a4,a4,t3
1c0086ba:	0662                	slli	a2,a2,0x18
1c0086bc:	8dc9                	or	a1,a1,a0
1c0086be:	06e2                	slli	a3,a3,0x18
1c0086c0:	8f51                	or	a4,a4,a2
1c0086c2:	8ecd                	or	a3,a3,a1
1c0086c4:	00e34733          	xor	a4,t1,a4
1c0086c8:	00d8c6b3          	xor	a3,a7,a3
1c0086cc:	00eaa023          	sw	a4,0(s5)
1c0086d0:	00daa223          	sw	a3,4(s5)
1c0086d4:	07a1                	addi	a5,a5,8
1c0086d6:	0aa1                	addi	s5,s5,8
1c0086d8:	faf813e3          	bne	a6,a5,1c00867e <keccak_absorb.constprop.7+0x134>
1c0086dc:	50be                	lw	ra,236(sp)
1c0086de:	542e                	lw	s0,232(sp)
1c0086e0:	549e                	lw	s1,228(sp)
1c0086e2:	590e                	lw	s2,224(sp)
1c0086e4:	49fe                	lw	s3,220(sp)
1c0086e6:	4a6e                	lw	s4,216(sp)
1c0086e8:	4ade                	lw	s5,212(sp)
1c0086ea:	616d                	addi	sp,sp,240
1c0086ec:	8082                	ret
1c0086ee:	4701                	li	a4,0
1c0086f0:	b781                	j	1c008630 <keccak_absorb.constprop.7+0xe6>

1c0086f2 <shake256>:
1c0086f2:	7131                	addi	sp,sp,-192
1c0086f4:	db26                	sw	s1,180(sp)
1c0086f6:	d94a                	sw	s2,176(sp)
1c0086f8:	08800493          	li	s1,136
1c0086fc:	892a                	mv	s2,a0
1c0086fe:	0c800513          	li	a0,200
1c008702:	dd22                	sw	s0,184(sp)
1c008704:	d74e                	sw	s3,172(sp)
1c008706:	d552                	sw	s4,168(sp)
1c008708:	df06                	sw	ra,188(sp)
1c00870a:	d356                	sw	s5,164(sp)
1c00870c:	d15a                	sw	s6,160(sp)
1c00870e:	cf5e                	sw	s7,156(sp)
1c008710:	cd62                	sw	s8,152(sp)
1c008712:	cb66                	sw	s9,148(sp)
1c008714:	89ae                	mv	s3,a1
1c008716:	8432                	mv	s0,a2
1c008718:	8a36                	mv	s4,a3
1c00871a:	0295d4b3          	divu	s1,a1,s1
1c00871e:	7ca010ef          	jal	ra,1c009ee8 <pi_l2_malloc>
1c008722:	20050163          	beqz	a0,1c008924 <shake256+0x232>
1c008726:	46fd                	li	a3,31
1c008728:	8652                	mv	a2,s4
1c00872a:	85a2                	mv	a1,s0
1c00872c:	8b2a                	mv	s6,a0
1c00872e:	3d31                	jal	1c00854a <keccak_absorb.constprop.7>
1c008730:	c4dd                	beqz	s1,1c0087de <shake256+0xec>
1c008732:	00449713          	slli	a4,s1,0x4
1c008736:	00970433          	add	s0,a4,s1
1c00873a:	040e                	slli	s0,s0,0x3
1c00873c:	7bc1                	lui	s7,0xffff0
1c00873e:	ff010ab7          	lui	s5,0xff010
1c008742:	01000a37          	lui	s4,0x1000
1c008746:	412b0c33          	sub	s8,s6,s2
1c00874a:	944a                	add	s0,s0,s2
1c00874c:	8cca                	mv	s9,s2
1c00874e:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c008752:	1afd                	addi	s5,s5,-1
1c008754:	1a7d                	addi	s4,s4,-1
1c008756:	85da                	mv	a1,s6
1c008758:	855a                	mv	a0,s6
1c00875a:	3e59                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c00875c:	8666                	mv	a2,s9
1c00875e:	088c8593          	addi	a1,s9,136
1c008762:	00cc07b3          	add	a5,s8,a2
1c008766:	4388                	lw	a0,0(a5)
1c008768:	43d4                	lw	a3,4(a5)
1c00876a:	00855893          	srli	a7,a0,0x8
1c00876e:	0086d813          	srli	a6,a3,0x8
1c008772:	0ff57713          	andi	a4,a0,255
1c008776:	0ff6f793          	andi	a5,a3,255
1c00877a:	0ff8f893          	andi	a7,a7,255
1c00877e:	0ff87813          	andi	a6,a6,255
1c008782:	08a2                	slli	a7,a7,0x8
1c008784:	0822                	slli	a6,a6,0x8
1c008786:	01777733          	and	a4,a4,s7
1c00878a:	0177f7b3          	and	a5,a5,s7
1c00878e:	01176733          	or	a4,a4,a7
1c008792:	0107e7b3          	or	a5,a5,a6
1c008796:	00ff08b7          	lui	a7,0xff0
1c00879a:	00ff0837          	lui	a6,0xff0
1c00879e:	011578b3          	and	a7,a0,a7
1c0087a2:	0106f833          	and	a6,a3,a6
1c0087a6:	01577733          	and	a4,a4,s5
1c0087aa:	0157f7b3          	and	a5,a5,s5
1c0087ae:	01176733          	or	a4,a4,a7
1c0087b2:	8161                	srli	a0,a0,0x18
1c0087b4:	0107e7b3          	or	a5,a5,a6
1c0087b8:	82e1                	srli	a3,a3,0x18
1c0087ba:	0562                	slli	a0,a0,0x18
1c0087bc:	01477733          	and	a4,a4,s4
1c0087c0:	06e2                	slli	a3,a3,0x18
1c0087c2:	0147f7b3          	and	a5,a5,s4
1c0087c6:	8f49                	or	a4,a4,a0
1c0087c8:	8fd5                	or	a5,a5,a3
1c0087ca:	c218                	sw	a4,0(a2)
1c0087cc:	c25c                	sw	a5,4(a2)
1c0087ce:	0621                	addi	a2,a2,8
1c0087d0:	f8c599e3          	bne	a1,a2,1c008762 <shake256+0x70>
1c0087d4:	8cae                	mv	s9,a1
1c0087d6:	f78c0c13          	addi	s8,s8,-136
1c0087da:	f6b41ee3          	bne	s0,a1,1c008756 <shake256+0x64>
1c0087de:	08800793          	li	a5,136
1c0087e2:	02f9f9b3          	remu	s3,s3,a5
1c0087e6:	02099363          	bnez	s3,1c00880c <shake256+0x11a>
1c0087ea:	546a                	lw	s0,184(sp)
1c0087ec:	50fa                	lw	ra,188(sp)
1c0087ee:	54da                	lw	s1,180(sp)
1c0087f0:	594a                	lw	s2,176(sp)
1c0087f2:	59ba                	lw	s3,172(sp)
1c0087f4:	5a2a                	lw	s4,168(sp)
1c0087f6:	5a9a                	lw	s5,164(sp)
1c0087f8:	4bfa                	lw	s7,156(sp)
1c0087fa:	4c6a                	lw	s8,152(sp)
1c0087fc:	4cda                	lw	s9,148(sp)
1c0087fe:	855a                	mv	a0,s6
1c008800:	5b0a                	lw	s6,160(sp)
1c008802:	0c800593          	li	a1,200
1c008806:	6129                	addi	sp,sp,192
1c008808:	6ec0106f          	j	1c009ef4 <pi_l2_free>
1c00880c:	85da                	mv	a1,s6
1c00880e:	855a                	mv	a0,s6
1c008810:	34c5                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c008812:	002c                	addi	a1,sp,8
1c008814:	78c1                	lui	a7,0xffff0
1c008816:	ff010837          	lui	a6,0xff010
1c00881a:	01000537          	lui	a0,0x1000
1c00881e:	09010e13          	addi	t3,sp,144
1c008822:	862e                	mv	a2,a1
1c008824:	40bb0333          	sub	t1,s6,a1
1c008828:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00882c:	187d                	addi	a6,a6,-1
1c00882e:	157d                	addi	a0,a0,-1
1c008830:	00c307b3          	add	a5,t1,a2
1c008834:	0007ae83          	lw	t4,0(a5)
1c008838:	43d4                	lw	a3,4(a5)
1c00883a:	008edf93          	srli	t6,t4,0x8
1c00883e:	0086df13          	srli	t5,a3,0x8
1c008842:	0ffef713          	andi	a4,t4,255
1c008846:	0ff6f793          	andi	a5,a3,255
1c00884a:	0fffff93          	andi	t6,t6,255
1c00884e:	0fff7f13          	andi	t5,t5,255
1c008852:	0fa2                	slli	t6,t6,0x8
1c008854:	0f22                	slli	t5,t5,0x8
1c008856:	01177733          	and	a4,a4,a7
1c00885a:	0117f7b3          	and	a5,a5,a7
1c00885e:	01f76733          	or	a4,a4,t6
1c008862:	01e7e7b3          	or	a5,a5,t5
1c008866:	00ff0fb7          	lui	t6,0xff0
1c00886a:	00ff0f37          	lui	t5,0xff0
1c00886e:	01feffb3          	and	t6,t4,t6
1c008872:	01e6ff33          	and	t5,a3,t5
1c008876:	01077733          	and	a4,a4,a6
1c00887a:	0107f7b3          	and	a5,a5,a6
1c00887e:	01f76733          	or	a4,a4,t6
1c008882:	018ede93          	srli	t4,t4,0x18
1c008886:	01e7e7b3          	or	a5,a5,t5
1c00888a:	82e1                	srli	a3,a3,0x18
1c00888c:	0ee2                	slli	t4,t4,0x18
1c00888e:	8f69                	and	a4,a4,a0
1c008890:	06e2                	slli	a3,a3,0x18
1c008892:	8fe9                	and	a5,a5,a0
1c008894:	01d76733          	or	a4,a4,t4
1c008898:	8fd5                	or	a5,a5,a3
1c00889a:	c218                	sw	a4,0(a2)
1c00889c:	c25c                	sw	a5,4(a2)
1c00889e:	0621                	addi	a2,a2,8
1c0088a0:	f8ce18e3          	bne	t3,a2,1c008830 <shake256+0x13e>
1c0088a4:	fff98793          	addi	a5,s3,-1
1c0088a8:	4709                	li	a4,2
1c0088aa:	06f77963          	bleu	a5,a4,1c00891c <shake256+0x22a>
1c0088ae:	00449713          	slli	a4,s1,0x4
1c0088b2:	009707b3          	add	a5,a4,s1
1c0088b6:	078e                	slli	a5,a5,0x3
1c0088b8:	0029d513          	srli	a0,s3,0x2
1c0088bc:	97ca                	add	a5,a5,s2
1c0088be:	4681                	li	a3,0
1c0088c0:	4190                	lw	a2,0(a1)
1c0088c2:	0685                	addi	a3,a3,1
1c0088c4:	c390                	sw	a2,0(a5)
1c0088c6:	0591                	addi	a1,a1,4
1c0088c8:	0791                	addi	a5,a5,4
1c0088ca:	fea6ebe3          	bltu	a3,a0,1c0088c0 <shake256+0x1ce>
1c0088ce:	ffc9f693          	andi	a3,s3,-4
1c0088d2:	f0d98ce3          	beq	s3,a3,1c0087ea <shake256+0xf8>
1c0088d6:	009707b3          	add	a5,a4,s1
1c0088da:	090c                	addi	a1,sp,144
1c0088dc:	00d58733          	add	a4,a1,a3
1c0088e0:	078e                	slli	a5,a5,0x3
1c0088e2:	f7874603          	lbu	a2,-136(a4)
1c0088e6:	97ca                	add	a5,a5,s2
1c0088e8:	00d78733          	add	a4,a5,a3
1c0088ec:	00c70023          	sb	a2,0(a4)
1c0088f0:	00168713          	addi	a4,a3,1
1c0088f4:	ef377be3          	bleu	s3,a4,1c0087ea <shake256+0xf8>
1c0088f8:	00e58633          	add	a2,a1,a4
1c0088fc:	f7864603          	lbu	a2,-136(a2)
1c008900:	973e                	add	a4,a4,a5
1c008902:	00c70023          	sb	a2,0(a4)
1c008906:	0689                	addi	a3,a3,2
1c008908:	ef36f1e3          	bleu	s3,a3,1c0087ea <shake256+0xf8>
1c00890c:	00d58733          	add	a4,a1,a3
1c008910:	f7874703          	lbu	a4,-136(a4)
1c008914:	97b6                	add	a5,a5,a3
1c008916:	00e78023          	sb	a4,0(a5)
1c00891a:	bdc1                	j	1c0087ea <shake256+0xf8>
1c00891c:	4681                	li	a3,0
1c00891e:	00449713          	slli	a4,s1,0x4
1c008922:	bf55                	j	1c0088d6 <shake256+0x1e4>
1c008924:	06f00513          	li	a0,111
1c008928:	298d                	jal	1c008d9a <exit>

1c00892a <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c00892a:	9b010113          	addi	sp,sp,-1616
1c00892e:	100c                	addi	a1,sp,32
1c008930:	4601                	li	a2,0
1c008932:	0088                	addi	a0,sp,64
1c008934:	64112623          	sw	ra,1612(sp)
1c008938:	2025                	jal	1c008960 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00893a:	1c000537          	lui	a0,0x1c000
1c00893e:	1b450513          	addi	a0,a0,436 # 1c0001b4 <__DTOR_END__+0x198>
1c008942:	2ee9                	jal	1c008d1c <puts>
1c008944:	0088                	addi	a0,sp,64
1c008946:	2835                	jal	1c008982 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c008948:	64c12083          	lw	ra,1612(sp)
1c00894c:	65010113          	addi	sp,sp,1616
1c008950:	8082                	ret

1c008952 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c008952:	1141                	addi	sp,sp,-16
1c008954:	c606                	sw	ra,12(sp)
1c008956:	3fd1                	jal	1c00892a <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c008958:	40b2                	lw	ra,12(sp)
1c00895a:	4501                	li	a0,0
1c00895c:	0141                	addi	sp,sp,16
1c00895e:	8082                	ret

1c008960 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c008960:	7175                	addi	sp,sp,-144
1c008962:	c522                	sw	s0,136(sp)
1c008964:	86b2                	mv	a3,a2
1c008966:	842a                	mv	s0,a0
1c008968:	862e                	mv	a2,a1
1c00896a:	850a                	mv	a0,sp
1c00896c:	08000593          	li	a1,128
1c008970:	c706                	sw	ra,140(sp)
1c008972:	2849                	jal	1c008a04 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c008974:	858a                	mv	a1,sp
1c008976:	8522                	mv	a0,s0
1c008978:	3cc1                	jal	1c008448 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c00897a:	40ba                	lw	ra,140(sp)
1c00897c:	442a                	lw	s0,136(sp)
1c00897e:	6149                	addi	sp,sp,144
1c008980:	8082                	ret

1c008982 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c008982:	9f010113          	addi	sp,sp,-1552
1c008986:	85aa                	mv	a1,a0
1c008988:	20000613          	li	a2,512
1c00898c:	40010513          	addi	a0,sp,1024
1c008990:	60812423          	sw	s0,1544(sp)
1c008994:	60112623          	sw	ra,1548(sp)
1c008998:	60912223          	sw	s1,1540(sp)
1c00899c:	61212023          	sw	s2,1536(sp)
1c0089a0:	20c9                	jal	1c008a62 <memcpy>
1c0089a2:	840a                	mv	s0,sp
1c0089a4:	40010793          	addi	a5,sp,1024
1c0089a8:	60010613          	addi	a2,sp,1536
1c0089ac:	870a                	mv	a4,sp
1c0089ae:	4394                	lw	a3,0(a5)
1c0089b0:	0791                	addi	a5,a5,4
1c0089b2:	c314                	sw	a3,0(a4)
1c0089b4:	0711                	addi	a4,a4,4
1c0089b6:	fec79ce3          	bne	a5,a2,1c0089ae <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x2c>
1c0089ba:	20040913          	addi	s2,s0,512
1c0089be:	1c0004b7          	lui	s1,0x1c000
1c0089c2:	00041583          	lh	a1,0(s0)
1c0089c6:	1c848513          	addi	a0,s1,456 # 1c0001c8 <__DTOR_END__+0x1ac>
1c0089ca:	0409                	addi	s0,s0,2
1c0089cc:	26ed                	jal	1c008db6 <printf>
1c0089ce:	fe891ae3          	bne	s2,s0,1c0089c2 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x40>
1c0089d2:	1c000537          	lui	a0,0x1c000
1c0089d6:	1d050513          	addi	a0,a0,464 # 1c0001d0 <__DTOR_END__+0x1b4>
1c0089da:	2689                	jal	1c008d1c <puts>
1c0089dc:	40011583          	lh	a1,1024(sp)
1c0089e0:	20011503          	lh	a0,512(sp)
1c0089e4:	3a8d                	jal	1c008356 <KYBER_poly_ntt>
1c0089e6:	60812403          	lw	s0,1544(sp)
1c0089ea:	60c12083          	lw	ra,1548(sp)
1c0089ee:	60412483          	lw	s1,1540(sp)
1c0089f2:	60012903          	lw	s2,1536(sp)
1c0089f6:	1c000537          	lui	a0,0x1c000
1c0089fa:	1f450513          	addi	a0,a0,500 # 1c0001f4 <__DTOR_END__+0x1d8>
1c0089fe:	61010113          	addi	sp,sp,1552
1c008a02:	ae29                	j	1c008d1c <puts>

1c008a04 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c008a04:	7139                	addi	sp,sp,-64
1c008a06:	87b2                	mv	a5,a2
1c008a08:	da26                	sw	s1,52(sp)
1c008a0a:	d84a                	sw	s2,48(sp)
1c008a0c:	84aa                	mv	s1,a0
1c008a0e:	892e                	mv	s2,a1
1c008a10:	02000613          	li	a2,32
1c008a14:	85be                	mv	a1,a5
1c008a16:	0068                	addi	a0,sp,12
1c008a18:	de06                	sw	ra,60(sp)
1c008a1a:	dc22                	sw	s0,56(sp)
1c008a1c:	8436                	mv	s0,a3
1c008a1e:	2091                	jal	1c008a62 <memcpy>
1c008a20:	0070                	addi	a2,sp,12
1c008a22:	85ca                	mv	a1,s2
1c008a24:	8526                	mv	a0,s1
1c008a26:	02100693          	li	a3,33
1c008a2a:	02810623          	sb	s0,44(sp)
1c008a2e:	31d1                	jal	1c0086f2 <shake256>
1c008a30:	50f2                	lw	ra,60(sp)
1c008a32:	5462                	lw	s0,56(sp)
1c008a34:	54d2                	lw	s1,52(sp)
1c008a36:	5942                	lw	s2,48(sp)
1c008a38:	6121                	addi	sp,sp,64
1c008a3a:	8082                	ret

1c008a3c <pos_wait_forever>:
1c008a3c:	f14027f3          	csrr	a5,mhartid
1c008a40:	8795                	srai	a5,a5,0x5
1c008a42:	03f7f793          	andi	a5,a5,63
1c008a46:	477d                	li	a4,31
1c008a48:	00e78363          	beq	a5,a4,1c008a4e <pos_wait_forever+0x12>
1c008a4c:	a001                	j	1c008a4c <pos_wait_forever+0x10>
1c008a4e:	1a10a7b7          	lui	a5,0x1a10a
1c008a52:	577d                	li	a4,-1
1c008a54:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c008a58:	10500073          	wfi
1c008a5c:	10500073          	wfi
1c008a60:	bfe5                	j	1c008a58 <pos_wait_forever+0x1c>

1c008a62 <memcpy>:
1c008a62:	00b567b3          	or	a5,a0,a1
1c008a66:	8b8d                	andi	a5,a5,3
1c008a68:	10078f63          	beqz	a5,1c008b86 <memcpy+0x124>
1c008a6c:	14060063          	beqz	a2,1c008bac <memcpy+0x14a>
1c008a70:	00458793          	addi	a5,a1,4
1c008a74:	00450693          	addi	a3,a0,4
1c008a78:	00f537b3          	sltu	a5,a0,a5
1c008a7c:	00d5b6b3          	sltu	a3,a1,a3
1c008a80:	0017c793          	xori	a5,a5,1
1c008a84:	0016c693          	xori	a3,a3,1
1c008a88:	873e                	mv	a4,a5
1c008a8a:	87b6                	mv	a5,a3
1c008a8c:	8fd9                	or	a5,a5,a4
1c008a8e:	0ff7f793          	andi	a5,a5,255
1c008a92:	cff9                	beqz	a5,1c008b70 <memcpy+0x10e>
1c008a94:	00863793          	sltiu	a5,a2,8
1c008a98:	0017c793          	xori	a5,a5,1
1c008a9c:	0ff7f793          	andi	a5,a5,255
1c008aa0:	cbe1                	beqz	a5,1c008b70 <memcpy+0x10e>
1c008aa2:	40b007b3          	neg	a5,a1
1c008aa6:	8b8d                	andi	a5,a5,3
1c008aa8:	fff60313          	addi	t1,a2,-1
1c008aac:	cfe5                	beqz	a5,1c008ba4 <memcpy+0x142>
1c008aae:	0005c683          	lbu	a3,0(a1)
1c008ab2:	4705                	li	a4,1
1c008ab4:	00d50023          	sb	a3,0(a0)
1c008ab8:	00158893          	addi	a7,a1,1
1c008abc:	00150813          	addi	a6,a0,1
1c008ac0:	02e78963          	beq	a5,a4,1c008af2 <memcpy+0x90>
1c008ac4:	0015c683          	lbu	a3,1(a1)
1c008ac8:	470d                	li	a4,3
1c008aca:	00d500a3          	sb	a3,1(a0)
1c008ace:	00258893          	addi	a7,a1,2
1c008ad2:	00250813          	addi	a6,a0,2
1c008ad6:	ffe60313          	addi	t1,a2,-2
1c008ada:	00e79c63          	bne	a5,a4,1c008af2 <memcpy+0x90>
1c008ade:	0025c703          	lbu	a4,2(a1)
1c008ae2:	00358893          	addi	a7,a1,3
1c008ae6:	00350813          	addi	a6,a0,3
1c008aea:	00e50123          	sb	a4,2(a0)
1c008aee:	ffd60313          	addi	t1,a2,-3
1c008af2:	8e1d                	sub	a2,a2,a5
1c008af4:	95be                	add	a1,a1,a5
1c008af6:	00265e13          	srli	t3,a2,0x2
1c008afa:	97aa                	add	a5,a5,a0
1c008afc:	4701                	li	a4,0
1c008afe:	4194                	lw	a3,0(a1)
1c008b00:	0705                	addi	a4,a4,1
1c008b02:	c394                	sw	a3,0(a5)
1c008b04:	0591                	addi	a1,a1,4
1c008b06:	0791                	addi	a5,a5,4
1c008b08:	ffc76be3          	bltu	a4,t3,1c008afe <memcpy+0x9c>
1c008b0c:	ffc67593          	andi	a1,a2,-4
1c008b10:	40b306b3          	sub	a3,t1,a1
1c008b14:	00b807b3          	add	a5,a6,a1
1c008b18:	00b88733          	add	a4,a7,a1
1c008b1c:	06b60463          	beq	a2,a1,1c008b84 <memcpy+0x122>
1c008b20:	00074583          	lbu	a1,0(a4)
1c008b24:	fff68613          	addi	a2,a3,-1
1c008b28:	00b78023          	sb	a1,0(a5)
1c008b2c:	ce21                	beqz	a2,1c008b84 <memcpy+0x122>
1c008b2e:	00174583          	lbu	a1,1(a4)
1c008b32:	ffe68613          	addi	a2,a3,-2
1c008b36:	00b780a3          	sb	a1,1(a5)
1c008b3a:	c629                	beqz	a2,1c008b84 <memcpy+0x122>
1c008b3c:	00274583          	lbu	a1,2(a4)
1c008b40:	ffd68613          	addi	a2,a3,-3
1c008b44:	00b78123          	sb	a1,2(a5)
1c008b48:	ce15                	beqz	a2,1c008b84 <memcpy+0x122>
1c008b4a:	00374583          	lbu	a1,3(a4)
1c008b4e:	ffc68613          	addi	a2,a3,-4
1c008b52:	00b781a3          	sb	a1,3(a5)
1c008b56:	c61d                	beqz	a2,1c008b84 <memcpy+0x122>
1c008b58:	00474583          	lbu	a1,4(a4)
1c008b5c:	4615                	li	a2,5
1c008b5e:	00b78223          	sb	a1,4(a5)
1c008b62:	02c68163          	beq	a3,a2,1c008b84 <memcpy+0x122>
1c008b66:	00574703          	lbu	a4,5(a4)
1c008b6a:	00e782a3          	sb	a4,5(a5)
1c008b6e:	8082                	ret
1c008b70:	962e                	add	a2,a2,a1
1c008b72:	87aa                	mv	a5,a0
1c008b74:	0585                	addi	a1,a1,1
1c008b76:	fff5c703          	lbu	a4,-1(a1)
1c008b7a:	0785                	addi	a5,a5,1
1c008b7c:	fee78fa3          	sb	a4,-1(a5)
1c008b80:	fec59ae3          	bne	a1,a2,1c008b74 <memcpy+0x112>
1c008b84:	8082                	ret
1c008b86:	00367793          	andi	a5,a2,3
1c008b8a:	ee0793e3          	bnez	a5,1c008a70 <memcpy+0xe>
1c008b8e:	da7d                	beqz	a2,1c008b84 <memcpy+0x122>
1c008b90:	87aa                	mv	a5,a0
1c008b92:	0591                	addi	a1,a1,4
1c008b94:	ffc5a703          	lw	a4,-4(a1)
1c008b98:	0791                	addi	a5,a5,4
1c008b9a:	fee7ae23          	sw	a4,-4(a5)
1c008b9e:	1671                	addi	a2,a2,-4
1c008ba0:	fa6d                	bnez	a2,1c008b92 <memcpy+0x130>
1c008ba2:	8082                	ret
1c008ba4:	88ae                	mv	a7,a1
1c008ba6:	882a                	mv	a6,a0
1c008ba8:	8332                	mv	t1,a2
1c008baa:	b7a1                	j	1c008af2 <memcpy+0x90>
1c008bac:	8082                	ret

1c008bae <memmove>:
1c008bae:	40b507b3          	sub	a5,a0,a1
1c008bb2:	10c7e463          	bltu	a5,a2,1c008cba <memmove+0x10c>
1c008bb6:	12060b63          	beqz	a2,1c008cec <memmove+0x13e>
1c008bba:	00458793          	addi	a5,a1,4
1c008bbe:	00450693          	addi	a3,a0,4
1c008bc2:	00f537b3          	sltu	a5,a0,a5
1c008bc6:	00d5b6b3          	sltu	a3,a1,a3
1c008bca:	0017c793          	xori	a5,a5,1
1c008bce:	0016c693          	xori	a3,a3,1
1c008bd2:	873e                	mv	a4,a5
1c008bd4:	87b6                	mv	a5,a3
1c008bd6:	8fd9                	or	a5,a5,a4
1c008bd8:	0ff7f793          	andi	a5,a5,255
1c008bdc:	cfed                	beqz	a5,1c008cd6 <memmove+0x128>
1c008bde:	00863793          	sltiu	a5,a2,8
1c008be2:	0017c793          	xori	a5,a5,1
1c008be6:	0ff7f793          	andi	a5,a5,255
1c008bea:	c7f5                	beqz	a5,1c008cd6 <memmove+0x128>
1c008bec:	40b007b3          	neg	a5,a1
1c008bf0:	8b8d                	andi	a5,a5,3
1c008bf2:	fff60313          	addi	t1,a2,-1
1c008bf6:	cfe5                	beqz	a5,1c008cee <memmove+0x140>
1c008bf8:	0005c683          	lbu	a3,0(a1)
1c008bfc:	4705                	li	a4,1
1c008bfe:	00d50023          	sb	a3,0(a0)
1c008c02:	00150813          	addi	a6,a0,1
1c008c06:	00158893          	addi	a7,a1,1
1c008c0a:	02e78963          	beq	a5,a4,1c008c3c <memmove+0x8e>
1c008c0e:	0015c683          	lbu	a3,1(a1)
1c008c12:	470d                	li	a4,3
1c008c14:	00d500a3          	sb	a3,1(a0)
1c008c18:	00250813          	addi	a6,a0,2
1c008c1c:	00258893          	addi	a7,a1,2
1c008c20:	ffe60313          	addi	t1,a2,-2
1c008c24:	00e79c63          	bne	a5,a4,1c008c3c <memmove+0x8e>
1c008c28:	0025c703          	lbu	a4,2(a1)
1c008c2c:	00350813          	addi	a6,a0,3
1c008c30:	00e50123          	sb	a4,2(a0)
1c008c34:	00358893          	addi	a7,a1,3
1c008c38:	ffd60313          	addi	t1,a2,-3
1c008c3c:	8e1d                	sub	a2,a2,a5
1c008c3e:	95be                	add	a1,a1,a5
1c008c40:	00265e13          	srli	t3,a2,0x2
1c008c44:	97aa                	add	a5,a5,a0
1c008c46:	4701                	li	a4,0
1c008c48:	4194                	lw	a3,0(a1)
1c008c4a:	0705                	addi	a4,a4,1
1c008c4c:	c394                	sw	a3,0(a5)
1c008c4e:	0591                	addi	a1,a1,4
1c008c50:	0791                	addi	a5,a5,4
1c008c52:	ffc76be3          	bltu	a4,t3,1c008c48 <memmove+0x9a>
1c008c56:	ffc67593          	andi	a1,a2,-4
1c008c5a:	40b306b3          	sub	a3,t1,a1
1c008c5e:	00b807b3          	add	a5,a6,a1
1c008c62:	00b88733          	add	a4,a7,a1
1c008c66:	08b60263          	beq	a2,a1,1c008cea <memmove+0x13c>
1c008c6a:	00074583          	lbu	a1,0(a4)
1c008c6e:	fff68613          	addi	a2,a3,-1
1c008c72:	00b78023          	sb	a1,0(a5)
1c008c76:	ca35                	beqz	a2,1c008cea <memmove+0x13c>
1c008c78:	00174583          	lbu	a1,1(a4)
1c008c7c:	ffe68613          	addi	a2,a3,-2
1c008c80:	00b780a3          	sb	a1,1(a5)
1c008c84:	c23d                	beqz	a2,1c008cea <memmove+0x13c>
1c008c86:	00274583          	lbu	a1,2(a4)
1c008c8a:	ffd68613          	addi	a2,a3,-3
1c008c8e:	00b78123          	sb	a1,2(a5)
1c008c92:	ce21                	beqz	a2,1c008cea <memmove+0x13c>
1c008c94:	00374583          	lbu	a1,3(a4)
1c008c98:	ffc68613          	addi	a2,a3,-4
1c008c9c:	00b781a3          	sb	a1,3(a5)
1c008ca0:	c629                	beqz	a2,1c008cea <memmove+0x13c>
1c008ca2:	00474583          	lbu	a1,4(a4)
1c008ca6:	4615                	li	a2,5
1c008ca8:	00b78223          	sb	a1,4(a5)
1c008cac:	02c68f63          	beq	a3,a2,1c008cea <memmove+0x13c>
1c008cb0:	00574703          	lbu	a4,5(a4)
1c008cb4:	00e782a3          	sb	a4,5(a5)
1c008cb8:	8082                	ret
1c008cba:	167d                	addi	a2,a2,-1
1c008cbc:	00c587b3          	add	a5,a1,a2
1c008cc0:	962a                	add	a2,a2,a0
1c008cc2:	15fd                	addi	a1,a1,-1
1c008cc4:	0007c703          	lbu	a4,0(a5)
1c008cc8:	17fd                	addi	a5,a5,-1
1c008cca:	00e60023          	sb	a4,0(a2)
1c008cce:	167d                	addi	a2,a2,-1
1c008cd0:	feb79ae3          	bne	a5,a1,1c008cc4 <memmove+0x116>
1c008cd4:	8082                	ret
1c008cd6:	962a                	add	a2,a2,a0
1c008cd8:	87aa                	mv	a5,a0
1c008cda:	0005c703          	lbu	a4,0(a1)
1c008cde:	0785                	addi	a5,a5,1
1c008ce0:	fee78fa3          	sb	a4,-1(a5)
1c008ce4:	0585                	addi	a1,a1,1
1c008ce6:	fec79ae3          	bne	a5,a2,1c008cda <memmove+0x12c>
1c008cea:	8082                	ret
1c008cec:	8082                	ret
1c008cee:	88ae                	mv	a7,a1
1c008cf0:	882a                	mv	a6,a0
1c008cf2:	8332                	mv	t1,a2
1c008cf4:	b7a1                	j	1c008c3c <memmove+0x8e>

1c008cf6 <strchr>:
1c008cf6:	00054783          	lbu	a5,0(a0)
1c008cfa:	0ff5f593          	andi	a1,a1,255
1c008cfe:	00b78863          	beq	a5,a1,1c008d0e <strchr+0x18>
1c008d02:	c799                	beqz	a5,1c008d10 <strchr+0x1a>
1c008d04:	0505                	addi	a0,a0,1
1c008d06:	00054783          	lbu	a5,0(a0)
1c008d0a:	feb79ce3          	bne	a5,a1,1c008d02 <strchr+0xc>
1c008d0e:	8082                	ret
1c008d10:	0015b593          	seqz	a1,a1
1c008d14:	40b005b3          	neg	a1,a1
1c008d18:	8d6d                	and	a0,a0,a1
1c008d1a:	8082                	ret

1c008d1c <puts>:
1c008d1c:	00054783          	lbu	a5,0(a0)
1c008d20:	c78d                	beqz	a5,1c008d4a <puts+0x2e>
1c008d22:	f14026f3          	csrr	a3,mhartid
1c008d26:	00369713          	slli	a4,a3,0x3
1c008d2a:	1a10f637          	lui	a2,0x1a10f
1c008d2e:	0ff77713          	andi	a4,a4,255
1c008d32:	9732                	add	a4,a4,a2
1c008d34:	6609                	lui	a2,0x2
1c008d36:	068a                	slli	a3,a3,0x2
1c008d38:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008d3c:	8ef1                	and	a3,a3,a2
1c008d3e:	9736                	add	a4,a4,a3
1c008d40:	c31c                	sw	a5,0(a4)
1c008d42:	0505                	addi	a0,a0,1
1c008d44:	00054783          	lbu	a5,0(a0)
1c008d48:	ffe5                	bnez	a5,1c008d40 <puts+0x24>
1c008d4a:	f1402773          	csrr	a4,mhartid
1c008d4e:	00371793          	slli	a5,a4,0x3
1c008d52:	1a10f6b7          	lui	a3,0x1a10f
1c008d56:	0ff7f793          	andi	a5,a5,255
1c008d5a:	97b6                	add	a5,a5,a3
1c008d5c:	6689                	lui	a3,0x2
1c008d5e:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008d62:	070a                	slli	a4,a4,0x2
1c008d64:	8f75                	and	a4,a4,a3
1c008d66:	97ba                	add	a5,a5,a4
1c008d68:	4729                	li	a4,10
1c008d6a:	c398                	sw	a4,0(a5)
1c008d6c:	4501                	li	a0,0
1c008d6e:	8082                	ret

1c008d70 <pos_libc_fputc_locked>:
1c008d70:	6689                	lui	a3,0x2
1c008d72:	f14027f3          	csrr	a5,mhartid
1c008d76:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008d7a:	00379713          	slli	a4,a5,0x3
1c008d7e:	078a                	slli	a5,a5,0x2
1c008d80:	8ff5                	and	a5,a5,a3
1c008d82:	0ff77713          	andi	a4,a4,255
1c008d86:	1a10f6b7          	lui	a3,0x1a10f
1c008d8a:	9736                	add	a4,a4,a3
1c008d8c:	0ff57513          	andi	a0,a0,255
1c008d90:	97ba                	add	a5,a5,a4
1c008d92:	c388                	sw	a0,0(a5)
1c008d94:	4501                	li	a0,0
1c008d96:	8082                	ret

1c008d98 <pos_libc_prf_locked>:
1c008d98:	a0b1                	j	1c008de4 <pos_libc_prf>

1c008d9a <exit>:
1c008d9a:	800007b7          	lui	a5,0x80000
1c008d9e:	1141                	addi	sp,sp,-16
1c008da0:	8d5d                	or	a0,a0,a5
1c008da2:	c606                	sw	ra,12(sp)
1c008da4:	1a1047b7          	lui	a5,0x1a104
1c008da8:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008dac:	3941                	jal	1c008a3c <pos_wait_forever>

1c008dae <pos_io_start>:
1c008dae:	4501                	li	a0,0
1c008db0:	8082                	ret

1c008db2 <pos_io_stop>:
1c008db2:	4501                	li	a0,0
1c008db4:	8082                	ret

1c008db6 <printf>:
1c008db6:	7139                	addi	sp,sp,-64
1c008db8:	02410313          	addi	t1,sp,36
1c008dbc:	d432                	sw	a2,40(sp)
1c008dbe:	862a                	mv	a2,a0
1c008dc0:	1c009537          	lui	a0,0x1c009
1c008dc4:	d22e                	sw	a1,36(sp)
1c008dc6:	d636                	sw	a3,44(sp)
1c008dc8:	4589                	li	a1,2
1c008dca:	869a                	mv	a3,t1
1c008dcc:	d7050513          	addi	a0,a0,-656 # 1c008d70 <pos_libc_fputc_locked>
1c008dd0:	ce06                	sw	ra,28(sp)
1c008dd2:	d83a                	sw	a4,48(sp)
1c008dd4:	da3e                	sw	a5,52(sp)
1c008dd6:	dc42                	sw	a6,56(sp)
1c008dd8:	de46                	sw	a7,60(sp)
1c008dda:	c61a                	sw	t1,12(sp)
1c008ddc:	3f75                	jal	1c008d98 <pos_libc_prf_locked>
1c008dde:	40f2                	lw	ra,28(sp)
1c008de0:	6121                	addi	sp,sp,64
1c008de2:	8082                	ret

1c008de4 <pos_libc_prf>:
1c008de4:	7169                	addi	sp,sp,-304
1c008de6:	12812423          	sw	s0,296(sp)
1c008dea:	12912223          	sw	s1,292(sp)
1c008dee:	11612823          	sw	s6,272(sp)
1c008df2:	11712623          	sw	s7,268(sp)
1c008df6:	11812423          	sw	s8,264(sp)
1c008dfa:	11912223          	sw	s9,260(sp)
1c008dfe:	11a12023          	sw	s10,256(sp)
1c008e02:	12112623          	sw	ra,300(sp)
1c008e06:	13212023          	sw	s2,288(sp)
1c008e0a:	11312e23          	sw	s3,284(sp)
1c008e0e:	11412c23          	sw	s4,280(sp)
1c008e12:	11512a23          	sw	s5,276(sp)
1c008e16:	dfee                	sw	s11,252(sp)
1c008e18:	8b2a                	mv	s6,a0
1c008e1a:	8d2e                	mv	s10,a1
1c008e1c:	84b2                	mv	s1,a2
1c008e1e:	8c36                	mv	s8,a3
1c008e20:	4401                	li	s0,0
1c008e22:	1c000bb7          	lui	s7,0x1c000
1c008e26:	02410c93          	addi	s9,sp,36
1c008e2a:	0004c503          	lbu	a0,0(s1)
1c008e2e:	0485                	addi	s1,s1,1
1c008e30:	cd19                	beqz	a0,1c008e4e <pos_libc_prf+0x6a>
1c008e32:	02500793          	li	a5,37
1c008e36:	04f50863          	beq	a0,a5,1c008e86 <pos_libc_prf+0xa2>
1c008e3a:	85ea                	mv	a1,s10
1c008e3c:	9b02                	jalr	s6
1c008e3e:	57fd                	li	a5,-1
1c008e40:	24f50863          	beq	a0,a5,1c009090 <pos_libc_prf+0x2ac>
1c008e44:	0405                	addi	s0,s0,1
1c008e46:	0004c503          	lbu	a0,0(s1)
1c008e4a:	0485                	addi	s1,s1,1
1c008e4c:	f17d                	bnez	a0,1c008e32 <pos_libc_prf+0x4e>
1c008e4e:	8522                	mv	a0,s0
1c008e50:	12c12083          	lw	ra,300(sp)
1c008e54:	12812403          	lw	s0,296(sp)
1c008e58:	12412483          	lw	s1,292(sp)
1c008e5c:	12012903          	lw	s2,288(sp)
1c008e60:	11c12983          	lw	s3,284(sp)
1c008e64:	11812a03          	lw	s4,280(sp)
1c008e68:	11412a83          	lw	s5,276(sp)
1c008e6c:	11012b03          	lw	s6,272(sp)
1c008e70:	10c12b83          	lw	s7,268(sp)
1c008e74:	10812c03          	lw	s8,264(sp)
1c008e78:	10412c83          	lw	s9,260(sp)
1c008e7c:	10012d03          	lw	s10,256(sp)
1c008e80:	5dfe                	lw	s11,252(sp)
1c008e82:	6155                	addi	sp,sp,304
1c008e84:	8082                	ret
1c008e86:	00148a93          	addi	s5,s1,1
1c008e8a:	fffacd83          	lbu	s11,-1(s5) # ff00ffff <pulp__FC+0xff010000>
1c008e8e:	02000713          	li	a4,32
1c008e92:	218b8513          	addi	a0,s7,536 # 1c000218 <__DTOR_END__+0x1fc>
1c008e96:	85ee                	mv	a1,s11
1c008e98:	c83a                	sw	a4,16(sp)
1c008e9a:	cc02                	sw	zero,24(sp)
1c008e9c:	ca02                	sw	zero,20(sp)
1c008e9e:	ce02                	sw	zero,28(sp)
1c008ea0:	c602                	sw	zero,12(sp)
1c008ea2:	02300913          	li	s2,35
1c008ea6:	02d00a13          	li	s4,45
1c008eaa:	89d6                	mv	s3,s5
1c008eac:	35a9                	jal	1c008cf6 <strchr>
1c008eae:	c915                	beqz	a0,1c008ee2 <pos_libc_prf+0xfe>
1c008eb0:	212d8963          	beq	s11,s2,1c0090c2 <pos_libc_prf+0x2de>
1c008eb4:	1fb97063          	bleu	s11,s2,1c009094 <pos_libc_prf+0x2b0>
1c008eb8:	214d8163          	beq	s11,s4,1c0090ba <pos_libc_prf+0x2d6>
1c008ebc:	03000613          	li	a2,48
1c008ec0:	1ecd8863          	beq	s11,a2,1c0090b0 <pos_libc_prf+0x2cc>
1c008ec4:	02b00693          	li	a3,43
1c008ec8:	1edd8063          	beq	s11,a3,1c0090a8 <pos_libc_prf+0x2c4>
1c008ecc:	84d6                	mv	s1,s5
1c008ece:	00148a93          	addi	s5,s1,1
1c008ed2:	fffacd83          	lbu	s11,-1(s5)
1c008ed6:	218b8513          	addi	a0,s7,536
1c008eda:	85ee                	mv	a1,s11
1c008edc:	89d6                	mv	s3,s5
1c008ede:	3d21                	jal	1c008cf6 <strchr>
1c008ee0:	f961                	bnez	a0,1c008eb0 <pos_libc_prf+0xcc>
1c008ee2:	02a00613          	li	a2,42
1c008ee6:	20cd8463          	beq	s11,a2,1c0090ee <pos_libc_prf+0x30a>
1c008eea:	fd0d8613          	addi	a2,s11,-48
1c008eee:	45a5                	li	a1,9
1c008ef0:	4901                	li	s2,0
1c008ef2:	1cc5fe63          	bleu	a2,a1,1c0090ce <pos_libc_prf+0x2ea>
1c008ef6:	02e00713          	li	a4,46
1c008efa:	5a7d                	li	s4,-1
1c008efc:	24ed8463          	beq	s11,a4,1c009144 <pos_libc_prf+0x360>
1c008f00:	1c000837          	lui	a6,0x1c000
1c008f04:	85ee                	mv	a1,s11
1c008f06:	22080513          	addi	a0,a6,544 # 1c000220 <__DTOR_END__+0x204>
1c008f0a:	33f5                	jal	1c008cf6 <strchr>
1c008f0c:	84ce                	mv	s1,s3
1c008f0e:	c509                	beqz	a0,1c008f18 <pos_libc_prf+0x134>
1c008f10:	0009cd83          	lbu	s11,0(s3)
1c008f14:	00198493          	addi	s1,s3,1
1c008f18:	06700713          	li	a4,103
1c008f1c:	1fb75963          	ble	s11,a4,1c00910e <pos_libc_prf+0x32a>
1c008f20:	07000713          	li	a4,112
1c008f24:	12ed89e3          	beq	s11,a4,1c009856 <pos_libc_prf+0xa72>
1c008f28:	25b75263          	ble	s11,a4,1c00916c <pos_libc_prf+0x388>
1c008f2c:	07500713          	li	a4,117
1c008f30:	0aed89e3          	beq	s11,a4,1c0097e2 <pos_libc_prf+0x9fe>
1c008f34:	07800713          	li	a4,120
1c008f38:	72ed8b63          	beq	s11,a4,1c00966e <pos_libc_prf+0x88a>
1c008f3c:	07300713          	li	a4,115
1c008f40:	1aed9ce3          	bne	s11,a4,1c0098f8 <pos_libc_prf+0xb14>
1c008f44:	000c2583          	lw	a1,0(s8)
1c008f48:	004c0a93          	addi	s5,s8,4
1c008f4c:	87ae                	mv	a5,a1
1c008f4e:	4981                	li	s3,0
1c008f50:	0c800693          	li	a3,200
1c008f54:	a021                	j	1c008f5c <pos_libc_prf+0x178>
1c008f56:	0985                	addi	s3,s3,1
1c008f58:	5ad98be3          	beq	s3,a3,1c009d0e <pos_libc_prf+0xf2a>
1c008f5c:	0007c703          	lbu	a4,0(a5)
1c008f60:	0785                	addi	a5,a5,1
1c008f62:	fb75                	bnez	a4,1c008f56 <pos_libc_prf+0x172>
1c008f64:	000a4563          	bltz	s4,1c008f6e <pos_libc_prf+0x18a>
1c008f68:	013a5363          	ble	s3,s4,1c008f6e <pos_libc_prf+0x18a>
1c008f6c:	89d2                	mv	s3,s4
1c008f6e:	8c56                	mv	s8,s5
1c008f70:	ea098de3          	beqz	s3,1c008e2a <pos_libc_prf+0x46>
1c008f74:	864e                	mv	a2,s3
1c008f76:	8566                	mv	a0,s9
1c008f78:	34ed                	jal	1c008a62 <memcpy>
1c008f7a:	8c56                	mv	s8,s5
1c008f7c:	0f29d963          	ble	s2,s3,1c00906e <pos_libc_prf+0x28a>
1c008f80:	c602                	sw	zero,12(sp)
1c008f82:	48f2                	lw	a7,28(sp)
1c008f84:	1a0885e3          	beqz	a7,1c00992e <pos_libc_prf+0xb4a>
1c008f88:	013c87b3          	add	a5,s9,s3
1c008f8c:	40f007b3          	neg	a5,a5
1c008f90:	8b8d                	andi	a5,a5,3
1c008f92:	00378693          	addi	a3,a5,3
1c008f96:	4715                	li	a4,5
1c008f98:	413905b3          	sub	a1,s2,s3
1c008f9c:	00e6f363          	bleu	a4,a3,1c008fa2 <pos_libc_prf+0x1be>
1c008fa0:	4695                	li	a3,5
1c008fa2:	fff90713          	addi	a4,s2,-1
1c008fa6:	41370733          	sub	a4,a4,s3
1c008faa:	06d76663          	bltu	a4,a3,1c009016 <pos_libc_prf+0x232>
1c008fae:	86ce                	mv	a3,s3
1c008fb0:	cb9d                	beqz	a5,1c008fe6 <pos_libc_prf+0x202>
1c008fb2:	0f010813          	addi	a6,sp,240
1c008fb6:	013806b3          	add	a3,a6,s3
1c008fba:	02000713          	li	a4,32
1c008fbe:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c008fc2:	4605                	li	a2,1
1c008fc4:	00198693          	addi	a3,s3,1
1c008fc8:	00c78f63          	beq	a5,a2,1c008fe6 <pos_libc_prf+0x202>
1c008fcc:	96c2                	add	a3,a3,a6
1c008fce:	f2e68a23          	sb	a4,-204(a3)
1c008fd2:	460d                	li	a2,3
1c008fd4:	00298693          	addi	a3,s3,2
1c008fd8:	00c79763          	bne	a5,a2,1c008fe6 <pos_libc_prf+0x202>
1c008fdc:	96c2                	add	a3,a3,a6
1c008fde:	f2e68a23          	sb	a4,-204(a3)
1c008fe2:	00398693          	addi	a3,s3,3
1c008fe6:	8d9d                	sub	a1,a1,a5
1c008fe8:	97ce                	add	a5,a5,s3
1c008fea:	0025d613          	srli	a2,a1,0x2
1c008fee:	97e6                	add	a5,a5,s9
1c008ff0:	4701                	li	a4,0
1c008ff2:	1c0008b7          	lui	a7,0x1c000
1c008ff6:	21488893          	addi	a7,a7,532 # 1c000214 <__DTOR_END__+0x1f8>
1c008ffa:	0008a883          	lw	a7,0(a7)
1c008ffe:	0705                	addi	a4,a4,1
1c009000:	0117a023          	sw	a7,0(a5)
1c009004:	0791                	addi	a5,a5,4
1c009006:	fec766e3          	bltu	a4,a2,1c008ff2 <pos_libc_prf+0x20e>
1c00900a:	ffc5f793          	andi	a5,a1,-4
1c00900e:	00d789b3          	add	s3,a5,a3
1c009012:	04b78b63          	beq	a5,a1,1c009068 <pos_libc_prf+0x284>
1c009016:	1988                	addi	a0,sp,240
1c009018:	01350733          	add	a4,a0,s3
1c00901c:	02000793          	li	a5,32
1c009020:	f2f70a23          	sb	a5,-204(a4)
1c009024:	00198713          	addi	a4,s3,1
1c009028:	05275063          	ble	s2,a4,1c009068 <pos_libc_prf+0x284>
1c00902c:	972a                	add	a4,a4,a0
1c00902e:	f2f70a23          	sb	a5,-204(a4)
1c009032:	00298713          	addi	a4,s3,2
1c009036:	03275963          	ble	s2,a4,1c009068 <pos_libc_prf+0x284>
1c00903a:	972a                	add	a4,a4,a0
1c00903c:	f2f70a23          	sb	a5,-204(a4)
1c009040:	00398713          	addi	a4,s3,3
1c009044:	03275263          	ble	s2,a4,1c009068 <pos_libc_prf+0x284>
1c009048:	972a                	add	a4,a4,a0
1c00904a:	f2f70a23          	sb	a5,-204(a4)
1c00904e:	00498713          	addi	a4,s3,4
1c009052:	01275b63          	ble	s2,a4,1c009068 <pos_libc_prf+0x284>
1c009056:	972a                	add	a4,a4,a0
1c009058:	f2f70a23          	sb	a5,-204(a4)
1c00905c:	0995                	addi	s3,s3,5
1c00905e:	0129d563          	ble	s2,s3,1c009068 <pos_libc_prf+0x284>
1c009062:	99aa                	add	s3,s3,a0
1c009064:	f2f98a23          	sb	a5,-204(s3)
1c009068:	89ca                	mv	s3,s2
1c00906a:	dc0980e3          	beqz	s3,1c008e2a <pos_libc_prf+0x46>
1c00906e:	8966                	mv	s2,s9
1c009070:	5a7d                	li	s4,-1
1c009072:	41940ab3          	sub	s5,s0,s9
1c009076:	a029                	j	1c009080 <pos_libc_prf+0x29c>
1c009078:	01590433          	add	s0,s2,s5
1c00907c:	da0987e3          	beqz	s3,1c008e2a <pos_libc_prf+0x46>
1c009080:	00094503          	lbu	a0,0(s2)
1c009084:	85ea                	mv	a1,s10
1c009086:	9b02                	jalr	s6
1c009088:	0905                	addi	s2,s2,1
1c00908a:	19fd                	addi	s3,s3,-1
1c00908c:	ff4516e3          	bne	a0,s4,1c009078 <pos_libc_prf+0x294>
1c009090:	547d                	li	s0,-1
1c009092:	bb75                	j	1c008e4e <pos_libc_prf+0x6a>
1c009094:	da0d8de3          	beqz	s11,1c008e4e <pos_libc_prf+0x6a>
1c009098:	02000513          	li	a0,32
1c00909c:	e2ad98e3          	bne	s11,a0,1c008ecc <pos_libc_prf+0xe8>
1c0090a0:	4785                	li	a5,1
1c0090a2:	cc3e                	sw	a5,24(sp)
1c0090a4:	84d6                	mv	s1,s5
1c0090a6:	b525                	j	1c008ece <pos_libc_prf+0xea>
1c0090a8:	4705                	li	a4,1
1c0090aa:	ca3a                	sw	a4,20(sp)
1c0090ac:	84d6                	mv	s1,s5
1c0090ae:	b505                	j	1c008ece <pos_libc_prf+0xea>
1c0090b0:	03000893          	li	a7,48
1c0090b4:	c846                	sw	a7,16(sp)
1c0090b6:	84d6                	mv	s1,s5
1c0090b8:	bd19                	j	1c008ece <pos_libc_prf+0xea>
1c0090ba:	4685                	li	a3,1
1c0090bc:	ce36                	sw	a3,28(sp)
1c0090be:	84d6                	mv	s1,s5
1c0090c0:	b539                	j	1c008ece <pos_libc_prf+0xea>
1c0090c2:	4805                	li	a6,1
1c0090c4:	c642                	sw	a6,12(sp)
1c0090c6:	84d6                	mv	s1,s5
1c0090c8:	b519                	j	1c008ece <pos_libc_prf+0xea>
1c0090ca:	84d6                	mv	s1,s5
1c0090cc:	0a85                	addi	s5,s5,1
1c0090ce:	00291793          	slli	a5,s2,0x2
1c0090d2:	97ca                	add	a5,a5,s2
1c0090d4:	0786                	slli	a5,a5,0x1
1c0090d6:	97ee                	add	a5,a5,s11
1c0090d8:	000acd83          	lbu	s11,0(s5)
1c0090dc:	fd078913          	addi	s2,a5,-48
1c0090e0:	fd0d8793          	addi	a5,s11,-48
1c0090e4:	fef5f3e3          	bleu	a5,a1,1c0090ca <pos_libc_prf+0x2e6>
1c0090e8:	00248993          	addi	s3,s1,2
1c0090ec:	a811                	j	1c009100 <pos_libc_prf+0x31c>
1c0090ee:	000c2903          	lw	s2,0(s8)
1c0090f2:	0c11                	addi	s8,s8,4
1c0090f4:	14094663          	bltz	s2,1c009240 <pos_libc_prf+0x45c>
1c0090f8:	000acd83          	lbu	s11,0(s5)
1c0090fc:	00248993          	addi	s3,s1,2
1c009100:	0c800713          	li	a4,200
1c009104:	df2779e3          	bleu	s2,a4,1c008ef6 <pos_libc_prf+0x112>
1c009108:	0c800913          	li	s2,200
1c00910c:	b3ed                	j	1c008ef6 <pos_libc_prf+0x112>
1c00910e:	06500713          	li	a4,101
1c009112:	12eddc63          	ble	a4,s11,1c00924a <pos_libc_prf+0x466>
1c009116:	04700713          	li	a4,71
1c00911a:	55b74063          	blt	a4,s11,1c00965a <pos_libc_prf+0x876>
1c00911e:	04500713          	li	a4,69
1c009122:	12edd463          	ble	a4,s11,1c00924a <pos_libc_prf+0x466>
1c009126:	d20d84e3          	beqz	s11,1c008e4e <pos_libc_prf+0x6a>
1c00912a:	02500713          	li	a4,37
1c00912e:	7ced9563          	bne	s11,a4,1c0098f8 <pos_libc_prf+0xb14>
1c009132:	85ea                	mv	a1,s10
1c009134:	02500513          	li	a0,37
1c009138:	9b02                	jalr	s6
1c00913a:	57fd                	li	a5,-1
1c00913c:	f4f50ae3          	beq	a0,a5,1c009090 <pos_libc_prf+0x2ac>
1c009140:	0405                	addi	s0,s0,1
1c009142:	b311                	j	1c008e46 <pos_libc_prf+0x62>
1c009144:	0009c783          	lbu	a5,0(s3)
1c009148:	02a00713          	li	a4,42
1c00914c:	00198693          	addi	a3,s3,1
1c009150:	0ae79d63          	bne	a5,a4,1c00920a <pos_libc_prf+0x426>
1c009154:	000c2a03          	lw	s4,0(s8)
1c009158:	0019cd83          	lbu	s11,1(s3)
1c00915c:	0c11                	addi	s8,s8,4
1c00915e:	0989                	addi	s3,s3,2
1c009160:	0c800713          	li	a4,200
1c009164:	d9475ee3          	ble	s4,a4,1c008f00 <pos_libc_prf+0x11c>
1c009168:	5a7d                	li	s4,-1
1c00916a:	bb59                	j	1c008f00 <pos_libc_prf+0x11c>
1c00916c:	06e00713          	li	a4,110
1c009170:	76ed8e63          	beq	s11,a4,1c0098ec <pos_libc_prf+0xb08>
1c009174:	5bb75663          	ble	s11,a4,1c009720 <pos_libc_prf+0x93c>
1c009178:	4732                	lw	a4,12(sp)
1c00917a:	004c0513          	addi	a0,s8,4
1c00917e:	000c2683          	lw	a3,0(s8)
1c009182:	1c070de3          	beqz	a4,1c009b5c <pos_libc_prf+0xd78>
1c009186:	03000793          	li	a5,48
1c00918a:	02f10223          	sb	a5,36(sp)
1c00918e:	16068de3          	beqz	a3,1c009b08 <pos_libc_prf+0xd24>
1c009192:	02510593          	addi	a1,sp,37
1c009196:	872e                	mv	a4,a1
1c009198:	87ba                	mv	a5,a4
1c00919a:	0076f613          	andi	a2,a3,7
1c00919e:	0785                	addi	a5,a5,1
1c0091a0:	03060613          	addi	a2,a2,48
1c0091a4:	828d                	srli	a3,a3,0x3
1c0091a6:	fec78fa3          	sb	a2,-1(a5)
1c0091aa:	fae5                	bnez	a3,1c00919a <pos_libc_prf+0x3b6>
1c0091ac:	40b789b3          	sub	s3,a5,a1
1c0091b0:	0149db63          	ble	s4,s3,1c0091c6 <pos_libc_prf+0x3e2>
1c0091b4:	03000693          	li	a3,48
1c0091b8:	0785                	addi	a5,a5,1
1c0091ba:	fed78fa3          	sb	a3,-1(a5)
1c0091be:	40b789b3          	sub	s3,a5,a1
1c0091c2:	ff49cbe3          	blt	s3,s4,1c0091b8 <pos_libc_prf+0x3d4>
1c0091c6:	00078023          	sb	zero,0(a5)
1c0091ca:	17fd                	addi	a5,a5,-1
1c0091cc:	00f77e63          	bleu	a5,a4,1c0091e8 <pos_libc_prf+0x404>
1c0091d0:	00074603          	lbu	a2,0(a4)
1c0091d4:	0007c683          	lbu	a3,0(a5)
1c0091d8:	00c78023          	sb	a2,0(a5)
1c0091dc:	00d70023          	sb	a3,0(a4)
1c0091e0:	17fd                	addi	a5,a5,-1
1c0091e2:	0705                	addi	a4,a4,1
1c0091e4:	fef766e3          	bltu	a4,a5,1c0091d0 <pos_libc_prf+0x3ec>
1c0091e8:	4832                	lw	a6,12(sp)
1c0091ea:	57fd                	li	a5,-1
1c0091ec:	99c2                	add	s3,s3,a6
1c0091ee:	22fa0ee3          	beq	s4,a5,1c009c2a <pos_libc_prf+0xe46>
1c0091f2:	0c800793          	li	a5,200
1c0091f6:	e937cde3          	blt	a5,s3,1c009090 <pos_libc_prf+0x2ac>
1c0091fa:	02000693          	li	a3,32
1c0091fe:	8c2a                	mv	s8,a0
1c009200:	c602                	sw	zero,12(sp)
1c009202:	c836                	sw	a3,16(sp)
1c009204:	d729cfe3          	blt	s3,s2,1c008f82 <pos_libc_prf+0x19e>
1c009208:	b58d                	j	1c00906a <pos_libc_prf+0x286>
1c00920a:	fd078593          	addi	a1,a5,-48
1c00920e:	4725                	li	a4,9
1c009210:	8dbe                	mv	s11,a5
1c009212:	4a01                	li	s4,0
1c009214:	4625                	li	a2,9
1c009216:	00b77663          	bleu	a1,a4,1c009222 <pos_libc_prf+0x43e>
1c00921a:	1070006f          	j	1c009b20 <pos_libc_prf+0xd3c>
1c00921e:	89b6                	mv	s3,a3
1c009220:	0685                	addi	a3,a3,1
1c009222:	002a1793          	slli	a5,s4,0x2
1c009226:	97d2                	add	a5,a5,s4
1c009228:	0786                	slli	a5,a5,0x1
1c00922a:	97ee                	add	a5,a5,s11
1c00922c:	0006cd83          	lbu	s11,0(a3)
1c009230:	fd078a13          	addi	s4,a5,-48
1c009234:	fd0d8793          	addi	a5,s11,-48
1c009238:	fef673e3          	bleu	a5,a2,1c00921e <pos_libc_prf+0x43a>
1c00923c:	0989                	addi	s3,s3,2
1c00923e:	b70d                	j	1c009160 <pos_libc_prf+0x37c>
1c009240:	4785                	li	a5,1
1c009242:	41200933          	neg	s2,s2
1c009246:	ce3e                	sw	a5,28(sp)
1c009248:	bd45                	j	1c0090f8 <pos_libc_prf+0x314>
1c00924a:	0c1d                	addi	s8,s8,7
1c00924c:	ff8c7c13          	andi	s8,s8,-8
1c009250:	000c2703          	lw	a4,0(s8)
1c009254:	004c2803          	lw	a6,4(s8)
1c009258:	01575693          	srli	a3,a4,0x15
1c00925c:	00b81613          	slli	a2,a6,0xb
1c009260:	8e55                	or	a2,a2,a3
1c009262:	01485513          	srli	a0,a6,0x14
1c009266:	00b71693          	slli	a3,a4,0xb
1c00926a:	80000737          	lui	a4,0x80000
1c00926e:	fff74713          	not	a4,a4
1c009272:	7ff57513          	andi	a0,a0,2047
1c009276:	7ff00593          	li	a1,2047
1c00927a:	0c21                	addi	s8,s8,8
1c00927c:	8e79                	and	a2,a2,a4
1c00927e:	0ab504e3          	beq	a0,a1,1c009b26 <pos_libc_prf+0xd42>
1c009282:	04600593          	li	a1,70
1c009286:	00bd9463          	bne	s11,a1,1c00928e <pos_libc_prf+0x4aa>
1c00928a:	06600d93          	li	s11,102
1c00928e:	00d56733          	or	a4,a0,a3
1c009292:	8f51                	or	a4,a4,a2
1c009294:	7e070963          	beqz	a4,1c009a86 <pos_libc_prf+0xca2>
1c009298:	800005b7          	lui	a1,0x80000
1c00929c:	c0250513          	addi	a0,a0,-1022
1c0092a0:	8dd1                	or	a1,a1,a2
1c0092a2:	26084ae3          	bltz	a6,1c009d16 <pos_libc_prf+0xf32>
1c0092a6:	4852                	lw	a6,20(sp)
1c0092a8:	220808e3          	beqz	a6,1c009cd8 <pos_libc_prf+0xef4>
1c0092ac:	02b00713          	li	a4,43
1c0092b0:	02e10223          	sb	a4,36(sp)
1c0092b4:	02510e93          	addi	t4,sp,37
1c0092b8:	5779                	li	a4,-2
1c0092ba:	4301                	li	t1,0
1c0092bc:	06e55763          	ble	a4,a0,1c00932a <pos_libc_prf+0x546>
1c0092c0:	33333837          	lui	a6,0x33333
1c0092c4:	800008b7          	lui	a7,0x80000
1c0092c8:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c0092cc:	fff8c893          	not	a7,a7
1c0092d0:	5e79                	li	t3,-2
1c0092d2:	a011                	j	1c0092d6 <pos_libc_prf+0x4f2>
1c0092d4:	853e                	mv	a0,a5
1c0092d6:	01f59613          	slli	a2,a1,0x1f
1c0092da:	0016d713          	srli	a4,a3,0x1
1c0092de:	0016f793          	andi	a5,a3,1
1c0092e2:	8f51                	or	a4,a4,a2
1c0092e4:	00e786b3          	add	a3,a5,a4
1c0092e8:	00f6b7b3          	sltu	a5,a3,a5
1c0092ec:	8185                	srli	a1,a1,0x1
1c0092ee:	95be                	add	a1,a1,a5
1c0092f0:	00150793          	addi	a5,a0,1
1c0092f4:	feb860e3          	bltu	a6,a1,1c0092d4 <pos_libc_prf+0x4f0>
1c0092f8:	00269613          	slli	a2,a3,0x2
1c0092fc:	01e6df13          	srli	t5,a3,0x1e
1c009300:	00259713          	slli	a4,a1,0x2
1c009304:	96b2                	add	a3,a3,a2
1c009306:	00ef6733          	or	a4,t5,a4
1c00930a:	95ba                	add	a1,a1,a4
1c00930c:	00c6b633          	sltu	a2,a3,a2
1c009310:	95b2                	add	a1,a1,a2
1c009312:	01f6d713          	srli	a4,a3,0x1f
1c009316:	0509                	addi	a0,a0,2
1c009318:	137d                	addi	t1,t1,-1
1c00931a:	01159663          	bne	a1,a7,1c009326 <pos_libc_prf+0x542>
1c00931e:	0686                	slli	a3,a3,0x1
1c009320:	ffe76593          	ori	a1,a4,-2
1c009324:	853e                	mv	a0,a5
1c009326:	fbc548e3          	blt	a0,t3,1c0092d6 <pos_libc_prf+0x4f2>
1c00932a:	06a05563          	blez	a0,1c009394 <pos_libc_prf+0x5b0>
1c00932e:	800008b7          	lui	a7,0x80000
1c009332:	4e15                	li	t3,5
1c009334:	fff8c893          	not	a7,a7
1c009338:	00268613          	addi	a2,a3,2
1c00933c:	00d636b3          	sltu	a3,a2,a3
1c009340:	95b6                	add	a1,a1,a3
1c009342:	03c5d7b3          	divu	a5,a1,t3
1c009346:	00279713          	slli	a4,a5,0x2
1c00934a:	973e                	add	a4,a4,a5
1c00934c:	8d99                	sub	a1,a1,a4
1c00934e:	01d59713          	slli	a4,a1,0x1d
1c009352:	00365593          	srli	a1,a2,0x3
1c009356:	8dd9                	or	a1,a1,a4
1c009358:	03c5d5b3          	divu	a1,a1,t3
1c00935c:	00359693          	slli	a3,a1,0x3
1c009360:	00559713          	slli	a4,a1,0x5
1c009364:	9736                	add	a4,a4,a3
1c009366:	40e60733          	sub	a4,a2,a4
1c00936a:	03c75733          	divu	a4,a4,t3
1c00936e:	81f5                	srli	a1,a1,0x1d
1c009370:	96ba                	add	a3,a3,a4
1c009372:	97ae                	add	a5,a5,a1
1c009374:	00e6b733          	sltu	a4,a3,a4
1c009378:	00f705b3          	add	a1,a4,a5
1c00937c:	157d                	addi	a0,a0,-1
1c00937e:	0305                	addi	t1,t1,1
1c009380:	01f6d793          	srli	a5,a3,0x1f
1c009384:	0586                	slli	a1,a1,0x1
1c009386:	8ddd                	or	a1,a1,a5
1c009388:	0686                	slli	a3,a3,0x1
1c00938a:	157d                	addi	a0,a0,-1
1c00938c:	feb8fae3          	bleu	a1,a7,1c009380 <pos_libc_prf+0x59c>
1c009390:	faa044e3          	bgtz	a0,1c009338 <pos_libc_prf+0x554>
1c009394:	4611                	li	a2,4
1c009396:	01f59713          	slli	a4,a1,0x1f
1c00939a:	0016d793          	srli	a5,a3,0x1
1c00939e:	8fd9                	or	a5,a5,a4
1c0093a0:	8a85                	andi	a3,a3,1
1c0093a2:	00f688b3          	add	a7,a3,a5
1c0093a6:	8185                	srli	a1,a1,0x1
1c0093a8:	00d8b6b3          	sltu	a3,a7,a3
1c0093ac:	00b68733          	add	a4,a3,a1
1c0093b0:	0505                	addi	a0,a0,1
1c0093b2:	86c6                	mv	a3,a7
1c0093b4:	85ba                	mv	a1,a4
1c0093b6:	fec510e3          	bne	a0,a2,1c009396 <pos_libc_prf+0x5b2>
1c0093ba:	06700693          	li	a3,103
1c0093be:	040a48e3          	bltz	s4,1c009c0e <pos_libc_prf+0xe2a>
1c0093c2:	70dd8b63          	beq	s11,a3,1c009ad8 <pos_libc_prf+0xcf4>
1c0093c6:	04700693          	li	a3,71
1c0093ca:	70dd8763          	beq	s11,a3,1c009ad8 <pos_libc_prf+0xcf4>
1c0093ce:	06600693          	li	a3,102
1c0093d2:	08dd89e3          	beq	s11,a3,1c009c64 <pos_libc_prf+0xe80>
1c0093d6:	001a0e13          	addi	t3,s4,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c0093da:	46c1                	li	a3,16
1c0093dc:	01c6d363          	ble	t3,a3,1c0093e2 <pos_libc_prf+0x5fe>
1c0093e0:	4e41                	li	t3,16
1c0093e2:	1e7d                	addi	t3,t3,-1
1c0093e4:	4f81                	li	t6,0
1c0093e6:	4681                	li	a3,0
1c0093e8:	08000637          	lui	a2,0x8000
1c0093ec:	4f15                	li	t5,5
1c0093ee:	52fd                	li	t0,-1
1c0093f0:	00268593          	addi	a1,a3,2
1c0093f4:	00d5b7b3          	sltu	a5,a1,a3
1c0093f8:	97b2                	add	a5,a5,a2
1c0093fa:	03e7d633          	divu	a2,a5,t5
1c0093fe:	00261693          	slli	a3,a2,0x2
1c009402:	96b2                	add	a3,a3,a2
1c009404:	8f95                	sub	a5,a5,a3
1c009406:	07f6                	slli	a5,a5,0x1d
1c009408:	0035d513          	srli	a0,a1,0x3
1c00940c:	8d5d                	or	a0,a0,a5
1c00940e:	03e55533          	divu	a0,a0,t5
1c009412:	00351693          	slli	a3,a0,0x3
1c009416:	00551793          	slli	a5,a0,0x5
1c00941a:	97b6                	add	a5,a5,a3
1c00941c:	40f587b3          	sub	a5,a1,a5
1c009420:	03e7d7b3          	divu	a5,a5,t5
1c009424:	8175                	srli	a0,a0,0x1d
1c009426:	96be                	add	a3,a3,a5
1c009428:	00f6b7b3          	sltu	a5,a3,a5
1c00942c:	962a                	add	a2,a2,a0
1c00942e:	963e                	add	a2,a2,a5
1c009430:	01f61513          	slli	a0,a2,0x1f
1c009434:	0016d793          	srli	a5,a3,0x1
1c009438:	0016f593          	andi	a1,a3,1
1c00943c:	8fc9                	or	a5,a5,a0
1c00943e:	00f586b3          	add	a3,a1,a5
1c009442:	8205                	srli	a2,a2,0x1
1c009444:	00b6b7b3          	sltu	a5,a3,a1
1c009448:	1e7d                	addi	t3,t3,-1
1c00944a:	963e                	add	a2,a2,a5
1c00944c:	fa5e12e3          	bne	t3,t0,1c0093f0 <pos_libc_prf+0x60c>
1c009450:	96c6                	add	a3,a3,a7
1c009452:	963a                	add	a2,a2,a4
1c009454:	0116b8b3          	sltu	a7,a3,a7
1c009458:	9646                	add	a2,a2,a7
1c00945a:	f00005b7          	lui	a1,0xf0000
1c00945e:	8df1                	and	a1,a1,a2
1c009460:	8736                	mv	a4,a3
1c009462:	cdb9                	beqz	a1,1c0094c0 <pos_libc_prf+0x6dc>
1c009464:	0689                	addi	a3,a3,2
1c009466:	00e6b733          	sltu	a4,a3,a4
1c00946a:	963a                	add	a2,a2,a4
1c00946c:	4815                	li	a6,5
1c00946e:	03065533          	divu	a0,a2,a6
1c009472:	00251713          	slli	a4,a0,0x2
1c009476:	972a                	add	a4,a4,a0
1c009478:	8e19                	sub	a2,a2,a4
1c00947a:	01d61713          	slli	a4,a2,0x1d
1c00947e:	0036d593          	srli	a1,a3,0x3
1c009482:	8dd9                	or	a1,a1,a4
1c009484:	0305d5b3          	divu	a1,a1,a6
1c009488:	00359613          	slli	a2,a1,0x3
1c00948c:	00559713          	slli	a4,a1,0x5
1c009490:	9732                	add	a4,a4,a2
1c009492:	40e68733          	sub	a4,a3,a4
1c009496:	03075733          	divu	a4,a4,a6
1c00949a:	81f5                	srli	a1,a1,0x1d
1c00949c:	963a                	add	a2,a2,a4
1c00949e:	00e63733          	sltu	a4,a2,a4
1c0094a2:	95aa                	add	a1,a1,a0
1c0094a4:	00b706b3          	add	a3,a4,a1
1c0094a8:	01f69593          	slli	a1,a3,0x1f
1c0094ac:	00165713          	srli	a4,a2,0x1
1c0094b0:	8f4d                	or	a4,a4,a1
1c0094b2:	8a05                	andi	a2,a2,1
1c0094b4:	9732                	add	a4,a4,a2
1c0094b6:	8285                	srli	a3,a3,0x1
1c0094b8:	00c73633          	sltu	a2,a4,a2
1c0094bc:	9636                	add	a2,a2,a3
1c0094be:	0305                	addi	t1,t1,1
1c0094c0:	001e8993          	addi	s3,t4,1
1c0094c4:	06600693          	li	a3,102
1c0094c8:	85ce                	mv	a1,s3
1c0094ca:	6add8663          	beq	s11,a3,1c009b76 <pos_libc_prf+0xd92>
1c0094ce:	00271693          	slli	a3,a4,0x2
1c0094d2:	01e75593          	srli	a1,a4,0x1e
1c0094d6:	00261513          	slli	a0,a2,0x2
1c0094da:	9736                	add	a4,a4,a3
1c0094dc:	8d4d                	or	a0,a0,a1
1c0094de:	962a                	add	a2,a2,a0
1c0094e0:	00d735b3          	sltu	a1,a4,a3
1c0094e4:	95b2                	add	a1,a1,a2
1c0094e6:	01f75693          	srli	a3,a4,0x1f
1c0094ea:	0586                	slli	a1,a1,0x1
1c0094ec:	8dd5                	or	a1,a1,a3
1c0094ee:	01c5d693          	srli	a3,a1,0x1c
1c0094f2:	03068613          	addi	a2,a3,48
1c0094f6:	00d036b3          	snez	a3,a3
1c0094fa:	10000537          	lui	a0,0x10000
1c0094fe:	40d30333          	sub	t1,t1,a3
1c009502:	46b2                	lw	a3,12(sp)
1c009504:	157d                	addi	a0,a0,-1
1c009506:	00ce8023          	sb	a2,0(t4)
1c00950a:	0706                	slli	a4,a4,0x1
1c00950c:	8de9                	and	a1,a1,a0
1c00950e:	64068b63          	beqz	a3,1c009b64 <pos_libc_prf+0xd80>
1c009512:	02e00693          	li	a3,46
1c009516:	00de80a3          	sb	a3,1(t4)
1c00951a:	002e8513          	addi	a0,t4,2
1c00951e:	020a00e3          	beqz	s4,1c009d3e <pos_libc_prf+0xf5a>
1c009522:	014509b3          	add	s3,a0,s4
1c009526:	48bd                	li	a7,15
1c009528:	03000e13          	li	t3,48
1c00952c:	00271793          	slli	a5,a4,0x2
1c009530:	01e75813          	srli	a6,a4,0x1e
1c009534:	00259693          	slli	a3,a1,0x2
1c009538:	00e78633          	add	a2,a5,a4
1c00953c:	00d866b3          	or	a3,a6,a3
1c009540:	96ae                	add	a3,a3,a1
1c009542:	00f637b3          	sltu	a5,a2,a5
1c009546:	97b6                	add	a5,a5,a3
1c009548:	0786                	slli	a5,a5,0x1
1c00954a:	01f65693          	srli	a3,a2,0x1f
1c00954e:	8fd5                	or	a5,a5,a3
1c009550:	01c7d693          	srli	a3,a5,0x1c
1c009554:	03068693          	addi	a3,a3,48
1c009558:	0505                	addi	a0,a0,1
1c00955a:	3b105663          	blez	a7,1c009906 <pos_libc_prf+0xb22>
1c00955e:	10000837          	lui	a6,0x10000
1c009562:	187d                	addi	a6,a6,-1
1c009564:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c009568:	18fd                	addi	a7,a7,-1
1c00956a:	00161713          	slli	a4,a2,0x1
1c00956e:	0107f5b3          	and	a1,a5,a6
1c009572:	faa99de3          	bne	s3,a0,1c00952c <pos_libc_prf+0x748>
1c009576:	0c0f9263          	bnez	t6,1c00963a <pos_libc_prf+0x856>
1c00957a:	fdfdf713          	andi	a4,s11,-33
1c00957e:	04500693          	li	a3,69
1c009582:	02d71963          	bne	a4,a3,1c0095b4 <pos_libc_prf+0x7d0>
1c009586:	87ee                	mv	a5,s11
1c009588:	00f98023          	sb	a5,0(s3)
1c00958c:	6a034763          	bltz	t1,1c009c3a <pos_libc_prf+0xe56>
1c009590:	02b00793          	li	a5,43
1c009594:	00f980a3          	sb	a5,1(s3)
1c009598:	47a9                	li	a5,10
1c00959a:	02f34733          	div	a4,t1,a5
1c00959e:	02f367b3          	rem	a5,t1,a5
1c0095a2:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c0095a6:	03078793          	addi	a5,a5,48
1c0095aa:	00e98123          	sb	a4,2(s3)
1c0095ae:	00f981a3          	sb	a5,3(s3)
1c0095b2:	0991                	addi	s3,s3,4
1c0095b4:	00098023          	sb	zero,0(s3)
1c0095b8:	419989b3          	sub	s3,s3,s9
1c0095bc:	48d2                	lw	a7,20(sp)
1c0095be:	4662                	lw	a2,24(sp)
1c0095c0:	00c8e8b3          	or	a7,a7,a2
1c0095c4:	c646                	sw	a7,12(sp)
1c0095c6:	34089d63          	bnez	a7,1c009920 <pos_libc_prf+0xb3c>
1c0095ca:	02414703          	lbu	a4,36(sp)
1c0095ce:	02d00793          	li	a5,45
1c0095d2:	34f70763          	beq	a4,a5,1c009920 <pos_libc_prf+0xb3c>
1c0095d6:	0c800793          	li	a5,200
1c0095da:	ab37cbe3          	blt	a5,s3,1c009090 <pos_libc_prf+0x2ac>
1c0095de:	9b29c2e3          	blt	s3,s2,1c008f82 <pos_libc_prf+0x19e>
1c0095e2:	b461                	j	1c00906a <pos_libc_prf+0x286>
1c0095e4:	0585                	addi	a1,a1,1
1c0095e6:	00271793          	slli	a5,a4,0x2
1c0095ea:	01e75e13          	srli	t3,a4,0x1e
1c0095ee:	00261693          	slli	a3,a2,0x2
1c0095f2:	00e788b3          	add	a7,a5,a4
1c0095f6:	00de66b3          	or	a3,t3,a3
1c0095fa:	96b2                	add	a3,a3,a2
1c0095fc:	00f8b7b3          	sltu	a5,a7,a5
1c009600:	97b6                	add	a5,a5,a3
1c009602:	0786                	slli	a5,a5,0x1
1c009604:	01f8d693          	srli	a3,a7,0x1f
1c009608:	8fd5                	or	a5,a5,a3
1c00960a:	01c7de13          	srli	t3,a5,0x1c
1c00960e:	03000693          	li	a3,48
1c009612:	00a05c63          	blez	a0,1c00962a <pos_libc_prf+0x846>
1c009616:	00189713          	slli	a4,a7,0x1
1c00961a:	100008b7          	lui	a7,0x10000
1c00961e:	18fd                	addi	a7,a7,-1
1c009620:	030e0693          	addi	a3,t3,48
1c009624:	157d                	addi	a0,a0,-1
1c009626:	0117f633          	and	a2,a5,a7
1c00962a:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c00962e:	fab99be3          	bne	s3,a1,1c0095e4 <pos_libc_prf+0x800>
1c009632:	014809b3          	add	s3,a6,s4
1c009636:	f60f8fe3          	beqz	t6,1c0095b4 <pos_libc_prf+0x7d0>
1c00963a:	03000613          	li	a2,48
1c00963e:	a011                	j	1c009642 <pos_libc_prf+0x85e>
1c009640:	89ba                	mv	s3,a4
1c009642:	fff9c683          	lbu	a3,-1(s3)
1c009646:	fff98713          	addi	a4,s3,-1
1c00964a:	fec68be3          	beq	a3,a2,1c009640 <pos_libc_prf+0x85c>
1c00964e:	02e00613          	li	a2,46
1c009652:	f2c694e3          	bne	a3,a2,1c00957a <pos_libc_prf+0x796>
1c009656:	89ba                	mv	s3,a4
1c009658:	b70d                	j	1c00957a <pos_libc_prf+0x796>
1c00965a:	06300713          	li	a4,99
1c00965e:	16ed8863          	beq	s11,a4,1c0097ce <pos_libc_prf+0x9ea>
1c009662:	0db74363          	blt	a4,s11,1c009728 <pos_libc_prf+0x944>
1c009666:	05800713          	li	a4,88
1c00966a:	28ed9763          	bne	s11,a4,1c0098f8 <pos_libc_prf+0xb14>
1c00966e:	48b2                	lw	a7,12(sp)
1c009670:	004c0813          	addi	a6,s8,4
1c009674:	000c2583          	lw	a1,0(s8)
1c009678:	3c088a63          	beqz	a7,1c009a4c <pos_libc_prf+0xc68>
1c00967c:	7761                	lui	a4,0xffff8
1c00967e:	83074713          	xori	a4,a4,-2000
1c009682:	02e11223          	sh	a4,36(sp)
1c009686:	4889                	li	a7,2
1c009688:	02610693          	addi	a3,sp,38
1c00968c:	8736                	mv	a4,a3
1c00968e:	4e25                	li	t3,9
1c009690:	00f5f613          	andi	a2,a1,15
1c009694:	0ff67793          	andi	a5,a2,255
1c009698:	03078513          	addi	a0,a5,48
1c00969c:	8191                	srli	a1,a1,0x4
1c00969e:	05778793          	addi	a5,a5,87
1c0096a2:	0705                	addi	a4,a4,1
1c0096a4:	06ce6a63          	bltu	t3,a2,1c009718 <pos_libc_prf+0x934>
1c0096a8:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c0096ac:	f1f5                	bnez	a1,1c009690 <pos_libc_prf+0x8ac>
1c0096ae:	40d709b3          	sub	s3,a4,a3
1c0096b2:	0149db63          	ble	s4,s3,1c0096c8 <pos_libc_prf+0x8e4>
1c0096b6:	03000613          	li	a2,48
1c0096ba:	0705                	addi	a4,a4,1
1c0096bc:	fec70fa3          	sb	a2,-1(a4)
1c0096c0:	40d709b3          	sub	s3,a4,a3
1c0096c4:	ff49cbe3          	blt	s3,s4,1c0096ba <pos_libc_prf+0x8d6>
1c0096c8:	00070023          	sb	zero,0(a4)
1c0096cc:	177d                	addi	a4,a4,-1
1c0096ce:	00e6fe63          	bleu	a4,a3,1c0096ea <pos_libc_prf+0x906>
1c0096d2:	0006c603          	lbu	a2,0(a3)
1c0096d6:	00074783          	lbu	a5,0(a4)
1c0096da:	00c70023          	sb	a2,0(a4)
1c0096de:	00f68023          	sb	a5,0(a3)
1c0096e2:	177d                	addi	a4,a4,-1
1c0096e4:	0685                	addi	a3,a3,1
1c0096e6:	fee6e6e3          	bltu	a3,a4,1c0096d2 <pos_libc_prf+0x8ee>
1c0096ea:	05800713          	li	a4,88
1c0096ee:	36ed8263          	beq	s11,a4,1c009a52 <pos_libc_prf+0xc6e>
1c0096f2:	46b2                	lw	a3,12(sp)
1c0096f4:	99c6                	add	s3,s3,a7
1c0096f6:	c299                	beqz	a3,1c0096fc <pos_libc_prf+0x918>
1c0096f8:	4709                	li	a4,2
1c0096fa:	c63a                	sw	a4,12(sp)
1c0096fc:	57fd                	li	a5,-1
1c0096fe:	3afa0263          	beq	s4,a5,1c009aa2 <pos_libc_prf+0xcbe>
1c009702:	0c800793          	li	a5,200
1c009706:	9937c5e3          	blt	a5,s3,1c009090 <pos_libc_prf+0x2ac>
1c00970a:	02000793          	li	a5,32
1c00970e:	c83e                	sw	a5,16(sp)
1c009710:	8c42                	mv	s8,a6
1c009712:	8729c8e3          	blt	s3,s2,1c008f82 <pos_libc_prf+0x19e>
1c009716:	ba91                	j	1c00906a <pos_libc_prf+0x286>
1c009718:	fef70fa3          	sb	a5,-1(a4)
1c00971c:	f9b5                	bnez	a1,1c009690 <pos_libc_prf+0x8ac>
1c00971e:	bf41                	j	1c0096ae <pos_libc_prf+0x8ca>
1c009720:	06900713          	li	a4,105
1c009724:	1ced9a63          	bne	s11,a4,1c0098f8 <pos_libc_prf+0xb14>
1c009728:	000c2583          	lw	a1,0(s8)
1c00972c:	0c11                	addi	s8,s8,4
1c00972e:	3805c863          	bltz	a1,1c009abe <pos_libc_prf+0xcda>
1c009732:	48d2                	lw	a7,20(sp)
1c009734:	872e                	mv	a4,a1
1c009736:	36089d63          	bnez	a7,1c009ab0 <pos_libc_prf+0xccc>
1c00973a:	4662                	lw	a2,24(sp)
1c00973c:	87e6                	mv	a5,s9
1c00973e:	c619                	beqz	a2,1c00974c <pos_libc_prf+0x968>
1c009740:	02000793          	li	a5,32
1c009744:	02f10223          	sb	a5,36(sp)
1c009748:	02510793          	addi	a5,sp,37
1c00974c:	89be                	mv	s3,a5
1c00974e:	4629                	li	a2,10
1c009750:	02c776b3          	remu	a3,a4,a2
1c009754:	02c75733          	divu	a4,a4,a2
1c009758:	0985                	addi	s3,s3,1
1c00975a:	03068693          	addi	a3,a3,48
1c00975e:	fed98fa3          	sb	a3,-1(s3)
1c009762:	f77d                	bnez	a4,1c009750 <pos_libc_prf+0x96c>
1c009764:	40f98733          	sub	a4,s3,a5
1c009768:	01475b63          	ble	s4,a4,1c00977e <pos_libc_prf+0x99a>
1c00976c:	03000693          	li	a3,48
1c009770:	0985                	addi	s3,s3,1
1c009772:	fed98fa3          	sb	a3,-1(s3)
1c009776:	40f98733          	sub	a4,s3,a5
1c00977a:	ff474be3          	blt	a4,s4,1c009770 <pos_libc_prf+0x98c>
1c00977e:	00098023          	sb	zero,0(s3)
1c009782:	fff98713          	addi	a4,s3,-1
1c009786:	00e7fe63          	bleu	a4,a5,1c0097a2 <pos_libc_prf+0x9be>
1c00978a:	0007c603          	lbu	a2,0(a5)
1c00978e:	00074683          	lbu	a3,0(a4)
1c009792:	00c70023          	sb	a2,0(a4)
1c009796:	00d78023          	sb	a3,0(a5)
1c00979a:	177d                	addi	a4,a4,-1
1c00979c:	0785                	addi	a5,a5,1
1c00979e:	fee7e6e3          	bltu	a5,a4,1c00978a <pos_libc_prf+0x9a6>
1c0097a2:	46d2                	lw	a3,20(sp)
1c0097a4:	4762                	lw	a4,24(sp)
1c0097a6:	419989b3          	sub	s3,s3,s9
1c0097aa:	8ed9                	or	a3,a3,a4
1c0097ac:	c636                	sw	a3,12(sp)
1c0097ae:	e299                	bnez	a3,1c0097b4 <pos_libc_prf+0x9d0>
1c0097b0:	81fd                	srli	a1,a1,0x1f
1c0097b2:	c62e                	sw	a1,12(sp)
1c0097b4:	57fd                	li	a5,-1
1c0097b6:	e2fa00e3          	beq	s4,a5,1c0095d6 <pos_libc_prf+0x7f2>
1c0097ba:	0c800793          	li	a5,200
1c0097be:	8d37c9e3          	blt	a5,s3,1c009090 <pos_libc_prf+0x2ac>
1c0097c2:	02000793          	li	a5,32
1c0097c6:	c83e                	sw	a5,16(sp)
1c0097c8:	fb29cd63          	blt	s3,s2,1c008f82 <pos_libc_prf+0x19e>
1c0097cc:	b879                	j	1c00906a <pos_libc_prf+0x286>
1c0097ce:	000c2783          	lw	a5,0(s8)
1c0097d2:	020102a3          	sb	zero,37(sp)
1c0097d6:	02f10223          	sb	a5,36(sp)
1c0097da:	0c11                	addi	s8,s8,4
1c0097dc:	4985                	li	s3,1
1c0097de:	f9eff06f          	j	1c008f7c <pos_libc_prf+0x198>
1c0097e2:	000c2703          	lw	a4,0(s8)
1c0097e6:	87e6                	mv	a5,s9
1c0097e8:	0c11                	addi	s8,s8,4
1c0097ea:	4629                	li	a2,10
1c0097ec:	02c776b3          	remu	a3,a4,a2
1c0097f0:	02c75733          	divu	a4,a4,a2
1c0097f4:	0785                	addi	a5,a5,1
1c0097f6:	03068693          	addi	a3,a3,48
1c0097fa:	fed78fa3          	sb	a3,-1(a5)
1c0097fe:	f77d                	bnez	a4,1c0097ec <pos_libc_prf+0xa08>
1c009800:	419789b3          	sub	s3,a5,s9
1c009804:	0149db63          	ble	s4,s3,1c00981a <pos_libc_prf+0xa36>
1c009808:	03000713          	li	a4,48
1c00980c:	0785                	addi	a5,a5,1
1c00980e:	fee78fa3          	sb	a4,-1(a5)
1c009812:	419789b3          	sub	s3,a5,s9
1c009816:	ff49cbe3          	blt	s3,s4,1c00980c <pos_libc_prf+0xa28>
1c00981a:	00078023          	sb	zero,0(a5)
1c00981e:	17fd                	addi	a5,a5,-1
1c009820:	00fcff63          	bleu	a5,s9,1c00983e <pos_libc_prf+0xa5a>
1c009824:	8766                	mv	a4,s9
1c009826:	00074603          	lbu	a2,0(a4)
1c00982a:	0007c683          	lbu	a3,0(a5)
1c00982e:	00c78023          	sb	a2,0(a5)
1c009832:	00d70023          	sb	a3,0(a4)
1c009836:	17fd                	addi	a5,a5,-1
1c009838:	0705                	addi	a4,a4,1
1c00983a:	fef766e3          	bltu	a4,a5,1c009826 <pos_libc_prf+0xa42>
1c00983e:	57fd                	li	a5,-1
1c009840:	0cfa0a63          	beq	s4,a5,1c009914 <pos_libc_prf+0xb30>
1c009844:	0c800793          	li	a5,200
1c009848:	8537c4e3          	blt	a5,s3,1c009090 <pos_libc_prf+0x2ac>
1c00984c:	02000813          	li	a6,32
1c009850:	c602                	sw	zero,12(sp)
1c009852:	c842                	sw	a6,16(sp)
1c009854:	ba45                	j	1c009204 <pos_libc_prf+0x420>
1c009856:	77e1                	lui	a5,0xffff8
1c009858:	8307c793          	xori	a5,a5,-2000
1c00985c:	02610713          	addi	a4,sp,38
1c009860:	000c2603          	lw	a2,0(s8)
1c009864:	02f11223          	sh	a5,36(sp)
1c009868:	0c11                	addi	s8,s8,4
1c00986a:	87ba                	mv	a5,a4
1c00986c:	4825                	li	a6,9
1c00986e:	00f67593          	andi	a1,a2,15
1c009872:	0ff5f693          	andi	a3,a1,255
1c009876:	03068513          	addi	a0,a3,48
1c00987a:	8211                	srli	a2,a2,0x4
1c00987c:	05768693          	addi	a3,a3,87
1c009880:	0785                	addi	a5,a5,1
1c009882:	06b86163          	bltu	a6,a1,1c0098e4 <pos_libc_prf+0xb00>
1c009886:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c00988a:	f275                	bnez	a2,1c00986e <pos_libc_prf+0xa8a>
1c00988c:	40e789b3          	sub	s3,a5,a4
1c009890:	469d                	li	a3,7
1c009892:	0136cb63          	blt	a3,s3,1c0098a8 <pos_libc_prf+0xac4>
1c009896:	03000613          	li	a2,48
1c00989a:	0785                	addi	a5,a5,1
1c00989c:	fec78fa3          	sb	a2,-1(a5)
1c0098a0:	40e789b3          	sub	s3,a5,a4
1c0098a4:	ff36dbe3          	ble	s3,a3,1c00989a <pos_libc_prf+0xab6>
1c0098a8:	00078023          	sb	zero,0(a5)
1c0098ac:	17fd                	addi	a5,a5,-1
1c0098ae:	00f77e63          	bleu	a5,a4,1c0098ca <pos_libc_prf+0xae6>
1c0098b2:	00074603          	lbu	a2,0(a4)
1c0098b6:	0007c683          	lbu	a3,0(a5)
1c0098ba:	00c78023          	sb	a2,0(a5)
1c0098be:	00d70023          	sb	a3,0(a4)
1c0098c2:	17fd                	addi	a5,a5,-1
1c0098c4:	0705                	addi	a4,a4,1
1c0098c6:	fef766e3          	bltu	a4,a5,1c0098b2 <pos_libc_prf+0xace>
1c0098ca:	57fd                	li	a5,-1
1c0098cc:	0989                	addi	s3,s3,2
1c0098ce:	04fa0363          	beq	s4,a5,1c009914 <pos_libc_prf+0xb30>
1c0098d2:	0c800793          	li	a5,200
1c0098d6:	fb37cd63          	blt	a5,s3,1c009090 <pos_libc_prf+0x2ac>
1c0098da:	02000893          	li	a7,32
1c0098de:	c602                	sw	zero,12(sp)
1c0098e0:	c846                	sw	a7,16(sp)
1c0098e2:	b20d                	j	1c009204 <pos_libc_prf+0x420>
1c0098e4:	fed78fa3          	sb	a3,-1(a5)
1c0098e8:	f259                	bnez	a2,1c00986e <pos_libc_prf+0xa8a>
1c0098ea:	b74d                	j	1c00988c <pos_libc_prf+0xaa8>
1c0098ec:	000c2783          	lw	a5,0(s8)
1c0098f0:	0c11                	addi	s8,s8,4
1c0098f2:	c380                	sw	s0,0(a5)
1c0098f4:	d36ff06f          	j	1c008e2a <pos_libc_prf+0x46>
1c0098f8:	0c800713          	li	a4,200
1c0098fc:	d3b75763          	ble	s11,a4,1c008e2a <pos_libc_prf+0x46>
1c009900:	547d                	li	s0,-1
1c009902:	d4cff06f          	j	1c008e4e <pos_libc_prf+0x6a>
1c009906:	ffc50fa3          	sb	t3,-1(a0)
1c00990a:	c2a991e3          	bne	s3,a0,1c00952c <pos_libc_prf+0x748>
1c00990e:	c60f86e3          	beqz	t6,1c00957a <pos_libc_prf+0x796>
1c009912:	b325                	j	1c00963a <pos_libc_prf+0x856>
1c009914:	0c800793          	li	a5,200
1c009918:	f737cc63          	blt	a5,s3,1c009090 <pos_libc_prf+0x2ac>
1c00991c:	c602                	sw	zero,12(sp)
1c00991e:	b0dd                	j	1c009204 <pos_libc_prf+0x420>
1c009920:	0c800793          	li	a5,200
1c009924:	f737c663          	blt	a5,s3,1c009090 <pos_libc_prf+0x2ac>
1c009928:	4705                	li	a4,1
1c00992a:	c63a                	sw	a4,12(sp)
1c00992c:	b8e1                	j	1c009204 <pos_libc_prf+0x420>
1c00992e:	41390a33          	sub	s4,s2,s3
1c009932:	00198613          	addi	a2,s3,1
1c009936:	85e6                	mv	a1,s9
1c009938:	014c8533          	add	a0,s9,s4
1c00993c:	a72ff0ef          	jal	ra,1c008bae <memmove>
1c009940:	46c2                	lw	a3,16(sp)
1c009942:	02000793          	li	a5,32
1c009946:	30f68163          	beq	a3,a5,1c009c48 <pos_libc_prf+0xe64>
1c00994a:	4732                	lw	a4,12(sp)
1c00994c:	89ca                	mv	s3,s2
1c00994e:	9a3a                	add	s4,s4,a4
1c009950:	f1475d63          	ble	s4,a4,1c00906a <pos_libc_prf+0x286>
1c009954:	4832                	lw	a6,12(sp)
1c009956:	4715                	li	a4,5
1c009958:	010c87b3          	add	a5,s9,a6
1c00995c:	40f007b3          	neg	a5,a5
1c009960:	8b8d                	andi	a5,a5,3
1c009962:	00378693          	addi	a3,a5,3
1c009966:	410a05b3          	sub	a1,s4,a6
1c00996a:	00e6f363          	bleu	a4,a3,1c009970 <pos_libc_prf+0xb8c>
1c00996e:	4695                	li	a3,5
1c009970:	48b2                	lw	a7,12(sp)
1c009972:	fffa0713          	addi	a4,s4,-1
1c009976:	41170733          	sub	a4,a4,a7
1c00997a:	06d76b63          	bltu	a4,a3,1c0099f0 <pos_libc_prf+0xc0c>
1c00997e:	86c6                	mv	a3,a7
1c009980:	cb9d                	beqz	a5,1c0099b6 <pos_libc_prf+0xbd2>
1c009982:	46c2                	lw	a3,16(sp)
1c009984:	1988                	addi	a0,sp,240
1c009986:	01150733          	add	a4,a0,a7
1c00998a:	f2d70a23          	sb	a3,-204(a4)
1c00998e:	4705                	li	a4,1
1c009990:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c009994:	02e78163          	beq	a5,a4,1c0099b6 <pos_libc_prf+0xbd2>
1c009998:	4742                	lw	a4,16(sp)
1c00999a:	96aa                	add	a3,a3,a0
1c00999c:	f2e68a23          	sb	a4,-204(a3)
1c0099a0:	470d                	li	a4,3
1c0099a2:	00288693          	addi	a3,a7,2
1c0099a6:	00e79863          	bne	a5,a4,1c0099b6 <pos_libc_prf+0xbd2>
1c0099aa:	4842                	lw	a6,16(sp)
1c0099ac:	96aa                	add	a3,a3,a0
1c0099ae:	f3068a23          	sb	a6,-204(a3)
1c0099b2:	00388693          	addi	a3,a7,3
1c0099b6:	48c2                	lw	a7,16(sp)
1c0099b8:	4832                	lw	a6,12(sp)
1c0099ba:	00889713          	slli	a4,a7,0x8
1c0099be:	01089513          	slli	a0,a7,0x10
1c0099c2:	00e8e733          	or	a4,a7,a4
1c0099c6:	8d9d                	sub	a1,a1,a5
1c0099c8:	01889613          	slli	a2,a7,0x18
1c0099cc:	8f49                	or	a4,a4,a0
1c0099ce:	97c2                	add	a5,a5,a6
1c0099d0:	8f51                	or	a4,a4,a2
1c0099d2:	0025d513          	srli	a0,a1,0x2
1c0099d6:	97e6                	add	a5,a5,s9
1c0099d8:	4601                	li	a2,0
1c0099da:	c398                	sw	a4,0(a5)
1c0099dc:	0605                	addi	a2,a2,1
1c0099de:	0791                	addi	a5,a5,4
1c0099e0:	fea66de3          	bltu	a2,a0,1c0099da <pos_libc_prf+0xbf6>
1c0099e4:	ffc5f793          	andi	a5,a1,-4
1c0099e8:	96be                	add	a3,a3,a5
1c0099ea:	c636                	sw	a3,12(sp)
1c0099ec:	e6b78e63          	beq	a5,a1,1c009068 <pos_libc_prf+0x284>
1c0099f0:	46b2                	lw	a3,12(sp)
1c0099f2:	0f010893          	addi	a7,sp,240
1c0099f6:	4742                	lw	a4,16(sp)
1c0099f8:	00d887b3          	add	a5,a7,a3
1c0099fc:	f2e78a23          	sb	a4,-204(a5)
1c009a00:	00168793          	addi	a5,a3,1
1c009a04:	e747d263          	ble	s4,a5,1c009068 <pos_libc_prf+0x284>
1c009a08:	97c6                	add	a5,a5,a7
1c009a0a:	f2e78a23          	sb	a4,-204(a5)
1c009a0e:	00268793          	addi	a5,a3,2
1c009a12:	e547db63          	ble	s4,a5,1c009068 <pos_libc_prf+0x284>
1c009a16:	97c6                	add	a5,a5,a7
1c009a18:	f2e78a23          	sb	a4,-204(a5)
1c009a1c:	00368793          	addi	a5,a3,3
1c009a20:	e547d463          	ble	s4,a5,1c009068 <pos_libc_prf+0x284>
1c009a24:	97c6                	add	a5,a5,a7
1c009a26:	f2e78a23          	sb	a4,-204(a5)
1c009a2a:	00468793          	addi	a5,a3,4
1c009a2e:	e347dd63          	ble	s4,a5,1c009068 <pos_libc_prf+0x284>
1c009a32:	97c6                	add	a5,a5,a7
1c009a34:	f2e78a23          	sb	a4,-204(a5)
1c009a38:	00568a93          	addi	s5,a3,5
1c009a3c:	e34ad663          	ble	s4,s5,1c009068 <pos_libc_prf+0x284>
1c009a40:	9ac6                	add	s5,s5,a7
1c009a42:	f2ea8a23          	sb	a4,-204(s5)
1c009a46:	89ca                	mv	s3,s2
1c009a48:	e22ff06f          	j	1c00906a <pos_libc_prf+0x286>
1c009a4c:	4881                	li	a7,0
1c009a4e:	1054                	addi	a3,sp,36
1c009a50:	b935                	j	1c00968c <pos_libc_prf+0x8a8>
1c009a52:	02414783          	lbu	a5,36(sp)
1c009a56:	1058                	addi	a4,sp,36
1c009a58:	46e5                	li	a3,25
1c009a5a:	c8078ce3          	beqz	a5,1c0096f2 <pos_libc_prf+0x90e>
1c009a5e:	fe078613          	addi	a2,a5,-32
1c009a62:	f9f78793          	addi	a5,a5,-97
1c009a66:	0ff7f793          	andi	a5,a5,255
1c009a6a:	00f6e963          	bltu	a3,a5,1c009a7c <pos_libc_prf+0xc98>
1c009a6e:	00c70023          	sb	a2,0(a4)
1c009a72:	0705                	addi	a4,a4,1
1c009a74:	00074783          	lbu	a5,0(a4)
1c009a78:	f3fd                	bnez	a5,1c009a5e <pos_libc_prf+0xc7a>
1c009a7a:	b9a5                	j	1c0096f2 <pos_libc_prf+0x90e>
1c009a7c:	0705                	addi	a4,a4,1
1c009a7e:	00074783          	lbu	a5,0(a4)
1c009a82:	fff1                	bnez	a5,1c009a5e <pos_libc_prf+0xc7a>
1c009a84:	b1bd                	j	1c0096f2 <pos_libc_prf+0x90e>
1c009a86:	47d2                	lw	a5,20(sp)
1c009a88:	20078263          	beqz	a5,1c009c8c <pos_libc_prf+0xea8>
1c009a8c:	02b00713          	li	a4,43
1c009a90:	02e10223          	sb	a4,36(sp)
1c009a94:	02510e93          	addi	t4,sp,37
1c009a98:	4301                	li	t1,0
1c009a9a:	4501                	li	a0,0
1c009a9c:	4681                	li	a3,0
1c009a9e:	4581                	li	a1,0
1c009aa0:	b8d5                	j	1c009394 <pos_libc_prf+0x5b0>
1c009aa2:	0c800793          	li	a5,200
1c009aa6:	df37c563          	blt	a5,s3,1c009090 <pos_libc_prf+0x2ac>
1c009aaa:	8c42                	mv	s8,a6
1c009aac:	f58ff06f          	j	1c009204 <pos_libc_prf+0x420>
1c009ab0:	02b00793          	li	a5,43
1c009ab4:	02f10223          	sb	a5,36(sp)
1c009ab8:	02510793          	addi	a5,sp,37
1c009abc:	b941                	j	1c00974c <pos_libc_prf+0x968>
1c009abe:	02d00793          	li	a5,45
1c009ac2:	02f10223          	sb	a5,36(sp)
1c009ac6:	800007b7          	lui	a5,0x80000
1c009aca:	22f58363          	beq	a1,a5,1c009cf0 <pos_libc_prf+0xf0c>
1c009ace:	40b00733          	neg	a4,a1
1c009ad2:	02510793          	addi	a5,sp,37
1c009ad6:	b99d                	j	1c00974c <pos_libc_prf+0x968>
1c009ad8:	47b2                	lw	a5,12(sp)
1c009ada:	4f81                	li	t6,0
1c009adc:	e399                	bnez	a5,1c009ae2 <pos_libc_prf+0xcfe>
1c009ade:	01403fb3          	snez	t6,s4
1c009ae2:	56f5                	li	a3,-3
1c009ae4:	001a0e13          	addi	t3,s4,1
1c009ae8:	00d34463          	blt	t1,a3,1c009af0 <pos_libc_prf+0xd0c>
1c009aec:	166e5d63          	ble	t1,t3,1c009c66 <pos_libc_prf+0xe82>
1c009af0:	46c1                	li	a3,16
1c009af2:	01c6d363          	ble	t3,a3,1c009af8 <pos_libc_prf+0xd14>
1c009af6:	4e41                	li	t3,16
1c009af8:	06700693          	li	a3,103
1c009afc:	1e7d                	addi	t3,t3,-1
1c009afe:	1add8963          	beq	s11,a3,1c009cb0 <pos_libc_prf+0xecc>
1c009b02:	04500d93          	li	s11,69
1c009b06:	b0c5                	j	1c0093e6 <pos_libc_prf+0x602>
1c009b08:	020102a3          	sb	zero,37(sp)
1c009b0c:	57fd                	li	a5,-1
1c009b0e:	89ba                	mv	s3,a4
1c009b10:	8c2a                	mv	s8,a0
1c009b12:	c6fa0563          	beq	s4,a5,1c008f7c <pos_libc_prf+0x198>
1c009b16:	02000813          	li	a6,32
1c009b1a:	c842                	sw	a6,16(sp)
1c009b1c:	c60ff06f          	j	1c008f7c <pos_libc_prf+0x198>
1c009b20:	89b6                	mv	s3,a3
1c009b22:	bdeff06f          	j	1c008f00 <pos_libc_prf+0x11c>
1c009b26:	8766                	mv	a4,s9
1c009b28:	1c084c63          	bltz	a6,1c009d00 <pos_libc_prf+0xf1c>
1c009b2c:	8e55                	or	a2,a2,a3
1c009b2e:	fbfd8793          	addi	a5,s11,-65
1c009b32:	00370993          	addi	s3,a4,3
1c009b36:	46e5                	li	a3,25
1c009b38:	10061a63          	bnez	a2,1c009c4c <pos_libc_prf+0xe68>
1c009b3c:	16f6ee63          	bltu	a3,a5,1c009cb8 <pos_libc_prf+0xed4>
1c009b40:	6795                	lui	a5,0x5
1c009b42:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c009b46:	00f71023          	sh	a5,0(a4)
1c009b4a:	04600793          	li	a5,70
1c009b4e:	00f70123          	sb	a5,2(a4)
1c009b52:	000701a3          	sb	zero,3(a4)
1c009b56:	419989b3          	sub	s3,s3,s9
1c009b5a:	b48d                	j	1c0095bc <pos_libc_prf+0x7d8>
1c009b5c:	85e6                	mv	a1,s9
1c009b5e:	8766                	mv	a4,s9
1c009b60:	e38ff06f          	j	1c009198 <pos_libc_prf+0x3b4>
1c009b64:	a00a09e3          	beqz	s4,1c009576 <pos_libc_prf+0x792>
1c009b68:	02e00693          	li	a3,46
1c009b6c:	002e8513          	addi	a0,t4,2
1c009b70:	00de80a3          	sb	a3,1(t4)
1c009b74:	b27d                	j	1c009522 <pos_libc_prf+0x73e>
1c009b76:	14605b63          	blez	t1,1c009ccc <pos_libc_prf+0xee8>
1c009b7a:	006e89b3          	add	s3,t4,t1
1c009b7e:	4541                	li	a0,16
1c009b80:	03000893          	li	a7,48
1c009b84:	00271793          	slli	a5,a4,0x2
1c009b88:	01e75313          	srli	t1,a4,0x1e
1c009b8c:	00261693          	slli	a3,a2,0x2
1c009b90:	00e78833          	add	a6,a5,a4
1c009b94:	00d366b3          	or	a3,t1,a3
1c009b98:	96b2                	add	a3,a3,a2
1c009b9a:	00f837b3          	sltu	a5,a6,a5
1c009b9e:	97b6                	add	a5,a5,a3
1c009ba0:	0786                	slli	a5,a5,0x1
1c009ba2:	01f85693          	srli	a3,a6,0x1f
1c009ba6:	8fd5                	or	a5,a5,a3
1c009ba8:	01c7d693          	srli	a3,a5,0x1c
1c009bac:	03068693          	addi	a3,a3,48
1c009bb0:	02a05063          	blez	a0,1c009bd0 <pos_libc_prf+0xdec>
1c009bb4:	00181713          	slli	a4,a6,0x1
1c009bb8:	10000837          	lui	a6,0x10000
1c009bbc:	187d                	addi	a6,a6,-1
1c009bbe:	fed58fa3          	sb	a3,-1(a1)
1c009bc2:	157d                	addi	a0,a0,-1
1c009bc4:	0107f633          	and	a2,a5,a6
1c009bc8:	00b98863          	beq	s3,a1,1c009bd8 <pos_libc_prf+0xdf4>
1c009bcc:	0585                	addi	a1,a1,1
1c009bce:	bf5d                	j	1c009b84 <pos_libc_prf+0xda0>
1c009bd0:	ff158fa3          	sb	a7,-1(a1)
1c009bd4:	feb99ce3          	bne	s3,a1,1c009bcc <pos_libc_prf+0xde8>
1c009bd8:	4301                	li	t1,0
1c009bda:	48b2                	lw	a7,12(sp)
1c009bdc:	00089463          	bnez	a7,1c009be4 <pos_libc_prf+0xe00>
1c009be0:	a40a0be3          	beqz	s4,1c009636 <pos_libc_prf+0x852>
1c009be4:	00198813          	addi	a6,s3,1
1c009be8:	001a0693          	addi	a3,s4,1
1c009bec:	02e00593          	li	a1,46
1c009bf0:	00b98023          	sb	a1,0(s3)
1c009bf4:	99b6                	add	s3,s3,a3
1c009bf6:	85c2                	mv	a1,a6
1c009bf8:	03000693          	li	a3,48
1c009bfc:	a2b98be3          	beq	s3,a1,1c009632 <pos_libc_prf+0x84e>
1c009c00:	0585                	addi	a1,a1,1
1c009c02:	9e0302e3          	beqz	t1,1c0095e6 <pos_libc_prf+0x802>
1c009c06:	fed58fa3          	sb	a3,-1(a1)
1c009c0a:	0305                	addi	t1,t1,1
1c009c0c:	bfc5                	j	1c009bfc <pos_libc_prf+0xe18>
1c009c0e:	4a19                	li	s4,6
1c009c10:	fadd9b63          	bne	s11,a3,1c0093c6 <pos_libc_prf+0x5e2>
1c009c14:	46b2                	lw	a3,12(sp)
1c009c16:	57f5                	li	a5,-3
1c009c18:	0016cf93          	xori	t6,a3,1
1c009c1c:	08f35663          	ble	a5,t1,1c009ca8 <pos_libc_prf+0xec4>
1c009c20:	06500d93          	li	s11,101
1c009c24:	4e19                	li	t3,6
1c009c26:	fc0ff06f          	j	1c0093e6 <pos_libc_prf+0x602>
1c009c2a:	0c800793          	li	a5,200
1c009c2e:	c737c163          	blt	a5,s3,1c009090 <pos_libc_prf+0x2ac>
1c009c32:	8c2a                	mv	s8,a0
1c009c34:	c602                	sw	zero,12(sp)
1c009c36:	dceff06f          	j	1c009204 <pos_libc_prf+0x420>
1c009c3a:	02d00793          	li	a5,45
1c009c3e:	40600333          	neg	t1,t1
1c009c42:	00f980a3          	sb	a5,1(s3)
1c009c46:	ba89                	j	1c009598 <pos_libc_prf+0x7b4>
1c009c48:	c602                	sw	zero,12(sp)
1c009c4a:	b329                	j	1c009954 <pos_libc_prf+0xb70>
1c009c4c:	0cf6ed63          	bltu	a3,a5,1c009d26 <pos_libc_prf+0xf42>
1c009c50:	6791                	lui	a5,0x4
1c009c52:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c009c56:	00f71023          	sh	a5,0(a4)
1c009c5a:	04e00793          	li	a5,78
1c009c5e:	00f70123          	sb	a5,2(a4)
1c009c62:	bdc5                	j	1c009b52 <pos_libc_prf+0xd6e>
1c009c64:	4f81                	li	t6,0
1c009c66:	014307b3          	add	a5,t1,s4
1c009c6a:	0807c863          	bltz	a5,1c009cfa <pos_libc_prf+0xf16>
1c009c6e:	46c1                	li	a3,16
1c009c70:	8e3e                	mv	t3,a5
1c009c72:	00f6d363          	ble	a5,a3,1c009c78 <pos_libc_prf+0xe94>
1c009c76:	4e41                	li	t3,16
1c009c78:	1e7d                	addi	t3,t3,-1
1c009c7a:	06600d93          	li	s11,102
1c009c7e:	f6079463          	bnez	a5,1c0093e6 <pos_libc_prf+0x602>
1c009c82:	4681                	li	a3,0
1c009c84:	08000637          	lui	a2,0x8000
1c009c88:	fc8ff06f          	j	1c009450 <pos_libc_prf+0x66c>
1c009c8c:	47e2                	lw	a5,24(sp)
1c009c8e:	c7d5                	beqz	a5,1c009d3a <pos_libc_prf+0xf56>
1c009c90:	02000713          	li	a4,32
1c009c94:	02e10223          	sb	a4,36(sp)
1c009c98:	02510e93          	addi	t4,sp,37
1c009c9c:	4301                	li	t1,0
1c009c9e:	4501                	li	a0,0
1c009ca0:	4681                	li	a3,0
1c009ca2:	4581                	li	a1,0
1c009ca4:	ef0ff06f          	j	1c009394 <pos_libc_prf+0x5b0>
1c009ca8:	479d                	li	a5,7
1c009caa:	fa67dee3          	ble	t1,a5,1c009c66 <pos_libc_prf+0xe82>
1c009cae:	4e19                	li	t3,6
1c009cb0:	06500d93          	li	s11,101
1c009cb4:	f32ff06f          	j	1c0093e6 <pos_libc_prf+0x602>
1c009cb8:	679d                	lui	a5,0x7
1c009cba:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c009cbe:	00f71023          	sh	a5,0(a4)
1c009cc2:	06600793          	li	a5,102
1c009cc6:	00f70123          	sb	a5,2(a4)
1c009cca:	b561                	j	1c009b52 <pos_libc_prf+0xd6e>
1c009ccc:	03000693          	li	a3,48
1c009cd0:	00de8023          	sb	a3,0(t4)
1c009cd4:	4541                	li	a0,16
1c009cd6:	b711                	j	1c009bda <pos_libc_prf+0xdf6>
1c009cd8:	48e2                	lw	a7,24(sp)
1c009cda:	8ee6                	mv	t4,s9
1c009cdc:	dc088e63          	beqz	a7,1c0092b8 <pos_libc_prf+0x4d4>
1c009ce0:	02000713          	li	a4,32
1c009ce4:	02e10223          	sb	a4,36(sp)
1c009ce8:	02510e93          	addi	t4,sp,37
1c009cec:	dccff06f          	j	1c0092b8 <pos_libc_prf+0x4d4>
1c009cf0:	80000737          	lui	a4,0x80000
1c009cf4:	02510793          	addi	a5,sp,37
1c009cf8:	bc91                	j	1c00974c <pos_libc_prf+0x968>
1c009cfa:	06600d93          	li	s11,102
1c009cfe:	b751                	j	1c009c82 <pos_libc_prf+0xe9e>
1c009d00:	02d00713          	li	a4,45
1c009d04:	02e10223          	sb	a4,36(sp)
1c009d08:	02510713          	addi	a4,sp,37
1c009d0c:	b505                	j	1c009b2c <pos_libc_prf+0xd48>
1c009d0e:	a40a5d63          	bgez	s4,1c008f68 <pos_libc_prf+0x184>
1c009d12:	a62ff06f          	j	1c008f74 <pos_libc_prf+0x190>
1c009d16:	02d00713          	li	a4,45
1c009d1a:	02e10223          	sb	a4,36(sp)
1c009d1e:	02510e93          	addi	t4,sp,37
1c009d22:	d96ff06f          	j	1c0092b8 <pos_libc_prf+0x4d4>
1c009d26:	6799                	lui	a5,0x6
1c009d28:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c009d2c:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c009d30:	06e00793          	li	a5,110
1c009d34:	00f70123          	sb	a5,2(a4)
1c009d38:	bd29                	j	1c009b52 <pos_libc_prf+0xd6e>
1c009d3a:	8ee6                	mv	t4,s9
1c009d3c:	b785                	j	1c009c9c <pos_libc_prf+0xeb8>
1c009d3e:	89aa                	mv	s3,a0
1c009d40:	820f8de3          	beqz	t6,1c00957a <pos_libc_prf+0x796>
1c009d44:	b8dd                	j	1c00963a <pos_libc_prf+0x856>

1c009d46 <pos_init_start>:
1c009d46:	1141                	addi	sp,sp,-16
1c009d48:	c422                	sw	s0,8(sp)
1c009d4a:	1c000437          	lui	s0,0x1c000
1c009d4e:	c606                	sw	ra,12(sp)
1c009d50:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009d54:	d76fe0ef          	jal	ra,1c0082ca <pos_soc_init>
1c009d58:	2275                	jal	1c009f04 <pos_irq_init>
1c009d5a:	2ae1                	jal	1c009f32 <pos_soc_event_init>
1c009d5c:	2a31                	jal	1c009e78 <pos_allocs_init>
1c009d5e:	405c                	lw	a5,4(s0)
1c009d60:	c791                	beqz	a5,1c009d6c <pos_init_start+0x26>
1c009d62:	0411                	addi	s0,s0,4
1c009d64:	0411                	addi	s0,s0,4
1c009d66:	9782                	jalr	a5
1c009d68:	401c                	lw	a5,0(s0)
1c009d6a:	ffed                	bnez	a5,1c009d64 <pos_init_start+0x1e>
1c009d6c:	842ff0ef          	jal	ra,1c008dae <pos_io_start>
1c009d70:	300467f3          	csrrsi	a5,mstatus,8
1c009d74:	40b2                	lw	ra,12(sp)
1c009d76:	4422                	lw	s0,8(sp)
1c009d78:	0141                	addi	sp,sp,16
1c009d7a:	8082                	ret

1c009d7c <pos_init_stop>:
1c009d7c:	1141                	addi	sp,sp,-16
1c009d7e:	c422                	sw	s0,8(sp)
1c009d80:	1c000437          	lui	s0,0x1c000
1c009d84:	c606                	sw	ra,12(sp)
1c009d86:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009d8a:	828ff0ef          	jal	ra,1c008db2 <pos_io_stop>
1c009d8e:	405c                	lw	a5,4(s0)
1c009d90:	c791                	beqz	a5,1c009d9c <pos_init_stop+0x20>
1c009d92:	0411                	addi	s0,s0,4
1c009d94:	0411                	addi	s0,s0,4
1c009d96:	9782                	jalr	a5
1c009d98:	401c                	lw	a5,0(s0)
1c009d9a:	ffed                	bnez	a5,1c009d94 <pos_init_stop+0x18>
1c009d9c:	40b2                	lw	ra,12(sp)
1c009d9e:	4422                	lw	s0,8(sp)
1c009da0:	0141                	addi	sp,sp,16
1c009da2:	8082                	ret

1c009da4 <pos_alloc_init>:
1c009da4:	00758793          	addi	a5,a1,7
1c009da8:	9be1                	andi	a5,a5,-8
1c009daa:	40b785b3          	sub	a1,a5,a1
1c009dae:	c11c                	sw	a5,0(a0)
1c009db0:	8e0d                	sub	a2,a2,a1
1c009db2:	00c05663          	blez	a2,1c009dbe <pos_alloc_init+0x1a>
1c009db6:	9a61                	andi	a2,a2,-8
1c009db8:	c390                	sw	a2,0(a5)
1c009dba:	0007a223          	sw	zero,4(a5)
1c009dbe:	8082                	ret

1c009dc0 <pos_alloc>:
1c009dc0:	4110                	lw	a2,0(a0)
1c009dc2:	059d                	addi	a1,a1,7
1c009dc4:	99e1                	andi	a1,a1,-8
1c009dc6:	ca31                	beqz	a2,1c009e1a <pos_alloc+0x5a>
1c009dc8:	4218                	lw	a4,0(a2)
1c009dca:	425c                	lw	a5,4(a2)
1c009dcc:	02b75963          	ble	a1,a4,1c009dfe <pos_alloc+0x3e>
1c009dd0:	cb81                	beqz	a5,1c009de0 <pos_alloc+0x20>
1c009dd2:	4398                	lw	a4,0(a5)
1c009dd4:	43d4                	lw	a3,4(a5)
1c009dd6:	00b75763          	ble	a1,a4,1c009de4 <pos_alloc+0x24>
1c009dda:	863e                	mv	a2,a5
1c009ddc:	87b6                	mv	a5,a3
1c009dde:	fbf5                	bnez	a5,1c009dd2 <pos_alloc+0x12>
1c009de0:	853e                	mv	a0,a5
1c009de2:	8082                	ret
1c009de4:	00b70a63          	beq	a4,a1,1c009df8 <pos_alloc+0x38>
1c009de8:	00b78533          	add	a0,a5,a1
1c009dec:	8f0d                	sub	a4,a4,a1
1c009dee:	c118                	sw	a4,0(a0)
1c009df0:	c154                	sw	a3,4(a0)
1c009df2:	c248                	sw	a0,4(a2)
1c009df4:	853e                	mv	a0,a5
1c009df6:	8082                	ret
1c009df8:	c254                	sw	a3,4(a2)
1c009dfa:	853e                	mv	a0,a5
1c009dfc:	8082                	ret
1c009dfe:	00e58b63          	beq	a1,a4,1c009e14 <pos_alloc+0x54>
1c009e02:	00b606b3          	add	a3,a2,a1
1c009e06:	8f0d                	sub	a4,a4,a1
1c009e08:	c2dc                	sw	a5,4(a3)
1c009e0a:	c298                	sw	a4,0(a3)
1c009e0c:	87b2                	mv	a5,a2
1c009e0e:	c114                	sw	a3,0(a0)
1c009e10:	853e                	mv	a0,a5
1c009e12:	8082                	ret
1c009e14:	c11c                	sw	a5,0(a0)
1c009e16:	87b2                	mv	a5,a2
1c009e18:	b7e1                	j	1c009de0 <pos_alloc+0x20>
1c009e1a:	4781                	li	a5,0
1c009e1c:	b7d1                	j	1c009de0 <pos_alloc+0x20>

1c009e1e <pos_free>:
1c009e1e:	4118                	lw	a4,0(a0)
1c009e20:	061d                	addi	a2,a2,7
1c009e22:	9a61                	andi	a2,a2,-8
1c009e24:	c729                	beqz	a4,1c009e6e <pos_free+0x50>
1c009e26:	00b76663          	bltu	a4,a1,1c009e32 <pos_free+0x14>
1c009e2a:	a0a1                	j	1c009e72 <pos_free+0x54>
1c009e2c:	00b7f563          	bleu	a1,a5,1c009e36 <pos_free+0x18>
1c009e30:	873e                	mv	a4,a5
1c009e32:	435c                	lw	a5,4(a4)
1c009e34:	ffe5                	bnez	a5,1c009e2c <pos_free+0xe>
1c009e36:	00c586b3          	add	a3,a1,a2
1c009e3a:	02d78463          	beq	a5,a3,1c009e62 <pos_free+0x44>
1c009e3e:	c190                	sw	a2,0(a1)
1c009e40:	c1dc                	sw	a5,4(a1)
1c009e42:	cf11                	beqz	a4,1c009e5e <pos_free+0x40>
1c009e44:	431c                	lw	a5,0(a4)
1c009e46:	00f706b3          	add	a3,a4,a5
1c009e4a:	00d58463          	beq	a1,a3,1c009e52 <pos_free+0x34>
1c009e4e:	c34c                	sw	a1,4(a4)
1c009e50:	8082                	ret
1c009e52:	4194                	lw	a3,0(a1)
1c009e54:	41d0                	lw	a2,4(a1)
1c009e56:	97b6                	add	a5,a5,a3
1c009e58:	c31c                	sw	a5,0(a4)
1c009e5a:	c350                	sw	a2,4(a4)
1c009e5c:	8082                	ret
1c009e5e:	c10c                	sw	a1,0(a0)
1c009e60:	8082                	ret
1c009e62:	4394                	lw	a3,0(a5)
1c009e64:	43dc                	lw	a5,4(a5)
1c009e66:	9636                	add	a2,a2,a3
1c009e68:	c190                	sw	a2,0(a1)
1c009e6a:	c1dc                	sw	a5,4(a1)
1c009e6c:	bfd9                	j	1c009e42 <pos_free+0x24>
1c009e6e:	4781                	li	a5,0
1c009e70:	b7d9                	j	1c009e36 <pos_free+0x18>
1c009e72:	87ba                	mv	a5,a4
1c009e74:	4701                	li	a4,0
1c009e76:	b7c1                	j	1c009e36 <pos_free+0x18>

1c009e78 <pos_allocs_init>:
1c009e78:	1141                	addi	sp,sp,-16
1c009e7a:	1c0065b7          	lui	a1,0x1c006
1c009e7e:	c606                	sw	ra,12(sp)
1c009e80:	25458793          	addi	a5,a1,596 # 1c006254 <__l2_priv0_end>
1c009e84:	1c008637          	lui	a2,0x1c008
1c009e88:	04c7cc63          	blt	a5,a2,1c009ee0 <pos_allocs_init+0x68>
1c009e8c:	4581                	li	a1,0
1c009e8e:	4601                	li	a2,0
1c009e90:	1c006537          	lui	a0,0x1c006
1c009e94:	24850513          	addi	a0,a0,584 # 1c006248 <pos_alloc_l2>
1c009e98:	3731                	jal	1c009da4 <pos_alloc_init>
1c009e9a:	1c00a5b7          	lui	a1,0x1c00a
1c009e9e:	f4c58793          	addi	a5,a1,-180 # 1c009f4c <__l2_priv1_end>
1c009ea2:	1c010637          	lui	a2,0x1c010
1c009ea6:	02c7c963          	blt	a5,a2,1c009ed8 <pos_allocs_init+0x60>
1c009eaa:	4581                	li	a1,0
1c009eac:	4601                	li	a2,0
1c009eae:	1c006537          	lui	a0,0x1c006
1c009eb2:	24c50513          	addi	a0,a0,588 # 1c00624c <pos_alloc_l2+0x4>
1c009eb6:	35fd                	jal	1c009da4 <pos_alloc_init>
1c009eb8:	1c0105b7          	lui	a1,0x1c010
1c009ebc:	00058793          	mv	a5,a1
1c009ec0:	40b2                	lw	ra,12(sp)
1c009ec2:	1c080637          	lui	a2,0x1c080
1c009ec6:	1c006537          	lui	a0,0x1c006
1c009eca:	8e1d                	sub	a2,a2,a5
1c009ecc:	00058593          	mv	a1,a1
1c009ed0:	25050513          	addi	a0,a0,592 # 1c006250 <pos_alloc_l2+0x8>
1c009ed4:	0141                	addi	sp,sp,16
1c009ed6:	b5f9                	j	1c009da4 <pos_alloc_init>
1c009ed8:	8e1d                	sub	a2,a2,a5
1c009eda:	f4c58593          	addi	a1,a1,-180 # 1c00ff4c <__l2_priv1_end+0x6000>
1c009ede:	bfc1                	j	1c009eae <pos_allocs_init+0x36>
1c009ee0:	8e1d                	sub	a2,a2,a5
1c009ee2:	25458593          	addi	a1,a1,596
1c009ee6:	b76d                	j	1c009e90 <pos_allocs_init+0x18>

1c009ee8 <pi_l2_malloc>:
1c009ee8:	85aa                	mv	a1,a0
1c009eea:	1c006537          	lui	a0,0x1c006
1c009eee:	24850513          	addi	a0,a0,584 # 1c006248 <pos_alloc_l2>
1c009ef2:	b5f9                	j	1c009dc0 <pos_alloc>

1c009ef4 <pi_l2_free>:
1c009ef4:	862e                	mv	a2,a1
1c009ef6:	85aa                	mv	a1,a0
1c009ef8:	1c006537          	lui	a0,0x1c006
1c009efc:	24850513          	addi	a0,a0,584 # 1c006248 <pos_alloc_l2>
1c009f00:	bf39                	j	1c009e1e <pos_free>

1c009f02 <__rt_handle_illegal_instr>:
1c009f02:	8082                	ret

1c009f04 <pos_irq_init>:
1c009f04:	1a10a737          	lui	a4,0x1a10a
1c009f08:	f14027f3          	csrr	a5,mhartid
1c009f0c:	56fd                	li	a3,-1
1c009f0e:	8795                	srai	a5,a5,0x5
1c009f10:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c009f14:	03f7f793          	andi	a5,a5,63
1c009f18:	477d                	li	a4,31
1c009f1a:	00e78363          	beq	a5,a4,1c009f20 <pos_irq_init+0x1c>
1c009f1e:	8082                	ret
1c009f20:	1c0087b7          	lui	a5,0x1c008
1c009f24:	00078793          	mv	a5,a5
1c009f28:	0017e793          	ori	a5,a5,1
1c009f2c:	30579073          	csrw	mtvec,a5
1c009f30:	8082                	ret

1c009f32 <pos_soc_event_init>:
1c009f32:	1a1067b7          	lui	a5,0x1a106
1c009f36:	577d                	li	a4,-1
1c009f38:	c3d8                	sw	a4,4(a5)
1c009f3a:	c798                	sw	a4,8(a5)
1c009f3c:	c7d8                	sw	a4,12(a5)
1c009f3e:	cb98                	sw	a4,16(a5)
1c009f40:	cbd8                	sw	a4,20(a5)
1c009f42:	cf98                	sw	a4,24(a5)
1c009f44:	cfd8                	sw	a4,28(a5)
1c009f46:	d398                	sw	a4,32(a5)
1c009f48:	8082                	ret

1c009f4a <_endtext>:
	...
