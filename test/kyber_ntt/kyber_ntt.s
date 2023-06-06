riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	7b10106f          	j	1c009fb0 <__rt_handle_illegal_instr>
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
1c008084:	72d0106f          	j	1c009fb0 <__rt_handle_illegal_instr>

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
1c0080c4:	16028293          	addi	t0,t0,352 # 1c006220 <stack>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	17c30313          	addi	t1,t1,380 # 1c006244 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	14610113          	addi	sp,sp,326 # 1c006220 <stack>
1c0080e2:	513010ef          	jal	ra,1c009df4 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	52f010ef          	jal	ra,1c009e2a <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	547000ef          	jal	ra,1c008e48 <exit>

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
1c008156:	475000ef          	jal	ra,1c008dca <puts>
1c00815a:	6785                	lui	a5,0x1
1c00815c:	757d                	lui	a0,0xfffff
1c00815e:	e0078793          	addi	a5,a5,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c008162:	978a                	add	a5,a5,sp
1c008164:	6a050593          	addi	a1,a0,1696 # fffff6a0 <pulp__FC+0xfffff6a1>
1c008168:	20050513          	addi	a0,a0,512
1c00816c:	95be                	add	a1,a1,a5
1c00816e:	953e                	add	a0,a0,a5
1c008170:	2791                	jal	1c0088b4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c008172:	1c000537          	lui	a0,0x1c000
1c008176:	12850513          	addi	a0,a0,296 # 1c000128 <__DTOR_END__+0x10c>
1c00817a:	451000ef          	jal	ra,1c008dca <puts>
1c00817e:	62010113          	addi	sp,sp,1568
1c008182:	7ec12083          	lw	ra,2028(sp)
1c008186:	4501                	li	a0,0
1c008188:	7f010113          	addi	sp,sp,2032
1c00818c:	8082                	ret

1c00818e <pos_fll_init>:
1c00818e:	1101                	addi	sp,sp,-32
1c008190:	1a100637          	lui	a2,0x1a100
1c008194:	ca26                	sw	s1,20(sp)
1c008196:	00451693          	slli	a3,a0,0x4
1c00819a:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c00819e:	94b6                	add	s1,s1,a3
1c0081a0:	4098                	lw	a4,0(s1)
1c0081a2:	c84a                	sw	s2,16(sp)
1c0081a4:	ce06                	sw	ra,28(sp)
1c0081a6:	cc22                	sw	s0,24(sp)
1c0081a8:	c64e                	sw	s3,12(sp)
1c0081aa:	c452                	sw	s4,8(sp)
1c0081ac:	892a                	mv	s2,a0
1c0081ae:	87ba                	mv	a5,a4
1c0081b0:	04074563          	bltz	a4,1c0081fa <pos_fll_init+0x6c>
1c0081b4:	00860593          	addi	a1,a2,8
1c0081b8:	95b6                	add	a1,a1,a3
1c0081ba:	419c                	lw	a5,0(a1)
1c0081bc:	7541                	lui	a0,0xffff0
1c0081be:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c0081c2:	8fe9                	and	a5,a5,a0
1c0081c4:	6509                	lui	a0,0x2
1c0081c6:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c0081ca:	8fc9                	or	a5,a5,a0
1c0081cc:	f0010537          	lui	a0,0xf0010
1c0081d0:	157d                	addi	a0,a0,-1
1c0081d2:	8fe9                	and	a5,a5,a0
1c0081d4:	00500537          	lui	a0,0x500
1c0081d8:	8fc9                	or	a5,a5,a0
1c0081da:	0631                	addi	a2,a2,12
1c0081dc:	c19c                	sw	a5,0(a1)
1c0081de:	96b2                	add	a3,a3,a2
1c0081e0:	429c                	lw	a5,0(a3)
1c0081e2:	fc010637          	lui	a2,0xfc010
1c0081e6:	167d                	addi	a2,a2,-1
1c0081e8:	8ff1                	and	a5,a5,a2
1c0081ea:	014c0637          	lui	a2,0x14c0
1c0081ee:	8fd1                	or	a5,a5,a2
1c0081f0:	c29c                	sw	a5,0(a3)
1c0081f2:	c00007b7          	lui	a5,0xc0000
1c0081f6:	8fd9                	or	a5,a5,a4
1c0081f8:	c09c                	sw	a5,0(s1)
1c0081fa:	1c006437          	lui	s0,0x1c006
1c0081fe:	22440413          	addi	s0,s0,548 # 1c006224 <pos_fll_freq>
1c008202:	00291993          	slli	s3,s2,0x2
1c008206:	013406b3          	add	a3,s0,s3
1c00820a:	0006aa03          	lw	s4,0(a3)
1c00820e:	020a1d63          	bnez	s4,1c008248 <pos_fll_init+0xba>
1c008212:	83e9                	srli	a5,a5,0x1a
1c008214:	0742                	slli	a4,a4,0x10
1c008216:	8341                	srli	a4,a4,0x10
1c008218:	8bbd                	andi	a5,a5,15
1c00821a:	073e                	slli	a4,a4,0xf
1c00821c:	17fd                	addi	a5,a5,-1
1c00821e:	00f75a33          	srl	s4,a4,a5
1c008222:	1c006537          	lui	a0,0x1c006
1c008226:	0146a023          	sw	s4,0(a3)
1c00822a:	22050513          	addi	a0,a0,544 # 1c006220 <stack>
1c00822e:	954a                	add	a0,a0,s2
1c008230:	4685                	li	a3,1
1c008232:	00d50023          	sb	a3,0(a0)
1c008236:	40f2                	lw	ra,28(sp)
1c008238:	4462                	lw	s0,24(sp)
1c00823a:	8552                	mv	a0,s4
1c00823c:	44d2                	lw	s1,20(sp)
1c00823e:	4942                	lw	s2,16(sp)
1c008240:	49b2                	lw	s3,12(sp)
1c008242:	4a22                	lw	s4,8(sp)
1c008244:	6105                	addi	sp,sp,32
1c008246:	8082                	ret
1c008248:	8552                	mv	a0,s4
1c00824a:	3d75                	jal	1c008106 <__clzsi2>
1c00824c:	1579                	addi	a0,a0,-2
1c00824e:	00155613          	srli	a2,a0,0x1
1c008252:	e631                	bnez	a2,1c00829e <pos_fll_init+0x110>
1c008254:	4709                	li	a4,2
1c008256:	4585                	li	a1,1
1c008258:	4605                	li	a2,1
1c00825a:	00ca17b3          	sll	a5,s4,a2
1c00825e:	76e1                	lui	a3,0xffff8
1c008260:	1c006537          	lui	a0,0x1c006
1c008264:	8efd                	and	a3,a3,a5
1c008266:	22050513          	addi	a0,a0,544 # 1c006220 <stack>
1c00826a:	96ae                	add	a3,a3,a1
1c00826c:	012505b3          	add	a1,a0,s2
1c008270:	00c6d6b3          	srl	a3,a3,a2
1c008274:	944e                	add	s0,s0,s3
1c008276:	0005c603          	lbu	a2,0(a1)
1c00827a:	c014                	sw	a3,0(s0)
1c00827c:	da4d                	beqz	a2,1c00822e <pos_fll_init+0xa0>
1c00827e:	4094                	lw	a3,0(s1)
1c008280:	83bd                	srli	a5,a5,0xf
1c008282:	07c2                	slli	a5,a5,0x10
1c008284:	7641                	lui	a2,0xffff0
1c008286:	83c1                	srli	a5,a5,0x10
1c008288:	8ef1                	and	a3,a3,a2
1c00828a:	8edd                	or	a3,a3,a5
1c00828c:	c40007b7          	lui	a5,0xc4000
1c008290:	8b3d                	andi	a4,a4,15
1c008292:	17fd                	addi	a5,a5,-1
1c008294:	076a                	slli	a4,a4,0x1a
1c008296:	8efd                	and	a3,a3,a5
1c008298:	8ed9                	or	a3,a3,a4
1c00829a:	c094                	sw	a3,0(s1)
1c00829c:	bf49                	j	1c00822e <pos_fll_init+0xa0>
1c00829e:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c0082a2:	4685                	li	a3,1
1c0082a4:	00b695b3          	sll	a1,a3,a1
1c0082a8:	00160713          	addi	a4,a2,1
1c0082ac:	b77d                	j	1c00825a <pos_fll_init+0xcc>

1c0082ae <pos_fll_constructor>:
1c0082ae:	1c0067b7          	lui	a5,0x1c006
1c0082b2:	22478793          	addi	a5,a5,548 # 1c006224 <pos_fll_freq>
1c0082b6:	0007a023          	sw	zero,0(a5)
1c0082ba:	0007a223          	sw	zero,4(a5)
1c0082be:	1c0067b7          	lui	a5,0x1c006
1c0082c2:	22079023          	sh	zero,544(a5) # 1c006220 <stack>
1c0082c6:	8082                	ret

1c0082c8 <pos_soc_init>:
1c0082c8:	1141                	addi	sp,sp,-16
1c0082ca:	c606                	sw	ra,12(sp)
1c0082cc:	c422                	sw	s0,8(sp)
1c0082ce:	37c5                	jal	1c0082ae <pos_fll_constructor>
1c0082d0:	4501                	li	a0,0
1c0082d2:	3d75                	jal	1c00818e <pos_fll_init>
1c0082d4:	1c006437          	lui	s0,0x1c006
1c0082d8:	22a42623          	sw	a0,556(s0) # 1c00622c <pos_freq_domains>
1c0082dc:	4505                	li	a0,1
1c0082de:	3d45                	jal	1c00818e <pos_fll_init>
1c0082e0:	22c40413          	addi	s0,s0,556
1c0082e4:	c408                	sw	a0,8(s0)
1c0082e6:	40b2                	lw	ra,12(sp)
1c0082e8:	4422                	lw	s0,8(sp)
1c0082ea:	0141                	addi	sp,sp,16
1c0082ec:	8082                	ret

1c0082ee <KeccakF1600_StatePermute>:
1c0082ee:	1a4007b7          	lui	a5,0x1a400
1c0082f2:	1141                	addi	sp,sp,-16
1c0082f4:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c0082f8:	4118                	lw	a4,0(a0)
1c0082fa:	0791                	addi	a5,a5,4
1c0082fc:	fee7ae23          	sw	a4,-4(a5)
1c008300:	0511                	addi	a0,a0,4
1c008302:	fed79be3          	bne	a5,a3,1c0082f8 <KeccakF1600_StatePermute+0xa>
1c008306:	1a4007b7          	lui	a5,0x1a400
1c00830a:	4705                	li	a4,1
1c00830c:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c008310:	1a400737          	lui	a4,0x1a400
1c008314:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c008318:	8b85                	andi	a5,a5,1
1c00831a:	dfed                	beqz	a5,1c008314 <KeccakF1600_StatePermute+0x26>
1c00831c:	c602                	sw	zero,12(sp)
1c00831e:	4732                	lw	a4,12(sp)
1c008320:	03100793          	li	a5,49
1c008324:	02e7c663          	blt	a5,a4,1c008350 <KeccakF1600_StatePermute+0x62>
1c008328:	1a400637          	lui	a2,0x1a400
1c00832c:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c008330:	03100513          	li	a0,49
1c008334:	4732                	lw	a4,12(sp)
1c008336:	47b2                	lw	a5,12(sp)
1c008338:	070a                	slli	a4,a4,0x2
1c00833a:	9732                	add	a4,a4,a2
1c00833c:	4314                	lw	a3,0(a4)
1c00833e:	4732                	lw	a4,12(sp)
1c008340:	078a                	slli	a5,a5,0x2
1c008342:	0705                	addi	a4,a4,1
1c008344:	c63a                	sw	a4,12(sp)
1c008346:	97ae                	add	a5,a5,a1
1c008348:	4732                	lw	a4,12(sp)
1c00834a:	c394                	sw	a3,0(a5)
1c00834c:	fee554e3          	ble	a4,a0,1c008334 <KeccakF1600_StatePermute+0x46>
1c008350:	0141                	addi	sp,sp,16
1c008352:	8082                	ret

1c008354 <KYBER_poly_ntt>:
1c008354:	1a4017b7          	lui	a5,0x1a401
1c008358:	1a401637          	lui	a2,0x1a401
1c00835c:	20078693          	addi	a3,a5,512 # 1a401200 <__CTOR_LIST__-0x1bfee04>
1c008360:	4118                	lw	a4,0(a0)
1c008362:	0791                	addi	a5,a5,4
1c008364:	fee7ae23          	sw	a4,-4(a5)
1c008368:	0511                	addi	a0,a0,4
1c00836a:	fed79be3          	bne	a5,a3,1c008360 <KYBER_poly_ntt+0xc>
1c00836e:	4785                	li	a5,1
1c008370:	40f62023          	sw	a5,1024(a2) # 1a401400 <__CTOR_LIST__-0x1bfec04>
1c008374:	40062023          	sw	zero,1024(a2)
1c008378:	40062023          	sw	zero,1024(a2)
1c00837c:	40062023          	sw	zero,1024(a2)
1c008380:	40062023          	sw	zero,1024(a2)
1c008384:	40062023          	sw	zero,1024(a2)
1c008388:	40062023          	sw	zero,1024(a2)
1c00838c:	40062023          	sw	zero,1024(a2)
1c008390:	40062023          	sw	zero,1024(a2)
1c008394:	40062023          	sw	zero,1024(a2)
1c008398:	40062023          	sw	zero,1024(a2)
1c00839c:	08000793          	li	a5,128
1c0083a0:	40f62023          	sw	a5,1024(a2)
1c0083a4:	40062023          	sw	zero,1024(a2)
1c0083a8:	8082                	ret

1c0083aa <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c0083aa:	1141                	addi	sp,sp,-16
1c0083ac:	55555337          	lui	t1,0x55555
1c0083b0:	68c1                	lui	a7,0x10
1c0083b2:	c622                	sw	s0,12(sp)
1c0083b4:	c426                	sw	s1,8(sp)
1c0083b6:	c24a                	sw	s2,4(sp)
1c0083b8:	20050e13          	addi	t3,a0,512
1c0083bc:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c0083c0:	18fd                	addi	a7,a7,-1
1c0083c2:	419c                	lw	a5,0(a1)
1c0083c4:	0541                	addi	a0,a0,16
1c0083c6:	0017d713          	srli	a4,a5,0x1
1c0083ca:	00677733          	and	a4,a4,t1
1c0083ce:	0067f7b3          	and	a5,a5,t1
1c0083d2:	97ba                	add	a5,a5,a4
1c0083d4:	0027d913          	srli	s2,a5,0x2
1c0083d8:	0087d693          	srli	a3,a5,0x8
1c0083dc:	00a7d493          	srli	s1,a5,0xa
1c0083e0:	0107d713          	srli	a4,a5,0x10
1c0083e4:	0127d413          	srli	s0,a5,0x12
1c0083e8:	0037f613          	andi	a2,a5,3
1c0083ec:	00397913          	andi	s2,s2,3
1c0083f0:	8a8d                	andi	a3,a3,3
1c0083f2:	888d                	andi	s1,s1,3
1c0083f4:	8b0d                	andi	a4,a4,3
1c0083f6:	880d                	andi	s0,s0,3
1c0083f8:	0047df13          	srli	t5,a5,0x4
1c0083fc:	0067d393          	srli	t2,a5,0x6
1c008400:	00c7de93          	srli	t4,a5,0xc
1c008404:	00e7d293          	srli	t0,a5,0xe
1c008408:	0147d813          	srli	a6,a5,0x14
1c00840c:	0167df93          	srli	t6,a5,0x16
1c008410:	41260633          	sub	a2,a2,s2
1c008414:	8e85                	sub	a3,a3,s1
1c008416:	8f01                	sub	a4,a4,s0
1c008418:	0033f393          	andi	t2,t2,3
1c00841c:	0032f293          	andi	t0,t0,3
1c008420:	003fff93          	andi	t6,t6,3
1c008424:	003f7f13          	andi	t5,t5,3
1c008428:	003efe93          	andi	t4,t4,3
1c00842c:	00387813          	andi	a6,a6,3
1c008430:	0642                	slli	a2,a2,0x10
1c008432:	06c2                	slli	a3,a3,0x10
1c008434:	0742                	slli	a4,a4,0x10
1c008436:	407f0f33          	sub	t5,t5,t2
1c00843a:	405e8eb3          	sub	t4,t4,t0
1c00843e:	41f80833          	sub	a6,a6,t6
1c008442:	0187d293          	srli	t0,a5,0x18
1c008446:	01a7d393          	srli	t2,a5,0x1a
1c00844a:	01c7df93          	srli	t6,a5,0x1c
1c00844e:	8241                	srli	a2,a2,0x10
1c008450:	82c1                	srli	a3,a3,0x10
1c008452:	8341                	srli	a4,a4,0x10
1c008454:	0842                	slli	a6,a6,0x10
1c008456:	0f42                	slli	t5,t5,0x10
1c008458:	01167633          	and	a2,a2,a7
1c00845c:	0ec2                	slli	t4,t4,0x10
1c00845e:	0116f6b3          	and	a3,a3,a7
1c008462:	01177733          	and	a4,a4,a7
1c008466:	0032f293          	andi	t0,t0,3
1c00846a:	0033f393          	andi	t2,t2,3
1c00846e:	003fff93          	andi	t6,t6,3
1c008472:	83f9                	srli	a5,a5,0x1e
1c008474:	01076733          	or	a4,a4,a6
1c008478:	01e66633          	or	a2,a2,t5
1c00847c:	01d6e6b3          	or	a3,a3,t4
1c008480:	40728833          	sub	a6,t0,t2
1c008484:	40ff87b3          	sub	a5,t6,a5
1c008488:	fec52823          	sw	a2,-16(a0)
1c00848c:	fed52a23          	sw	a3,-12(a0)
1c008490:	fee52c23          	sw	a4,-8(a0)
1c008494:	ff051e23          	sh	a6,-4(a0)
1c008498:	fef51f23          	sh	a5,-2(a0)
1c00849c:	0591                	addi	a1,a1,4
1c00849e:	f3c512e3          	bne	a0,t3,1c0083c2 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c0084a2:	4432                	lw	s0,12(sp)
1c0084a4:	44a2                	lw	s1,8(sp)
1c0084a6:	4912                	lw	s2,4(sp)
1c0084a8:	0141                	addi	sp,sp,16
1c0084aa:	8082                	ret

