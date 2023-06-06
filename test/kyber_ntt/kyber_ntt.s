riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	7e50106f          	j	1c009fe4 <__rt_handle_illegal_instr>
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
1c008084:	7610106f          	j	1c009fe4 <__rt_handle_illegal_instr>

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
1c0080e2:	547010ef          	jal	ra,1c009e28 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	563010ef          	jal	ra,1c009e5e <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	57b000ef          	jal	ra,1c008e7c <exit>

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
1c008156:	4a9000ef          	jal	ra,1c008dfe <puts>
1c00815a:	6785                	lui	a5,0x1
1c00815c:	757d                	lui	a0,0xfffff
1c00815e:	e0078793          	addi	a5,a5,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c008162:	978a                	add	a5,a5,sp
1c008164:	6a050593          	addi	a1,a0,1696 # fffff6a0 <pulp__FC+0xfffff6a1>
1c008168:	20050513          	addi	a0,a0,512
1c00816c:	95be                	add	a1,a1,a5
1c00816e:	953e                	add	a0,a0,a5
1c008170:	2f95                	jal	1c0088e4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c008172:	1c000537          	lui	a0,0x1c000
1c008176:	12850513          	addi	a0,a0,296 # 1c000128 <__DTOR_END__+0x10c>
1c00817a:	485000ef          	jal	ra,1c008dfe <puts>
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
1c008354:	1101                	addi	sp,sp,-32
1c008356:	cc22                	sw	s0,24(sp)
1c008358:	c452                	sw	s4,8(sp)
1c00835a:	1a400437          	lui	s0,0x1a400
1c00835e:	1a400a37          	lui	s4,0x1a400
1c008362:	ca26                	sw	s1,20(sp)
1c008364:	c84a                	sw	s2,16(sp)
1c008366:	c64e                	sw	s3,12(sp)
1c008368:	ce06                	sw	ra,28(sp)
1c00836a:	84aa                	mv	s1,a0
1c00836c:	30040413          	addi	s0,s0,768 # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008370:	1c0009b7          	lui	s3,0x1c000
1c008374:	500a0913          	addi	s2,s4,1280 # 1a400500 <__CTOR_LIST__-0x1bffb04>
1c008378:	408c                	lw	a1,0(s1)
1c00837a:	13498513          	addi	a0,s3,308 # 1c000134 <__DTOR_END__+0x118>
1c00837e:	31b000ef          	jal	ra,1c008e98 <printf>
1c008382:	409c                	lw	a5,0(s1)
1c008384:	0411                	addi	s0,s0,4
1c008386:	fef42e23          	sw	a5,-4(s0)
1c00838a:	0491                	addi	s1,s1,4
1c00838c:	ff2416e3          	bne	s0,s2,1c008378 <KYBER_poly_ntt+0x24>
1c008390:	4785                	li	a5,1
1c008392:	30fa2423          	sw	a5,776(s4)
1c008396:	300a2423          	sw	zero,776(s4)
1c00839a:	300a2423          	sw	zero,776(s4)
1c00839e:	300a2423          	sw	zero,776(s4)
1c0083a2:	300a2423          	sw	zero,776(s4)
1c0083a6:	300a2423          	sw	zero,776(s4)
1c0083aa:	300a2423          	sw	zero,776(s4)
1c0083ae:	300a2423          	sw	zero,776(s4)
1c0083b2:	300a2423          	sw	zero,776(s4)
1c0083b6:	300a2423          	sw	zero,776(s4)
1c0083ba:	300a2423          	sw	zero,776(s4)
1c0083be:	08000793          	li	a5,128
1c0083c2:	30fa2423          	sw	a5,776(s4)
1c0083c6:	300a2423          	sw	zero,776(s4)
1c0083ca:	40f2                	lw	ra,28(sp)
1c0083cc:	4462                	lw	s0,24(sp)
1c0083ce:	44d2                	lw	s1,20(sp)
1c0083d0:	4942                	lw	s2,16(sp)
1c0083d2:	49b2                	lw	s3,12(sp)
1c0083d4:	4a22                	lw	s4,8(sp)
1c0083d6:	6105                	addi	sp,sp,32
1c0083d8:	8082                	ret

1c0083da <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c0083da:	1141                	addi	sp,sp,-16
1c0083dc:	55555337          	lui	t1,0x55555
1c0083e0:	68c1                	lui	a7,0x10
1c0083e2:	c622                	sw	s0,12(sp)
1c0083e4:	c426                	sw	s1,8(sp)
1c0083e6:	c24a                	sw	s2,4(sp)
1c0083e8:	20050e13          	addi	t3,a0,512
1c0083ec:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c0083f0:	18fd                	addi	a7,a7,-1
1c0083f2:	419c                	lw	a5,0(a1)
1c0083f4:	0541                	addi	a0,a0,16
1c0083f6:	0017d713          	srli	a4,a5,0x1
1c0083fa:	00677733          	and	a4,a4,t1
1c0083fe:	0067f7b3          	and	a5,a5,t1
1c008402:	97ba                	add	a5,a5,a4
1c008404:	0027d913          	srli	s2,a5,0x2
1c008408:	0087d693          	srli	a3,a5,0x8
1c00840c:	00a7d493          	srli	s1,a5,0xa
1c008410:	0107d713          	srli	a4,a5,0x10
1c008414:	0127d413          	srli	s0,a5,0x12
1c008418:	0037f613          	andi	a2,a5,3
1c00841c:	00397913          	andi	s2,s2,3
1c008420:	8a8d                	andi	a3,a3,3
1c008422:	888d                	andi	s1,s1,3
1c008424:	8b0d                	andi	a4,a4,3
1c008426:	880d                	andi	s0,s0,3
1c008428:	0047df13          	srli	t5,a5,0x4
1c00842c:	0067d393          	srli	t2,a5,0x6
1c008430:	00c7de93          	srli	t4,a5,0xc
1c008434:	00e7d293          	srli	t0,a5,0xe
1c008438:	0147d813          	srli	a6,a5,0x14
1c00843c:	0167df93          	srli	t6,a5,0x16
1c008440:	41260633          	sub	a2,a2,s2
1c008444:	8e85                	sub	a3,a3,s1
1c008446:	8f01                	sub	a4,a4,s0
1c008448:	0033f393          	andi	t2,t2,3
1c00844c:	0032f293          	andi	t0,t0,3
1c008450:	003fff93          	andi	t6,t6,3
1c008454:	003f7f13          	andi	t5,t5,3
1c008458:	003efe93          	andi	t4,t4,3
1c00845c:	00387813          	andi	a6,a6,3
1c008460:	0642                	slli	a2,a2,0x10
1c008462:	06c2                	slli	a3,a3,0x10
1c008464:	0742                	slli	a4,a4,0x10
1c008466:	407f0f33          	sub	t5,t5,t2
1c00846a:	405e8eb3          	sub	t4,t4,t0
1c00846e:	41f80833          	sub	a6,a6,t6
1c008472:	0187d293          	srli	t0,a5,0x18
1c008476:	01a7d393          	srli	t2,a5,0x1a
1c00847a:	01c7df93          	srli	t6,a5,0x1c
1c00847e:	8241                	srli	a2,a2,0x10
1c008480:	82c1                	srli	a3,a3,0x10
1c008482:	8341                	srli	a4,a4,0x10
1c008484:	0842                	slli	a6,a6,0x10
1c008486:	0f42                	slli	t5,t5,0x10
1c008488:	01167633          	and	a2,a2,a7
1c00848c:	0ec2                	slli	t4,t4,0x10
1c00848e:	0116f6b3          	and	a3,a3,a7
1c008492:	01177733          	and	a4,a4,a7
1c008496:	0032f293          	andi	t0,t0,3
1c00849a:	0033f393          	andi	t2,t2,3
1c00849e:	003fff93          	andi	t6,t6,3
1c0084a2:	83f9                	srli	a5,a5,0x1e
1c0084a4:	01076733          	or	a4,a4,a6
1c0084a8:	01e66633          	or	a2,a2,t5
1c0084ac:	01d6e6b3          	or	a3,a3,t4
1c0084b0:	40728833          	sub	a6,t0,t2
1c0084b4:	40ff87b3          	sub	a5,t6,a5
1c0084b8:	fec52823          	sw	a2,-16(a0)
1c0084bc:	fed52a23          	sw	a3,-12(a0)
1c0084c0:	fee52c23          	sw	a4,-8(a0)
1c0084c4:	ff051e23          	sh	a6,-4(a0)
1c0084c8:	fef51f23          	sh	a5,-2(a0)
1c0084cc:	0591                	addi	a1,a1,4
1c0084ce:	f3c512e3          	bne	a0,t3,1c0083f2 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c0084d2:	4432                	lw	s0,12(sp)
1c0084d4:	44a2                	lw	s1,8(sp)
1c0084d6:	4912                	lw	s2,4(sp)
1c0084d8:	0141                	addi	sp,sp,16
1c0084da:	8082                	ret

1c0084dc <keccak_absorb.constprop.7>:
1c0084dc:	7151                	addi	sp,sp,-240
1c0084de:	d3a6                	sw	s1,228(sp)
1c0084e0:	cfce                	sw	s3,220(sp)
1c0084e2:	cdd2                	sw	s4,216(sp)
1c0084e4:	cbd6                	sw	s5,212(sp)
1c0084e6:	d786                	sw	ra,236(sp)
1c0084e8:	d5a2                	sw	s0,232(sp)
1c0084ea:	d1ca                	sw	s2,224(sp)
1c0084ec:	89aa                	mv	s3,a0
1c0084ee:	8a32                	mv	s4,a2
1c0084f0:	84b6                	mv	s1,a3
1c0084f2:	8aaa                	mv	s5,a0
1c0084f4:	0c850713          	addi	a4,a0,200
1c0084f8:	87aa                	mv	a5,a0
1c0084fa:	4601                	li	a2,0
1c0084fc:	4681                	li	a3,0
1c0084fe:	c390                	sw	a2,0(a5)
1c008500:	c3d4                	sw	a3,4(a5)
1c008502:	07a1                	addi	a5,a5,8
1c008504:	fef71be3          	bne	a4,a5,1c0084fa <keccak_absorb.constprop.7+0x1e>
1c008508:	08700793          	li	a5,135
1c00850c:	0747fb63          	bleu	s4,a5,1c008582 <keccak_absorb.constprop.7+0xa6>
1c008510:	08700413          	li	s0,135
1c008514:	08858913          	addi	s2,a1,136
1c008518:	874e                	mv	a4,s3
1c00851a:	0015c783          	lbu	a5,1(a1)
1c00851e:	0025c603          	lbu	a2,2(a1)
1c008522:	0055c883          	lbu	a7,5(a1)
1c008526:	0045c303          	lbu	t1,4(a1)
1c00852a:	0065c803          	lbu	a6,6(a1)
1c00852e:	0005ce03          	lbu	t3,0(a1)
1c008532:	0035c503          	lbu	a0,3(a1)
1c008536:	0075c683          	lbu	a3,7(a1)
1c00853a:	0642                	slli	a2,a2,0x10
1c00853c:	07a2                	slli	a5,a5,0x8
1c00853e:	08a2                	slli	a7,a7,0x8
1c008540:	8fd1                	or	a5,a5,a2
1c008542:	0068e8b3          	or	a7,a7,t1
1c008546:	0842                	slli	a6,a6,0x10
1c008548:	00072303          	lw	t1,0(a4)
1c00854c:	4350                	lw	a2,4(a4)
1c00854e:	01c7e7b3          	or	a5,a5,t3
1c008552:	0562                	slli	a0,a0,0x18
1c008554:	01186833          	or	a6,a6,a7
1c008558:	06e2                	slli	a3,a3,0x18
1c00855a:	8fc9                	or	a5,a5,a0
1c00855c:	0106e6b3          	or	a3,a3,a6
1c008560:	00f347b3          	xor	a5,t1,a5
1c008564:	8eb1                	xor	a3,a3,a2
1c008566:	c31c                	sw	a5,0(a4)
1c008568:	c354                	sw	a3,4(a4)
1c00856a:	05a1                	addi	a1,a1,8
1c00856c:	0721                	addi	a4,a4,8
1c00856e:	fab916e3          	bne	s2,a1,1c00851a <keccak_absorb.constprop.7+0x3e>
1c008572:	85ce                	mv	a1,s3
1c008574:	854e                	mv	a0,s3
1c008576:	3ba5                	jal	1c0082ee <KeccakF1600_StatePermute>
1c008578:	f78a0a13          	addi	s4,s4,-136
1c00857c:	85ca                	mv	a1,s2
1c00857e:	f9446be3          	bltu	s0,s4,1c008514 <keccak_absorb.constprop.7+0x38>
1c008582:	003c                	addi	a5,sp,8
1c008584:	0918                	addi	a4,sp,144
1c008586:	883e                	mv	a6,a5
1c008588:	4681                	li	a3,0
1c00858a:	00d82023          	sw	a3,0(a6)
1c00858e:	0811                	addi	a6,a6,4
1c008590:	ff071ce3          	bne	a4,a6,1c008588 <keccak_absorb.constprop.7+0xac>
1c008594:	060a0463          	beqz	s4,1c0085fc <keccak_absorb.constprop.7+0x120>
1c008598:	fffa0713          	addi	a4,s4,-1
1c00859c:	4689                	li	a3,2
1c00859e:	0ee6f163          	bleu	a4,a3,1c008680 <keccak_absorb.constprop.7+0x1a4>
1c0085a2:	002a5893          	srli	a7,s4,0x2
1c0085a6:	862e                	mv	a2,a1
1c0085a8:	86be                	mv	a3,a5
1c0085aa:	4701                	li	a4,0
1c0085ac:	4208                	lw	a0,0(a2)
1c0085ae:	0705                	addi	a4,a4,1
1c0085b0:	c288                	sw	a0,0(a3)
1c0085b2:	0611                	addi	a2,a2,4
1c0085b4:	0691                	addi	a3,a3,4
1c0085b6:	ff176be3          	bltu	a4,a7,1c0085ac <keccak_absorb.constprop.7+0xd0>
1c0085ba:	ffca7713          	andi	a4,s4,-4
1c0085be:	02ea0f63          	beq	s4,a4,1c0085fc <keccak_absorb.constprop.7+0x120>
1c0085c2:	00e586b3          	add	a3,a1,a4
1c0085c6:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c0085ca:	0988                	addi	a0,sp,208
1c0085cc:	00e506b3          	add	a3,a0,a4
1c0085d0:	f2c68c23          	sb	a2,-200(a3)
1c0085d4:	00170693          	addi	a3,a4,1
1c0085d8:	0346f263          	bleu	s4,a3,1c0085fc <keccak_absorb.constprop.7+0x120>
1c0085dc:	00d58633          	add	a2,a1,a3
1c0085e0:	00064603          	lbu	a2,0(a2)
1c0085e4:	96aa                	add	a3,a3,a0
1c0085e6:	f2c68c23          	sb	a2,-200(a3)
1c0085ea:	0709                	addi	a4,a4,2
1c0085ec:	01477863          	bleu	s4,a4,1c0085fc <keccak_absorb.constprop.7+0x120>
1c0085f0:	95ba                	add	a1,a1,a4
1c0085f2:	0005c683          	lbu	a3,0(a1)
1c0085f6:	972a                	add	a4,a4,a0
1c0085f8:	f2d70c23          	sb	a3,-200(a4)
1c0085fc:	0990                	addi	a2,sp,208
1c0085fe:	9a32                	add	s4,s4,a2
1c008600:	f29a0c23          	sb	s1,-200(s4)
1c008604:	08f14703          	lbu	a4,143(sp)
1c008608:	f8076713          	ori	a4,a4,-128
1c00860c:	08e107a3          	sb	a4,143(sp)
1c008610:	0017c703          	lbu	a4,1(a5)
1c008614:	0027c883          	lbu	a7,2(a5)
1c008618:	0057c503          	lbu	a0,5(a5)
1c00861c:	0047c303          	lbu	t1,4(a5)
1c008620:	0067c583          	lbu	a1,6(a5)
1c008624:	0007ce03          	lbu	t3,0(a5)
1c008628:	0037c603          	lbu	a2,3(a5)
1c00862c:	0077c683          	lbu	a3,7(a5)
1c008630:	08c2                	slli	a7,a7,0x10
1c008632:	0722                	slli	a4,a4,0x8
1c008634:	0522                	slli	a0,a0,0x8
1c008636:	01176733          	or	a4,a4,a7
1c00863a:	00656533          	or	a0,a0,t1
1c00863e:	05c2                	slli	a1,a1,0x10
1c008640:	000aa303          	lw	t1,0(s5)
1c008644:	004aa883          	lw	a7,4(s5)
1c008648:	01c76733          	or	a4,a4,t3
1c00864c:	0662                	slli	a2,a2,0x18
1c00864e:	8dc9                	or	a1,a1,a0
1c008650:	06e2                	slli	a3,a3,0x18
1c008652:	8f51                	or	a4,a4,a2
1c008654:	8ecd                	or	a3,a3,a1
1c008656:	00e34733          	xor	a4,t1,a4
1c00865a:	00d8c6b3          	xor	a3,a7,a3
1c00865e:	00eaa023          	sw	a4,0(s5)
1c008662:	00daa223          	sw	a3,4(s5)
1c008666:	07a1                	addi	a5,a5,8
1c008668:	0aa1                	addi	s5,s5,8
1c00866a:	faf813e3          	bne	a6,a5,1c008610 <keccak_absorb.constprop.7+0x134>
1c00866e:	50be                	lw	ra,236(sp)
1c008670:	542e                	lw	s0,232(sp)
1c008672:	549e                	lw	s1,228(sp)
1c008674:	590e                	lw	s2,224(sp)
1c008676:	49fe                	lw	s3,220(sp)
1c008678:	4a6e                	lw	s4,216(sp)
1c00867a:	4ade                	lw	s5,212(sp)
1c00867c:	616d                	addi	sp,sp,240
1c00867e:	8082                	ret
1c008680:	4701                	li	a4,0
1c008682:	b781                	j	1c0085c2 <keccak_absorb.constprop.7+0xe6>

