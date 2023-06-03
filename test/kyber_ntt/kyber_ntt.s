riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	7770106f          	j	1c009f76 <__rt_handle_illegal_instr>
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
1c008084:	6f30106f          	j	1c009f76 <__rt_handle_illegal_instr>

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
1c0080c4:	19028293          	addi	t0,t0,400 # 1c006250 <stack>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	1ac30313          	addi	t1,t1,428 # 1c006274 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	17610113          	addi	sp,sp,374 # 1c006250 <stack>
1c0080e2:	4d9010ef          	jal	ra,1c009dba <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	4f5010ef          	jal	ra,1c009df0 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	50d000ef          	jal	ra,1c008e0e <exit>

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
1c008156:	43b000ef          	jal	ra,1c008d90 <puts>
1c00815a:	6785                	lui	a5,0x1
1c00815c:	757d                	lui	a0,0xfffff
1c00815e:	e0078793          	addi	a5,a5,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c008162:	978a                	add	a5,a5,sp
1c008164:	6a050593          	addi	a1,a0,1696 # fffff6a0 <pulp__FC+0xfffff6a1>
1c008168:	20050513          	addi	a0,a0,512
1c00816c:	95be                	add	a1,a1,a5
1c00816e:	953e                	add	a0,a0,a5
1c008170:	027000ef          	jal	ra,1c008996 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c008174:	1c000537          	lui	a0,0x1c000
1c008178:	12850513          	addi	a0,a0,296 # 1c000128 <__DTOR_END__+0x10c>
1c00817c:	415000ef          	jal	ra,1c008d90 <puts>
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
1c008200:	25440413          	addi	s0,s0,596 # 1c006254 <pos_fll_freq>
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
1c00822c:	25050513          	addi	a0,a0,592 # 1c006250 <stack>
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
1c008268:	25050513          	addi	a0,a0,592 # 1c006250 <stack>
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
1c0082b4:	25478793          	addi	a5,a5,596 # 1c006254 <pos_fll_freq>
1c0082b8:	0007a023          	sw	zero,0(a5)
1c0082bc:	0007a223          	sw	zero,4(a5)
1c0082c0:	1c0067b7          	lui	a5,0x1c006
1c0082c4:	24079823          	sh	zero,592(a5) # 1c006250 <stack>
1c0082c8:	8082                	ret

1c0082ca <pos_soc_init>:
1c0082ca:	1141                	addi	sp,sp,-16
1c0082cc:	c606                	sw	ra,12(sp)
1c0082ce:	c422                	sw	s0,8(sp)
1c0082d0:	37c5                	jal	1c0082b0 <pos_fll_constructor>
1c0082d2:	4501                	li	a0,0
1c0082d4:	3d75                	jal	1c008190 <pos_fll_init>
1c0082d6:	1c006437          	lui	s0,0x1c006
1c0082da:	24a42e23          	sw	a0,604(s0) # 1c00625c <pos_freq_domains>
1c0082de:	4505                	li	a0,1
1c0082e0:	3d45                	jal	1c008190 <pos_fll_init>
1c0082e2:	25c40413          	addi	s0,s0,604
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
1c008356:	1101                	addi	sp,sp,-32
1c008358:	ca26                	sw	s1,20(sp)
1c00835a:	84aa                	mv	s1,a0
1c00835c:	1c000537          	lui	a0,0x1c000
1c008360:	13450513          	addi	a0,a0,308 # 1c000134 <__DTOR_END__+0x118>
1c008364:	c84a                	sw	s2,16(sp)
1c008366:	ce06                	sw	ra,28(sp)
1c008368:	cc22                	sw	s0,24(sp)
1c00836a:	c64e                	sw	s3,12(sp)
1c00836c:	892e                	mv	s2,a1
1c00836e:	223000ef          	jal	ra,1c008d90 <puts>
1c008372:	1a401437          	lui	s0,0x1a401
1c008376:	4785                	li	a5,1
1c008378:	c41c                	sw	a5,8(s0)
1c00837a:	00042423          	sw	zero,8(s0) # 1a401008 <__CTOR_LIST__-0x1bfeffc>
1c00837e:	00042423          	sw	zero,8(s0)
1c008382:	00042423          	sw	zero,8(s0)
1c008386:	00042423          	sw	zero,8(s0)
1c00838a:	00042423          	sw	zero,8(s0)
1c00838e:	00042423          	sw	zero,8(s0)
1c008392:	00042423          	sw	zero,8(s0)
1c008396:	00042423          	sw	zero,8(s0)
1c00839a:	00042423          	sw	zero,8(s0)
1c00839e:	1c000537          	lui	a0,0x1c000
1c0083a2:	14850513          	addi	a0,a0,328 # 1c000148 <__DTOR_END__+0x12c>
1c0083a6:	1eb000ef          	jal	ra,1c008d90 <puts>
1c0083aa:	2004a583          	lw	a1,512(s1)
1c0083ae:	00042423          	sw	zero,8(s0)
1c0083b2:	87ae                	mv	a5,a1
1c0083b4:	40f40633          	sub	a2,s0,a5
1c0083b8:	20058593          	addi	a1,a1,512
1c0083bc:	4394                	lw	a3,0(a5)
1c0083be:	00f60733          	add	a4,a2,a5
1c0083c2:	c314                	sw	a3,0(a4)
1c0083c4:	0791                	addi	a5,a5,4
1c0083c6:	fef59be3          	bne	a1,a5,1c0083bc <KYBER_poly_ntt+0x66>
1c0083ca:	4401                	li	s0,0
1c0083cc:	1c0004b7          	lui	s1,0x1c000
1c0083d0:	49e5                	li	s3,25
1c0083d2:	0405                	addi	s0,s0,1
1c0083d4:	85a2                	mv	a1,s0
1c0083d6:	19c48513          	addi	a0,s1,412 # 1c00019c <__DTOR_END__+0x180>
1c0083da:	251000ef          	jal	ra,1c008e2a <printf>
1c0083de:	ff341ae3          	bne	s0,s3,1c0083d2 <KYBER_poly_ntt+0x7c>
1c0083e2:	1c000537          	lui	a0,0x1c000
1c0083e6:	1a050513          	addi	a0,a0,416 # 1c0001a0 <__DTOR_END__+0x184>
1c0083ea:	1a7000ef          	jal	ra,1c008d90 <puts>
1c0083ee:	1a4017b7          	lui	a5,0x1a401
1c0083f2:	08000713          	li	a4,128
1c0083f6:	c798                	sw	a4,8(a5)
1c0083f8:	1c000537          	lui	a0,0x1c000
1c0083fc:	18050513          	addi	a0,a0,384 # 1c000180 <__DTOR_END__+0x164>
1c008400:	191000ef          	jal	ra,1c008d90 <puts>
1c008404:	4401                	li	s0,0
1c008406:	38800993          	li	s3,904
1c00840a:	0405                	addi	s0,s0,1
1c00840c:	85a2                	mv	a1,s0
1c00840e:	19c48513          	addi	a0,s1,412
1c008412:	219000ef          	jal	ra,1c008e2a <printf>
1c008416:	ff341ae3          	bne	s0,s3,1c00840a <KYBER_poly_ntt+0xb4>
1c00841a:	1c000537          	lui	a0,0x1c000
1c00841e:	19050513          	addi	a0,a0,400 # 1c000190 <__DTOR_END__+0x174>
1c008422:	16f000ef          	jal	ra,1c008d90 <puts>
1c008426:	1a401437          	lui	s0,0x1a401
1c00842a:	47c1                	li	a5,16
1c00842c:	c41c                	sw	a5,8(s0)
1c00842e:	1c000537          	lui	a0,0x1c000
1c008432:	16450513          	addi	a0,a0,356 # 1c000164 <__DTOR_END__+0x148>
1c008436:	15b000ef          	jal	ra,1c008d90 <puts>
1c00843a:	20092503          	lw	a0,512(s2)
1c00843e:	00042423          	sw	zero,8(s0) # 1a401008 <__CTOR_LIST__-0x1bfeffc>
1c008442:	e5bff5b7          	lui	a1,0xe5bff
1c008446:	00440793          	addi	a5,s0,4
1c00844a:	20440613          	addi	a2,s0,516
1c00844e:	4394                	lw	a3,0(a5)
1c008450:	00f50733          	add	a4,a0,a5
1c008454:	972e                	add	a4,a4,a1
1c008456:	fed72e23          	sw	a3,-4(a4)
1c00845a:	0791                	addi	a5,a5,4
1c00845c:	fec799e3          	bne	a5,a2,1c00844e <KYBER_poly_ntt+0xf8>
1c008460:	4401                	li	s0,0
1c008462:	4965                	li	s2,25
1c008464:	0405                	addi	s0,s0,1
1c008466:	85a2                	mv	a1,s0
1c008468:	19c48513          	addi	a0,s1,412
1c00846c:	1bf000ef          	jal	ra,1c008e2a <printf>
1c008470:	ff241ae3          	bne	s0,s2,1c008464 <KYBER_poly_ntt+0x10e>
1c008474:	4462                	lw	s0,24(sp)
1c008476:	40f2                	lw	ra,28(sp)
1c008478:	44d2                	lw	s1,20(sp)
1c00847a:	4942                	lw	s2,16(sp)
1c00847c:	49b2                	lw	s3,12(sp)
1c00847e:	1c000537          	lui	a0,0x1c000
1c008482:	1b450513          	addi	a0,a0,436 # 1c0001b4 <__DTOR_END__+0x198>
1c008486:	6105                	addi	sp,sp,32
1c008488:	1090006f          	j	1c008d90 <puts>

1c00848c <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c00848c:	1141                	addi	sp,sp,-16
1c00848e:	55555337          	lui	t1,0x55555
1c008492:	68c1                	lui	a7,0x10
1c008494:	c622                	sw	s0,12(sp)
1c008496:	c426                	sw	s1,8(sp)
1c008498:	c24a                	sw	s2,4(sp)
1c00849a:	20050e13          	addi	t3,a0,512
1c00849e:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c0084a2:	18fd                	addi	a7,a7,-1
1c0084a4:	419c                	lw	a5,0(a1)
1c0084a6:	0541                	addi	a0,a0,16
1c0084a8:	0017d713          	srli	a4,a5,0x1
1c0084ac:	00677733          	and	a4,a4,t1
1c0084b0:	0067f7b3          	and	a5,a5,t1
1c0084b4:	97ba                	add	a5,a5,a4
1c0084b6:	0027d913          	srli	s2,a5,0x2
1c0084ba:	0087d693          	srli	a3,a5,0x8
1c0084be:	00a7d493          	srli	s1,a5,0xa
1c0084c2:	0107d713          	srli	a4,a5,0x10
1c0084c6:	0127d413          	srli	s0,a5,0x12
1c0084ca:	0037f613          	andi	a2,a5,3
1c0084ce:	00397913          	andi	s2,s2,3
1c0084d2:	8a8d                	andi	a3,a3,3
1c0084d4:	888d                	andi	s1,s1,3
1c0084d6:	8b0d                	andi	a4,a4,3
1c0084d8:	880d                	andi	s0,s0,3
1c0084da:	0047df13          	srli	t5,a5,0x4
1c0084de:	0067d393          	srli	t2,a5,0x6
1c0084e2:	00c7de93          	srli	t4,a5,0xc
1c0084e6:	00e7d293          	srli	t0,a5,0xe
1c0084ea:	0147d813          	srli	a6,a5,0x14
1c0084ee:	0167df93          	srli	t6,a5,0x16
1c0084f2:	41260633          	sub	a2,a2,s2
1c0084f6:	8e85                	sub	a3,a3,s1
1c0084f8:	8f01                	sub	a4,a4,s0
1c0084fa:	0033f393          	andi	t2,t2,3
1c0084fe:	0032f293          	andi	t0,t0,3
1c008502:	003fff93          	andi	t6,t6,3
1c008506:	003f7f13          	andi	t5,t5,3
1c00850a:	003efe93          	andi	t4,t4,3
1c00850e:	00387813          	andi	a6,a6,3
1c008512:	0642                	slli	a2,a2,0x10
1c008514:	06c2                	slli	a3,a3,0x10
1c008516:	0742                	slli	a4,a4,0x10
1c008518:	407f0f33          	sub	t5,t5,t2
1c00851c:	405e8eb3          	sub	t4,t4,t0
1c008520:	41f80833          	sub	a6,a6,t6
1c008524:	0187d293          	srli	t0,a5,0x18
1c008528:	01a7d393          	srli	t2,a5,0x1a
1c00852c:	01c7df93          	srli	t6,a5,0x1c
1c008530:	8241                	srli	a2,a2,0x10
1c008532:	82c1                	srli	a3,a3,0x10
1c008534:	8341                	srli	a4,a4,0x10
1c008536:	0842                	slli	a6,a6,0x10
1c008538:	0f42                	slli	t5,t5,0x10
1c00853a:	01167633          	and	a2,a2,a7
1c00853e:	0ec2                	slli	t4,t4,0x10
1c008540:	0116f6b3          	and	a3,a3,a7
1c008544:	01177733          	and	a4,a4,a7
1c008548:	0032f293          	andi	t0,t0,3
1c00854c:	0033f393          	andi	t2,t2,3
1c008550:	003fff93          	andi	t6,t6,3
1c008554:	83f9                	srli	a5,a5,0x1e
1c008556:	01076733          	or	a4,a4,a6
1c00855a:	01e66633          	or	a2,a2,t5
1c00855e:	01d6e6b3          	or	a3,a3,t4
1c008562:	40728833          	sub	a6,t0,t2
1c008566:	40ff87b3          	sub	a5,t6,a5
1c00856a:	fec52823          	sw	a2,-16(a0)
1c00856e:	fed52a23          	sw	a3,-12(a0)
1c008572:	fee52c23          	sw	a4,-8(a0)
1c008576:	ff051e23          	sh	a6,-4(a0)
1c00857a:	fef51f23          	sh	a5,-2(a0)
1c00857e:	0591                	addi	a1,a1,4
1c008580:	f3c512e3          	bne	a0,t3,1c0084a4 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c008584:	4432                	lw	s0,12(sp)
1c008586:	44a2                	lw	s1,8(sp)
1c008588:	4912                	lw	s2,4(sp)
1c00858a:	0141                	addi	sp,sp,16
1c00858c:	8082                	ret

1c00858e <keccak_absorb.constprop.7>:
1c00858e:	7151                	addi	sp,sp,-240
1c008590:	d3a6                	sw	s1,228(sp)
1c008592:	cfce                	sw	s3,220(sp)
1c008594:	cdd2                	sw	s4,216(sp)
1c008596:	cbd6                	sw	s5,212(sp)
1c008598:	d786                	sw	ra,236(sp)
1c00859a:	d5a2                	sw	s0,232(sp)
1c00859c:	d1ca                	sw	s2,224(sp)
1c00859e:	89aa                	mv	s3,a0
1c0085a0:	8a32                	mv	s4,a2
1c0085a2:	84b6                	mv	s1,a3
1c0085a4:	8aaa                	mv	s5,a0
1c0085a6:	0c850713          	addi	a4,a0,200
1c0085aa:	87aa                	mv	a5,a0
1c0085ac:	4601                	li	a2,0
1c0085ae:	4681                	li	a3,0
1c0085b0:	c390                	sw	a2,0(a5)
1c0085b2:	c3d4                	sw	a3,4(a5)
1c0085b4:	07a1                	addi	a5,a5,8
1c0085b6:	fef71be3          	bne	a4,a5,1c0085ac <keccak_absorb.constprop.7+0x1e>
1c0085ba:	08700793          	li	a5,135
1c0085be:	0747fb63          	bleu	s4,a5,1c008634 <keccak_absorb.constprop.7+0xa6>
1c0085c2:	08700413          	li	s0,135
1c0085c6:	08858913          	addi	s2,a1,136 # e5bff088 <pulp__FC+0xe5bff089>
1c0085ca:	874e                	mv	a4,s3
1c0085cc:	0015c783          	lbu	a5,1(a1)
1c0085d0:	0025c603          	lbu	a2,2(a1)
1c0085d4:	0055c883          	lbu	a7,5(a1)
1c0085d8:	0045c303          	lbu	t1,4(a1)
1c0085dc:	0065c803          	lbu	a6,6(a1)
1c0085e0:	0005ce03          	lbu	t3,0(a1)
1c0085e4:	0035c503          	lbu	a0,3(a1)
1c0085e8:	0075c683          	lbu	a3,7(a1)
1c0085ec:	0642                	slli	a2,a2,0x10
1c0085ee:	07a2                	slli	a5,a5,0x8
1c0085f0:	08a2                	slli	a7,a7,0x8
1c0085f2:	8fd1                	or	a5,a5,a2
1c0085f4:	0068e8b3          	or	a7,a7,t1
1c0085f8:	0842                	slli	a6,a6,0x10
1c0085fa:	00072303          	lw	t1,0(a4)
1c0085fe:	4350                	lw	a2,4(a4)
1c008600:	01c7e7b3          	or	a5,a5,t3
1c008604:	0562                	slli	a0,a0,0x18
1c008606:	01186833          	or	a6,a6,a7
1c00860a:	06e2                	slli	a3,a3,0x18
1c00860c:	8fc9                	or	a5,a5,a0
1c00860e:	0106e6b3          	or	a3,a3,a6
1c008612:	00f347b3          	xor	a5,t1,a5
1c008616:	8eb1                	xor	a3,a3,a2
1c008618:	c31c                	sw	a5,0(a4)
1c00861a:	c354                	sw	a3,4(a4)
1c00861c:	05a1                	addi	a1,a1,8
1c00861e:	0721                	addi	a4,a4,8
1c008620:	fab916e3          	bne	s2,a1,1c0085cc <keccak_absorb.constprop.7+0x3e>
1c008624:	85ce                	mv	a1,s3
1c008626:	854e                	mv	a0,s3
1c008628:	31e1                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c00862a:	f78a0a13          	addi	s4,s4,-136
1c00862e:	85ca                	mv	a1,s2
1c008630:	f9446be3          	bltu	s0,s4,1c0085c6 <keccak_absorb.constprop.7+0x38>
1c008634:	003c                	addi	a5,sp,8
1c008636:	0918                	addi	a4,sp,144
1c008638:	883e                	mv	a6,a5
1c00863a:	4681                	li	a3,0
1c00863c:	00d82023          	sw	a3,0(a6)
1c008640:	0811                	addi	a6,a6,4
1c008642:	ff071ce3          	bne	a4,a6,1c00863a <keccak_absorb.constprop.7+0xac>
1c008646:	060a0463          	beqz	s4,1c0086ae <keccak_absorb.constprop.7+0x120>
1c00864a:	fffa0713          	addi	a4,s4,-1
1c00864e:	4689                	li	a3,2
1c008650:	0ee6f163          	bleu	a4,a3,1c008732 <keccak_absorb.constprop.7+0x1a4>
1c008654:	002a5893          	srli	a7,s4,0x2
1c008658:	862e                	mv	a2,a1
1c00865a:	86be                	mv	a3,a5
1c00865c:	4701                	li	a4,0
1c00865e:	4208                	lw	a0,0(a2)
1c008660:	0705                	addi	a4,a4,1
1c008662:	c288                	sw	a0,0(a3)
1c008664:	0611                	addi	a2,a2,4
1c008666:	0691                	addi	a3,a3,4
1c008668:	ff176be3          	bltu	a4,a7,1c00865e <keccak_absorb.constprop.7+0xd0>
1c00866c:	ffca7713          	andi	a4,s4,-4
1c008670:	02ea0f63          	beq	s4,a4,1c0086ae <keccak_absorb.constprop.7+0x120>
1c008674:	00e586b3          	add	a3,a1,a4
1c008678:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c00867c:	0988                	addi	a0,sp,208
1c00867e:	00e506b3          	add	a3,a0,a4
1c008682:	f2c68c23          	sb	a2,-200(a3)
1c008686:	00170693          	addi	a3,a4,1
1c00868a:	0346f263          	bleu	s4,a3,1c0086ae <keccak_absorb.constprop.7+0x120>
1c00868e:	00d58633          	add	a2,a1,a3
1c008692:	00064603          	lbu	a2,0(a2)
1c008696:	96aa                	add	a3,a3,a0
1c008698:	f2c68c23          	sb	a2,-200(a3)
1c00869c:	0709                	addi	a4,a4,2
1c00869e:	01477863          	bleu	s4,a4,1c0086ae <keccak_absorb.constprop.7+0x120>
1c0086a2:	95ba                	add	a1,a1,a4
1c0086a4:	0005c683          	lbu	a3,0(a1)
1c0086a8:	972a                	add	a4,a4,a0
1c0086aa:	f2d70c23          	sb	a3,-200(a4)
1c0086ae:	0990                	addi	a2,sp,208
1c0086b0:	9a32                	add	s4,s4,a2
1c0086b2:	f29a0c23          	sb	s1,-200(s4)
1c0086b6:	08f14703          	lbu	a4,143(sp)
1c0086ba:	f8076713          	ori	a4,a4,-128
1c0086be:	08e107a3          	sb	a4,143(sp)
1c0086c2:	0017c703          	lbu	a4,1(a5) # 1a401001 <__CTOR_LIST__-0x1bff003>
1c0086c6:	0027c883          	lbu	a7,2(a5)
1c0086ca:	0057c503          	lbu	a0,5(a5)
1c0086ce:	0047c303          	lbu	t1,4(a5)
1c0086d2:	0067c583          	lbu	a1,6(a5)
1c0086d6:	0007ce03          	lbu	t3,0(a5)
1c0086da:	0037c603          	lbu	a2,3(a5)
1c0086de:	0077c683          	lbu	a3,7(a5)
1c0086e2:	08c2                	slli	a7,a7,0x10
1c0086e4:	0722                	slli	a4,a4,0x8
1c0086e6:	0522                	slli	a0,a0,0x8
1c0086e8:	01176733          	or	a4,a4,a7
1c0086ec:	00656533          	or	a0,a0,t1
1c0086f0:	05c2                	slli	a1,a1,0x10
1c0086f2:	000aa303          	lw	t1,0(s5)
1c0086f6:	004aa883          	lw	a7,4(s5)
1c0086fa:	01c76733          	or	a4,a4,t3
1c0086fe:	0662                	slli	a2,a2,0x18
1c008700:	8dc9                	or	a1,a1,a0
1c008702:	06e2                	slli	a3,a3,0x18
1c008704:	8f51                	or	a4,a4,a2
1c008706:	8ecd                	or	a3,a3,a1
1c008708:	00e34733          	xor	a4,t1,a4
1c00870c:	00d8c6b3          	xor	a3,a7,a3
1c008710:	00eaa023          	sw	a4,0(s5)
1c008714:	00daa223          	sw	a3,4(s5)
1c008718:	07a1                	addi	a5,a5,8
1c00871a:	0aa1                	addi	s5,s5,8
1c00871c:	faf813e3          	bne	a6,a5,1c0086c2 <keccak_absorb.constprop.7+0x134>
1c008720:	50be                	lw	ra,236(sp)
1c008722:	542e                	lw	s0,232(sp)
1c008724:	549e                	lw	s1,228(sp)
1c008726:	590e                	lw	s2,224(sp)
1c008728:	49fe                	lw	s3,220(sp)
1c00872a:	4a6e                	lw	s4,216(sp)
1c00872c:	4ade                	lw	s5,212(sp)
1c00872e:	616d                	addi	sp,sp,240
1c008730:	8082                	ret
1c008732:	4701                	li	a4,0
1c008734:	b781                	j	1c008674 <keccak_absorb.constprop.7+0xe6>