1c0084ac <keccak_absorb.constprop.7>:
1c0084ac:	7151                	addi	sp,sp,-240
1c0084ae:	d3a6                	sw	s1,228(sp)
1c0084b0:	cfce                	sw	s3,220(sp)
1c0084b2:	cdd2                	sw	s4,216(sp)
1c0084b4:	cbd6                	sw	s5,212(sp)
1c0084b6:	d786                	sw	ra,236(sp)
1c0084b8:	d5a2                	sw	s0,232(sp)
1c0084ba:	d1ca                	sw	s2,224(sp)
1c0084bc:	89aa                	mv	s3,a0
1c0084be:	8a32                	mv	s4,a2
1c0084c0:	84b6                	mv	s1,a3
1c0084c2:	8aaa                	mv	s5,a0
1c0084c4:	0c850713          	addi	a4,a0,200
1c0084c8:	87aa                	mv	a5,a0
1c0084ca:	4601                	li	a2,0
1c0084cc:	4681                	li	a3,0
1c0084ce:	c390                	sw	a2,0(a5)
1c0084d0:	c3d4                	sw	a3,4(a5)
1c0084d2:	07a1                	addi	a5,a5,8
1c0084d4:	fef71be3          	bne	a4,a5,1c0084ca <keccak_absorb.constprop.7+0x1e>
1c0084d8:	08700793          	li	a5,135
1c0084dc:	0747fb63          	bleu	s4,a5,1c008552 <keccak_absorb.constprop.7+0xa6>
1c0084e0:	08700413          	li	s0,135
1c0084e4:	08858913          	addi	s2,a1,136
1c0084e8:	874e                	mv	a4,s3
1c0084ea:	0015c783          	lbu	a5,1(a1)
1c0084ee:	0025c603          	lbu	a2,2(a1)
1c0084f2:	0055c883          	lbu	a7,5(a1)
1c0084f6:	0045c303          	lbu	t1,4(a1)
1c0084fa:	0065c803          	lbu	a6,6(a1)
1c0084fe:	0005ce03          	lbu	t3,0(a1)
1c008502:	0035c503          	lbu	a0,3(a1)
1c008506:	0075c683          	lbu	a3,7(a1)
1c00850a:	0642                	slli	a2,a2,0x10
1c00850c:	07a2                	slli	a5,a5,0x8
1c00850e:	08a2                	slli	a7,a7,0x8
1c008510:	8fd1                	or	a5,a5,a2
1c008512:	0068e8b3          	or	a7,a7,t1
1c008516:	0842                	slli	a6,a6,0x10
1c008518:	00072303          	lw	t1,0(a4)
1c00851c:	4350                	lw	a2,4(a4)
1c00851e:	01c7e7b3          	or	a5,a5,t3
1c008522:	0562                	slli	a0,a0,0x18
1c008524:	01186833          	or	a6,a6,a7
1c008528:	06e2                	slli	a3,a3,0x18
1c00852a:	8fc9                	or	a5,a5,a0
1c00852c:	0106e6b3          	or	a3,a3,a6
1c008530:	00f347b3          	xor	a5,t1,a5
1c008534:	8eb1                	xor	a3,a3,a2
1c008536:	c31c                	sw	a5,0(a4)
1c008538:	c354                	sw	a3,4(a4)
1c00853a:	05a1                	addi	a1,a1,8
1c00853c:	0721                	addi	a4,a4,8
1c00853e:	fab916e3          	bne	s2,a1,1c0084ea <keccak_absorb.constprop.7+0x3e>
1c008542:	85ce                	mv	a1,s3
1c008544:	854e                	mv	a0,s3
1c008546:	3365                	jal	1c0082ee <KeccakF1600_StatePermute>
1c008548:	f78a0a13          	addi	s4,s4,-136
1c00854c:	85ca                	mv	a1,s2
1c00854e:	f9446be3          	bltu	s0,s4,1c0084e4 <keccak_absorb.constprop.7+0x38>
1c008552:	003c                	addi	a5,sp,8
1c008554:	0918                	addi	a4,sp,144
1c008556:	883e                	mv	a6,a5
1c008558:	4681                	li	a3,0
1c00855a:	00d82023          	sw	a3,0(a6)
1c00855e:	0811                	addi	a6,a6,4
1c008560:	ff071ce3          	bne	a4,a6,1c008558 <keccak_absorb.constprop.7+0xac>
1c008564:	060a0463          	beqz	s4,1c0085cc <keccak_absorb.constprop.7+0x120>
1c008568:	fffa0713          	addi	a4,s4,-1
1c00856c:	4689                	li	a3,2
1c00856e:	0ee6f163          	bleu	a4,a3,1c008650 <keccak_absorb.constprop.7+0x1a4>
1c008572:	002a5893          	srli	a7,s4,0x2
1c008576:	862e                	mv	a2,a1
1c008578:	86be                	mv	a3,a5
1c00857a:	4701                	li	a4,0
1c00857c:	4208                	lw	a0,0(a2)
1c00857e:	0705                	addi	a4,a4,1
1c008580:	c288                	sw	a0,0(a3)
1c008582:	0611                	addi	a2,a2,4
1c008584:	0691                	addi	a3,a3,4
1c008586:	ff176be3          	bltu	a4,a7,1c00857c <keccak_absorb.constprop.7+0xd0>
1c00858a:	ffca7713          	andi	a4,s4,-4
1c00858e:	02ea0f63          	beq	s4,a4,1c0085cc <keccak_absorb.constprop.7+0x120>
1c008592:	00e586b3          	add	a3,a1,a4
1c008596:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c00859a:	0988                	addi	a0,sp,208
1c00859c:	00e506b3          	add	a3,a0,a4
1c0085a0:	f2c68c23          	sb	a2,-200(a3)
1c0085a4:	00170693          	addi	a3,a4,1
1c0085a8:	0346f263          	bleu	s4,a3,1c0085cc <keccak_absorb.constprop.7+0x120>
1c0085ac:	00d58633          	add	a2,a1,a3
1c0085b0:	00064603          	lbu	a2,0(a2)
1c0085b4:	96aa                	add	a3,a3,a0
1c0085b6:	f2c68c23          	sb	a2,-200(a3)
1c0085ba:	0709                	addi	a4,a4,2
1c0085bc:	01477863          	bleu	s4,a4,1c0085cc <keccak_absorb.constprop.7+0x120>
1c0085c0:	95ba                	add	a1,a1,a4
1c0085c2:	0005c683          	lbu	a3,0(a1)
1c0085c6:	972a                	add	a4,a4,a0
1c0085c8:	f2d70c23          	sb	a3,-200(a4)
1c0085cc:	0990                	addi	a2,sp,208
1c0085ce:	9a32                	add	s4,s4,a2
1c0085d0:	f29a0c23          	sb	s1,-200(s4)
1c0085d4:	08f14703          	lbu	a4,143(sp)
1c0085d8:	f8076713          	ori	a4,a4,-128
1c0085dc:	08e107a3          	sb	a4,143(sp)
1c0085e0:	0017c703          	lbu	a4,1(a5)
1c0085e4:	0027c883          	lbu	a7,2(a5)
1c0085e8:	0057c503          	lbu	a0,5(a5)
1c0085ec:	0047c303          	lbu	t1,4(a5)
1c0085f0:	0067c583          	lbu	a1,6(a5)
1c0085f4:	0007ce03          	lbu	t3,0(a5)
1c0085f8:	0037c603          	lbu	a2,3(a5)
1c0085fc:	0077c683          	lbu	a3,7(a5)
1c008600:	08c2                	slli	a7,a7,0x10
1c008602:	0722                	slli	a4,a4,0x8
1c008604:	0522                	slli	a0,a0,0x8
1c008606:	01176733          	or	a4,a4,a7
1c00860a:	00656533          	or	a0,a0,t1
1c00860e:	05c2                	slli	a1,a1,0x10
1c008610:	000aa303          	lw	t1,0(s5)
1c008614:	004aa883          	lw	a7,4(s5)
1c008618:	01c76733          	or	a4,a4,t3
1c00861c:	0662                	slli	a2,a2,0x18
1c00861e:	8dc9                	or	a1,a1,a0
1c008620:	06e2                	slli	a3,a3,0x18
1c008622:	8f51                	or	a4,a4,a2
1c008624:	8ecd                	or	a3,a3,a1
1c008626:	00e34733          	xor	a4,t1,a4
1c00862a:	00d8c6b3          	xor	a3,a7,a3
1c00862e:	00eaa023          	sw	a4,0(s5)
1c008632:	00daa223          	sw	a3,4(s5)
1c008636:	07a1                	addi	a5,a5,8
1c008638:	0aa1                	addi	s5,s5,8
1c00863a:	faf813e3          	bne	a6,a5,1c0085e0 <keccak_absorb.constprop.7+0x134>
1c00863e:	50be                	lw	ra,236(sp)
1c008640:	542e                	lw	s0,232(sp)
1c008642:	549e                	lw	s1,228(sp)
1c008644:	590e                	lw	s2,224(sp)
1c008646:	49fe                	lw	s3,220(sp)
1c008648:	4a6e                	lw	s4,216(sp)
1c00864a:	4ade                	lw	s5,212(sp)
1c00864c:	616d                	addi	sp,sp,240
1c00864e:	8082                	ret
1c008650:	4701                	li	a4,0
1c008652:	b781                	j	1c008592 <keccak_absorb.constprop.7+0xe6>

1c008654 <shake256>:
1c008654:	7131                	addi	sp,sp,-192
1c008656:	db26                	sw	s1,180(sp)
1c008658:	d94a                	sw	s2,176(sp)
1c00865a:	08800493          	li	s1,136
1c00865e:	892a                	mv	s2,a0
1c008660:	0c800513          	li	a0,200
1c008664:	dd22                	sw	s0,184(sp)
1c008666:	d74e                	sw	s3,172(sp)
1c008668:	d552                	sw	s4,168(sp)
1c00866a:	df06                	sw	ra,188(sp)
1c00866c:	d356                	sw	s5,164(sp)
1c00866e:	d15a                	sw	s6,160(sp)
1c008670:	cf5e                	sw	s7,156(sp)
1c008672:	cd62                	sw	s8,152(sp)
1c008674:	cb66                	sw	s9,148(sp)
1c008676:	89ae                	mv	s3,a1
1c008678:	8432                	mv	s0,a2
1c00867a:	8a36                	mv	s4,a3
1c00867c:	0295d4b3          	divu	s1,a1,s1
1c008680:	117010ef          	jal	ra,1c009f96 <pi_l2_malloc>
1c008684:	20050163          	beqz	a0,1c008886 <shake256+0x232>
1c008688:	46fd                	li	a3,31
1c00868a:	8652                	mv	a2,s4
1c00868c:	85a2                	mv	a1,s0
1c00868e:	8b2a                	mv	s6,a0
1c008690:	3d31                	jal	1c0084ac <keccak_absorb.constprop.7>
1c008692:	c4dd                	beqz	s1,1c008740 <shake256+0xec>
1c008694:	00449713          	slli	a4,s1,0x4
1c008698:	00970433          	add	s0,a4,s1
1c00869c:	040e                	slli	s0,s0,0x3
1c00869e:	7bc1                	lui	s7,0xffff0
1c0086a0:	ff010ab7          	lui	s5,0xff010
1c0086a4:	01000a37          	lui	s4,0x1000
1c0086a8:	412b0c33          	sub	s8,s6,s2
1c0086ac:	944a                	add	s0,s0,s2
1c0086ae:	8cca                	mv	s9,s2
1c0086b0:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c0086b4:	1afd                	addi	s5,s5,-1
1c0086b6:	1a7d                	addi	s4,s4,-1
1c0086b8:	85da                	mv	a1,s6
1c0086ba:	855a                	mv	a0,s6
1c0086bc:	390d                	jal	1c0082ee <KeccakF1600_StatePermute>
1c0086be:	8666                	mv	a2,s9
1c0086c0:	088c8593          	addi	a1,s9,136
1c0086c4:	00cc07b3          	add	a5,s8,a2
1c0086c8:	4388                	lw	a0,0(a5)
1c0086ca:	43d4                	lw	a3,4(a5)
1c0086cc:	00855893          	srli	a7,a0,0x8
1c0086d0:	0086d813          	srli	a6,a3,0x8
1c0086d4:	0ff57713          	andi	a4,a0,255
1c0086d8:	0ff6f793          	andi	a5,a3,255
1c0086dc:	0ff8f893          	andi	a7,a7,255
1c0086e0:	0ff87813          	andi	a6,a6,255
1c0086e4:	08a2                	slli	a7,a7,0x8
1c0086e6:	0822                	slli	a6,a6,0x8
1c0086e8:	01777733          	and	a4,a4,s7
1c0086ec:	0177f7b3          	and	a5,a5,s7
1c0086f0:	01176733          	or	a4,a4,a7
1c0086f4:	0107e7b3          	or	a5,a5,a6
1c0086f8:	00ff08b7          	lui	a7,0xff0
1c0086fc:	00ff0837          	lui	a6,0xff0
1c008700:	011578b3          	and	a7,a0,a7
1c008704:	0106f833          	and	a6,a3,a6
1c008708:	01577733          	and	a4,a4,s5
1c00870c:	0157f7b3          	and	a5,a5,s5
1c008710:	01176733          	or	a4,a4,a7
1c008714:	8161                	srli	a0,a0,0x18
1c008716:	0107e7b3          	or	a5,a5,a6
1c00871a:	82e1                	srli	a3,a3,0x18
1c00871c:	0562                	slli	a0,a0,0x18
1c00871e:	01477733          	and	a4,a4,s4
1c008722:	06e2                	slli	a3,a3,0x18
1c008724:	0147f7b3          	and	a5,a5,s4
1c008728:	8f49                	or	a4,a4,a0
1c00872a:	8fd5                	or	a5,a5,a3
1c00872c:	c218                	sw	a4,0(a2)
1c00872e:	c25c                	sw	a5,4(a2)
1c008730:	0621                	addi	a2,a2,8
1c008732:	f8c599e3          	bne	a1,a2,1c0086c4 <shake256+0x70>
1c008736:	8cae                	mv	s9,a1
1c008738:	f78c0c13          	addi	s8,s8,-136
1c00873c:	f6b41ee3          	bne	s0,a1,1c0086b8 <shake256+0x64>
1c008740:	08800793          	li	a5,136
1c008744:	02f9f9b3          	remu	s3,s3,a5
1c008748:	02099363          	bnez	s3,1c00876e <shake256+0x11a>
1c00874c:	546a                	lw	s0,184(sp)
1c00874e:	50fa                	lw	ra,188(sp)
1c008750:	54da                	lw	s1,180(sp)
1c008752:	594a                	lw	s2,176(sp)
1c008754:	59ba                	lw	s3,172(sp)
1c008756:	5a2a                	lw	s4,168(sp)
1c008758:	5a9a                	lw	s5,164(sp)
1c00875a:	4bfa                	lw	s7,156(sp)
1c00875c:	4c6a                	lw	s8,152(sp)
1c00875e:	4cda                	lw	s9,148(sp)
1c008760:	855a                	mv	a0,s6
1c008762:	5b0a                	lw	s6,160(sp)
1c008764:	0c800593          	li	a1,200
1c008768:	6129                	addi	sp,sp,192
1c00876a:	0390106f          	j	1c009fa2 <pi_l2_free>
1c00876e:	85da                	mv	a1,s6
1c008770:	855a                	mv	a0,s6
1c008772:	3eb5                	jal	1c0082ee <KeccakF1600_StatePermute>
1c008774:	002c                	addi	a1,sp,8
1c008776:	78c1                	lui	a7,0xffff0
1c008778:	ff010837          	lui	a6,0xff010
1c00877c:	01000537          	lui	a0,0x1000
1c008780:	09010e13          	addi	t3,sp,144
1c008784:	862e                	mv	a2,a1
1c008786:	40bb0333          	sub	t1,s6,a1
1c00878a:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00878e:	187d                	addi	a6,a6,-1
1c008790:	157d                	addi	a0,a0,-1
1c008792:	00c307b3          	add	a5,t1,a2
1c008796:	0007ae83          	lw	t4,0(a5)
1c00879a:	43d4                	lw	a3,4(a5)
1c00879c:	008edf93          	srli	t6,t4,0x8
1c0087a0:	0086df13          	srli	t5,a3,0x8
1c0087a4:	0ffef713          	andi	a4,t4,255
1c0087a8:	0ff6f793          	andi	a5,a3,255
1c0087ac:	0fffff93          	andi	t6,t6,255
1c0087b0:	0fff7f13          	andi	t5,t5,255
1c0087b4:	0fa2                	slli	t6,t6,0x8
1c0087b6:	0f22                	slli	t5,t5,0x8
1c0087b8:	01177733          	and	a4,a4,a7
1c0087bc:	0117f7b3          	and	a5,a5,a7
1c0087c0:	01f76733          	or	a4,a4,t6
1c0087c4:	01e7e7b3          	or	a5,a5,t5
1c0087c8:	00ff0fb7          	lui	t6,0xff0
1c0087cc:	00ff0f37          	lui	t5,0xff0
1c0087d0:	01feffb3          	and	t6,t4,t6
1c0087d4:	01e6ff33          	and	t5,a3,t5
1c0087d8:	01077733          	and	a4,a4,a6
1c0087dc:	0107f7b3          	and	a5,a5,a6
1c0087e0:	01f76733          	or	a4,a4,t6
1c0087e4:	018ede93          	srli	t4,t4,0x18
1c0087e8:	01e7e7b3          	or	a5,a5,t5
1c0087ec:	82e1                	srli	a3,a3,0x18
1c0087ee:	0ee2                	slli	t4,t4,0x18
1c0087f0:	8f69                	and	a4,a4,a0
1c0087f2:	06e2                	slli	a3,a3,0x18
1c0087f4:	8fe9                	and	a5,a5,a0
1c0087f6:	01d76733          	or	a4,a4,t4
1c0087fa:	8fd5                	or	a5,a5,a3
1c0087fc:	c218                	sw	a4,0(a2)
1c0087fe:	c25c                	sw	a5,4(a2)
1c008800:	0621                	addi	a2,a2,8
1c008802:	f8ce18e3          	bne	t3,a2,1c008792 <shake256+0x13e>
1c008806:	fff98793          	addi	a5,s3,-1
1c00880a:	4709                	li	a4,2
1c00880c:	06f77963          	bleu	a5,a4,1c00887e <shake256+0x22a>
1c008810:	00449713          	slli	a4,s1,0x4
1c008814:	009707b3          	add	a5,a4,s1
1c008818:	078e                	slli	a5,a5,0x3
1c00881a:	0029d513          	srli	a0,s3,0x2
1c00881e:	97ca                	add	a5,a5,s2
1c008820:	4681                	li	a3,0
1c008822:	4190                	lw	a2,0(a1)
1c008824:	0685                	addi	a3,a3,1
1c008826:	c390                	sw	a2,0(a5)
1c008828:	0591                	addi	a1,a1,4
1c00882a:	0791                	addi	a5,a5,4
1c00882c:	fea6ebe3          	bltu	a3,a0,1c008822 <shake256+0x1ce>
1c008830:	ffc9f693          	andi	a3,s3,-4
1c008834:	f0d98ce3          	beq	s3,a3,1c00874c <shake256+0xf8>
1c008838:	009707b3          	add	a5,a4,s1
1c00883c:	090c                	addi	a1,sp,144
1c00883e:	00d58733          	add	a4,a1,a3
1c008842:	078e                	slli	a5,a5,0x3
1c008844:	f7874603          	lbu	a2,-136(a4)
1c008848:	97ca                	add	a5,a5,s2
1c00884a:	00d78733          	add	a4,a5,a3
1c00884e:	00c70023          	sb	a2,0(a4)
1c008852:	00168713          	addi	a4,a3,1
1c008856:	ef377be3          	bleu	s3,a4,1c00874c <shake256+0xf8>
1c00885a:	00e58633          	add	a2,a1,a4
1c00885e:	f7864603          	lbu	a2,-136(a2)
1c008862:	973e                	add	a4,a4,a5
1c008864:	00c70023          	sb	a2,0(a4)
1c008868:	0689                	addi	a3,a3,2
1c00886a:	ef36f1e3          	bleu	s3,a3,1c00874c <shake256+0xf8>
1c00886e:	00d58733          	add	a4,a1,a3
1c008872:	f7874703          	lbu	a4,-136(a4)
1c008876:	97b6                	add	a5,a5,a3
1c008878:	00e78023          	sb	a4,0(a5)
1c00887c:	bdc1                	j	1c00874c <shake256+0xf8>
1c00887e:	4681                	li	a3,0
1c008880:	00449713          	slli	a4,s1,0x4
1c008884:	bf55                	j	1c008838 <shake256+0x1e4>
1c008886:	06f00513          	li	a0,111
1c00888a:	2b7d                	jal	1c008e48 <exit>

1c00888c <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c00888c:	9b010113          	addi	sp,sp,-1616
1c008890:	100c                	addi	a1,sp,32
1c008892:	4601                	li	a2,0
1c008894:	0088                	addi	a0,sp,64
1c008896:	64112623          	sw	ra,1612(sp)
1c00889a:	2025                	jal	1c0088c2 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00889c:	1c000537          	lui	a0,0x1c000
1c0088a0:	13450513          	addi	a0,a0,308 # 1c000134 <__DTOR_END__+0x118>
1c0088a4:	231d                	jal	1c008dca <puts>
1c0088a6:	0088                	addi	a0,sp,64
1c0088a8:	2835                	jal	1c0088e4 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c0088aa:	64c12083          	lw	ra,1612(sp)
1c0088ae:	65010113          	addi	sp,sp,1616
1c0088b2:	8082                	ret

1c0088b4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c0088b4:	1141                	addi	sp,sp,-16
1c0088b6:	c606                	sw	ra,12(sp)
1c0088b8:	3fd1                	jal	1c00888c <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c0088ba:	40b2                	lw	ra,12(sp)
1c0088bc:	4501                	li	a0,0
1c0088be:	0141                	addi	sp,sp,16
1c0088c0:	8082                	ret

1c0088c2 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c0088c2:	7175                	addi	sp,sp,-144
1c0088c4:	c522                	sw	s0,136(sp)
1c0088c6:	86b2                	mv	a3,a2
1c0088c8:	842a                	mv	s0,a0
1c0088ca:	862e                	mv	a2,a1
1c0088cc:	850a                	mv	a0,sp
1c0088ce:	08000593          	li	a1,128
1c0088d2:	c706                	sw	ra,140(sp)
1c0088d4:	2a09                	jal	1c0089e6 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c0088d6:	858a                	mv	a1,sp
1c0088d8:	8522                	mv	a0,s0
1c0088da:	3cc1                	jal	1c0083aa <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c0088dc:	40ba                	lw	ra,140(sp)
1c0088de:	442a                	lw	s0,136(sp)
1c0088e0:	6149                	addi	sp,sp,144
1c0088e2:	8082                	ret