1c008684 <shake256>:
1c008684:	7131                	addi	sp,sp,-192
1c008686:	db26                	sw	s1,180(sp)
1c008688:	d94a                	sw	s2,176(sp)
1c00868a:	08800493          	li	s1,136
1c00868e:	892a                	mv	s2,a0
1c008690:	0c800513          	li	a0,200
1c008694:	dd22                	sw	s0,184(sp)
1c008696:	d74e                	sw	s3,172(sp)
1c008698:	d552                	sw	s4,168(sp)
1c00869a:	df06                	sw	ra,188(sp)
1c00869c:	d356                	sw	s5,164(sp)
1c00869e:	d15a                	sw	s6,160(sp)
1c0086a0:	cf5e                	sw	s7,156(sp)
1c0086a2:	cd62                	sw	s8,152(sp)
1c0086a4:	cb66                	sw	s9,148(sp)
1c0086a6:	89ae                	mv	s3,a1
1c0086a8:	8432                	mv	s0,a2
1c0086aa:	8a36                	mv	s4,a3
1c0086ac:	0295d4b3          	divu	s1,a1,s1
1c0086b0:	11b010ef          	jal	ra,1c009fca <pi_l2_malloc>
1c0086b4:	20050163          	beqz	a0,1c0088b6 <shake256+0x232>
1c0086b8:	46fd                	li	a3,31
1c0086ba:	8652                	mv	a2,s4
1c0086bc:	85a2                	mv	a1,s0
1c0086be:	8b2a                	mv	s6,a0
1c0086c0:	3d31                	jal	1c0084dc <keccak_absorb.constprop.7>
1c0086c2:	c4dd                	beqz	s1,1c008770 <shake256+0xec>
1c0086c4:	00449713          	slli	a4,s1,0x4
1c0086c8:	00970433          	add	s0,a4,s1
1c0086cc:	040e                	slli	s0,s0,0x3
1c0086ce:	7bc1                	lui	s7,0xffff0
1c0086d0:	ff010ab7          	lui	s5,0xff010
1c0086d4:	01000a37          	lui	s4,0x1000
1c0086d8:	412b0c33          	sub	s8,s6,s2
1c0086dc:	944a                	add	s0,s0,s2
1c0086de:	8cca                	mv	s9,s2
1c0086e0:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c0086e4:	1afd                	addi	s5,s5,-1
1c0086e6:	1a7d                	addi	s4,s4,-1
1c0086e8:	85da                	mv	a1,s6
1c0086ea:	855a                	mv	a0,s6
1c0086ec:	3109                	jal	1c0082ee <KeccakF1600_StatePermute>
1c0086ee:	8666                	mv	a2,s9
1c0086f0:	088c8593          	addi	a1,s9,136
1c0086f4:	00cc07b3          	add	a5,s8,a2
1c0086f8:	4388                	lw	a0,0(a5)
1c0086fa:	43d4                	lw	a3,4(a5)
1c0086fc:	00855893          	srli	a7,a0,0x8
1c008700:	0086d813          	srli	a6,a3,0x8
1c008704:	0ff57713          	andi	a4,a0,255
1c008708:	0ff6f793          	andi	a5,a3,255
1c00870c:	0ff8f893          	andi	a7,a7,255
1c008710:	0ff87813          	andi	a6,a6,255
1c008714:	08a2                	slli	a7,a7,0x8
1c008716:	0822                	slli	a6,a6,0x8
1c008718:	01777733          	and	a4,a4,s7
1c00871c:	0177f7b3          	and	a5,a5,s7
1c008720:	01176733          	or	a4,a4,a7
1c008724:	0107e7b3          	or	a5,a5,a6
1c008728:	00ff08b7          	lui	a7,0xff0
1c00872c:	00ff0837          	lui	a6,0xff0
1c008730:	011578b3          	and	a7,a0,a7
1c008734:	0106f833          	and	a6,a3,a6
1c008738:	01577733          	and	a4,a4,s5
1c00873c:	0157f7b3          	and	a5,a5,s5
1c008740:	01176733          	or	a4,a4,a7
1c008744:	8161                	srli	a0,a0,0x18
1c008746:	0107e7b3          	or	a5,a5,a6
1c00874a:	82e1                	srli	a3,a3,0x18
1c00874c:	0562                	slli	a0,a0,0x18
1c00874e:	01477733          	and	a4,a4,s4
1c008752:	06e2                	slli	a3,a3,0x18
1c008754:	0147f7b3          	and	a5,a5,s4
1c008758:	8f49                	or	a4,a4,a0
1c00875a:	8fd5                	or	a5,a5,a3
1c00875c:	c218                	sw	a4,0(a2)
1c00875e:	c25c                	sw	a5,4(a2)
1c008760:	0621                	addi	a2,a2,8
1c008762:	f8c599e3          	bne	a1,a2,1c0086f4 <shake256+0x70>
1c008766:	8cae                	mv	s9,a1
1c008768:	f78c0c13          	addi	s8,s8,-136
1c00876c:	f6b41ee3          	bne	s0,a1,1c0086e8 <shake256+0x64>
1c008770:	08800793          	li	a5,136
1c008774:	02f9f9b3          	remu	s3,s3,a5
1c008778:	02099363          	bnez	s3,1c00879e <shake256+0x11a>
1c00877c:	546a                	lw	s0,184(sp)
1c00877e:	50fa                	lw	ra,188(sp)
1c008780:	54da                	lw	s1,180(sp)
1c008782:	594a                	lw	s2,176(sp)
1c008784:	59ba                	lw	s3,172(sp)
1c008786:	5a2a                	lw	s4,168(sp)
1c008788:	5a9a                	lw	s5,164(sp)
1c00878a:	4bfa                	lw	s7,156(sp)
1c00878c:	4c6a                	lw	s8,152(sp)
1c00878e:	4cda                	lw	s9,148(sp)
1c008790:	855a                	mv	a0,s6
1c008792:	5b0a                	lw	s6,160(sp)
1c008794:	0c800593          	li	a1,200
1c008798:	6129                	addi	sp,sp,192
1c00879a:	03d0106f          	j	1c009fd6 <pi_l2_free>
1c00879e:	85da                	mv	a1,s6
1c0087a0:	855a                	mv	a0,s6
1c0087a2:	36b1                	jal	1c0082ee <KeccakF1600_StatePermute>
1c0087a4:	002c                	addi	a1,sp,8
1c0087a6:	78c1                	lui	a7,0xffff0
1c0087a8:	ff010837          	lui	a6,0xff010
1c0087ac:	01000537          	lui	a0,0x1000
1c0087b0:	09010e13          	addi	t3,sp,144
1c0087b4:	862e                	mv	a2,a1
1c0087b6:	40bb0333          	sub	t1,s6,a1
1c0087ba:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c0087be:	187d                	addi	a6,a6,-1
1c0087c0:	157d                	addi	a0,a0,-1
1c0087c2:	00c307b3          	add	a5,t1,a2
1c0087c6:	0007ae83          	lw	t4,0(a5)
1c0087ca:	43d4                	lw	a3,4(a5)
1c0087cc:	008edf93          	srli	t6,t4,0x8
1c0087d0:	0086df13          	srli	t5,a3,0x8
1c0087d4:	0ffef713          	andi	a4,t4,255
1c0087d8:	0ff6f793          	andi	a5,a3,255
1c0087dc:	0fffff93          	andi	t6,t6,255
1c0087e0:	0fff7f13          	andi	t5,t5,255
1c0087e4:	0fa2                	slli	t6,t6,0x8
1c0087e6:	0f22                	slli	t5,t5,0x8
1c0087e8:	01177733          	and	a4,a4,a7
1c0087ec:	0117f7b3          	and	a5,a5,a7
1c0087f0:	01f76733          	or	a4,a4,t6
1c0087f4:	01e7e7b3          	or	a5,a5,t5
1c0087f8:	00ff0fb7          	lui	t6,0xff0
1c0087fc:	00ff0f37          	lui	t5,0xff0
1c008800:	01feffb3          	and	t6,t4,t6
1c008804:	01e6ff33          	and	t5,a3,t5
1c008808:	01077733          	and	a4,a4,a6
1c00880c:	0107f7b3          	and	a5,a5,a6
1c008810:	01f76733          	or	a4,a4,t6
1c008814:	018ede93          	srli	t4,t4,0x18
1c008818:	01e7e7b3          	or	a5,a5,t5
1c00881c:	82e1                	srli	a3,a3,0x18
1c00881e:	0ee2                	slli	t4,t4,0x18
1c008820:	8f69                	and	a4,a4,a0
1c008822:	06e2                	slli	a3,a3,0x18
1c008824:	8fe9                	and	a5,a5,a0
1c008826:	01d76733          	or	a4,a4,t4
1c00882a:	8fd5                	or	a5,a5,a3
1c00882c:	c218                	sw	a4,0(a2)
1c00882e:	c25c                	sw	a5,4(a2)
1c008830:	0621                	addi	a2,a2,8
1c008832:	f8ce18e3          	bne	t3,a2,1c0087c2 <shake256+0x13e>
1c008836:	fff98793          	addi	a5,s3,-1
1c00883a:	4709                	li	a4,2
1c00883c:	06f77963          	bleu	a5,a4,1c0088ae <shake256+0x22a>
1c008840:	00449713          	slli	a4,s1,0x4
1c008844:	009707b3          	add	a5,a4,s1
1c008848:	078e                	slli	a5,a5,0x3
1c00884a:	0029d513          	srli	a0,s3,0x2
1c00884e:	97ca                	add	a5,a5,s2
1c008850:	4681                	li	a3,0
1c008852:	4190                	lw	a2,0(a1)
1c008854:	0685                	addi	a3,a3,1
1c008856:	c390                	sw	a2,0(a5)
1c008858:	0591                	addi	a1,a1,4
1c00885a:	0791                	addi	a5,a5,4
1c00885c:	fea6ebe3          	bltu	a3,a0,1c008852 <shake256+0x1ce>
1c008860:	ffc9f693          	andi	a3,s3,-4
1c008864:	f0d98ce3          	beq	s3,a3,1c00877c <shake256+0xf8>
1c008868:	009707b3          	add	a5,a4,s1
1c00886c:	090c                	addi	a1,sp,144
1c00886e:	00d58733          	add	a4,a1,a3
1c008872:	078e                	slli	a5,a5,0x3
1c008874:	f7874603          	lbu	a2,-136(a4)
1c008878:	97ca                	add	a5,a5,s2
1c00887a:	00d78733          	add	a4,a5,a3
1c00887e:	00c70023          	sb	a2,0(a4)
1c008882:	00168713          	addi	a4,a3,1
1c008886:	ef377be3          	bleu	s3,a4,1c00877c <shake256+0xf8>
1c00888a:	00e58633          	add	a2,a1,a4
1c00888e:	f7864603          	lbu	a2,-136(a2)
1c008892:	973e                	add	a4,a4,a5
1c008894:	00c70023          	sb	a2,0(a4)
1c008898:	0689                	addi	a3,a3,2
1c00889a:	ef36f1e3          	bleu	s3,a3,1c00877c <shake256+0xf8>
1c00889e:	00d58733          	add	a4,a1,a3
1c0088a2:	f7874703          	lbu	a4,-136(a4)
1c0088a6:	97b6                	add	a5,a5,a3
1c0088a8:	00e78023          	sb	a4,0(a5)
1c0088ac:	bdc1                	j	1c00877c <shake256+0xf8>
1c0088ae:	4681                	li	a3,0
1c0088b0:	00449713          	slli	a4,s1,0x4
1c0088b4:	bf55                	j	1c008868 <shake256+0x1e4>
1c0088b6:	06f00513          	li	a0,111
1c0088ba:	23c9                	jal	1c008e7c <exit>

1c0088bc <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c0088bc:	9b010113          	addi	sp,sp,-1616
1c0088c0:	100c                	addi	a1,sp,32
1c0088c2:	4601                	li	a2,0
1c0088c4:	0088                	addi	a0,sp,64
1c0088c6:	64112623          	sw	ra,1612(sp)
1c0088ca:	2025                	jal	1c0088f2 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0088cc:	1c000537          	lui	a0,0x1c000
1c0088d0:	13c50513          	addi	a0,a0,316 # 1c00013c <__DTOR_END__+0x120>
1c0088d4:	232d                	jal	1c008dfe <puts>
1c0088d6:	0088                	addi	a0,sp,64
1c0088d8:	2835                	jal	1c008914 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c0088da:	64c12083          	lw	ra,1612(sp)
1c0088de:	65010113          	addi	sp,sp,1616
1c0088e2:	8082                	ret

1c0088e4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c0088e4:	1141                	addi	sp,sp,-16
1c0088e6:	c606                	sw	ra,12(sp)
1c0088e8:	3fd1                	jal	1c0088bc <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c0088ea:	40b2                	lw	ra,12(sp)
1c0088ec:	4501                	li	a0,0
1c0088ee:	0141                	addi	sp,sp,16
1c0088f0:	8082                	ret

1c0088f2 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c0088f2:	7175                	addi	sp,sp,-144
1c0088f4:	c522                	sw	s0,136(sp)
1c0088f6:	86b2                	mv	a3,a2
1c0088f8:	842a                	mv	s0,a0
1c0088fa:	862e                	mv	a2,a1
1c0088fc:	850a                	mv	a0,sp
1c0088fe:	08000593          	li	a1,128
1c008902:	c706                	sw	ra,140(sp)
1c008904:	2a19                	jal	1c008a1a <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c008906:	858a                	mv	a1,sp
1c008908:	8522                	mv	a0,s0
1c00890a:	3cc1                	jal	1c0083da <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c00890c:	40ba                	lw	ra,140(sp)
1c00890e:	442a                	lw	s0,136(sp)
1c008910:	6149                	addi	sp,sp,144
1c008912:	8082                	ret

1c008914 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c008914:	86010113          	addi	sp,sp,-1952
1c008918:	78812c23          	sw	s0,1944(sp)
1c00891c:	0c800613          	li	a2,200
1c008920:	842a                	mv	s0,a0
1c008922:	4581                	li	a1,0
1c008924:	850a                	mv	a0,sp
1c008926:	78112e23          	sw	ra,1948(sp)
1c00892a:	78912a23          	sw	s1,1940(sp)
1c00892e:	79212823          	sw	s2,1936(sp)
1c008932:	2299                	jal	1c008a78 <memset>
1c008934:	0c800613          	li	a2,200
1c008938:	4581                	li	a1,0
1c00893a:	01a8                	addi	a0,sp,200
1c00893c:	2a35                	jal	1c008a78 <memset>
1c00893e:	20000613          	li	a2,512
1c008942:	4581                	li	a1,0
1c008944:	0b08                	addi	a0,sp,400
1c008946:	2a0d                	jal	1c008a78 <memset>
1c008948:	0f04                	addi	s1,sp,912
1c00894a:	20000613          	li	a2,512
1c00894e:	4581                	li	a1,0
1c008950:	8526                	mv	a0,s1
1c008952:	221d                	jal	1c008a78 <memset>
1c008954:	20000613          	li	a2,512
1c008958:	85a2                	mv	a1,s0
1c00895a:	59010513          	addi	a0,sp,1424
1c00895e:	22dd                	jal	1c008b44 <memcpy>
1c008960:	6541                	lui	a0,0x10
1c008962:	59010693          	addi	a3,sp,1424
1c008966:	4601                	li	a2,0
1c008968:	157d                	addi	a0,a0,-1
1c00896a:	10000813          	li	a6,256
1c00896e:	00069703          	lh	a4,0(a3)
1c008972:	00269583          	lh	a1,2(a3)
1c008976:	00165793          	srli	a5,a2,0x1
1c00897a:	078a                	slli	a5,a5,0x2
1c00897c:	0742                	slli	a4,a4,0x10
1c00897e:	8de9                	and	a1,a1,a0
1c008980:	79010893          	addi	a7,sp,1936
1c008984:	97c6                	add	a5,a5,a7
1c008986:	8f4d                	or	a4,a4,a1
1c008988:	a0e7a023          	sw	a4,-1536(a5)
1c00898c:	0609                	addi	a2,a2,2
1c00898e:	0691                	addi	a3,a3,4
1c008990:	fd061fe3          	bne	a2,a6,1c00896e <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x5a>
1c008994:	0b00                	addi	s0,sp,400
1c008996:	1c000937          	lui	s2,0x1c000
1c00899a:	400c                	lw	a1,0(s0)
1c00899c:	13490513          	addi	a0,s2,308 # 1c000134 <__DTOR_END__+0x118>
1c0089a0:	0411                	addi	s0,s0,4
1c0089a2:	29dd                	jal	1c008e98 <printf>
1c0089a4:	fe849be3          	bne	s1,s0,1c00899a <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x86>
1c0089a8:	1c000537          	lui	a0,0x1c000
1c0089ac:	15050513          	addi	a0,a0,336 # 1c000150 <__DTOR_END__+0x134>
1c0089b0:	21b9                	jal	1c008dfe <puts>
1c0089b2:	85a6                	mv	a1,s1
1c0089b4:	0b08                	addi	a0,sp,400
1c0089b6:	3a79                	jal	1c008354 <KYBER_poly_ntt>
1c0089b8:	1c000537          	lui	a0,0x1c000
1c0089bc:	17450513          	addi	a0,a0,372 # 1c000174 <__DTOR_END__+0x158>
1c0089c0:	293d                	jal	1c008dfe <puts>
1c0089c2:	1c000537          	lui	a0,0x1c000
1c0089c6:	19450513          	addi	a0,a0,404 # 1c000194 <__DTOR_END__+0x178>
1c0089ca:	21f9                	jal	1c008e98 <printf>
1c0089cc:	7369c7b7          	lui	a5,0x7369c
1c0089d0:	66778793          	addi	a5,a5,1639 # 7369c667 <__l2_shared_end+0x5768c667>
1c0089d4:	c03e                	sw	a5,0(sp)
1c0089d6:	ec4b07b7          	lui	a5,0xec4b0
1c0089da:	f5178793          	addi	a5,a5,-175 # ec4aff51 <pulp__FC+0xec4aff52>
1c0089de:	c23e                	sw	a5,4(sp)
1c0089e0:	abbad7b7          	lui	a5,0xabbad
1c0089e4:	d2978793          	addi	a5,a5,-727 # abbacd29 <pulp__FC+0xabbacd2a>
1c0089e8:	c43e                	sw	a5,8(sp)
1c0089ea:	47c1                	li	a5,16
1c0089ec:	01ac                	addi	a1,sp,200
1c0089ee:	c63e                	sw	a5,12(sp)
1c0089f0:	850a                	mv	a0,sp
1c0089f2:	800007b7          	lui	a5,0x80000
1c0089f6:	debe                	sw	a5,124(sp)
1c0089f8:	38dd                	jal	1c0082ee <KeccakF1600_StatePermute>
1c0089fa:	1c000537          	lui	a0,0x1c000
1c0089fe:	1cc50513          	addi	a0,a0,460 # 1c0001cc <__DTOR_END__+0x1b0>
1c008a02:	2959                	jal	1c008e98 <printf>
1c008a04:	79c12083          	lw	ra,1948(sp)
1c008a08:	79812403          	lw	s0,1944(sp)
1c008a0c:	79412483          	lw	s1,1940(sp)
1c008a10:	79012903          	lw	s2,1936(sp)
1c008a14:	7a010113          	addi	sp,sp,1952
1c008a18:	8082                	ret

1c008a1a <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c008a1a:	7139                	addi	sp,sp,-64
1c008a1c:	87b2                	mv	a5,a2
1c008a1e:	da26                	sw	s1,52(sp)
1c008a20:	d84a                	sw	s2,48(sp)
1c008a22:	84aa                	mv	s1,a0
1c008a24:	892e                	mv	s2,a1
1c008a26:	02000613          	li	a2,32
1c008a2a:	85be                	mv	a1,a5
1c008a2c:	0068                	addi	a0,sp,12
1c008a2e:	de06                	sw	ra,60(sp)
1c008a30:	dc22                	sw	s0,56(sp)
1c008a32:	8436                	mv	s0,a3
1c008a34:	2a01                	jal	1c008b44 <memcpy>
1c008a36:	0070                	addi	a2,sp,12
1c008a38:	85ca                	mv	a1,s2
1c008a3a:	8526                	mv	a0,s1
1c008a3c:	02100693          	li	a3,33
1c008a40:	02810623          	sb	s0,44(sp)
1c008a44:	3181                	jal	1c008684 <shake256>
1c008a46:	50f2                	lw	ra,60(sp)
1c008a48:	5462                	lw	s0,56(sp)
1c008a4a:	54d2                	lw	s1,52(sp)
1c008a4c:	5942                	lw	s2,48(sp)
1c008a4e:	6121                	addi	sp,sp,64
1c008a50:	8082                	ret

1c008a52 <pos_wait_forever>:
1c008a52:	f14027f3          	csrr	a5,mhartid
1c008a56:	8795                	srai	a5,a5,0x5
1c008a58:	03f7f793          	andi	a5,a5,63
1c008a5c:	477d                	li	a4,31
1c008a5e:	00e78363          	beq	a5,a4,1c008a64 <pos_wait_forever+0x12>
1c008a62:	a001                	j	1c008a62 <pos_wait_forever+0x10>
1c008a64:	1a10a7b7          	lui	a5,0x1a10a
1c008a68:	577d                	li	a4,-1
1c008a6a:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c008a6e:	10500073          	wfi
1c008a72:	10500073          	wfi
1c008a76:	bfe5                	j	1c008a6e <pos_wait_forever+0x1c>