1c008736 <shake256>:
1c008736:	7131                	addi	sp,sp,-192
1c008738:	db26                	sw	s1,180(sp)
1c00873a:	d94a                	sw	s2,176(sp)
1c00873c:	08800493          	li	s1,136
1c008740:	892a                	mv	s2,a0
1c008742:	0c800513          	li	a0,200
1c008746:	dd22                	sw	s0,184(sp)
1c008748:	d74e                	sw	s3,172(sp)
1c00874a:	d552                	sw	s4,168(sp)
1c00874c:	df06                	sw	ra,188(sp)
1c00874e:	d356                	sw	s5,164(sp)
1c008750:	d15a                	sw	s6,160(sp)
1c008752:	cf5e                	sw	s7,156(sp)
1c008754:	cd62                	sw	s8,152(sp)
1c008756:	cb66                	sw	s9,148(sp)
1c008758:	89ae                	mv	s3,a1
1c00875a:	8432                	mv	s0,a2
1c00875c:	8a36                	mv	s4,a3
1c00875e:	0295d4b3          	divu	s1,a1,s1
1c008762:	7fa010ef          	jal	ra,1c009f5c <pi_l2_malloc>
1c008766:	20050163          	beqz	a0,1c008968 <shake256+0x232>
1c00876a:	46fd                	li	a3,31
1c00876c:	8652                	mv	a2,s4
1c00876e:	85a2                	mv	a1,s0
1c008770:	8b2a                	mv	s6,a0
1c008772:	3d31                	jal	1c00858e <keccak_absorb.constprop.7>
1c008774:	c4dd                	beqz	s1,1c008822 <shake256+0xec>
1c008776:	00449713          	slli	a4,s1,0x4
1c00877a:	00970433          	add	s0,a4,s1
1c00877e:	040e                	slli	s0,s0,0x3
1c008780:	7bc1                	lui	s7,0xffff0
1c008782:	ff010ab7          	lui	s5,0xff010
1c008786:	01000a37          	lui	s4,0x1000
1c00878a:	412b0c33          	sub	s8,s6,s2
1c00878e:	944a                	add	s0,s0,s2
1c008790:	8cca                	mv	s9,s2
1c008792:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c008796:	1afd                	addi	s5,s5,-1
1c008798:	1a7d                	addi	s4,s4,-1
1c00879a:	85da                	mv	a1,s6
1c00879c:	855a                	mv	a0,s6
1c00879e:	3e89                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c0087a0:	8666                	mv	a2,s9
1c0087a2:	088c8593          	addi	a1,s9,136
1c0087a6:	00cc07b3          	add	a5,s8,a2
1c0087aa:	4388                	lw	a0,0(a5)
1c0087ac:	43d4                	lw	a3,4(a5)
1c0087ae:	00855893          	srli	a7,a0,0x8
1c0087b2:	0086d813          	srli	a6,a3,0x8
1c0087b6:	0ff57713          	andi	a4,a0,255
1c0087ba:	0ff6f793          	andi	a5,a3,255
1c0087be:	0ff8f893          	andi	a7,a7,255
1c0087c2:	0ff87813          	andi	a6,a6,255
1c0087c6:	08a2                	slli	a7,a7,0x8
1c0087c8:	0822                	slli	a6,a6,0x8
1c0087ca:	01777733          	and	a4,a4,s7
1c0087ce:	0177f7b3          	and	a5,a5,s7
1c0087d2:	01176733          	or	a4,a4,a7
1c0087d6:	0107e7b3          	or	a5,a5,a6
1c0087da:	00ff08b7          	lui	a7,0xff0
1c0087de:	00ff0837          	lui	a6,0xff0
1c0087e2:	011578b3          	and	a7,a0,a7
1c0087e6:	0106f833          	and	a6,a3,a6
1c0087ea:	01577733          	and	a4,a4,s5
1c0087ee:	0157f7b3          	and	a5,a5,s5
1c0087f2:	01176733          	or	a4,a4,a7
1c0087f6:	8161                	srli	a0,a0,0x18
1c0087f8:	0107e7b3          	or	a5,a5,a6
1c0087fc:	82e1                	srli	a3,a3,0x18
1c0087fe:	0562                	slli	a0,a0,0x18
1c008800:	01477733          	and	a4,a4,s4
1c008804:	06e2                	slli	a3,a3,0x18
1c008806:	0147f7b3          	and	a5,a5,s4
1c00880a:	8f49                	or	a4,a4,a0
1c00880c:	8fd5                	or	a5,a5,a3
1c00880e:	c218                	sw	a4,0(a2)
1c008810:	c25c                	sw	a5,4(a2)
1c008812:	0621                	addi	a2,a2,8
1c008814:	f8c599e3          	bne	a1,a2,1c0087a6 <shake256+0x70>
1c008818:	8cae                	mv	s9,a1
1c00881a:	f78c0c13          	addi	s8,s8,-136
1c00881e:	f6b41ee3          	bne	s0,a1,1c00879a <shake256+0x64>
1c008822:	08800793          	li	a5,136
1c008826:	02f9f9b3          	remu	s3,s3,a5
1c00882a:	02099363          	bnez	s3,1c008850 <shake256+0x11a>
1c00882e:	546a                	lw	s0,184(sp)
1c008830:	50fa                	lw	ra,188(sp)
1c008832:	54da                	lw	s1,180(sp)
1c008834:	594a                	lw	s2,176(sp)
1c008836:	59ba                	lw	s3,172(sp)
1c008838:	5a2a                	lw	s4,168(sp)
1c00883a:	5a9a                	lw	s5,164(sp)
1c00883c:	4bfa                	lw	s7,156(sp)
1c00883e:	4c6a                	lw	s8,152(sp)
1c008840:	4cda                	lw	s9,148(sp)
1c008842:	855a                	mv	a0,s6
1c008844:	5b0a                	lw	s6,160(sp)
1c008846:	0c800593          	li	a1,200
1c00884a:	6129                	addi	sp,sp,192
1c00884c:	71c0106f          	j	1c009f68 <pi_l2_free>
1c008850:	85da                	mv	a1,s6
1c008852:	855a                	mv	a0,s6
1c008854:	3c71                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c008856:	002c                	addi	a1,sp,8
1c008858:	78c1                	lui	a7,0xffff0
1c00885a:	ff010837          	lui	a6,0xff010
1c00885e:	01000537          	lui	a0,0x1000
1c008862:	09010e13          	addi	t3,sp,144
1c008866:	862e                	mv	a2,a1
1c008868:	40bb0333          	sub	t1,s6,a1
1c00886c:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c008870:	187d                	addi	a6,a6,-1
1c008872:	157d                	addi	a0,a0,-1
1c008874:	00c307b3          	add	a5,t1,a2
1c008878:	0007ae83          	lw	t4,0(a5)
1c00887c:	43d4                	lw	a3,4(a5)
1c00887e:	008edf93          	srli	t6,t4,0x8
1c008882:	0086df13          	srli	t5,a3,0x8
1c008886:	0ffef713          	andi	a4,t4,255
1c00888a:	0ff6f793          	andi	a5,a3,255
1c00888e:	0fffff93          	andi	t6,t6,255
1c008892:	0fff7f13          	andi	t5,t5,255
1c008896:	0fa2                	slli	t6,t6,0x8
1c008898:	0f22                	slli	t5,t5,0x8
1c00889a:	01177733          	and	a4,a4,a7
1c00889e:	0117f7b3          	and	a5,a5,a7
1c0088a2:	01f76733          	or	a4,a4,t6
1c0088a6:	01e7e7b3          	or	a5,a5,t5
1c0088aa:	00ff0fb7          	lui	t6,0xff0
1c0088ae:	00ff0f37          	lui	t5,0xff0
1c0088b2:	01feffb3          	and	t6,t4,t6
1c0088b6:	01e6ff33          	and	t5,a3,t5
1c0088ba:	01077733          	and	a4,a4,a6
1c0088be:	0107f7b3          	and	a5,a5,a6
1c0088c2:	01f76733          	or	a4,a4,t6
1c0088c6:	018ede93          	srli	t4,t4,0x18
1c0088ca:	01e7e7b3          	or	a5,a5,t5
1c0088ce:	82e1                	srli	a3,a3,0x18
1c0088d0:	0ee2                	slli	t4,t4,0x18
1c0088d2:	8f69                	and	a4,a4,a0
1c0088d4:	06e2                	slli	a3,a3,0x18
1c0088d6:	8fe9                	and	a5,a5,a0
1c0088d8:	01d76733          	or	a4,a4,t4
1c0088dc:	8fd5                	or	a5,a5,a3
1c0088de:	c218                	sw	a4,0(a2)
1c0088e0:	c25c                	sw	a5,4(a2)
1c0088e2:	0621                	addi	a2,a2,8
1c0088e4:	f8ce18e3          	bne	t3,a2,1c008874 <shake256+0x13e>
1c0088e8:	fff98793          	addi	a5,s3,-1
1c0088ec:	4709                	li	a4,2
1c0088ee:	06f77963          	bleu	a5,a4,1c008960 <shake256+0x22a>
1c0088f2:	00449713          	slli	a4,s1,0x4
1c0088f6:	009707b3          	add	a5,a4,s1
1c0088fa:	078e                	slli	a5,a5,0x3
1c0088fc:	0029d513          	srli	a0,s3,0x2
1c008900:	97ca                	add	a5,a5,s2
1c008902:	4681                	li	a3,0
1c008904:	4190                	lw	a2,0(a1)
1c008906:	0685                	addi	a3,a3,1
1c008908:	c390                	sw	a2,0(a5)
1c00890a:	0591                	addi	a1,a1,4
1c00890c:	0791                	addi	a5,a5,4
1c00890e:	fea6ebe3          	bltu	a3,a0,1c008904 <shake256+0x1ce>
1c008912:	ffc9f693          	andi	a3,s3,-4
1c008916:	f0d98ce3          	beq	s3,a3,1c00882e <shake256+0xf8>
1c00891a:	009707b3          	add	a5,a4,s1
1c00891e:	090c                	addi	a1,sp,144
1c008920:	00d58733          	add	a4,a1,a3
1c008924:	078e                	slli	a5,a5,0x3
1c008926:	f7874603          	lbu	a2,-136(a4)
1c00892a:	97ca                	add	a5,a5,s2
1c00892c:	00d78733          	add	a4,a5,a3
1c008930:	00c70023          	sb	a2,0(a4)
1c008934:	00168713          	addi	a4,a3,1
1c008938:	ef377be3          	bleu	s3,a4,1c00882e <shake256+0xf8>
1c00893c:	00e58633          	add	a2,a1,a4
1c008940:	f7864603          	lbu	a2,-136(a2)
1c008944:	973e                	add	a4,a4,a5
1c008946:	00c70023          	sb	a2,0(a4)
1c00894a:	0689                	addi	a3,a3,2
1c00894c:	ef36f1e3          	bleu	s3,a3,1c00882e <shake256+0xf8>
1c008950:	00d58733          	add	a4,a1,a3
1c008954:	f7874703          	lbu	a4,-136(a4)
1c008958:	97b6                	add	a5,a5,a3
1c00895a:	00e78023          	sb	a4,0(a5)
1c00895e:	bdc1                	j	1c00882e <shake256+0xf8>
1c008960:	4681                	li	a3,0
1c008962:	00449713          	slli	a4,s1,0x4
1c008966:	bf55                	j	1c00891a <shake256+0x1e4>
1c008968:	06f00513          	li	a0,111
1c00896c:	214d                	jal	1c008e0e <exit>

1c00896e <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c00896e:	9b010113          	addi	sp,sp,-1616
1c008972:	100c                	addi	a1,sp,32
1c008974:	4601                	li	a2,0
1c008976:	0088                	addi	a0,sp,64
1c008978:	64112623          	sw	ra,1612(sp)
1c00897c:	2025                	jal	1c0089a4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00897e:	1c000537          	lui	a0,0x1c000
1c008982:	1c850513          	addi	a0,a0,456 # 1c0001c8 <__DTOR_END__+0x1ac>
1c008986:	2129                	jal	1c008d90 <puts>
1c008988:	0088                	addi	a0,sp,64
1c00898a:	2835                	jal	1c0089c6 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00898c:	64c12083          	lw	ra,1612(sp)
1c008990:	65010113          	addi	sp,sp,1616
1c008994:	8082                	ret

1c008996 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c008996:	1141                	addi	sp,sp,-16
1c008998:	c606                	sw	ra,12(sp)
1c00899a:	3fd1                	jal	1c00896e <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c00899c:	40b2                	lw	ra,12(sp)
1c00899e:	4501                	li	a0,0
1c0089a0:	0141                	addi	sp,sp,16
1c0089a2:	8082                	ret

1c0089a4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c0089a4:	7175                	addi	sp,sp,-144
1c0089a6:	c522                	sw	s0,136(sp)
1c0089a8:	86b2                	mv	a3,a2
1c0089aa:	842a                	mv	s0,a0
1c0089ac:	862e                	mv	a2,a1
1c0089ae:	850a                	mv	a0,sp
1c0089b0:	08000593          	li	a1,128
1c0089b4:	c706                	sw	ra,140(sp)
1c0089b6:	20c9                	jal	1c008a78 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c0089b8:	858a                	mv	a1,sp
1c0089ba:	8522                	mv	a0,s0
1c0089bc:	3cc1                	jal	1c00848c <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c0089be:	40ba                	lw	ra,140(sp)
1c0089c0:	442a                	lw	s0,136(sp)
1c0089c2:	6149                	addi	sp,sp,144
1c0089c4:	8082                	ret

1c0089c6 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c0089c6:	9f010113          	addi	sp,sp,-1552
1c0089ca:	85aa                	mv	a1,a0
1c0089cc:	20000613          	li	a2,512
1c0089d0:	40010513          	addi	a0,sp,1024
1c0089d4:	60112623          	sw	ra,1548(sp)
1c0089d8:	60812423          	sw	s0,1544(sp)
1c0089dc:	60912223          	sw	s1,1540(sp)
1c0089e0:	61212023          	sw	s2,1536(sp)
1c0089e4:	28cd                	jal	1c008ad6 <memcpy>
1c0089e6:	6541                	lui	a0,0x10
1c0089e8:	40010693          	addi	a3,sp,1024
1c0089ec:	4601                	li	a2,0
1c0089ee:	157d                	addi	a0,a0,-1
1c0089f0:	10000813          	li	a6,256
1c0089f4:	00069703          	lh	a4,0(a3)
1c0089f8:	00269583          	lh	a1,2(a3)
1c0089fc:	00165793          	srli	a5,a2,0x1
1c008a00:	078a                	slli	a5,a5,0x2
1c008a02:	0742                	slli	a4,a4,0x10
1c008a04:	8de9                	and	a1,a1,a0
1c008a06:	60010893          	addi	a7,sp,1536
1c008a0a:	97c6                	add	a5,a5,a7
1c008a0c:	8f4d                	or	a4,a4,a1
1c008a0e:	a0e7a023          	sw	a4,-1536(a5)
1c008a12:	0609                	addi	a2,a2,2
1c008a14:	0691                	addi	a3,a3,4
1c008a16:	fd061fe3          	bne	a2,a6,1c0089f4 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x2e>
1c008a1a:	848a                	mv	s1,sp
1c008a1c:	0400                	addi	s0,sp,512
1c008a1e:	1c000937          	lui	s2,0x1c000
1c008a22:	408c                	lw	a1,0(s1)
1c008a24:	1dc90513          	addi	a0,s2,476 # 1c0001dc <__DTOR_END__+0x1c0>
1c008a28:	0491                	addi	s1,s1,4
1c008a2a:	2101                	jal	1c008e2a <printf>
1c008a2c:	fe941be3          	bne	s0,s1,1c008a22 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x5c>
1c008a30:	1c000537          	lui	a0,0x1c000
1c008a34:	1e450513          	addi	a0,a0,484 # 1c0001e4 <__DTOR_END__+0x1c8>
1c008a38:	2ea1                	jal	1c008d90 <puts>
1c008a3a:	60012583          	lw	a1,1536(sp)
1c008a3e:	40012503          	lw	a0,1024(sp)
1c008a42:	60010913          	addi	s2,sp,1536
1c008a46:	3a01                	jal	1c008356 <KYBER_poly_ntt>
1c008a48:	1c0004b7          	lui	s1,0x1c000
1c008a4c:	400c                	lw	a1,0(s0)
1c008a4e:	20848513          	addi	a0,s1,520 # 1c000208 <__DTOR_END__+0x1ec>
1c008a52:	0411                	addi	s0,s0,4
1c008a54:	2ed9                	jal	1c008e2a <printf>
1c008a56:	fe891be3          	bne	s2,s0,1c008a4c <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x86>
1c008a5a:	60812403          	lw	s0,1544(sp)
1c008a5e:	60c12083          	lw	ra,1548(sp)
1c008a62:	60412483          	lw	s1,1540(sp)
1c008a66:	60012903          	lw	s2,1536(sp)
1c008a6a:	1c000537          	lui	a0,0x1c000
1c008a6e:	21050513          	addi	a0,a0,528 # 1c000210 <__DTOR_END__+0x1f4>
1c008a72:	61010113          	addi	sp,sp,1552
1c008a76:	ae29                	j	1c008d90 <puts>