1c0088e4 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c0088e4:	86010113          	addi	sp,sp,-1952
1c0088e8:	78812c23          	sw	s0,1944(sp)
1c0088ec:	0c800613          	li	a2,200
1c0088f0:	842a                	mv	s0,a0
1c0088f2:	4581                	li	a1,0
1c0088f4:	850a                	mv	a0,sp
1c0088f6:	78112e23          	sw	ra,1948(sp)
1c0088fa:	78912a23          	sw	s1,1940(sp)
1c0088fe:	79212823          	sw	s2,1936(sp)
1c008902:	2289                	jal	1c008a44 <memset>
1c008904:	0c800613          	li	a2,200
1c008908:	4581                	li	a1,0
1c00890a:	01a8                	addi	a0,sp,200
1c00890c:	2a25                	jal	1c008a44 <memset>
1c00890e:	20000613          	li	a2,512
1c008912:	4581                	li	a1,0
1c008914:	0b08                	addi	a0,sp,400
1c008916:	223d                	jal	1c008a44 <memset>
1c008918:	20000613          	li	a2,512
1c00891c:	85a2                	mv	a1,s0
1c00891e:	59010513          	addi	a0,sp,1424
1c008922:	22fd                	jal	1c008b10 <memcpy>
1c008924:	6541                	lui	a0,0x10
1c008926:	59010693          	addi	a3,sp,1424
1c00892a:	4601                	li	a2,0
1c00892c:	157d                	addi	a0,a0,-1
1c00892e:	10000813          	li	a6,256
1c008932:	00069703          	lh	a4,0(a3)
1c008936:	00269583          	lh	a1,2(a3)
1c00893a:	00165793          	srli	a5,a2,0x1
1c00893e:	078a                	slli	a5,a5,0x2
1c008940:	0742                	slli	a4,a4,0x10
1c008942:	8de9                	and	a1,a1,a0
1c008944:	79010893          	addi	a7,sp,1936
1c008948:	97c6                	add	a5,a5,a7
1c00894a:	8f4d                	or	a4,a4,a1
1c00894c:	a0e7a023          	sw	a4,-1536(a5)
1c008950:	0609                	addi	a2,a2,2
1c008952:	0691                	addi	a3,a3,4
1c008954:	fd061fe3          	bne	a2,a6,1c008932 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x4e>
1c008958:	0b00                	addi	s0,sp,400
1c00895a:	39010913          	addi	s2,sp,912
1c00895e:	1c0004b7          	lui	s1,0x1c000
1c008962:	400c                	lw	a1,0(s0)
1c008964:	14848513          	addi	a0,s1,328 # 1c000148 <__DTOR_END__+0x12c>
1c008968:	0411                	addi	s0,s0,4
1c00896a:	29ed                	jal	1c008e64 <printf>
1c00896c:	fe891be3          	bne	s2,s0,1c008962 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x7e>
1c008970:	1c000537          	lui	a0,0x1c000
1c008974:	15050513          	addi	a0,a0,336 # 1c000150 <__DTOR_END__+0x134>
1c008978:	2989                	jal	1c008dca <puts>
1c00897a:	59012583          	lw	a1,1424(sp)
1c00897e:	39012503          	lw	a0,912(sp)
1c008982:	3ac9                	jal	1c008354 <KYBER_poly_ntt>
1c008984:	1c000537          	lui	a0,0x1c000
1c008988:	17450513          	addi	a0,a0,372 # 1c000174 <__DTOR_END__+0x158>
1c00898c:	293d                	jal	1c008dca <puts>
1c00898e:	1c000537          	lui	a0,0x1c000
1c008992:	19450513          	addi	a0,a0,404 # 1c000194 <__DTOR_END__+0x178>
1c008996:	21f9                	jal	1c008e64 <printf>
1c008998:	7369c7b7          	lui	a5,0x7369c
1c00899c:	66778793          	addi	a5,a5,1639 # 7369c667 <__l2_shared_end+0x5768c667>
1c0089a0:	c03e                	sw	a5,0(sp)
1c0089a2:	ec4b07b7          	lui	a5,0xec4b0
1c0089a6:	f5178793          	addi	a5,a5,-175 # ec4aff51 <pulp__FC+0xec4aff52>
1c0089aa:	c23e                	sw	a5,4(sp)
1c0089ac:	abbad7b7          	lui	a5,0xabbad
1c0089b0:	d2978793          	addi	a5,a5,-727 # abbacd29 <pulp__FC+0xabbacd2a>
1c0089b4:	c43e                	sw	a5,8(sp)
1c0089b6:	47c1                	li	a5,16
1c0089b8:	01ac                	addi	a1,sp,200
1c0089ba:	c63e                	sw	a5,12(sp)
1c0089bc:	850a                	mv	a0,sp
1c0089be:	800007b7          	lui	a5,0x80000
1c0089c2:	debe                	sw	a5,124(sp)
1c0089c4:	322d                	jal	1c0082ee <KeccakF1600_StatePermute>
1c0089c6:	1c000537          	lui	a0,0x1c000
1c0089ca:	1cc50513          	addi	a0,a0,460 # 1c0001cc <__DTOR_END__+0x1b0>
1c0089ce:	2959                	jal	1c008e64 <printf>
1c0089d0:	79c12083          	lw	ra,1948(sp)
1c0089d4:	79812403          	lw	s0,1944(sp)
1c0089d8:	79412483          	lw	s1,1940(sp)
1c0089dc:	79012903          	lw	s2,1936(sp)
1c0089e0:	7a010113          	addi	sp,sp,1952
1c0089e4:	8082                	ret

1c0089e6 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c0089e6:	7139                	addi	sp,sp,-64
1c0089e8:	87b2                	mv	a5,a2
1c0089ea:	da26                	sw	s1,52(sp)
1c0089ec:	d84a                	sw	s2,48(sp)
1c0089ee:	84aa                	mv	s1,a0
1c0089f0:	892e                	mv	s2,a1
1c0089f2:	02000613          	li	a2,32
1c0089f6:	85be                	mv	a1,a5
1c0089f8:	0068                	addi	a0,sp,12
1c0089fa:	de06                	sw	ra,60(sp)
1c0089fc:	dc22                	sw	s0,56(sp)
1c0089fe:	8436                	mv	s0,a3
1c008a00:	2a01                	jal	1c008b10 <memcpy>
1c008a02:	0070                	addi	a2,sp,12
1c008a04:	85ca                	mv	a1,s2
1c008a06:	8526                	mv	a0,s1
1c008a08:	02100693          	li	a3,33
1c008a0c:	02810623          	sb	s0,44(sp)
1c008a10:	3191                	jal	1c008654 <shake256>
1c008a12:	50f2                	lw	ra,60(sp)
1c008a14:	5462                	lw	s0,56(sp)
1c008a16:	54d2                	lw	s1,52(sp)
1c008a18:	5942                	lw	s2,48(sp)
1c008a1a:	6121                	addi	sp,sp,64
1c008a1c:	8082                	ret

1c008a1e <pos_wait_forever>:
1c008a1e:	f14027f3          	csrr	a5,mhartid
1c008a22:	8795                	srai	a5,a5,0x5
1c008a24:	03f7f793          	andi	a5,a5,63
1c008a28:	477d                	li	a4,31
1c008a2a:	00e78363          	beq	a5,a4,1c008a30 <pos_wait_forever+0x12>
1c008a2e:	a001                	j	1c008a2e <pos_wait_forever+0x10>
1c008a30:	1a10a7b7          	lui	a5,0x1a10a
1c008a34:	577d                	li	a4,-1
1c008a36:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c008a3a:	10500073          	wfi
1c008a3e:	10500073          	wfi
1c008a42:	bfe5                	j	1c008a3a <pos_wait_forever+0x1c>

1c008a44 <memset>:
1c008a44:	fff60313          	addi	t1,a2,-1
1c008a48:	ce55                	beqz	a2,1c008b04 <memset+0xc0>
1c008a4a:	40a007b3          	neg	a5,a0
1c008a4e:	8b8d                	andi	a5,a5,3
1c008a50:	00378713          	addi	a4,a5,3
1c008a54:	4695                	li	a3,5
1c008a56:	0ff5f593          	andi	a1,a1,255
1c008a5a:	0ad76663          	bltu	a4,a3,1c008b06 <memset+0xc2>
1c008a5e:	0ae36763          	bltu	t1,a4,1c008b0c <memset+0xc8>
1c008a62:	88aa                	mv	a7,a0
1c008a64:	cb8d                	beqz	a5,1c008a96 <memset+0x52>
1c008a66:	00b50023          	sb	a1,0(a0)
1c008a6a:	4705                	li	a4,1
1c008a6c:	00150893          	addi	a7,a0,1
1c008a70:	ffe60313          	addi	t1,a2,-2
1c008a74:	02e78163          	beq	a5,a4,1c008a96 <memset+0x52>
1c008a78:	00b500a3          	sb	a1,1(a0)
1c008a7c:	470d                	li	a4,3
1c008a7e:	00250893          	addi	a7,a0,2
1c008a82:	ffd60313          	addi	t1,a2,-3
1c008a86:	00e79863          	bne	a5,a4,1c008a96 <memset+0x52>
1c008a8a:	00350893          	addi	a7,a0,3
1c008a8e:	00b50123          	sb	a1,2(a0)
1c008a92:	ffc60313          	addi	t1,a2,-4
1c008a96:	00859813          	slli	a6,a1,0x8
1c008a9a:	0105e833          	or	a6,a1,a6
1c008a9e:	01059713          	slli	a4,a1,0x10
1c008aa2:	00e86733          	or	a4,a6,a4
1c008aa6:	8e1d                	sub	a2,a2,a5
1c008aa8:	01859693          	slli	a3,a1,0x18
1c008aac:	8ed9                	or	a3,a3,a4
1c008aae:	00265813          	srli	a6,a2,0x2
1c008ab2:	97aa                	add	a5,a5,a0
1c008ab4:	4701                	li	a4,0
1c008ab6:	c394                	sw	a3,0(a5)
1c008ab8:	0705                	addi	a4,a4,1
1c008aba:	0791                	addi	a5,a5,4
1c008abc:	ff076de3          	bltu	a4,a6,1c008ab6 <memset+0x72>
1c008ac0:	ffc67713          	andi	a4,a2,-4
1c008ac4:	00e887b3          	add	a5,a7,a4
1c008ac8:	40e30333          	sub	t1,t1,a4
1c008acc:	02e60f63          	beq	a2,a4,1c008b0a <memset+0xc6>
1c008ad0:	00b78023          	sb	a1,0(a5)
1c008ad4:	02030863          	beqz	t1,1c008b04 <memset+0xc0>
1c008ad8:	00b780a3          	sb	a1,1(a5)
1c008adc:	4705                	li	a4,1
1c008ade:	02e30363          	beq	t1,a4,1c008b04 <memset+0xc0>
1c008ae2:	00b78123          	sb	a1,2(a5)
1c008ae6:	4709                	li	a4,2
1c008ae8:	00e30e63          	beq	t1,a4,1c008b04 <memset+0xc0>
1c008aec:	00b781a3          	sb	a1,3(a5)
1c008af0:	470d                	li	a4,3
1c008af2:	00e30963          	beq	t1,a4,1c008b04 <memset+0xc0>
1c008af6:	00b78223          	sb	a1,4(a5)
1c008afa:	4711                	li	a4,4
1c008afc:	00e30463          	beq	t1,a4,1c008b04 <memset+0xc0>
1c008b00:	00b782a3          	sb	a1,5(a5)
1c008b04:	8082                	ret
1c008b06:	4715                	li	a4,5
1c008b08:	bf99                	j	1c008a5e <memset+0x1a>
1c008b0a:	8082                	ret
1c008b0c:	87aa                	mv	a5,a0
1c008b0e:	b7c9                	j	1c008ad0 <memset+0x8c>

1c008b10 <memcpy>:
1c008b10:	00b567b3          	or	a5,a0,a1
1c008b14:	8b8d                	andi	a5,a5,3
1c008b16:	10078f63          	beqz	a5,1c008c34 <memcpy+0x124>
1c008b1a:	14060063          	beqz	a2,1c008c5a <memcpy+0x14a>
1c008b1e:	00458793          	addi	a5,a1,4
1c008b22:	00450693          	addi	a3,a0,4
1c008b26:	00f537b3          	sltu	a5,a0,a5
1c008b2a:	00d5b6b3          	sltu	a3,a1,a3
1c008b2e:	0017c793          	xori	a5,a5,1
1c008b32:	0016c693          	xori	a3,a3,1
1c008b36:	873e                	mv	a4,a5
1c008b38:	87b6                	mv	a5,a3
1c008b3a:	8fd9                	or	a5,a5,a4
1c008b3c:	0ff7f793          	andi	a5,a5,255
1c008b40:	cff9                	beqz	a5,1c008c1e <memcpy+0x10e>
1c008b42:	00863793          	sltiu	a5,a2,8
1c008b46:	0017c793          	xori	a5,a5,1
1c008b4a:	0ff7f793          	andi	a5,a5,255
1c008b4e:	cbe1                	beqz	a5,1c008c1e <memcpy+0x10e>
1c008b50:	40b007b3          	neg	a5,a1
1c008b54:	8b8d                	andi	a5,a5,3
1c008b56:	fff60313          	addi	t1,a2,-1
1c008b5a:	cfe5                	beqz	a5,1c008c52 <memcpy+0x142>
1c008b5c:	0005c683          	lbu	a3,0(a1)
1c008b60:	4705                	li	a4,1
1c008b62:	00d50023          	sb	a3,0(a0)
1c008b66:	00158893          	addi	a7,a1,1
1c008b6a:	00150813          	addi	a6,a0,1
1c008b6e:	02e78963          	beq	a5,a4,1c008ba0 <memcpy+0x90>
1c008b72:	0015c683          	lbu	a3,1(a1)
1c008b76:	470d                	li	a4,3
1c008b78:	00d500a3          	sb	a3,1(a0)
1c008b7c:	00258893          	addi	a7,a1,2
1c008b80:	00250813          	addi	a6,a0,2
1c008b84:	ffe60313          	addi	t1,a2,-2
1c008b88:	00e79c63          	bne	a5,a4,1c008ba0 <memcpy+0x90>
1c008b8c:	0025c703          	lbu	a4,2(a1)
1c008b90:	00358893          	addi	a7,a1,3
1c008b94:	00350813          	addi	a6,a0,3
1c008b98:	00e50123          	sb	a4,2(a0)
1c008b9c:	ffd60313          	addi	t1,a2,-3
1c008ba0:	8e1d                	sub	a2,a2,a5
1c008ba2:	95be                	add	a1,a1,a5
1c008ba4:	00265e13          	srli	t3,a2,0x2
1c008ba8:	97aa                	add	a5,a5,a0
1c008baa:	4701                	li	a4,0
1c008bac:	4194                	lw	a3,0(a1)
1c008bae:	0705                	addi	a4,a4,1
1c008bb0:	c394                	sw	a3,0(a5)
1c008bb2:	0591                	addi	a1,a1,4
1c008bb4:	0791                	addi	a5,a5,4
1c008bb6:	ffc76be3          	bltu	a4,t3,1c008bac <memcpy+0x9c>
1c008bba:	ffc67593          	andi	a1,a2,-4
1c008bbe:	40b306b3          	sub	a3,t1,a1
1c008bc2:	00b807b3          	add	a5,a6,a1
1c008bc6:	00b88733          	add	a4,a7,a1
1c008bca:	06b60463          	beq	a2,a1,1c008c32 <memcpy+0x122>
1c008bce:	00074583          	lbu	a1,0(a4)
1c008bd2:	fff68613          	addi	a2,a3,-1
1c008bd6:	00b78023          	sb	a1,0(a5)
1c008bda:	ce21                	beqz	a2,1c008c32 <memcpy+0x122>
1c008bdc:	00174583          	lbu	a1,1(a4)
1c008be0:	ffe68613          	addi	a2,a3,-2
1c008be4:	00b780a3          	sb	a1,1(a5)
1c008be8:	c629                	beqz	a2,1c008c32 <memcpy+0x122>
1c008bea:	00274583          	lbu	a1,2(a4)
1c008bee:	ffd68613          	addi	a2,a3,-3
1c008bf2:	00b78123          	sb	a1,2(a5)
1c008bf6:	ce15                	beqz	a2,1c008c32 <memcpy+0x122>
1c008bf8:	00374583          	lbu	a1,3(a4)
1c008bfc:	ffc68613          	addi	a2,a3,-4
1c008c00:	00b781a3          	sb	a1,3(a5)
1c008c04:	c61d                	beqz	a2,1c008c32 <memcpy+0x122>
1c008c06:	00474583          	lbu	a1,4(a4)
1c008c0a:	4615                	li	a2,5
1c008c0c:	00b78223          	sb	a1,4(a5)
1c008c10:	02c68163          	beq	a3,a2,1c008c32 <memcpy+0x122>
1c008c14:	00574703          	lbu	a4,5(a4)
1c008c18:	00e782a3          	sb	a4,5(a5)
1c008c1c:	8082                	ret
1c008c1e:	962e                	add	a2,a2,a1
1c008c20:	87aa                	mv	a5,a0
1c008c22:	0585                	addi	a1,a1,1
1c008c24:	fff5c703          	lbu	a4,-1(a1)
1c008c28:	0785                	addi	a5,a5,1
1c008c2a:	fee78fa3          	sb	a4,-1(a5)
1c008c2e:	fec59ae3          	bne	a1,a2,1c008c22 <memcpy+0x112>
1c008c32:	8082                	ret
1c008c34:	00367793          	andi	a5,a2,3
1c008c38:	ee0793e3          	bnez	a5,1c008b1e <memcpy+0xe>
1c008c3c:	da7d                	beqz	a2,1c008c32 <memcpy+0x122>
1c008c3e:	87aa                	mv	a5,a0
1c008c40:	0591                	addi	a1,a1,4
1c008c42:	ffc5a703          	lw	a4,-4(a1)
1c008c46:	0791                	addi	a5,a5,4
1c008c48:	fee7ae23          	sw	a4,-4(a5)
1c008c4c:	1671                	addi	a2,a2,-4
1c008c4e:	fa6d                	bnez	a2,1c008c40 <memcpy+0x130>
1c008c50:	8082                	ret
1c008c52:	88ae                	mv	a7,a1
1c008c54:	882a                	mv	a6,a0
1c008c56:	8332                	mv	t1,a2
1c008c58:	b7a1                	j	1c008ba0 <memcpy+0x90>
1c008c5a:	8082                	ret