1c008a78 <memset>:
1c008a78:	fff60313          	addi	t1,a2,-1
1c008a7c:	ce55                	beqz	a2,1c008b38 <memset+0xc0>
1c008a7e:	40a007b3          	neg	a5,a0
1c008a82:	8b8d                	andi	a5,a5,3
1c008a84:	00378713          	addi	a4,a5,3
1c008a88:	4695                	li	a3,5
1c008a8a:	0ff5f593          	andi	a1,a1,255
1c008a8e:	0ad76663          	bltu	a4,a3,1c008b3a <memset+0xc2>
1c008a92:	0ae36763          	bltu	t1,a4,1c008b40 <memset+0xc8>
1c008a96:	88aa                	mv	a7,a0
1c008a98:	cb8d                	beqz	a5,1c008aca <memset+0x52>
1c008a9a:	00b50023          	sb	a1,0(a0)
1c008a9e:	4705                	li	a4,1
1c008aa0:	00150893          	addi	a7,a0,1
1c008aa4:	ffe60313          	addi	t1,a2,-2
1c008aa8:	02e78163          	beq	a5,a4,1c008aca <memset+0x52>
1c008aac:	00b500a3          	sb	a1,1(a0)
1c008ab0:	470d                	li	a4,3
1c008ab2:	00250893          	addi	a7,a0,2
1c008ab6:	ffd60313          	addi	t1,a2,-3
1c008aba:	00e79863          	bne	a5,a4,1c008aca <memset+0x52>
1c008abe:	00350893          	addi	a7,a0,3
1c008ac2:	00b50123          	sb	a1,2(a0)
1c008ac6:	ffc60313          	addi	t1,a2,-4
1c008aca:	00859813          	slli	a6,a1,0x8
1c008ace:	0105e833          	or	a6,a1,a6
1c008ad2:	01059713          	slli	a4,a1,0x10
1c008ad6:	00e86733          	or	a4,a6,a4
1c008ada:	8e1d                	sub	a2,a2,a5
1c008adc:	01859693          	slli	a3,a1,0x18
1c008ae0:	8ed9                	or	a3,a3,a4
1c008ae2:	00265813          	srli	a6,a2,0x2
1c008ae6:	97aa                	add	a5,a5,a0
1c008ae8:	4701                	li	a4,0
1c008aea:	c394                	sw	a3,0(a5)
1c008aec:	0705                	addi	a4,a4,1
1c008aee:	0791                	addi	a5,a5,4
1c008af0:	ff076de3          	bltu	a4,a6,1c008aea <memset+0x72>
1c008af4:	ffc67713          	andi	a4,a2,-4
1c008af8:	00e887b3          	add	a5,a7,a4
1c008afc:	40e30333          	sub	t1,t1,a4
1c008b00:	02e60f63          	beq	a2,a4,1c008b3e <memset+0xc6>
1c008b04:	00b78023          	sb	a1,0(a5)
1c008b08:	02030863          	beqz	t1,1c008b38 <memset+0xc0>
1c008b0c:	00b780a3          	sb	a1,1(a5)
1c008b10:	4705                	li	a4,1
1c008b12:	02e30363          	beq	t1,a4,1c008b38 <memset+0xc0>
1c008b16:	00b78123          	sb	a1,2(a5)
1c008b1a:	4709                	li	a4,2
1c008b1c:	00e30e63          	beq	t1,a4,1c008b38 <memset+0xc0>
1c008b20:	00b781a3          	sb	a1,3(a5)
1c008b24:	470d                	li	a4,3
1c008b26:	00e30963          	beq	t1,a4,1c008b38 <memset+0xc0>
1c008b2a:	00b78223          	sb	a1,4(a5)
1c008b2e:	4711                	li	a4,4
1c008b30:	00e30463          	beq	t1,a4,1c008b38 <memset+0xc0>
1c008b34:	00b782a3          	sb	a1,5(a5)
1c008b38:	8082                	ret
1c008b3a:	4715                	li	a4,5
1c008b3c:	bf99                	j	1c008a92 <memset+0x1a>
1c008b3e:	8082                	ret
1c008b40:	87aa                	mv	a5,a0
1c008b42:	b7c9                	j	1c008b04 <memset+0x8c>

1c008b44 <memcpy>:
1c008b44:	00b567b3          	or	a5,a0,a1
1c008b48:	8b8d                	andi	a5,a5,3
1c008b4a:	10078f63          	beqz	a5,1c008c68 <memcpy+0x124>
1c008b4e:	14060063          	beqz	a2,1c008c8e <memcpy+0x14a>
1c008b52:	00458793          	addi	a5,a1,4
1c008b56:	00450693          	addi	a3,a0,4
1c008b5a:	00f537b3          	sltu	a5,a0,a5
1c008b5e:	00d5b6b3          	sltu	a3,a1,a3
1c008b62:	0017c793          	xori	a5,a5,1
1c008b66:	0016c693          	xori	a3,a3,1
1c008b6a:	873e                	mv	a4,a5
1c008b6c:	87b6                	mv	a5,a3
1c008b6e:	8fd9                	or	a5,a5,a4
1c008b70:	0ff7f793          	andi	a5,a5,255
1c008b74:	cff9                	beqz	a5,1c008c52 <memcpy+0x10e>
1c008b76:	00863793          	sltiu	a5,a2,8
1c008b7a:	0017c793          	xori	a5,a5,1
1c008b7e:	0ff7f793          	andi	a5,a5,255
1c008b82:	cbe1                	beqz	a5,1c008c52 <memcpy+0x10e>
1c008b84:	40b007b3          	neg	a5,a1
1c008b88:	8b8d                	andi	a5,a5,3
1c008b8a:	fff60313          	addi	t1,a2,-1
1c008b8e:	cfe5                	beqz	a5,1c008c86 <memcpy+0x142>
1c008b90:	0005c683          	lbu	a3,0(a1)
1c008b94:	4705                	li	a4,1
1c008b96:	00d50023          	sb	a3,0(a0)
1c008b9a:	00158893          	addi	a7,a1,1
1c008b9e:	00150813          	addi	a6,a0,1
1c008ba2:	02e78963          	beq	a5,a4,1c008bd4 <memcpy+0x90>
1c008ba6:	0015c683          	lbu	a3,1(a1)
1c008baa:	470d                	li	a4,3
1c008bac:	00d500a3          	sb	a3,1(a0)
1c008bb0:	00258893          	addi	a7,a1,2
1c008bb4:	00250813          	addi	a6,a0,2
1c008bb8:	ffe60313          	addi	t1,a2,-2
1c008bbc:	00e79c63          	bne	a5,a4,1c008bd4 <memcpy+0x90>
1c008bc0:	0025c703          	lbu	a4,2(a1)
1c008bc4:	00358893          	addi	a7,a1,3
1c008bc8:	00350813          	addi	a6,a0,3
1c008bcc:	00e50123          	sb	a4,2(a0)
1c008bd0:	ffd60313          	addi	t1,a2,-3
1c008bd4:	8e1d                	sub	a2,a2,a5
1c008bd6:	95be                	add	a1,a1,a5
1c008bd8:	00265e13          	srli	t3,a2,0x2
1c008bdc:	97aa                	add	a5,a5,a0
1c008bde:	4701                	li	a4,0
1c008be0:	4194                	lw	a3,0(a1)
1c008be2:	0705                	addi	a4,a4,1
1c008be4:	c394                	sw	a3,0(a5)
1c008be6:	0591                	addi	a1,a1,4
1c008be8:	0791                	addi	a5,a5,4
1c008bea:	ffc76be3          	bltu	a4,t3,1c008be0 <memcpy+0x9c>
1c008bee:	ffc67593          	andi	a1,a2,-4
1c008bf2:	40b306b3          	sub	a3,t1,a1
1c008bf6:	00b807b3          	add	a5,a6,a1
1c008bfa:	00b88733          	add	a4,a7,a1
1c008bfe:	06b60463          	beq	a2,a1,1c008c66 <memcpy+0x122>
1c008c02:	00074583          	lbu	a1,0(a4)
1c008c06:	fff68613          	addi	a2,a3,-1
1c008c0a:	00b78023          	sb	a1,0(a5)
1c008c0e:	ce21                	beqz	a2,1c008c66 <memcpy+0x122>
1c008c10:	00174583          	lbu	a1,1(a4)
1c008c14:	ffe68613          	addi	a2,a3,-2
1c008c18:	00b780a3          	sb	a1,1(a5)
1c008c1c:	c629                	beqz	a2,1c008c66 <memcpy+0x122>
1c008c1e:	00274583          	lbu	a1,2(a4)
1c008c22:	ffd68613          	addi	a2,a3,-3
1c008c26:	00b78123          	sb	a1,2(a5)
1c008c2a:	ce15                	beqz	a2,1c008c66 <memcpy+0x122>
1c008c2c:	00374583          	lbu	a1,3(a4)
1c008c30:	ffc68613          	addi	a2,a3,-4
1c008c34:	00b781a3          	sb	a1,3(a5)
1c008c38:	c61d                	beqz	a2,1c008c66 <memcpy+0x122>
1c008c3a:	00474583          	lbu	a1,4(a4)
1c008c3e:	4615                	li	a2,5
1c008c40:	00b78223          	sb	a1,4(a5)
1c008c44:	02c68163          	beq	a3,a2,1c008c66 <memcpy+0x122>
1c008c48:	00574703          	lbu	a4,5(a4)
1c008c4c:	00e782a3          	sb	a4,5(a5)
1c008c50:	8082                	ret
1c008c52:	962e                	add	a2,a2,a1
1c008c54:	87aa                	mv	a5,a0
1c008c56:	0585                	addi	a1,a1,1
1c008c58:	fff5c703          	lbu	a4,-1(a1)
1c008c5c:	0785                	addi	a5,a5,1
1c008c5e:	fee78fa3          	sb	a4,-1(a5)
1c008c62:	fec59ae3          	bne	a1,a2,1c008c56 <memcpy+0x112>
1c008c66:	8082                	ret
1c008c68:	00367793          	andi	a5,a2,3
1c008c6c:	ee0793e3          	bnez	a5,1c008b52 <memcpy+0xe>
1c008c70:	da7d                	beqz	a2,1c008c66 <memcpy+0x122>
1c008c72:	87aa                	mv	a5,a0
1c008c74:	0591                	addi	a1,a1,4
1c008c76:	ffc5a703          	lw	a4,-4(a1)
1c008c7a:	0791                	addi	a5,a5,4
1c008c7c:	fee7ae23          	sw	a4,-4(a5)
1c008c80:	1671                	addi	a2,a2,-4
1c008c82:	fa6d                	bnez	a2,1c008c74 <memcpy+0x130>
1c008c84:	8082                	ret
1c008c86:	88ae                	mv	a7,a1
1c008c88:	882a                	mv	a6,a0
1c008c8a:	8332                	mv	t1,a2
1c008c8c:	b7a1                	j	1c008bd4 <memcpy+0x90>
1c008c8e:	8082                	ret

1c008c90 <memmove>:
1c008c90:	40b507b3          	sub	a5,a0,a1
1c008c94:	10c7e463          	bltu	a5,a2,1c008d9c <memmove+0x10c>
1c008c98:	12060b63          	beqz	a2,1c008dce <memmove+0x13e>
1c008c9c:	00458793          	addi	a5,a1,4
1c008ca0:	00450693          	addi	a3,a0,4
1c008ca4:	00f537b3          	sltu	a5,a0,a5
1c008ca8:	00d5b6b3          	sltu	a3,a1,a3
1c008cac:	0017c793          	xori	a5,a5,1
1c008cb0:	0016c693          	xori	a3,a3,1
1c008cb4:	873e                	mv	a4,a5
1c008cb6:	87b6                	mv	a5,a3
1c008cb8:	8fd9                	or	a5,a5,a4
1c008cba:	0ff7f793          	andi	a5,a5,255
1c008cbe:	cfed                	beqz	a5,1c008db8 <memmove+0x128>
1c008cc0:	00863793          	sltiu	a5,a2,8
1c008cc4:	0017c793          	xori	a5,a5,1
1c008cc8:	0ff7f793          	andi	a5,a5,255
1c008ccc:	c7f5                	beqz	a5,1c008db8 <memmove+0x128>
1c008cce:	40b007b3          	neg	a5,a1
1c008cd2:	8b8d                	andi	a5,a5,3
1c008cd4:	fff60313          	addi	t1,a2,-1
1c008cd8:	cfe5                	beqz	a5,1c008dd0 <memmove+0x140>
1c008cda:	0005c683          	lbu	a3,0(a1)
1c008cde:	4705                	li	a4,1
1c008ce0:	00d50023          	sb	a3,0(a0)
1c008ce4:	00150813          	addi	a6,a0,1
1c008ce8:	00158893          	addi	a7,a1,1
1c008cec:	02e78963          	beq	a5,a4,1c008d1e <memmove+0x8e>
1c008cf0:	0015c683          	lbu	a3,1(a1)
1c008cf4:	470d                	li	a4,3
1c008cf6:	00d500a3          	sb	a3,1(a0)
1c008cfa:	00250813          	addi	a6,a0,2
1c008cfe:	00258893          	addi	a7,a1,2
1c008d02:	ffe60313          	addi	t1,a2,-2
1c008d06:	00e79c63          	bne	a5,a4,1c008d1e <memmove+0x8e>
1c008d0a:	0025c703          	lbu	a4,2(a1)
1c008d0e:	00350813          	addi	a6,a0,3
1c008d12:	00e50123          	sb	a4,2(a0)
1c008d16:	00358893          	addi	a7,a1,3
1c008d1a:	ffd60313          	addi	t1,a2,-3
1c008d1e:	8e1d                	sub	a2,a2,a5
1c008d20:	95be                	add	a1,a1,a5
1c008d22:	00265e13          	srli	t3,a2,0x2
1c008d26:	97aa                	add	a5,a5,a0
1c008d28:	4701                	li	a4,0
1c008d2a:	4194                	lw	a3,0(a1)
1c008d2c:	0705                	addi	a4,a4,1
1c008d2e:	c394                	sw	a3,0(a5)
1c008d30:	0591                	addi	a1,a1,4
1c008d32:	0791                	addi	a5,a5,4
1c008d34:	ffc76be3          	bltu	a4,t3,1c008d2a <memmove+0x9a>
1c008d38:	ffc67593          	andi	a1,a2,-4
1c008d3c:	40b306b3          	sub	a3,t1,a1
1c008d40:	00b807b3          	add	a5,a6,a1
1c008d44:	00b88733          	add	a4,a7,a1
1c008d48:	08b60263          	beq	a2,a1,1c008dcc <memmove+0x13c>
1c008d4c:	00074583          	lbu	a1,0(a4)
1c008d50:	fff68613          	addi	a2,a3,-1
1c008d54:	00b78023          	sb	a1,0(a5)
1c008d58:	ca35                	beqz	a2,1c008dcc <memmove+0x13c>
1c008d5a:	00174583          	lbu	a1,1(a4)
1c008d5e:	ffe68613          	addi	a2,a3,-2
1c008d62:	00b780a3          	sb	a1,1(a5)
1c008d66:	c23d                	beqz	a2,1c008dcc <memmove+0x13c>
1c008d68:	00274583          	lbu	a1,2(a4)
1c008d6c:	ffd68613          	addi	a2,a3,-3
1c008d70:	00b78123          	sb	a1,2(a5)
1c008d74:	ce21                	beqz	a2,1c008dcc <memmove+0x13c>
1c008d76:	00374583          	lbu	a1,3(a4)
1c008d7a:	ffc68613          	addi	a2,a3,-4
1c008d7e:	00b781a3          	sb	a1,3(a5)
1c008d82:	c629                	beqz	a2,1c008dcc <memmove+0x13c>
1c008d84:	00474583          	lbu	a1,4(a4)
1c008d88:	4615                	li	a2,5
1c008d8a:	00b78223          	sb	a1,4(a5)
1c008d8e:	02c68f63          	beq	a3,a2,1c008dcc <memmove+0x13c>
1c008d92:	00574703          	lbu	a4,5(a4)
1c008d96:	00e782a3          	sb	a4,5(a5)
1c008d9a:	8082                	ret
1c008d9c:	167d                	addi	a2,a2,-1
1c008d9e:	00c587b3          	add	a5,a1,a2
1c008da2:	962a                	add	a2,a2,a0
1c008da4:	15fd                	addi	a1,a1,-1
1c008da6:	0007c703          	lbu	a4,0(a5)
1c008daa:	17fd                	addi	a5,a5,-1
1c008dac:	00e60023          	sb	a4,0(a2)
1c008db0:	167d                	addi	a2,a2,-1
1c008db2:	feb79ae3          	bne	a5,a1,1c008da6 <memmove+0x116>
1c008db6:	8082                	ret
1c008db8:	962a                	add	a2,a2,a0
1c008dba:	87aa                	mv	a5,a0
1c008dbc:	0005c703          	lbu	a4,0(a1)
1c008dc0:	0785                	addi	a5,a5,1
1c008dc2:	fee78fa3          	sb	a4,-1(a5)
1c008dc6:	0585                	addi	a1,a1,1
1c008dc8:	fec79ae3          	bne	a5,a2,1c008dbc <memmove+0x12c>
1c008dcc:	8082                	ret
1c008dce:	8082                	ret
1c008dd0:	88ae                	mv	a7,a1
1c008dd2:	882a                	mv	a6,a0
1c008dd4:	8332                	mv	t1,a2
1c008dd6:	b7a1                	j	1c008d1e <memmove+0x8e>

1c008dd8 <strchr>:
1c008dd8:	00054783          	lbu	a5,0(a0)
1c008ddc:	0ff5f593          	andi	a1,a1,255
1c008de0:	00b78863          	beq	a5,a1,1c008df0 <strchr+0x18>
1c008de4:	c799                	beqz	a5,1c008df2 <strchr+0x1a>
1c008de6:	0505                	addi	a0,a0,1
1c008de8:	00054783          	lbu	a5,0(a0)
1c008dec:	feb79ce3          	bne	a5,a1,1c008de4 <strchr+0xc>
1c008df0:	8082                	ret
1c008df2:	0015b593          	seqz	a1,a1
1c008df6:	40b005b3          	neg	a1,a1
1c008dfa:	8d6d                	and	a0,a0,a1
1c008dfc:	8082                	ret

1c008dfe <puts>:
1c008dfe:	00054783          	lbu	a5,0(a0)
1c008e02:	c78d                	beqz	a5,1c008e2c <puts+0x2e>
1c008e04:	f14026f3          	csrr	a3,mhartid
1c008e08:	00369713          	slli	a4,a3,0x3
1c008e0c:	1a10f637          	lui	a2,0x1a10f
1c008e10:	0ff77713          	andi	a4,a4,255
1c008e14:	9732                	add	a4,a4,a2
1c008e16:	6609                	lui	a2,0x2
1c008e18:	068a                	slli	a3,a3,0x2
1c008e1a:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008e1e:	8ef1                	and	a3,a3,a2
1c008e20:	9736                	add	a4,a4,a3
1c008e22:	c31c                	sw	a5,0(a4)
1c008e24:	0505                	addi	a0,a0,1
1c008e26:	00054783          	lbu	a5,0(a0)
1c008e2a:	ffe5                	bnez	a5,1c008e22 <puts+0x24>
1c008e2c:	f1402773          	csrr	a4,mhartid
1c008e30:	00371793          	slli	a5,a4,0x3
1c008e34:	1a10f6b7          	lui	a3,0x1a10f
1c008e38:	0ff7f793          	andi	a5,a5,255
1c008e3c:	97b6                	add	a5,a5,a3
1c008e3e:	6689                	lui	a3,0x2
1c008e40:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008e44:	070a                	slli	a4,a4,0x2
1c008e46:	8f75                	and	a4,a4,a3
1c008e48:	97ba                	add	a5,a5,a4
1c008e4a:	4729                	li	a4,10
1c008e4c:	c398                	sw	a4,0(a5)
1c008e4e:	4501                	li	a0,0
1c008e50:	8082                	ret