1c008a78 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c008a78:	7139                	addi	sp,sp,-64
1c008a7a:	87b2                	mv	a5,a2
1c008a7c:	da26                	sw	s1,52(sp)
1c008a7e:	d84a                	sw	s2,48(sp)
1c008a80:	84aa                	mv	s1,a0
1c008a82:	892e                	mv	s2,a1
1c008a84:	02000613          	li	a2,32
1c008a88:	85be                	mv	a1,a5
1c008a8a:	0068                	addi	a0,sp,12
1c008a8c:	de06                	sw	ra,60(sp)
1c008a8e:	dc22                	sw	s0,56(sp)
1c008a90:	8436                	mv	s0,a3
1c008a92:	2091                	jal	1c008ad6 <memcpy>
1c008a94:	0070                	addi	a2,sp,12
1c008a96:	85ca                	mv	a1,s2
1c008a98:	8526                	mv	a0,s1
1c008a9a:	02100693          	li	a3,33
1c008a9e:	02810623          	sb	s0,44(sp)
1c008aa2:	3951                	jal	1c008736 <shake256>
1c008aa4:	50f2                	lw	ra,60(sp)
1c008aa6:	5462                	lw	s0,56(sp)
1c008aa8:	54d2                	lw	s1,52(sp)
1c008aaa:	5942                	lw	s2,48(sp)
1c008aac:	6121                	addi	sp,sp,64
1c008aae:	8082                	ret

1c008ab0 <pos_wait_forever>:
1c008ab0:	f14027f3          	csrr	a5,mhartid
1c008ab4:	8795                	srai	a5,a5,0x5
1c008ab6:	03f7f793          	andi	a5,a5,63
1c008aba:	477d                	li	a4,31
1c008abc:	00e78363          	beq	a5,a4,1c008ac2 <pos_wait_forever+0x12>
1c008ac0:	a001                	j	1c008ac0 <pos_wait_forever+0x10>
1c008ac2:	1a10a7b7          	lui	a5,0x1a10a
1c008ac6:	577d                	li	a4,-1
1c008ac8:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c008acc:	10500073          	wfi
1c008ad0:	10500073          	wfi
1c008ad4:	bfe5                	j	1c008acc <pos_wait_forever+0x1c>

1c008ad6 <memcpy>:
1c008ad6:	00b567b3          	or	a5,a0,a1
1c008ada:	8b8d                	andi	a5,a5,3
1c008adc:	10078f63          	beqz	a5,1c008bfa <memcpy+0x124>
1c008ae0:	14060063          	beqz	a2,1c008c20 <memcpy+0x14a>
1c008ae4:	00458793          	addi	a5,a1,4
1c008ae8:	00450693          	addi	a3,a0,4
1c008aec:	00f537b3          	sltu	a5,a0,a5
1c008af0:	00d5b6b3          	sltu	a3,a1,a3
1c008af4:	0017c793          	xori	a5,a5,1
1c008af8:	0016c693          	xori	a3,a3,1
1c008afc:	873e                	mv	a4,a5
1c008afe:	87b6                	mv	a5,a3
1c008b00:	8fd9                	or	a5,a5,a4
1c008b02:	0ff7f793          	andi	a5,a5,255
1c008b06:	cff9                	beqz	a5,1c008be4 <memcpy+0x10e>
1c008b08:	00863793          	sltiu	a5,a2,8
1c008b0c:	0017c793          	xori	a5,a5,1
1c008b10:	0ff7f793          	andi	a5,a5,255
1c008b14:	cbe1                	beqz	a5,1c008be4 <memcpy+0x10e>
1c008b16:	40b007b3          	neg	a5,a1
1c008b1a:	8b8d                	andi	a5,a5,3
1c008b1c:	fff60313          	addi	t1,a2,-1
1c008b20:	cfe5                	beqz	a5,1c008c18 <memcpy+0x142>
1c008b22:	0005c683          	lbu	a3,0(a1)
1c008b26:	4705                	li	a4,1
1c008b28:	00d50023          	sb	a3,0(a0)
1c008b2c:	00158893          	addi	a7,a1,1
1c008b30:	00150813          	addi	a6,a0,1
1c008b34:	02e78963          	beq	a5,a4,1c008b66 <memcpy+0x90>
1c008b38:	0015c683          	lbu	a3,1(a1)
1c008b3c:	470d                	li	a4,3
1c008b3e:	00d500a3          	sb	a3,1(a0)
1c008b42:	00258893          	addi	a7,a1,2
1c008b46:	00250813          	addi	a6,a0,2
1c008b4a:	ffe60313          	addi	t1,a2,-2
1c008b4e:	00e79c63          	bne	a5,a4,1c008b66 <memcpy+0x90>
1c008b52:	0025c703          	lbu	a4,2(a1)
1c008b56:	00358893          	addi	a7,a1,3
1c008b5a:	00350813          	addi	a6,a0,3
1c008b5e:	00e50123          	sb	a4,2(a0)
1c008b62:	ffd60313          	addi	t1,a2,-3
1c008b66:	8e1d                	sub	a2,a2,a5
1c008b68:	95be                	add	a1,a1,a5
1c008b6a:	00265e13          	srli	t3,a2,0x2
1c008b6e:	97aa                	add	a5,a5,a0
1c008b70:	4701                	li	a4,0
1c008b72:	4194                	lw	a3,0(a1)
1c008b74:	0705                	addi	a4,a4,1
1c008b76:	c394                	sw	a3,0(a5)
1c008b78:	0591                	addi	a1,a1,4
1c008b7a:	0791                	addi	a5,a5,4
1c008b7c:	ffc76be3          	bltu	a4,t3,1c008b72 <memcpy+0x9c>
1c008b80:	ffc67593          	andi	a1,a2,-4
1c008b84:	40b306b3          	sub	a3,t1,a1
1c008b88:	00b807b3          	add	a5,a6,a1
1c008b8c:	00b88733          	add	a4,a7,a1
1c008b90:	06b60463          	beq	a2,a1,1c008bf8 <memcpy+0x122>
1c008b94:	00074583          	lbu	a1,0(a4)
1c008b98:	fff68613          	addi	a2,a3,-1
1c008b9c:	00b78023          	sb	a1,0(a5)
1c008ba0:	ce21                	beqz	a2,1c008bf8 <memcpy+0x122>
1c008ba2:	00174583          	lbu	a1,1(a4)
1c008ba6:	ffe68613          	addi	a2,a3,-2
1c008baa:	00b780a3          	sb	a1,1(a5)
1c008bae:	c629                	beqz	a2,1c008bf8 <memcpy+0x122>
1c008bb0:	00274583          	lbu	a1,2(a4)
1c008bb4:	ffd68613          	addi	a2,a3,-3
1c008bb8:	00b78123          	sb	a1,2(a5)
1c008bbc:	ce15                	beqz	a2,1c008bf8 <memcpy+0x122>
1c008bbe:	00374583          	lbu	a1,3(a4)
1c008bc2:	ffc68613          	addi	a2,a3,-4
1c008bc6:	00b781a3          	sb	a1,3(a5)
1c008bca:	c61d                	beqz	a2,1c008bf8 <memcpy+0x122>
1c008bcc:	00474583          	lbu	a1,4(a4)
1c008bd0:	4615                	li	a2,5
1c008bd2:	00b78223          	sb	a1,4(a5)
1c008bd6:	02c68163          	beq	a3,a2,1c008bf8 <memcpy+0x122>
1c008bda:	00574703          	lbu	a4,5(a4)
1c008bde:	00e782a3          	sb	a4,5(a5)
1c008be2:	8082                	ret
1c008be4:	962e                	add	a2,a2,a1
1c008be6:	87aa                	mv	a5,a0
1c008be8:	0585                	addi	a1,a1,1
1c008bea:	fff5c703          	lbu	a4,-1(a1)
1c008bee:	0785                	addi	a5,a5,1
1c008bf0:	fee78fa3          	sb	a4,-1(a5)
1c008bf4:	fec59ae3          	bne	a1,a2,1c008be8 <memcpy+0x112>
1c008bf8:	8082                	ret
1c008bfa:	00367793          	andi	a5,a2,3
1c008bfe:	ee0793e3          	bnez	a5,1c008ae4 <memcpy+0xe>
1c008c02:	da7d                	beqz	a2,1c008bf8 <memcpy+0x122>
1c008c04:	87aa                	mv	a5,a0
1c008c06:	0591                	addi	a1,a1,4
1c008c08:	ffc5a703          	lw	a4,-4(a1)
1c008c0c:	0791                	addi	a5,a5,4
1c008c0e:	fee7ae23          	sw	a4,-4(a5)
1c008c12:	1671                	addi	a2,a2,-4
1c008c14:	fa6d                	bnez	a2,1c008c06 <memcpy+0x130>
1c008c16:	8082                	ret
1c008c18:	88ae                	mv	a7,a1
1c008c1a:	882a                	mv	a6,a0
1c008c1c:	8332                	mv	t1,a2
1c008c1e:	b7a1                	j	1c008b66 <memcpy+0x90>
1c008c20:	8082                	ret

1c008c22 <memmove>:
1c008c22:	40b507b3          	sub	a5,a0,a1
1c008c26:	10c7e463          	bltu	a5,a2,1c008d2e <memmove+0x10c>
1c008c2a:	12060b63          	beqz	a2,1c008d60 <memmove+0x13e>
1c008c2e:	00458793          	addi	a5,a1,4
1c008c32:	00450693          	addi	a3,a0,4
1c008c36:	00f537b3          	sltu	a5,a0,a5
1c008c3a:	00d5b6b3          	sltu	a3,a1,a3
1c008c3e:	0017c793          	xori	a5,a5,1
1c008c42:	0016c693          	xori	a3,a3,1
1c008c46:	873e                	mv	a4,a5
1c008c48:	87b6                	mv	a5,a3
1c008c4a:	8fd9                	or	a5,a5,a4
1c008c4c:	0ff7f793          	andi	a5,a5,255
1c008c50:	cfed                	beqz	a5,1c008d4a <memmove+0x128>
1c008c52:	00863793          	sltiu	a5,a2,8
1c008c56:	0017c793          	xori	a5,a5,1
1c008c5a:	0ff7f793          	andi	a5,a5,255
1c008c5e:	c7f5                	beqz	a5,1c008d4a <memmove+0x128>
1c008c60:	40b007b3          	neg	a5,a1
1c008c64:	8b8d                	andi	a5,a5,3
1c008c66:	fff60313          	addi	t1,a2,-1
1c008c6a:	cfe5                	beqz	a5,1c008d62 <memmove+0x140>
1c008c6c:	0005c683          	lbu	a3,0(a1)
1c008c70:	4705                	li	a4,1
1c008c72:	00d50023          	sb	a3,0(a0)
1c008c76:	00150813          	addi	a6,a0,1
1c008c7a:	00158893          	addi	a7,a1,1
1c008c7e:	02e78963          	beq	a5,a4,1c008cb0 <memmove+0x8e>
1c008c82:	0015c683          	lbu	a3,1(a1)
1c008c86:	470d                	li	a4,3
1c008c88:	00d500a3          	sb	a3,1(a0)
1c008c8c:	00250813          	addi	a6,a0,2
1c008c90:	00258893          	addi	a7,a1,2
1c008c94:	ffe60313          	addi	t1,a2,-2
1c008c98:	00e79c63          	bne	a5,a4,1c008cb0 <memmove+0x8e>
1c008c9c:	0025c703          	lbu	a4,2(a1)
1c008ca0:	00350813          	addi	a6,a0,3
1c008ca4:	00e50123          	sb	a4,2(a0)
1c008ca8:	00358893          	addi	a7,a1,3
1c008cac:	ffd60313          	addi	t1,a2,-3
1c008cb0:	8e1d                	sub	a2,a2,a5
1c008cb2:	95be                	add	a1,a1,a5
1c008cb4:	00265e13          	srli	t3,a2,0x2
1c008cb8:	97aa                	add	a5,a5,a0
1c008cba:	4701                	li	a4,0
1c008cbc:	4194                	lw	a3,0(a1)
1c008cbe:	0705                	addi	a4,a4,1
1c008cc0:	c394                	sw	a3,0(a5)
1c008cc2:	0591                	addi	a1,a1,4
1c008cc4:	0791                	addi	a5,a5,4
1c008cc6:	ffc76be3          	bltu	a4,t3,1c008cbc <memmove+0x9a>
1c008cca:	ffc67593          	andi	a1,a2,-4
1c008cce:	40b306b3          	sub	a3,t1,a1
1c008cd2:	00b807b3          	add	a5,a6,a1
1c008cd6:	00b88733          	add	a4,a7,a1
1c008cda:	08b60263          	beq	a2,a1,1c008d5e <memmove+0x13c>
1c008cde:	00074583          	lbu	a1,0(a4)
1c008ce2:	fff68613          	addi	a2,a3,-1
1c008ce6:	00b78023          	sb	a1,0(a5)
1c008cea:	ca35                	beqz	a2,1c008d5e <memmove+0x13c>
1c008cec:	00174583          	lbu	a1,1(a4)
1c008cf0:	ffe68613          	addi	a2,a3,-2
1c008cf4:	00b780a3          	sb	a1,1(a5)
1c008cf8:	c23d                	beqz	a2,1c008d5e <memmove+0x13c>
1c008cfa:	00274583          	lbu	a1,2(a4)
1c008cfe:	ffd68613          	addi	a2,a3,-3
1c008d02:	00b78123          	sb	a1,2(a5)
1c008d06:	ce21                	beqz	a2,1c008d5e <memmove+0x13c>
1c008d08:	00374583          	lbu	a1,3(a4)
1c008d0c:	ffc68613          	addi	a2,a3,-4
1c008d10:	00b781a3          	sb	a1,3(a5)
1c008d14:	c629                	beqz	a2,1c008d5e <memmove+0x13c>
1c008d16:	00474583          	lbu	a1,4(a4)
1c008d1a:	4615                	li	a2,5
1c008d1c:	00b78223          	sb	a1,4(a5)
1c008d20:	02c68f63          	beq	a3,a2,1c008d5e <memmove+0x13c>
1c008d24:	00574703          	lbu	a4,5(a4)
1c008d28:	00e782a3          	sb	a4,5(a5)
1c008d2c:	8082                	ret
1c008d2e:	167d                	addi	a2,a2,-1
1c008d30:	00c587b3          	add	a5,a1,a2
1c008d34:	962a                	add	a2,a2,a0
1c008d36:	15fd                	addi	a1,a1,-1
1c008d38:	0007c703          	lbu	a4,0(a5)
1c008d3c:	17fd                	addi	a5,a5,-1
1c008d3e:	00e60023          	sb	a4,0(a2)
1c008d42:	167d                	addi	a2,a2,-1
1c008d44:	feb79ae3          	bne	a5,a1,1c008d38 <memmove+0x116>
1c008d48:	8082                	ret
1c008d4a:	962a                	add	a2,a2,a0
1c008d4c:	87aa                	mv	a5,a0
1c008d4e:	0005c703          	lbu	a4,0(a1)
1c008d52:	0785                	addi	a5,a5,1
1c008d54:	fee78fa3          	sb	a4,-1(a5)
1c008d58:	0585                	addi	a1,a1,1
1c008d5a:	fec79ae3          	bne	a5,a2,1c008d4e <memmove+0x12c>
1c008d5e:	8082                	ret
1c008d60:	8082                	ret
1c008d62:	88ae                	mv	a7,a1
1c008d64:	882a                	mv	a6,a0
1c008d66:	8332                	mv	t1,a2
1c008d68:	b7a1                	j	1c008cb0 <memmove+0x8e>

1c008d6a <strchr>:
1c008d6a:	00054783          	lbu	a5,0(a0)
1c008d6e:	0ff5f593          	andi	a1,a1,255
1c008d72:	00b78863          	beq	a5,a1,1c008d82 <strchr+0x18>
1c008d76:	c799                	beqz	a5,1c008d84 <strchr+0x1a>
1c008d78:	0505                	addi	a0,a0,1
1c008d7a:	00054783          	lbu	a5,0(a0)
1c008d7e:	feb79ce3          	bne	a5,a1,1c008d76 <strchr+0xc>
1c008d82:	8082                	ret
1c008d84:	0015b593          	seqz	a1,a1
1c008d88:	40b005b3          	neg	a1,a1
1c008d8c:	8d6d                	and	a0,a0,a1
1c008d8e:	8082                	ret

1c008d90 <puts>:
1c008d90:	00054783          	lbu	a5,0(a0)
1c008d94:	c78d                	beqz	a5,1c008dbe <puts+0x2e>
1c008d96:	f14026f3          	csrr	a3,mhartid
1c008d9a:	00369713          	slli	a4,a3,0x3
1c008d9e:	1a10f637          	lui	a2,0x1a10f
1c008da2:	0ff77713          	andi	a4,a4,255
1c008da6:	9732                	add	a4,a4,a2
1c008da8:	6609                	lui	a2,0x2
1c008daa:	068a                	slli	a3,a3,0x2
1c008dac:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008db0:	8ef1                	and	a3,a3,a2
1c008db2:	9736                	add	a4,a4,a3
1c008db4:	c31c                	sw	a5,0(a4)
1c008db6:	0505                	addi	a0,a0,1
1c008db8:	00054783          	lbu	a5,0(a0)
1c008dbc:	ffe5                	bnez	a5,1c008db4 <puts+0x24>
1c008dbe:	f1402773          	csrr	a4,mhartid
1c008dc2:	00371793          	slli	a5,a4,0x3
1c008dc6:	1a10f6b7          	lui	a3,0x1a10f
1c008dca:	0ff7f793          	andi	a5,a5,255
1c008dce:	97b6                	add	a5,a5,a3
1c008dd0:	6689                	lui	a3,0x2
1c008dd2:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008dd6:	070a                	slli	a4,a4,0x2
1c008dd8:	8f75                	and	a4,a4,a3
1c008dda:	97ba                	add	a5,a5,a4
1c008ddc:	4729                	li	a4,10
1c008dde:	c398                	sw	a4,0(a5)
1c008de0:	4501                	li	a0,0
1c008de2:	8082                	ret