1c008c5c <memmove>:
1c008c5c:	40b507b3          	sub	a5,a0,a1
1c008c60:	10c7e463          	bltu	a5,a2,1c008d68 <memmove+0x10c>
1c008c64:	12060b63          	beqz	a2,1c008d9a <memmove+0x13e>
1c008c68:	00458793          	addi	a5,a1,4
1c008c6c:	00450693          	addi	a3,a0,4
1c008c70:	00f537b3          	sltu	a5,a0,a5
1c008c74:	00d5b6b3          	sltu	a3,a1,a3
1c008c78:	0017c793          	xori	a5,a5,1
1c008c7c:	0016c693          	xori	a3,a3,1
1c008c80:	873e                	mv	a4,a5
1c008c82:	87b6                	mv	a5,a3
1c008c84:	8fd9                	or	a5,a5,a4
1c008c86:	0ff7f793          	andi	a5,a5,255
1c008c8a:	cfed                	beqz	a5,1c008d84 <memmove+0x128>
1c008c8c:	00863793          	sltiu	a5,a2,8
1c008c90:	0017c793          	xori	a5,a5,1
1c008c94:	0ff7f793          	andi	a5,a5,255
1c008c98:	c7f5                	beqz	a5,1c008d84 <memmove+0x128>
1c008c9a:	40b007b3          	neg	a5,a1
1c008c9e:	8b8d                	andi	a5,a5,3
1c008ca0:	fff60313          	addi	t1,a2,-1
1c008ca4:	cfe5                	beqz	a5,1c008d9c <memmove+0x140>
1c008ca6:	0005c683          	lbu	a3,0(a1)
1c008caa:	4705                	li	a4,1
1c008cac:	00d50023          	sb	a3,0(a0)
1c008cb0:	00150813          	addi	a6,a0,1
1c008cb4:	00158893          	addi	a7,a1,1
1c008cb8:	02e78963          	beq	a5,a4,1c008cea <memmove+0x8e>
1c008cbc:	0015c683          	lbu	a3,1(a1)
1c008cc0:	470d                	li	a4,3
1c008cc2:	00d500a3          	sb	a3,1(a0)
1c008cc6:	00250813          	addi	a6,a0,2
1c008cca:	00258893          	addi	a7,a1,2
1c008cce:	ffe60313          	addi	t1,a2,-2
1c008cd2:	00e79c63          	bne	a5,a4,1c008cea <memmove+0x8e>
1c008cd6:	0025c703          	lbu	a4,2(a1)
1c008cda:	00350813          	addi	a6,a0,3
1c008cde:	00e50123          	sb	a4,2(a0)
1c008ce2:	00358893          	addi	a7,a1,3
1c008ce6:	ffd60313          	addi	t1,a2,-3
1c008cea:	8e1d                	sub	a2,a2,a5
1c008cec:	95be                	add	a1,a1,a5
1c008cee:	00265e13          	srli	t3,a2,0x2
1c008cf2:	97aa                	add	a5,a5,a0
1c008cf4:	4701                	li	a4,0
1c008cf6:	4194                	lw	a3,0(a1)
1c008cf8:	0705                	addi	a4,a4,1
1c008cfa:	c394                	sw	a3,0(a5)
1c008cfc:	0591                	addi	a1,a1,4
1c008cfe:	0791                	addi	a5,a5,4
1c008d00:	ffc76be3          	bltu	a4,t3,1c008cf6 <memmove+0x9a>
1c008d04:	ffc67593          	andi	a1,a2,-4
1c008d08:	40b306b3          	sub	a3,t1,a1
1c008d0c:	00b807b3          	add	a5,a6,a1
1c008d10:	00b88733          	add	a4,a7,a1
1c008d14:	08b60263          	beq	a2,a1,1c008d98 <memmove+0x13c>
1c008d18:	00074583          	lbu	a1,0(a4)
1c008d1c:	fff68613          	addi	a2,a3,-1
1c008d20:	00b78023          	sb	a1,0(a5)
1c008d24:	ca35                	beqz	a2,1c008d98 <memmove+0x13c>
1c008d26:	00174583          	lbu	a1,1(a4)
1c008d2a:	ffe68613          	addi	a2,a3,-2
1c008d2e:	00b780a3          	sb	a1,1(a5)
1c008d32:	c23d                	beqz	a2,1c008d98 <memmove+0x13c>
1c008d34:	00274583          	lbu	a1,2(a4)
1c008d38:	ffd68613          	addi	a2,a3,-3
1c008d3c:	00b78123          	sb	a1,2(a5)
1c008d40:	ce21                	beqz	a2,1c008d98 <memmove+0x13c>
1c008d42:	00374583          	lbu	a1,3(a4)
1c008d46:	ffc68613          	addi	a2,a3,-4
1c008d4a:	00b781a3          	sb	a1,3(a5)
1c008d4e:	c629                	beqz	a2,1c008d98 <memmove+0x13c>
1c008d50:	00474583          	lbu	a1,4(a4)
1c008d54:	4615                	li	a2,5
1c008d56:	00b78223          	sb	a1,4(a5)
1c008d5a:	02c68f63          	beq	a3,a2,1c008d98 <memmove+0x13c>
1c008d5e:	00574703          	lbu	a4,5(a4)
1c008d62:	00e782a3          	sb	a4,5(a5)
1c008d66:	8082                	ret
1c008d68:	167d                	addi	a2,a2,-1
1c008d6a:	00c587b3          	add	a5,a1,a2
1c008d6e:	962a                	add	a2,a2,a0
1c008d70:	15fd                	addi	a1,a1,-1
1c008d72:	0007c703          	lbu	a4,0(a5)
1c008d76:	17fd                	addi	a5,a5,-1
1c008d78:	00e60023          	sb	a4,0(a2)
1c008d7c:	167d                	addi	a2,a2,-1
1c008d7e:	feb79ae3          	bne	a5,a1,1c008d72 <memmove+0x116>
1c008d82:	8082                	ret
1c008d84:	962a                	add	a2,a2,a0
1c008d86:	87aa                	mv	a5,a0
1c008d88:	0005c703          	lbu	a4,0(a1)
1c008d8c:	0785                	addi	a5,a5,1
1c008d8e:	fee78fa3          	sb	a4,-1(a5)
1c008d92:	0585                	addi	a1,a1,1
1c008d94:	fec79ae3          	bne	a5,a2,1c008d88 <memmove+0x12c>
1c008d98:	8082                	ret
1c008d9a:	8082                	ret
1c008d9c:	88ae                	mv	a7,a1
1c008d9e:	882a                	mv	a6,a0
1c008da0:	8332                	mv	t1,a2
1c008da2:	b7a1                	j	1c008cea <memmove+0x8e>

1c008da4 <strchr>:
1c008da4:	00054783          	lbu	a5,0(a0)
1c008da8:	0ff5f593          	andi	a1,a1,255
1c008dac:	00b78863          	beq	a5,a1,1c008dbc <strchr+0x18>
1c008db0:	c799                	beqz	a5,1c008dbe <strchr+0x1a>
1c008db2:	0505                	addi	a0,a0,1
1c008db4:	00054783          	lbu	a5,0(a0)
1c008db8:	feb79ce3          	bne	a5,a1,1c008db0 <strchr+0xc>
1c008dbc:	8082                	ret
1c008dbe:	0015b593          	seqz	a1,a1
1c008dc2:	40b005b3          	neg	a1,a1
1c008dc6:	8d6d                	and	a0,a0,a1
1c008dc8:	8082                	ret

1c008dca <puts>:
1c008dca:	00054783          	lbu	a5,0(a0)
1c008dce:	c78d                	beqz	a5,1c008df8 <puts+0x2e>
1c008dd0:	f14026f3          	csrr	a3,mhartid
1c008dd4:	00369713          	slli	a4,a3,0x3
1c008dd8:	1a10f637          	lui	a2,0x1a10f
1c008ddc:	0ff77713          	andi	a4,a4,255
1c008de0:	9732                	add	a4,a4,a2
1c008de2:	6609                	lui	a2,0x2
1c008de4:	068a                	slli	a3,a3,0x2
1c008de6:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008dea:	8ef1                	and	a3,a3,a2
1c008dec:	9736                	add	a4,a4,a3
1c008dee:	c31c                	sw	a5,0(a4)
1c008df0:	0505                	addi	a0,a0,1
1c008df2:	00054783          	lbu	a5,0(a0)
1c008df6:	ffe5                	bnez	a5,1c008dee <puts+0x24>
1c008df8:	f1402773          	csrr	a4,mhartid
1c008dfc:	00371793          	slli	a5,a4,0x3
1c008e00:	1a10f6b7          	lui	a3,0x1a10f
1c008e04:	0ff7f793          	andi	a5,a5,255
1c008e08:	97b6                	add	a5,a5,a3
1c008e0a:	6689                	lui	a3,0x2
1c008e0c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008e10:	070a                	slli	a4,a4,0x2
1c008e12:	8f75                	and	a4,a4,a3
1c008e14:	97ba                	add	a5,a5,a4
1c008e16:	4729                	li	a4,10
1c008e18:	c398                	sw	a4,0(a5)
1c008e1a:	4501                	li	a0,0
1c008e1c:	8082                	ret

1c008e1e <pos_libc_fputc_locked>:
1c008e1e:	6689                	lui	a3,0x2
1c008e20:	f14027f3          	csrr	a5,mhartid
1c008e24:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008e28:	00379713          	slli	a4,a5,0x3
1c008e2c:	078a                	slli	a5,a5,0x2
1c008e2e:	8ff5                	and	a5,a5,a3
1c008e30:	0ff77713          	andi	a4,a4,255
1c008e34:	1a10f6b7          	lui	a3,0x1a10f
1c008e38:	9736                	add	a4,a4,a3
1c008e3a:	0ff57513          	andi	a0,a0,255
1c008e3e:	97ba                	add	a5,a5,a4
1c008e40:	c388                	sw	a0,0(a5)
1c008e42:	4501                	li	a0,0
1c008e44:	8082                	ret

1c008e46 <pos_libc_prf_locked>:
1c008e46:	a0b1                	j	1c008e92 <pos_libc_prf>

1c008e48 <exit>:
1c008e48:	800007b7          	lui	a5,0x80000
1c008e4c:	1141                	addi	sp,sp,-16
1c008e4e:	8d5d                	or	a0,a0,a5
1c008e50:	c606                	sw	ra,12(sp)
1c008e52:	1a1047b7          	lui	a5,0x1a104
1c008e56:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008e5a:	36d1                	jal	1c008a1e <pos_wait_forever>

1c008e5c <pos_io_start>:
1c008e5c:	4501                	li	a0,0
1c008e5e:	8082                	ret

1c008e60 <pos_io_stop>:
1c008e60:	4501                	li	a0,0
1c008e62:	8082                	ret

1c008e64 <printf>:
1c008e64:	7139                	addi	sp,sp,-64
1c008e66:	02410313          	addi	t1,sp,36
1c008e6a:	d432                	sw	a2,40(sp)
1c008e6c:	862a                	mv	a2,a0
1c008e6e:	1c009537          	lui	a0,0x1c009
1c008e72:	d22e                	sw	a1,36(sp)
1c008e74:	d636                	sw	a3,44(sp)
1c008e76:	4589                	li	a1,2
1c008e78:	869a                	mv	a3,t1
1c008e7a:	e1e50513          	addi	a0,a0,-482 # 1c008e1e <pos_libc_fputc_locked>
1c008e7e:	ce06                	sw	ra,28(sp)
1c008e80:	d83a                	sw	a4,48(sp)
1c008e82:	da3e                	sw	a5,52(sp)
1c008e84:	dc42                	sw	a6,56(sp)
1c008e86:	de46                	sw	a7,60(sp)
1c008e88:	c61a                	sw	t1,12(sp)
1c008e8a:	3f75                	jal	1c008e46 <pos_libc_prf_locked>
1c008e8c:	40f2                	lw	ra,28(sp)
1c008e8e:	6121                	addi	sp,sp,64
1c008e90:	8082                	ret