1c008e52 <pos_libc_fputc_locked>:
1c008e52:	6689                	lui	a3,0x2
1c008e54:	f14027f3          	csrr	a5,mhartid
1c008e58:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008e5c:	00379713          	slli	a4,a5,0x3
1c008e60:	078a                	slli	a5,a5,0x2
1c008e62:	8ff5                	and	a5,a5,a3
1c008e64:	0ff77713          	andi	a4,a4,255
1c008e68:	1a10f6b7          	lui	a3,0x1a10f
1c008e6c:	9736                	add	a4,a4,a3
1c008e6e:	0ff57513          	andi	a0,a0,255
1c008e72:	97ba                	add	a5,a5,a4
1c008e74:	c388                	sw	a0,0(a5)
1c008e76:	4501                	li	a0,0
1c008e78:	8082                	ret

1c008e7a <pos_libc_prf_locked>:
1c008e7a:	a0b1                	j	1c008ec6 <pos_libc_prf>

1c008e7c <exit>:
1c008e7c:	800007b7          	lui	a5,0x80000
1c008e80:	1141                	addi	sp,sp,-16
1c008e82:	8d5d                	or	a0,a0,a5
1c008e84:	c606                	sw	ra,12(sp)
1c008e86:	1a1047b7          	lui	a5,0x1a104
1c008e8a:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008e8e:	36d1                	jal	1c008a52 <pos_wait_forever>

1c008e90 <pos_io_start>:
1c008e90:	4501                	li	a0,0
1c008e92:	8082                	ret

1c008e94 <pos_io_stop>:
1c008e94:	4501                	li	a0,0
1c008e96:	8082                	ret

1c008e98 <printf>:
1c008e98:	7139                	addi	sp,sp,-64
1c008e9a:	02410313          	addi	t1,sp,36
1c008e9e:	d432                	sw	a2,40(sp)
1c008ea0:	862a                	mv	a2,a0
1c008ea2:	1c009537          	lui	a0,0x1c009
1c008ea6:	d22e                	sw	a1,36(sp)
1c008ea8:	d636                	sw	a3,44(sp)
1c008eaa:	4589                	li	a1,2
1c008eac:	869a                	mv	a3,t1
1c008eae:	e5250513          	addi	a0,a0,-430 # 1c008e52 <pos_libc_fputc_locked>
1c008eb2:	ce06                	sw	ra,28(sp)
1c008eb4:	d83a                	sw	a4,48(sp)
1c008eb6:	da3e                	sw	a5,52(sp)
1c008eb8:	dc42                	sw	a6,56(sp)
1c008eba:	de46                	sw	a7,60(sp)
1c008ebc:	c61a                	sw	t1,12(sp)
1c008ebe:	3f75                	jal	1c008e7a <pos_libc_prf_locked>
1c008ec0:	40f2                	lw	ra,28(sp)
1c008ec2:	6121                	addi	sp,sp,64
1c008ec4:	8082                	ret