1c008de4 <pos_libc_fputc_locked>:
1c008de4:	6689                	lui	a3,0x2
1c008de6:	f14027f3          	csrr	a5,mhartid
1c008dea:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008dee:	00379713          	slli	a4,a5,0x3
1c008df2:	078a                	slli	a5,a5,0x2
1c008df4:	8ff5                	and	a5,a5,a3
1c008df6:	0ff77713          	andi	a4,a4,255
1c008dfa:	1a10f6b7          	lui	a3,0x1a10f
1c008dfe:	9736                	add	a4,a4,a3
1c008e00:	0ff57513          	andi	a0,a0,255
1c008e04:	97ba                	add	a5,a5,a4
1c008e06:	c388                	sw	a0,0(a5)
1c008e08:	4501                	li	a0,0
1c008e0a:	8082                	ret

1c008e0c <pos_libc_prf_locked>:
1c008e0c:	a0b1                	j	1c008e58 <pos_libc_prf>

1c008e0e <exit>:
1c008e0e:	800007b7          	lui	a5,0x80000
1c008e12:	1141                	addi	sp,sp,-16
1c008e14:	8d5d                	or	a0,a0,a5
1c008e16:	c606                	sw	ra,12(sp)
1c008e18:	1a1047b7          	lui	a5,0x1a104
1c008e1c:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008e20:	3941                	jal	1c008ab0 <pos_wait_forever>

1c008e22 <pos_io_start>:
1c008e22:	4501                	li	a0,0
1c008e24:	8082                	ret

1c008e26 <pos_io_stop>:
1c008e26:	4501                	li	a0,0
1c008e28:	8082                	ret

1c008e2a <printf>:
1c008e2a:	7139                	addi	sp,sp,-64
1c008e2c:	02410313          	addi	t1,sp,36
1c008e30:	d432                	sw	a2,40(sp)
1c008e32:	862a                	mv	a2,a0
1c008e34:	1c009537          	lui	a0,0x1c009
1c008e38:	d22e                	sw	a1,36(sp)
1c008e3a:	d636                	sw	a3,44(sp)
1c008e3c:	4589                	li	a1,2
1c008e3e:	869a                	mv	a3,t1
1c008e40:	de450513          	addi	a0,a0,-540 # 1c008de4 <pos_libc_fputc_locked>
1c008e44:	ce06                	sw	ra,28(sp)
1c008e46:	d83a                	sw	a4,48(sp)
1c008e48:	da3e                	sw	a5,52(sp)
1c008e4a:	dc42                	sw	a6,56(sp)
1c008e4c:	de46                	sw	a7,60(sp)
1c008e4e:	c61a                	sw	t1,12(sp)
1c008e50:	3f75                	jal	1c008e0c <pos_libc_prf_locked>
1c008e52:	40f2                	lw	ra,28(sp)
1c008e54:	6121                	addi	sp,sp,64
1c008e56:	8082                	ret