1c008e92 <pos_libc_prf>:
1c008e92:	7169                	addi	sp,sp,-304
1c008e94:	12812423          	sw	s0,296(sp)
1c008e98:	12912223          	sw	s1,292(sp)
1c008e9c:	11612823          	sw	s6,272(sp)
1c008ea0:	11712623          	sw	s7,268(sp)
1c008ea4:	11812423          	sw	s8,264(sp)
1c008ea8:	11912223          	sw	s9,260(sp)
1c008eac:	11a12023          	sw	s10,256(sp)
1c008eb0:	12112623          	sw	ra,300(sp)
1c008eb4:	13212023          	sw	s2,288(sp)
1c008eb8:	11312e23          	sw	s3,284(sp)
1c008ebc:	11412c23          	sw	s4,280(sp)
1c008ec0:	11512a23          	sw	s5,276(sp)
1c008ec4:	dfee                	sw	s11,252(sp)
1c008ec6:	8b2a                	mv	s6,a0
1c008ec8:	8d2e                	mv	s10,a1
1c008eca:	84b2                	mv	s1,a2
1c008ecc:	8c36                	mv	s8,a3
1c008ece:	4401                	li	s0,0
1c008ed0:	1c000bb7          	lui	s7,0x1c000
1c008ed4:	02410c93          	addi	s9,sp,36
1c008ed8:	0004c503          	lbu	a0,0(s1)
1c008edc:	0485                	addi	s1,s1,1
1c008ede:	cd19                	beqz	a0,1c008efc <pos_libc_prf+0x6a>
1c008ee0:	02500793          	li	a5,37
1c008ee4:	04f50863          	beq	a0,a5,1c008f34 <pos_libc_prf+0xa2>
1c008ee8:	85ea                	mv	a1,s10
1c008eea:	9b02                	jalr	s6
1c008eec:	57fd                	li	a5,-1
1c008eee:	24f50863          	beq	a0,a5,1c00913e <pos_libc_prf+0x2ac>
1c008ef2:	0405                	addi	s0,s0,1
1c008ef4:	0004c503          	lbu	a0,0(s1)
1c008ef8:	0485                	addi	s1,s1,1
1c008efa:	f17d                	bnez	a0,1c008ee0 <pos_libc_prf+0x4e>
1c008efc:	8522                	mv	a0,s0
1c008efe:	12c12083          	lw	ra,300(sp)
1c008f02:	12812403          	lw	s0,296(sp)
1c008f06:	12412483          	lw	s1,292(sp)
1c008f0a:	12012903          	lw	s2,288(sp)
1c008f0e:	11c12983          	lw	s3,284(sp)
1c008f12:	11812a03          	lw	s4,280(sp)
1c008f16:	11412a83          	lw	s5,276(sp)
1c008f1a:	11012b03          	lw	s6,272(sp)
1c008f1e:	10c12b83          	lw	s7,268(sp)
1c008f22:	10812c03          	lw	s8,264(sp)
1c008f26:	10412c83          	lw	s9,260(sp)
1c008f2a:	10012d03          	lw	s10,256(sp)
1c008f2e:	5dfe                	lw	s11,252(sp)
1c008f30:	6155                	addi	sp,sp,304
1c008f32:	8082                	ret
1c008f34:	00148a93          	addi	s5,s1,1
1c008f38:	fffacd83          	lbu	s11,-1(s5) # ff00ffff <pulp__FC+0xff010000>
1c008f3c:	02000713          	li	a4,32
1c008f40:	208b8513          	addi	a0,s7,520 # 1c000208 <__DTOR_END__+0x1ec>
1c008f44:	85ee                	mv	a1,s11
1c008f46:	c83a                	sw	a4,16(sp)
1c008f48:	cc02                	sw	zero,24(sp)
1c008f4a:	ca02                	sw	zero,20(sp)
1c008f4c:	ce02                	sw	zero,28(sp)
1c008f4e:	c602                	sw	zero,12(sp)
1c008f50:	02300913          	li	s2,35
1c008f54:	02d00a13          	li	s4,45
1c008f58:	89d6                	mv	s3,s5
1c008f5a:	35a9                	jal	1c008da4 <strchr>
1c008f5c:	c915                	beqz	a0,1c008f90 <pos_libc_prf+0xfe>
1c008f5e:	212d8963          	beq	s11,s2,1c009170 <pos_libc_prf+0x2de>
1c008f62:	1fb97063          	bleu	s11,s2,1c009142 <pos_libc_prf+0x2b0>
1c008f66:	214d8163          	beq	s11,s4,1c009168 <pos_libc_prf+0x2d6>
1c008f6a:	03000613          	li	a2,48
1c008f6e:	1ecd8863          	beq	s11,a2,1c00915e <pos_libc_prf+0x2cc>
1c008f72:	02b00693          	li	a3,43
1c008f76:	1edd8063          	beq	s11,a3,1c009156 <pos_libc_prf+0x2c4>
1c008f7a:	84d6                	mv	s1,s5
1c008f7c:	00148a93          	addi	s5,s1,1
1c008f80:	fffacd83          	lbu	s11,-1(s5)
1c008f84:	208b8513          	addi	a0,s7,520
1c008f88:	85ee                	mv	a1,s11
1c008f8a:	89d6                	mv	s3,s5
1c008f8c:	3d21                	jal	1c008da4 <strchr>
1c008f8e:	f961                	bnez	a0,1c008f5e <pos_libc_prf+0xcc>
1c008f90:	02a00613          	li	a2,42
1c008f94:	20cd8463          	beq	s11,a2,1c00919c <pos_libc_prf+0x30a>
1c008f98:	fd0d8613          	addi	a2,s11,-48
1c008f9c:	45a5                	li	a1,9
1c008f9e:	4901                	li	s2,0
1c008fa0:	1cc5fe63          	bleu	a2,a1,1c00917c <pos_libc_prf+0x2ea>
1c008fa4:	02e00713          	li	a4,46
1c008fa8:	5a7d                	li	s4,-1
1c008faa:	24ed8463          	beq	s11,a4,1c0091f2 <pos_libc_prf+0x360>
1c008fae:	1c000837          	lui	a6,0x1c000
1c008fb2:	85ee                	mv	a1,s11
1c008fb4:	21080513          	addi	a0,a6,528 # 1c000210 <__DTOR_END__+0x1f4>
1c008fb8:	33f5                	jal	1c008da4 <strchr>
1c008fba:	84ce                	mv	s1,s3
1c008fbc:	c509                	beqz	a0,1c008fc6 <pos_libc_prf+0x134>
1c008fbe:	0009cd83          	lbu	s11,0(s3)
1c008fc2:	00198493          	addi	s1,s3,1
1c008fc6:	06700713          	li	a4,103
1c008fca:	1fb75963          	ble	s11,a4,1c0091bc <pos_libc_prf+0x32a>
1c008fce:	07000713          	li	a4,112
1c008fd2:	12ed89e3          	beq	s11,a4,1c009904 <pos_libc_prf+0xa72>
1c008fd6:	25b75263          	ble	s11,a4,1c00921a <pos_libc_prf+0x388>
1c008fda:	07500713          	li	a4,117
1c008fde:	0aed89e3          	beq	s11,a4,1c009890 <pos_libc_prf+0x9fe>
1c008fe2:	07800713          	li	a4,120
1c008fe6:	72ed8b63          	beq	s11,a4,1c00971c <pos_libc_prf+0x88a>
1c008fea:	07300713          	li	a4,115
1c008fee:	1aed9ce3          	bne	s11,a4,1c0099a6 <pos_libc_prf+0xb14>
1c008ff2:	000c2583          	lw	a1,0(s8)
1c008ff6:	004c0a93          	addi	s5,s8,4
1c008ffa:	87ae                	mv	a5,a1
1c008ffc:	4981                	li	s3,0
1c008ffe:	0c800693          	li	a3,200
1c009002:	a021                	j	1c00900a <pos_libc_prf+0x178>
1c009004:	0985                	addi	s3,s3,1
1c009006:	5ad98be3          	beq	s3,a3,1c009dbc <pos_libc_prf+0xf2a>
1c00900a:	0007c703          	lbu	a4,0(a5)
1c00900e:	0785                	addi	a5,a5,1
1c009010:	fb75                	bnez	a4,1c009004 <pos_libc_prf+0x172>
1c009012:	000a4563          	bltz	s4,1c00901c <pos_libc_prf+0x18a>
1c009016:	013a5363          	ble	s3,s4,1c00901c <pos_libc_prf+0x18a>
1c00901a:	89d2                	mv	s3,s4
1c00901c:	8c56                	mv	s8,s5
1c00901e:	ea098de3          	beqz	s3,1c008ed8 <pos_libc_prf+0x46>
1c009022:	864e                	mv	a2,s3
1c009024:	8566                	mv	a0,s9
1c009026:	34ed                	jal	1c008b10 <memcpy>
1c009028:	8c56                	mv	s8,s5
1c00902a:	0f29d963          	ble	s2,s3,1c00911c <pos_libc_prf+0x28a>
1c00902e:	c602                	sw	zero,12(sp)
1c009030:	48f2                	lw	a7,28(sp)
1c009032:	1a0885e3          	beqz	a7,1c0099dc <pos_libc_prf+0xb4a>
1c009036:	013c87b3          	add	a5,s9,s3
1c00903a:	40f007b3          	neg	a5,a5
1c00903e:	8b8d                	andi	a5,a5,3
1c009040:	00378693          	addi	a3,a5,3
1c009044:	4715                	li	a4,5
1c009046:	413905b3          	sub	a1,s2,s3
1c00904a:	00e6f363          	bleu	a4,a3,1c009050 <pos_libc_prf+0x1be>
1c00904e:	4695                	li	a3,5
1c009050:	fff90713          	addi	a4,s2,-1
1c009054:	41370733          	sub	a4,a4,s3
1c009058:	06d76663          	bltu	a4,a3,1c0090c4 <pos_libc_prf+0x232>
1c00905c:	86ce                	mv	a3,s3
1c00905e:	cb9d                	beqz	a5,1c009094 <pos_libc_prf+0x202>
1c009060:	0f010813          	addi	a6,sp,240
1c009064:	013806b3          	add	a3,a6,s3
1c009068:	02000713          	li	a4,32
1c00906c:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c009070:	4605                	li	a2,1
1c009072:	00198693          	addi	a3,s3,1
1c009076:	00c78f63          	beq	a5,a2,1c009094 <pos_libc_prf+0x202>
1c00907a:	96c2                	add	a3,a3,a6
1c00907c:	f2e68a23          	sb	a4,-204(a3)
1c009080:	460d                	li	a2,3
1c009082:	00298693          	addi	a3,s3,2
1c009086:	00c79763          	bne	a5,a2,1c009094 <pos_libc_prf+0x202>
1c00908a:	96c2                	add	a3,a3,a6
1c00908c:	f2e68a23          	sb	a4,-204(a3)
1c009090:	00398693          	addi	a3,s3,3
1c009094:	8d9d                	sub	a1,a1,a5
1c009096:	97ce                	add	a5,a5,s3
1c009098:	0025d613          	srli	a2,a1,0x2
1c00909c:	97e6                	add	a5,a5,s9
1c00909e:	4701                	li	a4,0
1c0090a0:	1c0008b7          	lui	a7,0x1c000
1c0090a4:	20488893          	addi	a7,a7,516 # 1c000204 <__DTOR_END__+0x1e8>
1c0090a8:	0008a883          	lw	a7,0(a7)
1c0090ac:	0705                	addi	a4,a4,1
1c0090ae:	0117a023          	sw	a7,0(a5)
1c0090b2:	0791                	addi	a5,a5,4
1c0090b4:	fec766e3          	bltu	a4,a2,1c0090a0 <pos_libc_prf+0x20e>
1c0090b8:	ffc5f793          	andi	a5,a1,-4
1c0090bc:	00d789b3          	add	s3,a5,a3
1c0090c0:	04b78b63          	beq	a5,a1,1c009116 <pos_libc_prf+0x284>
1c0090c4:	1988                	addi	a0,sp,240
1c0090c6:	01350733          	add	a4,a0,s3
1c0090ca:	02000793          	li	a5,32
1c0090ce:	f2f70a23          	sb	a5,-204(a4)
1c0090d2:	00198713          	addi	a4,s3,1
1c0090d6:	05275063          	ble	s2,a4,1c009116 <pos_libc_prf+0x284>
1c0090da:	972a                	add	a4,a4,a0
1c0090dc:	f2f70a23          	sb	a5,-204(a4)
1c0090e0:	00298713          	addi	a4,s3,2
1c0090e4:	03275963          	ble	s2,a4,1c009116 <pos_libc_prf+0x284>
1c0090e8:	972a                	add	a4,a4,a0
1c0090ea:	f2f70a23          	sb	a5,-204(a4)
1c0090ee:	00398713          	addi	a4,s3,3
1c0090f2:	03275263          	ble	s2,a4,1c009116 <pos_libc_prf+0x284>
1c0090f6:	972a                	add	a4,a4,a0
1c0090f8:	f2f70a23          	sb	a5,-204(a4)
1c0090fc:	00498713          	addi	a4,s3,4
1c009100:	01275b63          	ble	s2,a4,1c009116 <pos_libc_prf+0x284>
1c009104:	972a                	add	a4,a4,a0
1c009106:	f2f70a23          	sb	a5,-204(a4)
1c00910a:	0995                	addi	s3,s3,5
1c00910c:	0129d563          	ble	s2,s3,1c009116 <pos_libc_prf+0x284>
1c009110:	99aa                	add	s3,s3,a0
1c009112:	f2f98a23          	sb	a5,-204(s3)
1c009116:	89ca                	mv	s3,s2
1c009118:	dc0980e3          	beqz	s3,1c008ed8 <pos_libc_prf+0x46>
1c00911c:	8966                	mv	s2,s9
1c00911e:	5a7d                	li	s4,-1
1c009120:	41940ab3          	sub	s5,s0,s9
1c009124:	a029                	j	1c00912e <pos_libc_prf+0x29c>
1c009126:	01590433          	add	s0,s2,s5
1c00912a:	da0987e3          	beqz	s3,1c008ed8 <pos_libc_prf+0x46>
1c00912e:	00094503          	lbu	a0,0(s2)
1c009132:	85ea                	mv	a1,s10
1c009134:	9b02                	jalr	s6
1c009136:	0905                	addi	s2,s2,1
1c009138:	19fd                	addi	s3,s3,-1
1c00913a:	ff4516e3          	bne	a0,s4,1c009126 <pos_libc_prf+0x294>
1c00913e:	547d                	li	s0,-1
1c009140:	bb75                	j	1c008efc <pos_libc_prf+0x6a>
1c009142:	da0d8de3          	beqz	s11,1c008efc <pos_libc_prf+0x6a>
1c009146:	02000513          	li	a0,32
1c00914a:	e2ad98e3          	bne	s11,a0,1c008f7a <pos_libc_prf+0xe8>
1c00914e:	4785                	li	a5,1
1c009150:	cc3e                	sw	a5,24(sp)
1c009152:	84d6                	mv	s1,s5
1c009154:	b525                	j	1c008f7c <pos_libc_prf+0xea>
1c009156:	4705                	li	a4,1
1c009158:	ca3a                	sw	a4,20(sp)
1c00915a:	84d6                	mv	s1,s5
1c00915c:	b505                	j	1c008f7c <pos_libc_prf+0xea>
1c00915e:	03000893          	li	a7,48
1c009162:	c846                	sw	a7,16(sp)
1c009164:	84d6                	mv	s1,s5
1c009166:	bd19                	j	1c008f7c <pos_libc_prf+0xea>
1c009168:	4685                	li	a3,1
1c00916a:	ce36                	sw	a3,28(sp)
1c00916c:	84d6                	mv	s1,s5
1c00916e:	b539                	j	1c008f7c <pos_libc_prf+0xea>
1c009170:	4805                	li	a6,1
1c009172:	c642                	sw	a6,12(sp)
1c009174:	84d6                	mv	s1,s5
1c009176:	b519                	j	1c008f7c <pos_libc_prf+0xea>
1c009178:	84d6                	mv	s1,s5
1c00917a:	0a85                	addi	s5,s5,1
1c00917c:	00291793          	slli	a5,s2,0x2
1c009180:	97ca                	add	a5,a5,s2
1c009182:	0786                	slli	a5,a5,0x1
1c009184:	97ee                	add	a5,a5,s11
1c009186:	000acd83          	lbu	s11,0(s5)
1c00918a:	fd078913          	addi	s2,a5,-48
1c00918e:	fd0d8793          	addi	a5,s11,-48
1c009192:	fef5f3e3          	bleu	a5,a1,1c009178 <pos_libc_prf+0x2e6>
1c009196:	00248993          	addi	s3,s1,2
1c00919a:	a811                	j	1c0091ae <pos_libc_prf+0x31c>
1c00919c:	000c2903          	lw	s2,0(s8)
1c0091a0:	0c11                	addi	s8,s8,4
1c0091a2:	14094663          	bltz	s2,1c0092ee <pos_libc_prf+0x45c>
1c0091a6:	000acd83          	lbu	s11,0(s5)
1c0091aa:	00248993          	addi	s3,s1,2
1c0091ae:	0c800713          	li	a4,200
1c0091b2:	df2779e3          	bleu	s2,a4,1c008fa4 <pos_libc_prf+0x112>
1c0091b6:	0c800913          	li	s2,200
1c0091ba:	b3ed                	j	1c008fa4 <pos_libc_prf+0x112>
1c0091bc:	06500713          	li	a4,101
1c0091c0:	12eddc63          	ble	a4,s11,1c0092f8 <pos_libc_prf+0x466>
1c0091c4:	04700713          	li	a4,71
1c0091c8:	55b74063          	blt	a4,s11,1c009708 <pos_libc_prf+0x876>
1c0091cc:	04500713          	li	a4,69
1c0091d0:	12edd463          	ble	a4,s11,1c0092f8 <pos_libc_prf+0x466>
1c0091d4:	d20d84e3          	beqz	s11,1c008efc <pos_libc_prf+0x6a>
1c0091d8:	02500713          	li	a4,37
1c0091dc:	7ced9563          	bne	s11,a4,1c0099a6 <pos_libc_prf+0xb14>
1c0091e0:	85ea                	mv	a1,s10
1c0091e2:	02500513          	li	a0,37
1c0091e6:	9b02                	jalr	s6
1c0091e8:	57fd                	li	a5,-1
1c0091ea:	f4f50ae3          	beq	a0,a5,1c00913e <pos_libc_prf+0x2ac>
1c0091ee:	0405                	addi	s0,s0,1
1c0091f0:	b311                	j	1c008ef4 <pos_libc_prf+0x62>
1c0091f2:	0009c783          	lbu	a5,0(s3)
1c0091f6:	02a00713          	li	a4,42
1c0091fa:	00198693          	addi	a3,s3,1
1c0091fe:	0ae79d63          	bne	a5,a4,1c0092b8 <pos_libc_prf+0x426>
1c009202:	000c2a03          	lw	s4,0(s8)
1c009206:	0019cd83          	lbu	s11,1(s3)
1c00920a:	0c11                	addi	s8,s8,4
1c00920c:	0989                	addi	s3,s3,2
1c00920e:	0c800713          	li	a4,200
1c009212:	d9475ee3          	ble	s4,a4,1c008fae <pos_libc_prf+0x11c>
1c009216:	5a7d                	li	s4,-1
1c009218:	bb59                	j	1c008fae <pos_libc_prf+0x11c>
1c00921a:	06e00713          	li	a4,110
1c00921e:	76ed8e63          	beq	s11,a4,1c00999a <pos_libc_prf+0xb08>
1c009222:	5bb75663          	ble	s11,a4,1c0097ce <pos_libc_prf+0x93c>
1c009226:	4732                	lw	a4,12(sp)
1c009228:	004c0513          	addi	a0,s8,4
1c00922c:	000c2683          	lw	a3,0(s8)
1c009230:	1c070de3          	beqz	a4,1c009c0a <pos_libc_prf+0xd78>
1c009234:	03000793          	li	a5,48
1c009238:	02f10223          	sb	a5,36(sp)
1c00923c:	16068de3          	beqz	a3,1c009bb6 <pos_libc_prf+0xd24>
1c009240:	02510593          	addi	a1,sp,37
1c009244:	872e                	mv	a4,a1
1c009246:	87ba                	mv	a5,a4
1c009248:	0076f613          	andi	a2,a3,7
1c00924c:	0785                	addi	a5,a5,1
1c00924e:	03060613          	addi	a2,a2,48
1c009252:	828d                	srli	a3,a3,0x3
1c009254:	fec78fa3          	sb	a2,-1(a5)
1c009258:	fae5                	bnez	a3,1c009248 <pos_libc_prf+0x3b6>
1c00925a:	40b789b3          	sub	s3,a5,a1
1c00925e:	0149db63          	ble	s4,s3,1c009274 <pos_libc_prf+0x3e2>
1c009262:	03000693          	li	a3,48
1c009266:	0785                	addi	a5,a5,1
1c009268:	fed78fa3          	sb	a3,-1(a5)
1c00926c:	40b789b3          	sub	s3,a5,a1
1c009270:	ff49cbe3          	blt	s3,s4,1c009266 <pos_libc_prf+0x3d4>
1c009274:	00078023          	sb	zero,0(a5)
1c009278:	17fd                	addi	a5,a5,-1
1c00927a:	00f77e63          	bleu	a5,a4,1c009296 <pos_libc_prf+0x404>
1c00927e:	00074603          	lbu	a2,0(a4)
1c009282:	0007c683          	lbu	a3,0(a5)
1c009286:	00c78023          	sb	a2,0(a5)
1c00928a:	00d70023          	sb	a3,0(a4)
1c00928e:	17fd                	addi	a5,a5,-1
1c009290:	0705                	addi	a4,a4,1
1c009292:	fef766e3          	bltu	a4,a5,1c00927e <pos_libc_prf+0x3ec>
1c009296:	4832                	lw	a6,12(sp)
1c009298:	57fd                	li	a5,-1
1c00929a:	99c2                	add	s3,s3,a6
1c00929c:	22fa0ee3          	beq	s4,a5,1c009cd8 <pos_libc_prf+0xe46>
1c0092a0:	0c800793          	li	a5,200
1c0092a4:	e937cde3          	blt	a5,s3,1c00913e <pos_libc_prf+0x2ac>
1c0092a8:	02000693          	li	a3,32
1c0092ac:	8c2a                	mv	s8,a0
1c0092ae:	c602                	sw	zero,12(sp)
1c0092b0:	c836                	sw	a3,16(sp)
1c0092b2:	d729cfe3          	blt	s3,s2,1c009030 <pos_libc_prf+0x19e>
1c0092b6:	b58d                	j	1c009118 <pos_libc_prf+0x286>
1c0092b8:	fd078593          	addi	a1,a5,-48
1c0092bc:	4725                	li	a4,9
1c0092be:	8dbe                	mv	s11,a5
1c0092c0:	4a01                	li	s4,0
1c0092c2:	4625                	li	a2,9
1c0092c4:	00b77663          	bleu	a1,a4,1c0092d0 <pos_libc_prf+0x43e>
1c0092c8:	1070006f          	j	1c009bce <pos_libc_prf+0xd3c>
1c0092cc:	89b6                	mv	s3,a3
1c0092ce:	0685                	addi	a3,a3,1
1c0092d0:	002a1793          	slli	a5,s4,0x2
1c0092d4:	97d2                	add	a5,a5,s4
1c0092d6:	0786                	slli	a5,a5,0x1
1c0092d8:	97ee                	add	a5,a5,s11
1c0092da:	0006cd83          	lbu	s11,0(a3)
1c0092de:	fd078a13          	addi	s4,a5,-48
1c0092e2:	fd0d8793          	addi	a5,s11,-48
1c0092e6:	fef673e3          	bleu	a5,a2,1c0092cc <pos_libc_prf+0x43a>
1c0092ea:	0989                	addi	s3,s3,2
1c0092ec:	b70d                	j	1c00920e <pos_libc_prf+0x37c>
1c0092ee:	4785                	li	a5,1
1c0092f0:	41200933          	neg	s2,s2
1c0092f4:	ce3e                	sw	a5,28(sp)
1c0092f6:	bd45                	j	1c0091a6 <pos_libc_prf+0x314>
1c0092f8:	0c1d                	addi	s8,s8,7
1c0092fa:	ff8c7c13          	andi	s8,s8,-8
1c0092fe:	000c2703          	lw	a4,0(s8)
1c009302:	004c2803          	lw	a6,4(s8)
1c009306:	01575693          	srli	a3,a4,0x15
1c00930a:	00b81613          	slli	a2,a6,0xb
1c00930e:	8e55                	or	a2,a2,a3
1c009310:	01485513          	srli	a0,a6,0x14
1c009314:	00b71693          	slli	a3,a4,0xb
1c009318:	80000737          	lui	a4,0x80000
1c00931c:	fff74713          	not	a4,a4
1c009320:	7ff57513          	andi	a0,a0,2047
1c009324:	7ff00593          	li	a1,2047
1c009328:	0c21                	addi	s8,s8,8
1c00932a:	8e79                	and	a2,a2,a4
1c00932c:	0ab504e3          	beq	a0,a1,1c009bd4 <pos_libc_prf+0xd42>
1c009330:	04600593          	li	a1,70
1c009334:	00bd9463          	bne	s11,a1,1c00933c <pos_libc_prf+0x4aa>
1c009338:	06600d93          	li	s11,102
1c00933c:	00d56733          	or	a4,a0,a3
1c009340:	8f51                	or	a4,a4,a2
1c009342:	7e070963          	beqz	a4,1c009b34 <pos_libc_prf+0xca2>
1c009346:	800005b7          	lui	a1,0x80000
1c00934a:	c0250513          	addi	a0,a0,-1022
1c00934e:	8dd1                	or	a1,a1,a2
1c009350:	26084ae3          	bltz	a6,1c009dc4 <pos_libc_prf+0xf32>
1c009354:	4852                	lw	a6,20(sp)
1c009356:	220808e3          	beqz	a6,1c009d86 <pos_libc_prf+0xef4>
1c00935a:	02b00713          	li	a4,43
1c00935e:	02e10223          	sb	a4,36(sp)
1c009362:	02510e93          	addi	t4,sp,37
1c009366:	5779                	li	a4,-2
1c009368:	4301                	li	t1,0
1c00936a:	06e55763          	ble	a4,a0,1c0093d8 <pos_libc_prf+0x546>
1c00936e:	33333837          	lui	a6,0x33333
1c009372:	800008b7          	lui	a7,0x80000
1c009376:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c00937a:	fff8c893          	not	a7,a7
1c00937e:	5e79                	li	t3,-2
1c009380:	a011                	j	1c009384 <pos_libc_prf+0x4f2>
1c009382:	853e                	mv	a0,a5
1c009384:	01f59613          	slli	a2,a1,0x1f
1c009388:	0016d713          	srli	a4,a3,0x1
1c00938c:	0016f793          	andi	a5,a3,1
1c009390:	8f51                	or	a4,a4,a2
1c009392:	00e786b3          	add	a3,a5,a4
1c009396:	00f6b7b3          	sltu	a5,a3,a5
1c00939a:	8185                	srli	a1,a1,0x1
1c00939c:	95be                	add	a1,a1,a5
1c00939e:	00150793          	addi	a5,a0,1
1c0093a2:	feb860e3          	bltu	a6,a1,1c009382 <pos_libc_prf+0x4f0>
1c0093a6:	00269613          	slli	a2,a3,0x2
1c0093aa:	01e6df13          	srli	t5,a3,0x1e
1c0093ae:	00259713          	slli	a4,a1,0x2
1c0093b2:	96b2                	add	a3,a3,a2
1c0093b4:	00ef6733          	or	a4,t5,a4
1c0093b8:	95ba                	add	a1,a1,a4
1c0093ba:	00c6b633          	sltu	a2,a3,a2
1c0093be:	95b2                	add	a1,a1,a2
1c0093c0:	01f6d713          	srli	a4,a3,0x1f
1c0093c4:	0509                	addi	a0,a0,2
1c0093c6:	137d                	addi	t1,t1,-1
1c0093c8:	01159663          	bne	a1,a7,1c0093d4 <pos_libc_prf+0x542>
1c0093cc:	0686                	slli	a3,a3,0x1
1c0093ce:	ffe76593          	ori	a1,a4,-2
1c0093d2:	853e                	mv	a0,a5
1c0093d4:	fbc548e3          	blt	a0,t3,1c009384 <pos_libc_prf+0x4f2>
1c0093d8:	06a05563          	blez	a0,1c009442 <pos_libc_prf+0x5b0>
1c0093dc:	800008b7          	lui	a7,0x80000
1c0093e0:	4e15                	li	t3,5
1c0093e2:	fff8c893          	not	a7,a7
1c0093e6:	00268613          	addi	a2,a3,2
1c0093ea:	00d636b3          	sltu	a3,a2,a3
1c0093ee:	95b6                	add	a1,a1,a3
1c0093f0:	03c5d7b3          	divu	a5,a1,t3
1c0093f4:	00279713          	slli	a4,a5,0x2
1c0093f8:	973e                	add	a4,a4,a5
1c0093fa:	8d99                	sub	a1,a1,a4
1c0093fc:	01d59713          	slli	a4,a1,0x1d
1c009400:	00365593          	srli	a1,a2,0x3
1c009404:	8dd9                	or	a1,a1,a4
1c009406:	03c5d5b3          	divu	a1,a1,t3
1c00940a:	00359693          	slli	a3,a1,0x3
1c00940e:	00559713          	slli	a4,a1,0x5
1c009412:	9736                	add	a4,a4,a3
1c009414:	40e60733          	sub	a4,a2,a4
1c009418:	03c75733          	divu	a4,a4,t3
1c00941c:	81f5                	srli	a1,a1,0x1d
1c00941e:	96ba                	add	a3,a3,a4
1c009420:	97ae                	add	a5,a5,a1
1c009422:	00e6b733          	sltu	a4,a3,a4
1c009426:	00f705b3          	add	a1,a4,a5
1c00942a:	157d                	addi	a0,a0,-1
1c00942c:	0305                	addi	t1,t1,1
1c00942e:	01f6d793          	srli	a5,a3,0x1f
1c009432:	0586                	slli	a1,a1,0x1
1c009434:	8ddd                	or	a1,a1,a5
1c009436:	0686                	slli	a3,a3,0x1
1c009438:	157d                	addi	a0,a0,-1
1c00943a:	feb8fae3          	bleu	a1,a7,1c00942e <pos_libc_prf+0x59c>
1c00943e:	faa044e3          	bgtz	a0,1c0093e6 <pos_libc_prf+0x554>
1c009442:	4611                	li	a2,4
1c009444:	01f59713          	slli	a4,a1,0x1f
1c009448:	0016d793          	srli	a5,a3,0x1
1c00944c:	8fd9                	or	a5,a5,a4
1c00944e:	8a85                	andi	a3,a3,1
1c009450:	00f688b3          	add	a7,a3,a5
1c009454:	8185                	srli	a1,a1,0x1
1c009456:	00d8b6b3          	sltu	a3,a7,a3
1c00945a:	00b68733          	add	a4,a3,a1
1c00945e:	0505                	addi	a0,a0,1
1c009460:	86c6                	mv	a3,a7
1c009462:	85ba                	mv	a1,a4
1c009464:	fec510e3          	bne	a0,a2,1c009444 <pos_libc_prf+0x5b2>
1c009468:	06700693          	li	a3,103
1c00946c:	040a48e3          	bltz	s4,1c009cbc <pos_libc_prf+0xe2a>
1c009470:	70dd8b63          	beq	s11,a3,1c009b86 <pos_libc_prf+0xcf4>
1c009474:	04700693          	li	a3,71
1c009478:	70dd8763          	beq	s11,a3,1c009b86 <pos_libc_prf+0xcf4>
1c00947c:	06600693          	li	a3,102
1c009480:	08dd89e3          	beq	s11,a3,1c009d12 <pos_libc_prf+0xe80>
1c009484:	001a0e13          	addi	t3,s4,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c009488:	46c1                	li	a3,16
1c00948a:	01c6d363          	ble	t3,a3,1c009490 <pos_libc_prf+0x5fe>
1c00948e:	4e41                	li	t3,16
1c009490:	1e7d                	addi	t3,t3,-1
1c009492:	4f81                	li	t6,0
1c009494:	4681                	li	a3,0
1c009496:	08000637          	lui	a2,0x8000
1c00949a:	4f15                	li	t5,5
1c00949c:	52fd                	li	t0,-1
1c00949e:	00268593          	addi	a1,a3,2
1c0094a2:	00d5b7b3          	sltu	a5,a1,a3
1c0094a6:	97b2                	add	a5,a5,a2
1c0094a8:	03e7d633          	divu	a2,a5,t5
1c0094ac:	00261693          	slli	a3,a2,0x2
1c0094b0:	96b2                	add	a3,a3,a2
1c0094b2:	8f95                	sub	a5,a5,a3
1c0094b4:	07f6                	slli	a5,a5,0x1d
1c0094b6:	0035d513          	srli	a0,a1,0x3
1c0094ba:	8d5d                	or	a0,a0,a5
1c0094bc:	03e55533          	divu	a0,a0,t5
1c0094c0:	00351693          	slli	a3,a0,0x3
1c0094c4:	00551793          	slli	a5,a0,0x5
1c0094c8:	97b6                	add	a5,a5,a3
1c0094ca:	40f587b3          	sub	a5,a1,a5
1c0094ce:	03e7d7b3          	divu	a5,a5,t5
1c0094d2:	8175                	srli	a0,a0,0x1d
1c0094d4:	96be                	add	a3,a3,a5
1c0094d6:	00f6b7b3          	sltu	a5,a3,a5
1c0094da:	962a                	add	a2,a2,a0
1c0094dc:	963e                	add	a2,a2,a5
1c0094de:	01f61513          	slli	a0,a2,0x1f
1c0094e2:	0016d793          	srli	a5,a3,0x1
1c0094e6:	0016f593          	andi	a1,a3,1
1c0094ea:	8fc9                	or	a5,a5,a0
1c0094ec:	00f586b3          	add	a3,a1,a5
1c0094f0:	8205                	srli	a2,a2,0x1
1c0094f2:	00b6b7b3          	sltu	a5,a3,a1
1c0094f6:	1e7d                	addi	t3,t3,-1
1c0094f8:	963e                	add	a2,a2,a5
1c0094fa:	fa5e12e3          	bne	t3,t0,1c00949e <pos_libc_prf+0x60c>
1c0094fe:	96c6                	add	a3,a3,a7
1c009500:	963a                	add	a2,a2,a4
1c009502:	0116b8b3          	sltu	a7,a3,a7
1c009506:	9646                	add	a2,a2,a7
1c009508:	f00005b7          	lui	a1,0xf0000
1c00950c:	8df1                	and	a1,a1,a2
1c00950e:	8736                	mv	a4,a3
1c009510:	cdb9                	beqz	a1,1c00956e <pos_libc_prf+0x6dc>
1c009512:	0689                	addi	a3,a3,2
1c009514:	00e6b733          	sltu	a4,a3,a4
1c009518:	963a                	add	a2,a2,a4
1c00951a:	4815                	li	a6,5
1c00951c:	03065533          	divu	a0,a2,a6
1c009520:	00251713          	slli	a4,a0,0x2
1c009524:	972a                	add	a4,a4,a0
1c009526:	8e19                	sub	a2,a2,a4
1c009528:	01d61713          	slli	a4,a2,0x1d
1c00952c:	0036d593          	srli	a1,a3,0x3
1c009530:	8dd9                	or	a1,a1,a4
1c009532:	0305d5b3          	divu	a1,a1,a6
1c009536:	00359613          	slli	a2,a1,0x3
1c00953a:	00559713          	slli	a4,a1,0x5
1c00953e:	9732                	add	a4,a4,a2
1c009540:	40e68733          	sub	a4,a3,a4
1c009544:	03075733          	divu	a4,a4,a6
1c009548:	81f5                	srli	a1,a1,0x1d
1c00954a:	963a                	add	a2,a2,a4
1c00954c:	00e63733          	sltu	a4,a2,a4
1c009550:	95aa                	add	a1,a1,a0
1c009552:	00b706b3          	add	a3,a4,a1
1c009556:	01f69593          	slli	a1,a3,0x1f
1c00955a:	00165713          	srli	a4,a2,0x1
1c00955e:	8f4d                	or	a4,a4,a1
1c009560:	8a05                	andi	a2,a2,1
1c009562:	9732                	add	a4,a4,a2
1c009564:	8285                	srli	a3,a3,0x1
1c009566:	00c73633          	sltu	a2,a4,a2
1c00956a:	9636                	add	a2,a2,a3
1c00956c:	0305                	addi	t1,t1,1
1c00956e:	001e8993          	addi	s3,t4,1
1c009572:	06600693          	li	a3,102
1c009576:	85ce                	mv	a1,s3
1c009578:	6add8663          	beq	s11,a3,1c009c24 <pos_libc_prf+0xd92>
1c00957c:	00271693          	slli	a3,a4,0x2
1c009580:	01e75593          	srli	a1,a4,0x1e
1c009584:	00261513          	slli	a0,a2,0x2
1c009588:	9736                	add	a4,a4,a3
1c00958a:	8d4d                	or	a0,a0,a1
1c00958c:	962a                	add	a2,a2,a0
1c00958e:	00d735b3          	sltu	a1,a4,a3
1c009592:	95b2                	add	a1,a1,a2
1c009594:	01f75693          	srli	a3,a4,0x1f
1c009598:	0586                	slli	a1,a1,0x1
1c00959a:	8dd5                	or	a1,a1,a3
1c00959c:	01c5d693          	srli	a3,a1,0x1c
1c0095a0:	03068613          	addi	a2,a3,48
1c0095a4:	00d036b3          	snez	a3,a3
1c0095a8:	10000537          	lui	a0,0x10000
1c0095ac:	40d30333          	sub	t1,t1,a3
1c0095b0:	46b2                	lw	a3,12(sp)
1c0095b2:	157d                	addi	a0,a0,-1
1c0095b4:	00ce8023          	sb	a2,0(t4)
1c0095b8:	0706                	slli	a4,a4,0x1
1c0095ba:	8de9                	and	a1,a1,a0
1c0095bc:	64068b63          	beqz	a3,1c009c12 <pos_libc_prf+0xd80>
1c0095c0:	02e00693          	li	a3,46
1c0095c4:	00de80a3          	sb	a3,1(t4)
1c0095c8:	002e8513          	addi	a0,t4,2
1c0095cc:	020a00e3          	beqz	s4,1c009dec <pos_libc_prf+0xf5a>
1c0095d0:	014509b3          	add	s3,a0,s4
1c0095d4:	48bd                	li	a7,15
1c0095d6:	03000e13          	li	t3,48
1c0095da:	00271793          	slli	a5,a4,0x2
1c0095de:	01e75813          	srli	a6,a4,0x1e
1c0095e2:	00259693          	slli	a3,a1,0x2
1c0095e6:	00e78633          	add	a2,a5,a4
1c0095ea:	00d866b3          	or	a3,a6,a3
1c0095ee:	96ae                	add	a3,a3,a1
1c0095f0:	00f637b3          	sltu	a5,a2,a5
1c0095f4:	97b6                	add	a5,a5,a3
1c0095f6:	0786                	slli	a5,a5,0x1
1c0095f8:	01f65693          	srli	a3,a2,0x1f
1c0095fc:	8fd5                	or	a5,a5,a3
1c0095fe:	01c7d693          	srli	a3,a5,0x1c
1c009602:	03068693          	addi	a3,a3,48
1c009606:	0505                	addi	a0,a0,1
1c009608:	3b105663          	blez	a7,1c0099b4 <pos_libc_prf+0xb22>
1c00960c:	10000837          	lui	a6,0x10000
1c009610:	187d                	addi	a6,a6,-1
1c009612:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c009616:	18fd                	addi	a7,a7,-1
1c009618:	00161713          	slli	a4,a2,0x1
1c00961c:	0107f5b3          	and	a1,a5,a6
1c009620:	faa99de3          	bne	s3,a0,1c0095da <pos_libc_prf+0x748>
1c009624:	0c0f9263          	bnez	t6,1c0096e8 <pos_libc_prf+0x856>
1c009628:	fdfdf713          	andi	a4,s11,-33
1c00962c:	04500693          	li	a3,69
1c009630:	02d71963          	bne	a4,a3,1c009662 <pos_libc_prf+0x7d0>
1c009634:	87ee                	mv	a5,s11
1c009636:	00f98023          	sb	a5,0(s3)
1c00963a:	6a034763          	bltz	t1,1c009ce8 <pos_libc_prf+0xe56>
1c00963e:	02b00793          	li	a5,43
1c009642:	00f980a3          	sb	a5,1(s3)
1c009646:	47a9                	li	a5,10
1c009648:	02f34733          	div	a4,t1,a5
1c00964c:	02f367b3          	rem	a5,t1,a5
1c009650:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c009654:	03078793          	addi	a5,a5,48
1c009658:	00e98123          	sb	a4,2(s3)
1c00965c:	00f981a3          	sb	a5,3(s3)
1c009660:	0991                	addi	s3,s3,4
1c009662:	00098023          	sb	zero,0(s3)
1c009666:	419989b3          	sub	s3,s3,s9
1c00966a:	48d2                	lw	a7,20(sp)
1c00966c:	4662                	lw	a2,24(sp)
1c00966e:	00c8e8b3          	or	a7,a7,a2
1c009672:	c646                	sw	a7,12(sp)
1c009674:	34089d63          	bnez	a7,1c0099ce <pos_libc_prf+0xb3c>
1c009678:	02414703          	lbu	a4,36(sp)
1c00967c:	02d00793          	li	a5,45
1c009680:	34f70763          	beq	a4,a5,1c0099ce <pos_libc_prf+0xb3c>
1c009684:	0c800793          	li	a5,200
1c009688:	ab37cbe3          	blt	a5,s3,1c00913e <pos_libc_prf+0x2ac>
1c00968c:	9b29c2e3          	blt	s3,s2,1c009030 <pos_libc_prf+0x19e>
1c009690:	b461                	j	1c009118 <pos_libc_prf+0x286>
1c009692:	0585                	addi	a1,a1,1
1c009694:	00271793          	slli	a5,a4,0x2
1c009698:	01e75e13          	srli	t3,a4,0x1e
1c00969c:	00261693          	slli	a3,a2,0x2
1c0096a0:	00e788b3          	add	a7,a5,a4
1c0096a4:	00de66b3          	or	a3,t3,a3
1c0096a8:	96b2                	add	a3,a3,a2
1c0096aa:	00f8b7b3          	sltu	a5,a7,a5
1c0096ae:	97b6                	add	a5,a5,a3
1c0096b0:	0786                	slli	a5,a5,0x1
1c0096b2:	01f8d693          	srli	a3,a7,0x1f
1c0096b6:	8fd5                	or	a5,a5,a3
1c0096b8:	01c7de13          	srli	t3,a5,0x1c
1c0096bc:	03000693          	li	a3,48
1c0096c0:	00a05c63          	blez	a0,1c0096d8 <pos_libc_prf+0x846>
1c0096c4:	00189713          	slli	a4,a7,0x1
1c0096c8:	100008b7          	lui	a7,0x10000
1c0096cc:	18fd                	addi	a7,a7,-1
1c0096ce:	030e0693          	addi	a3,t3,48
1c0096d2:	157d                	addi	a0,a0,-1
1c0096d4:	0117f633          	and	a2,a5,a7
1c0096d8:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c0096dc:	fab99be3          	bne	s3,a1,1c009692 <pos_libc_prf+0x800>
1c0096e0:	014809b3          	add	s3,a6,s4
1c0096e4:	f60f8fe3          	beqz	t6,1c009662 <pos_libc_prf+0x7d0>
1c0096e8:	03000613          	li	a2,48
1c0096ec:	a011                	j	1c0096f0 <pos_libc_prf+0x85e>
1c0096ee:	89ba                	mv	s3,a4
1c0096f0:	fff9c683          	lbu	a3,-1(s3)
1c0096f4:	fff98713          	addi	a4,s3,-1
1c0096f8:	fec68be3          	beq	a3,a2,1c0096ee <pos_libc_prf+0x85c>
1c0096fc:	02e00613          	li	a2,46
1c009700:	f2c694e3          	bne	a3,a2,1c009628 <pos_libc_prf+0x796>
1c009704:	89ba                	mv	s3,a4
1c009706:	b70d                	j	1c009628 <pos_libc_prf+0x796>
1c009708:	06300713          	li	a4,99
1c00970c:	16ed8863          	beq	s11,a4,1c00987c <pos_libc_prf+0x9ea>
1c009710:	0db74363          	blt	a4,s11,1c0097d6 <pos_libc_prf+0x944>
1c009714:	05800713          	li	a4,88
1c009718:	28ed9763          	bne	s11,a4,1c0099a6 <pos_libc_prf+0xb14>
1c00971c:	48b2                	lw	a7,12(sp)
1c00971e:	004c0813          	addi	a6,s8,4
1c009722:	000c2583          	lw	a1,0(s8)
1c009726:	3c088a63          	beqz	a7,1c009afa <pos_libc_prf+0xc68>
1c00972a:	7761                	lui	a4,0xffff8
1c00972c:	83074713          	xori	a4,a4,-2000
1c009730:	02e11223          	sh	a4,36(sp)
1c009734:	4889                	li	a7,2
1c009736:	02610693          	addi	a3,sp,38
1c00973a:	8736                	mv	a4,a3
1c00973c:	4e25                	li	t3,9
1c00973e:	00f5f613          	andi	a2,a1,15
1c009742:	0ff67793          	andi	a5,a2,255
1c009746:	03078513          	addi	a0,a5,48
1c00974a:	8191                	srli	a1,a1,0x4
1c00974c:	05778793          	addi	a5,a5,87
1c009750:	0705                	addi	a4,a4,1
1c009752:	06ce6a63          	bltu	t3,a2,1c0097c6 <pos_libc_prf+0x934>
1c009756:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00975a:	f1f5                	bnez	a1,1c00973e <pos_libc_prf+0x8ac>
1c00975c:	40d709b3          	sub	s3,a4,a3
1c009760:	0149db63          	ble	s4,s3,1c009776 <pos_libc_prf+0x8e4>
1c009764:	03000613          	li	a2,48
1c009768:	0705                	addi	a4,a4,1
1c00976a:	fec70fa3          	sb	a2,-1(a4)
1c00976e:	40d709b3          	sub	s3,a4,a3
1c009772:	ff49cbe3          	blt	s3,s4,1c009768 <pos_libc_prf+0x8d6>
1c009776:	00070023          	sb	zero,0(a4)
1c00977a:	177d                	addi	a4,a4,-1
1c00977c:	00e6fe63          	bleu	a4,a3,1c009798 <pos_libc_prf+0x906>
1c009780:	0006c603          	lbu	a2,0(a3)
1c009784:	00074783          	lbu	a5,0(a4)
1c009788:	00c70023          	sb	a2,0(a4)
1c00978c:	00f68023          	sb	a5,0(a3)
1c009790:	177d                	addi	a4,a4,-1
1c009792:	0685                	addi	a3,a3,1
1c009794:	fee6e6e3          	bltu	a3,a4,1c009780 <pos_libc_prf+0x8ee>
1c009798:	05800713          	li	a4,88
1c00979c:	36ed8263          	beq	s11,a4,1c009b00 <pos_libc_prf+0xc6e>
1c0097a0:	46b2                	lw	a3,12(sp)
1c0097a2:	99c6                	add	s3,s3,a7
1c0097a4:	c299                	beqz	a3,1c0097aa <pos_libc_prf+0x918>
1c0097a6:	4709                	li	a4,2
1c0097a8:	c63a                	sw	a4,12(sp)
1c0097aa:	57fd                	li	a5,-1
1c0097ac:	3afa0263          	beq	s4,a5,1c009b50 <pos_libc_prf+0xcbe>
1c0097b0:	0c800793          	li	a5,200
1c0097b4:	9937c5e3          	blt	a5,s3,1c00913e <pos_libc_prf+0x2ac>
1c0097b8:	02000793          	li	a5,32
1c0097bc:	c83e                	sw	a5,16(sp)
1c0097be:	8c42                	mv	s8,a6
1c0097c0:	8729c8e3          	blt	s3,s2,1c009030 <pos_libc_prf+0x19e>
1c0097c4:	ba91                	j	1c009118 <pos_libc_prf+0x286>
1c0097c6:	fef70fa3          	sb	a5,-1(a4)
1c0097ca:	f9b5                	bnez	a1,1c00973e <pos_libc_prf+0x8ac>
1c0097cc:	bf41                	j	1c00975c <pos_libc_prf+0x8ca>
1c0097ce:	06900713          	li	a4,105
1c0097d2:	1ced9a63          	bne	s11,a4,1c0099a6 <pos_libc_prf+0xb14>
1c0097d6:	000c2583          	lw	a1,0(s8)
1c0097da:	0c11                	addi	s8,s8,4
1c0097dc:	3805c863          	bltz	a1,1c009b6c <pos_libc_prf+0xcda>
1c0097e0:	48d2                	lw	a7,20(sp)
1c0097e2:	872e                	mv	a4,a1
1c0097e4:	36089d63          	bnez	a7,1c009b5e <pos_libc_prf+0xccc>
1c0097e8:	4662                	lw	a2,24(sp)
1c0097ea:	87e6                	mv	a5,s9
1c0097ec:	c619                	beqz	a2,1c0097fa <pos_libc_prf+0x968>
1c0097ee:	02000793          	li	a5,32
1c0097f2:	02f10223          	sb	a5,36(sp)
1c0097f6:	02510793          	addi	a5,sp,37
1c0097fa:	89be                	mv	s3,a5
1c0097fc:	4629                	li	a2,10
1c0097fe:	02c776b3          	remu	a3,a4,a2
1c009802:	02c75733          	divu	a4,a4,a2
1c009806:	0985                	addi	s3,s3,1
1c009808:	03068693          	addi	a3,a3,48
1c00980c:	fed98fa3          	sb	a3,-1(s3)
1c009810:	f77d                	bnez	a4,1c0097fe <pos_libc_prf+0x96c>
1c009812:	40f98733          	sub	a4,s3,a5
1c009816:	01475b63          	ble	s4,a4,1c00982c <pos_libc_prf+0x99a>
1c00981a:	03000693          	li	a3,48
1c00981e:	0985                	addi	s3,s3,1
1c009820:	fed98fa3          	sb	a3,-1(s3)
1c009824:	40f98733          	sub	a4,s3,a5
1c009828:	ff474be3          	blt	a4,s4,1c00981e <pos_libc_prf+0x98c>
1c00982c:	00098023          	sb	zero,0(s3)
1c009830:	fff98713          	addi	a4,s3,-1
1c009834:	00e7fe63          	bleu	a4,a5,1c009850 <pos_libc_prf+0x9be>
1c009838:	0007c603          	lbu	a2,0(a5)
1c00983c:	00074683          	lbu	a3,0(a4)
1c009840:	00c70023          	sb	a2,0(a4)
1c009844:	00d78023          	sb	a3,0(a5)
1c009848:	177d                	addi	a4,a4,-1
1c00984a:	0785                	addi	a5,a5,1
1c00984c:	fee7e6e3          	bltu	a5,a4,1c009838 <pos_libc_prf+0x9a6>
1c009850:	46d2                	lw	a3,20(sp)
1c009852:	4762                	lw	a4,24(sp)
1c009854:	419989b3          	sub	s3,s3,s9
1c009858:	8ed9                	or	a3,a3,a4
1c00985a:	c636                	sw	a3,12(sp)
1c00985c:	e299                	bnez	a3,1c009862 <pos_libc_prf+0x9d0>
1c00985e:	81fd                	srli	a1,a1,0x1f
1c009860:	c62e                	sw	a1,12(sp)
1c009862:	57fd                	li	a5,-1
1c009864:	e2fa00e3          	beq	s4,a5,1c009684 <pos_libc_prf+0x7f2>
1c009868:	0c800793          	li	a5,200
1c00986c:	8d37c9e3          	blt	a5,s3,1c00913e <pos_libc_prf+0x2ac>
1c009870:	02000793          	li	a5,32
1c009874:	c83e                	sw	a5,16(sp)
1c009876:	fb29cd63          	blt	s3,s2,1c009030 <pos_libc_prf+0x19e>
1c00987a:	b879                	j	1c009118 <pos_libc_prf+0x286>
1c00987c:	000c2783          	lw	a5,0(s8)
1c009880:	020102a3          	sb	zero,37(sp)
1c009884:	02f10223          	sb	a5,36(sp)
1c009888:	0c11                	addi	s8,s8,4
1c00988a:	4985                	li	s3,1
1c00988c:	f9eff06f          	j	1c00902a <pos_libc_prf+0x198>
1c009890:	000c2703          	lw	a4,0(s8)
1c009894:	87e6                	mv	a5,s9
1c009896:	0c11                	addi	s8,s8,4
1c009898:	4629                	li	a2,10
1c00989a:	02c776b3          	remu	a3,a4,a2
1c00989e:	02c75733          	divu	a4,a4,a2
1c0098a2:	0785                	addi	a5,a5,1
1c0098a4:	03068693          	addi	a3,a3,48
1c0098a8:	fed78fa3          	sb	a3,-1(a5)
1c0098ac:	f77d                	bnez	a4,1c00989a <pos_libc_prf+0xa08>
1c0098ae:	419789b3          	sub	s3,a5,s9
1c0098b2:	0149db63          	ble	s4,s3,1c0098c8 <pos_libc_prf+0xa36>
1c0098b6:	03000713          	li	a4,48
1c0098ba:	0785                	addi	a5,a5,1
1c0098bc:	fee78fa3          	sb	a4,-1(a5)
1c0098c0:	419789b3          	sub	s3,a5,s9
1c0098c4:	ff49cbe3          	blt	s3,s4,1c0098ba <pos_libc_prf+0xa28>
1c0098c8:	00078023          	sb	zero,0(a5)
1c0098cc:	17fd                	addi	a5,a5,-1
1c0098ce:	00fcff63          	bleu	a5,s9,1c0098ec <pos_libc_prf+0xa5a>
1c0098d2:	8766                	mv	a4,s9
1c0098d4:	00074603          	lbu	a2,0(a4)
1c0098d8:	0007c683          	lbu	a3,0(a5)
1c0098dc:	00c78023          	sb	a2,0(a5)
1c0098e0:	00d70023          	sb	a3,0(a4)
1c0098e4:	17fd                	addi	a5,a5,-1
1c0098e6:	0705                	addi	a4,a4,1
1c0098e8:	fef766e3          	bltu	a4,a5,1c0098d4 <pos_libc_prf+0xa42>
1c0098ec:	57fd                	li	a5,-1
1c0098ee:	0cfa0a63          	beq	s4,a5,1c0099c2 <pos_libc_prf+0xb30>
1c0098f2:	0c800793          	li	a5,200
1c0098f6:	8537c4e3          	blt	a5,s3,1c00913e <pos_libc_prf+0x2ac>
1c0098fa:	02000813          	li	a6,32
1c0098fe:	c602                	sw	zero,12(sp)
1c009900:	c842                	sw	a6,16(sp)
1c009902:	ba45                	j	1c0092b2 <pos_libc_prf+0x420>
1c009904:	77e1                	lui	a5,0xffff8
1c009906:	8307c793          	xori	a5,a5,-2000
1c00990a:	02610713          	addi	a4,sp,38
1c00990e:	000c2603          	lw	a2,0(s8)
1c009912:	02f11223          	sh	a5,36(sp)
1c009916:	0c11                	addi	s8,s8,4
1c009918:	87ba                	mv	a5,a4
1c00991a:	4825                	li	a6,9
1c00991c:	00f67593          	andi	a1,a2,15
1c009920:	0ff5f693          	andi	a3,a1,255
1c009924:	03068513          	addi	a0,a3,48
1c009928:	8211                	srli	a2,a2,0x4
1c00992a:	05768693          	addi	a3,a3,87
1c00992e:	0785                	addi	a5,a5,1
1c009930:	06b86163          	bltu	a6,a1,1c009992 <pos_libc_prf+0xb00>
1c009934:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c009938:	f275                	bnez	a2,1c00991c <pos_libc_prf+0xa8a>
1c00993a:	40e789b3          	sub	s3,a5,a4
1c00993e:	469d                	li	a3,7
1c009940:	0136cb63          	blt	a3,s3,1c009956 <pos_libc_prf+0xac4>
1c009944:	03000613          	li	a2,48
1c009948:	0785                	addi	a5,a5,1
1c00994a:	fec78fa3          	sb	a2,-1(a5)
1c00994e:	40e789b3          	sub	s3,a5,a4
1c009952:	ff36dbe3          	ble	s3,a3,1c009948 <pos_libc_prf+0xab6>
1c009956:	00078023          	sb	zero,0(a5)
1c00995a:	17fd                	addi	a5,a5,-1
1c00995c:	00f77e63          	bleu	a5,a4,1c009978 <pos_libc_prf+0xae6>
1c009960:	00074603          	lbu	a2,0(a4)
1c009964:	0007c683          	lbu	a3,0(a5)
1c009968:	00c78023          	sb	a2,0(a5)
1c00996c:	00d70023          	sb	a3,0(a4)
1c009970:	17fd                	addi	a5,a5,-1
1c009972:	0705                	addi	a4,a4,1
1c009974:	fef766e3          	bltu	a4,a5,1c009960 <pos_libc_prf+0xace>
1c009978:	57fd                	li	a5,-1
1c00997a:	0989                	addi	s3,s3,2
1c00997c:	04fa0363          	beq	s4,a5,1c0099c2 <pos_libc_prf+0xb30>
1c009980:	0c800793          	li	a5,200
1c009984:	fb37cd63          	blt	a5,s3,1c00913e <pos_libc_prf+0x2ac>
1c009988:	02000893          	li	a7,32
1c00998c:	c602                	sw	zero,12(sp)
1c00998e:	c846                	sw	a7,16(sp)
1c009990:	b20d                	j	1c0092b2 <pos_libc_prf+0x420>
1c009992:	fed78fa3          	sb	a3,-1(a5)
1c009996:	f259                	bnez	a2,1c00991c <pos_libc_prf+0xa8a>
1c009998:	b74d                	j	1c00993a <pos_libc_prf+0xaa8>
1c00999a:	000c2783          	lw	a5,0(s8)
1c00999e:	0c11                	addi	s8,s8,4
1c0099a0:	c380                	sw	s0,0(a5)
1c0099a2:	d36ff06f          	j	1c008ed8 <pos_libc_prf+0x46>
1c0099a6:	0c800713          	li	a4,200
1c0099aa:	d3b75763          	ble	s11,a4,1c008ed8 <pos_libc_prf+0x46>
1c0099ae:	547d                	li	s0,-1
1c0099b0:	d4cff06f          	j	1c008efc <pos_libc_prf+0x6a>
1c0099b4:	ffc50fa3          	sb	t3,-1(a0)
1c0099b8:	c2a991e3          	bne	s3,a0,1c0095da <pos_libc_prf+0x748>
1c0099bc:	c60f86e3          	beqz	t6,1c009628 <pos_libc_prf+0x796>
1c0099c0:	b325                	j	1c0096e8 <pos_libc_prf+0x856>
1c0099c2:	0c800793          	li	a5,200
1c0099c6:	f737cc63          	blt	a5,s3,1c00913e <pos_libc_prf+0x2ac>
1c0099ca:	c602                	sw	zero,12(sp)
1c0099cc:	b0dd                	j	1c0092b2 <pos_libc_prf+0x420>
1c0099ce:	0c800793          	li	a5,200
1c0099d2:	f737c663          	blt	a5,s3,1c00913e <pos_libc_prf+0x2ac>
1c0099d6:	4705                	li	a4,1
1c0099d8:	c63a                	sw	a4,12(sp)
1c0099da:	b8e1                	j	1c0092b2 <pos_libc_prf+0x420>
1c0099dc:	41390a33          	sub	s4,s2,s3
1c0099e0:	00198613          	addi	a2,s3,1
1c0099e4:	85e6                	mv	a1,s9
1c0099e6:	014c8533          	add	a0,s9,s4
1c0099ea:	a72ff0ef          	jal	ra,1c008c5c <memmove>
1c0099ee:	46c2                	lw	a3,16(sp)
1c0099f0:	02000793          	li	a5,32
1c0099f4:	30f68163          	beq	a3,a5,1c009cf6 <pos_libc_prf+0xe64>
1c0099f8:	4732                	lw	a4,12(sp)
1c0099fa:	89ca                	mv	s3,s2
1c0099fc:	9a3a                	add	s4,s4,a4
1c0099fe:	f1475d63          	ble	s4,a4,1c009118 <pos_libc_prf+0x286>
1c009a02:	4832                	lw	a6,12(sp)
1c009a04:	4715                	li	a4,5
1c009a06:	010c87b3          	add	a5,s9,a6
1c009a0a:	40f007b3          	neg	a5,a5
1c009a0e:	8b8d                	andi	a5,a5,3
1c009a10:	00378693          	addi	a3,a5,3
1c009a14:	410a05b3          	sub	a1,s4,a6
1c009a18:	00e6f363          	bleu	a4,a3,1c009a1e <pos_libc_prf+0xb8c>
1c009a1c:	4695                	li	a3,5
1c009a1e:	48b2                	lw	a7,12(sp)
1c009a20:	fffa0713          	addi	a4,s4,-1
1c009a24:	41170733          	sub	a4,a4,a7
1c009a28:	06d76b63          	bltu	a4,a3,1c009a9e <pos_libc_prf+0xc0c>
1c009a2c:	86c6                	mv	a3,a7
1c009a2e:	cb9d                	beqz	a5,1c009a64 <pos_libc_prf+0xbd2>
1c009a30:	46c2                	lw	a3,16(sp)
1c009a32:	1988                	addi	a0,sp,240
1c009a34:	01150733          	add	a4,a0,a7
1c009a38:	f2d70a23          	sb	a3,-204(a4)
1c009a3c:	4705                	li	a4,1
1c009a3e:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c009a42:	02e78163          	beq	a5,a4,1c009a64 <pos_libc_prf+0xbd2>
1c009a46:	4742                	lw	a4,16(sp)
1c009a48:	96aa                	add	a3,a3,a0
1c009a4a:	f2e68a23          	sb	a4,-204(a3)
1c009a4e:	470d                	li	a4,3
1c009a50:	00288693          	addi	a3,a7,2
1c009a54:	00e79863          	bne	a5,a4,1c009a64 <pos_libc_prf+0xbd2>
1c009a58:	4842                	lw	a6,16(sp)
1c009a5a:	96aa                	add	a3,a3,a0
1c009a5c:	f3068a23          	sb	a6,-204(a3)
1c009a60:	00388693          	addi	a3,a7,3
1c009a64:	48c2                	lw	a7,16(sp)
1c009a66:	4832                	lw	a6,12(sp)
1c009a68:	00889713          	slli	a4,a7,0x8
1c009a6c:	01089513          	slli	a0,a7,0x10
1c009a70:	00e8e733          	or	a4,a7,a4
1c009a74:	8d9d                	sub	a1,a1,a5
1c009a76:	01889613          	slli	a2,a7,0x18
1c009a7a:	8f49                	or	a4,a4,a0
1c009a7c:	97c2                	add	a5,a5,a6
1c009a7e:	8f51                	or	a4,a4,a2
1c009a80:	0025d513          	srli	a0,a1,0x2
1c009a84:	97e6                	add	a5,a5,s9
1c009a86:	4601                	li	a2,0
1c009a88:	c398                	sw	a4,0(a5)
1c009a8a:	0605                	addi	a2,a2,1
1c009a8c:	0791                	addi	a5,a5,4
1c009a8e:	fea66de3          	bltu	a2,a0,1c009a88 <pos_libc_prf+0xbf6>
1c009a92:	ffc5f793          	andi	a5,a1,-4
1c009a96:	96be                	add	a3,a3,a5
1c009a98:	c636                	sw	a3,12(sp)
1c009a9a:	e6b78e63          	beq	a5,a1,1c009116 <pos_libc_prf+0x284>
1c009a9e:	46b2                	lw	a3,12(sp)
1c009aa0:	0f010893          	addi	a7,sp,240
1c009aa4:	4742                	lw	a4,16(sp)
1c009aa6:	00d887b3          	add	a5,a7,a3
1c009aaa:	f2e78a23          	sb	a4,-204(a5)
1c009aae:	00168793          	addi	a5,a3,1
1c009ab2:	e747d263          	ble	s4,a5,1c009116 <pos_libc_prf+0x284>
1c009ab6:	97c6                	add	a5,a5,a7
1c009ab8:	f2e78a23          	sb	a4,-204(a5)
1c009abc:	00268793          	addi	a5,a3,2
1c009ac0:	e547db63          	ble	s4,a5,1c009116 <pos_libc_prf+0x284>
1c009ac4:	97c6                	add	a5,a5,a7
1c009ac6:	f2e78a23          	sb	a4,-204(a5)
1c009aca:	00368793          	addi	a5,a3,3
1c009ace:	e547d463          	ble	s4,a5,1c009116 <pos_libc_prf+0x284>
1c009ad2:	97c6                	add	a5,a5,a7
1c009ad4:	f2e78a23          	sb	a4,-204(a5)
1c009ad8:	00468793          	addi	a5,a3,4
1c009adc:	e347dd63          	ble	s4,a5,1c009116 <pos_libc_prf+0x284>
1c009ae0:	97c6                	add	a5,a5,a7
1c009ae2:	f2e78a23          	sb	a4,-204(a5)
1c009ae6:	00568a93          	addi	s5,a3,5
1c009aea:	e34ad663          	ble	s4,s5,1c009116 <pos_libc_prf+0x284>
1c009aee:	9ac6                	add	s5,s5,a7
1c009af0:	f2ea8a23          	sb	a4,-204(s5)
1c009af4:	89ca                	mv	s3,s2
1c009af6:	e22ff06f          	j	1c009118 <pos_libc_prf+0x286>
1c009afa:	4881                	li	a7,0
1c009afc:	1054                	addi	a3,sp,36
1c009afe:	b935                	j	1c00973a <pos_libc_prf+0x8a8>
1c009b00:	02414783          	lbu	a5,36(sp)
1c009b04:	1058                	addi	a4,sp,36
1c009b06:	46e5                	li	a3,25
1c009b08:	c8078ce3          	beqz	a5,1c0097a0 <pos_libc_prf+0x90e>
1c009b0c:	fe078613          	addi	a2,a5,-32
1c009b10:	f9f78793          	addi	a5,a5,-97
1c009b14:	0ff7f793          	andi	a5,a5,255
1c009b18:	00f6e963          	bltu	a3,a5,1c009b2a <pos_libc_prf+0xc98>
1c009b1c:	00c70023          	sb	a2,0(a4)
1c009b20:	0705                	addi	a4,a4,1
1c009b22:	00074783          	lbu	a5,0(a4)
1c009b26:	f3fd                	bnez	a5,1c009b0c <pos_libc_prf+0xc7a>
1c009b28:	b9a5                	j	1c0097a0 <pos_libc_prf+0x90e>
1c009b2a:	0705                	addi	a4,a4,1
1c009b2c:	00074783          	lbu	a5,0(a4)
1c009b30:	fff1                	bnez	a5,1c009b0c <pos_libc_prf+0xc7a>
1c009b32:	b1bd                	j	1c0097a0 <pos_libc_prf+0x90e>
1c009b34:	47d2                	lw	a5,20(sp)
1c009b36:	20078263          	beqz	a5,1c009d3a <pos_libc_prf+0xea8>
1c009b3a:	02b00713          	li	a4,43
1c009b3e:	02e10223          	sb	a4,36(sp)
1c009b42:	02510e93          	addi	t4,sp,37
1c009b46:	4301                	li	t1,0
1c009b48:	4501                	li	a0,0
1c009b4a:	4681                	li	a3,0
1c009b4c:	4581                	li	a1,0
1c009b4e:	b8d5                	j	1c009442 <pos_libc_prf+0x5b0>
1c009b50:	0c800793          	li	a5,200
1c009b54:	df37c563          	blt	a5,s3,1c00913e <pos_libc_prf+0x2ac>
1c009b58:	8c42                	mv	s8,a6
1c009b5a:	f58ff06f          	j	1c0092b2 <pos_libc_prf+0x420>
1c009b5e:	02b00793          	li	a5,43
1c009b62:	02f10223          	sb	a5,36(sp)
1c009b66:	02510793          	addi	a5,sp,37
1c009b6a:	b941                	j	1c0097fa <pos_libc_prf+0x968>
1c009b6c:	02d00793          	li	a5,45
1c009b70:	02f10223          	sb	a5,36(sp)
1c009b74:	800007b7          	lui	a5,0x80000
1c009b78:	22f58363          	beq	a1,a5,1c009d9e <pos_libc_prf+0xf0c>
1c009b7c:	40b00733          	neg	a4,a1
1c009b80:	02510793          	addi	a5,sp,37
1c009b84:	b99d                	j	1c0097fa <pos_libc_prf+0x968>
1c009b86:	47b2                	lw	a5,12(sp)
1c009b88:	4f81                	li	t6,0
1c009b8a:	e399                	bnez	a5,1c009b90 <pos_libc_prf+0xcfe>
1c009b8c:	01403fb3          	snez	t6,s4
1c009b90:	56f5                	li	a3,-3
1c009b92:	001a0e13          	addi	t3,s4,1
1c009b96:	00d34463          	blt	t1,a3,1c009b9e <pos_libc_prf+0xd0c>
1c009b9a:	166e5d63          	ble	t1,t3,1c009d14 <pos_libc_prf+0xe82>
1c009b9e:	46c1                	li	a3,16
1c009ba0:	01c6d363          	ble	t3,a3,1c009ba6 <pos_libc_prf+0xd14>
1c009ba4:	4e41                	li	t3,16
1c009ba6:	06700693          	li	a3,103
1c009baa:	1e7d                	addi	t3,t3,-1
1c009bac:	1add8963          	beq	s11,a3,1c009d5e <pos_libc_prf+0xecc>
1c009bb0:	04500d93          	li	s11,69
1c009bb4:	b0c5                	j	1c009494 <pos_libc_prf+0x602>
1c009bb6:	020102a3          	sb	zero,37(sp)
1c009bba:	57fd                	li	a5,-1
1c009bbc:	89ba                	mv	s3,a4
1c009bbe:	8c2a                	mv	s8,a0
1c009bc0:	c6fa0563          	beq	s4,a5,1c00902a <pos_libc_prf+0x198>
1c009bc4:	02000813          	li	a6,32
1c009bc8:	c842                	sw	a6,16(sp)
1c009bca:	c60ff06f          	j	1c00902a <pos_libc_prf+0x198>
1c009bce:	89b6                	mv	s3,a3
1c009bd0:	bdeff06f          	j	1c008fae <pos_libc_prf+0x11c>
1c009bd4:	8766                	mv	a4,s9
1c009bd6:	1c084c63          	bltz	a6,1c009dae <pos_libc_prf+0xf1c>
1c009bda:	8e55                	or	a2,a2,a3
1c009bdc:	fbfd8793          	addi	a5,s11,-65
1c009be0:	00370993          	addi	s3,a4,3
1c009be4:	46e5                	li	a3,25
1c009be6:	10061a63          	bnez	a2,1c009cfa <pos_libc_prf+0xe68>
1c009bea:	16f6ee63          	bltu	a3,a5,1c009d66 <pos_libc_prf+0xed4>
1c009bee:	6795                	lui	a5,0x5
1c009bf0:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c009bf4:	00f71023          	sh	a5,0(a4)
1c009bf8:	04600793          	li	a5,70
1c009bfc:	00f70123          	sb	a5,2(a4)
1c009c00:	000701a3          	sb	zero,3(a4)
1c009c04:	419989b3          	sub	s3,s3,s9
1c009c08:	b48d                	j	1c00966a <pos_libc_prf+0x7d8>
1c009c0a:	85e6                	mv	a1,s9
1c009c0c:	8766                	mv	a4,s9
1c009c0e:	e38ff06f          	j	1c009246 <pos_libc_prf+0x3b4>
1c009c12:	a00a09e3          	beqz	s4,1c009624 <pos_libc_prf+0x792>
1c009c16:	02e00693          	li	a3,46
1c009c1a:	002e8513          	addi	a0,t4,2
1c009c1e:	00de80a3          	sb	a3,1(t4)
1c009c22:	b27d                	j	1c0095d0 <pos_libc_prf+0x73e>
1c009c24:	14605b63          	blez	t1,1c009d7a <pos_libc_prf+0xee8>
1c009c28:	006e89b3          	add	s3,t4,t1
1c009c2c:	4541                	li	a0,16
1c009c2e:	03000893          	li	a7,48
1c009c32:	00271793          	slli	a5,a4,0x2
1c009c36:	01e75313          	srli	t1,a4,0x1e
1c009c3a:	00261693          	slli	a3,a2,0x2
1c009c3e:	00e78833          	add	a6,a5,a4
1c009c42:	00d366b3          	or	a3,t1,a3
1c009c46:	96b2                	add	a3,a3,a2
1c009c48:	00f837b3          	sltu	a5,a6,a5
1c009c4c:	97b6                	add	a5,a5,a3
1c009c4e:	0786                	slli	a5,a5,0x1
1c009c50:	01f85693          	srli	a3,a6,0x1f
1c009c54:	8fd5                	or	a5,a5,a3
1c009c56:	01c7d693          	srli	a3,a5,0x1c
1c009c5a:	03068693          	addi	a3,a3,48
1c009c5e:	02a05063          	blez	a0,1c009c7e <pos_libc_prf+0xdec>
1c009c62:	00181713          	slli	a4,a6,0x1
1c009c66:	10000837          	lui	a6,0x10000
1c009c6a:	187d                	addi	a6,a6,-1
1c009c6c:	fed58fa3          	sb	a3,-1(a1)
1c009c70:	157d                	addi	a0,a0,-1
1c009c72:	0107f633          	and	a2,a5,a6
1c009c76:	00b98863          	beq	s3,a1,1c009c86 <pos_libc_prf+0xdf4>
1c009c7a:	0585                	addi	a1,a1,1
1c009c7c:	bf5d                	j	1c009c32 <pos_libc_prf+0xda0>
1c009c7e:	ff158fa3          	sb	a7,-1(a1)
1c009c82:	feb99ce3          	bne	s3,a1,1c009c7a <pos_libc_prf+0xde8>
1c009c86:	4301                	li	t1,0
1c009c88:	48b2                	lw	a7,12(sp)
1c009c8a:	00089463          	bnez	a7,1c009c92 <pos_libc_prf+0xe00>
1c009c8e:	a40a0be3          	beqz	s4,1c0096e4 <pos_libc_prf+0x852>
1c009c92:	00198813          	addi	a6,s3,1
1c009c96:	001a0693          	addi	a3,s4,1
1c009c9a:	02e00593          	li	a1,46
1c009c9e:	00b98023          	sb	a1,0(s3)
1c009ca2:	99b6                	add	s3,s3,a3
1c009ca4:	85c2                	mv	a1,a6
1c009ca6:	03000693          	li	a3,48
1c009caa:	a2b98be3          	beq	s3,a1,1c0096e0 <pos_libc_prf+0x84e>
1c009cae:	0585                	addi	a1,a1,1
1c009cb0:	9e0302e3          	beqz	t1,1c009694 <pos_libc_prf+0x802>
1c009cb4:	fed58fa3          	sb	a3,-1(a1)
1c009cb8:	0305                	addi	t1,t1,1
1c009cba:	bfc5                	j	1c009caa <pos_libc_prf+0xe18>
1c009cbc:	4a19                	li	s4,6
1c009cbe:	fadd9b63          	bne	s11,a3,1c009474 <pos_libc_prf+0x5e2>
1c009cc2:	46b2                	lw	a3,12(sp)
1c009cc4:	57f5                	li	a5,-3
1c009cc6:	0016cf93          	xori	t6,a3,1
1c009cca:	08f35663          	ble	a5,t1,1c009d56 <pos_libc_prf+0xec4>
1c009cce:	06500d93          	li	s11,101
1c009cd2:	4e19                	li	t3,6
1c009cd4:	fc0ff06f          	j	1c009494 <pos_libc_prf+0x602>
1c009cd8:	0c800793          	li	a5,200
1c009cdc:	c737c163          	blt	a5,s3,1c00913e <pos_libc_prf+0x2ac>
1c009ce0:	8c2a                	mv	s8,a0
1c009ce2:	c602                	sw	zero,12(sp)
1c009ce4:	dceff06f          	j	1c0092b2 <pos_libc_prf+0x420>
1c009ce8:	02d00793          	li	a5,45
1c009cec:	40600333          	neg	t1,t1
1c009cf0:	00f980a3          	sb	a5,1(s3)
1c009cf4:	ba89                	j	1c009646 <pos_libc_prf+0x7b4>
1c009cf6:	c602                	sw	zero,12(sp)
1c009cf8:	b329                	j	1c009a02 <pos_libc_prf+0xb70>
1c009cfa:	0cf6ed63          	bltu	a3,a5,1c009dd4 <pos_libc_prf+0xf42>
1c009cfe:	6791                	lui	a5,0x4
1c009d00:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c009d04:	00f71023          	sh	a5,0(a4)
1c009d08:	04e00793          	li	a5,78
1c009d0c:	00f70123          	sb	a5,2(a4)
1c009d10:	bdc5                	j	1c009c00 <pos_libc_prf+0xd6e>
1c009d12:	4f81                	li	t6,0
1c009d14:	014307b3          	add	a5,t1,s4
1c009d18:	0807c863          	bltz	a5,1c009da8 <pos_libc_prf+0xf16>
1c009d1c:	46c1                	li	a3,16
1c009d1e:	8e3e                	mv	t3,a5
1c009d20:	00f6d363          	ble	a5,a3,1c009d26 <pos_libc_prf+0xe94>
1c009d24:	4e41                	li	t3,16
1c009d26:	1e7d                	addi	t3,t3,-1
1c009d28:	06600d93          	li	s11,102
1c009d2c:	f6079463          	bnez	a5,1c009494 <pos_libc_prf+0x602>
1c009d30:	4681                	li	a3,0
1c009d32:	08000637          	lui	a2,0x8000
1c009d36:	fc8ff06f          	j	1c0094fe <pos_libc_prf+0x66c>
1c009d3a:	47e2                	lw	a5,24(sp)
1c009d3c:	c7d5                	beqz	a5,1c009de8 <pos_libc_prf+0xf56>
1c009d3e:	02000713          	li	a4,32
1c009d42:	02e10223          	sb	a4,36(sp)
1c009d46:	02510e93          	addi	t4,sp,37
1c009d4a:	4301                	li	t1,0
1c009d4c:	4501                	li	a0,0
1c009d4e:	4681                	li	a3,0
1c009d50:	4581                	li	a1,0
1c009d52:	ef0ff06f          	j	1c009442 <pos_libc_prf+0x5b0>
1c009d56:	479d                	li	a5,7
1c009d58:	fa67dee3          	ble	t1,a5,1c009d14 <pos_libc_prf+0xe82>
1c009d5c:	4e19                	li	t3,6
1c009d5e:	06500d93          	li	s11,101
1c009d62:	f32ff06f          	j	1c009494 <pos_libc_prf+0x602>
1c009d66:	679d                	lui	a5,0x7
1c009d68:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c009d6c:	00f71023          	sh	a5,0(a4)
1c009d70:	06600793          	li	a5,102
1c009d74:	00f70123          	sb	a5,2(a4)
1c009d78:	b561                	j	1c009c00 <pos_libc_prf+0xd6e>
1c009d7a:	03000693          	li	a3,48
1c009d7e:	00de8023          	sb	a3,0(t4)
1c009d82:	4541                	li	a0,16
1c009d84:	b711                	j	1c009c88 <pos_libc_prf+0xdf6>
1c009d86:	48e2                	lw	a7,24(sp)
1c009d88:	8ee6                	mv	t4,s9
1c009d8a:	dc088e63          	beqz	a7,1c009366 <pos_libc_prf+0x4d4>
1c009d8e:	02000713          	li	a4,32
1c009d92:	02e10223          	sb	a4,36(sp)
1c009d96:	02510e93          	addi	t4,sp,37
1c009d9a:	dccff06f          	j	1c009366 <pos_libc_prf+0x4d4>
1c009d9e:	80000737          	lui	a4,0x80000
1c009da2:	02510793          	addi	a5,sp,37
1c009da6:	bc91                	j	1c0097fa <pos_libc_prf+0x968>
1c009da8:	06600d93          	li	s11,102
1c009dac:	b751                	j	1c009d30 <pos_libc_prf+0xe9e>
1c009dae:	02d00713          	li	a4,45
1c009db2:	02e10223          	sb	a4,36(sp)
1c009db6:	02510713          	addi	a4,sp,37
1c009dba:	b505                	j	1c009bda <pos_libc_prf+0xd48>
1c009dbc:	a40a5d63          	bgez	s4,1c009016 <pos_libc_prf+0x184>
1c009dc0:	a62ff06f          	j	1c009022 <pos_libc_prf+0x190>
1c009dc4:	02d00713          	li	a4,45
1c009dc8:	02e10223          	sb	a4,36(sp)
1c009dcc:	02510e93          	addi	t4,sp,37
1c009dd0:	d96ff06f          	j	1c009366 <pos_libc_prf+0x4d4>
1c009dd4:	6799                	lui	a5,0x6
1c009dd6:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c009dda:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c009dde:	06e00793          	li	a5,110
1c009de2:	00f70123          	sb	a5,2(a4)
1c009de6:	bd29                	j	1c009c00 <pos_libc_prf+0xd6e>
1c009de8:	8ee6                	mv	t4,s9
1c009dea:	b785                	j	1c009d4a <pos_libc_prf+0xeb8>
1c009dec:	89aa                	mv	s3,a0
1c009dee:	820f8de3          	beqz	t6,1c009628 <pos_libc_prf+0x796>
1c009df2:	b8dd                	j	1c0096e8 <pos_libc_prf+0x856>