1c008ec6 <pos_libc_prf>:
1c008ec6:	7169                	addi	sp,sp,-304
1c008ec8:	12812423          	sw	s0,296(sp)
1c008ecc:	12912223          	sw	s1,292(sp)
1c008ed0:	11612823          	sw	s6,272(sp)
1c008ed4:	11712623          	sw	s7,268(sp)
1c008ed8:	11812423          	sw	s8,264(sp)
1c008edc:	11912223          	sw	s9,260(sp)
1c008ee0:	11a12023          	sw	s10,256(sp)
1c008ee4:	12112623          	sw	ra,300(sp)
1c008ee8:	13212023          	sw	s2,288(sp)
1c008eec:	11312e23          	sw	s3,284(sp)
1c008ef0:	11412c23          	sw	s4,280(sp)
1c008ef4:	11512a23          	sw	s5,276(sp)
1c008ef8:	dfee                	sw	s11,252(sp)
1c008efa:	8b2a                	mv	s6,a0
1c008efc:	8d2e                	mv	s10,a1
1c008efe:	84b2                	mv	s1,a2
1c008f00:	8c36                	mv	s8,a3
1c008f02:	4401                	li	s0,0
1c008f04:	1c000bb7          	lui	s7,0x1c000
1c008f08:	02410c93          	addi	s9,sp,36
1c008f0c:	0004c503          	lbu	a0,0(s1)
1c008f10:	0485                	addi	s1,s1,1
1c008f12:	cd19                	beqz	a0,1c008f30 <pos_libc_prf+0x6a>
1c008f14:	02500793          	li	a5,37
1c008f18:	04f50863          	beq	a0,a5,1c008f68 <pos_libc_prf+0xa2>
1c008f1c:	85ea                	mv	a1,s10
1c008f1e:	9b02                	jalr	s6
1c008f20:	57fd                	li	a5,-1
1c008f22:	24f50863          	beq	a0,a5,1c009172 <pos_libc_prf+0x2ac>
1c008f26:	0405                	addi	s0,s0,1
1c008f28:	0004c503          	lbu	a0,0(s1)
1c008f2c:	0485                	addi	s1,s1,1
1c008f2e:	f17d                	bnez	a0,1c008f14 <pos_libc_prf+0x4e>
1c008f30:	8522                	mv	a0,s0
1c008f32:	12c12083          	lw	ra,300(sp)
1c008f36:	12812403          	lw	s0,296(sp)
1c008f3a:	12412483          	lw	s1,292(sp)
1c008f3e:	12012903          	lw	s2,288(sp)
1c008f42:	11c12983          	lw	s3,284(sp)
1c008f46:	11812a03          	lw	s4,280(sp)
1c008f4a:	11412a83          	lw	s5,276(sp)
1c008f4e:	11012b03          	lw	s6,272(sp)
1c008f52:	10c12b83          	lw	s7,268(sp)
1c008f56:	10812c03          	lw	s8,264(sp)
1c008f5a:	10412c83          	lw	s9,260(sp)
1c008f5e:	10012d03          	lw	s10,256(sp)
1c008f62:	5dfe                	lw	s11,252(sp)
1c008f64:	6155                	addi	sp,sp,304
1c008f66:	8082                	ret
1c008f68:	00148a93          	addi	s5,s1,1
1c008f6c:	fffacd83          	lbu	s11,-1(s5) # ff00ffff <pulp__FC+0xff010000>
1c008f70:	02000713          	li	a4,32
1c008f74:	208b8513          	addi	a0,s7,520 # 1c000208 <__DTOR_END__+0x1ec>
1c008f78:	85ee                	mv	a1,s11
1c008f7a:	c83a                	sw	a4,16(sp)
1c008f7c:	cc02                	sw	zero,24(sp)
1c008f7e:	ca02                	sw	zero,20(sp)
1c008f80:	ce02                	sw	zero,28(sp)
1c008f82:	c602                	sw	zero,12(sp)
1c008f84:	02300913          	li	s2,35
1c008f88:	02d00a13          	li	s4,45
1c008f8c:	89d6                	mv	s3,s5
1c008f8e:	35a9                	jal	1c008dd8 <strchr>
1c008f90:	c915                	beqz	a0,1c008fc4 <pos_libc_prf+0xfe>
1c008f92:	212d8963          	beq	s11,s2,1c0091a4 <pos_libc_prf+0x2de>
1c008f96:	1fb97063          	bleu	s11,s2,1c009176 <pos_libc_prf+0x2b0>
1c008f9a:	214d8163          	beq	s11,s4,1c00919c <pos_libc_prf+0x2d6>
1c008f9e:	03000613          	li	a2,48
1c008fa2:	1ecd8863          	beq	s11,a2,1c009192 <pos_libc_prf+0x2cc>
1c008fa6:	02b00693          	li	a3,43
1c008faa:	1edd8063          	beq	s11,a3,1c00918a <pos_libc_prf+0x2c4>
1c008fae:	84d6                	mv	s1,s5
1c008fb0:	00148a93          	addi	s5,s1,1
1c008fb4:	fffacd83          	lbu	s11,-1(s5)
1c008fb8:	208b8513          	addi	a0,s7,520
1c008fbc:	85ee                	mv	a1,s11
1c008fbe:	89d6                	mv	s3,s5
1c008fc0:	3d21                	jal	1c008dd8 <strchr>
1c008fc2:	f961                	bnez	a0,1c008f92 <pos_libc_prf+0xcc>
1c008fc4:	02a00613          	li	a2,42
1c008fc8:	20cd8463          	beq	s11,a2,1c0091d0 <pos_libc_prf+0x30a>
1c008fcc:	fd0d8613          	addi	a2,s11,-48
1c008fd0:	45a5                	li	a1,9
1c008fd2:	4901                	li	s2,0
1c008fd4:	1cc5fe63          	bleu	a2,a1,1c0091b0 <pos_libc_prf+0x2ea>
1c008fd8:	02e00713          	li	a4,46
1c008fdc:	5a7d                	li	s4,-1
1c008fde:	24ed8463          	beq	s11,a4,1c009226 <pos_libc_prf+0x360>
1c008fe2:	1c000837          	lui	a6,0x1c000
1c008fe6:	85ee                	mv	a1,s11
1c008fe8:	21080513          	addi	a0,a6,528 # 1c000210 <__DTOR_END__+0x1f4>
1c008fec:	33f5                	jal	1c008dd8 <strchr>
1c008fee:	84ce                	mv	s1,s3
1c008ff0:	c509                	beqz	a0,1c008ffa <pos_libc_prf+0x134>
1c008ff2:	0009cd83          	lbu	s11,0(s3)
1c008ff6:	00198493          	addi	s1,s3,1
1c008ffa:	06700713          	li	a4,103
1c008ffe:	1fb75963          	ble	s11,a4,1c0091f0 <pos_libc_prf+0x32a>
1c009002:	07000713          	li	a4,112
1c009006:	12ed89e3          	beq	s11,a4,1c009938 <pos_libc_prf+0xa72>
1c00900a:	25b75263          	ble	s11,a4,1c00924e <pos_libc_prf+0x388>
1c00900e:	07500713          	li	a4,117
1c009012:	0aed89e3          	beq	s11,a4,1c0098c4 <pos_libc_prf+0x9fe>
1c009016:	07800713          	li	a4,120
1c00901a:	72ed8b63          	beq	s11,a4,1c009750 <pos_libc_prf+0x88a>
1c00901e:	07300713          	li	a4,115
1c009022:	1aed9ce3          	bne	s11,a4,1c0099da <pos_libc_prf+0xb14>
1c009026:	000c2583          	lw	a1,0(s8)
1c00902a:	004c0a93          	addi	s5,s8,4
1c00902e:	87ae                	mv	a5,a1
1c009030:	4981                	li	s3,0
1c009032:	0c800693          	li	a3,200
1c009036:	a021                	j	1c00903e <pos_libc_prf+0x178>
1c009038:	0985                	addi	s3,s3,1
1c00903a:	5ad98be3          	beq	s3,a3,1c009df0 <pos_libc_prf+0xf2a>
1c00903e:	0007c703          	lbu	a4,0(a5)
1c009042:	0785                	addi	a5,a5,1
1c009044:	fb75                	bnez	a4,1c009038 <pos_libc_prf+0x172>
1c009046:	000a4563          	bltz	s4,1c009050 <pos_libc_prf+0x18a>
1c00904a:	013a5363          	ble	s3,s4,1c009050 <pos_libc_prf+0x18a>
1c00904e:	89d2                	mv	s3,s4
1c009050:	8c56                	mv	s8,s5
1c009052:	ea098de3          	beqz	s3,1c008f0c <pos_libc_prf+0x46>
1c009056:	864e                	mv	a2,s3
1c009058:	8566                	mv	a0,s9
1c00905a:	34ed                	jal	1c008b44 <memcpy>
1c00905c:	8c56                	mv	s8,s5
1c00905e:	0f29d963          	ble	s2,s3,1c009150 <pos_libc_prf+0x28a>
1c009062:	c602                	sw	zero,12(sp)
1c009064:	48f2                	lw	a7,28(sp)
1c009066:	1a0885e3          	beqz	a7,1c009a10 <pos_libc_prf+0xb4a>
1c00906a:	013c87b3          	add	a5,s9,s3
1c00906e:	40f007b3          	neg	a5,a5
1c009072:	8b8d                	andi	a5,a5,3
1c009074:	00378693          	addi	a3,a5,3
1c009078:	4715                	li	a4,5
1c00907a:	413905b3          	sub	a1,s2,s3
1c00907e:	00e6f363          	bleu	a4,a3,1c009084 <pos_libc_prf+0x1be>
1c009082:	4695                	li	a3,5
1c009084:	fff90713          	addi	a4,s2,-1
1c009088:	41370733          	sub	a4,a4,s3
1c00908c:	06d76663          	bltu	a4,a3,1c0090f8 <pos_libc_prf+0x232>
1c009090:	86ce                	mv	a3,s3
1c009092:	cb9d                	beqz	a5,1c0090c8 <pos_libc_prf+0x202>
1c009094:	0f010813          	addi	a6,sp,240
1c009098:	013806b3          	add	a3,a6,s3
1c00909c:	02000713          	li	a4,32
1c0090a0:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c0090a4:	4605                	li	a2,1
1c0090a6:	00198693          	addi	a3,s3,1
1c0090aa:	00c78f63          	beq	a5,a2,1c0090c8 <pos_libc_prf+0x202>
1c0090ae:	96c2                	add	a3,a3,a6
1c0090b0:	f2e68a23          	sb	a4,-204(a3)
1c0090b4:	460d                	li	a2,3
1c0090b6:	00298693          	addi	a3,s3,2
1c0090ba:	00c79763          	bne	a5,a2,1c0090c8 <pos_libc_prf+0x202>
1c0090be:	96c2                	add	a3,a3,a6
1c0090c0:	f2e68a23          	sb	a4,-204(a3)
1c0090c4:	00398693          	addi	a3,s3,3
1c0090c8:	8d9d                	sub	a1,a1,a5
1c0090ca:	97ce                	add	a5,a5,s3
1c0090cc:	0025d613          	srli	a2,a1,0x2
1c0090d0:	97e6                	add	a5,a5,s9
1c0090d2:	4701                	li	a4,0
1c0090d4:	1c0008b7          	lui	a7,0x1c000
1c0090d8:	20488893          	addi	a7,a7,516 # 1c000204 <__DTOR_END__+0x1e8>
1c0090dc:	0008a883          	lw	a7,0(a7)
1c0090e0:	0705                	addi	a4,a4,1
1c0090e2:	0117a023          	sw	a7,0(a5)
1c0090e6:	0791                	addi	a5,a5,4
1c0090e8:	fec766e3          	bltu	a4,a2,1c0090d4 <pos_libc_prf+0x20e>
1c0090ec:	ffc5f793          	andi	a5,a1,-4
1c0090f0:	00d789b3          	add	s3,a5,a3
1c0090f4:	04b78b63          	beq	a5,a1,1c00914a <pos_libc_prf+0x284>
1c0090f8:	1988                	addi	a0,sp,240
1c0090fa:	01350733          	add	a4,a0,s3
1c0090fe:	02000793          	li	a5,32
1c009102:	f2f70a23          	sb	a5,-204(a4)
1c009106:	00198713          	addi	a4,s3,1
1c00910a:	05275063          	ble	s2,a4,1c00914a <pos_libc_prf+0x284>
1c00910e:	972a                	add	a4,a4,a0
1c009110:	f2f70a23          	sb	a5,-204(a4)
1c009114:	00298713          	addi	a4,s3,2
1c009118:	03275963          	ble	s2,a4,1c00914a <pos_libc_prf+0x284>
1c00911c:	972a                	add	a4,a4,a0
1c00911e:	f2f70a23          	sb	a5,-204(a4)
1c009122:	00398713          	addi	a4,s3,3
1c009126:	03275263          	ble	s2,a4,1c00914a <pos_libc_prf+0x284>
1c00912a:	972a                	add	a4,a4,a0
1c00912c:	f2f70a23          	sb	a5,-204(a4)
1c009130:	00498713          	addi	a4,s3,4
1c009134:	01275b63          	ble	s2,a4,1c00914a <pos_libc_prf+0x284>
1c009138:	972a                	add	a4,a4,a0
1c00913a:	f2f70a23          	sb	a5,-204(a4)
1c00913e:	0995                	addi	s3,s3,5
1c009140:	0129d563          	ble	s2,s3,1c00914a <pos_libc_prf+0x284>
1c009144:	99aa                	add	s3,s3,a0
1c009146:	f2f98a23          	sb	a5,-204(s3)
1c00914a:	89ca                	mv	s3,s2
1c00914c:	dc0980e3          	beqz	s3,1c008f0c <pos_libc_prf+0x46>
1c009150:	8966                	mv	s2,s9
1c009152:	5a7d                	li	s4,-1
1c009154:	41940ab3          	sub	s5,s0,s9
1c009158:	a029                	j	1c009162 <pos_libc_prf+0x29c>
1c00915a:	01590433          	add	s0,s2,s5
1c00915e:	da0987e3          	beqz	s3,1c008f0c <pos_libc_prf+0x46>
1c009162:	00094503          	lbu	a0,0(s2)
1c009166:	85ea                	mv	a1,s10
1c009168:	9b02                	jalr	s6
1c00916a:	0905                	addi	s2,s2,1
1c00916c:	19fd                	addi	s3,s3,-1
1c00916e:	ff4516e3          	bne	a0,s4,1c00915a <pos_libc_prf+0x294>
1c009172:	547d                	li	s0,-1
1c009174:	bb75                	j	1c008f30 <pos_libc_prf+0x6a>
1c009176:	da0d8de3          	beqz	s11,1c008f30 <pos_libc_prf+0x6a>
1c00917a:	02000513          	li	a0,32
1c00917e:	e2ad98e3          	bne	s11,a0,1c008fae <pos_libc_prf+0xe8>
1c009182:	4785                	li	a5,1
1c009184:	cc3e                	sw	a5,24(sp)
1c009186:	84d6                	mv	s1,s5
1c009188:	b525                	j	1c008fb0 <pos_libc_prf+0xea>
1c00918a:	4705                	li	a4,1
1c00918c:	ca3a                	sw	a4,20(sp)
1c00918e:	84d6                	mv	s1,s5
1c009190:	b505                	j	1c008fb0 <pos_libc_prf+0xea>
1c009192:	03000893          	li	a7,48
1c009196:	c846                	sw	a7,16(sp)
1c009198:	84d6                	mv	s1,s5
1c00919a:	bd19                	j	1c008fb0 <pos_libc_prf+0xea>
1c00919c:	4685                	li	a3,1
1c00919e:	ce36                	sw	a3,28(sp)
1c0091a0:	84d6                	mv	s1,s5
1c0091a2:	b539                	j	1c008fb0 <pos_libc_prf+0xea>
1c0091a4:	4805                	li	a6,1
1c0091a6:	c642                	sw	a6,12(sp)
1c0091a8:	84d6                	mv	s1,s5
1c0091aa:	b519                	j	1c008fb0 <pos_libc_prf+0xea>
1c0091ac:	84d6                	mv	s1,s5
1c0091ae:	0a85                	addi	s5,s5,1
1c0091b0:	00291793          	slli	a5,s2,0x2
1c0091b4:	97ca                	add	a5,a5,s2
1c0091b6:	0786                	slli	a5,a5,0x1
1c0091b8:	97ee                	add	a5,a5,s11
1c0091ba:	000acd83          	lbu	s11,0(s5)
1c0091be:	fd078913          	addi	s2,a5,-48
1c0091c2:	fd0d8793          	addi	a5,s11,-48
1c0091c6:	fef5f3e3          	bleu	a5,a1,1c0091ac <pos_libc_prf+0x2e6>
1c0091ca:	00248993          	addi	s3,s1,2
1c0091ce:	a811                	j	1c0091e2 <pos_libc_prf+0x31c>
1c0091d0:	000c2903          	lw	s2,0(s8)
1c0091d4:	0c11                	addi	s8,s8,4
1c0091d6:	14094663          	bltz	s2,1c009322 <pos_libc_prf+0x45c>
1c0091da:	000acd83          	lbu	s11,0(s5)
1c0091de:	00248993          	addi	s3,s1,2
1c0091e2:	0c800713          	li	a4,200
1c0091e6:	df2779e3          	bleu	s2,a4,1c008fd8 <pos_libc_prf+0x112>
1c0091ea:	0c800913          	li	s2,200
1c0091ee:	b3ed                	j	1c008fd8 <pos_libc_prf+0x112>
1c0091f0:	06500713          	li	a4,101
1c0091f4:	12eddc63          	ble	a4,s11,1c00932c <pos_libc_prf+0x466>
1c0091f8:	04700713          	li	a4,71
1c0091fc:	55b74063          	blt	a4,s11,1c00973c <pos_libc_prf+0x876>
1c009200:	04500713          	li	a4,69
1c009204:	12edd463          	ble	a4,s11,1c00932c <pos_libc_prf+0x466>
1c009208:	d20d84e3          	beqz	s11,1c008f30 <pos_libc_prf+0x6a>
1c00920c:	02500713          	li	a4,37
1c009210:	7ced9563          	bne	s11,a4,1c0099da <pos_libc_prf+0xb14>
1c009214:	85ea                	mv	a1,s10
1c009216:	02500513          	li	a0,37
1c00921a:	9b02                	jalr	s6
1c00921c:	57fd                	li	a5,-1
1c00921e:	f4f50ae3          	beq	a0,a5,1c009172 <pos_libc_prf+0x2ac>
1c009222:	0405                	addi	s0,s0,1
1c009224:	b311                	j	1c008f28 <pos_libc_prf+0x62>
1c009226:	0009c783          	lbu	a5,0(s3)
1c00922a:	02a00713          	li	a4,42
1c00922e:	00198693          	addi	a3,s3,1
1c009232:	0ae79d63          	bne	a5,a4,1c0092ec <pos_libc_prf+0x426>
1c009236:	000c2a03          	lw	s4,0(s8)
1c00923a:	0019cd83          	lbu	s11,1(s3)
1c00923e:	0c11                	addi	s8,s8,4
1c009240:	0989                	addi	s3,s3,2
1c009242:	0c800713          	li	a4,200
1c009246:	d9475ee3          	ble	s4,a4,1c008fe2 <pos_libc_prf+0x11c>
1c00924a:	5a7d                	li	s4,-1
1c00924c:	bb59                	j	1c008fe2 <pos_libc_prf+0x11c>
1c00924e:	06e00713          	li	a4,110
1c009252:	76ed8e63          	beq	s11,a4,1c0099ce <pos_libc_prf+0xb08>
1c009256:	5bb75663          	ble	s11,a4,1c009802 <pos_libc_prf+0x93c>
1c00925a:	4732                	lw	a4,12(sp)
1c00925c:	004c0513          	addi	a0,s8,4
1c009260:	000c2683          	lw	a3,0(s8)
1c009264:	1c070de3          	beqz	a4,1c009c3e <pos_libc_prf+0xd78>
1c009268:	03000793          	li	a5,48
1c00926c:	02f10223          	sb	a5,36(sp)
1c009270:	16068de3          	beqz	a3,1c009bea <pos_libc_prf+0xd24>
1c009274:	02510593          	addi	a1,sp,37
1c009278:	872e                	mv	a4,a1
1c00927a:	87ba                	mv	a5,a4
1c00927c:	0076f613          	andi	a2,a3,7
1c009280:	0785                	addi	a5,a5,1
1c009282:	03060613          	addi	a2,a2,48
1c009286:	828d                	srli	a3,a3,0x3
1c009288:	fec78fa3          	sb	a2,-1(a5)
1c00928c:	fae5                	bnez	a3,1c00927c <pos_libc_prf+0x3b6>
1c00928e:	40b789b3          	sub	s3,a5,a1
1c009292:	0149db63          	ble	s4,s3,1c0092a8 <pos_libc_prf+0x3e2>
1c009296:	03000693          	li	a3,48
1c00929a:	0785                	addi	a5,a5,1
1c00929c:	fed78fa3          	sb	a3,-1(a5)
1c0092a0:	40b789b3          	sub	s3,a5,a1
1c0092a4:	ff49cbe3          	blt	s3,s4,1c00929a <pos_libc_prf+0x3d4>
1c0092a8:	00078023          	sb	zero,0(a5)
1c0092ac:	17fd                	addi	a5,a5,-1
1c0092ae:	00f77e63          	bleu	a5,a4,1c0092ca <pos_libc_prf+0x404>
1c0092b2:	00074603          	lbu	a2,0(a4)
1c0092b6:	0007c683          	lbu	a3,0(a5)
1c0092ba:	00c78023          	sb	a2,0(a5)
1c0092be:	00d70023          	sb	a3,0(a4)
1c0092c2:	17fd                	addi	a5,a5,-1
1c0092c4:	0705                	addi	a4,a4,1
1c0092c6:	fef766e3          	bltu	a4,a5,1c0092b2 <pos_libc_prf+0x3ec>
1c0092ca:	4832                	lw	a6,12(sp)
1c0092cc:	57fd                	li	a5,-1
1c0092ce:	99c2                	add	s3,s3,a6
1c0092d0:	22fa0ee3          	beq	s4,a5,1c009d0c <pos_libc_prf+0xe46>
1c0092d4:	0c800793          	li	a5,200
1c0092d8:	e937cde3          	blt	a5,s3,1c009172 <pos_libc_prf+0x2ac>
1c0092dc:	02000693          	li	a3,32
1c0092e0:	8c2a                	mv	s8,a0
1c0092e2:	c602                	sw	zero,12(sp)
1c0092e4:	c836                	sw	a3,16(sp)
1c0092e6:	d729cfe3          	blt	s3,s2,1c009064 <pos_libc_prf+0x19e>
1c0092ea:	b58d                	j	1c00914c <pos_libc_prf+0x286>
1c0092ec:	fd078593          	addi	a1,a5,-48
1c0092f0:	4725                	li	a4,9
1c0092f2:	8dbe                	mv	s11,a5
1c0092f4:	4a01                	li	s4,0
1c0092f6:	4625                	li	a2,9
1c0092f8:	00b77663          	bleu	a1,a4,1c009304 <pos_libc_prf+0x43e>
1c0092fc:	1070006f          	j	1c009c02 <pos_libc_prf+0xd3c>
1c009300:	89b6                	mv	s3,a3
1c009302:	0685                	addi	a3,a3,1
1c009304:	002a1793          	slli	a5,s4,0x2
1c009308:	97d2                	add	a5,a5,s4
1c00930a:	0786                	slli	a5,a5,0x1
1c00930c:	97ee                	add	a5,a5,s11
1c00930e:	0006cd83          	lbu	s11,0(a3)
1c009312:	fd078a13          	addi	s4,a5,-48
1c009316:	fd0d8793          	addi	a5,s11,-48
1c00931a:	fef673e3          	bleu	a5,a2,1c009300 <pos_libc_prf+0x43a>
1c00931e:	0989                	addi	s3,s3,2
1c009320:	b70d                	j	1c009242 <pos_libc_prf+0x37c>
1c009322:	4785                	li	a5,1
1c009324:	41200933          	neg	s2,s2
1c009328:	ce3e                	sw	a5,28(sp)
1c00932a:	bd45                	j	1c0091da <pos_libc_prf+0x314>
1c00932c:	0c1d                	addi	s8,s8,7
1c00932e:	ff8c7c13          	andi	s8,s8,-8
1c009332:	000c2703          	lw	a4,0(s8)
1c009336:	004c2803          	lw	a6,4(s8)
1c00933a:	01575693          	srli	a3,a4,0x15
1c00933e:	00b81613          	slli	a2,a6,0xb
1c009342:	8e55                	or	a2,a2,a3
1c009344:	01485513          	srli	a0,a6,0x14
1c009348:	00b71693          	slli	a3,a4,0xb
1c00934c:	80000737          	lui	a4,0x80000
1c009350:	fff74713          	not	a4,a4
1c009354:	7ff57513          	andi	a0,a0,2047
1c009358:	7ff00593          	li	a1,2047
1c00935c:	0c21                	addi	s8,s8,8
1c00935e:	8e79                	and	a2,a2,a4
1c009360:	0ab504e3          	beq	a0,a1,1c009c08 <pos_libc_prf+0xd42>
1c009364:	04600593          	li	a1,70
1c009368:	00bd9463          	bne	s11,a1,1c009370 <pos_libc_prf+0x4aa>
1c00936c:	06600d93          	li	s11,102
1c009370:	00d56733          	or	a4,a0,a3
1c009374:	8f51                	or	a4,a4,a2
1c009376:	7e070963          	beqz	a4,1c009b68 <pos_libc_prf+0xca2>
1c00937a:	800005b7          	lui	a1,0x80000
1c00937e:	c0250513          	addi	a0,a0,-1022
1c009382:	8dd1                	or	a1,a1,a2
1c009384:	26084ae3          	bltz	a6,1c009df8 <pos_libc_prf+0xf32>
1c009388:	4852                	lw	a6,20(sp)
1c00938a:	220808e3          	beqz	a6,1c009dba <pos_libc_prf+0xef4>
1c00938e:	02b00713          	li	a4,43
1c009392:	02e10223          	sb	a4,36(sp)
1c009396:	02510e93          	addi	t4,sp,37
1c00939a:	5779                	li	a4,-2
1c00939c:	4301                	li	t1,0
1c00939e:	06e55763          	ble	a4,a0,1c00940c <pos_libc_prf+0x546>
1c0093a2:	33333837          	lui	a6,0x33333
1c0093a6:	800008b7          	lui	a7,0x80000
1c0093aa:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c0093ae:	fff8c893          	not	a7,a7
1c0093b2:	5e79                	li	t3,-2
1c0093b4:	a011                	j	1c0093b8 <pos_libc_prf+0x4f2>
1c0093b6:	853e                	mv	a0,a5
1c0093b8:	01f59613          	slli	a2,a1,0x1f
1c0093bc:	0016d713          	srli	a4,a3,0x1
1c0093c0:	0016f793          	andi	a5,a3,1
1c0093c4:	8f51                	or	a4,a4,a2
1c0093c6:	00e786b3          	add	a3,a5,a4
1c0093ca:	00f6b7b3          	sltu	a5,a3,a5
1c0093ce:	8185                	srli	a1,a1,0x1
1c0093d0:	95be                	add	a1,a1,a5
1c0093d2:	00150793          	addi	a5,a0,1
1c0093d6:	feb860e3          	bltu	a6,a1,1c0093b6 <pos_libc_prf+0x4f0>
1c0093da:	00269613          	slli	a2,a3,0x2
1c0093de:	01e6df13          	srli	t5,a3,0x1e
1c0093e2:	00259713          	slli	a4,a1,0x2
1c0093e6:	96b2                	add	a3,a3,a2
1c0093e8:	00ef6733          	or	a4,t5,a4
1c0093ec:	95ba                	add	a1,a1,a4
1c0093ee:	00c6b633          	sltu	a2,a3,a2
1c0093f2:	95b2                	add	a1,a1,a2
1c0093f4:	01f6d713          	srli	a4,a3,0x1f
1c0093f8:	0509                	addi	a0,a0,2
1c0093fa:	137d                	addi	t1,t1,-1
1c0093fc:	01159663          	bne	a1,a7,1c009408 <pos_libc_prf+0x542>
1c009400:	0686                	slli	a3,a3,0x1
1c009402:	ffe76593          	ori	a1,a4,-2
1c009406:	853e                	mv	a0,a5
1c009408:	fbc548e3          	blt	a0,t3,1c0093b8 <pos_libc_prf+0x4f2>
1c00940c:	06a05563          	blez	a0,1c009476 <pos_libc_prf+0x5b0>
1c009410:	800008b7          	lui	a7,0x80000
1c009414:	4e15                	li	t3,5
1c009416:	fff8c893          	not	a7,a7
1c00941a:	00268613          	addi	a2,a3,2
1c00941e:	00d636b3          	sltu	a3,a2,a3
1c009422:	95b6                	add	a1,a1,a3
1c009424:	03c5d7b3          	divu	a5,a1,t3
1c009428:	00279713          	slli	a4,a5,0x2
1c00942c:	973e                	add	a4,a4,a5
1c00942e:	8d99                	sub	a1,a1,a4
1c009430:	01d59713          	slli	a4,a1,0x1d
1c009434:	00365593          	srli	a1,a2,0x3
1c009438:	8dd9                	or	a1,a1,a4
1c00943a:	03c5d5b3          	divu	a1,a1,t3
1c00943e:	00359693          	slli	a3,a1,0x3
1c009442:	00559713          	slli	a4,a1,0x5
1c009446:	9736                	add	a4,a4,a3
1c009448:	40e60733          	sub	a4,a2,a4
1c00944c:	03c75733          	divu	a4,a4,t3
1c009450:	81f5                	srli	a1,a1,0x1d
1c009452:	96ba                	add	a3,a3,a4
1c009454:	97ae                	add	a5,a5,a1
1c009456:	00e6b733          	sltu	a4,a3,a4
1c00945a:	00f705b3          	add	a1,a4,a5
1c00945e:	157d                	addi	a0,a0,-1
1c009460:	0305                	addi	t1,t1,1
1c009462:	01f6d793          	srli	a5,a3,0x1f
1c009466:	0586                	slli	a1,a1,0x1
1c009468:	8ddd                	or	a1,a1,a5
1c00946a:	0686                	slli	a3,a3,0x1
1c00946c:	157d                	addi	a0,a0,-1
1c00946e:	feb8fae3          	bleu	a1,a7,1c009462 <pos_libc_prf+0x59c>
1c009472:	faa044e3          	bgtz	a0,1c00941a <pos_libc_prf+0x554>
1c009476:	4611                	li	a2,4
1c009478:	01f59713          	slli	a4,a1,0x1f
1c00947c:	0016d793          	srli	a5,a3,0x1
1c009480:	8fd9                	or	a5,a5,a4
1c009482:	8a85                	andi	a3,a3,1
1c009484:	00f688b3          	add	a7,a3,a5
1c009488:	8185                	srli	a1,a1,0x1
1c00948a:	00d8b6b3          	sltu	a3,a7,a3
1c00948e:	00b68733          	add	a4,a3,a1
1c009492:	0505                	addi	a0,a0,1
1c009494:	86c6                	mv	a3,a7
1c009496:	85ba                	mv	a1,a4
1c009498:	fec510e3          	bne	a0,a2,1c009478 <pos_libc_prf+0x5b2>
1c00949c:	06700693          	li	a3,103
1c0094a0:	040a48e3          	bltz	s4,1c009cf0 <pos_libc_prf+0xe2a>
1c0094a4:	70dd8b63          	beq	s11,a3,1c009bba <pos_libc_prf+0xcf4>
1c0094a8:	04700693          	li	a3,71
1c0094ac:	70dd8763          	beq	s11,a3,1c009bba <pos_libc_prf+0xcf4>
1c0094b0:	06600693          	li	a3,102
1c0094b4:	08dd89e3          	beq	s11,a3,1c009d46 <pos_libc_prf+0xe80>
1c0094b8:	001a0e13          	addi	t3,s4,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c0094bc:	46c1                	li	a3,16
1c0094be:	01c6d363          	ble	t3,a3,1c0094c4 <pos_libc_prf+0x5fe>
1c0094c2:	4e41                	li	t3,16
1c0094c4:	1e7d                	addi	t3,t3,-1
1c0094c6:	4f81                	li	t6,0
1c0094c8:	4681                	li	a3,0
1c0094ca:	08000637          	lui	a2,0x8000
1c0094ce:	4f15                	li	t5,5
1c0094d0:	52fd                	li	t0,-1
1c0094d2:	00268593          	addi	a1,a3,2
1c0094d6:	00d5b7b3          	sltu	a5,a1,a3
1c0094da:	97b2                	add	a5,a5,a2
1c0094dc:	03e7d633          	divu	a2,a5,t5
1c0094e0:	00261693          	slli	a3,a2,0x2
1c0094e4:	96b2                	add	a3,a3,a2
1c0094e6:	8f95                	sub	a5,a5,a3
1c0094e8:	07f6                	slli	a5,a5,0x1d
1c0094ea:	0035d513          	srli	a0,a1,0x3
1c0094ee:	8d5d                	or	a0,a0,a5
1c0094f0:	03e55533          	divu	a0,a0,t5
1c0094f4:	00351693          	slli	a3,a0,0x3
1c0094f8:	00551793          	slli	a5,a0,0x5
1c0094fc:	97b6                	add	a5,a5,a3
1c0094fe:	40f587b3          	sub	a5,a1,a5
1c009502:	03e7d7b3          	divu	a5,a5,t5
1c009506:	8175                	srli	a0,a0,0x1d
1c009508:	96be                	add	a3,a3,a5
1c00950a:	00f6b7b3          	sltu	a5,a3,a5
1c00950e:	962a                	add	a2,a2,a0
1c009510:	963e                	add	a2,a2,a5
1c009512:	01f61513          	slli	a0,a2,0x1f
1c009516:	0016d793          	srli	a5,a3,0x1
1c00951a:	0016f593          	andi	a1,a3,1
1c00951e:	8fc9                	or	a5,a5,a0
1c009520:	00f586b3          	add	a3,a1,a5
1c009524:	8205                	srli	a2,a2,0x1
1c009526:	00b6b7b3          	sltu	a5,a3,a1
1c00952a:	1e7d                	addi	t3,t3,-1
1c00952c:	963e                	add	a2,a2,a5
1c00952e:	fa5e12e3          	bne	t3,t0,1c0094d2 <pos_libc_prf+0x60c>
1c009532:	96c6                	add	a3,a3,a7
1c009534:	963a                	add	a2,a2,a4
1c009536:	0116b8b3          	sltu	a7,a3,a7
1c00953a:	9646                	add	a2,a2,a7
1c00953c:	f00005b7          	lui	a1,0xf0000
1c009540:	8df1                	and	a1,a1,a2
1c009542:	8736                	mv	a4,a3
1c009544:	cdb9                	beqz	a1,1c0095a2 <pos_libc_prf+0x6dc>
1c009546:	0689                	addi	a3,a3,2
1c009548:	00e6b733          	sltu	a4,a3,a4
1c00954c:	963a                	add	a2,a2,a4
1c00954e:	4815                	li	a6,5
1c009550:	03065533          	divu	a0,a2,a6
1c009554:	00251713          	slli	a4,a0,0x2
1c009558:	972a                	add	a4,a4,a0
1c00955a:	8e19                	sub	a2,a2,a4
1c00955c:	01d61713          	slli	a4,a2,0x1d
1c009560:	0036d593          	srli	a1,a3,0x3
1c009564:	8dd9                	or	a1,a1,a4
1c009566:	0305d5b3          	divu	a1,a1,a6
1c00956a:	00359613          	slli	a2,a1,0x3
1c00956e:	00559713          	slli	a4,a1,0x5
1c009572:	9732                	add	a4,a4,a2
1c009574:	40e68733          	sub	a4,a3,a4
1c009578:	03075733          	divu	a4,a4,a6
1c00957c:	81f5                	srli	a1,a1,0x1d
1c00957e:	963a                	add	a2,a2,a4
1c009580:	00e63733          	sltu	a4,a2,a4
1c009584:	95aa                	add	a1,a1,a0
1c009586:	00b706b3          	add	a3,a4,a1
1c00958a:	01f69593          	slli	a1,a3,0x1f
1c00958e:	00165713          	srli	a4,a2,0x1
1c009592:	8f4d                	or	a4,a4,a1
1c009594:	8a05                	andi	a2,a2,1
1c009596:	9732                	add	a4,a4,a2
1c009598:	8285                	srli	a3,a3,0x1
1c00959a:	00c73633          	sltu	a2,a4,a2
1c00959e:	9636                	add	a2,a2,a3
1c0095a0:	0305                	addi	t1,t1,1
1c0095a2:	001e8993          	addi	s3,t4,1
1c0095a6:	06600693          	li	a3,102
1c0095aa:	85ce                	mv	a1,s3
1c0095ac:	6add8663          	beq	s11,a3,1c009c58 <pos_libc_prf+0xd92>
1c0095b0:	00271693          	slli	a3,a4,0x2
1c0095b4:	01e75593          	srli	a1,a4,0x1e
1c0095b8:	00261513          	slli	a0,a2,0x2
1c0095bc:	9736                	add	a4,a4,a3
1c0095be:	8d4d                	or	a0,a0,a1
1c0095c0:	962a                	add	a2,a2,a0
1c0095c2:	00d735b3          	sltu	a1,a4,a3
1c0095c6:	95b2                	add	a1,a1,a2
1c0095c8:	01f75693          	srli	a3,a4,0x1f
1c0095cc:	0586                	slli	a1,a1,0x1
1c0095ce:	8dd5                	or	a1,a1,a3
1c0095d0:	01c5d693          	srli	a3,a1,0x1c
1c0095d4:	03068613          	addi	a2,a3,48
1c0095d8:	00d036b3          	snez	a3,a3
1c0095dc:	10000537          	lui	a0,0x10000
1c0095e0:	40d30333          	sub	t1,t1,a3
1c0095e4:	46b2                	lw	a3,12(sp)
1c0095e6:	157d                	addi	a0,a0,-1
1c0095e8:	00ce8023          	sb	a2,0(t4)
1c0095ec:	0706                	slli	a4,a4,0x1
1c0095ee:	8de9                	and	a1,a1,a0
1c0095f0:	64068b63          	beqz	a3,1c009c46 <pos_libc_prf+0xd80>
1c0095f4:	02e00693          	li	a3,46
1c0095f8:	00de80a3          	sb	a3,1(t4)
1c0095fc:	002e8513          	addi	a0,t4,2
1c009600:	020a00e3          	beqz	s4,1c009e20 <pos_libc_prf+0xf5a>
1c009604:	014509b3          	add	s3,a0,s4
1c009608:	48bd                	li	a7,15
1c00960a:	03000e13          	li	t3,48
1c00960e:	00271793          	slli	a5,a4,0x2
1c009612:	01e75813          	srli	a6,a4,0x1e
1c009616:	00259693          	slli	a3,a1,0x2
1c00961a:	00e78633          	add	a2,a5,a4
1c00961e:	00d866b3          	or	a3,a6,a3
1c009622:	96ae                	add	a3,a3,a1
1c009624:	00f637b3          	sltu	a5,a2,a5
1c009628:	97b6                	add	a5,a5,a3
1c00962a:	0786                	slli	a5,a5,0x1
1c00962c:	01f65693          	srli	a3,a2,0x1f
1c009630:	8fd5                	or	a5,a5,a3
1c009632:	01c7d693          	srli	a3,a5,0x1c
1c009636:	03068693          	addi	a3,a3,48
1c00963a:	0505                	addi	a0,a0,1
1c00963c:	3b105663          	blez	a7,1c0099e8 <pos_libc_prf+0xb22>
1c009640:	10000837          	lui	a6,0x10000
1c009644:	187d                	addi	a6,a6,-1
1c009646:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c00964a:	18fd                	addi	a7,a7,-1
1c00964c:	00161713          	slli	a4,a2,0x1
1c009650:	0107f5b3          	and	a1,a5,a6
1c009654:	faa99de3          	bne	s3,a0,1c00960e <pos_libc_prf+0x748>
1c009658:	0c0f9263          	bnez	t6,1c00971c <pos_libc_prf+0x856>
1c00965c:	fdfdf713          	andi	a4,s11,-33
1c009660:	04500693          	li	a3,69
1c009664:	02d71963          	bne	a4,a3,1c009696 <pos_libc_prf+0x7d0>
1c009668:	87ee                	mv	a5,s11
1c00966a:	00f98023          	sb	a5,0(s3)
1c00966e:	6a034763          	bltz	t1,1c009d1c <pos_libc_prf+0xe56>
1c009672:	02b00793          	li	a5,43
1c009676:	00f980a3          	sb	a5,1(s3)
1c00967a:	47a9                	li	a5,10
1c00967c:	02f34733          	div	a4,t1,a5
1c009680:	02f367b3          	rem	a5,t1,a5
1c009684:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c009688:	03078793          	addi	a5,a5,48
1c00968c:	00e98123          	sb	a4,2(s3)
1c009690:	00f981a3          	sb	a5,3(s3)
1c009694:	0991                	addi	s3,s3,4
1c009696:	00098023          	sb	zero,0(s3)
1c00969a:	419989b3          	sub	s3,s3,s9
1c00969e:	48d2                	lw	a7,20(sp)
1c0096a0:	4662                	lw	a2,24(sp)
1c0096a2:	00c8e8b3          	or	a7,a7,a2
1c0096a6:	c646                	sw	a7,12(sp)
1c0096a8:	34089d63          	bnez	a7,1c009a02 <pos_libc_prf+0xb3c>
1c0096ac:	02414703          	lbu	a4,36(sp)
1c0096b0:	02d00793          	li	a5,45
1c0096b4:	34f70763          	beq	a4,a5,1c009a02 <pos_libc_prf+0xb3c>
1c0096b8:	0c800793          	li	a5,200
1c0096bc:	ab37cbe3          	blt	a5,s3,1c009172 <pos_libc_prf+0x2ac>
1c0096c0:	9b29c2e3          	blt	s3,s2,1c009064 <pos_libc_prf+0x19e>
1c0096c4:	b461                	j	1c00914c <pos_libc_prf+0x286>
1c0096c6:	0585                	addi	a1,a1,1
1c0096c8:	00271793          	slli	a5,a4,0x2
1c0096cc:	01e75e13          	srli	t3,a4,0x1e
1c0096d0:	00261693          	slli	a3,a2,0x2
1c0096d4:	00e788b3          	add	a7,a5,a4
1c0096d8:	00de66b3          	or	a3,t3,a3
1c0096dc:	96b2                	add	a3,a3,a2
1c0096de:	00f8b7b3          	sltu	a5,a7,a5
1c0096e2:	97b6                	add	a5,a5,a3
1c0096e4:	0786                	slli	a5,a5,0x1
1c0096e6:	01f8d693          	srli	a3,a7,0x1f
1c0096ea:	8fd5                	or	a5,a5,a3
1c0096ec:	01c7de13          	srli	t3,a5,0x1c
1c0096f0:	03000693          	li	a3,48
1c0096f4:	00a05c63          	blez	a0,1c00970c <pos_libc_prf+0x846>
1c0096f8:	00189713          	slli	a4,a7,0x1
1c0096fc:	100008b7          	lui	a7,0x10000
1c009700:	18fd                	addi	a7,a7,-1
1c009702:	030e0693          	addi	a3,t3,48
1c009706:	157d                	addi	a0,a0,-1
1c009708:	0117f633          	and	a2,a5,a7
1c00970c:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c009710:	fab99be3          	bne	s3,a1,1c0096c6 <pos_libc_prf+0x800>
1c009714:	014809b3          	add	s3,a6,s4
1c009718:	f60f8fe3          	beqz	t6,1c009696 <pos_libc_prf+0x7d0>
1c00971c:	03000613          	li	a2,48
1c009720:	a011                	j	1c009724 <pos_libc_prf+0x85e>
1c009722:	89ba                	mv	s3,a4
1c009724:	fff9c683          	lbu	a3,-1(s3)
1c009728:	fff98713          	addi	a4,s3,-1
1c00972c:	fec68be3          	beq	a3,a2,1c009722 <pos_libc_prf+0x85c>
1c009730:	02e00613          	li	a2,46
1c009734:	f2c694e3          	bne	a3,a2,1c00965c <pos_libc_prf+0x796>
1c009738:	89ba                	mv	s3,a4
1c00973a:	b70d                	j	1c00965c <pos_libc_prf+0x796>
1c00973c:	06300713          	li	a4,99
1c009740:	16ed8863          	beq	s11,a4,1c0098b0 <pos_libc_prf+0x9ea>
1c009744:	0db74363          	blt	a4,s11,1c00980a <pos_libc_prf+0x944>
1c009748:	05800713          	li	a4,88
1c00974c:	28ed9763          	bne	s11,a4,1c0099da <pos_libc_prf+0xb14>
1c009750:	48b2                	lw	a7,12(sp)
1c009752:	004c0813          	addi	a6,s8,4
1c009756:	000c2583          	lw	a1,0(s8)
1c00975a:	3c088a63          	beqz	a7,1c009b2e <pos_libc_prf+0xc68>
1c00975e:	7761                	lui	a4,0xffff8
1c009760:	83074713          	xori	a4,a4,-2000
1c009764:	02e11223          	sh	a4,36(sp)
1c009768:	4889                	li	a7,2
1c00976a:	02610693          	addi	a3,sp,38
1c00976e:	8736                	mv	a4,a3
1c009770:	4e25                	li	t3,9
1c009772:	00f5f613          	andi	a2,a1,15
1c009776:	0ff67793          	andi	a5,a2,255
1c00977a:	03078513          	addi	a0,a5,48
1c00977e:	8191                	srli	a1,a1,0x4
1c009780:	05778793          	addi	a5,a5,87
1c009784:	0705                	addi	a4,a4,1
1c009786:	06ce6a63          	bltu	t3,a2,1c0097fa <pos_libc_prf+0x934>
1c00978a:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00978e:	f1f5                	bnez	a1,1c009772 <pos_libc_prf+0x8ac>
1c009790:	40d709b3          	sub	s3,a4,a3
1c009794:	0149db63          	ble	s4,s3,1c0097aa <pos_libc_prf+0x8e4>
1c009798:	03000613          	li	a2,48
1c00979c:	0705                	addi	a4,a4,1
1c00979e:	fec70fa3          	sb	a2,-1(a4)
1c0097a2:	40d709b3          	sub	s3,a4,a3
1c0097a6:	ff49cbe3          	blt	s3,s4,1c00979c <pos_libc_prf+0x8d6>
1c0097aa:	00070023          	sb	zero,0(a4)
1c0097ae:	177d                	addi	a4,a4,-1
1c0097b0:	00e6fe63          	bleu	a4,a3,1c0097cc <pos_libc_prf+0x906>
1c0097b4:	0006c603          	lbu	a2,0(a3)
1c0097b8:	00074783          	lbu	a5,0(a4)
1c0097bc:	00c70023          	sb	a2,0(a4)
1c0097c0:	00f68023          	sb	a5,0(a3)
1c0097c4:	177d                	addi	a4,a4,-1
1c0097c6:	0685                	addi	a3,a3,1
1c0097c8:	fee6e6e3          	bltu	a3,a4,1c0097b4 <pos_libc_prf+0x8ee>
1c0097cc:	05800713          	li	a4,88
1c0097d0:	36ed8263          	beq	s11,a4,1c009b34 <pos_libc_prf+0xc6e>
1c0097d4:	46b2                	lw	a3,12(sp)
1c0097d6:	99c6                	add	s3,s3,a7
1c0097d8:	c299                	beqz	a3,1c0097de <pos_libc_prf+0x918>
1c0097da:	4709                	li	a4,2
1c0097dc:	c63a                	sw	a4,12(sp)
1c0097de:	57fd                	li	a5,-1
1c0097e0:	3afa0263          	beq	s4,a5,1c009b84 <pos_libc_prf+0xcbe>
1c0097e4:	0c800793          	li	a5,200
1c0097e8:	9937c5e3          	blt	a5,s3,1c009172 <pos_libc_prf+0x2ac>
1c0097ec:	02000793          	li	a5,32
1c0097f0:	c83e                	sw	a5,16(sp)
1c0097f2:	8c42                	mv	s8,a6
1c0097f4:	8729c8e3          	blt	s3,s2,1c009064 <pos_libc_prf+0x19e>
1c0097f8:	ba91                	j	1c00914c <pos_libc_prf+0x286>
1c0097fa:	fef70fa3          	sb	a5,-1(a4)
1c0097fe:	f9b5                	bnez	a1,1c009772 <pos_libc_prf+0x8ac>
1c009800:	bf41                	j	1c009790 <pos_libc_prf+0x8ca>
1c009802:	06900713          	li	a4,105
1c009806:	1ced9a63          	bne	s11,a4,1c0099da <pos_libc_prf+0xb14>
1c00980a:	000c2583          	lw	a1,0(s8)
1c00980e:	0c11                	addi	s8,s8,4
1c009810:	3805c863          	bltz	a1,1c009ba0 <pos_libc_prf+0xcda>
1c009814:	48d2                	lw	a7,20(sp)
1c009816:	872e                	mv	a4,a1
1c009818:	36089d63          	bnez	a7,1c009b92 <pos_libc_prf+0xccc>
1c00981c:	4662                	lw	a2,24(sp)
1c00981e:	87e6                	mv	a5,s9
1c009820:	c619                	beqz	a2,1c00982e <pos_libc_prf+0x968>
1c009822:	02000793          	li	a5,32
1c009826:	02f10223          	sb	a5,36(sp)
1c00982a:	02510793          	addi	a5,sp,37
1c00982e:	89be                	mv	s3,a5
1c009830:	4629                	li	a2,10
1c009832:	02c776b3          	remu	a3,a4,a2
1c009836:	02c75733          	divu	a4,a4,a2
1c00983a:	0985                	addi	s3,s3,1
1c00983c:	03068693          	addi	a3,a3,48
1c009840:	fed98fa3          	sb	a3,-1(s3)
1c009844:	f77d                	bnez	a4,1c009832 <pos_libc_prf+0x96c>
1c009846:	40f98733          	sub	a4,s3,a5
1c00984a:	01475b63          	ble	s4,a4,1c009860 <pos_libc_prf+0x99a>
1c00984e:	03000693          	li	a3,48
1c009852:	0985                	addi	s3,s3,1
1c009854:	fed98fa3          	sb	a3,-1(s3)
1c009858:	40f98733          	sub	a4,s3,a5
1c00985c:	ff474be3          	blt	a4,s4,1c009852 <pos_libc_prf+0x98c>
1c009860:	00098023          	sb	zero,0(s3)
1c009864:	fff98713          	addi	a4,s3,-1
1c009868:	00e7fe63          	bleu	a4,a5,1c009884 <pos_libc_prf+0x9be>
1c00986c:	0007c603          	lbu	a2,0(a5)
1c009870:	00074683          	lbu	a3,0(a4)
1c009874:	00c70023          	sb	a2,0(a4)
1c009878:	00d78023          	sb	a3,0(a5)
1c00987c:	177d                	addi	a4,a4,-1
1c00987e:	0785                	addi	a5,a5,1
1c009880:	fee7e6e3          	bltu	a5,a4,1c00986c <pos_libc_prf+0x9a6>
1c009884:	46d2                	lw	a3,20(sp)
1c009886:	4762                	lw	a4,24(sp)
1c009888:	419989b3          	sub	s3,s3,s9
1c00988c:	8ed9                	or	a3,a3,a4
1c00988e:	c636                	sw	a3,12(sp)
1c009890:	e299                	bnez	a3,1c009896 <pos_libc_prf+0x9d0>
1c009892:	81fd                	srli	a1,a1,0x1f
1c009894:	c62e                	sw	a1,12(sp)
1c009896:	57fd                	li	a5,-1
1c009898:	e2fa00e3          	beq	s4,a5,1c0096b8 <pos_libc_prf+0x7f2>
1c00989c:	0c800793          	li	a5,200
1c0098a0:	8d37c9e3          	blt	a5,s3,1c009172 <pos_libc_prf+0x2ac>
1c0098a4:	02000793          	li	a5,32
1c0098a8:	c83e                	sw	a5,16(sp)
1c0098aa:	fb29cd63          	blt	s3,s2,1c009064 <pos_libc_prf+0x19e>
1c0098ae:	b879                	j	1c00914c <pos_libc_prf+0x286>
1c0098b0:	000c2783          	lw	a5,0(s8)
1c0098b4:	020102a3          	sb	zero,37(sp)
1c0098b8:	02f10223          	sb	a5,36(sp)
1c0098bc:	0c11                	addi	s8,s8,4
1c0098be:	4985                	li	s3,1
1c0098c0:	f9eff06f          	j	1c00905e <pos_libc_prf+0x198>
1c0098c4:	000c2703          	lw	a4,0(s8)
1c0098c8:	87e6                	mv	a5,s9
1c0098ca:	0c11                	addi	s8,s8,4
1c0098cc:	4629                	li	a2,10
1c0098ce:	02c776b3          	remu	a3,a4,a2
1c0098d2:	02c75733          	divu	a4,a4,a2
1c0098d6:	0785                	addi	a5,a5,1
1c0098d8:	03068693          	addi	a3,a3,48
1c0098dc:	fed78fa3          	sb	a3,-1(a5)
1c0098e0:	f77d                	bnez	a4,1c0098ce <pos_libc_prf+0xa08>
1c0098e2:	419789b3          	sub	s3,a5,s9
1c0098e6:	0149db63          	ble	s4,s3,1c0098fc <pos_libc_prf+0xa36>
1c0098ea:	03000713          	li	a4,48
1c0098ee:	0785                	addi	a5,a5,1
1c0098f0:	fee78fa3          	sb	a4,-1(a5)
1c0098f4:	419789b3          	sub	s3,a5,s9
1c0098f8:	ff49cbe3          	blt	s3,s4,1c0098ee <pos_libc_prf+0xa28>
1c0098fc:	00078023          	sb	zero,0(a5)
1c009900:	17fd                	addi	a5,a5,-1
1c009902:	00fcff63          	bleu	a5,s9,1c009920 <pos_libc_prf+0xa5a>
1c009906:	8766                	mv	a4,s9
1c009908:	00074603          	lbu	a2,0(a4)
1c00990c:	0007c683          	lbu	a3,0(a5)
1c009910:	00c78023          	sb	a2,0(a5)
1c009914:	00d70023          	sb	a3,0(a4)
1c009918:	17fd                	addi	a5,a5,-1
1c00991a:	0705                	addi	a4,a4,1
1c00991c:	fef766e3          	bltu	a4,a5,1c009908 <pos_libc_prf+0xa42>
1c009920:	57fd                	li	a5,-1
1c009922:	0cfa0a63          	beq	s4,a5,1c0099f6 <pos_libc_prf+0xb30>
1c009926:	0c800793          	li	a5,200
1c00992a:	8537c4e3          	blt	a5,s3,1c009172 <pos_libc_prf+0x2ac>
1c00992e:	02000813          	li	a6,32
1c009932:	c602                	sw	zero,12(sp)
1c009934:	c842                	sw	a6,16(sp)
1c009936:	ba45                	j	1c0092e6 <pos_libc_prf+0x420>
1c009938:	77e1                	lui	a5,0xffff8
1c00993a:	8307c793          	xori	a5,a5,-2000
1c00993e:	02610713          	addi	a4,sp,38
1c009942:	000c2603          	lw	a2,0(s8)
1c009946:	02f11223          	sh	a5,36(sp)
1c00994a:	0c11                	addi	s8,s8,4
1c00994c:	87ba                	mv	a5,a4
1c00994e:	4825                	li	a6,9
1c009950:	00f67593          	andi	a1,a2,15
1c009954:	0ff5f693          	andi	a3,a1,255
1c009958:	03068513          	addi	a0,a3,48
1c00995c:	8211                	srli	a2,a2,0x4
1c00995e:	05768693          	addi	a3,a3,87
1c009962:	0785                	addi	a5,a5,1
1c009964:	06b86163          	bltu	a6,a1,1c0099c6 <pos_libc_prf+0xb00>
1c009968:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c00996c:	f275                	bnez	a2,1c009950 <pos_libc_prf+0xa8a>
1c00996e:	40e789b3          	sub	s3,a5,a4
1c009972:	469d                	li	a3,7
1c009974:	0136cb63          	blt	a3,s3,1c00998a <pos_libc_prf+0xac4>
1c009978:	03000613          	li	a2,48
1c00997c:	0785                	addi	a5,a5,1
1c00997e:	fec78fa3          	sb	a2,-1(a5)
1c009982:	40e789b3          	sub	s3,a5,a4
1c009986:	ff36dbe3          	ble	s3,a3,1c00997c <pos_libc_prf+0xab6>
1c00998a:	00078023          	sb	zero,0(a5)
1c00998e:	17fd                	addi	a5,a5,-1
1c009990:	00f77e63          	bleu	a5,a4,1c0099ac <pos_libc_prf+0xae6>
1c009994:	00074603          	lbu	a2,0(a4)
1c009998:	0007c683          	lbu	a3,0(a5)
1c00999c:	00c78023          	sb	a2,0(a5)
1c0099a0:	00d70023          	sb	a3,0(a4)
1c0099a4:	17fd                	addi	a5,a5,-1
1c0099a6:	0705                	addi	a4,a4,1
1c0099a8:	fef766e3          	bltu	a4,a5,1c009994 <pos_libc_prf+0xace>
1c0099ac:	57fd                	li	a5,-1
1c0099ae:	0989                	addi	s3,s3,2
1c0099b0:	04fa0363          	beq	s4,a5,1c0099f6 <pos_libc_prf+0xb30>
1c0099b4:	0c800793          	li	a5,200
1c0099b8:	fb37cd63          	blt	a5,s3,1c009172 <pos_libc_prf+0x2ac>
1c0099bc:	02000893          	li	a7,32
1c0099c0:	c602                	sw	zero,12(sp)
1c0099c2:	c846                	sw	a7,16(sp)
1c0099c4:	b20d                	j	1c0092e6 <pos_libc_prf+0x420>
1c0099c6:	fed78fa3          	sb	a3,-1(a5)
1c0099ca:	f259                	bnez	a2,1c009950 <pos_libc_prf+0xa8a>
1c0099cc:	b74d                	j	1c00996e <pos_libc_prf+0xaa8>
1c0099ce:	000c2783          	lw	a5,0(s8)
1c0099d2:	0c11                	addi	s8,s8,4
1c0099d4:	c380                	sw	s0,0(a5)
1c0099d6:	d36ff06f          	j	1c008f0c <pos_libc_prf+0x46>
1c0099da:	0c800713          	li	a4,200
1c0099de:	d3b75763          	ble	s11,a4,1c008f0c <pos_libc_prf+0x46>
1c0099e2:	547d                	li	s0,-1
1c0099e4:	d4cff06f          	j	1c008f30 <pos_libc_prf+0x6a>
1c0099e8:	ffc50fa3          	sb	t3,-1(a0)
1c0099ec:	c2a991e3          	bne	s3,a0,1c00960e <pos_libc_prf+0x748>
1c0099f0:	c60f86e3          	beqz	t6,1c00965c <pos_libc_prf+0x796>
1c0099f4:	b325                	j	1c00971c <pos_libc_prf+0x856>
1c0099f6:	0c800793          	li	a5,200
1c0099fa:	f737cc63          	blt	a5,s3,1c009172 <pos_libc_prf+0x2ac>
1c0099fe:	c602                	sw	zero,12(sp)
1c009a00:	b0dd                	j	1c0092e6 <pos_libc_prf+0x420>
1c009a02:	0c800793          	li	a5,200
1c009a06:	f737c663          	blt	a5,s3,1c009172 <pos_libc_prf+0x2ac>
1c009a0a:	4705                	li	a4,1
1c009a0c:	c63a                	sw	a4,12(sp)
1c009a0e:	b8e1                	j	1c0092e6 <pos_libc_prf+0x420>
1c009a10:	41390a33          	sub	s4,s2,s3
1c009a14:	00198613          	addi	a2,s3,1
1c009a18:	85e6                	mv	a1,s9
1c009a1a:	014c8533          	add	a0,s9,s4
1c009a1e:	a72ff0ef          	jal	ra,1c008c90 <memmove>
1c009a22:	46c2                	lw	a3,16(sp)
1c009a24:	02000793          	li	a5,32
1c009a28:	30f68163          	beq	a3,a5,1c009d2a <pos_libc_prf+0xe64>
1c009a2c:	4732                	lw	a4,12(sp)
1c009a2e:	89ca                	mv	s3,s2
1c009a30:	9a3a                	add	s4,s4,a4
1c009a32:	f1475d63          	ble	s4,a4,1c00914c <pos_libc_prf+0x286>
1c009a36:	4832                	lw	a6,12(sp)
1c009a38:	4715                	li	a4,5
1c009a3a:	010c87b3          	add	a5,s9,a6
1c009a3e:	40f007b3          	neg	a5,a5
1c009a42:	8b8d                	andi	a5,a5,3
1c009a44:	00378693          	addi	a3,a5,3
1c009a48:	410a05b3          	sub	a1,s4,a6
1c009a4c:	00e6f363          	bleu	a4,a3,1c009a52 <pos_libc_prf+0xb8c>
1c009a50:	4695                	li	a3,5
1c009a52:	48b2                	lw	a7,12(sp)
1c009a54:	fffa0713          	addi	a4,s4,-1
1c009a58:	41170733          	sub	a4,a4,a7
1c009a5c:	06d76b63          	bltu	a4,a3,1c009ad2 <pos_libc_prf+0xc0c>
1c009a60:	86c6                	mv	a3,a7
1c009a62:	cb9d                	beqz	a5,1c009a98 <pos_libc_prf+0xbd2>
1c009a64:	46c2                	lw	a3,16(sp)
1c009a66:	1988                	addi	a0,sp,240
1c009a68:	01150733          	add	a4,a0,a7
1c009a6c:	f2d70a23          	sb	a3,-204(a4)
1c009a70:	4705                	li	a4,1
1c009a72:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c009a76:	02e78163          	beq	a5,a4,1c009a98 <pos_libc_prf+0xbd2>
1c009a7a:	4742                	lw	a4,16(sp)
1c009a7c:	96aa                	add	a3,a3,a0
1c009a7e:	f2e68a23          	sb	a4,-204(a3)
1c009a82:	470d                	li	a4,3
1c009a84:	00288693          	addi	a3,a7,2
1c009a88:	00e79863          	bne	a5,a4,1c009a98 <pos_libc_prf+0xbd2>
1c009a8c:	4842                	lw	a6,16(sp)
1c009a8e:	96aa                	add	a3,a3,a0
1c009a90:	f3068a23          	sb	a6,-204(a3)
1c009a94:	00388693          	addi	a3,a7,3
1c009a98:	48c2                	lw	a7,16(sp)
1c009a9a:	4832                	lw	a6,12(sp)
1c009a9c:	00889713          	slli	a4,a7,0x8
1c009aa0:	01089513          	slli	a0,a7,0x10
1c009aa4:	00e8e733          	or	a4,a7,a4
1c009aa8:	8d9d                	sub	a1,a1,a5
1c009aaa:	01889613          	slli	a2,a7,0x18
1c009aae:	8f49                	or	a4,a4,a0
1c009ab0:	97c2                	add	a5,a5,a6
1c009ab2:	8f51                	or	a4,a4,a2
1c009ab4:	0025d513          	srli	a0,a1,0x2
1c009ab8:	97e6                	add	a5,a5,s9
1c009aba:	4601                	li	a2,0
1c009abc:	c398                	sw	a4,0(a5)
1c009abe:	0605                	addi	a2,a2,1
1c009ac0:	0791                	addi	a5,a5,4
1c009ac2:	fea66de3          	bltu	a2,a0,1c009abc <pos_libc_prf+0xbf6>
1c009ac6:	ffc5f793          	andi	a5,a1,-4
1c009aca:	96be                	add	a3,a3,a5
1c009acc:	c636                	sw	a3,12(sp)
1c009ace:	e6b78e63          	beq	a5,a1,1c00914a <pos_libc_prf+0x284>
1c009ad2:	46b2                	lw	a3,12(sp)
1c009ad4:	0f010893          	addi	a7,sp,240
1c009ad8:	4742                	lw	a4,16(sp)
1c009ada:	00d887b3          	add	a5,a7,a3
1c009ade:	f2e78a23          	sb	a4,-204(a5)
1c009ae2:	00168793          	addi	a5,a3,1
1c009ae6:	e747d263          	ble	s4,a5,1c00914a <pos_libc_prf+0x284>
1c009aea:	97c6                	add	a5,a5,a7
1c009aec:	f2e78a23          	sb	a4,-204(a5)
1c009af0:	00268793          	addi	a5,a3,2
1c009af4:	e547db63          	ble	s4,a5,1c00914a <pos_libc_prf+0x284>
1c009af8:	97c6                	add	a5,a5,a7
1c009afa:	f2e78a23          	sb	a4,-204(a5)
1c009afe:	00368793          	addi	a5,a3,3
1c009b02:	e547d463          	ble	s4,a5,1c00914a <pos_libc_prf+0x284>
1c009b06:	97c6                	add	a5,a5,a7
1c009b08:	f2e78a23          	sb	a4,-204(a5)
1c009b0c:	00468793          	addi	a5,a3,4
1c009b10:	e347dd63          	ble	s4,a5,1c00914a <pos_libc_prf+0x284>
1c009b14:	97c6                	add	a5,a5,a7
1c009b16:	f2e78a23          	sb	a4,-204(a5)
1c009b1a:	00568a93          	addi	s5,a3,5
1c009b1e:	e34ad663          	ble	s4,s5,1c00914a <pos_libc_prf+0x284>
1c009b22:	9ac6                	add	s5,s5,a7
1c009b24:	f2ea8a23          	sb	a4,-204(s5)
1c009b28:	89ca                	mv	s3,s2
1c009b2a:	e22ff06f          	j	1c00914c <pos_libc_prf+0x286>
1c009b2e:	4881                	li	a7,0
1c009b30:	1054                	addi	a3,sp,36
1c009b32:	b935                	j	1c00976e <pos_libc_prf+0x8a8>
1c009b34:	02414783          	lbu	a5,36(sp)
1c009b38:	1058                	addi	a4,sp,36
1c009b3a:	46e5                	li	a3,25
1c009b3c:	c8078ce3          	beqz	a5,1c0097d4 <pos_libc_prf+0x90e>
1c009b40:	fe078613          	addi	a2,a5,-32
1c009b44:	f9f78793          	addi	a5,a5,-97
1c009b48:	0ff7f793          	andi	a5,a5,255
1c009b4c:	00f6e963          	bltu	a3,a5,1c009b5e <pos_libc_prf+0xc98>
1c009b50:	00c70023          	sb	a2,0(a4)
1c009b54:	0705                	addi	a4,a4,1
1c009b56:	00074783          	lbu	a5,0(a4)
1c009b5a:	f3fd                	bnez	a5,1c009b40 <pos_libc_prf+0xc7a>
1c009b5c:	b9a5                	j	1c0097d4 <pos_libc_prf+0x90e>
1c009b5e:	0705                	addi	a4,a4,1
1c009b60:	00074783          	lbu	a5,0(a4)
1c009b64:	fff1                	bnez	a5,1c009b40 <pos_libc_prf+0xc7a>
1c009b66:	b1bd                	j	1c0097d4 <pos_libc_prf+0x90e>
1c009b68:	47d2                	lw	a5,20(sp)
1c009b6a:	20078263          	beqz	a5,1c009d6e <pos_libc_prf+0xea8>
1c009b6e:	02b00713          	li	a4,43
1c009b72:	02e10223          	sb	a4,36(sp)
1c009b76:	02510e93          	addi	t4,sp,37
1c009b7a:	4301                	li	t1,0
1c009b7c:	4501                	li	a0,0
1c009b7e:	4681                	li	a3,0
1c009b80:	4581                	li	a1,0
1c009b82:	b8d5                	j	1c009476 <pos_libc_prf+0x5b0>
1c009b84:	0c800793          	li	a5,200
1c009b88:	df37c563          	blt	a5,s3,1c009172 <pos_libc_prf+0x2ac>
1c009b8c:	8c42                	mv	s8,a6
1c009b8e:	f58ff06f          	j	1c0092e6 <pos_libc_prf+0x420>
1c009b92:	02b00793          	li	a5,43
1c009b96:	02f10223          	sb	a5,36(sp)
1c009b9a:	02510793          	addi	a5,sp,37
1c009b9e:	b941                	j	1c00982e <pos_libc_prf+0x968>
1c009ba0:	02d00793          	li	a5,45
1c009ba4:	02f10223          	sb	a5,36(sp)
1c009ba8:	800007b7          	lui	a5,0x80000
1c009bac:	22f58363          	beq	a1,a5,1c009dd2 <pos_libc_prf+0xf0c>
1c009bb0:	40b00733          	neg	a4,a1
1c009bb4:	02510793          	addi	a5,sp,37
1c009bb8:	b99d                	j	1c00982e <pos_libc_prf+0x968>
1c009bba:	47b2                	lw	a5,12(sp)
1c009bbc:	4f81                	li	t6,0
1c009bbe:	e399                	bnez	a5,1c009bc4 <pos_libc_prf+0xcfe>
1c009bc0:	01403fb3          	snez	t6,s4
1c009bc4:	56f5                	li	a3,-3
1c009bc6:	001a0e13          	addi	t3,s4,1
1c009bca:	00d34463          	blt	t1,a3,1c009bd2 <pos_libc_prf+0xd0c>
1c009bce:	166e5d63          	ble	t1,t3,1c009d48 <pos_libc_prf+0xe82>
1c009bd2:	46c1                	li	a3,16
1c009bd4:	01c6d363          	ble	t3,a3,1c009bda <pos_libc_prf+0xd14>
1c009bd8:	4e41                	li	t3,16
1c009bda:	06700693          	li	a3,103
1c009bde:	1e7d                	addi	t3,t3,-1
1c009be0:	1add8963          	beq	s11,a3,1c009d92 <pos_libc_prf+0xecc>
1c009be4:	04500d93          	li	s11,69
1c009be8:	b0c5                	j	1c0094c8 <pos_libc_prf+0x602>
1c009bea:	020102a3          	sb	zero,37(sp)
1c009bee:	57fd                	li	a5,-1
1c009bf0:	89ba                	mv	s3,a4
1c009bf2:	8c2a                	mv	s8,a0
1c009bf4:	c6fa0563          	beq	s4,a5,1c00905e <pos_libc_prf+0x198>
1c009bf8:	02000813          	li	a6,32
1c009bfc:	c842                	sw	a6,16(sp)
1c009bfe:	c60ff06f          	j	1c00905e <pos_libc_prf+0x198>
1c009c02:	89b6                	mv	s3,a3
1c009c04:	bdeff06f          	j	1c008fe2 <pos_libc_prf+0x11c>
1c009c08:	8766                	mv	a4,s9
1c009c0a:	1c084c63          	bltz	a6,1c009de2 <pos_libc_prf+0xf1c>
1c009c0e:	8e55                	or	a2,a2,a3
1c009c10:	fbfd8793          	addi	a5,s11,-65
1c009c14:	00370993          	addi	s3,a4,3
1c009c18:	46e5                	li	a3,25
1c009c1a:	10061a63          	bnez	a2,1c009d2e <pos_libc_prf+0xe68>
1c009c1e:	16f6ee63          	bltu	a3,a5,1c009d9a <pos_libc_prf+0xed4>
1c009c22:	6795                	lui	a5,0x5
1c009c24:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c009c28:	00f71023          	sh	a5,0(a4)
1c009c2c:	04600793          	li	a5,70
1c009c30:	00f70123          	sb	a5,2(a4)
1c009c34:	000701a3          	sb	zero,3(a4)
1c009c38:	419989b3          	sub	s3,s3,s9
1c009c3c:	b48d                	j	1c00969e <pos_libc_prf+0x7d8>
1c009c3e:	85e6                	mv	a1,s9
1c009c40:	8766                	mv	a4,s9
1c009c42:	e38ff06f          	j	1c00927a <pos_libc_prf+0x3b4>
1c009c46:	a00a09e3          	beqz	s4,1c009658 <pos_libc_prf+0x792>
1c009c4a:	02e00693          	li	a3,46
1c009c4e:	002e8513          	addi	a0,t4,2
1c009c52:	00de80a3          	sb	a3,1(t4)
1c009c56:	b27d                	j	1c009604 <pos_libc_prf+0x73e>
1c009c58:	14605b63          	blez	t1,1c009dae <pos_libc_prf+0xee8>
1c009c5c:	006e89b3          	add	s3,t4,t1
1c009c60:	4541                	li	a0,16
1c009c62:	03000893          	li	a7,48
1c009c66:	00271793          	slli	a5,a4,0x2
1c009c6a:	01e75313          	srli	t1,a4,0x1e
1c009c6e:	00261693          	slli	a3,a2,0x2
1c009c72:	00e78833          	add	a6,a5,a4
1c009c76:	00d366b3          	or	a3,t1,a3
1c009c7a:	96b2                	add	a3,a3,a2
1c009c7c:	00f837b3          	sltu	a5,a6,a5
1c009c80:	97b6                	add	a5,a5,a3
1c009c82:	0786                	slli	a5,a5,0x1
1c009c84:	01f85693          	srli	a3,a6,0x1f
1c009c88:	8fd5                	or	a5,a5,a3
1c009c8a:	01c7d693          	srli	a3,a5,0x1c
1c009c8e:	03068693          	addi	a3,a3,48
1c009c92:	02a05063          	blez	a0,1c009cb2 <pos_libc_prf+0xdec>
1c009c96:	00181713          	slli	a4,a6,0x1
1c009c9a:	10000837          	lui	a6,0x10000
1c009c9e:	187d                	addi	a6,a6,-1
1c009ca0:	fed58fa3          	sb	a3,-1(a1)
1c009ca4:	157d                	addi	a0,a0,-1
1c009ca6:	0107f633          	and	a2,a5,a6
1c009caa:	00b98863          	beq	s3,a1,1c009cba <pos_libc_prf+0xdf4>
1c009cae:	0585                	addi	a1,a1,1
1c009cb0:	bf5d                	j	1c009c66 <pos_libc_prf+0xda0>
1c009cb2:	ff158fa3          	sb	a7,-1(a1)
1c009cb6:	feb99ce3          	bne	s3,a1,1c009cae <pos_libc_prf+0xde8>
1c009cba:	4301                	li	t1,0
1c009cbc:	48b2                	lw	a7,12(sp)
1c009cbe:	00089463          	bnez	a7,1c009cc6 <pos_libc_prf+0xe00>
1c009cc2:	a40a0be3          	beqz	s4,1c009718 <pos_libc_prf+0x852>
1c009cc6:	00198813          	addi	a6,s3,1
1c009cca:	001a0693          	addi	a3,s4,1
1c009cce:	02e00593          	li	a1,46
1c009cd2:	00b98023          	sb	a1,0(s3)
1c009cd6:	99b6                	add	s3,s3,a3
1c009cd8:	85c2                	mv	a1,a6
1c009cda:	03000693          	li	a3,48
1c009cde:	a2b98be3          	beq	s3,a1,1c009714 <pos_libc_prf+0x84e>
1c009ce2:	0585                	addi	a1,a1,1
1c009ce4:	9e0302e3          	beqz	t1,1c0096c8 <pos_libc_prf+0x802>
1c009ce8:	fed58fa3          	sb	a3,-1(a1)
1c009cec:	0305                	addi	t1,t1,1
1c009cee:	bfc5                	j	1c009cde <pos_libc_prf+0xe18>
1c009cf0:	4a19                	li	s4,6
1c009cf2:	fadd9b63          	bne	s11,a3,1c0094a8 <pos_libc_prf+0x5e2>
1c009cf6:	46b2                	lw	a3,12(sp)
1c009cf8:	57f5                	li	a5,-3
1c009cfa:	0016cf93          	xori	t6,a3,1
1c009cfe:	08f35663          	ble	a5,t1,1c009d8a <pos_libc_prf+0xec4>
1c009d02:	06500d93          	li	s11,101
1c009d06:	4e19                	li	t3,6
1c009d08:	fc0ff06f          	j	1c0094c8 <pos_libc_prf+0x602>
1c009d0c:	0c800793          	li	a5,200
1c009d10:	c737c163          	blt	a5,s3,1c009172 <pos_libc_prf+0x2ac>
1c009d14:	8c2a                	mv	s8,a0
1c009d16:	c602                	sw	zero,12(sp)
1c009d18:	dceff06f          	j	1c0092e6 <pos_libc_prf+0x420>
1c009d1c:	02d00793          	li	a5,45
1c009d20:	40600333          	neg	t1,t1
1c009d24:	00f980a3          	sb	a5,1(s3)
1c009d28:	ba89                	j	1c00967a <pos_libc_prf+0x7b4>
1c009d2a:	c602                	sw	zero,12(sp)
1c009d2c:	b329                	j	1c009a36 <pos_libc_prf+0xb70>
1c009d2e:	0cf6ed63          	bltu	a3,a5,1c009e08 <pos_libc_prf+0xf42>
1c009d32:	6791                	lui	a5,0x4
1c009d34:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c009d38:	00f71023          	sh	a5,0(a4)
1c009d3c:	04e00793          	li	a5,78
1c009d40:	00f70123          	sb	a5,2(a4)
1c009d44:	bdc5                	j	1c009c34 <pos_libc_prf+0xd6e>
1c009d46:	4f81                	li	t6,0
1c009d48:	014307b3          	add	a5,t1,s4
1c009d4c:	0807c863          	bltz	a5,1c009ddc <pos_libc_prf+0xf16>
1c009d50:	46c1                	li	a3,16
1c009d52:	8e3e                	mv	t3,a5
1c009d54:	00f6d363          	ble	a5,a3,1c009d5a <pos_libc_prf+0xe94>
1c009d58:	4e41                	li	t3,16
1c009d5a:	1e7d                	addi	t3,t3,-1
1c009d5c:	06600d93          	li	s11,102
1c009d60:	f6079463          	bnez	a5,1c0094c8 <pos_libc_prf+0x602>
1c009d64:	4681                	li	a3,0
1c009d66:	08000637          	lui	a2,0x8000
1c009d6a:	fc8ff06f          	j	1c009532 <pos_libc_prf+0x66c>
1c009d6e:	47e2                	lw	a5,24(sp)
1c009d70:	c7d5                	beqz	a5,1c009e1c <pos_libc_prf+0xf56>
1c009d72:	02000713          	li	a4,32
1c009d76:	02e10223          	sb	a4,36(sp)
1c009d7a:	02510e93          	addi	t4,sp,37
1c009d7e:	4301                	li	t1,0
1c009d80:	4501                	li	a0,0
1c009d82:	4681                	li	a3,0
1c009d84:	4581                	li	a1,0
1c009d86:	ef0ff06f          	j	1c009476 <pos_libc_prf+0x5b0>
1c009d8a:	479d                	li	a5,7
1c009d8c:	fa67dee3          	ble	t1,a5,1c009d48 <pos_libc_prf+0xe82>
1c009d90:	4e19                	li	t3,6
1c009d92:	06500d93          	li	s11,101
1c009d96:	f32ff06f          	j	1c0094c8 <pos_libc_prf+0x602>
1c009d9a:	679d                	lui	a5,0x7
1c009d9c:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c009da0:	00f71023          	sh	a5,0(a4)
1c009da4:	06600793          	li	a5,102
1c009da8:	00f70123          	sb	a5,2(a4)
1c009dac:	b561                	j	1c009c34 <pos_libc_prf+0xd6e>
1c009dae:	03000693          	li	a3,48
1c009db2:	00de8023          	sb	a3,0(t4)
1c009db6:	4541                	li	a0,16
1c009db8:	b711                	j	1c009cbc <pos_libc_prf+0xdf6>
1c009dba:	48e2                	lw	a7,24(sp)
1c009dbc:	8ee6                	mv	t4,s9
1c009dbe:	dc088e63          	beqz	a7,1c00939a <pos_libc_prf+0x4d4>
1c009dc2:	02000713          	li	a4,32
1c009dc6:	02e10223          	sb	a4,36(sp)
1c009dca:	02510e93          	addi	t4,sp,37
1c009dce:	dccff06f          	j	1c00939a <pos_libc_prf+0x4d4>
1c009dd2:	80000737          	lui	a4,0x80000
1c009dd6:	02510793          	addi	a5,sp,37
1c009dda:	bc91                	j	1c00982e <pos_libc_prf+0x968>
1c009ddc:	06600d93          	li	s11,102
1c009de0:	b751                	j	1c009d64 <pos_libc_prf+0xe9e>
1c009de2:	02d00713          	li	a4,45
1c009de6:	02e10223          	sb	a4,36(sp)
1c009dea:	02510713          	addi	a4,sp,37
1c009dee:	b505                	j	1c009c0e <pos_libc_prf+0xd48>
1c009df0:	a40a5d63          	bgez	s4,1c00904a <pos_libc_prf+0x184>
1c009df4:	a62ff06f          	j	1c009056 <pos_libc_prf+0x190>
1c009df8:	02d00713          	li	a4,45
1c009dfc:	02e10223          	sb	a4,36(sp)
1c009e00:	02510e93          	addi	t4,sp,37
1c009e04:	d96ff06f          	j	1c00939a <pos_libc_prf+0x4d4>
1c009e08:	6799                	lui	a5,0x6
1c009e0a:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c009e0e:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c009e12:	06e00793          	li	a5,110
1c009e16:	00f70123          	sb	a5,2(a4)
1c009e1a:	bd29                	j	1c009c34 <pos_libc_prf+0xd6e>
1c009e1c:	8ee6                	mv	t4,s9
1c009e1e:	b785                	j	1c009d7e <pos_libc_prf+0xeb8>
1c009e20:	89aa                	mv	s3,a0
1c009e22:	820f8de3          	beqz	t6,1c00965c <pos_libc_prf+0x796>
1c009e26:	b8dd                	j	1c00971c <pos_libc_prf+0x856>