1c008e58 <pos_libc_prf>:
1c008e58:	7169                	addi	sp,sp,-304
1c008e5a:	12812423          	sw	s0,296(sp)
1c008e5e:	12912223          	sw	s1,292(sp)
1c008e62:	11612823          	sw	s6,272(sp)
1c008e66:	11712623          	sw	s7,268(sp)
1c008e6a:	11812423          	sw	s8,264(sp)
1c008e6e:	11912223          	sw	s9,260(sp)
1c008e72:	11a12023          	sw	s10,256(sp)
1c008e76:	12112623          	sw	ra,300(sp)
1c008e7a:	13212023          	sw	s2,288(sp)
1c008e7e:	11312e23          	sw	s3,284(sp)
1c008e82:	11412c23          	sw	s4,280(sp)
1c008e86:	11512a23          	sw	s5,276(sp)
1c008e8a:	dfee                	sw	s11,252(sp)
1c008e8c:	8b2a                	mv	s6,a0
1c008e8e:	8d2e                	mv	s10,a1
1c008e90:	84b2                	mv	s1,a2
1c008e92:	8c36                	mv	s8,a3
1c008e94:	4401                	li	s0,0
1c008e96:	1c000bb7          	lui	s7,0x1c000
1c008e9a:	02410c93          	addi	s9,sp,36
1c008e9e:	0004c503          	lbu	a0,0(s1)
1c008ea2:	0485                	addi	s1,s1,1
1c008ea4:	cd19                	beqz	a0,1c008ec2 <pos_libc_prf+0x6a>
1c008ea6:	02500793          	li	a5,37
1c008eaa:	04f50863          	beq	a0,a5,1c008efa <pos_libc_prf+0xa2>
1c008eae:	85ea                	mv	a1,s10
1c008eb0:	9b02                	jalr	s6
1c008eb2:	57fd                	li	a5,-1
1c008eb4:	24f50863          	beq	a0,a5,1c009104 <pos_libc_prf+0x2ac>
1c008eb8:	0405                	addi	s0,s0,1
1c008eba:	0004c503          	lbu	a0,0(s1)
1c008ebe:	0485                	addi	s1,s1,1
1c008ec0:	f17d                	bnez	a0,1c008ea6 <pos_libc_prf+0x4e>
1c008ec2:	8522                	mv	a0,s0
1c008ec4:	12c12083          	lw	ra,300(sp)
1c008ec8:	12812403          	lw	s0,296(sp)
1c008ecc:	12412483          	lw	s1,292(sp)
1c008ed0:	12012903          	lw	s2,288(sp)
1c008ed4:	11c12983          	lw	s3,284(sp)
1c008ed8:	11812a03          	lw	s4,280(sp)
1c008edc:	11412a83          	lw	s5,276(sp)
1c008ee0:	11012b03          	lw	s6,272(sp)
1c008ee4:	10c12b83          	lw	s7,268(sp)
1c008ee8:	10812c03          	lw	s8,264(sp)
1c008eec:	10412c83          	lw	s9,260(sp)
1c008ef0:	10012d03          	lw	s10,256(sp)
1c008ef4:	5dfe                	lw	s11,252(sp)
1c008ef6:	6155                	addi	sp,sp,304
1c008ef8:	8082                	ret
1c008efa:	00148a93          	addi	s5,s1,1
1c008efe:	fffacd83          	lbu	s11,-1(s5) # ff00ffff <pulp__FC+0xff010000>
1c008f02:	02000713          	li	a4,32
1c008f06:	234b8513          	addi	a0,s7,564 # 1c000234 <__DTOR_END__+0x218>
1c008f0a:	85ee                	mv	a1,s11
1c008f0c:	c83a                	sw	a4,16(sp)
1c008f0e:	cc02                	sw	zero,24(sp)
1c008f10:	ca02                	sw	zero,20(sp)
1c008f12:	ce02                	sw	zero,28(sp)
1c008f14:	c602                	sw	zero,12(sp)
1c008f16:	02300913          	li	s2,35
1c008f1a:	02d00a13          	li	s4,45
1c008f1e:	89d6                	mv	s3,s5
1c008f20:	35a9                	jal	1c008d6a <strchr>
1c008f22:	c915                	beqz	a0,1c008f56 <pos_libc_prf+0xfe>
1c008f24:	212d8963          	beq	s11,s2,1c009136 <pos_libc_prf+0x2de>
1c008f28:	1fb97063          	bleu	s11,s2,1c009108 <pos_libc_prf+0x2b0>
1c008f2c:	214d8163          	beq	s11,s4,1c00912e <pos_libc_prf+0x2d6>
1c008f30:	03000613          	li	a2,48
1c008f34:	1ecd8863          	beq	s11,a2,1c009124 <pos_libc_prf+0x2cc>
1c008f38:	02b00693          	li	a3,43
1c008f3c:	1edd8063          	beq	s11,a3,1c00911c <pos_libc_prf+0x2c4>
1c008f40:	84d6                	mv	s1,s5
1c008f42:	00148a93          	addi	s5,s1,1
1c008f46:	fffacd83          	lbu	s11,-1(s5)
1c008f4a:	234b8513          	addi	a0,s7,564
1c008f4e:	85ee                	mv	a1,s11
1c008f50:	89d6                	mv	s3,s5
1c008f52:	3d21                	jal	1c008d6a <strchr>
1c008f54:	f961                	bnez	a0,1c008f24 <pos_libc_prf+0xcc>
1c008f56:	02a00613          	li	a2,42
1c008f5a:	20cd8463          	beq	s11,a2,1c009162 <pos_libc_prf+0x30a>
1c008f5e:	fd0d8613          	addi	a2,s11,-48
1c008f62:	45a5                	li	a1,9
1c008f64:	4901                	li	s2,0
1c008f66:	1cc5fe63          	bleu	a2,a1,1c009142 <pos_libc_prf+0x2ea>
1c008f6a:	02e00713          	li	a4,46
1c008f6e:	5a7d                	li	s4,-1
1c008f70:	24ed8463          	beq	s11,a4,1c0091b8 <pos_libc_prf+0x360>
1c008f74:	1c000837          	lui	a6,0x1c000
1c008f78:	85ee                	mv	a1,s11
1c008f7a:	23c80513          	addi	a0,a6,572 # 1c00023c <__DTOR_END__+0x220>
1c008f7e:	33f5                	jal	1c008d6a <strchr>
1c008f80:	84ce                	mv	s1,s3
1c008f82:	c509                	beqz	a0,1c008f8c <pos_libc_prf+0x134>
1c008f84:	0009cd83          	lbu	s11,0(s3)
1c008f88:	00198493          	addi	s1,s3,1
1c008f8c:	06700713          	li	a4,103
1c008f90:	1fb75963          	ble	s11,a4,1c009182 <pos_libc_prf+0x32a>
1c008f94:	07000713          	li	a4,112
1c008f98:	12ed89e3          	beq	s11,a4,1c0098ca <pos_libc_prf+0xa72>
1c008f9c:	25b75263          	ble	s11,a4,1c0091e0 <pos_libc_prf+0x388>
1c008fa0:	07500713          	li	a4,117
1c008fa4:	0aed89e3          	beq	s11,a4,1c009856 <pos_libc_prf+0x9fe>
1c008fa8:	07800713          	li	a4,120
1c008fac:	72ed8b63          	beq	s11,a4,1c0096e2 <pos_libc_prf+0x88a>
1c008fb0:	07300713          	li	a4,115
1c008fb4:	1aed9ce3          	bne	s11,a4,1c00996c <pos_libc_prf+0xb14>
1c008fb8:	000c2583          	lw	a1,0(s8)
1c008fbc:	004c0a93          	addi	s5,s8,4
1c008fc0:	87ae                	mv	a5,a1
1c008fc2:	4981                	li	s3,0
1c008fc4:	0c800693          	li	a3,200
1c008fc8:	a021                	j	1c008fd0 <pos_libc_prf+0x178>
1c008fca:	0985                	addi	s3,s3,1
1c008fcc:	5ad98be3          	beq	s3,a3,1c009d82 <pos_libc_prf+0xf2a>
1c008fd0:	0007c703          	lbu	a4,0(a5)
1c008fd4:	0785                	addi	a5,a5,1
1c008fd6:	fb75                	bnez	a4,1c008fca <pos_libc_prf+0x172>
1c008fd8:	000a4563          	bltz	s4,1c008fe2 <pos_libc_prf+0x18a>
1c008fdc:	013a5363          	ble	s3,s4,1c008fe2 <pos_libc_prf+0x18a>
1c008fe0:	89d2                	mv	s3,s4
1c008fe2:	8c56                	mv	s8,s5
1c008fe4:	ea098de3          	beqz	s3,1c008e9e <pos_libc_prf+0x46>
1c008fe8:	864e                	mv	a2,s3
1c008fea:	8566                	mv	a0,s9
1c008fec:	34ed                	jal	1c008ad6 <memcpy>
1c008fee:	8c56                	mv	s8,s5
1c008ff0:	0f29d963          	ble	s2,s3,1c0090e2 <pos_libc_prf+0x28a>
1c008ff4:	c602                	sw	zero,12(sp)
1c008ff6:	48f2                	lw	a7,28(sp)
1c008ff8:	1a0885e3          	beqz	a7,1c0099a2 <pos_libc_prf+0xb4a>
1c008ffc:	013c87b3          	add	a5,s9,s3
1c009000:	40f007b3          	neg	a5,a5
1c009004:	8b8d                	andi	a5,a5,3
1c009006:	00378693          	addi	a3,a5,3
1c00900a:	4715                	li	a4,5
1c00900c:	413905b3          	sub	a1,s2,s3
1c009010:	00e6f363          	bleu	a4,a3,1c009016 <pos_libc_prf+0x1be>
1c009014:	4695                	li	a3,5
1c009016:	fff90713          	addi	a4,s2,-1
1c00901a:	41370733          	sub	a4,a4,s3
1c00901e:	06d76663          	bltu	a4,a3,1c00908a <pos_libc_prf+0x232>
1c009022:	86ce                	mv	a3,s3
1c009024:	cb9d                	beqz	a5,1c00905a <pos_libc_prf+0x202>
1c009026:	0f010813          	addi	a6,sp,240
1c00902a:	013806b3          	add	a3,a6,s3
1c00902e:	02000713          	li	a4,32
1c009032:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c009036:	4605                	li	a2,1
1c009038:	00198693          	addi	a3,s3,1
1c00903c:	00c78f63          	beq	a5,a2,1c00905a <pos_libc_prf+0x202>
1c009040:	96c2                	add	a3,a3,a6
1c009042:	f2e68a23          	sb	a4,-204(a3)
1c009046:	460d                	li	a2,3
1c009048:	00298693          	addi	a3,s3,2
1c00904c:	00c79763          	bne	a5,a2,1c00905a <pos_libc_prf+0x202>
1c009050:	96c2                	add	a3,a3,a6
1c009052:	f2e68a23          	sb	a4,-204(a3)
1c009056:	00398693          	addi	a3,s3,3
1c00905a:	8d9d                	sub	a1,a1,a5
1c00905c:	97ce                	add	a5,a5,s3
1c00905e:	0025d613          	srli	a2,a1,0x2
1c009062:	97e6                	add	a5,a5,s9
1c009064:	4701                	li	a4,0
1c009066:	1c0008b7          	lui	a7,0x1c000
1c00906a:	23088893          	addi	a7,a7,560 # 1c000230 <__DTOR_END__+0x214>
1c00906e:	0008a883          	lw	a7,0(a7)
1c009072:	0705                	addi	a4,a4,1
1c009074:	0117a023          	sw	a7,0(a5)
1c009078:	0791                	addi	a5,a5,4
1c00907a:	fec766e3          	bltu	a4,a2,1c009066 <pos_libc_prf+0x20e>
1c00907e:	ffc5f793          	andi	a5,a1,-4
1c009082:	00d789b3          	add	s3,a5,a3
1c009086:	04b78b63          	beq	a5,a1,1c0090dc <pos_libc_prf+0x284>
1c00908a:	1988                	addi	a0,sp,240
1c00908c:	01350733          	add	a4,a0,s3
1c009090:	02000793          	li	a5,32
1c009094:	f2f70a23          	sb	a5,-204(a4)
1c009098:	00198713          	addi	a4,s3,1
1c00909c:	05275063          	ble	s2,a4,1c0090dc <pos_libc_prf+0x284>
1c0090a0:	972a                	add	a4,a4,a0
1c0090a2:	f2f70a23          	sb	a5,-204(a4)
1c0090a6:	00298713          	addi	a4,s3,2
1c0090aa:	03275963          	ble	s2,a4,1c0090dc <pos_libc_prf+0x284>
1c0090ae:	972a                	add	a4,a4,a0
1c0090b0:	f2f70a23          	sb	a5,-204(a4)
1c0090b4:	00398713          	addi	a4,s3,3
1c0090b8:	03275263          	ble	s2,a4,1c0090dc <pos_libc_prf+0x284>
1c0090bc:	972a                	add	a4,a4,a0
1c0090be:	f2f70a23          	sb	a5,-204(a4)
1c0090c2:	00498713          	addi	a4,s3,4
1c0090c6:	01275b63          	ble	s2,a4,1c0090dc <pos_libc_prf+0x284>
1c0090ca:	972a                	add	a4,a4,a0
1c0090cc:	f2f70a23          	sb	a5,-204(a4)
1c0090d0:	0995                	addi	s3,s3,5
1c0090d2:	0129d563          	ble	s2,s3,1c0090dc <pos_libc_prf+0x284>
1c0090d6:	99aa                	add	s3,s3,a0
1c0090d8:	f2f98a23          	sb	a5,-204(s3)
1c0090dc:	89ca                	mv	s3,s2
1c0090de:	dc0980e3          	beqz	s3,1c008e9e <pos_libc_prf+0x46>
1c0090e2:	8966                	mv	s2,s9
1c0090e4:	5a7d                	li	s4,-1
1c0090e6:	41940ab3          	sub	s5,s0,s9
1c0090ea:	a029                	j	1c0090f4 <pos_libc_prf+0x29c>
1c0090ec:	01590433          	add	s0,s2,s5
1c0090f0:	da0987e3          	beqz	s3,1c008e9e <pos_libc_prf+0x46>
1c0090f4:	00094503          	lbu	a0,0(s2)
1c0090f8:	85ea                	mv	a1,s10
1c0090fa:	9b02                	jalr	s6
1c0090fc:	0905                	addi	s2,s2,1
1c0090fe:	19fd                	addi	s3,s3,-1
1c009100:	ff4516e3          	bne	a0,s4,1c0090ec <pos_libc_prf+0x294>
1c009104:	547d                	li	s0,-1
1c009106:	bb75                	j	1c008ec2 <pos_libc_prf+0x6a>
1c009108:	da0d8de3          	beqz	s11,1c008ec2 <pos_libc_prf+0x6a>
1c00910c:	02000513          	li	a0,32
1c009110:	e2ad98e3          	bne	s11,a0,1c008f40 <pos_libc_prf+0xe8>
1c009114:	4785                	li	a5,1
1c009116:	cc3e                	sw	a5,24(sp)
1c009118:	84d6                	mv	s1,s5
1c00911a:	b525                	j	1c008f42 <pos_libc_prf+0xea>
1c00911c:	4705                	li	a4,1
1c00911e:	ca3a                	sw	a4,20(sp)
1c009120:	84d6                	mv	s1,s5
1c009122:	b505                	j	1c008f42 <pos_libc_prf+0xea>
1c009124:	03000893          	li	a7,48
1c009128:	c846                	sw	a7,16(sp)
1c00912a:	84d6                	mv	s1,s5
1c00912c:	bd19                	j	1c008f42 <pos_libc_prf+0xea>
1c00912e:	4685                	li	a3,1
1c009130:	ce36                	sw	a3,28(sp)
1c009132:	84d6                	mv	s1,s5
1c009134:	b539                	j	1c008f42 <pos_libc_prf+0xea>
1c009136:	4805                	li	a6,1
1c009138:	c642                	sw	a6,12(sp)
1c00913a:	84d6                	mv	s1,s5
1c00913c:	b519                	j	1c008f42 <pos_libc_prf+0xea>
1c00913e:	84d6                	mv	s1,s5
1c009140:	0a85                	addi	s5,s5,1
1c009142:	00291793          	slli	a5,s2,0x2
1c009146:	97ca                	add	a5,a5,s2
1c009148:	0786                	slli	a5,a5,0x1
1c00914a:	97ee                	add	a5,a5,s11
1c00914c:	000acd83          	lbu	s11,0(s5)
1c009150:	fd078913          	addi	s2,a5,-48
1c009154:	fd0d8793          	addi	a5,s11,-48
1c009158:	fef5f3e3          	bleu	a5,a1,1c00913e <pos_libc_prf+0x2e6>
1c00915c:	00248993          	addi	s3,s1,2
1c009160:	a811                	j	1c009174 <pos_libc_prf+0x31c>
1c009162:	000c2903          	lw	s2,0(s8)
1c009166:	0c11                	addi	s8,s8,4
1c009168:	14094663          	bltz	s2,1c0092b4 <pos_libc_prf+0x45c>
1c00916c:	000acd83          	lbu	s11,0(s5)
1c009170:	00248993          	addi	s3,s1,2
1c009174:	0c800713          	li	a4,200
1c009178:	df2779e3          	bleu	s2,a4,1c008f6a <pos_libc_prf+0x112>
1c00917c:	0c800913          	li	s2,200
1c009180:	b3ed                	j	1c008f6a <pos_libc_prf+0x112>
1c009182:	06500713          	li	a4,101
1c009186:	12eddc63          	ble	a4,s11,1c0092be <pos_libc_prf+0x466>
1c00918a:	04700713          	li	a4,71
1c00918e:	55b74063          	blt	a4,s11,1c0096ce <pos_libc_prf+0x876>
1c009192:	04500713          	li	a4,69
1c009196:	12edd463          	ble	a4,s11,1c0092be <pos_libc_prf+0x466>
1c00919a:	d20d84e3          	beqz	s11,1c008ec2 <pos_libc_prf+0x6a>
1c00919e:	02500713          	li	a4,37
1c0091a2:	7ced9563          	bne	s11,a4,1c00996c <pos_libc_prf+0xb14>
1c0091a6:	85ea                	mv	a1,s10
1c0091a8:	02500513          	li	a0,37
1c0091ac:	9b02                	jalr	s6
1c0091ae:	57fd                	li	a5,-1
1c0091b0:	f4f50ae3          	beq	a0,a5,1c009104 <pos_libc_prf+0x2ac>
1c0091b4:	0405                	addi	s0,s0,1
1c0091b6:	b311                	j	1c008eba <pos_libc_prf+0x62>
1c0091b8:	0009c783          	lbu	a5,0(s3)
1c0091bc:	02a00713          	li	a4,42
1c0091c0:	00198693          	addi	a3,s3,1
1c0091c4:	0ae79d63          	bne	a5,a4,1c00927e <pos_libc_prf+0x426>
1c0091c8:	000c2a03          	lw	s4,0(s8)
1c0091cc:	0019cd83          	lbu	s11,1(s3)
1c0091d0:	0c11                	addi	s8,s8,4
1c0091d2:	0989                	addi	s3,s3,2
1c0091d4:	0c800713          	li	a4,200
1c0091d8:	d9475ee3          	ble	s4,a4,1c008f74 <pos_libc_prf+0x11c>
1c0091dc:	5a7d                	li	s4,-1
1c0091de:	bb59                	j	1c008f74 <pos_libc_prf+0x11c>
1c0091e0:	06e00713          	li	a4,110
1c0091e4:	76ed8e63          	beq	s11,a4,1c009960 <pos_libc_prf+0xb08>
1c0091e8:	5bb75663          	ble	s11,a4,1c009794 <pos_libc_prf+0x93c>
1c0091ec:	4732                	lw	a4,12(sp)
1c0091ee:	004c0513          	addi	a0,s8,4
1c0091f2:	000c2683          	lw	a3,0(s8)
1c0091f6:	1c070de3          	beqz	a4,1c009bd0 <pos_libc_prf+0xd78>
1c0091fa:	03000793          	li	a5,48
1c0091fe:	02f10223          	sb	a5,36(sp)
1c009202:	16068de3          	beqz	a3,1c009b7c <pos_libc_prf+0xd24>
1c009206:	02510593          	addi	a1,sp,37
1c00920a:	872e                	mv	a4,a1
1c00920c:	87ba                	mv	a5,a4
1c00920e:	0076f613          	andi	a2,a3,7
1c009212:	0785                	addi	a5,a5,1
1c009214:	03060613          	addi	a2,a2,48
1c009218:	828d                	srli	a3,a3,0x3
1c00921a:	fec78fa3          	sb	a2,-1(a5)
1c00921e:	fae5                	bnez	a3,1c00920e <pos_libc_prf+0x3b6>
1c009220:	40b789b3          	sub	s3,a5,a1
1c009224:	0149db63          	ble	s4,s3,1c00923a <pos_libc_prf+0x3e2>
1c009228:	03000693          	li	a3,48
1c00922c:	0785                	addi	a5,a5,1
1c00922e:	fed78fa3          	sb	a3,-1(a5)
1c009232:	40b789b3          	sub	s3,a5,a1
1c009236:	ff49cbe3          	blt	s3,s4,1c00922c <pos_libc_prf+0x3d4>
1c00923a:	00078023          	sb	zero,0(a5)
1c00923e:	17fd                	addi	a5,a5,-1
1c009240:	00f77e63          	bleu	a5,a4,1c00925c <pos_libc_prf+0x404>
1c009244:	00074603          	lbu	a2,0(a4)
1c009248:	0007c683          	lbu	a3,0(a5)
1c00924c:	00c78023          	sb	a2,0(a5)
1c009250:	00d70023          	sb	a3,0(a4)
1c009254:	17fd                	addi	a5,a5,-1
1c009256:	0705                	addi	a4,a4,1
1c009258:	fef766e3          	bltu	a4,a5,1c009244 <pos_libc_prf+0x3ec>
1c00925c:	4832                	lw	a6,12(sp)
1c00925e:	57fd                	li	a5,-1
1c009260:	99c2                	add	s3,s3,a6
1c009262:	22fa0ee3          	beq	s4,a5,1c009c9e <pos_libc_prf+0xe46>
1c009266:	0c800793          	li	a5,200
1c00926a:	e937cde3          	blt	a5,s3,1c009104 <pos_libc_prf+0x2ac>
1c00926e:	02000693          	li	a3,32
1c009272:	8c2a                	mv	s8,a0
1c009274:	c602                	sw	zero,12(sp)
1c009276:	c836                	sw	a3,16(sp)
1c009278:	d729cfe3          	blt	s3,s2,1c008ff6 <pos_libc_prf+0x19e>
1c00927c:	b58d                	j	1c0090de <pos_libc_prf+0x286>
1c00927e:	fd078593          	addi	a1,a5,-48
1c009282:	4725                	li	a4,9
1c009284:	8dbe                	mv	s11,a5
1c009286:	4a01                	li	s4,0
1c009288:	4625                	li	a2,9
1c00928a:	00b77663          	bleu	a1,a4,1c009296 <pos_libc_prf+0x43e>
1c00928e:	1070006f          	j	1c009b94 <pos_libc_prf+0xd3c>
1c009292:	89b6                	mv	s3,a3
1c009294:	0685                	addi	a3,a3,1
1c009296:	002a1793          	slli	a5,s4,0x2
1c00929a:	97d2                	add	a5,a5,s4
1c00929c:	0786                	slli	a5,a5,0x1
1c00929e:	97ee                	add	a5,a5,s11
1c0092a0:	0006cd83          	lbu	s11,0(a3)
1c0092a4:	fd078a13          	addi	s4,a5,-48
1c0092a8:	fd0d8793          	addi	a5,s11,-48
1c0092ac:	fef673e3          	bleu	a5,a2,1c009292 <pos_libc_prf+0x43a>
1c0092b0:	0989                	addi	s3,s3,2
1c0092b2:	b70d                	j	1c0091d4 <pos_libc_prf+0x37c>
1c0092b4:	4785                	li	a5,1
1c0092b6:	41200933          	neg	s2,s2
1c0092ba:	ce3e                	sw	a5,28(sp)
1c0092bc:	bd45                	j	1c00916c <pos_libc_prf+0x314>
1c0092be:	0c1d                	addi	s8,s8,7
1c0092c0:	ff8c7c13          	andi	s8,s8,-8
1c0092c4:	000c2703          	lw	a4,0(s8)
1c0092c8:	004c2803          	lw	a6,4(s8)
1c0092cc:	01575693          	srli	a3,a4,0x15
1c0092d0:	00b81613          	slli	a2,a6,0xb
1c0092d4:	8e55                	or	a2,a2,a3
1c0092d6:	01485513          	srli	a0,a6,0x14
1c0092da:	00b71693          	slli	a3,a4,0xb
1c0092de:	80000737          	lui	a4,0x80000
1c0092e2:	fff74713          	not	a4,a4
1c0092e6:	7ff57513          	andi	a0,a0,2047
1c0092ea:	7ff00593          	li	a1,2047
1c0092ee:	0c21                	addi	s8,s8,8
1c0092f0:	8e79                	and	a2,a2,a4
1c0092f2:	0ab504e3          	beq	a0,a1,1c009b9a <pos_libc_prf+0xd42>
1c0092f6:	04600593          	li	a1,70
1c0092fa:	00bd9463          	bne	s11,a1,1c009302 <pos_libc_prf+0x4aa>
1c0092fe:	06600d93          	li	s11,102
1c009302:	00d56733          	or	a4,a0,a3
1c009306:	8f51                	or	a4,a4,a2
1c009308:	7e070963          	beqz	a4,1c009afa <pos_libc_prf+0xca2>
1c00930c:	800005b7          	lui	a1,0x80000
1c009310:	c0250513          	addi	a0,a0,-1022
1c009314:	8dd1                	or	a1,a1,a2
1c009316:	26084ae3          	bltz	a6,1c009d8a <pos_libc_prf+0xf32>
1c00931a:	4852                	lw	a6,20(sp)
1c00931c:	220808e3          	beqz	a6,1c009d4c <pos_libc_prf+0xef4>
1c009320:	02b00713          	li	a4,43
1c009324:	02e10223          	sb	a4,36(sp)
1c009328:	02510e93          	addi	t4,sp,37
1c00932c:	5779                	li	a4,-2
1c00932e:	4301                	li	t1,0
1c009330:	06e55763          	ble	a4,a0,1c00939e <pos_libc_prf+0x546>
1c009334:	33333837          	lui	a6,0x33333
1c009338:	800008b7          	lui	a7,0x80000
1c00933c:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c009340:	fff8c893          	not	a7,a7
1c009344:	5e79                	li	t3,-2
1c009346:	a011                	j	1c00934a <pos_libc_prf+0x4f2>
1c009348:	853e                	mv	a0,a5
1c00934a:	01f59613          	slli	a2,a1,0x1f
1c00934e:	0016d713          	srli	a4,a3,0x1
1c009352:	0016f793          	andi	a5,a3,1
1c009356:	8f51                	or	a4,a4,a2
1c009358:	00e786b3          	add	a3,a5,a4
1c00935c:	00f6b7b3          	sltu	a5,a3,a5
1c009360:	8185                	srli	a1,a1,0x1
1c009362:	95be                	add	a1,a1,a5
1c009364:	00150793          	addi	a5,a0,1
1c009368:	feb860e3          	bltu	a6,a1,1c009348 <pos_libc_prf+0x4f0>
1c00936c:	00269613          	slli	a2,a3,0x2
1c009370:	01e6df13          	srli	t5,a3,0x1e
1c009374:	00259713          	slli	a4,a1,0x2
1c009378:	96b2                	add	a3,a3,a2
1c00937a:	00ef6733          	or	a4,t5,a4
1c00937e:	95ba                	add	a1,a1,a4
1c009380:	00c6b633          	sltu	a2,a3,a2
1c009384:	95b2                	add	a1,a1,a2
1c009386:	01f6d713          	srli	a4,a3,0x1f
1c00938a:	0509                	addi	a0,a0,2
1c00938c:	137d                	addi	t1,t1,-1
1c00938e:	01159663          	bne	a1,a7,1c00939a <pos_libc_prf+0x542>
1c009392:	0686                	slli	a3,a3,0x1
1c009394:	ffe76593          	ori	a1,a4,-2
1c009398:	853e                	mv	a0,a5
1c00939a:	fbc548e3          	blt	a0,t3,1c00934a <pos_libc_prf+0x4f2>
1c00939e:	06a05563          	blez	a0,1c009408 <pos_libc_prf+0x5b0>
1c0093a2:	800008b7          	lui	a7,0x80000
1c0093a6:	4e15                	li	t3,5
1c0093a8:	fff8c893          	not	a7,a7
1c0093ac:	00268613          	addi	a2,a3,2
1c0093b0:	00d636b3          	sltu	a3,a2,a3
1c0093b4:	95b6                	add	a1,a1,a3
1c0093b6:	03c5d7b3          	divu	a5,a1,t3
1c0093ba:	00279713          	slli	a4,a5,0x2
1c0093be:	973e                	add	a4,a4,a5
1c0093c0:	8d99                	sub	a1,a1,a4
1c0093c2:	01d59713          	slli	a4,a1,0x1d
1c0093c6:	00365593          	srli	a1,a2,0x3
1c0093ca:	8dd9                	or	a1,a1,a4
1c0093cc:	03c5d5b3          	divu	a1,a1,t3
1c0093d0:	00359693          	slli	a3,a1,0x3
1c0093d4:	00559713          	slli	a4,a1,0x5
1c0093d8:	9736                	add	a4,a4,a3
1c0093da:	40e60733          	sub	a4,a2,a4
1c0093de:	03c75733          	divu	a4,a4,t3
1c0093e2:	81f5                	srli	a1,a1,0x1d
1c0093e4:	96ba                	add	a3,a3,a4
1c0093e6:	97ae                	add	a5,a5,a1
1c0093e8:	00e6b733          	sltu	a4,a3,a4
1c0093ec:	00f705b3          	add	a1,a4,a5
1c0093f0:	157d                	addi	a0,a0,-1
1c0093f2:	0305                	addi	t1,t1,1
1c0093f4:	01f6d793          	srli	a5,a3,0x1f
1c0093f8:	0586                	slli	a1,a1,0x1
1c0093fa:	8ddd                	or	a1,a1,a5
1c0093fc:	0686                	slli	a3,a3,0x1
1c0093fe:	157d                	addi	a0,a0,-1
1c009400:	feb8fae3          	bleu	a1,a7,1c0093f4 <pos_libc_prf+0x59c>
1c009404:	faa044e3          	bgtz	a0,1c0093ac <pos_libc_prf+0x554>
1c009408:	4611                	li	a2,4
1c00940a:	01f59713          	slli	a4,a1,0x1f
1c00940e:	0016d793          	srli	a5,a3,0x1
1c009412:	8fd9                	or	a5,a5,a4
1c009414:	8a85                	andi	a3,a3,1
1c009416:	00f688b3          	add	a7,a3,a5
1c00941a:	8185                	srli	a1,a1,0x1
1c00941c:	00d8b6b3          	sltu	a3,a7,a3
1c009420:	00b68733          	add	a4,a3,a1
1c009424:	0505                	addi	a0,a0,1
1c009426:	86c6                	mv	a3,a7
1c009428:	85ba                	mv	a1,a4
1c00942a:	fec510e3          	bne	a0,a2,1c00940a <pos_libc_prf+0x5b2>
1c00942e:	06700693          	li	a3,103
1c009432:	040a48e3          	bltz	s4,1c009c82 <pos_libc_prf+0xe2a>
1c009436:	70dd8b63          	beq	s11,a3,1c009b4c <pos_libc_prf+0xcf4>
1c00943a:	04700693          	li	a3,71
1c00943e:	70dd8763          	beq	s11,a3,1c009b4c <pos_libc_prf+0xcf4>
1c009442:	06600693          	li	a3,102
1c009446:	08dd89e3          	beq	s11,a3,1c009cd8 <pos_libc_prf+0xe80>
1c00944a:	001a0e13          	addi	t3,s4,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c00944e:	46c1                	li	a3,16
1c009450:	01c6d363          	ble	t3,a3,1c009456 <pos_libc_prf+0x5fe>
1c009454:	4e41                	li	t3,16
1c009456:	1e7d                	addi	t3,t3,-1
1c009458:	4f81                	li	t6,0
1c00945a:	4681                	li	a3,0
1c00945c:	08000637          	lui	a2,0x8000
1c009460:	4f15                	li	t5,5
1c009462:	52fd                	li	t0,-1
1c009464:	00268593          	addi	a1,a3,2
1c009468:	00d5b7b3          	sltu	a5,a1,a3
1c00946c:	97b2                	add	a5,a5,a2
1c00946e:	03e7d633          	divu	a2,a5,t5
1c009472:	00261693          	slli	a3,a2,0x2
1c009476:	96b2                	add	a3,a3,a2
1c009478:	8f95                	sub	a5,a5,a3
1c00947a:	07f6                	slli	a5,a5,0x1d
1c00947c:	0035d513          	srli	a0,a1,0x3
1c009480:	8d5d                	or	a0,a0,a5
1c009482:	03e55533          	divu	a0,a0,t5
1c009486:	00351693          	slli	a3,a0,0x3
1c00948a:	00551793          	slli	a5,a0,0x5
1c00948e:	97b6                	add	a5,a5,a3
1c009490:	40f587b3          	sub	a5,a1,a5
1c009494:	03e7d7b3          	divu	a5,a5,t5
1c009498:	8175                	srli	a0,a0,0x1d
1c00949a:	96be                	add	a3,a3,a5
1c00949c:	00f6b7b3          	sltu	a5,a3,a5
1c0094a0:	962a                	add	a2,a2,a0
1c0094a2:	963e                	add	a2,a2,a5
1c0094a4:	01f61513          	slli	a0,a2,0x1f
1c0094a8:	0016d793          	srli	a5,a3,0x1
1c0094ac:	0016f593          	andi	a1,a3,1
1c0094b0:	8fc9                	or	a5,a5,a0
1c0094b2:	00f586b3          	add	a3,a1,a5
1c0094b6:	8205                	srli	a2,a2,0x1
1c0094b8:	00b6b7b3          	sltu	a5,a3,a1
1c0094bc:	1e7d                	addi	t3,t3,-1
1c0094be:	963e                	add	a2,a2,a5
1c0094c0:	fa5e12e3          	bne	t3,t0,1c009464 <pos_libc_prf+0x60c>
1c0094c4:	96c6                	add	a3,a3,a7
1c0094c6:	963a                	add	a2,a2,a4
1c0094c8:	0116b8b3          	sltu	a7,a3,a7
1c0094cc:	9646                	add	a2,a2,a7
1c0094ce:	f00005b7          	lui	a1,0xf0000
1c0094d2:	8df1                	and	a1,a1,a2
1c0094d4:	8736                	mv	a4,a3
1c0094d6:	cdb9                	beqz	a1,1c009534 <pos_libc_prf+0x6dc>
1c0094d8:	0689                	addi	a3,a3,2
1c0094da:	00e6b733          	sltu	a4,a3,a4
1c0094de:	963a                	add	a2,a2,a4
1c0094e0:	4815                	li	a6,5
1c0094e2:	03065533          	divu	a0,a2,a6
1c0094e6:	00251713          	slli	a4,a0,0x2
1c0094ea:	972a                	add	a4,a4,a0
1c0094ec:	8e19                	sub	a2,a2,a4
1c0094ee:	01d61713          	slli	a4,a2,0x1d
1c0094f2:	0036d593          	srli	a1,a3,0x3
1c0094f6:	8dd9                	or	a1,a1,a4
1c0094f8:	0305d5b3          	divu	a1,a1,a6
1c0094fc:	00359613          	slli	a2,a1,0x3
1c009500:	00559713          	slli	a4,a1,0x5
1c009504:	9732                	add	a4,a4,a2
1c009506:	40e68733          	sub	a4,a3,a4
1c00950a:	03075733          	divu	a4,a4,a6
1c00950e:	81f5                	srli	a1,a1,0x1d
1c009510:	963a                	add	a2,a2,a4
1c009512:	00e63733          	sltu	a4,a2,a4
1c009516:	95aa                	add	a1,a1,a0
1c009518:	00b706b3          	add	a3,a4,a1
1c00951c:	01f69593          	slli	a1,a3,0x1f
1c009520:	00165713          	srli	a4,a2,0x1
1c009524:	8f4d                	or	a4,a4,a1
1c009526:	8a05                	andi	a2,a2,1
1c009528:	9732                	add	a4,a4,a2
1c00952a:	8285                	srli	a3,a3,0x1
1c00952c:	00c73633          	sltu	a2,a4,a2
1c009530:	9636                	add	a2,a2,a3
1c009532:	0305                	addi	t1,t1,1
1c009534:	001e8993          	addi	s3,t4,1
1c009538:	06600693          	li	a3,102
1c00953c:	85ce                	mv	a1,s3
1c00953e:	6add8663          	beq	s11,a3,1c009bea <pos_libc_prf+0xd92>
1c009542:	00271693          	slli	a3,a4,0x2
1c009546:	01e75593          	srli	a1,a4,0x1e
1c00954a:	00261513          	slli	a0,a2,0x2
1c00954e:	9736                	add	a4,a4,a3
1c009550:	8d4d                	or	a0,a0,a1
1c009552:	962a                	add	a2,a2,a0
1c009554:	00d735b3          	sltu	a1,a4,a3
1c009558:	95b2                	add	a1,a1,a2
1c00955a:	01f75693          	srli	a3,a4,0x1f
1c00955e:	0586                	slli	a1,a1,0x1
1c009560:	8dd5                	or	a1,a1,a3
1c009562:	01c5d693          	srli	a3,a1,0x1c
1c009566:	03068613          	addi	a2,a3,48
1c00956a:	00d036b3          	snez	a3,a3
1c00956e:	10000537          	lui	a0,0x10000
1c009572:	40d30333          	sub	t1,t1,a3
1c009576:	46b2                	lw	a3,12(sp)
1c009578:	157d                	addi	a0,a0,-1
1c00957a:	00ce8023          	sb	a2,0(t4)
1c00957e:	0706                	slli	a4,a4,0x1
1c009580:	8de9                	and	a1,a1,a0
1c009582:	64068b63          	beqz	a3,1c009bd8 <pos_libc_prf+0xd80>
1c009586:	02e00693          	li	a3,46
1c00958a:	00de80a3          	sb	a3,1(t4)
1c00958e:	002e8513          	addi	a0,t4,2
1c009592:	020a00e3          	beqz	s4,1c009db2 <pos_libc_prf+0xf5a>
1c009596:	014509b3          	add	s3,a0,s4
1c00959a:	48bd                	li	a7,15
1c00959c:	03000e13          	li	t3,48
1c0095a0:	00271793          	slli	a5,a4,0x2
1c0095a4:	01e75813          	srli	a6,a4,0x1e
1c0095a8:	00259693          	slli	a3,a1,0x2
1c0095ac:	00e78633          	add	a2,a5,a4
1c0095b0:	00d866b3          	or	a3,a6,a3
1c0095b4:	96ae                	add	a3,a3,a1
1c0095b6:	00f637b3          	sltu	a5,a2,a5
1c0095ba:	97b6                	add	a5,a5,a3
1c0095bc:	0786                	slli	a5,a5,0x1
1c0095be:	01f65693          	srli	a3,a2,0x1f
1c0095c2:	8fd5                	or	a5,a5,a3
1c0095c4:	01c7d693          	srli	a3,a5,0x1c
1c0095c8:	03068693          	addi	a3,a3,48
1c0095cc:	0505                	addi	a0,a0,1
1c0095ce:	3b105663          	blez	a7,1c00997a <pos_libc_prf+0xb22>
1c0095d2:	10000837          	lui	a6,0x10000
1c0095d6:	187d                	addi	a6,a6,-1
1c0095d8:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c0095dc:	18fd                	addi	a7,a7,-1
1c0095de:	00161713          	slli	a4,a2,0x1
1c0095e2:	0107f5b3          	and	a1,a5,a6
1c0095e6:	faa99de3          	bne	s3,a0,1c0095a0 <pos_libc_prf+0x748>
1c0095ea:	0c0f9263          	bnez	t6,1c0096ae <pos_libc_prf+0x856>
1c0095ee:	fdfdf713          	andi	a4,s11,-33
1c0095f2:	04500693          	li	a3,69
1c0095f6:	02d71963          	bne	a4,a3,1c009628 <pos_libc_prf+0x7d0>
1c0095fa:	87ee                	mv	a5,s11
1c0095fc:	00f98023          	sb	a5,0(s3)
1c009600:	6a034763          	bltz	t1,1c009cae <pos_libc_prf+0xe56>
1c009604:	02b00793          	li	a5,43
1c009608:	00f980a3          	sb	a5,1(s3)
1c00960c:	47a9                	li	a5,10
1c00960e:	02f34733          	div	a4,t1,a5
1c009612:	02f367b3          	rem	a5,t1,a5
1c009616:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c00961a:	03078793          	addi	a5,a5,48
1c00961e:	00e98123          	sb	a4,2(s3)
1c009622:	00f981a3          	sb	a5,3(s3)
1c009626:	0991                	addi	s3,s3,4
1c009628:	00098023          	sb	zero,0(s3)
1c00962c:	419989b3          	sub	s3,s3,s9
1c009630:	48d2                	lw	a7,20(sp)
1c009632:	4662                	lw	a2,24(sp)
1c009634:	00c8e8b3          	or	a7,a7,a2
1c009638:	c646                	sw	a7,12(sp)
1c00963a:	34089d63          	bnez	a7,1c009994 <pos_libc_prf+0xb3c>
1c00963e:	02414703          	lbu	a4,36(sp)
1c009642:	02d00793          	li	a5,45
1c009646:	34f70763          	beq	a4,a5,1c009994 <pos_libc_prf+0xb3c>
1c00964a:	0c800793          	li	a5,200
1c00964e:	ab37cbe3          	blt	a5,s3,1c009104 <pos_libc_prf+0x2ac>
1c009652:	9b29c2e3          	blt	s3,s2,1c008ff6 <pos_libc_prf+0x19e>
1c009656:	b461                	j	1c0090de <pos_libc_prf+0x286>
1c009658:	0585                	addi	a1,a1,1
1c00965a:	00271793          	slli	a5,a4,0x2
1c00965e:	01e75e13          	srli	t3,a4,0x1e
1c009662:	00261693          	slli	a3,a2,0x2
1c009666:	00e788b3          	add	a7,a5,a4
1c00966a:	00de66b3          	or	a3,t3,a3
1c00966e:	96b2                	add	a3,a3,a2
1c009670:	00f8b7b3          	sltu	a5,a7,a5
1c009674:	97b6                	add	a5,a5,a3
1c009676:	0786                	slli	a5,a5,0x1
1c009678:	01f8d693          	srli	a3,a7,0x1f
1c00967c:	8fd5                	or	a5,a5,a3
1c00967e:	01c7de13          	srli	t3,a5,0x1c
1c009682:	03000693          	li	a3,48
1c009686:	00a05c63          	blez	a0,1c00969e <pos_libc_prf+0x846>
1c00968a:	00189713          	slli	a4,a7,0x1
1c00968e:	100008b7          	lui	a7,0x10000
1c009692:	18fd                	addi	a7,a7,-1
1c009694:	030e0693          	addi	a3,t3,48
1c009698:	157d                	addi	a0,a0,-1
1c00969a:	0117f633          	and	a2,a5,a7
1c00969e:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c0096a2:	fab99be3          	bne	s3,a1,1c009658 <pos_libc_prf+0x800>
1c0096a6:	014809b3          	add	s3,a6,s4
1c0096aa:	f60f8fe3          	beqz	t6,1c009628 <pos_libc_prf+0x7d0>
1c0096ae:	03000613          	li	a2,48
1c0096b2:	a011                	j	1c0096b6 <pos_libc_prf+0x85e>
1c0096b4:	89ba                	mv	s3,a4
1c0096b6:	fff9c683          	lbu	a3,-1(s3)
1c0096ba:	fff98713          	addi	a4,s3,-1
1c0096be:	fec68be3          	beq	a3,a2,1c0096b4 <pos_libc_prf+0x85c>
1c0096c2:	02e00613          	li	a2,46
1c0096c6:	f2c694e3          	bne	a3,a2,1c0095ee <pos_libc_prf+0x796>
1c0096ca:	89ba                	mv	s3,a4
1c0096cc:	b70d                	j	1c0095ee <pos_libc_prf+0x796>
1c0096ce:	06300713          	li	a4,99
1c0096d2:	16ed8863          	beq	s11,a4,1c009842 <pos_libc_prf+0x9ea>
1c0096d6:	0db74363          	blt	a4,s11,1c00979c <pos_libc_prf+0x944>
1c0096da:	05800713          	li	a4,88
1c0096de:	28ed9763          	bne	s11,a4,1c00996c <pos_libc_prf+0xb14>
1c0096e2:	48b2                	lw	a7,12(sp)
1c0096e4:	004c0813          	addi	a6,s8,4
1c0096e8:	000c2583          	lw	a1,0(s8)
1c0096ec:	3c088a63          	beqz	a7,1c009ac0 <pos_libc_prf+0xc68>
1c0096f0:	7761                	lui	a4,0xffff8
1c0096f2:	83074713          	xori	a4,a4,-2000
1c0096f6:	02e11223          	sh	a4,36(sp)
1c0096fa:	4889                	li	a7,2
1c0096fc:	02610693          	addi	a3,sp,38
1c009700:	8736                	mv	a4,a3
1c009702:	4e25                	li	t3,9
1c009704:	00f5f613          	andi	a2,a1,15
1c009708:	0ff67793          	andi	a5,a2,255
1c00970c:	03078513          	addi	a0,a5,48
1c009710:	8191                	srli	a1,a1,0x4
1c009712:	05778793          	addi	a5,a5,87
1c009716:	0705                	addi	a4,a4,1
1c009718:	06ce6a63          	bltu	t3,a2,1c00978c <pos_libc_prf+0x934>
1c00971c:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c009720:	f1f5                	bnez	a1,1c009704 <pos_libc_prf+0x8ac>
1c009722:	40d709b3          	sub	s3,a4,a3
1c009726:	0149db63          	ble	s4,s3,1c00973c <pos_libc_prf+0x8e4>
1c00972a:	03000613          	li	a2,48
1c00972e:	0705                	addi	a4,a4,1
1c009730:	fec70fa3          	sb	a2,-1(a4)
1c009734:	40d709b3          	sub	s3,a4,a3
1c009738:	ff49cbe3          	blt	s3,s4,1c00972e <pos_libc_prf+0x8d6>
1c00973c:	00070023          	sb	zero,0(a4)
1c009740:	177d                	addi	a4,a4,-1
1c009742:	00e6fe63          	bleu	a4,a3,1c00975e <pos_libc_prf+0x906>
1c009746:	0006c603          	lbu	a2,0(a3)
1c00974a:	00074783          	lbu	a5,0(a4)
1c00974e:	00c70023          	sb	a2,0(a4)
1c009752:	00f68023          	sb	a5,0(a3)
1c009756:	177d                	addi	a4,a4,-1
1c009758:	0685                	addi	a3,a3,1
1c00975a:	fee6e6e3          	bltu	a3,a4,1c009746 <pos_libc_prf+0x8ee>
1c00975e:	05800713          	li	a4,88
1c009762:	36ed8263          	beq	s11,a4,1c009ac6 <pos_libc_prf+0xc6e>
1c009766:	46b2                	lw	a3,12(sp)
1c009768:	99c6                	add	s3,s3,a7
1c00976a:	c299                	beqz	a3,1c009770 <pos_libc_prf+0x918>
1c00976c:	4709                	li	a4,2
1c00976e:	c63a                	sw	a4,12(sp)
1c009770:	57fd                	li	a5,-1
1c009772:	3afa0263          	beq	s4,a5,1c009b16 <pos_libc_prf+0xcbe>
1c009776:	0c800793          	li	a5,200
1c00977a:	9937c5e3          	blt	a5,s3,1c009104 <pos_libc_prf+0x2ac>
1c00977e:	02000793          	li	a5,32
1c009782:	c83e                	sw	a5,16(sp)
1c009784:	8c42                	mv	s8,a6
1c009786:	8729c8e3          	blt	s3,s2,1c008ff6 <pos_libc_prf+0x19e>
1c00978a:	ba91                	j	1c0090de <pos_libc_prf+0x286>
1c00978c:	fef70fa3          	sb	a5,-1(a4)
1c009790:	f9b5                	bnez	a1,1c009704 <pos_libc_prf+0x8ac>
1c009792:	bf41                	j	1c009722 <pos_libc_prf+0x8ca>
1c009794:	06900713          	li	a4,105
1c009798:	1ced9a63          	bne	s11,a4,1c00996c <pos_libc_prf+0xb14>
1c00979c:	000c2583          	lw	a1,0(s8)
1c0097a0:	0c11                	addi	s8,s8,4
1c0097a2:	3805c863          	bltz	a1,1c009b32 <pos_libc_prf+0xcda>
1c0097a6:	48d2                	lw	a7,20(sp)
1c0097a8:	872e                	mv	a4,a1
1c0097aa:	36089d63          	bnez	a7,1c009b24 <pos_libc_prf+0xccc>
1c0097ae:	4662                	lw	a2,24(sp)
1c0097b0:	87e6                	mv	a5,s9
1c0097b2:	c619                	beqz	a2,1c0097c0 <pos_libc_prf+0x968>
1c0097b4:	02000793          	li	a5,32
1c0097b8:	02f10223          	sb	a5,36(sp)
1c0097bc:	02510793          	addi	a5,sp,37
1c0097c0:	89be                	mv	s3,a5
1c0097c2:	4629                	li	a2,10
1c0097c4:	02c776b3          	remu	a3,a4,a2
1c0097c8:	02c75733          	divu	a4,a4,a2
1c0097cc:	0985                	addi	s3,s3,1
1c0097ce:	03068693          	addi	a3,a3,48
1c0097d2:	fed98fa3          	sb	a3,-1(s3)
1c0097d6:	f77d                	bnez	a4,1c0097c4 <pos_libc_prf+0x96c>
1c0097d8:	40f98733          	sub	a4,s3,a5
1c0097dc:	01475b63          	ble	s4,a4,1c0097f2 <pos_libc_prf+0x99a>
1c0097e0:	03000693          	li	a3,48
1c0097e4:	0985                	addi	s3,s3,1
1c0097e6:	fed98fa3          	sb	a3,-1(s3)
1c0097ea:	40f98733          	sub	a4,s3,a5
1c0097ee:	ff474be3          	blt	a4,s4,1c0097e4 <pos_libc_prf+0x98c>
1c0097f2:	00098023          	sb	zero,0(s3)
1c0097f6:	fff98713          	addi	a4,s3,-1
1c0097fa:	00e7fe63          	bleu	a4,a5,1c009816 <pos_libc_prf+0x9be>
1c0097fe:	0007c603          	lbu	a2,0(a5)
1c009802:	00074683          	lbu	a3,0(a4)
1c009806:	00c70023          	sb	a2,0(a4)
1c00980a:	00d78023          	sb	a3,0(a5)
1c00980e:	177d                	addi	a4,a4,-1
1c009810:	0785                	addi	a5,a5,1
1c009812:	fee7e6e3          	bltu	a5,a4,1c0097fe <pos_libc_prf+0x9a6>
1c009816:	46d2                	lw	a3,20(sp)
1c009818:	4762                	lw	a4,24(sp)
1c00981a:	419989b3          	sub	s3,s3,s9
1c00981e:	8ed9                	or	a3,a3,a4
1c009820:	c636                	sw	a3,12(sp)
1c009822:	e299                	bnez	a3,1c009828 <pos_libc_prf+0x9d0>
1c009824:	81fd                	srli	a1,a1,0x1f
1c009826:	c62e                	sw	a1,12(sp)
1c009828:	57fd                	li	a5,-1
1c00982a:	e2fa00e3          	beq	s4,a5,1c00964a <pos_libc_prf+0x7f2>
1c00982e:	0c800793          	li	a5,200
1c009832:	8d37c9e3          	blt	a5,s3,1c009104 <pos_libc_prf+0x2ac>
1c009836:	02000793          	li	a5,32
1c00983a:	c83e                	sw	a5,16(sp)
1c00983c:	fb29cd63          	blt	s3,s2,1c008ff6 <pos_libc_prf+0x19e>
1c009840:	b879                	j	1c0090de <pos_libc_prf+0x286>
1c009842:	000c2783          	lw	a5,0(s8)
1c009846:	020102a3          	sb	zero,37(sp)
1c00984a:	02f10223          	sb	a5,36(sp)
1c00984e:	0c11                	addi	s8,s8,4
1c009850:	4985                	li	s3,1
1c009852:	f9eff06f          	j	1c008ff0 <pos_libc_prf+0x198>
1c009856:	000c2703          	lw	a4,0(s8)
1c00985a:	87e6                	mv	a5,s9
1c00985c:	0c11                	addi	s8,s8,4
1c00985e:	4629                	li	a2,10
1c009860:	02c776b3          	remu	a3,a4,a2
1c009864:	02c75733          	divu	a4,a4,a2
1c009868:	0785                	addi	a5,a5,1
1c00986a:	03068693          	addi	a3,a3,48
1c00986e:	fed78fa3          	sb	a3,-1(a5)
1c009872:	f77d                	bnez	a4,1c009860 <pos_libc_prf+0xa08>
1c009874:	419789b3          	sub	s3,a5,s9
1c009878:	0149db63          	ble	s4,s3,1c00988e <pos_libc_prf+0xa36>
1c00987c:	03000713          	li	a4,48
1c009880:	0785                	addi	a5,a5,1
1c009882:	fee78fa3          	sb	a4,-1(a5)
1c009886:	419789b3          	sub	s3,a5,s9
1c00988a:	ff49cbe3          	blt	s3,s4,1c009880 <pos_libc_prf+0xa28>
1c00988e:	00078023          	sb	zero,0(a5)
1c009892:	17fd                	addi	a5,a5,-1
1c009894:	00fcff63          	bleu	a5,s9,1c0098b2 <pos_libc_prf+0xa5a>
1c009898:	8766                	mv	a4,s9
1c00989a:	00074603          	lbu	a2,0(a4)
1c00989e:	0007c683          	lbu	a3,0(a5)
1c0098a2:	00c78023          	sb	a2,0(a5)
1c0098a6:	00d70023          	sb	a3,0(a4)
1c0098aa:	17fd                	addi	a5,a5,-1
1c0098ac:	0705                	addi	a4,a4,1
1c0098ae:	fef766e3          	bltu	a4,a5,1c00989a <pos_libc_prf+0xa42>
1c0098b2:	57fd                	li	a5,-1
1c0098b4:	0cfa0a63          	beq	s4,a5,1c009988 <pos_libc_prf+0xb30>
1c0098b8:	0c800793          	li	a5,200
1c0098bc:	8537c4e3          	blt	a5,s3,1c009104 <pos_libc_prf+0x2ac>
1c0098c0:	02000813          	li	a6,32
1c0098c4:	c602                	sw	zero,12(sp)
1c0098c6:	c842                	sw	a6,16(sp)
1c0098c8:	ba45                	j	1c009278 <pos_libc_prf+0x420>
1c0098ca:	77e1                	lui	a5,0xffff8
1c0098cc:	8307c793          	xori	a5,a5,-2000
1c0098d0:	02610713          	addi	a4,sp,38
1c0098d4:	000c2603          	lw	a2,0(s8)
1c0098d8:	02f11223          	sh	a5,36(sp)
1c0098dc:	0c11                	addi	s8,s8,4
1c0098de:	87ba                	mv	a5,a4
1c0098e0:	4825                	li	a6,9
1c0098e2:	00f67593          	andi	a1,a2,15
1c0098e6:	0ff5f693          	andi	a3,a1,255
1c0098ea:	03068513          	addi	a0,a3,48
1c0098ee:	8211                	srli	a2,a2,0x4
1c0098f0:	05768693          	addi	a3,a3,87
1c0098f4:	0785                	addi	a5,a5,1
1c0098f6:	06b86163          	bltu	a6,a1,1c009958 <pos_libc_prf+0xb00>
1c0098fa:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c0098fe:	f275                	bnez	a2,1c0098e2 <pos_libc_prf+0xa8a>
1c009900:	40e789b3          	sub	s3,a5,a4
1c009904:	469d                	li	a3,7
1c009906:	0136cb63          	blt	a3,s3,1c00991c <pos_libc_prf+0xac4>
1c00990a:	03000613          	li	a2,48
1c00990e:	0785                	addi	a5,a5,1
1c009910:	fec78fa3          	sb	a2,-1(a5)
1c009914:	40e789b3          	sub	s3,a5,a4
1c009918:	ff36dbe3          	ble	s3,a3,1c00990e <pos_libc_prf+0xab6>
1c00991c:	00078023          	sb	zero,0(a5)
1c009920:	17fd                	addi	a5,a5,-1
1c009922:	00f77e63          	bleu	a5,a4,1c00993e <pos_libc_prf+0xae6>
1c009926:	00074603          	lbu	a2,0(a4)
1c00992a:	0007c683          	lbu	a3,0(a5)
1c00992e:	00c78023          	sb	a2,0(a5)
1c009932:	00d70023          	sb	a3,0(a4)
1c009936:	17fd                	addi	a5,a5,-1
1c009938:	0705                	addi	a4,a4,1
1c00993a:	fef766e3          	bltu	a4,a5,1c009926 <pos_libc_prf+0xace>
1c00993e:	57fd                	li	a5,-1
1c009940:	0989                	addi	s3,s3,2
1c009942:	04fa0363          	beq	s4,a5,1c009988 <pos_libc_prf+0xb30>
1c009946:	0c800793          	li	a5,200
1c00994a:	fb37cd63          	blt	a5,s3,1c009104 <pos_libc_prf+0x2ac>
1c00994e:	02000893          	li	a7,32
1c009952:	c602                	sw	zero,12(sp)
1c009954:	c846                	sw	a7,16(sp)
1c009956:	b20d                	j	1c009278 <pos_libc_prf+0x420>
1c009958:	fed78fa3          	sb	a3,-1(a5)
1c00995c:	f259                	bnez	a2,1c0098e2 <pos_libc_prf+0xa8a>
1c00995e:	b74d                	j	1c009900 <pos_libc_prf+0xaa8>
1c009960:	000c2783          	lw	a5,0(s8)
1c009964:	0c11                	addi	s8,s8,4
1c009966:	c380                	sw	s0,0(a5)
1c009968:	d36ff06f          	j	1c008e9e <pos_libc_prf+0x46>
1c00996c:	0c800713          	li	a4,200
1c009970:	d3b75763          	ble	s11,a4,1c008e9e <pos_libc_prf+0x46>
1c009974:	547d                	li	s0,-1
1c009976:	d4cff06f          	j	1c008ec2 <pos_libc_prf+0x6a>
1c00997a:	ffc50fa3          	sb	t3,-1(a0)
1c00997e:	c2a991e3          	bne	s3,a0,1c0095a0 <pos_libc_prf+0x748>
1c009982:	c60f86e3          	beqz	t6,1c0095ee <pos_libc_prf+0x796>
1c009986:	b325                	j	1c0096ae <pos_libc_prf+0x856>
1c009988:	0c800793          	li	a5,200
1c00998c:	f737cc63          	blt	a5,s3,1c009104 <pos_libc_prf+0x2ac>
1c009990:	c602                	sw	zero,12(sp)
1c009992:	b0dd                	j	1c009278 <pos_libc_prf+0x420>
1c009994:	0c800793          	li	a5,200
1c009998:	f737c663          	blt	a5,s3,1c009104 <pos_libc_prf+0x2ac>
1c00999c:	4705                	li	a4,1
1c00999e:	c63a                	sw	a4,12(sp)
1c0099a0:	b8e1                	j	1c009278 <pos_libc_prf+0x420>
1c0099a2:	41390a33          	sub	s4,s2,s3
1c0099a6:	00198613          	addi	a2,s3,1
1c0099aa:	85e6                	mv	a1,s9
1c0099ac:	014c8533          	add	a0,s9,s4
1c0099b0:	a72ff0ef          	jal	ra,1c008c22 <memmove>
1c0099b4:	46c2                	lw	a3,16(sp)
1c0099b6:	02000793          	li	a5,32
1c0099ba:	30f68163          	beq	a3,a5,1c009cbc <pos_libc_prf+0xe64>
1c0099be:	4732                	lw	a4,12(sp)
1c0099c0:	89ca                	mv	s3,s2
1c0099c2:	9a3a                	add	s4,s4,a4
1c0099c4:	f1475d63          	ble	s4,a4,1c0090de <pos_libc_prf+0x286>
1c0099c8:	4832                	lw	a6,12(sp)
1c0099ca:	4715                	li	a4,5
1c0099cc:	010c87b3          	add	a5,s9,a6
1c0099d0:	40f007b3          	neg	a5,a5
1c0099d4:	8b8d                	andi	a5,a5,3
1c0099d6:	00378693          	addi	a3,a5,3
1c0099da:	410a05b3          	sub	a1,s4,a6
1c0099de:	00e6f363          	bleu	a4,a3,1c0099e4 <pos_libc_prf+0xb8c>
1c0099e2:	4695                	li	a3,5
1c0099e4:	48b2                	lw	a7,12(sp)
1c0099e6:	fffa0713          	addi	a4,s4,-1
1c0099ea:	41170733          	sub	a4,a4,a7
1c0099ee:	06d76b63          	bltu	a4,a3,1c009a64 <pos_libc_prf+0xc0c>
1c0099f2:	86c6                	mv	a3,a7
1c0099f4:	cb9d                	beqz	a5,1c009a2a <pos_libc_prf+0xbd2>
1c0099f6:	46c2                	lw	a3,16(sp)
1c0099f8:	1988                	addi	a0,sp,240
1c0099fa:	01150733          	add	a4,a0,a7
1c0099fe:	f2d70a23          	sb	a3,-204(a4)
1c009a02:	4705                	li	a4,1
1c009a04:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c009a08:	02e78163          	beq	a5,a4,1c009a2a <pos_libc_prf+0xbd2>
1c009a0c:	4742                	lw	a4,16(sp)
1c009a0e:	96aa                	add	a3,a3,a0
1c009a10:	f2e68a23          	sb	a4,-204(a3)
1c009a14:	470d                	li	a4,3
1c009a16:	00288693          	addi	a3,a7,2
1c009a1a:	00e79863          	bne	a5,a4,1c009a2a <pos_libc_prf+0xbd2>
1c009a1e:	4842                	lw	a6,16(sp)
1c009a20:	96aa                	add	a3,a3,a0
1c009a22:	f3068a23          	sb	a6,-204(a3)
1c009a26:	00388693          	addi	a3,a7,3
1c009a2a:	48c2                	lw	a7,16(sp)
1c009a2c:	4832                	lw	a6,12(sp)
1c009a2e:	00889713          	slli	a4,a7,0x8
1c009a32:	01089513          	slli	a0,a7,0x10
1c009a36:	00e8e733          	or	a4,a7,a4
1c009a3a:	8d9d                	sub	a1,a1,a5
1c009a3c:	01889613          	slli	a2,a7,0x18
1c009a40:	8f49                	or	a4,a4,a0
1c009a42:	97c2                	add	a5,a5,a6
1c009a44:	8f51                	or	a4,a4,a2
1c009a46:	0025d513          	srli	a0,a1,0x2
1c009a4a:	97e6                	add	a5,a5,s9
1c009a4c:	4601                	li	a2,0
1c009a4e:	c398                	sw	a4,0(a5)
1c009a50:	0605                	addi	a2,a2,1
1c009a52:	0791                	addi	a5,a5,4
1c009a54:	fea66de3          	bltu	a2,a0,1c009a4e <pos_libc_prf+0xbf6>
1c009a58:	ffc5f793          	andi	a5,a1,-4
1c009a5c:	96be                	add	a3,a3,a5
1c009a5e:	c636                	sw	a3,12(sp)
1c009a60:	e6b78e63          	beq	a5,a1,1c0090dc <pos_libc_prf+0x284>
1c009a64:	46b2                	lw	a3,12(sp)
1c009a66:	0f010893          	addi	a7,sp,240
1c009a6a:	4742                	lw	a4,16(sp)
1c009a6c:	00d887b3          	add	a5,a7,a3
1c009a70:	f2e78a23          	sb	a4,-204(a5)
1c009a74:	00168793          	addi	a5,a3,1
1c009a78:	e747d263          	ble	s4,a5,1c0090dc <pos_libc_prf+0x284>
1c009a7c:	97c6                	add	a5,a5,a7
1c009a7e:	f2e78a23          	sb	a4,-204(a5)
1c009a82:	00268793          	addi	a5,a3,2
1c009a86:	e547db63          	ble	s4,a5,1c0090dc <pos_libc_prf+0x284>
1c009a8a:	97c6                	add	a5,a5,a7
1c009a8c:	f2e78a23          	sb	a4,-204(a5)
1c009a90:	00368793          	addi	a5,a3,3
1c009a94:	e547d463          	ble	s4,a5,1c0090dc <pos_libc_prf+0x284>
1c009a98:	97c6                	add	a5,a5,a7
1c009a9a:	f2e78a23          	sb	a4,-204(a5)
1c009a9e:	00468793          	addi	a5,a3,4
1c009aa2:	e347dd63          	ble	s4,a5,1c0090dc <pos_libc_prf+0x284>
1c009aa6:	97c6                	add	a5,a5,a7
1c009aa8:	f2e78a23          	sb	a4,-204(a5)
1c009aac:	00568a93          	addi	s5,a3,5
1c009ab0:	e34ad663          	ble	s4,s5,1c0090dc <pos_libc_prf+0x284>
1c009ab4:	9ac6                	add	s5,s5,a7
1c009ab6:	f2ea8a23          	sb	a4,-204(s5)
1c009aba:	89ca                	mv	s3,s2
1c009abc:	e22ff06f          	j	1c0090de <pos_libc_prf+0x286>
1c009ac0:	4881                	li	a7,0
1c009ac2:	1054                	addi	a3,sp,36
1c009ac4:	b935                	j	1c009700 <pos_libc_prf+0x8a8>
1c009ac6:	02414783          	lbu	a5,36(sp)
1c009aca:	1058                	addi	a4,sp,36
1c009acc:	46e5                	li	a3,25
1c009ace:	c8078ce3          	beqz	a5,1c009766 <pos_libc_prf+0x90e>
1c009ad2:	fe078613          	addi	a2,a5,-32
1c009ad6:	f9f78793          	addi	a5,a5,-97
1c009ada:	0ff7f793          	andi	a5,a5,255
1c009ade:	00f6e963          	bltu	a3,a5,1c009af0 <pos_libc_prf+0xc98>
1c009ae2:	00c70023          	sb	a2,0(a4)
1c009ae6:	0705                	addi	a4,a4,1
1c009ae8:	00074783          	lbu	a5,0(a4)
1c009aec:	f3fd                	bnez	a5,1c009ad2 <pos_libc_prf+0xc7a>
1c009aee:	b9a5                	j	1c009766 <pos_libc_prf+0x90e>
1c009af0:	0705                	addi	a4,a4,1
1c009af2:	00074783          	lbu	a5,0(a4)
1c009af6:	fff1                	bnez	a5,1c009ad2 <pos_libc_prf+0xc7a>
1c009af8:	b1bd                	j	1c009766 <pos_libc_prf+0x90e>
1c009afa:	47d2                	lw	a5,20(sp)
1c009afc:	20078263          	beqz	a5,1c009d00 <pos_libc_prf+0xea8>
1c009b00:	02b00713          	li	a4,43
1c009b04:	02e10223          	sb	a4,36(sp)
1c009b08:	02510e93          	addi	t4,sp,37
1c009b0c:	4301                	li	t1,0
1c009b0e:	4501                	li	a0,0
1c009b10:	4681                	li	a3,0
1c009b12:	4581                	li	a1,0
1c009b14:	b8d5                	j	1c009408 <pos_libc_prf+0x5b0>
1c009b16:	0c800793          	li	a5,200
1c009b1a:	df37c563          	blt	a5,s3,1c009104 <pos_libc_prf+0x2ac>
1c009b1e:	8c42                	mv	s8,a6
1c009b20:	f58ff06f          	j	1c009278 <pos_libc_prf+0x420>
1c009b24:	02b00793          	li	a5,43
1c009b28:	02f10223          	sb	a5,36(sp)
1c009b2c:	02510793          	addi	a5,sp,37
1c009b30:	b941                	j	1c0097c0 <pos_libc_prf+0x968>
1c009b32:	02d00793          	li	a5,45
1c009b36:	02f10223          	sb	a5,36(sp)
1c009b3a:	800007b7          	lui	a5,0x80000
1c009b3e:	22f58363          	beq	a1,a5,1c009d64 <pos_libc_prf+0xf0c>
1c009b42:	40b00733          	neg	a4,a1
1c009b46:	02510793          	addi	a5,sp,37
1c009b4a:	b99d                	j	1c0097c0 <pos_libc_prf+0x968>
1c009b4c:	47b2                	lw	a5,12(sp)
1c009b4e:	4f81                	li	t6,0
1c009b50:	e399                	bnez	a5,1c009b56 <pos_libc_prf+0xcfe>
1c009b52:	01403fb3          	snez	t6,s4
1c009b56:	56f5                	li	a3,-3
1c009b58:	001a0e13          	addi	t3,s4,1
1c009b5c:	00d34463          	blt	t1,a3,1c009b64 <pos_libc_prf+0xd0c>
1c009b60:	166e5d63          	ble	t1,t3,1c009cda <pos_libc_prf+0xe82>
1c009b64:	46c1                	li	a3,16
1c009b66:	01c6d363          	ble	t3,a3,1c009b6c <pos_libc_prf+0xd14>
1c009b6a:	4e41                	li	t3,16
1c009b6c:	06700693          	li	a3,103
1c009b70:	1e7d                	addi	t3,t3,-1
1c009b72:	1add8963          	beq	s11,a3,1c009d24 <pos_libc_prf+0xecc>
1c009b76:	04500d93          	li	s11,69
1c009b7a:	b0c5                	j	1c00945a <pos_libc_prf+0x602>
1c009b7c:	020102a3          	sb	zero,37(sp)
1c009b80:	57fd                	li	a5,-1
1c009b82:	89ba                	mv	s3,a4
1c009b84:	8c2a                	mv	s8,a0
1c009b86:	c6fa0563          	beq	s4,a5,1c008ff0 <pos_libc_prf+0x198>
1c009b8a:	02000813          	li	a6,32
1c009b8e:	c842                	sw	a6,16(sp)
1c009b90:	c60ff06f          	j	1c008ff0 <pos_libc_prf+0x198>
1c009b94:	89b6                	mv	s3,a3
1c009b96:	bdeff06f          	j	1c008f74 <pos_libc_prf+0x11c>
1c009b9a:	8766                	mv	a4,s9
1c009b9c:	1c084c63          	bltz	a6,1c009d74 <pos_libc_prf+0xf1c>
1c009ba0:	8e55                	or	a2,a2,a3
1c009ba2:	fbfd8793          	addi	a5,s11,-65
1c009ba6:	00370993          	addi	s3,a4,3
1c009baa:	46e5                	li	a3,25
1c009bac:	10061a63          	bnez	a2,1c009cc0 <pos_libc_prf+0xe68>
1c009bb0:	16f6ee63          	bltu	a3,a5,1c009d2c <pos_libc_prf+0xed4>
1c009bb4:	6795                	lui	a5,0x5
1c009bb6:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c009bba:	00f71023          	sh	a5,0(a4)
1c009bbe:	04600793          	li	a5,70
1c009bc2:	00f70123          	sb	a5,2(a4)
1c009bc6:	000701a3          	sb	zero,3(a4)
1c009bca:	419989b3          	sub	s3,s3,s9
1c009bce:	b48d                	j	1c009630 <pos_libc_prf+0x7d8>
1c009bd0:	85e6                	mv	a1,s9
1c009bd2:	8766                	mv	a4,s9
1c009bd4:	e38ff06f          	j	1c00920c <pos_libc_prf+0x3b4>
1c009bd8:	a00a09e3          	beqz	s4,1c0095ea <pos_libc_prf+0x792>
1c009bdc:	02e00693          	li	a3,46
1c009be0:	002e8513          	addi	a0,t4,2
1c009be4:	00de80a3          	sb	a3,1(t4)
1c009be8:	b27d                	j	1c009596 <pos_libc_prf+0x73e>
1c009bea:	14605b63          	blez	t1,1c009d40 <pos_libc_prf+0xee8>
1c009bee:	006e89b3          	add	s3,t4,t1
1c009bf2:	4541                	li	a0,16
1c009bf4:	03000893          	li	a7,48
1c009bf8:	00271793          	slli	a5,a4,0x2
1c009bfc:	01e75313          	srli	t1,a4,0x1e
1c009c00:	00261693          	slli	a3,a2,0x2
1c009c04:	00e78833          	add	a6,a5,a4
1c009c08:	00d366b3          	or	a3,t1,a3
1c009c0c:	96b2                	add	a3,a3,a2
1c009c0e:	00f837b3          	sltu	a5,a6,a5
1c009c12:	97b6                	add	a5,a5,a3
1c009c14:	0786                	slli	a5,a5,0x1
1c009c16:	01f85693          	srli	a3,a6,0x1f
1c009c1a:	8fd5                	or	a5,a5,a3
1c009c1c:	01c7d693          	srli	a3,a5,0x1c
1c009c20:	03068693          	addi	a3,a3,48
1c009c24:	02a05063          	blez	a0,1c009c44 <pos_libc_prf+0xdec>
1c009c28:	00181713          	slli	a4,a6,0x1
1c009c2c:	10000837          	lui	a6,0x10000
1c009c30:	187d                	addi	a6,a6,-1
1c009c32:	fed58fa3          	sb	a3,-1(a1)
1c009c36:	157d                	addi	a0,a0,-1
1c009c38:	0107f633          	and	a2,a5,a6
1c009c3c:	00b98863          	beq	s3,a1,1c009c4c <pos_libc_prf+0xdf4>
1c009c40:	0585                	addi	a1,a1,1
1c009c42:	bf5d                	j	1c009bf8 <pos_libc_prf+0xda0>
1c009c44:	ff158fa3          	sb	a7,-1(a1)
1c009c48:	feb99ce3          	bne	s3,a1,1c009c40 <pos_libc_prf+0xde8>
1c009c4c:	4301                	li	t1,0
1c009c4e:	48b2                	lw	a7,12(sp)
1c009c50:	00089463          	bnez	a7,1c009c58 <pos_libc_prf+0xe00>
1c009c54:	a40a0be3          	beqz	s4,1c0096aa <pos_libc_prf+0x852>
1c009c58:	00198813          	addi	a6,s3,1
1c009c5c:	001a0693          	addi	a3,s4,1
1c009c60:	02e00593          	li	a1,46
1c009c64:	00b98023          	sb	a1,0(s3)
1c009c68:	99b6                	add	s3,s3,a3
1c009c6a:	85c2                	mv	a1,a6
1c009c6c:	03000693          	li	a3,48
1c009c70:	a2b98be3          	beq	s3,a1,1c0096a6 <pos_libc_prf+0x84e>
1c009c74:	0585                	addi	a1,a1,1
1c009c76:	9e0302e3          	beqz	t1,1c00965a <pos_libc_prf+0x802>
1c009c7a:	fed58fa3          	sb	a3,-1(a1)
1c009c7e:	0305                	addi	t1,t1,1
1c009c80:	bfc5                	j	1c009c70 <pos_libc_prf+0xe18>
1c009c82:	4a19                	li	s4,6
1c009c84:	fadd9b63          	bne	s11,a3,1c00943a <pos_libc_prf+0x5e2>
1c009c88:	46b2                	lw	a3,12(sp)
1c009c8a:	57f5                	li	a5,-3
1c009c8c:	0016cf93          	xori	t6,a3,1
1c009c90:	08f35663          	ble	a5,t1,1c009d1c <pos_libc_prf+0xec4>
1c009c94:	06500d93          	li	s11,101
1c009c98:	4e19                	li	t3,6
1c009c9a:	fc0ff06f          	j	1c00945a <pos_libc_prf+0x602>
1c009c9e:	0c800793          	li	a5,200
1c009ca2:	c737c163          	blt	a5,s3,1c009104 <pos_libc_prf+0x2ac>
1c009ca6:	8c2a                	mv	s8,a0
1c009ca8:	c602                	sw	zero,12(sp)
1c009caa:	dceff06f          	j	1c009278 <pos_libc_prf+0x420>
1c009cae:	02d00793          	li	a5,45
1c009cb2:	40600333          	neg	t1,t1
1c009cb6:	00f980a3          	sb	a5,1(s3)
1c009cba:	ba89                	j	1c00960c <pos_libc_prf+0x7b4>
1c009cbc:	c602                	sw	zero,12(sp)
1c009cbe:	b329                	j	1c0099c8 <pos_libc_prf+0xb70>
1c009cc0:	0cf6ed63          	bltu	a3,a5,1c009d9a <pos_libc_prf+0xf42>
1c009cc4:	6791                	lui	a5,0x4
1c009cc6:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c009cca:	00f71023          	sh	a5,0(a4)
1c009cce:	04e00793          	li	a5,78
1c009cd2:	00f70123          	sb	a5,2(a4)
1c009cd6:	bdc5                	j	1c009bc6 <pos_libc_prf+0xd6e>
1c009cd8:	4f81                	li	t6,0
1c009cda:	014307b3          	add	a5,t1,s4
1c009cde:	0807c863          	bltz	a5,1c009d6e <pos_libc_prf+0xf16>
1c009ce2:	46c1                	li	a3,16
1c009ce4:	8e3e                	mv	t3,a5
1c009ce6:	00f6d363          	ble	a5,a3,1c009cec <pos_libc_prf+0xe94>
1c009cea:	4e41                	li	t3,16
1c009cec:	1e7d                	addi	t3,t3,-1
1c009cee:	06600d93          	li	s11,102
1c009cf2:	f6079463          	bnez	a5,1c00945a <pos_libc_prf+0x602>
1c009cf6:	4681                	li	a3,0
1c009cf8:	08000637          	lui	a2,0x8000
1c009cfc:	fc8ff06f          	j	1c0094c4 <pos_libc_prf+0x66c>
1c009d00:	47e2                	lw	a5,24(sp)
1c009d02:	c7d5                	beqz	a5,1c009dae <pos_libc_prf+0xf56>
1c009d04:	02000713          	li	a4,32
1c009d08:	02e10223          	sb	a4,36(sp)
1c009d0c:	02510e93          	addi	t4,sp,37
1c009d10:	4301                	li	t1,0
1c009d12:	4501                	li	a0,0
1c009d14:	4681                	li	a3,0
1c009d16:	4581                	li	a1,0
1c009d18:	ef0ff06f          	j	1c009408 <pos_libc_prf+0x5b0>
1c009d1c:	479d                	li	a5,7
1c009d1e:	fa67dee3          	ble	t1,a5,1c009cda <pos_libc_prf+0xe82>
1c009d22:	4e19                	li	t3,6
1c009d24:	06500d93          	li	s11,101
1c009d28:	f32ff06f          	j	1c00945a <pos_libc_prf+0x602>
1c009d2c:	679d                	lui	a5,0x7
1c009d2e:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c009d32:	00f71023          	sh	a5,0(a4)
1c009d36:	06600793          	li	a5,102
1c009d3a:	00f70123          	sb	a5,2(a4)
1c009d3e:	b561                	j	1c009bc6 <pos_libc_prf+0xd6e>
1c009d40:	03000693          	li	a3,48
1c009d44:	00de8023          	sb	a3,0(t4)
1c009d48:	4541                	li	a0,16
1c009d4a:	b711                	j	1c009c4e <pos_libc_prf+0xdf6>
1c009d4c:	48e2                	lw	a7,24(sp)
1c009d4e:	8ee6                	mv	t4,s9
1c009d50:	dc088e63          	beqz	a7,1c00932c <pos_libc_prf+0x4d4>
1c009d54:	02000713          	li	a4,32
1c009d58:	02e10223          	sb	a4,36(sp)
1c009d5c:	02510e93          	addi	t4,sp,37
1c009d60:	dccff06f          	j	1c00932c <pos_libc_prf+0x4d4>
1c009d64:	80000737          	lui	a4,0x80000
1c009d68:	02510793          	addi	a5,sp,37
1c009d6c:	bc91                	j	1c0097c0 <pos_libc_prf+0x968>
1c009d6e:	06600d93          	li	s11,102
1c009d72:	b751                	j	1c009cf6 <pos_libc_prf+0xe9e>
1c009d74:	02d00713          	li	a4,45
1c009d78:	02e10223          	sb	a4,36(sp)
1c009d7c:	02510713          	addi	a4,sp,37
1c009d80:	b505                	j	1c009ba0 <pos_libc_prf+0xd48>
1c009d82:	a40a5d63          	bgez	s4,1c008fdc <pos_libc_prf+0x184>
1c009d86:	a62ff06f          	j	1c008fe8 <pos_libc_prf+0x190>
1c009d8a:	02d00713          	li	a4,45
1c009d8e:	02e10223          	sb	a4,36(sp)
1c009d92:	02510e93          	addi	t4,sp,37
1c009d96:	d96ff06f          	j	1c00932c <pos_libc_prf+0x4d4>
1c009d9a:	6799                	lui	a5,0x6
1c009d9c:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c009da0:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c009da4:	06e00793          	li	a5,110
1c009da8:	00f70123          	sb	a5,2(a4)
1c009dac:	bd29                	j	1c009bc6 <pos_libc_prf+0xd6e>
1c009dae:	8ee6                	mv	t4,s9
1c009db0:	b785                	j	1c009d10 <pos_libc_prf+0xeb8>
1c009db2:	89aa                	mv	s3,a0
1c009db4:	820f8de3          	beqz	t6,1c0095ee <pos_libc_prf+0x796>
1c009db8:	b8dd                	j	1c0096ae <pos_libc_prf+0x856>