1c009df4 <pos_init_start>:
1c009df4:	1141                	addi	sp,sp,-16
1c009df6:	c422                	sw	s0,8(sp)
1c009df8:	1c000437          	lui	s0,0x1c000
1c009dfc:	c606                	sw	ra,12(sp)
1c009dfe:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009e02:	cc6fe0ef          	jal	ra,1c0082c8 <pos_soc_init>
1c009e06:	2275                	jal	1c009fb2 <pos_irq_init>
1c009e08:	2ae1                	jal	1c009fe0 <pos_soc_event_init>
1c009e0a:	2a31                	jal	1c009f26 <pos_allocs_init>
1c009e0c:	405c                	lw	a5,4(s0)
1c009e0e:	c791                	beqz	a5,1c009e1a <pos_init_start+0x26>
1c009e10:	0411                	addi	s0,s0,4
1c009e12:	0411                	addi	s0,s0,4
1c009e14:	9782                	jalr	a5
1c009e16:	401c                	lw	a5,0(s0)
1c009e18:	ffed                	bnez	a5,1c009e12 <pos_init_start+0x1e>
1c009e1a:	842ff0ef          	jal	ra,1c008e5c <pos_io_start>
1c009e1e:	300467f3          	csrrsi	a5,mstatus,8
1c009e22:	40b2                	lw	ra,12(sp)
1c009e24:	4422                	lw	s0,8(sp)
1c009e26:	0141                	addi	sp,sp,16
1c009e28:	8082                	ret