1c009e28 <pos_init_start>:
1c009e28:	1141                	addi	sp,sp,-16
1c009e2a:	c422                	sw	s0,8(sp)
1c009e2c:	1c000437          	lui	s0,0x1c000
1c009e30:	c606                	sw	ra,12(sp)
1c009e32:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009e36:	c92fe0ef          	jal	ra,1c0082c8 <pos_soc_init>
1c009e3a:	2275                	jal	1c009fe6 <pos_irq_init>
1c009e3c:	2ae1                	jal	1c00a014 <pos_soc_event_init>
1c009e3e:	2a31                	jal	1c009f5a <pos_allocs_init>
1c009e40:	405c                	lw	a5,4(s0)
1c009e42:	c791                	beqz	a5,1c009e4e <pos_init_start+0x26>
1c009e44:	0411                	addi	s0,s0,4
1c009e46:	0411                	addi	s0,s0,4
1c009e48:	9782                	jalr	a5
1c009e4a:	401c                	lw	a5,0(s0)
1c009e4c:	ffed                	bnez	a5,1c009e46 <pos_init_start+0x1e>
1c009e4e:	842ff0ef          	jal	ra,1c008e90 <pos_io_start>
1c009e52:	300467f3          	csrrsi	a5,mstatus,8
1c009e56:	40b2                	lw	ra,12(sp)
1c009e58:	4422                	lw	s0,8(sp)
1c009e5a:	0141                	addi	sp,sp,16
1c009e5c:	8082                	ret