1c009dba <pos_init_start>:
1c009dba:	1141                	addi	sp,sp,-16
1c009dbc:	c422                	sw	s0,8(sp)
1c009dbe:	1c000437          	lui	s0,0x1c000
1c009dc2:	c606                	sw	ra,12(sp)
1c009dc4:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009dc8:	d02fe0ef          	jal	ra,1c0082ca <pos_soc_init>
1c009dcc:	2275                	jal	1c009f78 <pos_irq_init>
1c009dce:	2ae1                	jal	1c009fa6 <pos_soc_event_init>
1c009dd0:	2a31                	jal	1c009eec <pos_allocs_init>
1c009dd2:	405c                	lw	a5,4(s0)
1c009dd4:	c791                	beqz	a5,1c009de0 <pos_init_start+0x26>
1c009dd6:	0411                	addi	s0,s0,4
1c009dd8:	0411                	addi	s0,s0,4
1c009dda:	9782                	jalr	a5
1c009ddc:	401c                	lw	a5,0(s0)
1c009dde:	ffed                	bnez	a5,1c009dd8 <pos_init_start+0x1e>
1c009de0:	842ff0ef          	jal	ra,1c008e22 <pos_io_start>
1c009de4:	300467f3          	csrrsi	a5,mstatus,8
1c009de8:	40b2                	lw	ra,12(sp)
1c009dea:	4422                	lw	s0,8(sp)
1c009dec:	0141                	addi	sp,sp,16
1c009dee:	8082                	ret