1c009e2a <pos_init_stop>:
1c009e2a:	1141                	addi	sp,sp,-16
1c009e2c:	c422                	sw	s0,8(sp)
1c009e2e:	1c000437          	lui	s0,0x1c000
1c009e32:	c606                	sw	ra,12(sp)
1c009e34:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009e38:	828ff0ef          	jal	ra,1c008e60 <pos_io_stop>
1c009e3c:	405c                	lw	a5,4(s0)
1c009e3e:	c791                	beqz	a5,1c009e4a <pos_init_stop+0x20>
1c009e40:	0411                	addi	s0,s0,4
1c009e42:	0411                	addi	s0,s0,4
1c009e44:	9782                	jalr	a5
1c009e46:	401c                	lw	a5,0(s0)
1c009e48:	ffed                	bnez	a5,1c009e42 <pos_init_stop+0x18>
1c009e4a:	40b2                	lw	ra,12(sp)
1c009e4c:	4422                	lw	s0,8(sp)
1c009e4e:	0141                	addi	sp,sp,16
1c009e50:	8082                	ret

1c009e52 <pos_alloc_init>:
1c009e52:	00758793          	addi	a5,a1,7
1c009e56:	9be1                	andi	a5,a5,-8
1c009e58:	40b785b3          	sub	a1,a5,a1
1c009e5c:	c11c                	sw	a5,0(a0)
1c009e5e:	8e0d                	sub	a2,a2,a1
1c009e60:	00c05663          	blez	a2,1c009e6c <pos_alloc_init+0x1a>
1c009e64:	9a61                	andi	a2,a2,-8
1c009e66:	c390                	sw	a2,0(a5)
1c009e68:	0007a223          	sw	zero,4(a5)
1c009e6c:	8082                	ret