1c009e5e <pos_init_stop>:
1c009e5e:	1141                	addi	sp,sp,-16
1c009e60:	c422                	sw	s0,8(sp)
1c009e62:	1c000437          	lui	s0,0x1c000
1c009e66:	c606                	sw	ra,12(sp)
1c009e68:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009e6c:	828ff0ef          	jal	ra,1c008e94 <pos_io_stop>
1c009e70:	405c                	lw	a5,4(s0)
1c009e72:	c791                	beqz	a5,1c009e7e <pos_init_stop+0x20>
1c009e74:	0411                	addi	s0,s0,4
1c009e76:	0411                	addi	s0,s0,4
1c009e78:	9782                	jalr	a5
1c009e7a:	401c                	lw	a5,0(s0)
1c009e7c:	ffed                	bnez	a5,1c009e76 <pos_init_stop+0x18>
1c009e7e:	40b2                	lw	ra,12(sp)
1c009e80:	4422                	lw	s0,8(sp)
1c009e82:	0141                	addi	sp,sp,16
1c009e84:	8082                	ret

1c009e86 <pos_alloc_init>:
1c009e86:	00758793          	addi	a5,a1,7
1c009e8a:	9be1                	andi	a5,a5,-8
1c009e8c:	40b785b3          	sub	a1,a5,a1
1c009e90:	c11c                	sw	a5,0(a0)
1c009e92:	8e0d                	sub	a2,a2,a1
1c009e94:	00c05663          	blez	a2,1c009ea0 <pos_alloc_init+0x1a>
1c009e98:	9a61                	andi	a2,a2,-8
1c009e9a:	c390                	sw	a2,0(a5)
1c009e9c:	0007a223          	sw	zero,4(a5)
1c009ea0:	8082                	ret