1c009df0 <pos_init_stop>:
1c009df0:	1141                	addi	sp,sp,-16
1c009df2:	c422                	sw	s0,8(sp)
1c009df4:	1c000437          	lui	s0,0x1c000
1c009df8:	c606                	sw	ra,12(sp)
1c009dfa:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009dfe:	828ff0ef          	jal	ra,1c008e26 <pos_io_stop>
1c009e02:	405c                	lw	a5,4(s0)
1c009e04:	c791                	beqz	a5,1c009e10 <pos_init_stop+0x20>
1c009e06:	0411                	addi	s0,s0,4
1c009e08:	0411                	addi	s0,s0,4
1c009e0a:	9782                	jalr	a5
1c009e0c:	401c                	lw	a5,0(s0)
1c009e0e:	ffed                	bnez	a5,1c009e08 <pos_init_stop+0x18>
1c009e10:	40b2                	lw	ra,12(sp)
1c009e12:	4422                	lw	s0,8(sp)
1c009e14:	0141                	addi	sp,sp,16
1c009e16:	8082                	ret

1c009e18 <pos_alloc_init>:
1c009e18:	00758793          	addi	a5,a1,7
1c009e1c:	9be1                	andi	a5,a5,-8
1c009e1e:	40b785b3          	sub	a1,a5,a1
1c009e22:	c11c                	sw	a5,0(a0)
1c009e24:	8e0d                	sub	a2,a2,a1
1c009e26:	00c05663          	blez	a2,1c009e32 <pos_alloc_init+0x1a>
1c009e2a:	9a61                	andi	a2,a2,-8
1c009e2c:	c390                	sw	a2,0(a5)
1c009e2e:	0007a223          	sw	zero,4(a5)
1c009e32:	8082                	ret