1c009e6e <pos_alloc>:
1c009e6e:	4110                	lw	a2,0(a0)
1c009e70:	059d                	addi	a1,a1,7
1c009e72:	99e1                	andi	a1,a1,-8
1c009e74:	ca31                	beqz	a2,1c009ec8 <pos_alloc+0x5a>
1c009e76:	4218                	lw	a4,0(a2)
1c009e78:	425c                	lw	a5,4(a2)
1c009e7a:	02b75963          	ble	a1,a4,1c009eac <pos_alloc+0x3e>
1c009e7e:	cb81                	beqz	a5,1c009e8e <pos_alloc+0x20>
1c009e80:	4398                	lw	a4,0(a5)
1c009e82:	43d4                	lw	a3,4(a5)
1c009e84:	00b75763          	ble	a1,a4,1c009e92 <pos_alloc+0x24>
1c009e88:	863e                	mv	a2,a5
1c009e8a:	87b6                	mv	a5,a3
1c009e8c:	fbf5                	bnez	a5,1c009e80 <pos_alloc+0x12>
1c009e8e:	853e                	mv	a0,a5
1c009e90:	8082                	ret
1c009e92:	00b70a63          	beq	a4,a1,1c009ea6 <pos_alloc+0x38>
1c009e96:	00b78533          	add	a0,a5,a1
1c009e9a:	8f0d                	sub	a4,a4,a1
1c009e9c:	c118                	sw	a4,0(a0)
1c009e9e:	c154                	sw	a3,4(a0)
1c009ea0:	c248                	sw	a0,4(a2)
1c009ea2:	853e                	mv	a0,a5
1c009ea4:	8082                	ret
1c009ea6:	c254                	sw	a3,4(a2)
1c009ea8:	853e                	mv	a0,a5
1c009eaa:	8082                	ret
1c009eac:	00e58b63          	beq	a1,a4,1c009ec2 <pos_alloc+0x54>
1c009eb0:	00b606b3          	add	a3,a2,a1
1c009eb4:	8f0d                	sub	a4,a4,a1
1c009eb6:	c2dc                	sw	a5,4(a3)
1c009eb8:	c298                	sw	a4,0(a3)
1c009eba:	87b2                	mv	a5,a2
1c009ebc:	c114                	sw	a3,0(a0)
1c009ebe:	853e                	mv	a0,a5
1c009ec0:	8082                	ret
1c009ec2:	c11c                	sw	a5,0(a0)
1c009ec4:	87b2                	mv	a5,a2
1c009ec6:	b7e1                	j	1c009e8e <pos_alloc+0x20>
1c009ec8:	4781                	li	a5,0
1c009eca:	b7d1                	j	1c009e8e <pos_alloc+0x20>

1c009ecc <pos_free>:
1c009ecc:	4118                	lw	a4,0(a0)
1c009ece:	061d                	addi	a2,a2,7
1c009ed0:	9a61                	andi	a2,a2,-8
1c009ed2:	c729                	beqz	a4,1c009f1c <pos_free+0x50>
1c009ed4:	00b76663          	bltu	a4,a1,1c009ee0 <pos_free+0x14>
1c009ed8:	a0a1                	j	1c009f20 <pos_free+0x54>
1c009eda:	00b7f563          	bleu	a1,a5,1c009ee4 <pos_free+0x18>
1c009ede:	873e                	mv	a4,a5
1c009ee0:	435c                	lw	a5,4(a4)
1c009ee2:	ffe5                	bnez	a5,1c009eda <pos_free+0xe>
1c009ee4:	00c586b3          	add	a3,a1,a2
1c009ee8:	02d78463          	beq	a5,a3,1c009f10 <pos_free+0x44>
1c009eec:	c190                	sw	a2,0(a1)
1c009eee:	c1dc                	sw	a5,4(a1)
1c009ef0:	cf11                	beqz	a4,1c009f0c <pos_free+0x40>
1c009ef2:	431c                	lw	a5,0(a4)
1c009ef4:	00f706b3          	add	a3,a4,a5
1c009ef8:	00d58463          	beq	a1,a3,1c009f00 <pos_free+0x34>
1c009efc:	c34c                	sw	a1,4(a4)
1c009efe:	8082                	ret
1c009f00:	4194                	lw	a3,0(a1)
1c009f02:	41d0                	lw	a2,4(a1)
1c009f04:	97b6                	add	a5,a5,a3
1c009f06:	c31c                	sw	a5,0(a4)
1c009f08:	c350                	sw	a2,4(a4)
1c009f0a:	8082                	ret
1c009f0c:	c10c                	sw	a1,0(a0)
1c009f0e:	8082                	ret
1c009f10:	4394                	lw	a3,0(a5)
1c009f12:	43dc                	lw	a5,4(a5)
1c009f14:	9636                	add	a2,a2,a3
1c009f16:	c190                	sw	a2,0(a1)
1c009f18:	c1dc                	sw	a5,4(a1)
1c009f1a:	bfd9                	j	1c009ef0 <pos_free+0x24>
1c009f1c:	4781                	li	a5,0
1c009f1e:	b7d9                	j	1c009ee4 <pos_free+0x18>
1c009f20:	87ba                	mv	a5,a4
1c009f22:	4701                	li	a4,0
1c009f24:	b7c1                	j	1c009ee4 <pos_free+0x18>

1c009f26 <pos_allocs_init>:
1c009f26:	1141                	addi	sp,sp,-16
1c009f28:	1c0065b7          	lui	a1,0x1c006
1c009f2c:	c606                	sw	ra,12(sp)
1c009f2e:	24458793          	addi	a5,a1,580 # 1c006244 <__l2_priv0_end>
1c009f32:	1c008637          	lui	a2,0x1c008
1c009f36:	04c7cc63          	blt	a5,a2,1c009f8e <pos_allocs_init+0x68>
1c009f3a:	4581                	li	a1,0
1c009f3c:	4601                	li	a2,0
1c009f3e:	1c006537          	lui	a0,0x1c006
1c009f42:	23850513          	addi	a0,a0,568 # 1c006238 <pos_alloc_l2>
1c009f46:	3731                	jal	1c009e52 <pos_alloc_init>
1c009f48:	1c00a5b7          	lui	a1,0x1c00a
1c009f4c:	ff858793          	addi	a5,a1,-8 # 1c009ff8 <__l2_priv1_end>
1c009f50:	1c010637          	lui	a2,0x1c010
1c009f54:	02c7c963          	blt	a5,a2,1c009f86 <pos_allocs_init+0x60>
1c009f58:	4581                	li	a1,0
1c009f5a:	4601                	li	a2,0
1c009f5c:	1c006537          	lui	a0,0x1c006
1c009f60:	23c50513          	addi	a0,a0,572 # 1c00623c <pos_alloc_l2+0x4>
1c009f64:	35fd                	jal	1c009e52 <pos_alloc_init>
1c009f66:	1c0105b7          	lui	a1,0x1c010
1c009f6a:	00058793          	mv	a5,a1
1c009f6e:	40b2                	lw	ra,12(sp)
1c009f70:	1c080637          	lui	a2,0x1c080
1c009f74:	1c006537          	lui	a0,0x1c006
1c009f78:	8e1d                	sub	a2,a2,a5
1c009f7a:	00058593          	mv	a1,a1
1c009f7e:	24050513          	addi	a0,a0,576 # 1c006240 <pos_alloc_l2+0x8>
1c009f82:	0141                	addi	sp,sp,16
1c009f84:	b5f9                	j	1c009e52 <pos_alloc_init>
1c009f86:	8e1d                	sub	a2,a2,a5
1c009f88:	ff858593          	addi	a1,a1,-8 # 1c00fff8 <__l2_priv1_end+0x6000>
1c009f8c:	bfc1                	j	1c009f5c <pos_allocs_init+0x36>
1c009f8e:	8e1d                	sub	a2,a2,a5
1c009f90:	24458593          	addi	a1,a1,580
1c009f94:	b76d                	j	1c009f3e <pos_allocs_init+0x18>

1c009f96 <pi_l2_malloc>:
1c009f96:	85aa                	mv	a1,a0
1c009f98:	1c006537          	lui	a0,0x1c006
1c009f9c:	23850513          	addi	a0,a0,568 # 1c006238 <pos_alloc_l2>
1c009fa0:	b5f9                	j	1c009e6e <pos_alloc>

1c009fa2 <pi_l2_free>:
1c009fa2:	862e                	mv	a2,a1
1c009fa4:	85aa                	mv	a1,a0
1c009fa6:	1c006537          	lui	a0,0x1c006
1c009faa:	23850513          	addi	a0,a0,568 # 1c006238 <pos_alloc_l2>
1c009fae:	bf39                	j	1c009ecc <pos_free>

1c009fb0 <__rt_handle_illegal_instr>:
1c009fb0:	8082                	ret

1c009fb2 <pos_irq_init>:
1c009fb2:	1a10a737          	lui	a4,0x1a10a
1c009fb6:	f14027f3          	csrr	a5,mhartid
1c009fba:	56fd                	li	a3,-1
1c009fbc:	8795                	srai	a5,a5,0x5
1c009fbe:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c009fc2:	03f7f793          	andi	a5,a5,63
1c009fc6:	477d                	li	a4,31
1c009fc8:	00e78363          	beq	a5,a4,1c009fce <pos_irq_init+0x1c>
1c009fcc:	8082                	ret
1c009fce:	1c0087b7          	lui	a5,0x1c008
1c009fd2:	00078793          	mv	a5,a5
1c009fd6:	0017e793          	ori	a5,a5,1
1c009fda:	30579073          	csrw	mtvec,a5
1c009fde:	8082                	ret

1c009fe0 <pos_soc_event_init>:
1c009fe0:	1a1067b7          	lui	a5,0x1a106
1c009fe4:	577d                	li	a4,-1
1c009fe6:	c3d8                	sw	a4,4(a5)
1c009fe8:	c798                	sw	a4,8(a5)
1c009fea:	c7d8                	sw	a4,12(a5)
1c009fec:	cb98                	sw	a4,16(a5)
1c009fee:	cbd8                	sw	a4,20(a5)
1c009ff0:	cf98                	sw	a4,24(a5)
1c009ff2:	cfd8                	sw	a4,28(a5)
1c009ff4:	d398                	sw	a4,32(a5)
1c009ff6:	8082                	ret