1c009ea2 <pos_alloc>:
1c009ea2:	4110                	lw	a2,0(a0)
1c009ea4:	059d                	addi	a1,a1,7
1c009ea6:	99e1                	andi	a1,a1,-8
1c009ea8:	ca31                	beqz	a2,1c009efc <pos_alloc+0x5a>
1c009eaa:	4218                	lw	a4,0(a2)
1c009eac:	425c                	lw	a5,4(a2)
1c009eae:	02b75963          	ble	a1,a4,1c009ee0 <pos_alloc+0x3e>
1c009eb2:	cb81                	beqz	a5,1c009ec2 <pos_alloc+0x20>
1c009eb4:	4398                	lw	a4,0(a5)
1c009eb6:	43d4                	lw	a3,4(a5)
1c009eb8:	00b75763          	ble	a1,a4,1c009ec6 <pos_alloc+0x24>
1c009ebc:	863e                	mv	a2,a5
1c009ebe:	87b6                	mv	a5,a3
1c009ec0:	fbf5                	bnez	a5,1c009eb4 <pos_alloc+0x12>
1c009ec2:	853e                	mv	a0,a5
1c009ec4:	8082                	ret
1c009ec6:	00b70a63          	beq	a4,a1,1c009eda <pos_alloc+0x38>
1c009eca:	00b78533          	add	a0,a5,a1
1c009ece:	8f0d                	sub	a4,a4,a1
1c009ed0:	c118                	sw	a4,0(a0)
1c009ed2:	c154                	sw	a3,4(a0)
1c009ed4:	c248                	sw	a0,4(a2)
1c009ed6:	853e                	mv	a0,a5
1c009ed8:	8082                	ret
1c009eda:	c254                	sw	a3,4(a2)
1c009edc:	853e                	mv	a0,a5
1c009ede:	8082                	ret
1c009ee0:	00e58b63          	beq	a1,a4,1c009ef6 <pos_alloc+0x54>
1c009ee4:	00b606b3          	add	a3,a2,a1
1c009ee8:	8f0d                	sub	a4,a4,a1
1c009eea:	c2dc                	sw	a5,4(a3)
1c009eec:	c298                	sw	a4,0(a3)
1c009eee:	87b2                	mv	a5,a2
1c009ef0:	c114                	sw	a3,0(a0)
1c009ef2:	853e                	mv	a0,a5
1c009ef4:	8082                	ret
1c009ef6:	c11c                	sw	a5,0(a0)
1c009ef8:	87b2                	mv	a5,a2
1c009efa:	b7e1                	j	1c009ec2 <pos_alloc+0x20>
1c009efc:	4781                	li	a5,0
1c009efe:	b7d1                	j	1c009ec2 <pos_alloc+0x20>

1c009f00 <pos_free>:
1c009f00:	4118                	lw	a4,0(a0)
1c009f02:	061d                	addi	a2,a2,7
1c009f04:	9a61                	andi	a2,a2,-8
1c009f06:	c729                	beqz	a4,1c009f50 <pos_free+0x50>
1c009f08:	00b76663          	bltu	a4,a1,1c009f14 <pos_free+0x14>
1c009f0c:	a0a1                	j	1c009f54 <pos_free+0x54>
1c009f0e:	00b7f563          	bleu	a1,a5,1c009f18 <pos_free+0x18>
1c009f12:	873e                	mv	a4,a5
1c009f14:	435c                	lw	a5,4(a4)
1c009f16:	ffe5                	bnez	a5,1c009f0e <pos_free+0xe>
1c009f18:	00c586b3          	add	a3,a1,a2
1c009f1c:	02d78463          	beq	a5,a3,1c009f44 <pos_free+0x44>
1c009f20:	c190                	sw	a2,0(a1)
1c009f22:	c1dc                	sw	a5,4(a1)
1c009f24:	cf11                	beqz	a4,1c009f40 <pos_free+0x40>
1c009f26:	431c                	lw	a5,0(a4)
1c009f28:	00f706b3          	add	a3,a4,a5
1c009f2c:	00d58463          	beq	a1,a3,1c009f34 <pos_free+0x34>
1c009f30:	c34c                	sw	a1,4(a4)
1c009f32:	8082                	ret
1c009f34:	4194                	lw	a3,0(a1)
1c009f36:	41d0                	lw	a2,4(a1)
1c009f38:	97b6                	add	a5,a5,a3
1c009f3a:	c31c                	sw	a5,0(a4)
1c009f3c:	c350                	sw	a2,4(a4)
1c009f3e:	8082                	ret
1c009f40:	c10c                	sw	a1,0(a0)
1c009f42:	8082                	ret
1c009f44:	4394                	lw	a3,0(a5)
1c009f46:	43dc                	lw	a5,4(a5)
1c009f48:	9636                	add	a2,a2,a3
1c009f4a:	c190                	sw	a2,0(a1)
1c009f4c:	c1dc                	sw	a5,4(a1)
1c009f4e:	bfd9                	j	1c009f24 <pos_free+0x24>
1c009f50:	4781                	li	a5,0
1c009f52:	b7d9                	j	1c009f18 <pos_free+0x18>
1c009f54:	87ba                	mv	a5,a4
1c009f56:	4701                	li	a4,0
1c009f58:	b7c1                	j	1c009f18 <pos_free+0x18>

1c009f5a <pos_allocs_init>:
1c009f5a:	1141                	addi	sp,sp,-16
1c009f5c:	1c0065b7          	lui	a1,0x1c006
1c009f60:	c606                	sw	ra,12(sp)
1c009f62:	24458793          	addi	a5,a1,580 # 1c006244 <__l2_priv0_end>
1c009f66:	1c008637          	lui	a2,0x1c008
1c009f6a:	04c7cc63          	blt	a5,a2,1c009fc2 <pos_allocs_init+0x68>
1c009f6e:	4581                	li	a1,0
1c009f70:	4601                	li	a2,0
1c009f72:	1c006537          	lui	a0,0x1c006
1c009f76:	23850513          	addi	a0,a0,568 # 1c006238 <pos_alloc_l2>
1c009f7a:	3731                	jal	1c009e86 <pos_alloc_init>
1c009f7c:	1c00a5b7          	lui	a1,0x1c00a
1c009f80:	02c58793          	addi	a5,a1,44 # 1c00a02c <__l2_priv1_end>
1c009f84:	1c010637          	lui	a2,0x1c010
1c009f88:	02c7c963          	blt	a5,a2,1c009fba <pos_allocs_init+0x60>
1c009f8c:	4581                	li	a1,0
1c009f8e:	4601                	li	a2,0
1c009f90:	1c006537          	lui	a0,0x1c006
1c009f94:	23c50513          	addi	a0,a0,572 # 1c00623c <pos_alloc_l2+0x4>
1c009f98:	35fd                	jal	1c009e86 <pos_alloc_init>
1c009f9a:	1c0105b7          	lui	a1,0x1c010
1c009f9e:	00058793          	mv	a5,a1
1c009fa2:	40b2                	lw	ra,12(sp)
1c009fa4:	1c080637          	lui	a2,0x1c080
1c009fa8:	1c006537          	lui	a0,0x1c006
1c009fac:	8e1d                	sub	a2,a2,a5
1c009fae:	00058593          	mv	a1,a1
1c009fb2:	24050513          	addi	a0,a0,576 # 1c006240 <pos_alloc_l2+0x8>
1c009fb6:	0141                	addi	sp,sp,16
1c009fb8:	b5f9                	j	1c009e86 <pos_alloc_init>
1c009fba:	8e1d                	sub	a2,a2,a5
1c009fbc:	02c58593          	addi	a1,a1,44 # 1c01002c <__l2_shared_end+0x2c>
1c009fc0:	bfc1                	j	1c009f90 <pos_allocs_init+0x36>
1c009fc2:	8e1d                	sub	a2,a2,a5
1c009fc4:	24458593          	addi	a1,a1,580
1c009fc8:	b76d                	j	1c009f72 <pos_allocs_init+0x18>

1c009fca <pi_l2_malloc>:
1c009fca:	85aa                	mv	a1,a0
1c009fcc:	1c006537          	lui	a0,0x1c006
1c009fd0:	23850513          	addi	a0,a0,568 # 1c006238 <pos_alloc_l2>
1c009fd4:	b5f9                	j	1c009ea2 <pos_alloc>

1c009fd6 <pi_l2_free>:
1c009fd6:	862e                	mv	a2,a1
1c009fd8:	85aa                	mv	a1,a0
1c009fda:	1c006537          	lui	a0,0x1c006
1c009fde:	23850513          	addi	a0,a0,568 # 1c006238 <pos_alloc_l2>
1c009fe2:	bf39                	j	1c009f00 <pos_free>

1c009fe4 <__rt_handle_illegal_instr>:
1c009fe4:	8082                	ret

1c009fe6 <pos_irq_init>:
1c009fe6:	1a10a737          	lui	a4,0x1a10a
1c009fea:	f14027f3          	csrr	a5,mhartid
1c009fee:	56fd                	li	a3,-1
1c009ff0:	8795                	srai	a5,a5,0x5
1c009ff2:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c009ff6:	03f7f793          	andi	a5,a5,63
1c009ffa:	477d                	li	a4,31
1c009ffc:	00e78363          	beq	a5,a4,1c00a002 <pos_irq_init+0x1c>
1c00a000:	8082                	ret
1c00a002:	1c0087b7          	lui	a5,0x1c008
1c00a006:	00078793          	mv	a5,a5
1c00a00a:	0017e793          	ori	a5,a5,1
1c00a00e:	30579073          	csrw	mtvec,a5
1c00a012:	8082                	ret

1c00a014 <pos_soc_event_init>:
1c00a014:	1a1067b7          	lui	a5,0x1a106
1c00a018:	577d                	li	a4,-1
1c00a01a:	c3d8                	sw	a4,4(a5)
1c00a01c:	c798                	sw	a4,8(a5)
1c00a01e:	c7d8                	sw	a4,12(a5)
1c00a020:	cb98                	sw	a4,16(a5)
1c00a022:	cbd8                	sw	a4,20(a5)
1c00a024:	cf98                	sw	a4,24(a5)
1c00a026:	cfd8                	sw	a4,28(a5)
1c00a028:	d398                	sw	a4,32(a5)
1c00a02a:	8082                	ret