1c009e34 <pos_alloc>:
1c009e34:	4110                	lw	a2,0(a0)
1c009e36:	059d                	addi	a1,a1,7
1c009e38:	99e1                	andi	a1,a1,-8
1c009e3a:	ca31                	beqz	a2,1c009e8e <pos_alloc+0x5a>
1c009e3c:	4218                	lw	a4,0(a2)
1c009e3e:	425c                	lw	a5,4(a2)
1c009e40:	02b75963          	ble	a1,a4,1c009e72 <pos_alloc+0x3e>
1c009e44:	cb81                	beqz	a5,1c009e54 <pos_alloc+0x20>
1c009e46:	4398                	lw	a4,0(a5)
1c009e48:	43d4                	lw	a3,4(a5)
1c009e4a:	00b75763          	ble	a1,a4,1c009e58 <pos_alloc+0x24>
1c009e4e:	863e                	mv	a2,a5
1c009e50:	87b6                	mv	a5,a3
1c009e52:	fbf5                	bnez	a5,1c009e46 <pos_alloc+0x12>
1c009e54:	853e                	mv	a0,a5
1c009e56:	8082                	ret
1c009e58:	00b70a63          	beq	a4,a1,1c009e6c <pos_alloc+0x38>
1c009e5c:	00b78533          	add	a0,a5,a1
1c009e60:	8f0d                	sub	a4,a4,a1
1c009e62:	c118                	sw	a4,0(a0)
1c009e64:	c154                	sw	a3,4(a0)
1c009e66:	c248                	sw	a0,4(a2)
1c009e68:	853e                	mv	a0,a5
1c009e6a:	8082                	ret
1c009e6c:	c254                	sw	a3,4(a2)
1c009e6e:	853e                	mv	a0,a5
1c009e70:	8082                	ret
1c009e72:	00e58b63          	beq	a1,a4,1c009e88 <pos_alloc+0x54>
1c009e76:	00b606b3          	add	a3,a2,a1
1c009e7a:	8f0d                	sub	a4,a4,a1
1c009e7c:	c2dc                	sw	a5,4(a3)
1c009e7e:	c298                	sw	a4,0(a3)
1c009e80:	87b2                	mv	a5,a2
1c009e82:	c114                	sw	a3,0(a0)
1c009e84:	853e                	mv	a0,a5
1c009e86:	8082                	ret
1c009e88:	c11c                	sw	a5,0(a0)
1c009e8a:	87b2                	mv	a5,a2
1c009e8c:	b7e1                	j	1c009e54 <pos_alloc+0x20>
1c009e8e:	4781                	li	a5,0
1c009e90:	b7d1                	j	1c009e54 <pos_alloc+0x20>

1c009e92 <pos_free>:
1c009e92:	4118                	lw	a4,0(a0)
1c009e94:	061d                	addi	a2,a2,7
1c009e96:	9a61                	andi	a2,a2,-8
1c009e98:	c729                	beqz	a4,1c009ee2 <pos_free+0x50>
1c009e9a:	00b76663          	bltu	a4,a1,1c009ea6 <pos_free+0x14>
1c009e9e:	a0a1                	j	1c009ee6 <pos_free+0x54>
1c009ea0:	00b7f563          	bleu	a1,a5,1c009eaa <pos_free+0x18>
1c009ea4:	873e                	mv	a4,a5
1c009ea6:	435c                	lw	a5,4(a4)
1c009ea8:	ffe5                	bnez	a5,1c009ea0 <pos_free+0xe>
1c009eaa:	00c586b3          	add	a3,a1,a2
1c009eae:	02d78463          	beq	a5,a3,1c009ed6 <pos_free+0x44>
1c009eb2:	c190                	sw	a2,0(a1)
1c009eb4:	c1dc                	sw	a5,4(a1)
1c009eb6:	cf11                	beqz	a4,1c009ed2 <pos_free+0x40>
1c009eb8:	431c                	lw	a5,0(a4)
1c009eba:	00f706b3          	add	a3,a4,a5
1c009ebe:	00d58463          	beq	a1,a3,1c009ec6 <pos_free+0x34>
1c009ec2:	c34c                	sw	a1,4(a4)
1c009ec4:	8082                	ret
1c009ec6:	4194                	lw	a3,0(a1)
1c009ec8:	41d0                	lw	a2,4(a1)
1c009eca:	97b6                	add	a5,a5,a3
1c009ecc:	c31c                	sw	a5,0(a4)
1c009ece:	c350                	sw	a2,4(a4)
1c009ed0:	8082                	ret
1c009ed2:	c10c                	sw	a1,0(a0)
1c009ed4:	8082                	ret
1c009ed6:	4394                	lw	a3,0(a5)
1c009ed8:	43dc                	lw	a5,4(a5)
1c009eda:	9636                	add	a2,a2,a3
1c009edc:	c190                	sw	a2,0(a1)
1c009ede:	c1dc                	sw	a5,4(a1)
1c009ee0:	bfd9                	j	1c009eb6 <pos_free+0x24>
1c009ee2:	4781                	li	a5,0
1c009ee4:	b7d9                	j	1c009eaa <pos_free+0x18>
1c009ee6:	87ba                	mv	a5,a4
1c009ee8:	4701                	li	a4,0
1c009eea:	b7c1                	j	1c009eaa <pos_free+0x18>

1c009eec <pos_allocs_init>:
1c009eec:	1141                	addi	sp,sp,-16
1c009eee:	1c0065b7          	lui	a1,0x1c006
1c009ef2:	c606                	sw	ra,12(sp)
1c009ef4:	27458793          	addi	a5,a1,628 # 1c006274 <__l2_priv0_end>
1c009ef8:	1c008637          	lui	a2,0x1c008
1c009efc:	04c7cc63          	blt	a5,a2,1c009f54 <pos_allocs_init+0x68>
1c009f00:	4581                	li	a1,0
1c009f02:	4601                	li	a2,0
1c009f04:	1c006537          	lui	a0,0x1c006
1c009f08:	26850513          	addi	a0,a0,616 # 1c006268 <pos_alloc_l2>
1c009f0c:	3731                	jal	1c009e18 <pos_alloc_init>
1c009f0e:	1c00a5b7          	lui	a1,0x1c00a
1c009f12:	fc058793          	addi	a5,a1,-64 # 1c009fc0 <__l2_priv1_end>
1c009f16:	1c010637          	lui	a2,0x1c010
1c009f1a:	02c7c963          	blt	a5,a2,1c009f4c <pos_allocs_init+0x60>
1c009f1e:	4581                	li	a1,0
1c009f20:	4601                	li	a2,0
1c009f22:	1c006537          	lui	a0,0x1c006
1c009f26:	26c50513          	addi	a0,a0,620 # 1c00626c <pos_alloc_l2+0x4>
1c009f2a:	35fd                	jal	1c009e18 <pos_alloc_init>
1c009f2c:	1c0105b7          	lui	a1,0x1c010
1c009f30:	00058793          	mv	a5,a1
1c009f34:	40b2                	lw	ra,12(sp)
1c009f36:	1c080637          	lui	a2,0x1c080
1c009f3a:	1c006537          	lui	a0,0x1c006
1c009f3e:	8e1d                	sub	a2,a2,a5
1c009f40:	00058593          	mv	a1,a1
1c009f44:	27050513          	addi	a0,a0,624 # 1c006270 <pos_alloc_l2+0x8>
1c009f48:	0141                	addi	sp,sp,16
1c009f4a:	b5f9                	j	1c009e18 <pos_alloc_init>
1c009f4c:	8e1d                	sub	a2,a2,a5
1c009f4e:	fc058593          	addi	a1,a1,-64 # 1c00ffc0 <__l2_priv1_end+0x6000>
1c009f52:	bfc1                	j	1c009f22 <pos_allocs_init+0x36>
1c009f54:	8e1d                	sub	a2,a2,a5
1c009f56:	27458593          	addi	a1,a1,628
1c009f5a:	b76d                	j	1c009f04 <pos_allocs_init+0x18>

1c009f5c <pi_l2_malloc>:
1c009f5c:	85aa                	mv	a1,a0
1c009f5e:	1c006537          	lui	a0,0x1c006
1c009f62:	26850513          	addi	a0,a0,616 # 1c006268 <pos_alloc_l2>
1c009f66:	b5f9                	j	1c009e34 <pos_alloc>

1c009f68 <pi_l2_free>:
1c009f68:	862e                	mv	a2,a1
1c009f6a:	85aa                	mv	a1,a0
1c009f6c:	1c006537          	lui	a0,0x1c006
1c009f70:	26850513          	addi	a0,a0,616 # 1c006268 <pos_alloc_l2>
1c009f74:	bf39                	j	1c009e92 <pos_free>

1c009f76 <__rt_handle_illegal_instr>:
1c009f76:	8082                	ret

1c009f78 <pos_irq_init>:
1c009f78:	1a10a737          	lui	a4,0x1a10a
1c009f7c:	f14027f3          	csrr	a5,mhartid
1c009f80:	56fd                	li	a3,-1
1c009f82:	8795                	srai	a5,a5,0x5
1c009f84:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c009f88:	03f7f793          	andi	a5,a5,63
1c009f8c:	477d                	li	a4,31
1c009f8e:	00e78363          	beq	a5,a4,1c009f94 <pos_irq_init+0x1c>
1c009f92:	8082                	ret
1c009f94:	1c0087b7          	lui	a5,0x1c008
1c009f98:	00078793          	mv	a5,a5
1c009f9c:	0017e793          	ori	a5,a5,1
1c009fa0:	30579073          	csrw	mtvec,a5
1c009fa4:	8082                	ret

1c009fa6 <pos_soc_event_init>:
1c009fa6:	1a1067b7          	lui	a5,0x1a106
1c009faa:	577d                	li	a4,-1
1c009fac:	c3d8                	sw	a4,4(a5)
1c009fae:	c798                	sw	a4,8(a5)
1c009fb0:	c7d8                	sw	a4,12(a5)
1c009fb2:	cb98                	sw	a4,16(a5)
1c009fb4:	cbd8                	sw	a4,20(a5)
1c009fb6:	cf98                	sw	a4,24(a5)
1c009fb8:	cfd8                	sw	a4,28(a5)
1c009fba:	d398                	sw	a4,32(a5)
1c009fbc:	8082                	ret

1c009fbe <_endtext>:
	...
