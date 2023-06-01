riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	6890106f          	j	1c009e88 <__rt_handle_illegal_instr>
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
1c008084:	6050106f          	j	1c009e88 <__rt_handle_illegal_instr>

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
1c0080c4:	13028293          	addi	t0,t0,304 # 1c0061f0 <stack>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	14c30313          	addi	t1,t1,332 # 1c006214 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	11610113          	addi	sp,sp,278 # 1c0061f0 <stack>
1c0080e2:	3eb010ef          	jal	ra,1c009ccc <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	407010ef          	jal	ra,1c009d02 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	41f000ef          	jal	ra,1c008d20 <exit>

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
1c008156:	34d000ef          	jal	ra,1c008ca2 <puts>
1c00815a:	6785                	lui	a5,0x1
1c00815c:	757d                	lui	a0,0xfffff
1c00815e:	e0078793          	addi	a5,a5,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c008162:	978a                	add	a5,a5,sp
1c008164:	6a050593          	addi	a1,a0,1696 # fffff6a0 <pulp__FC+0xfffff6a1>
1c008168:	20050513          	addi	a0,a0,512
1c00816c:	95be                	add	a1,a1,a5
1c00816e:	953e                	add	a0,a0,a5
1c008170:	2769                	jal	1c0088fa <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c008172:	1c000537          	lui	a0,0x1c000
1c008176:	12850513          	addi	a0,a0,296 # 1c000128 <__DTOR_END__+0x10c>
1c00817a:	329000ef          	jal	ra,1c008ca2 <puts>
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
1c0081fe:	1f440413          	addi	s0,s0,500 # 1c0061f4 <pos_fll_freq>
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
1c00822a:	1f050513          	addi	a0,a0,496 # 1c0061f0 <stack>
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
1c008266:	1f050513          	addi	a0,a0,496 # 1c0061f0 <stack>
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
1c0082b2:	1f478793          	addi	a5,a5,500 # 1c0061f4 <pos_fll_freq>
1c0082b6:	0007a023          	sw	zero,0(a5)
1c0082ba:	0007a223          	sw	zero,4(a5)
1c0082be:	1c0067b7          	lui	a5,0x1c006
1c0082c2:	1e079823          	sh	zero,496(a5) # 1c0061f0 <stack>
1c0082c6:	8082                	ret

1c0082c8 <pos_soc_init>:
1c0082c8:	1141                	addi	sp,sp,-16
1c0082ca:	c606                	sw	ra,12(sp)
1c0082cc:	c422                	sw	s0,8(sp)
1c0082ce:	37c5                	jal	1c0082ae <pos_fll_constructor>
1c0082d0:	4501                	li	a0,0
1c0082d2:	3d75                	jal	1c00818e <pos_fll_init>
1c0082d4:	1c006437          	lui	s0,0x1c006
1c0082d8:	1ea42e23          	sw	a0,508(s0) # 1c0061fc <pos_freq_domains>
1c0082dc:	4505                	li	a0,1
1c0082de:	3d45                	jal	1c00818e <pos_fll_init>
1c0082e0:	1fc40413          	addi	s0,s0,508
1c0082e4:	c408                	sw	a0,8(s0)
1c0082e6:	40b2                	lw	ra,12(sp)
1c0082e8:	4422                	lw	s0,8(sp)
1c0082ea:	0141                	addi	sp,sp,16
1c0082ec:	8082                	ret

1c0082ee <poll_done>:
1c0082ee:	1a400737          	lui	a4,0x1a400
1c0082f2:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c0082f6:	8b85                	andi	a5,a5,1
1c0082f8:	dfed                	beqz	a5,1c0082f2 <poll_done+0x4>
1c0082fa:	8082                	ret

1c0082fc <KeccakF1600_StatePermute>:
1c0082fc:	1a4007b7          	lui	a5,0x1a400
1c008300:	1141                	addi	sp,sp,-16
1c008302:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c008306:	4118                	lw	a4,0(a0)
1c008308:	0791                	addi	a5,a5,4
1c00830a:	fee7ae23          	sw	a4,-4(a5)
1c00830e:	0511                	addi	a0,a0,4
1c008310:	fed79be3          	bne	a5,a3,1c008306 <KeccakF1600_StatePermute+0xa>
1c008314:	1a4007b7          	lui	a5,0x1a400
1c008318:	4705                	li	a4,1
1c00831a:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c00831e:	1a400737          	lui	a4,0x1a400
1c008322:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c008326:	8b85                	andi	a5,a5,1
1c008328:	dfed                	beqz	a5,1c008322 <KeccakF1600_StatePermute+0x26>
1c00832a:	c602                	sw	zero,12(sp)
1c00832c:	4732                	lw	a4,12(sp)
1c00832e:	03100793          	li	a5,49
1c008332:	02e7c663          	blt	a5,a4,1c00835e <KeccakF1600_StatePermute+0x62>
1c008336:	1a400637          	lui	a2,0x1a400
1c00833a:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00833e:	03100513          	li	a0,49
1c008342:	4732                	lw	a4,12(sp)
1c008344:	47b2                	lw	a5,12(sp)
1c008346:	070a                	slli	a4,a4,0x2
1c008348:	9732                	add	a4,a4,a2
1c00834a:	4314                	lw	a3,0(a4)
1c00834c:	4732                	lw	a4,12(sp)
1c00834e:	078a                	slli	a5,a5,0x2
1c008350:	0705                	addi	a4,a4,1
1c008352:	c63a                	sw	a4,12(sp)
1c008354:	97ae                	add	a5,a5,a1
1c008356:	4732                	lw	a4,12(sp)
1c008358:	c394                	sw	a3,0(a5)
1c00835a:	fee554e3          	ble	a4,a0,1c008342 <KeccakF1600_StatePermute+0x46>
1c00835e:	0141                	addi	sp,sp,16
1c008360:	8082                	ret

1c008362 <KYBER_poly_ntt>:
1c008362:	1c000537          	lui	a0,0x1c000
1c008366:	1141                	addi	sp,sp,-16
1c008368:	13450513          	addi	a0,a0,308 # 1c000134 <__DTOR_END__+0x118>
1c00836c:	c606                	sw	ra,12(sp)
1c00836e:	c422                	sw	s0,8(sp)
1c008370:	c226                	sw	s1,4(sp)
1c008372:	c04a                	sw	s2,0(sp)
1c008374:	12f000ef          	jal	ra,1c008ca2 <puts>
1c008378:	1a4014b7          	lui	s1,0x1a401
1c00837c:	4785                	li	a5,1
1c00837e:	c49c                	sw	a5,8(s1)
1c008380:	0004a423          	sw	zero,8(s1) # 1a401008 <__CTOR_LIST__-0x1bfeffc>
1c008384:	0004a423          	sw	zero,8(s1)
1c008388:	0004a423          	sw	zero,8(s1)
1c00838c:	0004a423          	sw	zero,8(s1)
1c008390:	0004a423          	sw	zero,8(s1)
1c008394:	0004a423          	sw	zero,8(s1)
1c008398:	0004a423          	sw	zero,8(s1)
1c00839c:	0004a423          	sw	zero,8(s1)
1c0083a0:	0004a423          	sw	zero,8(s1)
1c0083a4:	1c000537          	lui	a0,0x1c000
1c0083a8:	14850513          	addi	a0,a0,328 # 1c000148 <__DTOR_END__+0x12c>
1c0083ac:	0f7000ef          	jal	ra,1c008ca2 <puts>
1c0083b0:	4401                	li	s0,0
1c0083b2:	0004a423          	sw	zero,8(s1)
1c0083b6:	1c000937          	lui	s2,0x1c000
1c0083ba:	10000493          	li	s1,256
1c0083be:	0405                	addi	s0,s0,1
1c0083c0:	85a2                	mv	a1,s0
1c0083c2:	16490513          	addi	a0,s2,356 # 1c000164 <__DTOR_END__+0x148>
1c0083c6:	177000ef          	jal	ra,1c008d3c <printf>
1c0083ca:	fe941ae3          	bne	s0,s1,1c0083be <KYBER_poly_ntt+0x5c>
1c0083ce:	1c000537          	lui	a0,0x1c000
1c0083d2:	16850513          	addi	a0,a0,360 # 1c000168 <__DTOR_END__+0x14c>
1c0083d6:	0cd000ef          	jal	ra,1c008ca2 <puts>
1c0083da:	1a4017b7          	lui	a5,0x1a401
1c0083de:	08000713          	li	a4,128
1c0083e2:	c798                	sw	a4,8(a5)
1c0083e4:	4422                	lw	s0,8(sp)
1c0083e6:	40b2                	lw	ra,12(sp)
1c0083e8:	4492                	lw	s1,4(sp)
1c0083ea:	4902                	lw	s2,0(sp)
1c0083ec:	0141                	addi	sp,sp,16
1c0083ee:	b701                	j	1c0082ee <poll_done>

1c0083f0 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c0083f0:	1141                	addi	sp,sp,-16
1c0083f2:	55555337          	lui	t1,0x55555
1c0083f6:	68c1                	lui	a7,0x10
1c0083f8:	c622                	sw	s0,12(sp)
1c0083fa:	c426                	sw	s1,8(sp)
1c0083fc:	c24a                	sw	s2,4(sp)
1c0083fe:	20050e13          	addi	t3,a0,512
1c008402:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c008406:	18fd                	addi	a7,a7,-1
1c008408:	419c                	lw	a5,0(a1)
1c00840a:	0541                	addi	a0,a0,16
1c00840c:	0017d713          	srli	a4,a5,0x1
1c008410:	00677733          	and	a4,a4,t1
1c008414:	0067f7b3          	and	a5,a5,t1
1c008418:	97ba                	add	a5,a5,a4
1c00841a:	0027d913          	srli	s2,a5,0x2
1c00841e:	0087d693          	srli	a3,a5,0x8
1c008422:	00a7d493          	srli	s1,a5,0xa
1c008426:	0107d713          	srli	a4,a5,0x10
1c00842a:	0127d413          	srli	s0,a5,0x12
1c00842e:	0037f613          	andi	a2,a5,3
1c008432:	00397913          	andi	s2,s2,3
1c008436:	8a8d                	andi	a3,a3,3
1c008438:	888d                	andi	s1,s1,3
1c00843a:	8b0d                	andi	a4,a4,3
1c00843c:	880d                	andi	s0,s0,3
1c00843e:	0047df13          	srli	t5,a5,0x4
1c008442:	0067d393          	srli	t2,a5,0x6
1c008446:	00c7de93          	srli	t4,a5,0xc
1c00844a:	00e7d293          	srli	t0,a5,0xe
1c00844e:	0147d813          	srli	a6,a5,0x14
1c008452:	0167df93          	srli	t6,a5,0x16
1c008456:	41260633          	sub	a2,a2,s2
1c00845a:	8e85                	sub	a3,a3,s1
1c00845c:	8f01                	sub	a4,a4,s0
1c00845e:	0033f393          	andi	t2,t2,3
1c008462:	0032f293          	andi	t0,t0,3
1c008466:	003fff93          	andi	t6,t6,3
1c00846a:	003f7f13          	andi	t5,t5,3
1c00846e:	003efe93          	andi	t4,t4,3
1c008472:	00387813          	andi	a6,a6,3
1c008476:	0642                	slli	a2,a2,0x10
1c008478:	06c2                	slli	a3,a3,0x10
1c00847a:	0742                	slli	a4,a4,0x10
1c00847c:	407f0f33          	sub	t5,t5,t2
1c008480:	405e8eb3          	sub	t4,t4,t0
1c008484:	41f80833          	sub	a6,a6,t6
1c008488:	0187d293          	srli	t0,a5,0x18
1c00848c:	01a7d393          	srli	t2,a5,0x1a
1c008490:	01c7df93          	srli	t6,a5,0x1c
1c008494:	8241                	srli	a2,a2,0x10
1c008496:	82c1                	srli	a3,a3,0x10
1c008498:	8341                	srli	a4,a4,0x10
1c00849a:	0842                	slli	a6,a6,0x10
1c00849c:	0f42                	slli	t5,t5,0x10
1c00849e:	01167633          	and	a2,a2,a7
1c0084a2:	0ec2                	slli	t4,t4,0x10
1c0084a4:	0116f6b3          	and	a3,a3,a7
1c0084a8:	01177733          	and	a4,a4,a7
1c0084ac:	0032f293          	andi	t0,t0,3
1c0084b0:	0033f393          	andi	t2,t2,3
1c0084b4:	003fff93          	andi	t6,t6,3
1c0084b8:	83f9                	srli	a5,a5,0x1e
1c0084ba:	01076733          	or	a4,a4,a6
1c0084be:	01e66633          	or	a2,a2,t5
1c0084c2:	01d6e6b3          	or	a3,a3,t4
1c0084c6:	40728833          	sub	a6,t0,t2
1c0084ca:	40ff87b3          	sub	a5,t6,a5
1c0084ce:	fec52823          	sw	a2,-16(a0)
1c0084d2:	fed52a23          	sw	a3,-12(a0)
1c0084d6:	fee52c23          	sw	a4,-8(a0)
1c0084da:	ff051e23          	sh	a6,-4(a0)
1c0084de:	fef51f23          	sh	a5,-2(a0)
1c0084e2:	0591                	addi	a1,a1,4
1c0084e4:	f3c512e3          	bne	a0,t3,1c008408 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c0084e8:	4432                	lw	s0,12(sp)
1c0084ea:	44a2                	lw	s1,8(sp)
1c0084ec:	4912                	lw	s2,4(sp)
1c0084ee:	0141                	addi	sp,sp,16
1c0084f0:	8082                	ret

1c0084f2 <keccak_absorb.constprop.7>:
1c0084f2:	7151                	addi	sp,sp,-240
1c0084f4:	d3a6                	sw	s1,228(sp)
1c0084f6:	cfce                	sw	s3,220(sp)
1c0084f8:	cdd2                	sw	s4,216(sp)
1c0084fa:	cbd6                	sw	s5,212(sp)
1c0084fc:	d786                	sw	ra,236(sp)
1c0084fe:	d5a2                	sw	s0,232(sp)
1c008500:	d1ca                	sw	s2,224(sp)
1c008502:	89aa                	mv	s3,a0
1c008504:	8a32                	mv	s4,a2
1c008506:	84b6                	mv	s1,a3
1c008508:	8aaa                	mv	s5,a0
1c00850a:	0c850713          	addi	a4,a0,200
1c00850e:	87aa                	mv	a5,a0
1c008510:	4601                	li	a2,0
1c008512:	4681                	li	a3,0
1c008514:	c390                	sw	a2,0(a5)
1c008516:	c3d4                	sw	a3,4(a5)
1c008518:	07a1                	addi	a5,a5,8
1c00851a:	fef71be3          	bne	a4,a5,1c008510 <keccak_absorb.constprop.7+0x1e>
1c00851e:	08700793          	li	a5,135
1c008522:	0747fb63          	bleu	s4,a5,1c008598 <keccak_absorb.constprop.7+0xa6>
1c008526:	08700413          	li	s0,135
1c00852a:	08858913          	addi	s2,a1,136
1c00852e:	874e                	mv	a4,s3
1c008530:	0015c783          	lbu	a5,1(a1)
1c008534:	0025c603          	lbu	a2,2(a1)
1c008538:	0055c883          	lbu	a7,5(a1)
1c00853c:	0045c303          	lbu	t1,4(a1)
1c008540:	0065c803          	lbu	a6,6(a1)
1c008544:	0005ce03          	lbu	t3,0(a1)
1c008548:	0035c503          	lbu	a0,3(a1)
1c00854c:	0075c683          	lbu	a3,7(a1)
1c008550:	0642                	slli	a2,a2,0x10
1c008552:	07a2                	slli	a5,a5,0x8
1c008554:	08a2                	slli	a7,a7,0x8
1c008556:	8fd1                	or	a5,a5,a2
1c008558:	0068e8b3          	or	a7,a7,t1
1c00855c:	0842                	slli	a6,a6,0x10
1c00855e:	00072303          	lw	t1,0(a4)
1c008562:	4350                	lw	a2,4(a4)
1c008564:	01c7e7b3          	or	a5,a5,t3
1c008568:	0562                	slli	a0,a0,0x18
1c00856a:	01186833          	or	a6,a6,a7
1c00856e:	06e2                	slli	a3,a3,0x18
1c008570:	8fc9                	or	a5,a5,a0
1c008572:	0106e6b3          	or	a3,a3,a6
1c008576:	00f347b3          	xor	a5,t1,a5
1c00857a:	8eb1                	xor	a3,a3,a2
1c00857c:	c31c                	sw	a5,0(a4)
1c00857e:	c354                	sw	a3,4(a4)
1c008580:	05a1                	addi	a1,a1,8
1c008582:	0721                	addi	a4,a4,8
1c008584:	fab916e3          	bne	s2,a1,1c008530 <keccak_absorb.constprop.7+0x3e>
1c008588:	85ce                	mv	a1,s3
1c00858a:	854e                	mv	a0,s3
1c00858c:	3b85                	jal	1c0082fc <KeccakF1600_StatePermute>
1c00858e:	f78a0a13          	addi	s4,s4,-136
1c008592:	85ca                	mv	a1,s2
1c008594:	f9446be3          	bltu	s0,s4,1c00852a <keccak_absorb.constprop.7+0x38>
1c008598:	003c                	addi	a5,sp,8
1c00859a:	0918                	addi	a4,sp,144
1c00859c:	883e                	mv	a6,a5
1c00859e:	4681                	li	a3,0
1c0085a0:	00d82023          	sw	a3,0(a6)
1c0085a4:	0811                	addi	a6,a6,4
1c0085a6:	ff071ce3          	bne	a4,a6,1c00859e <keccak_absorb.constprop.7+0xac>
1c0085aa:	060a0463          	beqz	s4,1c008612 <keccak_absorb.constprop.7+0x120>
1c0085ae:	fffa0713          	addi	a4,s4,-1
1c0085b2:	4689                	li	a3,2
1c0085b4:	0ee6f163          	bleu	a4,a3,1c008696 <keccak_absorb.constprop.7+0x1a4>
1c0085b8:	002a5893          	srli	a7,s4,0x2
1c0085bc:	862e                	mv	a2,a1
1c0085be:	86be                	mv	a3,a5
1c0085c0:	4701                	li	a4,0
1c0085c2:	4208                	lw	a0,0(a2)
1c0085c4:	0705                	addi	a4,a4,1
1c0085c6:	c288                	sw	a0,0(a3)
1c0085c8:	0611                	addi	a2,a2,4
1c0085ca:	0691                	addi	a3,a3,4
1c0085cc:	ff176be3          	bltu	a4,a7,1c0085c2 <keccak_absorb.constprop.7+0xd0>
1c0085d0:	ffca7713          	andi	a4,s4,-4
1c0085d4:	02ea0f63          	beq	s4,a4,1c008612 <keccak_absorb.constprop.7+0x120>
1c0085d8:	00e586b3          	add	a3,a1,a4
1c0085dc:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c0085e0:	0988                	addi	a0,sp,208
1c0085e2:	00e506b3          	add	a3,a0,a4
1c0085e6:	f2c68c23          	sb	a2,-200(a3)
1c0085ea:	00170693          	addi	a3,a4,1
1c0085ee:	0346f263          	bleu	s4,a3,1c008612 <keccak_absorb.constprop.7+0x120>
1c0085f2:	00d58633          	add	a2,a1,a3
1c0085f6:	00064603          	lbu	a2,0(a2)
1c0085fa:	96aa                	add	a3,a3,a0
1c0085fc:	f2c68c23          	sb	a2,-200(a3)
1c008600:	0709                	addi	a4,a4,2
1c008602:	01477863          	bleu	s4,a4,1c008612 <keccak_absorb.constprop.7+0x120>
1c008606:	95ba                	add	a1,a1,a4
1c008608:	0005c683          	lbu	a3,0(a1)
1c00860c:	972a                	add	a4,a4,a0
1c00860e:	f2d70c23          	sb	a3,-200(a4)
1c008612:	0990                	addi	a2,sp,208
1c008614:	9a32                	add	s4,s4,a2
1c008616:	f29a0c23          	sb	s1,-200(s4)
1c00861a:	08f14703          	lbu	a4,143(sp)
1c00861e:	f8076713          	ori	a4,a4,-128
1c008622:	08e107a3          	sb	a4,143(sp)
1c008626:	0017c703          	lbu	a4,1(a5) # 1a401001 <__CTOR_LIST__-0x1bff003>
1c00862a:	0027c883          	lbu	a7,2(a5)
1c00862e:	0057c503          	lbu	a0,5(a5)
1c008632:	0047c303          	lbu	t1,4(a5)
1c008636:	0067c583          	lbu	a1,6(a5)
1c00863a:	0007ce03          	lbu	t3,0(a5)
1c00863e:	0037c603          	lbu	a2,3(a5)
1c008642:	0077c683          	lbu	a3,7(a5)
1c008646:	08c2                	slli	a7,a7,0x10
1c008648:	0722                	slli	a4,a4,0x8
1c00864a:	0522                	slli	a0,a0,0x8
1c00864c:	01176733          	or	a4,a4,a7
1c008650:	00656533          	or	a0,a0,t1
1c008654:	05c2                	slli	a1,a1,0x10
1c008656:	000aa303          	lw	t1,0(s5)
1c00865a:	004aa883          	lw	a7,4(s5)
1c00865e:	01c76733          	or	a4,a4,t3
1c008662:	0662                	slli	a2,a2,0x18
1c008664:	8dc9                	or	a1,a1,a0
1c008666:	06e2                	slli	a3,a3,0x18
1c008668:	8f51                	or	a4,a4,a2
1c00866a:	8ecd                	or	a3,a3,a1
1c00866c:	00e34733          	xor	a4,t1,a4
1c008670:	00d8c6b3          	xor	a3,a7,a3
1c008674:	00eaa023          	sw	a4,0(s5)
1c008678:	00daa223          	sw	a3,4(s5)
1c00867c:	07a1                	addi	a5,a5,8
1c00867e:	0aa1                	addi	s5,s5,8
1c008680:	faf813e3          	bne	a6,a5,1c008626 <keccak_absorb.constprop.7+0x134>
1c008684:	50be                	lw	ra,236(sp)
1c008686:	542e                	lw	s0,232(sp)
1c008688:	549e                	lw	s1,228(sp)
1c00868a:	590e                	lw	s2,224(sp)
1c00868c:	49fe                	lw	s3,220(sp)
1c00868e:	4a6e                	lw	s4,216(sp)
1c008690:	4ade                	lw	s5,212(sp)
1c008692:	616d                	addi	sp,sp,240
1c008694:	8082                	ret
1c008696:	4701                	li	a4,0
1c008698:	b781                	j	1c0085d8 <keccak_absorb.constprop.7+0xe6>

1c00869a <shake256>:
1c00869a:	7131                	addi	sp,sp,-192
1c00869c:	db26                	sw	s1,180(sp)
1c00869e:	d94a                	sw	s2,176(sp)
1c0086a0:	08800493          	li	s1,136
1c0086a4:	892a                	mv	s2,a0
1c0086a6:	0c800513          	li	a0,200
1c0086aa:	dd22                	sw	s0,184(sp)
1c0086ac:	d74e                	sw	s3,172(sp)
1c0086ae:	d552                	sw	s4,168(sp)
1c0086b0:	df06                	sw	ra,188(sp)
1c0086b2:	d356                	sw	s5,164(sp)
1c0086b4:	d15a                	sw	s6,160(sp)
1c0086b6:	cf5e                	sw	s7,156(sp)
1c0086b8:	cd62                	sw	s8,152(sp)
1c0086ba:	cb66                	sw	s9,148(sp)
1c0086bc:	89ae                	mv	s3,a1
1c0086be:	8432                	mv	s0,a2
1c0086c0:	8a36                	mv	s4,a3
1c0086c2:	0295d4b3          	divu	s1,a1,s1
1c0086c6:	7a8010ef          	jal	ra,1c009e6e <pi_l2_malloc>
1c0086ca:	20050163          	beqz	a0,1c0088cc <shake256+0x232>
1c0086ce:	46fd                	li	a3,31
1c0086d0:	8652                	mv	a2,s4
1c0086d2:	85a2                	mv	a1,s0
1c0086d4:	8b2a                	mv	s6,a0
1c0086d6:	3d31                	jal	1c0084f2 <keccak_absorb.constprop.7>
1c0086d8:	c4dd                	beqz	s1,1c008786 <shake256+0xec>
1c0086da:	00449713          	slli	a4,s1,0x4
1c0086de:	00970433          	add	s0,a4,s1
1c0086e2:	040e                	slli	s0,s0,0x3
1c0086e4:	7bc1                	lui	s7,0xffff0
1c0086e6:	ff010ab7          	lui	s5,0xff010
1c0086ea:	01000a37          	lui	s4,0x1000
1c0086ee:	412b0c33          	sub	s8,s6,s2
1c0086f2:	944a                	add	s0,s0,s2
1c0086f4:	8cca                	mv	s9,s2
1c0086f6:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c0086fa:	1afd                	addi	s5,s5,-1
1c0086fc:	1a7d                	addi	s4,s4,-1
1c0086fe:	85da                	mv	a1,s6
1c008700:	855a                	mv	a0,s6
1c008702:	3eed                	jal	1c0082fc <KeccakF1600_StatePermute>
1c008704:	8666                	mv	a2,s9
1c008706:	088c8593          	addi	a1,s9,136
1c00870a:	00cc07b3          	add	a5,s8,a2
1c00870e:	4388                	lw	a0,0(a5)
1c008710:	43d4                	lw	a3,4(a5)
1c008712:	00855893          	srli	a7,a0,0x8
1c008716:	0086d813          	srli	a6,a3,0x8
1c00871a:	0ff57713          	andi	a4,a0,255
1c00871e:	0ff6f793          	andi	a5,a3,255
1c008722:	0ff8f893          	andi	a7,a7,255
1c008726:	0ff87813          	andi	a6,a6,255
1c00872a:	08a2                	slli	a7,a7,0x8
1c00872c:	0822                	slli	a6,a6,0x8
1c00872e:	01777733          	and	a4,a4,s7
1c008732:	0177f7b3          	and	a5,a5,s7
1c008736:	01176733          	or	a4,a4,a7
1c00873a:	0107e7b3          	or	a5,a5,a6
1c00873e:	00ff08b7          	lui	a7,0xff0
1c008742:	00ff0837          	lui	a6,0xff0
1c008746:	011578b3          	and	a7,a0,a7
1c00874a:	0106f833          	and	a6,a3,a6
1c00874e:	01577733          	and	a4,a4,s5
1c008752:	0157f7b3          	and	a5,a5,s5
1c008756:	01176733          	or	a4,a4,a7
1c00875a:	8161                	srli	a0,a0,0x18
1c00875c:	0107e7b3          	or	a5,a5,a6
1c008760:	82e1                	srli	a3,a3,0x18
1c008762:	0562                	slli	a0,a0,0x18
1c008764:	01477733          	and	a4,a4,s4
1c008768:	06e2                	slli	a3,a3,0x18
1c00876a:	0147f7b3          	and	a5,a5,s4
1c00876e:	8f49                	or	a4,a4,a0
1c008770:	8fd5                	or	a5,a5,a3
1c008772:	c218                	sw	a4,0(a2)
1c008774:	c25c                	sw	a5,4(a2)
1c008776:	0621                	addi	a2,a2,8
1c008778:	f8c599e3          	bne	a1,a2,1c00870a <shake256+0x70>
1c00877c:	8cae                	mv	s9,a1
1c00877e:	f78c0c13          	addi	s8,s8,-136
1c008782:	f6b41ee3          	bne	s0,a1,1c0086fe <shake256+0x64>
1c008786:	08800793          	li	a5,136
1c00878a:	02f9f9b3          	remu	s3,s3,a5
1c00878e:	02099363          	bnez	s3,1c0087b4 <shake256+0x11a>
1c008792:	546a                	lw	s0,184(sp)
1c008794:	50fa                	lw	ra,188(sp)
1c008796:	54da                	lw	s1,180(sp)
1c008798:	594a                	lw	s2,176(sp)
1c00879a:	59ba                	lw	s3,172(sp)
1c00879c:	5a2a                	lw	s4,168(sp)
1c00879e:	5a9a                	lw	s5,164(sp)
1c0087a0:	4bfa                	lw	s7,156(sp)
1c0087a2:	4c6a                	lw	s8,152(sp)
1c0087a4:	4cda                	lw	s9,148(sp)
1c0087a6:	855a                	mv	a0,s6
1c0087a8:	5b0a                	lw	s6,160(sp)
1c0087aa:	0c800593          	li	a1,200
1c0087ae:	6129                	addi	sp,sp,192
1c0087b0:	6ca0106f          	j	1c009e7a <pi_l2_free>
1c0087b4:	85da                	mv	a1,s6
1c0087b6:	855a                	mv	a0,s6
1c0087b8:	3691                	jal	1c0082fc <KeccakF1600_StatePermute>
1c0087ba:	002c                	addi	a1,sp,8
1c0087bc:	78c1                	lui	a7,0xffff0
1c0087be:	ff010837          	lui	a6,0xff010
1c0087c2:	01000537          	lui	a0,0x1000
1c0087c6:	09010e13          	addi	t3,sp,144
1c0087ca:	862e                	mv	a2,a1
1c0087cc:	40bb0333          	sub	t1,s6,a1
1c0087d0:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c0087d4:	187d                	addi	a6,a6,-1
1c0087d6:	157d                	addi	a0,a0,-1
1c0087d8:	00c307b3          	add	a5,t1,a2
1c0087dc:	0007ae83          	lw	t4,0(a5)
1c0087e0:	43d4                	lw	a3,4(a5)
1c0087e2:	008edf93          	srli	t6,t4,0x8
1c0087e6:	0086df13          	srli	t5,a3,0x8
1c0087ea:	0ffef713          	andi	a4,t4,255
1c0087ee:	0ff6f793          	andi	a5,a3,255
1c0087f2:	0fffff93          	andi	t6,t6,255
1c0087f6:	0fff7f13          	andi	t5,t5,255
1c0087fa:	0fa2                	slli	t6,t6,0x8
1c0087fc:	0f22                	slli	t5,t5,0x8
1c0087fe:	01177733          	and	a4,a4,a7
1c008802:	0117f7b3          	and	a5,a5,a7
1c008806:	01f76733          	or	a4,a4,t6
1c00880a:	01e7e7b3          	or	a5,a5,t5
1c00880e:	00ff0fb7          	lui	t6,0xff0
1c008812:	00ff0f37          	lui	t5,0xff0
1c008816:	01feffb3          	and	t6,t4,t6
1c00881a:	01e6ff33          	and	t5,a3,t5
1c00881e:	01077733          	and	a4,a4,a6
1c008822:	0107f7b3          	and	a5,a5,a6
1c008826:	01f76733          	or	a4,a4,t6
1c00882a:	018ede93          	srli	t4,t4,0x18
1c00882e:	01e7e7b3          	or	a5,a5,t5
1c008832:	82e1                	srli	a3,a3,0x18
1c008834:	0ee2                	slli	t4,t4,0x18
1c008836:	8f69                	and	a4,a4,a0
1c008838:	06e2                	slli	a3,a3,0x18
1c00883a:	8fe9                	and	a5,a5,a0
1c00883c:	01d76733          	or	a4,a4,t4
1c008840:	8fd5                	or	a5,a5,a3
1c008842:	c218                	sw	a4,0(a2)
1c008844:	c25c                	sw	a5,4(a2)
1c008846:	0621                	addi	a2,a2,8
1c008848:	f8ce18e3          	bne	t3,a2,1c0087d8 <shake256+0x13e>
1c00884c:	fff98793          	addi	a5,s3,-1
1c008850:	4709                	li	a4,2
1c008852:	06f77963          	bleu	a5,a4,1c0088c4 <shake256+0x22a>
1c008856:	00449713          	slli	a4,s1,0x4
1c00885a:	009707b3          	add	a5,a4,s1
1c00885e:	078e                	slli	a5,a5,0x3
1c008860:	0029d513          	srli	a0,s3,0x2
1c008864:	97ca                	add	a5,a5,s2
1c008866:	4681                	li	a3,0
1c008868:	4190                	lw	a2,0(a1)
1c00886a:	0685                	addi	a3,a3,1
1c00886c:	c390                	sw	a2,0(a5)
1c00886e:	0591                	addi	a1,a1,4
1c008870:	0791                	addi	a5,a5,4
1c008872:	fea6ebe3          	bltu	a3,a0,1c008868 <shake256+0x1ce>
1c008876:	ffc9f693          	andi	a3,s3,-4
1c00887a:	f0d98ce3          	beq	s3,a3,1c008792 <shake256+0xf8>
1c00887e:	009707b3          	add	a5,a4,s1
1c008882:	090c                	addi	a1,sp,144
1c008884:	00d58733          	add	a4,a1,a3
1c008888:	078e                	slli	a5,a5,0x3
1c00888a:	f7874603          	lbu	a2,-136(a4)
1c00888e:	97ca                	add	a5,a5,s2
1c008890:	00d78733          	add	a4,a5,a3
1c008894:	00c70023          	sb	a2,0(a4)
1c008898:	00168713          	addi	a4,a3,1
1c00889c:	ef377be3          	bleu	s3,a4,1c008792 <shake256+0xf8>
1c0088a0:	00e58633          	add	a2,a1,a4
1c0088a4:	f7864603          	lbu	a2,-136(a2)
1c0088a8:	973e                	add	a4,a4,a5
1c0088aa:	00c70023          	sb	a2,0(a4)
1c0088ae:	0689                	addi	a3,a3,2
1c0088b0:	ef36f1e3          	bleu	s3,a3,1c008792 <shake256+0xf8>
1c0088b4:	00d58733          	add	a4,a1,a3
1c0088b8:	f7874703          	lbu	a4,-136(a4)
1c0088bc:	97b6                	add	a5,a5,a3
1c0088be:	00e78023          	sb	a4,0(a5)
1c0088c2:	bdc1                	j	1c008792 <shake256+0xf8>
1c0088c4:	4681                	li	a3,0
1c0088c6:	00449713          	slli	a4,s1,0x4
1c0088ca:	bf55                	j	1c00887e <shake256+0x1e4>
1c0088cc:	06f00513          	li	a0,111
1c0088d0:	2981                	jal	1c008d20 <exit>

1c0088d2 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c0088d2:	9b010113          	addi	sp,sp,-1616
1c0088d6:	100c                	addi	a1,sp,32
1c0088d8:	4601                	li	a2,0
1c0088da:	0088                	addi	a0,sp,64
1c0088dc:	64112623          	sw	ra,1612(sp)
1c0088e0:	2025                	jal	1c008908 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0088e2:	1c000537          	lui	a0,0x1c000
1c0088e6:	17c50513          	addi	a0,a0,380 # 1c00017c <__DTOR_END__+0x160>
1c0088ea:	2e65                	jal	1c008ca2 <puts>
1c0088ec:	0088                	addi	a0,sp,64
1c0088ee:	2835                	jal	1c00892a <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c0088f0:	64c12083          	lw	ra,1612(sp)
1c0088f4:	65010113          	addi	sp,sp,1616
1c0088f8:	8082                	ret

1c0088fa <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c0088fa:	1141                	addi	sp,sp,-16
1c0088fc:	c606                	sw	ra,12(sp)
1c0088fe:	3fd1                	jal	1c0088d2 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c008900:	40b2                	lw	ra,12(sp)
1c008902:	4501                	li	a0,0
1c008904:	0141                	addi	sp,sp,16
1c008906:	8082                	ret

1c008908 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c008908:	7175                	addi	sp,sp,-144
1c00890a:	c522                	sw	s0,136(sp)
1c00890c:	86b2                	mv	a3,a2
1c00890e:	842a                	mv	s0,a0
1c008910:	862e                	mv	a2,a1
1c008912:	850a                	mv	a0,sp
1c008914:	08000593          	li	a1,128
1c008918:	c706                	sw	ra,140(sp)
1c00891a:	2885                	jal	1c00898a <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00891c:	858a                	mv	a1,sp
1c00891e:	8522                	mv	a0,s0
1c008920:	3cc1                	jal	1c0083f0 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c008922:	40ba                	lw	ra,140(sp)
1c008924:	442a                	lw	s0,136(sp)
1c008926:	6149                	addi	sp,sp,144
1c008928:	8082                	ret

1c00892a <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c00892a:	bf010113          	addi	sp,sp,-1040
1c00892e:	40812423          	sw	s0,1032(sp)
1c008932:	40912223          	sw	s1,1028(sp)
1c008936:	41212023          	sw	s2,1024(sp)
1c00893a:	40112623          	sw	ra,1036(sp)
1c00893e:	0400                	addi	s0,sp,512
1c008940:	40010913          	addi	s2,sp,1024
1c008944:	1c0004b7          	lui	s1,0x1c000
1c008948:	00041583          	lh	a1,0(s0)
1c00894c:	16448513          	addi	a0,s1,356 # 1c000164 <__DTOR_END__+0x148>
1c008950:	0409                	addi	s0,s0,2
1c008952:	26ed                	jal	1c008d3c <printf>
1c008954:	ff241ae3          	bne	s0,s2,1c008948 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x1e>
1c008958:	1c000537          	lui	a0,0x1c000
1c00895c:	19050513          	addi	a0,a0,400 # 1c000190 <__DTOR_END__+0x174>
1c008960:	2689                	jal	1c008ca2 <puts>
1c008962:	40011583          	lh	a1,1024(sp)
1c008966:	20011503          	lh	a0,512(sp)
1c00896a:	3ae5                	jal	1c008362 <KYBER_poly_ntt>
1c00896c:	40812403          	lw	s0,1032(sp)
1c008970:	40c12083          	lw	ra,1036(sp)
1c008974:	40412483          	lw	s1,1028(sp)
1c008978:	40012903          	lw	s2,1024(sp)
1c00897c:	1c000537          	lui	a0,0x1c000
1c008980:	1b450513          	addi	a0,a0,436 # 1c0001b4 <__DTOR_END__+0x198>
1c008984:	41010113          	addi	sp,sp,1040
1c008988:	ae29                	j	1c008ca2 <puts>

1c00898a <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00898a:	7139                	addi	sp,sp,-64
1c00898c:	87b2                	mv	a5,a2
1c00898e:	da26                	sw	s1,52(sp)
1c008990:	d84a                	sw	s2,48(sp)
1c008992:	84aa                	mv	s1,a0
1c008994:	892e                	mv	s2,a1
1c008996:	02000613          	li	a2,32
1c00899a:	85be                	mv	a1,a5
1c00899c:	0068                	addi	a0,sp,12
1c00899e:	de06                	sw	ra,60(sp)
1c0089a0:	dc22                	sw	s0,56(sp)
1c0089a2:	8436                	mv	s0,a3
1c0089a4:	2091                	jal	1c0089e8 <memcpy>
1c0089a6:	0070                	addi	a2,sp,12
1c0089a8:	85ca                	mv	a1,s2
1c0089aa:	8526                	mv	a0,s1
1c0089ac:	02100693          	li	a3,33
1c0089b0:	02810623          	sb	s0,44(sp)
1c0089b4:	31dd                	jal	1c00869a <shake256>
1c0089b6:	50f2                	lw	ra,60(sp)
1c0089b8:	5462                	lw	s0,56(sp)
1c0089ba:	54d2                	lw	s1,52(sp)
1c0089bc:	5942                	lw	s2,48(sp)
1c0089be:	6121                	addi	sp,sp,64
1c0089c0:	8082                	ret

1c0089c2 <pos_wait_forever>:
1c0089c2:	f14027f3          	csrr	a5,mhartid
1c0089c6:	8795                	srai	a5,a5,0x5
1c0089c8:	03f7f793          	andi	a5,a5,63
1c0089cc:	477d                	li	a4,31
1c0089ce:	00e78363          	beq	a5,a4,1c0089d4 <pos_wait_forever+0x12>
1c0089d2:	a001                	j	1c0089d2 <pos_wait_forever+0x10>
1c0089d4:	1a10a7b7          	lui	a5,0x1a10a
1c0089d8:	577d                	li	a4,-1
1c0089da:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c0089de:	10500073          	wfi
1c0089e2:	10500073          	wfi
1c0089e6:	bfe5                	j	1c0089de <pos_wait_forever+0x1c>

1c0089e8 <memcpy>:
1c0089e8:	00b567b3          	or	a5,a0,a1
1c0089ec:	8b8d                	andi	a5,a5,3
1c0089ee:	10078f63          	beqz	a5,1c008b0c <memcpy+0x124>
1c0089f2:	14060063          	beqz	a2,1c008b32 <memcpy+0x14a>
1c0089f6:	00458793          	addi	a5,a1,4
1c0089fa:	00450693          	addi	a3,a0,4
1c0089fe:	00f537b3          	sltu	a5,a0,a5
1c008a02:	00d5b6b3          	sltu	a3,a1,a3
1c008a06:	0017c793          	xori	a5,a5,1
1c008a0a:	0016c693          	xori	a3,a3,1
1c008a0e:	873e                	mv	a4,a5
1c008a10:	87b6                	mv	a5,a3
1c008a12:	8fd9                	or	a5,a5,a4
1c008a14:	0ff7f793          	andi	a5,a5,255
1c008a18:	cff9                	beqz	a5,1c008af6 <memcpy+0x10e>
1c008a1a:	00863793          	sltiu	a5,a2,8
1c008a1e:	0017c793          	xori	a5,a5,1
1c008a22:	0ff7f793          	andi	a5,a5,255
1c008a26:	cbe1                	beqz	a5,1c008af6 <memcpy+0x10e>
1c008a28:	40b007b3          	neg	a5,a1
1c008a2c:	8b8d                	andi	a5,a5,3
1c008a2e:	fff60313          	addi	t1,a2,-1
1c008a32:	cfe5                	beqz	a5,1c008b2a <memcpy+0x142>
1c008a34:	0005c683          	lbu	a3,0(a1)
1c008a38:	4705                	li	a4,1
1c008a3a:	00d50023          	sb	a3,0(a0)
1c008a3e:	00158893          	addi	a7,a1,1
1c008a42:	00150813          	addi	a6,a0,1
1c008a46:	02e78963          	beq	a5,a4,1c008a78 <memcpy+0x90>
1c008a4a:	0015c683          	lbu	a3,1(a1)
1c008a4e:	470d                	li	a4,3
1c008a50:	00d500a3          	sb	a3,1(a0)
1c008a54:	00258893          	addi	a7,a1,2
1c008a58:	00250813          	addi	a6,a0,2
1c008a5c:	ffe60313          	addi	t1,a2,-2
1c008a60:	00e79c63          	bne	a5,a4,1c008a78 <memcpy+0x90>
1c008a64:	0025c703          	lbu	a4,2(a1)
1c008a68:	00358893          	addi	a7,a1,3
1c008a6c:	00350813          	addi	a6,a0,3
1c008a70:	00e50123          	sb	a4,2(a0)
1c008a74:	ffd60313          	addi	t1,a2,-3
1c008a78:	8e1d                	sub	a2,a2,a5
1c008a7a:	95be                	add	a1,a1,a5
1c008a7c:	00265e13          	srli	t3,a2,0x2
1c008a80:	97aa                	add	a5,a5,a0
1c008a82:	4701                	li	a4,0
1c008a84:	4194                	lw	a3,0(a1)
1c008a86:	0705                	addi	a4,a4,1
1c008a88:	c394                	sw	a3,0(a5)
1c008a8a:	0591                	addi	a1,a1,4
1c008a8c:	0791                	addi	a5,a5,4
1c008a8e:	ffc76be3          	bltu	a4,t3,1c008a84 <memcpy+0x9c>
1c008a92:	ffc67593          	andi	a1,a2,-4
1c008a96:	40b306b3          	sub	a3,t1,a1
1c008a9a:	00b807b3          	add	a5,a6,a1
1c008a9e:	00b88733          	add	a4,a7,a1
1c008aa2:	06b60463          	beq	a2,a1,1c008b0a <memcpy+0x122>
1c008aa6:	00074583          	lbu	a1,0(a4)
1c008aaa:	fff68613          	addi	a2,a3,-1
1c008aae:	00b78023          	sb	a1,0(a5)
1c008ab2:	ce21                	beqz	a2,1c008b0a <memcpy+0x122>
1c008ab4:	00174583          	lbu	a1,1(a4)
1c008ab8:	ffe68613          	addi	a2,a3,-2
1c008abc:	00b780a3          	sb	a1,1(a5)
1c008ac0:	c629                	beqz	a2,1c008b0a <memcpy+0x122>
1c008ac2:	00274583          	lbu	a1,2(a4)
1c008ac6:	ffd68613          	addi	a2,a3,-3
1c008aca:	00b78123          	sb	a1,2(a5)
1c008ace:	ce15                	beqz	a2,1c008b0a <memcpy+0x122>
1c008ad0:	00374583          	lbu	a1,3(a4)
1c008ad4:	ffc68613          	addi	a2,a3,-4
1c008ad8:	00b781a3          	sb	a1,3(a5)
1c008adc:	c61d                	beqz	a2,1c008b0a <memcpy+0x122>
1c008ade:	00474583          	lbu	a1,4(a4)
1c008ae2:	4615                	li	a2,5
1c008ae4:	00b78223          	sb	a1,4(a5)
1c008ae8:	02c68163          	beq	a3,a2,1c008b0a <memcpy+0x122>
1c008aec:	00574703          	lbu	a4,5(a4)
1c008af0:	00e782a3          	sb	a4,5(a5)
1c008af4:	8082                	ret
1c008af6:	962e                	add	a2,a2,a1
1c008af8:	87aa                	mv	a5,a0
1c008afa:	0585                	addi	a1,a1,1
1c008afc:	fff5c703          	lbu	a4,-1(a1)
1c008b00:	0785                	addi	a5,a5,1
1c008b02:	fee78fa3          	sb	a4,-1(a5)
1c008b06:	fec59ae3          	bne	a1,a2,1c008afa <memcpy+0x112>
1c008b0a:	8082                	ret
1c008b0c:	00367793          	andi	a5,a2,3
1c008b10:	ee0793e3          	bnez	a5,1c0089f6 <memcpy+0xe>
1c008b14:	da7d                	beqz	a2,1c008b0a <memcpy+0x122>
1c008b16:	87aa                	mv	a5,a0
1c008b18:	0591                	addi	a1,a1,4
1c008b1a:	ffc5a703          	lw	a4,-4(a1)
1c008b1e:	0791                	addi	a5,a5,4
1c008b20:	fee7ae23          	sw	a4,-4(a5)
1c008b24:	1671                	addi	a2,a2,-4
1c008b26:	fa6d                	bnez	a2,1c008b18 <memcpy+0x130>
1c008b28:	8082                	ret
1c008b2a:	88ae                	mv	a7,a1
1c008b2c:	882a                	mv	a6,a0
1c008b2e:	8332                	mv	t1,a2
1c008b30:	b7a1                	j	1c008a78 <memcpy+0x90>
1c008b32:	8082                	ret

1c008b34 <memmove>:
1c008b34:	40b507b3          	sub	a5,a0,a1
1c008b38:	10c7e463          	bltu	a5,a2,1c008c40 <memmove+0x10c>
1c008b3c:	12060b63          	beqz	a2,1c008c72 <memmove+0x13e>
1c008b40:	00458793          	addi	a5,a1,4
1c008b44:	00450693          	addi	a3,a0,4
1c008b48:	00f537b3          	sltu	a5,a0,a5
1c008b4c:	00d5b6b3          	sltu	a3,a1,a3
1c008b50:	0017c793          	xori	a5,a5,1
1c008b54:	0016c693          	xori	a3,a3,1
1c008b58:	873e                	mv	a4,a5
1c008b5a:	87b6                	mv	a5,a3
1c008b5c:	8fd9                	or	a5,a5,a4
1c008b5e:	0ff7f793          	andi	a5,a5,255
1c008b62:	cfed                	beqz	a5,1c008c5c <memmove+0x128>
1c008b64:	00863793          	sltiu	a5,a2,8
1c008b68:	0017c793          	xori	a5,a5,1
1c008b6c:	0ff7f793          	andi	a5,a5,255
1c008b70:	c7f5                	beqz	a5,1c008c5c <memmove+0x128>
1c008b72:	40b007b3          	neg	a5,a1
1c008b76:	8b8d                	andi	a5,a5,3
1c008b78:	fff60313          	addi	t1,a2,-1
1c008b7c:	cfe5                	beqz	a5,1c008c74 <memmove+0x140>
1c008b7e:	0005c683          	lbu	a3,0(a1)
1c008b82:	4705                	li	a4,1
1c008b84:	00d50023          	sb	a3,0(a0)
1c008b88:	00150813          	addi	a6,a0,1
1c008b8c:	00158893          	addi	a7,a1,1
1c008b90:	02e78963          	beq	a5,a4,1c008bc2 <memmove+0x8e>
1c008b94:	0015c683          	lbu	a3,1(a1)
1c008b98:	470d                	li	a4,3
1c008b9a:	00d500a3          	sb	a3,1(a0)
1c008b9e:	00250813          	addi	a6,a0,2
1c008ba2:	00258893          	addi	a7,a1,2
1c008ba6:	ffe60313          	addi	t1,a2,-2
1c008baa:	00e79c63          	bne	a5,a4,1c008bc2 <memmove+0x8e>
1c008bae:	0025c703          	lbu	a4,2(a1)
1c008bb2:	00350813          	addi	a6,a0,3
1c008bb6:	00e50123          	sb	a4,2(a0)
1c008bba:	00358893          	addi	a7,a1,3
1c008bbe:	ffd60313          	addi	t1,a2,-3
1c008bc2:	8e1d                	sub	a2,a2,a5
1c008bc4:	95be                	add	a1,a1,a5
1c008bc6:	00265e13          	srli	t3,a2,0x2
1c008bca:	97aa                	add	a5,a5,a0
1c008bcc:	4701                	li	a4,0
1c008bce:	4194                	lw	a3,0(a1)
1c008bd0:	0705                	addi	a4,a4,1
1c008bd2:	c394                	sw	a3,0(a5)
1c008bd4:	0591                	addi	a1,a1,4
1c008bd6:	0791                	addi	a5,a5,4
1c008bd8:	ffc76be3          	bltu	a4,t3,1c008bce <memmove+0x9a>
1c008bdc:	ffc67593          	andi	a1,a2,-4
1c008be0:	40b306b3          	sub	a3,t1,a1
1c008be4:	00b807b3          	add	a5,a6,a1
1c008be8:	00b88733          	add	a4,a7,a1
1c008bec:	08b60263          	beq	a2,a1,1c008c70 <memmove+0x13c>
1c008bf0:	00074583          	lbu	a1,0(a4)
1c008bf4:	fff68613          	addi	a2,a3,-1
1c008bf8:	00b78023          	sb	a1,0(a5)
1c008bfc:	ca35                	beqz	a2,1c008c70 <memmove+0x13c>
1c008bfe:	00174583          	lbu	a1,1(a4)
1c008c02:	ffe68613          	addi	a2,a3,-2
1c008c06:	00b780a3          	sb	a1,1(a5)
1c008c0a:	c23d                	beqz	a2,1c008c70 <memmove+0x13c>
1c008c0c:	00274583          	lbu	a1,2(a4)
1c008c10:	ffd68613          	addi	a2,a3,-3
1c008c14:	00b78123          	sb	a1,2(a5)
1c008c18:	ce21                	beqz	a2,1c008c70 <memmove+0x13c>
1c008c1a:	00374583          	lbu	a1,3(a4)
1c008c1e:	ffc68613          	addi	a2,a3,-4
1c008c22:	00b781a3          	sb	a1,3(a5)
1c008c26:	c629                	beqz	a2,1c008c70 <memmove+0x13c>
1c008c28:	00474583          	lbu	a1,4(a4)
1c008c2c:	4615                	li	a2,5
1c008c2e:	00b78223          	sb	a1,4(a5)
1c008c32:	02c68f63          	beq	a3,a2,1c008c70 <memmove+0x13c>
1c008c36:	00574703          	lbu	a4,5(a4)
1c008c3a:	00e782a3          	sb	a4,5(a5)
1c008c3e:	8082                	ret
1c008c40:	167d                	addi	a2,a2,-1
1c008c42:	00c587b3          	add	a5,a1,a2
1c008c46:	962a                	add	a2,a2,a0
1c008c48:	15fd                	addi	a1,a1,-1
1c008c4a:	0007c703          	lbu	a4,0(a5)
1c008c4e:	17fd                	addi	a5,a5,-1
1c008c50:	00e60023          	sb	a4,0(a2)
1c008c54:	167d                	addi	a2,a2,-1
1c008c56:	feb79ae3          	bne	a5,a1,1c008c4a <memmove+0x116>
1c008c5a:	8082                	ret
1c008c5c:	962a                	add	a2,a2,a0
1c008c5e:	87aa                	mv	a5,a0
1c008c60:	0005c703          	lbu	a4,0(a1)
1c008c64:	0785                	addi	a5,a5,1
1c008c66:	fee78fa3          	sb	a4,-1(a5)
1c008c6a:	0585                	addi	a1,a1,1
1c008c6c:	fec79ae3          	bne	a5,a2,1c008c60 <memmove+0x12c>
1c008c70:	8082                	ret
1c008c72:	8082                	ret
1c008c74:	88ae                	mv	a7,a1
1c008c76:	882a                	mv	a6,a0
1c008c78:	8332                	mv	t1,a2
1c008c7a:	b7a1                	j	1c008bc2 <memmove+0x8e>

1c008c7c <strchr>:
1c008c7c:	00054783          	lbu	a5,0(a0)
1c008c80:	0ff5f593          	andi	a1,a1,255
1c008c84:	00b78863          	beq	a5,a1,1c008c94 <strchr+0x18>
1c008c88:	c799                	beqz	a5,1c008c96 <strchr+0x1a>
1c008c8a:	0505                	addi	a0,a0,1
1c008c8c:	00054783          	lbu	a5,0(a0)
1c008c90:	feb79ce3          	bne	a5,a1,1c008c88 <strchr+0xc>
1c008c94:	8082                	ret
1c008c96:	0015b593          	seqz	a1,a1
1c008c9a:	40b005b3          	neg	a1,a1
1c008c9e:	8d6d                	and	a0,a0,a1
1c008ca0:	8082                	ret

1c008ca2 <puts>:
1c008ca2:	00054783          	lbu	a5,0(a0)
1c008ca6:	c78d                	beqz	a5,1c008cd0 <puts+0x2e>
1c008ca8:	f14026f3          	csrr	a3,mhartid
1c008cac:	00369713          	slli	a4,a3,0x3
1c008cb0:	1a10f637          	lui	a2,0x1a10f
1c008cb4:	0ff77713          	andi	a4,a4,255
1c008cb8:	9732                	add	a4,a4,a2
1c008cba:	6609                	lui	a2,0x2
1c008cbc:	068a                	slli	a3,a3,0x2
1c008cbe:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008cc2:	8ef1                	and	a3,a3,a2
1c008cc4:	9736                	add	a4,a4,a3
1c008cc6:	c31c                	sw	a5,0(a4)
1c008cc8:	0505                	addi	a0,a0,1
1c008cca:	00054783          	lbu	a5,0(a0)
1c008cce:	ffe5                	bnez	a5,1c008cc6 <puts+0x24>
1c008cd0:	f1402773          	csrr	a4,mhartid
1c008cd4:	00371793          	slli	a5,a4,0x3
1c008cd8:	1a10f6b7          	lui	a3,0x1a10f
1c008cdc:	0ff7f793          	andi	a5,a5,255
1c008ce0:	97b6                	add	a5,a5,a3
1c008ce2:	6689                	lui	a3,0x2
1c008ce4:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008ce8:	070a                	slli	a4,a4,0x2
1c008cea:	8f75                	and	a4,a4,a3
1c008cec:	97ba                	add	a5,a5,a4
1c008cee:	4729                	li	a4,10
1c008cf0:	c398                	sw	a4,0(a5)
1c008cf2:	4501                	li	a0,0
1c008cf4:	8082                	ret

1c008cf6 <pos_libc_fputc_locked>:
1c008cf6:	6689                	lui	a3,0x2
1c008cf8:	f14027f3          	csrr	a5,mhartid
1c008cfc:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008d00:	00379713          	slli	a4,a5,0x3
1c008d04:	078a                	slli	a5,a5,0x2
1c008d06:	8ff5                	and	a5,a5,a3
1c008d08:	0ff77713          	andi	a4,a4,255
1c008d0c:	1a10f6b7          	lui	a3,0x1a10f
1c008d10:	9736                	add	a4,a4,a3
1c008d12:	0ff57513          	andi	a0,a0,255
1c008d16:	97ba                	add	a5,a5,a4
1c008d18:	c388                	sw	a0,0(a5)
1c008d1a:	4501                	li	a0,0
1c008d1c:	8082                	ret

1c008d1e <pos_libc_prf_locked>:
1c008d1e:	a0b1                	j	1c008d6a <pos_libc_prf>

1c008d20 <exit>:
1c008d20:	800007b7          	lui	a5,0x80000
1c008d24:	1141                	addi	sp,sp,-16
1c008d26:	8d5d                	or	a0,a0,a5
1c008d28:	c606                	sw	ra,12(sp)
1c008d2a:	1a1047b7          	lui	a5,0x1a104
1c008d2e:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008d32:	3941                	jal	1c0089c2 <pos_wait_forever>

1c008d34 <pos_io_start>:
1c008d34:	4501                	li	a0,0
1c008d36:	8082                	ret

1c008d38 <pos_io_stop>:
1c008d38:	4501                	li	a0,0
1c008d3a:	8082                	ret

1c008d3c <printf>:
1c008d3c:	7139                	addi	sp,sp,-64
1c008d3e:	02410313          	addi	t1,sp,36
1c008d42:	d432                	sw	a2,40(sp)
1c008d44:	862a                	mv	a2,a0
1c008d46:	1c009537          	lui	a0,0x1c009
1c008d4a:	d22e                	sw	a1,36(sp)
1c008d4c:	d636                	sw	a3,44(sp)
1c008d4e:	4589                	li	a1,2
1c008d50:	869a                	mv	a3,t1
1c008d52:	cf650513          	addi	a0,a0,-778 # 1c008cf6 <pos_libc_fputc_locked>
1c008d56:	ce06                	sw	ra,28(sp)
1c008d58:	d83a                	sw	a4,48(sp)
1c008d5a:	da3e                	sw	a5,52(sp)
1c008d5c:	dc42                	sw	a6,56(sp)
1c008d5e:	de46                	sw	a7,60(sp)
1c008d60:	c61a                	sw	t1,12(sp)
1c008d62:	3f75                	jal	1c008d1e <pos_libc_prf_locked>
1c008d64:	40f2                	lw	ra,28(sp)
1c008d66:	6121                	addi	sp,sp,64
1c008d68:	8082                	ret

1c008d6a <pos_libc_prf>:
1c008d6a:	7169                	addi	sp,sp,-304
1c008d6c:	12812423          	sw	s0,296(sp)
1c008d70:	12912223          	sw	s1,292(sp)
1c008d74:	11612823          	sw	s6,272(sp)
1c008d78:	11712623          	sw	s7,268(sp)
1c008d7c:	11812423          	sw	s8,264(sp)
1c008d80:	11912223          	sw	s9,260(sp)
1c008d84:	11a12023          	sw	s10,256(sp)
1c008d88:	12112623          	sw	ra,300(sp)
1c008d8c:	13212023          	sw	s2,288(sp)
1c008d90:	11312e23          	sw	s3,284(sp)
1c008d94:	11412c23          	sw	s4,280(sp)
1c008d98:	11512a23          	sw	s5,276(sp)
1c008d9c:	dfee                	sw	s11,252(sp)
1c008d9e:	8b2a                	mv	s6,a0
1c008da0:	8d2e                	mv	s10,a1
1c008da2:	84b2                	mv	s1,a2
1c008da4:	8c36                	mv	s8,a3
1c008da6:	4401                	li	s0,0
1c008da8:	1c000bb7          	lui	s7,0x1c000
1c008dac:	02410c93          	addi	s9,sp,36
1c008db0:	0004c503          	lbu	a0,0(s1)
1c008db4:	0485                	addi	s1,s1,1
1c008db6:	cd19                	beqz	a0,1c008dd4 <pos_libc_prf+0x6a>
1c008db8:	02500793          	li	a5,37
1c008dbc:	04f50863          	beq	a0,a5,1c008e0c <pos_libc_prf+0xa2>
1c008dc0:	85ea                	mv	a1,s10
1c008dc2:	9b02                	jalr	s6
1c008dc4:	57fd                	li	a5,-1
1c008dc6:	24f50863          	beq	a0,a5,1c009016 <pos_libc_prf+0x2ac>
1c008dca:	0405                	addi	s0,s0,1
1c008dcc:	0004c503          	lbu	a0,0(s1)
1c008dd0:	0485                	addi	s1,s1,1
1c008dd2:	f17d                	bnez	a0,1c008db8 <pos_libc_prf+0x4e>
1c008dd4:	8522                	mv	a0,s0
1c008dd6:	12c12083          	lw	ra,300(sp)
1c008dda:	12812403          	lw	s0,296(sp)
1c008dde:	12412483          	lw	s1,292(sp)
1c008de2:	12012903          	lw	s2,288(sp)
1c008de6:	11c12983          	lw	s3,284(sp)
1c008dea:	11812a03          	lw	s4,280(sp)
1c008dee:	11412a83          	lw	s5,276(sp)
1c008df2:	11012b03          	lw	s6,272(sp)
1c008df6:	10c12b83          	lw	s7,268(sp)
1c008dfa:	10812c03          	lw	s8,264(sp)
1c008dfe:	10412c83          	lw	s9,260(sp)
1c008e02:	10012d03          	lw	s10,256(sp)
1c008e06:	5dfe                	lw	s11,252(sp)
1c008e08:	6155                	addi	sp,sp,304
1c008e0a:	8082                	ret
1c008e0c:	00148a93          	addi	s5,s1,1
1c008e10:	fffacd83          	lbu	s11,-1(s5) # ff00ffff <pulp__FC+0xff010000>
1c008e14:	02000713          	li	a4,32
1c008e18:	1d8b8513          	addi	a0,s7,472 # 1c0001d8 <__DTOR_END__+0x1bc>
1c008e1c:	85ee                	mv	a1,s11
1c008e1e:	c83a                	sw	a4,16(sp)
1c008e20:	cc02                	sw	zero,24(sp)
1c008e22:	ca02                	sw	zero,20(sp)
1c008e24:	ce02                	sw	zero,28(sp)
1c008e26:	c602                	sw	zero,12(sp)
1c008e28:	02300913          	li	s2,35
1c008e2c:	02d00a13          	li	s4,45
1c008e30:	89d6                	mv	s3,s5
1c008e32:	35a9                	jal	1c008c7c <strchr>
1c008e34:	c915                	beqz	a0,1c008e68 <pos_libc_prf+0xfe>
1c008e36:	212d8963          	beq	s11,s2,1c009048 <pos_libc_prf+0x2de>
1c008e3a:	1fb97063          	bleu	s11,s2,1c00901a <pos_libc_prf+0x2b0>
1c008e3e:	214d8163          	beq	s11,s4,1c009040 <pos_libc_prf+0x2d6>
1c008e42:	03000613          	li	a2,48
1c008e46:	1ecd8863          	beq	s11,a2,1c009036 <pos_libc_prf+0x2cc>
1c008e4a:	02b00693          	li	a3,43
1c008e4e:	1edd8063          	beq	s11,a3,1c00902e <pos_libc_prf+0x2c4>
1c008e52:	84d6                	mv	s1,s5
1c008e54:	00148a93          	addi	s5,s1,1
1c008e58:	fffacd83          	lbu	s11,-1(s5)
1c008e5c:	1d8b8513          	addi	a0,s7,472
1c008e60:	85ee                	mv	a1,s11
1c008e62:	89d6                	mv	s3,s5
1c008e64:	3d21                	jal	1c008c7c <strchr>
1c008e66:	f961                	bnez	a0,1c008e36 <pos_libc_prf+0xcc>
1c008e68:	02a00613          	li	a2,42
1c008e6c:	20cd8463          	beq	s11,a2,1c009074 <pos_libc_prf+0x30a>
1c008e70:	fd0d8613          	addi	a2,s11,-48
1c008e74:	45a5                	li	a1,9
1c008e76:	4901                	li	s2,0
1c008e78:	1cc5fe63          	bleu	a2,a1,1c009054 <pos_libc_prf+0x2ea>
1c008e7c:	02e00713          	li	a4,46
1c008e80:	5a7d                	li	s4,-1
1c008e82:	24ed8463          	beq	s11,a4,1c0090ca <pos_libc_prf+0x360>
1c008e86:	1c000837          	lui	a6,0x1c000
1c008e8a:	85ee                	mv	a1,s11
1c008e8c:	1e080513          	addi	a0,a6,480 # 1c0001e0 <__DTOR_END__+0x1c4>
1c008e90:	33f5                	jal	1c008c7c <strchr>
1c008e92:	84ce                	mv	s1,s3
1c008e94:	c509                	beqz	a0,1c008e9e <pos_libc_prf+0x134>
1c008e96:	0009cd83          	lbu	s11,0(s3)
1c008e9a:	00198493          	addi	s1,s3,1
1c008e9e:	06700713          	li	a4,103
1c008ea2:	1fb75963          	ble	s11,a4,1c009094 <pos_libc_prf+0x32a>
1c008ea6:	07000713          	li	a4,112
1c008eaa:	12ed89e3          	beq	s11,a4,1c0097dc <pos_libc_prf+0xa72>
1c008eae:	25b75263          	ble	s11,a4,1c0090f2 <pos_libc_prf+0x388>
1c008eb2:	07500713          	li	a4,117
1c008eb6:	0aed89e3          	beq	s11,a4,1c009768 <pos_libc_prf+0x9fe>
1c008eba:	07800713          	li	a4,120
1c008ebe:	72ed8b63          	beq	s11,a4,1c0095f4 <pos_libc_prf+0x88a>
1c008ec2:	07300713          	li	a4,115
1c008ec6:	1aed9ce3          	bne	s11,a4,1c00987e <pos_libc_prf+0xb14>
1c008eca:	000c2583          	lw	a1,0(s8)
1c008ece:	004c0a93          	addi	s5,s8,4
1c008ed2:	87ae                	mv	a5,a1
1c008ed4:	4981                	li	s3,0
1c008ed6:	0c800693          	li	a3,200
1c008eda:	a021                	j	1c008ee2 <pos_libc_prf+0x178>
1c008edc:	0985                	addi	s3,s3,1
1c008ede:	5ad98be3          	beq	s3,a3,1c009c94 <pos_libc_prf+0xf2a>
1c008ee2:	0007c703          	lbu	a4,0(a5)
1c008ee6:	0785                	addi	a5,a5,1
1c008ee8:	fb75                	bnez	a4,1c008edc <pos_libc_prf+0x172>
1c008eea:	000a4563          	bltz	s4,1c008ef4 <pos_libc_prf+0x18a>
1c008eee:	013a5363          	ble	s3,s4,1c008ef4 <pos_libc_prf+0x18a>
1c008ef2:	89d2                	mv	s3,s4
1c008ef4:	8c56                	mv	s8,s5
1c008ef6:	ea098de3          	beqz	s3,1c008db0 <pos_libc_prf+0x46>
1c008efa:	864e                	mv	a2,s3
1c008efc:	8566                	mv	a0,s9
1c008efe:	34ed                	jal	1c0089e8 <memcpy>
1c008f00:	8c56                	mv	s8,s5
1c008f02:	0f29d963          	ble	s2,s3,1c008ff4 <pos_libc_prf+0x28a>
1c008f06:	c602                	sw	zero,12(sp)
1c008f08:	48f2                	lw	a7,28(sp)
1c008f0a:	1a0885e3          	beqz	a7,1c0098b4 <pos_libc_prf+0xb4a>
1c008f0e:	013c87b3          	add	a5,s9,s3
1c008f12:	40f007b3          	neg	a5,a5
1c008f16:	8b8d                	andi	a5,a5,3
1c008f18:	00378693          	addi	a3,a5,3
1c008f1c:	4715                	li	a4,5
1c008f1e:	413905b3          	sub	a1,s2,s3
1c008f22:	00e6f363          	bleu	a4,a3,1c008f28 <pos_libc_prf+0x1be>
1c008f26:	4695                	li	a3,5
1c008f28:	fff90713          	addi	a4,s2,-1
1c008f2c:	41370733          	sub	a4,a4,s3
1c008f30:	06d76663          	bltu	a4,a3,1c008f9c <pos_libc_prf+0x232>
1c008f34:	86ce                	mv	a3,s3
1c008f36:	cb9d                	beqz	a5,1c008f6c <pos_libc_prf+0x202>
1c008f38:	0f010813          	addi	a6,sp,240
1c008f3c:	013806b3          	add	a3,a6,s3
1c008f40:	02000713          	li	a4,32
1c008f44:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c008f48:	4605                	li	a2,1
1c008f4a:	00198693          	addi	a3,s3,1
1c008f4e:	00c78f63          	beq	a5,a2,1c008f6c <pos_libc_prf+0x202>
1c008f52:	96c2                	add	a3,a3,a6
1c008f54:	f2e68a23          	sb	a4,-204(a3)
1c008f58:	460d                	li	a2,3
1c008f5a:	00298693          	addi	a3,s3,2
1c008f5e:	00c79763          	bne	a5,a2,1c008f6c <pos_libc_prf+0x202>
1c008f62:	96c2                	add	a3,a3,a6
1c008f64:	f2e68a23          	sb	a4,-204(a3)
1c008f68:	00398693          	addi	a3,s3,3
1c008f6c:	8d9d                	sub	a1,a1,a5
1c008f6e:	97ce                	add	a5,a5,s3
1c008f70:	0025d613          	srli	a2,a1,0x2
1c008f74:	97e6                	add	a5,a5,s9
1c008f76:	4701                	li	a4,0
1c008f78:	1c0008b7          	lui	a7,0x1c000
1c008f7c:	1d488893          	addi	a7,a7,468 # 1c0001d4 <__DTOR_END__+0x1b8>
1c008f80:	0008a883          	lw	a7,0(a7)
1c008f84:	0705                	addi	a4,a4,1
1c008f86:	0117a023          	sw	a7,0(a5)
1c008f8a:	0791                	addi	a5,a5,4
1c008f8c:	fec766e3          	bltu	a4,a2,1c008f78 <pos_libc_prf+0x20e>
1c008f90:	ffc5f793          	andi	a5,a1,-4
1c008f94:	00d789b3          	add	s3,a5,a3
1c008f98:	04b78b63          	beq	a5,a1,1c008fee <pos_libc_prf+0x284>
1c008f9c:	1988                	addi	a0,sp,240
1c008f9e:	01350733          	add	a4,a0,s3
1c008fa2:	02000793          	li	a5,32
1c008fa6:	f2f70a23          	sb	a5,-204(a4)
1c008faa:	00198713          	addi	a4,s3,1
1c008fae:	05275063          	ble	s2,a4,1c008fee <pos_libc_prf+0x284>
1c008fb2:	972a                	add	a4,a4,a0
1c008fb4:	f2f70a23          	sb	a5,-204(a4)
1c008fb8:	00298713          	addi	a4,s3,2
1c008fbc:	03275963          	ble	s2,a4,1c008fee <pos_libc_prf+0x284>
1c008fc0:	972a                	add	a4,a4,a0
1c008fc2:	f2f70a23          	sb	a5,-204(a4)
1c008fc6:	00398713          	addi	a4,s3,3
1c008fca:	03275263          	ble	s2,a4,1c008fee <pos_libc_prf+0x284>
1c008fce:	972a                	add	a4,a4,a0
1c008fd0:	f2f70a23          	sb	a5,-204(a4)
1c008fd4:	00498713          	addi	a4,s3,4
1c008fd8:	01275b63          	ble	s2,a4,1c008fee <pos_libc_prf+0x284>
1c008fdc:	972a                	add	a4,a4,a0
1c008fde:	f2f70a23          	sb	a5,-204(a4)
1c008fe2:	0995                	addi	s3,s3,5
1c008fe4:	0129d563          	ble	s2,s3,1c008fee <pos_libc_prf+0x284>
1c008fe8:	99aa                	add	s3,s3,a0
1c008fea:	f2f98a23          	sb	a5,-204(s3)
1c008fee:	89ca                	mv	s3,s2
1c008ff0:	dc0980e3          	beqz	s3,1c008db0 <pos_libc_prf+0x46>
1c008ff4:	8966                	mv	s2,s9
1c008ff6:	5a7d                	li	s4,-1
1c008ff8:	41940ab3          	sub	s5,s0,s9
1c008ffc:	a029                	j	1c009006 <pos_libc_prf+0x29c>
1c008ffe:	01590433          	add	s0,s2,s5
1c009002:	da0987e3          	beqz	s3,1c008db0 <pos_libc_prf+0x46>
1c009006:	00094503          	lbu	a0,0(s2)
1c00900a:	85ea                	mv	a1,s10
1c00900c:	9b02                	jalr	s6
1c00900e:	0905                	addi	s2,s2,1
1c009010:	19fd                	addi	s3,s3,-1
1c009012:	ff4516e3          	bne	a0,s4,1c008ffe <pos_libc_prf+0x294>
1c009016:	547d                	li	s0,-1
1c009018:	bb75                	j	1c008dd4 <pos_libc_prf+0x6a>
1c00901a:	da0d8de3          	beqz	s11,1c008dd4 <pos_libc_prf+0x6a>
1c00901e:	02000513          	li	a0,32
1c009022:	e2ad98e3          	bne	s11,a0,1c008e52 <pos_libc_prf+0xe8>
1c009026:	4785                	li	a5,1
1c009028:	cc3e                	sw	a5,24(sp)
1c00902a:	84d6                	mv	s1,s5
1c00902c:	b525                	j	1c008e54 <pos_libc_prf+0xea>
1c00902e:	4705                	li	a4,1
1c009030:	ca3a                	sw	a4,20(sp)
1c009032:	84d6                	mv	s1,s5
1c009034:	b505                	j	1c008e54 <pos_libc_prf+0xea>
1c009036:	03000893          	li	a7,48
1c00903a:	c846                	sw	a7,16(sp)
1c00903c:	84d6                	mv	s1,s5
1c00903e:	bd19                	j	1c008e54 <pos_libc_prf+0xea>
1c009040:	4685                	li	a3,1
1c009042:	ce36                	sw	a3,28(sp)
1c009044:	84d6                	mv	s1,s5
1c009046:	b539                	j	1c008e54 <pos_libc_prf+0xea>
1c009048:	4805                	li	a6,1
1c00904a:	c642                	sw	a6,12(sp)
1c00904c:	84d6                	mv	s1,s5
1c00904e:	b519                	j	1c008e54 <pos_libc_prf+0xea>
1c009050:	84d6                	mv	s1,s5
1c009052:	0a85                	addi	s5,s5,1
1c009054:	00291793          	slli	a5,s2,0x2
1c009058:	97ca                	add	a5,a5,s2
1c00905a:	0786                	slli	a5,a5,0x1
1c00905c:	97ee                	add	a5,a5,s11
1c00905e:	000acd83          	lbu	s11,0(s5)
1c009062:	fd078913          	addi	s2,a5,-48
1c009066:	fd0d8793          	addi	a5,s11,-48
1c00906a:	fef5f3e3          	bleu	a5,a1,1c009050 <pos_libc_prf+0x2e6>
1c00906e:	00248993          	addi	s3,s1,2
1c009072:	a811                	j	1c009086 <pos_libc_prf+0x31c>
1c009074:	000c2903          	lw	s2,0(s8)
1c009078:	0c11                	addi	s8,s8,4
1c00907a:	14094663          	bltz	s2,1c0091c6 <pos_libc_prf+0x45c>
1c00907e:	000acd83          	lbu	s11,0(s5)
1c009082:	00248993          	addi	s3,s1,2
1c009086:	0c800713          	li	a4,200
1c00908a:	df2779e3          	bleu	s2,a4,1c008e7c <pos_libc_prf+0x112>
1c00908e:	0c800913          	li	s2,200
1c009092:	b3ed                	j	1c008e7c <pos_libc_prf+0x112>
1c009094:	06500713          	li	a4,101
1c009098:	12eddc63          	ble	a4,s11,1c0091d0 <pos_libc_prf+0x466>
1c00909c:	04700713          	li	a4,71
1c0090a0:	55b74063          	blt	a4,s11,1c0095e0 <pos_libc_prf+0x876>
1c0090a4:	04500713          	li	a4,69
1c0090a8:	12edd463          	ble	a4,s11,1c0091d0 <pos_libc_prf+0x466>
1c0090ac:	d20d84e3          	beqz	s11,1c008dd4 <pos_libc_prf+0x6a>
1c0090b0:	02500713          	li	a4,37
1c0090b4:	7ced9563          	bne	s11,a4,1c00987e <pos_libc_prf+0xb14>
1c0090b8:	85ea                	mv	a1,s10
1c0090ba:	02500513          	li	a0,37
1c0090be:	9b02                	jalr	s6
1c0090c0:	57fd                	li	a5,-1
1c0090c2:	f4f50ae3          	beq	a0,a5,1c009016 <pos_libc_prf+0x2ac>
1c0090c6:	0405                	addi	s0,s0,1
1c0090c8:	b311                	j	1c008dcc <pos_libc_prf+0x62>
1c0090ca:	0009c783          	lbu	a5,0(s3)
1c0090ce:	02a00713          	li	a4,42
1c0090d2:	00198693          	addi	a3,s3,1
1c0090d6:	0ae79d63          	bne	a5,a4,1c009190 <pos_libc_prf+0x426>
1c0090da:	000c2a03          	lw	s4,0(s8)
1c0090de:	0019cd83          	lbu	s11,1(s3)
1c0090e2:	0c11                	addi	s8,s8,4
1c0090e4:	0989                	addi	s3,s3,2
1c0090e6:	0c800713          	li	a4,200
1c0090ea:	d9475ee3          	ble	s4,a4,1c008e86 <pos_libc_prf+0x11c>
1c0090ee:	5a7d                	li	s4,-1
1c0090f0:	bb59                	j	1c008e86 <pos_libc_prf+0x11c>
1c0090f2:	06e00713          	li	a4,110
1c0090f6:	76ed8e63          	beq	s11,a4,1c009872 <pos_libc_prf+0xb08>
1c0090fa:	5bb75663          	ble	s11,a4,1c0096a6 <pos_libc_prf+0x93c>
1c0090fe:	4732                	lw	a4,12(sp)
1c009100:	004c0513          	addi	a0,s8,4
1c009104:	000c2683          	lw	a3,0(s8)
1c009108:	1c070de3          	beqz	a4,1c009ae2 <pos_libc_prf+0xd78>
1c00910c:	03000793          	li	a5,48
1c009110:	02f10223          	sb	a5,36(sp)
1c009114:	16068de3          	beqz	a3,1c009a8e <pos_libc_prf+0xd24>
1c009118:	02510593          	addi	a1,sp,37
1c00911c:	872e                	mv	a4,a1
1c00911e:	87ba                	mv	a5,a4
1c009120:	0076f613          	andi	a2,a3,7
1c009124:	0785                	addi	a5,a5,1
1c009126:	03060613          	addi	a2,a2,48
1c00912a:	828d                	srli	a3,a3,0x3
1c00912c:	fec78fa3          	sb	a2,-1(a5)
1c009130:	fae5                	bnez	a3,1c009120 <pos_libc_prf+0x3b6>
1c009132:	40b789b3          	sub	s3,a5,a1
1c009136:	0149db63          	ble	s4,s3,1c00914c <pos_libc_prf+0x3e2>
1c00913a:	03000693          	li	a3,48
1c00913e:	0785                	addi	a5,a5,1
1c009140:	fed78fa3          	sb	a3,-1(a5)
1c009144:	40b789b3          	sub	s3,a5,a1
1c009148:	ff49cbe3          	blt	s3,s4,1c00913e <pos_libc_prf+0x3d4>
1c00914c:	00078023          	sb	zero,0(a5)
1c009150:	17fd                	addi	a5,a5,-1
1c009152:	00f77e63          	bleu	a5,a4,1c00916e <pos_libc_prf+0x404>
1c009156:	00074603          	lbu	a2,0(a4)
1c00915a:	0007c683          	lbu	a3,0(a5)
1c00915e:	00c78023          	sb	a2,0(a5)
1c009162:	00d70023          	sb	a3,0(a4)
1c009166:	17fd                	addi	a5,a5,-1
1c009168:	0705                	addi	a4,a4,1
1c00916a:	fef766e3          	bltu	a4,a5,1c009156 <pos_libc_prf+0x3ec>
1c00916e:	4832                	lw	a6,12(sp)
1c009170:	57fd                	li	a5,-1
1c009172:	99c2                	add	s3,s3,a6
1c009174:	22fa0ee3          	beq	s4,a5,1c009bb0 <pos_libc_prf+0xe46>
1c009178:	0c800793          	li	a5,200
1c00917c:	e937cde3          	blt	a5,s3,1c009016 <pos_libc_prf+0x2ac>
1c009180:	02000693          	li	a3,32
1c009184:	8c2a                	mv	s8,a0
1c009186:	c602                	sw	zero,12(sp)
1c009188:	c836                	sw	a3,16(sp)
1c00918a:	d729cfe3          	blt	s3,s2,1c008f08 <pos_libc_prf+0x19e>
1c00918e:	b58d                	j	1c008ff0 <pos_libc_prf+0x286>
1c009190:	fd078593          	addi	a1,a5,-48
1c009194:	4725                	li	a4,9
1c009196:	8dbe                	mv	s11,a5
1c009198:	4a01                	li	s4,0
1c00919a:	4625                	li	a2,9
1c00919c:	00b77663          	bleu	a1,a4,1c0091a8 <pos_libc_prf+0x43e>
1c0091a0:	1070006f          	j	1c009aa6 <pos_libc_prf+0xd3c>
1c0091a4:	89b6                	mv	s3,a3
1c0091a6:	0685                	addi	a3,a3,1
1c0091a8:	002a1793          	slli	a5,s4,0x2
1c0091ac:	97d2                	add	a5,a5,s4
1c0091ae:	0786                	slli	a5,a5,0x1
1c0091b0:	97ee                	add	a5,a5,s11
1c0091b2:	0006cd83          	lbu	s11,0(a3)
1c0091b6:	fd078a13          	addi	s4,a5,-48
1c0091ba:	fd0d8793          	addi	a5,s11,-48
1c0091be:	fef673e3          	bleu	a5,a2,1c0091a4 <pos_libc_prf+0x43a>
1c0091c2:	0989                	addi	s3,s3,2
1c0091c4:	b70d                	j	1c0090e6 <pos_libc_prf+0x37c>
1c0091c6:	4785                	li	a5,1
1c0091c8:	41200933          	neg	s2,s2
1c0091cc:	ce3e                	sw	a5,28(sp)
1c0091ce:	bd45                	j	1c00907e <pos_libc_prf+0x314>
1c0091d0:	0c1d                	addi	s8,s8,7
1c0091d2:	ff8c7c13          	andi	s8,s8,-8
1c0091d6:	000c2703          	lw	a4,0(s8)
1c0091da:	004c2803          	lw	a6,4(s8)
1c0091de:	01575693          	srli	a3,a4,0x15
1c0091e2:	00b81613          	slli	a2,a6,0xb
1c0091e6:	8e55                	or	a2,a2,a3
1c0091e8:	01485513          	srli	a0,a6,0x14
1c0091ec:	00b71693          	slli	a3,a4,0xb
1c0091f0:	80000737          	lui	a4,0x80000
1c0091f4:	fff74713          	not	a4,a4
1c0091f8:	7ff57513          	andi	a0,a0,2047
1c0091fc:	7ff00593          	li	a1,2047
1c009200:	0c21                	addi	s8,s8,8
1c009202:	8e79                	and	a2,a2,a4
1c009204:	0ab504e3          	beq	a0,a1,1c009aac <pos_libc_prf+0xd42>
1c009208:	04600593          	li	a1,70
1c00920c:	00bd9463          	bne	s11,a1,1c009214 <pos_libc_prf+0x4aa>
1c009210:	06600d93          	li	s11,102
1c009214:	00d56733          	or	a4,a0,a3
1c009218:	8f51                	or	a4,a4,a2
1c00921a:	7e070963          	beqz	a4,1c009a0c <pos_libc_prf+0xca2>
1c00921e:	800005b7          	lui	a1,0x80000
1c009222:	c0250513          	addi	a0,a0,-1022
1c009226:	8dd1                	or	a1,a1,a2
1c009228:	26084ae3          	bltz	a6,1c009c9c <pos_libc_prf+0xf32>
1c00922c:	4852                	lw	a6,20(sp)
1c00922e:	220808e3          	beqz	a6,1c009c5e <pos_libc_prf+0xef4>
1c009232:	02b00713          	li	a4,43
1c009236:	02e10223          	sb	a4,36(sp)
1c00923a:	02510e93          	addi	t4,sp,37
1c00923e:	5779                	li	a4,-2
1c009240:	4301                	li	t1,0
1c009242:	06e55763          	ble	a4,a0,1c0092b0 <pos_libc_prf+0x546>
1c009246:	33333837          	lui	a6,0x33333
1c00924a:	800008b7          	lui	a7,0x80000
1c00924e:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c009252:	fff8c893          	not	a7,a7
1c009256:	5e79                	li	t3,-2
1c009258:	a011                	j	1c00925c <pos_libc_prf+0x4f2>
1c00925a:	853e                	mv	a0,a5
1c00925c:	01f59613          	slli	a2,a1,0x1f
1c009260:	0016d713          	srli	a4,a3,0x1
1c009264:	0016f793          	andi	a5,a3,1
1c009268:	8f51                	or	a4,a4,a2
1c00926a:	00e786b3          	add	a3,a5,a4
1c00926e:	00f6b7b3          	sltu	a5,a3,a5
1c009272:	8185                	srli	a1,a1,0x1
1c009274:	95be                	add	a1,a1,a5
1c009276:	00150793          	addi	a5,a0,1
1c00927a:	feb860e3          	bltu	a6,a1,1c00925a <pos_libc_prf+0x4f0>
1c00927e:	00269613          	slli	a2,a3,0x2
1c009282:	01e6df13          	srli	t5,a3,0x1e
1c009286:	00259713          	slli	a4,a1,0x2
1c00928a:	96b2                	add	a3,a3,a2
1c00928c:	00ef6733          	or	a4,t5,a4
1c009290:	95ba                	add	a1,a1,a4
1c009292:	00c6b633          	sltu	a2,a3,a2
1c009296:	95b2                	add	a1,a1,a2
1c009298:	01f6d713          	srli	a4,a3,0x1f
1c00929c:	0509                	addi	a0,a0,2
1c00929e:	137d                	addi	t1,t1,-1
1c0092a0:	01159663          	bne	a1,a7,1c0092ac <pos_libc_prf+0x542>
1c0092a4:	0686                	slli	a3,a3,0x1
1c0092a6:	ffe76593          	ori	a1,a4,-2
1c0092aa:	853e                	mv	a0,a5
1c0092ac:	fbc548e3          	blt	a0,t3,1c00925c <pos_libc_prf+0x4f2>
1c0092b0:	06a05563          	blez	a0,1c00931a <pos_libc_prf+0x5b0>
1c0092b4:	800008b7          	lui	a7,0x80000
1c0092b8:	4e15                	li	t3,5
1c0092ba:	fff8c893          	not	a7,a7
1c0092be:	00268613          	addi	a2,a3,2
1c0092c2:	00d636b3          	sltu	a3,a2,a3
1c0092c6:	95b6                	add	a1,a1,a3
1c0092c8:	03c5d7b3          	divu	a5,a1,t3
1c0092cc:	00279713          	slli	a4,a5,0x2
1c0092d0:	973e                	add	a4,a4,a5
1c0092d2:	8d99                	sub	a1,a1,a4
1c0092d4:	01d59713          	slli	a4,a1,0x1d
1c0092d8:	00365593          	srli	a1,a2,0x3
1c0092dc:	8dd9                	or	a1,a1,a4
1c0092de:	03c5d5b3          	divu	a1,a1,t3
1c0092e2:	00359693          	slli	a3,a1,0x3
1c0092e6:	00559713          	slli	a4,a1,0x5
1c0092ea:	9736                	add	a4,a4,a3
1c0092ec:	40e60733          	sub	a4,a2,a4
1c0092f0:	03c75733          	divu	a4,a4,t3
1c0092f4:	81f5                	srli	a1,a1,0x1d
1c0092f6:	96ba                	add	a3,a3,a4
1c0092f8:	97ae                	add	a5,a5,a1
1c0092fa:	00e6b733          	sltu	a4,a3,a4
1c0092fe:	00f705b3          	add	a1,a4,a5
1c009302:	157d                	addi	a0,a0,-1
1c009304:	0305                	addi	t1,t1,1
1c009306:	01f6d793          	srli	a5,a3,0x1f
1c00930a:	0586                	slli	a1,a1,0x1
1c00930c:	8ddd                	or	a1,a1,a5
1c00930e:	0686                	slli	a3,a3,0x1
1c009310:	157d                	addi	a0,a0,-1
1c009312:	feb8fae3          	bleu	a1,a7,1c009306 <pos_libc_prf+0x59c>
1c009316:	faa044e3          	bgtz	a0,1c0092be <pos_libc_prf+0x554>
1c00931a:	4611                	li	a2,4
1c00931c:	01f59713          	slli	a4,a1,0x1f
1c009320:	0016d793          	srli	a5,a3,0x1
1c009324:	8fd9                	or	a5,a5,a4
1c009326:	8a85                	andi	a3,a3,1
1c009328:	00f688b3          	add	a7,a3,a5
1c00932c:	8185                	srli	a1,a1,0x1
1c00932e:	00d8b6b3          	sltu	a3,a7,a3
1c009332:	00b68733          	add	a4,a3,a1
1c009336:	0505                	addi	a0,a0,1
1c009338:	86c6                	mv	a3,a7
1c00933a:	85ba                	mv	a1,a4
1c00933c:	fec510e3          	bne	a0,a2,1c00931c <pos_libc_prf+0x5b2>
1c009340:	06700693          	li	a3,103
1c009344:	040a48e3          	bltz	s4,1c009b94 <pos_libc_prf+0xe2a>
1c009348:	70dd8b63          	beq	s11,a3,1c009a5e <pos_libc_prf+0xcf4>
1c00934c:	04700693          	li	a3,71
1c009350:	70dd8763          	beq	s11,a3,1c009a5e <pos_libc_prf+0xcf4>
1c009354:	06600693          	li	a3,102
1c009358:	08dd89e3          	beq	s11,a3,1c009bea <pos_libc_prf+0xe80>
1c00935c:	001a0e13          	addi	t3,s4,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c009360:	46c1                	li	a3,16
1c009362:	01c6d363          	ble	t3,a3,1c009368 <pos_libc_prf+0x5fe>
1c009366:	4e41                	li	t3,16
1c009368:	1e7d                	addi	t3,t3,-1
1c00936a:	4f81                	li	t6,0
1c00936c:	4681                	li	a3,0
1c00936e:	08000637          	lui	a2,0x8000
1c009372:	4f15                	li	t5,5
1c009374:	52fd                	li	t0,-1
1c009376:	00268593          	addi	a1,a3,2
1c00937a:	00d5b7b3          	sltu	a5,a1,a3
1c00937e:	97b2                	add	a5,a5,a2
1c009380:	03e7d633          	divu	a2,a5,t5
1c009384:	00261693          	slli	a3,a2,0x2
1c009388:	96b2                	add	a3,a3,a2
1c00938a:	8f95                	sub	a5,a5,a3
1c00938c:	07f6                	slli	a5,a5,0x1d
1c00938e:	0035d513          	srli	a0,a1,0x3
1c009392:	8d5d                	or	a0,a0,a5
1c009394:	03e55533          	divu	a0,a0,t5
1c009398:	00351693          	slli	a3,a0,0x3
1c00939c:	00551793          	slli	a5,a0,0x5
1c0093a0:	97b6                	add	a5,a5,a3
1c0093a2:	40f587b3          	sub	a5,a1,a5
1c0093a6:	03e7d7b3          	divu	a5,a5,t5
1c0093aa:	8175                	srli	a0,a0,0x1d
1c0093ac:	96be                	add	a3,a3,a5
1c0093ae:	00f6b7b3          	sltu	a5,a3,a5
1c0093b2:	962a                	add	a2,a2,a0
1c0093b4:	963e                	add	a2,a2,a5
1c0093b6:	01f61513          	slli	a0,a2,0x1f
1c0093ba:	0016d793          	srli	a5,a3,0x1
1c0093be:	0016f593          	andi	a1,a3,1
1c0093c2:	8fc9                	or	a5,a5,a0
1c0093c4:	00f586b3          	add	a3,a1,a5
1c0093c8:	8205                	srli	a2,a2,0x1
1c0093ca:	00b6b7b3          	sltu	a5,a3,a1
1c0093ce:	1e7d                	addi	t3,t3,-1
1c0093d0:	963e                	add	a2,a2,a5
1c0093d2:	fa5e12e3          	bne	t3,t0,1c009376 <pos_libc_prf+0x60c>
1c0093d6:	96c6                	add	a3,a3,a7
1c0093d8:	963a                	add	a2,a2,a4
1c0093da:	0116b8b3          	sltu	a7,a3,a7
1c0093de:	9646                	add	a2,a2,a7
1c0093e0:	f00005b7          	lui	a1,0xf0000
1c0093e4:	8df1                	and	a1,a1,a2
1c0093e6:	8736                	mv	a4,a3
1c0093e8:	cdb9                	beqz	a1,1c009446 <pos_libc_prf+0x6dc>
1c0093ea:	0689                	addi	a3,a3,2
1c0093ec:	00e6b733          	sltu	a4,a3,a4
1c0093f0:	963a                	add	a2,a2,a4
1c0093f2:	4815                	li	a6,5
1c0093f4:	03065533          	divu	a0,a2,a6
1c0093f8:	00251713          	slli	a4,a0,0x2
1c0093fc:	972a                	add	a4,a4,a0
1c0093fe:	8e19                	sub	a2,a2,a4
1c009400:	01d61713          	slli	a4,a2,0x1d
1c009404:	0036d593          	srli	a1,a3,0x3
1c009408:	8dd9                	or	a1,a1,a4
1c00940a:	0305d5b3          	divu	a1,a1,a6
1c00940e:	00359613          	slli	a2,a1,0x3
1c009412:	00559713          	slli	a4,a1,0x5
1c009416:	9732                	add	a4,a4,a2
1c009418:	40e68733          	sub	a4,a3,a4
1c00941c:	03075733          	divu	a4,a4,a6
1c009420:	81f5                	srli	a1,a1,0x1d
1c009422:	963a                	add	a2,a2,a4
1c009424:	00e63733          	sltu	a4,a2,a4
1c009428:	95aa                	add	a1,a1,a0
1c00942a:	00b706b3          	add	a3,a4,a1
1c00942e:	01f69593          	slli	a1,a3,0x1f
1c009432:	00165713          	srli	a4,a2,0x1
1c009436:	8f4d                	or	a4,a4,a1
1c009438:	8a05                	andi	a2,a2,1
1c00943a:	9732                	add	a4,a4,a2
1c00943c:	8285                	srli	a3,a3,0x1
1c00943e:	00c73633          	sltu	a2,a4,a2
1c009442:	9636                	add	a2,a2,a3
1c009444:	0305                	addi	t1,t1,1
1c009446:	001e8993          	addi	s3,t4,1
1c00944a:	06600693          	li	a3,102
1c00944e:	85ce                	mv	a1,s3
1c009450:	6add8663          	beq	s11,a3,1c009afc <pos_libc_prf+0xd92>
1c009454:	00271693          	slli	a3,a4,0x2
1c009458:	01e75593          	srli	a1,a4,0x1e
1c00945c:	00261513          	slli	a0,a2,0x2
1c009460:	9736                	add	a4,a4,a3
1c009462:	8d4d                	or	a0,a0,a1
1c009464:	962a                	add	a2,a2,a0
1c009466:	00d735b3          	sltu	a1,a4,a3
1c00946a:	95b2                	add	a1,a1,a2
1c00946c:	01f75693          	srli	a3,a4,0x1f
1c009470:	0586                	slli	a1,a1,0x1
1c009472:	8dd5                	or	a1,a1,a3
1c009474:	01c5d693          	srli	a3,a1,0x1c
1c009478:	03068613          	addi	a2,a3,48
1c00947c:	00d036b3          	snez	a3,a3
1c009480:	10000537          	lui	a0,0x10000
1c009484:	40d30333          	sub	t1,t1,a3
1c009488:	46b2                	lw	a3,12(sp)
1c00948a:	157d                	addi	a0,a0,-1
1c00948c:	00ce8023          	sb	a2,0(t4)
1c009490:	0706                	slli	a4,a4,0x1
1c009492:	8de9                	and	a1,a1,a0
1c009494:	64068b63          	beqz	a3,1c009aea <pos_libc_prf+0xd80>
1c009498:	02e00693          	li	a3,46
1c00949c:	00de80a3          	sb	a3,1(t4)
1c0094a0:	002e8513          	addi	a0,t4,2
1c0094a4:	020a00e3          	beqz	s4,1c009cc4 <pos_libc_prf+0xf5a>
1c0094a8:	014509b3          	add	s3,a0,s4
1c0094ac:	48bd                	li	a7,15
1c0094ae:	03000e13          	li	t3,48
1c0094b2:	00271793          	slli	a5,a4,0x2
1c0094b6:	01e75813          	srli	a6,a4,0x1e
1c0094ba:	00259693          	slli	a3,a1,0x2
1c0094be:	00e78633          	add	a2,a5,a4
1c0094c2:	00d866b3          	or	a3,a6,a3
1c0094c6:	96ae                	add	a3,a3,a1
1c0094c8:	00f637b3          	sltu	a5,a2,a5
1c0094cc:	97b6                	add	a5,a5,a3
1c0094ce:	0786                	slli	a5,a5,0x1
1c0094d0:	01f65693          	srli	a3,a2,0x1f
1c0094d4:	8fd5                	or	a5,a5,a3
1c0094d6:	01c7d693          	srli	a3,a5,0x1c
1c0094da:	03068693          	addi	a3,a3,48
1c0094de:	0505                	addi	a0,a0,1
1c0094e0:	3b105663          	blez	a7,1c00988c <pos_libc_prf+0xb22>
1c0094e4:	10000837          	lui	a6,0x10000
1c0094e8:	187d                	addi	a6,a6,-1
1c0094ea:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c0094ee:	18fd                	addi	a7,a7,-1
1c0094f0:	00161713          	slli	a4,a2,0x1
1c0094f4:	0107f5b3          	and	a1,a5,a6
1c0094f8:	faa99de3          	bne	s3,a0,1c0094b2 <pos_libc_prf+0x748>
1c0094fc:	0c0f9263          	bnez	t6,1c0095c0 <pos_libc_prf+0x856>
1c009500:	fdfdf713          	andi	a4,s11,-33
1c009504:	04500693          	li	a3,69
1c009508:	02d71963          	bne	a4,a3,1c00953a <pos_libc_prf+0x7d0>
1c00950c:	87ee                	mv	a5,s11
1c00950e:	00f98023          	sb	a5,0(s3)
1c009512:	6a034763          	bltz	t1,1c009bc0 <pos_libc_prf+0xe56>
1c009516:	02b00793          	li	a5,43
1c00951a:	00f980a3          	sb	a5,1(s3)
1c00951e:	47a9                	li	a5,10
1c009520:	02f34733          	div	a4,t1,a5
1c009524:	02f367b3          	rem	a5,t1,a5
1c009528:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c00952c:	03078793          	addi	a5,a5,48
1c009530:	00e98123          	sb	a4,2(s3)
1c009534:	00f981a3          	sb	a5,3(s3)
1c009538:	0991                	addi	s3,s3,4
1c00953a:	00098023          	sb	zero,0(s3)
1c00953e:	419989b3          	sub	s3,s3,s9
1c009542:	48d2                	lw	a7,20(sp)
1c009544:	4662                	lw	a2,24(sp)
1c009546:	00c8e8b3          	or	a7,a7,a2
1c00954a:	c646                	sw	a7,12(sp)
1c00954c:	34089d63          	bnez	a7,1c0098a6 <pos_libc_prf+0xb3c>
1c009550:	02414703          	lbu	a4,36(sp)
1c009554:	02d00793          	li	a5,45
1c009558:	34f70763          	beq	a4,a5,1c0098a6 <pos_libc_prf+0xb3c>
1c00955c:	0c800793          	li	a5,200
1c009560:	ab37cbe3          	blt	a5,s3,1c009016 <pos_libc_prf+0x2ac>
1c009564:	9b29c2e3          	blt	s3,s2,1c008f08 <pos_libc_prf+0x19e>
1c009568:	b461                	j	1c008ff0 <pos_libc_prf+0x286>
1c00956a:	0585                	addi	a1,a1,1
1c00956c:	00271793          	slli	a5,a4,0x2
1c009570:	01e75e13          	srli	t3,a4,0x1e
1c009574:	00261693          	slli	a3,a2,0x2
1c009578:	00e788b3          	add	a7,a5,a4
1c00957c:	00de66b3          	or	a3,t3,a3
1c009580:	96b2                	add	a3,a3,a2
1c009582:	00f8b7b3          	sltu	a5,a7,a5
1c009586:	97b6                	add	a5,a5,a3
1c009588:	0786                	slli	a5,a5,0x1
1c00958a:	01f8d693          	srli	a3,a7,0x1f
1c00958e:	8fd5                	or	a5,a5,a3
1c009590:	01c7de13          	srli	t3,a5,0x1c
1c009594:	03000693          	li	a3,48
1c009598:	00a05c63          	blez	a0,1c0095b0 <pos_libc_prf+0x846>
1c00959c:	00189713          	slli	a4,a7,0x1
1c0095a0:	100008b7          	lui	a7,0x10000
1c0095a4:	18fd                	addi	a7,a7,-1
1c0095a6:	030e0693          	addi	a3,t3,48
1c0095aa:	157d                	addi	a0,a0,-1
1c0095ac:	0117f633          	and	a2,a5,a7
1c0095b0:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c0095b4:	fab99be3          	bne	s3,a1,1c00956a <pos_libc_prf+0x800>
1c0095b8:	014809b3          	add	s3,a6,s4
1c0095bc:	f60f8fe3          	beqz	t6,1c00953a <pos_libc_prf+0x7d0>
1c0095c0:	03000613          	li	a2,48
1c0095c4:	a011                	j	1c0095c8 <pos_libc_prf+0x85e>
1c0095c6:	89ba                	mv	s3,a4
1c0095c8:	fff9c683          	lbu	a3,-1(s3)
1c0095cc:	fff98713          	addi	a4,s3,-1
1c0095d0:	fec68be3          	beq	a3,a2,1c0095c6 <pos_libc_prf+0x85c>
1c0095d4:	02e00613          	li	a2,46
1c0095d8:	f2c694e3          	bne	a3,a2,1c009500 <pos_libc_prf+0x796>
1c0095dc:	89ba                	mv	s3,a4
1c0095de:	b70d                	j	1c009500 <pos_libc_prf+0x796>
1c0095e0:	06300713          	li	a4,99
1c0095e4:	16ed8863          	beq	s11,a4,1c009754 <pos_libc_prf+0x9ea>
1c0095e8:	0db74363          	blt	a4,s11,1c0096ae <pos_libc_prf+0x944>
1c0095ec:	05800713          	li	a4,88
1c0095f0:	28ed9763          	bne	s11,a4,1c00987e <pos_libc_prf+0xb14>
1c0095f4:	48b2                	lw	a7,12(sp)
1c0095f6:	004c0813          	addi	a6,s8,4
1c0095fa:	000c2583          	lw	a1,0(s8)
1c0095fe:	3c088a63          	beqz	a7,1c0099d2 <pos_libc_prf+0xc68>
1c009602:	7761                	lui	a4,0xffff8
1c009604:	83074713          	xori	a4,a4,-2000
1c009608:	02e11223          	sh	a4,36(sp)
1c00960c:	4889                	li	a7,2
1c00960e:	02610693          	addi	a3,sp,38
1c009612:	8736                	mv	a4,a3
1c009614:	4e25                	li	t3,9
1c009616:	00f5f613          	andi	a2,a1,15
1c00961a:	0ff67793          	andi	a5,a2,255
1c00961e:	03078513          	addi	a0,a5,48
1c009622:	8191                	srli	a1,a1,0x4
1c009624:	05778793          	addi	a5,a5,87
1c009628:	0705                	addi	a4,a4,1
1c00962a:	06ce6a63          	bltu	t3,a2,1c00969e <pos_libc_prf+0x934>
1c00962e:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c009632:	f1f5                	bnez	a1,1c009616 <pos_libc_prf+0x8ac>
1c009634:	40d709b3          	sub	s3,a4,a3
1c009638:	0149db63          	ble	s4,s3,1c00964e <pos_libc_prf+0x8e4>
1c00963c:	03000613          	li	a2,48
1c009640:	0705                	addi	a4,a4,1
1c009642:	fec70fa3          	sb	a2,-1(a4)
1c009646:	40d709b3          	sub	s3,a4,a3
1c00964a:	ff49cbe3          	blt	s3,s4,1c009640 <pos_libc_prf+0x8d6>
1c00964e:	00070023          	sb	zero,0(a4)
1c009652:	177d                	addi	a4,a4,-1
1c009654:	00e6fe63          	bleu	a4,a3,1c009670 <pos_libc_prf+0x906>
1c009658:	0006c603          	lbu	a2,0(a3)
1c00965c:	00074783          	lbu	a5,0(a4)
1c009660:	00c70023          	sb	a2,0(a4)
1c009664:	00f68023          	sb	a5,0(a3)
1c009668:	177d                	addi	a4,a4,-1
1c00966a:	0685                	addi	a3,a3,1
1c00966c:	fee6e6e3          	bltu	a3,a4,1c009658 <pos_libc_prf+0x8ee>
1c009670:	05800713          	li	a4,88
1c009674:	36ed8263          	beq	s11,a4,1c0099d8 <pos_libc_prf+0xc6e>
1c009678:	46b2                	lw	a3,12(sp)
1c00967a:	99c6                	add	s3,s3,a7
1c00967c:	c299                	beqz	a3,1c009682 <pos_libc_prf+0x918>
1c00967e:	4709                	li	a4,2
1c009680:	c63a                	sw	a4,12(sp)
1c009682:	57fd                	li	a5,-1
1c009684:	3afa0263          	beq	s4,a5,1c009a28 <pos_libc_prf+0xcbe>
1c009688:	0c800793          	li	a5,200
1c00968c:	9937c5e3          	blt	a5,s3,1c009016 <pos_libc_prf+0x2ac>
1c009690:	02000793          	li	a5,32
1c009694:	c83e                	sw	a5,16(sp)
1c009696:	8c42                	mv	s8,a6
1c009698:	8729c8e3          	blt	s3,s2,1c008f08 <pos_libc_prf+0x19e>
1c00969c:	ba91                	j	1c008ff0 <pos_libc_prf+0x286>
1c00969e:	fef70fa3          	sb	a5,-1(a4)
1c0096a2:	f9b5                	bnez	a1,1c009616 <pos_libc_prf+0x8ac>
1c0096a4:	bf41                	j	1c009634 <pos_libc_prf+0x8ca>
1c0096a6:	06900713          	li	a4,105
1c0096aa:	1ced9a63          	bne	s11,a4,1c00987e <pos_libc_prf+0xb14>
1c0096ae:	000c2583          	lw	a1,0(s8)
1c0096b2:	0c11                	addi	s8,s8,4
1c0096b4:	3805c863          	bltz	a1,1c009a44 <pos_libc_prf+0xcda>
1c0096b8:	48d2                	lw	a7,20(sp)
1c0096ba:	872e                	mv	a4,a1
1c0096bc:	36089d63          	bnez	a7,1c009a36 <pos_libc_prf+0xccc>
1c0096c0:	4662                	lw	a2,24(sp)
1c0096c2:	87e6                	mv	a5,s9
1c0096c4:	c619                	beqz	a2,1c0096d2 <pos_libc_prf+0x968>
1c0096c6:	02000793          	li	a5,32
1c0096ca:	02f10223          	sb	a5,36(sp)
1c0096ce:	02510793          	addi	a5,sp,37
1c0096d2:	89be                	mv	s3,a5
1c0096d4:	4629                	li	a2,10
1c0096d6:	02c776b3          	remu	a3,a4,a2
1c0096da:	02c75733          	divu	a4,a4,a2
1c0096de:	0985                	addi	s3,s3,1
1c0096e0:	03068693          	addi	a3,a3,48
1c0096e4:	fed98fa3          	sb	a3,-1(s3)
1c0096e8:	f77d                	bnez	a4,1c0096d6 <pos_libc_prf+0x96c>
1c0096ea:	40f98733          	sub	a4,s3,a5
1c0096ee:	01475b63          	ble	s4,a4,1c009704 <pos_libc_prf+0x99a>
1c0096f2:	03000693          	li	a3,48
1c0096f6:	0985                	addi	s3,s3,1
1c0096f8:	fed98fa3          	sb	a3,-1(s3)
1c0096fc:	40f98733          	sub	a4,s3,a5
1c009700:	ff474be3          	blt	a4,s4,1c0096f6 <pos_libc_prf+0x98c>
1c009704:	00098023          	sb	zero,0(s3)
1c009708:	fff98713          	addi	a4,s3,-1
1c00970c:	00e7fe63          	bleu	a4,a5,1c009728 <pos_libc_prf+0x9be>
1c009710:	0007c603          	lbu	a2,0(a5)
1c009714:	00074683          	lbu	a3,0(a4)
1c009718:	00c70023          	sb	a2,0(a4)
1c00971c:	00d78023          	sb	a3,0(a5)
1c009720:	177d                	addi	a4,a4,-1
1c009722:	0785                	addi	a5,a5,1
1c009724:	fee7e6e3          	bltu	a5,a4,1c009710 <pos_libc_prf+0x9a6>
1c009728:	46d2                	lw	a3,20(sp)
1c00972a:	4762                	lw	a4,24(sp)
1c00972c:	419989b3          	sub	s3,s3,s9
1c009730:	8ed9                	or	a3,a3,a4
1c009732:	c636                	sw	a3,12(sp)
1c009734:	e299                	bnez	a3,1c00973a <pos_libc_prf+0x9d0>
1c009736:	81fd                	srli	a1,a1,0x1f
1c009738:	c62e                	sw	a1,12(sp)
1c00973a:	57fd                	li	a5,-1
1c00973c:	e2fa00e3          	beq	s4,a5,1c00955c <pos_libc_prf+0x7f2>
1c009740:	0c800793          	li	a5,200
1c009744:	8d37c9e3          	blt	a5,s3,1c009016 <pos_libc_prf+0x2ac>
1c009748:	02000793          	li	a5,32
1c00974c:	c83e                	sw	a5,16(sp)
1c00974e:	fb29cd63          	blt	s3,s2,1c008f08 <pos_libc_prf+0x19e>
1c009752:	b879                	j	1c008ff0 <pos_libc_prf+0x286>
1c009754:	000c2783          	lw	a5,0(s8)
1c009758:	020102a3          	sb	zero,37(sp)
1c00975c:	02f10223          	sb	a5,36(sp)
1c009760:	0c11                	addi	s8,s8,4
1c009762:	4985                	li	s3,1
1c009764:	f9eff06f          	j	1c008f02 <pos_libc_prf+0x198>
1c009768:	000c2703          	lw	a4,0(s8)
1c00976c:	87e6                	mv	a5,s9
1c00976e:	0c11                	addi	s8,s8,4
1c009770:	4629                	li	a2,10
1c009772:	02c776b3          	remu	a3,a4,a2
1c009776:	02c75733          	divu	a4,a4,a2
1c00977a:	0785                	addi	a5,a5,1
1c00977c:	03068693          	addi	a3,a3,48
1c009780:	fed78fa3          	sb	a3,-1(a5)
1c009784:	f77d                	bnez	a4,1c009772 <pos_libc_prf+0xa08>
1c009786:	419789b3          	sub	s3,a5,s9
1c00978a:	0149db63          	ble	s4,s3,1c0097a0 <pos_libc_prf+0xa36>
1c00978e:	03000713          	li	a4,48
1c009792:	0785                	addi	a5,a5,1
1c009794:	fee78fa3          	sb	a4,-1(a5)
1c009798:	419789b3          	sub	s3,a5,s9
1c00979c:	ff49cbe3          	blt	s3,s4,1c009792 <pos_libc_prf+0xa28>
1c0097a0:	00078023          	sb	zero,0(a5)
1c0097a4:	17fd                	addi	a5,a5,-1
1c0097a6:	00fcff63          	bleu	a5,s9,1c0097c4 <pos_libc_prf+0xa5a>
1c0097aa:	8766                	mv	a4,s9
1c0097ac:	00074603          	lbu	a2,0(a4)
1c0097b0:	0007c683          	lbu	a3,0(a5)
1c0097b4:	00c78023          	sb	a2,0(a5)
1c0097b8:	00d70023          	sb	a3,0(a4)
1c0097bc:	17fd                	addi	a5,a5,-1
1c0097be:	0705                	addi	a4,a4,1
1c0097c0:	fef766e3          	bltu	a4,a5,1c0097ac <pos_libc_prf+0xa42>
1c0097c4:	57fd                	li	a5,-1
1c0097c6:	0cfa0a63          	beq	s4,a5,1c00989a <pos_libc_prf+0xb30>
1c0097ca:	0c800793          	li	a5,200
1c0097ce:	8537c4e3          	blt	a5,s3,1c009016 <pos_libc_prf+0x2ac>
1c0097d2:	02000813          	li	a6,32
1c0097d6:	c602                	sw	zero,12(sp)
1c0097d8:	c842                	sw	a6,16(sp)
1c0097da:	ba45                	j	1c00918a <pos_libc_prf+0x420>
1c0097dc:	77e1                	lui	a5,0xffff8
1c0097de:	8307c793          	xori	a5,a5,-2000
1c0097e2:	02610713          	addi	a4,sp,38
1c0097e6:	000c2603          	lw	a2,0(s8)
1c0097ea:	02f11223          	sh	a5,36(sp)
1c0097ee:	0c11                	addi	s8,s8,4
1c0097f0:	87ba                	mv	a5,a4
1c0097f2:	4825                	li	a6,9
1c0097f4:	00f67593          	andi	a1,a2,15
1c0097f8:	0ff5f693          	andi	a3,a1,255
1c0097fc:	03068513          	addi	a0,a3,48
1c009800:	8211                	srli	a2,a2,0x4
1c009802:	05768693          	addi	a3,a3,87
1c009806:	0785                	addi	a5,a5,1
1c009808:	06b86163          	bltu	a6,a1,1c00986a <pos_libc_prf+0xb00>
1c00980c:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c009810:	f275                	bnez	a2,1c0097f4 <pos_libc_prf+0xa8a>
1c009812:	40e789b3          	sub	s3,a5,a4
1c009816:	469d                	li	a3,7
1c009818:	0136cb63          	blt	a3,s3,1c00982e <pos_libc_prf+0xac4>
1c00981c:	03000613          	li	a2,48
1c009820:	0785                	addi	a5,a5,1
1c009822:	fec78fa3          	sb	a2,-1(a5)
1c009826:	40e789b3          	sub	s3,a5,a4
1c00982a:	ff36dbe3          	ble	s3,a3,1c009820 <pos_libc_prf+0xab6>
1c00982e:	00078023          	sb	zero,0(a5)
1c009832:	17fd                	addi	a5,a5,-1
1c009834:	00f77e63          	bleu	a5,a4,1c009850 <pos_libc_prf+0xae6>
1c009838:	00074603          	lbu	a2,0(a4)
1c00983c:	0007c683          	lbu	a3,0(a5)
1c009840:	00c78023          	sb	a2,0(a5)
1c009844:	00d70023          	sb	a3,0(a4)
1c009848:	17fd                	addi	a5,a5,-1
1c00984a:	0705                	addi	a4,a4,1
1c00984c:	fef766e3          	bltu	a4,a5,1c009838 <pos_libc_prf+0xace>
1c009850:	57fd                	li	a5,-1
1c009852:	0989                	addi	s3,s3,2
1c009854:	04fa0363          	beq	s4,a5,1c00989a <pos_libc_prf+0xb30>
1c009858:	0c800793          	li	a5,200
1c00985c:	fb37cd63          	blt	a5,s3,1c009016 <pos_libc_prf+0x2ac>
1c009860:	02000893          	li	a7,32
1c009864:	c602                	sw	zero,12(sp)
1c009866:	c846                	sw	a7,16(sp)
1c009868:	b20d                	j	1c00918a <pos_libc_prf+0x420>
1c00986a:	fed78fa3          	sb	a3,-1(a5)
1c00986e:	f259                	bnez	a2,1c0097f4 <pos_libc_prf+0xa8a>
1c009870:	b74d                	j	1c009812 <pos_libc_prf+0xaa8>
1c009872:	000c2783          	lw	a5,0(s8)
1c009876:	0c11                	addi	s8,s8,4
1c009878:	c380                	sw	s0,0(a5)
1c00987a:	d36ff06f          	j	1c008db0 <pos_libc_prf+0x46>
1c00987e:	0c800713          	li	a4,200
1c009882:	d3b75763          	ble	s11,a4,1c008db0 <pos_libc_prf+0x46>
1c009886:	547d                	li	s0,-1
1c009888:	d4cff06f          	j	1c008dd4 <pos_libc_prf+0x6a>
1c00988c:	ffc50fa3          	sb	t3,-1(a0)
1c009890:	c2a991e3          	bne	s3,a0,1c0094b2 <pos_libc_prf+0x748>
1c009894:	c60f86e3          	beqz	t6,1c009500 <pos_libc_prf+0x796>
1c009898:	b325                	j	1c0095c0 <pos_libc_prf+0x856>
1c00989a:	0c800793          	li	a5,200
1c00989e:	f737cc63          	blt	a5,s3,1c009016 <pos_libc_prf+0x2ac>
1c0098a2:	c602                	sw	zero,12(sp)
1c0098a4:	b0dd                	j	1c00918a <pos_libc_prf+0x420>
1c0098a6:	0c800793          	li	a5,200
1c0098aa:	f737c663          	blt	a5,s3,1c009016 <pos_libc_prf+0x2ac>
1c0098ae:	4705                	li	a4,1
1c0098b0:	c63a                	sw	a4,12(sp)
1c0098b2:	b8e1                	j	1c00918a <pos_libc_prf+0x420>
1c0098b4:	41390a33          	sub	s4,s2,s3
1c0098b8:	00198613          	addi	a2,s3,1
1c0098bc:	85e6                	mv	a1,s9
1c0098be:	014c8533          	add	a0,s9,s4
1c0098c2:	a72ff0ef          	jal	ra,1c008b34 <memmove>
1c0098c6:	46c2                	lw	a3,16(sp)
1c0098c8:	02000793          	li	a5,32
1c0098cc:	30f68163          	beq	a3,a5,1c009bce <pos_libc_prf+0xe64>
1c0098d0:	4732                	lw	a4,12(sp)
1c0098d2:	89ca                	mv	s3,s2
1c0098d4:	9a3a                	add	s4,s4,a4
1c0098d6:	f1475d63          	ble	s4,a4,1c008ff0 <pos_libc_prf+0x286>
1c0098da:	4832                	lw	a6,12(sp)
1c0098dc:	4715                	li	a4,5
1c0098de:	010c87b3          	add	a5,s9,a6
1c0098e2:	40f007b3          	neg	a5,a5
1c0098e6:	8b8d                	andi	a5,a5,3
1c0098e8:	00378693          	addi	a3,a5,3
1c0098ec:	410a05b3          	sub	a1,s4,a6
1c0098f0:	00e6f363          	bleu	a4,a3,1c0098f6 <pos_libc_prf+0xb8c>
1c0098f4:	4695                	li	a3,5
1c0098f6:	48b2                	lw	a7,12(sp)
1c0098f8:	fffa0713          	addi	a4,s4,-1
1c0098fc:	41170733          	sub	a4,a4,a7
1c009900:	06d76b63          	bltu	a4,a3,1c009976 <pos_libc_prf+0xc0c>
1c009904:	86c6                	mv	a3,a7
1c009906:	cb9d                	beqz	a5,1c00993c <pos_libc_prf+0xbd2>
1c009908:	46c2                	lw	a3,16(sp)
1c00990a:	1988                	addi	a0,sp,240
1c00990c:	01150733          	add	a4,a0,a7
1c009910:	f2d70a23          	sb	a3,-204(a4)
1c009914:	4705                	li	a4,1
1c009916:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c00991a:	02e78163          	beq	a5,a4,1c00993c <pos_libc_prf+0xbd2>
1c00991e:	4742                	lw	a4,16(sp)
1c009920:	96aa                	add	a3,a3,a0
1c009922:	f2e68a23          	sb	a4,-204(a3)
1c009926:	470d                	li	a4,3
1c009928:	00288693          	addi	a3,a7,2
1c00992c:	00e79863          	bne	a5,a4,1c00993c <pos_libc_prf+0xbd2>
1c009930:	4842                	lw	a6,16(sp)
1c009932:	96aa                	add	a3,a3,a0
1c009934:	f3068a23          	sb	a6,-204(a3)
1c009938:	00388693          	addi	a3,a7,3
1c00993c:	48c2                	lw	a7,16(sp)
1c00993e:	4832                	lw	a6,12(sp)
1c009940:	00889713          	slli	a4,a7,0x8
1c009944:	01089513          	slli	a0,a7,0x10
1c009948:	00e8e733          	or	a4,a7,a4
1c00994c:	8d9d                	sub	a1,a1,a5
1c00994e:	01889613          	slli	a2,a7,0x18
1c009952:	8f49                	or	a4,a4,a0
1c009954:	97c2                	add	a5,a5,a6
1c009956:	8f51                	or	a4,a4,a2
1c009958:	0025d513          	srli	a0,a1,0x2
1c00995c:	97e6                	add	a5,a5,s9
1c00995e:	4601                	li	a2,0
1c009960:	c398                	sw	a4,0(a5)
1c009962:	0605                	addi	a2,a2,1
1c009964:	0791                	addi	a5,a5,4
1c009966:	fea66de3          	bltu	a2,a0,1c009960 <pos_libc_prf+0xbf6>
1c00996a:	ffc5f793          	andi	a5,a1,-4
1c00996e:	96be                	add	a3,a3,a5
1c009970:	c636                	sw	a3,12(sp)
1c009972:	e6b78e63          	beq	a5,a1,1c008fee <pos_libc_prf+0x284>
1c009976:	46b2                	lw	a3,12(sp)
1c009978:	0f010893          	addi	a7,sp,240
1c00997c:	4742                	lw	a4,16(sp)
1c00997e:	00d887b3          	add	a5,a7,a3
1c009982:	f2e78a23          	sb	a4,-204(a5)
1c009986:	00168793          	addi	a5,a3,1
1c00998a:	e747d263          	ble	s4,a5,1c008fee <pos_libc_prf+0x284>
1c00998e:	97c6                	add	a5,a5,a7
1c009990:	f2e78a23          	sb	a4,-204(a5)
1c009994:	00268793          	addi	a5,a3,2
1c009998:	e547db63          	ble	s4,a5,1c008fee <pos_libc_prf+0x284>
1c00999c:	97c6                	add	a5,a5,a7
1c00999e:	f2e78a23          	sb	a4,-204(a5)
1c0099a2:	00368793          	addi	a5,a3,3
1c0099a6:	e547d463          	ble	s4,a5,1c008fee <pos_libc_prf+0x284>
1c0099aa:	97c6                	add	a5,a5,a7
1c0099ac:	f2e78a23          	sb	a4,-204(a5)
1c0099b0:	00468793          	addi	a5,a3,4
1c0099b4:	e347dd63          	ble	s4,a5,1c008fee <pos_libc_prf+0x284>
1c0099b8:	97c6                	add	a5,a5,a7
1c0099ba:	f2e78a23          	sb	a4,-204(a5)
1c0099be:	00568a93          	addi	s5,a3,5
1c0099c2:	e34ad663          	ble	s4,s5,1c008fee <pos_libc_prf+0x284>
1c0099c6:	9ac6                	add	s5,s5,a7
1c0099c8:	f2ea8a23          	sb	a4,-204(s5)
1c0099cc:	89ca                	mv	s3,s2
1c0099ce:	e22ff06f          	j	1c008ff0 <pos_libc_prf+0x286>
1c0099d2:	4881                	li	a7,0
1c0099d4:	1054                	addi	a3,sp,36
1c0099d6:	b935                	j	1c009612 <pos_libc_prf+0x8a8>
1c0099d8:	02414783          	lbu	a5,36(sp)
1c0099dc:	1058                	addi	a4,sp,36
1c0099de:	46e5                	li	a3,25
1c0099e0:	c8078ce3          	beqz	a5,1c009678 <pos_libc_prf+0x90e>
1c0099e4:	fe078613          	addi	a2,a5,-32
1c0099e8:	f9f78793          	addi	a5,a5,-97
1c0099ec:	0ff7f793          	andi	a5,a5,255
1c0099f0:	00f6e963          	bltu	a3,a5,1c009a02 <pos_libc_prf+0xc98>
1c0099f4:	00c70023          	sb	a2,0(a4)
1c0099f8:	0705                	addi	a4,a4,1
1c0099fa:	00074783          	lbu	a5,0(a4)
1c0099fe:	f3fd                	bnez	a5,1c0099e4 <pos_libc_prf+0xc7a>
1c009a00:	b9a5                	j	1c009678 <pos_libc_prf+0x90e>
1c009a02:	0705                	addi	a4,a4,1
1c009a04:	00074783          	lbu	a5,0(a4)
1c009a08:	fff1                	bnez	a5,1c0099e4 <pos_libc_prf+0xc7a>
1c009a0a:	b1bd                	j	1c009678 <pos_libc_prf+0x90e>
1c009a0c:	47d2                	lw	a5,20(sp)
1c009a0e:	20078263          	beqz	a5,1c009c12 <pos_libc_prf+0xea8>
1c009a12:	02b00713          	li	a4,43
1c009a16:	02e10223          	sb	a4,36(sp)
1c009a1a:	02510e93          	addi	t4,sp,37
1c009a1e:	4301                	li	t1,0
1c009a20:	4501                	li	a0,0
1c009a22:	4681                	li	a3,0
1c009a24:	4581                	li	a1,0
1c009a26:	b8d5                	j	1c00931a <pos_libc_prf+0x5b0>
1c009a28:	0c800793          	li	a5,200
1c009a2c:	df37c563          	blt	a5,s3,1c009016 <pos_libc_prf+0x2ac>
1c009a30:	8c42                	mv	s8,a6
1c009a32:	f58ff06f          	j	1c00918a <pos_libc_prf+0x420>
1c009a36:	02b00793          	li	a5,43
1c009a3a:	02f10223          	sb	a5,36(sp)
1c009a3e:	02510793          	addi	a5,sp,37
1c009a42:	b941                	j	1c0096d2 <pos_libc_prf+0x968>
1c009a44:	02d00793          	li	a5,45
1c009a48:	02f10223          	sb	a5,36(sp)
1c009a4c:	800007b7          	lui	a5,0x80000
1c009a50:	22f58363          	beq	a1,a5,1c009c76 <pos_libc_prf+0xf0c>
1c009a54:	40b00733          	neg	a4,a1
1c009a58:	02510793          	addi	a5,sp,37
1c009a5c:	b99d                	j	1c0096d2 <pos_libc_prf+0x968>
1c009a5e:	47b2                	lw	a5,12(sp)
1c009a60:	4f81                	li	t6,0
1c009a62:	e399                	bnez	a5,1c009a68 <pos_libc_prf+0xcfe>
1c009a64:	01403fb3          	snez	t6,s4
1c009a68:	56f5                	li	a3,-3
1c009a6a:	001a0e13          	addi	t3,s4,1
1c009a6e:	00d34463          	blt	t1,a3,1c009a76 <pos_libc_prf+0xd0c>
1c009a72:	166e5d63          	ble	t1,t3,1c009bec <pos_libc_prf+0xe82>
1c009a76:	46c1                	li	a3,16
1c009a78:	01c6d363          	ble	t3,a3,1c009a7e <pos_libc_prf+0xd14>
1c009a7c:	4e41                	li	t3,16
1c009a7e:	06700693          	li	a3,103
1c009a82:	1e7d                	addi	t3,t3,-1
1c009a84:	1add8963          	beq	s11,a3,1c009c36 <pos_libc_prf+0xecc>
1c009a88:	04500d93          	li	s11,69
1c009a8c:	b0c5                	j	1c00936c <pos_libc_prf+0x602>
1c009a8e:	020102a3          	sb	zero,37(sp)
1c009a92:	57fd                	li	a5,-1
1c009a94:	89ba                	mv	s3,a4
1c009a96:	8c2a                	mv	s8,a0
1c009a98:	c6fa0563          	beq	s4,a5,1c008f02 <pos_libc_prf+0x198>
1c009a9c:	02000813          	li	a6,32
1c009aa0:	c842                	sw	a6,16(sp)
1c009aa2:	c60ff06f          	j	1c008f02 <pos_libc_prf+0x198>
1c009aa6:	89b6                	mv	s3,a3
1c009aa8:	bdeff06f          	j	1c008e86 <pos_libc_prf+0x11c>
1c009aac:	8766                	mv	a4,s9
1c009aae:	1c084c63          	bltz	a6,1c009c86 <pos_libc_prf+0xf1c>
1c009ab2:	8e55                	or	a2,a2,a3
1c009ab4:	fbfd8793          	addi	a5,s11,-65
1c009ab8:	00370993          	addi	s3,a4,3
1c009abc:	46e5                	li	a3,25
1c009abe:	10061a63          	bnez	a2,1c009bd2 <pos_libc_prf+0xe68>
1c009ac2:	16f6ee63          	bltu	a3,a5,1c009c3e <pos_libc_prf+0xed4>
1c009ac6:	6795                	lui	a5,0x5
1c009ac8:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c009acc:	00f71023          	sh	a5,0(a4)
1c009ad0:	04600793          	li	a5,70
1c009ad4:	00f70123          	sb	a5,2(a4)
1c009ad8:	000701a3          	sb	zero,3(a4)
1c009adc:	419989b3          	sub	s3,s3,s9
1c009ae0:	b48d                	j	1c009542 <pos_libc_prf+0x7d8>
1c009ae2:	85e6                	mv	a1,s9
1c009ae4:	8766                	mv	a4,s9
1c009ae6:	e38ff06f          	j	1c00911e <pos_libc_prf+0x3b4>
1c009aea:	a00a09e3          	beqz	s4,1c0094fc <pos_libc_prf+0x792>
1c009aee:	02e00693          	li	a3,46
1c009af2:	002e8513          	addi	a0,t4,2
1c009af6:	00de80a3          	sb	a3,1(t4)
1c009afa:	b27d                	j	1c0094a8 <pos_libc_prf+0x73e>
1c009afc:	14605b63          	blez	t1,1c009c52 <pos_libc_prf+0xee8>
1c009b00:	006e89b3          	add	s3,t4,t1
1c009b04:	4541                	li	a0,16
1c009b06:	03000893          	li	a7,48
1c009b0a:	00271793          	slli	a5,a4,0x2
1c009b0e:	01e75313          	srli	t1,a4,0x1e
1c009b12:	00261693          	slli	a3,a2,0x2
1c009b16:	00e78833          	add	a6,a5,a4
1c009b1a:	00d366b3          	or	a3,t1,a3
1c009b1e:	96b2                	add	a3,a3,a2
1c009b20:	00f837b3          	sltu	a5,a6,a5
1c009b24:	97b6                	add	a5,a5,a3
1c009b26:	0786                	slli	a5,a5,0x1
1c009b28:	01f85693          	srli	a3,a6,0x1f
1c009b2c:	8fd5                	or	a5,a5,a3
1c009b2e:	01c7d693          	srli	a3,a5,0x1c
1c009b32:	03068693          	addi	a3,a3,48
1c009b36:	02a05063          	blez	a0,1c009b56 <pos_libc_prf+0xdec>
1c009b3a:	00181713          	slli	a4,a6,0x1
1c009b3e:	10000837          	lui	a6,0x10000
1c009b42:	187d                	addi	a6,a6,-1
1c009b44:	fed58fa3          	sb	a3,-1(a1)
1c009b48:	157d                	addi	a0,a0,-1
1c009b4a:	0107f633          	and	a2,a5,a6
1c009b4e:	00b98863          	beq	s3,a1,1c009b5e <pos_libc_prf+0xdf4>
1c009b52:	0585                	addi	a1,a1,1
1c009b54:	bf5d                	j	1c009b0a <pos_libc_prf+0xda0>
1c009b56:	ff158fa3          	sb	a7,-1(a1)
1c009b5a:	feb99ce3          	bne	s3,a1,1c009b52 <pos_libc_prf+0xde8>
1c009b5e:	4301                	li	t1,0
1c009b60:	48b2                	lw	a7,12(sp)
1c009b62:	00089463          	bnez	a7,1c009b6a <pos_libc_prf+0xe00>
1c009b66:	a40a0be3          	beqz	s4,1c0095bc <pos_libc_prf+0x852>
1c009b6a:	00198813          	addi	a6,s3,1
1c009b6e:	001a0693          	addi	a3,s4,1
1c009b72:	02e00593          	li	a1,46
1c009b76:	00b98023          	sb	a1,0(s3)
1c009b7a:	99b6                	add	s3,s3,a3
1c009b7c:	85c2                	mv	a1,a6
1c009b7e:	03000693          	li	a3,48
1c009b82:	a2b98be3          	beq	s3,a1,1c0095b8 <pos_libc_prf+0x84e>
1c009b86:	0585                	addi	a1,a1,1
1c009b88:	9e0302e3          	beqz	t1,1c00956c <pos_libc_prf+0x802>
1c009b8c:	fed58fa3          	sb	a3,-1(a1)
1c009b90:	0305                	addi	t1,t1,1
1c009b92:	bfc5                	j	1c009b82 <pos_libc_prf+0xe18>
1c009b94:	4a19                	li	s4,6
1c009b96:	fadd9b63          	bne	s11,a3,1c00934c <pos_libc_prf+0x5e2>
1c009b9a:	46b2                	lw	a3,12(sp)
1c009b9c:	57f5                	li	a5,-3
1c009b9e:	0016cf93          	xori	t6,a3,1
1c009ba2:	08f35663          	ble	a5,t1,1c009c2e <pos_libc_prf+0xec4>
1c009ba6:	06500d93          	li	s11,101
1c009baa:	4e19                	li	t3,6
1c009bac:	fc0ff06f          	j	1c00936c <pos_libc_prf+0x602>
1c009bb0:	0c800793          	li	a5,200
1c009bb4:	c737c163          	blt	a5,s3,1c009016 <pos_libc_prf+0x2ac>
1c009bb8:	8c2a                	mv	s8,a0
1c009bba:	c602                	sw	zero,12(sp)
1c009bbc:	dceff06f          	j	1c00918a <pos_libc_prf+0x420>
1c009bc0:	02d00793          	li	a5,45
1c009bc4:	40600333          	neg	t1,t1
1c009bc8:	00f980a3          	sb	a5,1(s3)
1c009bcc:	ba89                	j	1c00951e <pos_libc_prf+0x7b4>
1c009bce:	c602                	sw	zero,12(sp)
1c009bd0:	b329                	j	1c0098da <pos_libc_prf+0xb70>
1c009bd2:	0cf6ed63          	bltu	a3,a5,1c009cac <pos_libc_prf+0xf42>
1c009bd6:	6791                	lui	a5,0x4
1c009bd8:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c009bdc:	00f71023          	sh	a5,0(a4)
1c009be0:	04e00793          	li	a5,78
1c009be4:	00f70123          	sb	a5,2(a4)
1c009be8:	bdc5                	j	1c009ad8 <pos_libc_prf+0xd6e>
1c009bea:	4f81                	li	t6,0
1c009bec:	014307b3          	add	a5,t1,s4
1c009bf0:	0807c863          	bltz	a5,1c009c80 <pos_libc_prf+0xf16>
1c009bf4:	46c1                	li	a3,16
1c009bf6:	8e3e                	mv	t3,a5
1c009bf8:	00f6d363          	ble	a5,a3,1c009bfe <pos_libc_prf+0xe94>
1c009bfc:	4e41                	li	t3,16
1c009bfe:	1e7d                	addi	t3,t3,-1
1c009c00:	06600d93          	li	s11,102
1c009c04:	f6079463          	bnez	a5,1c00936c <pos_libc_prf+0x602>
1c009c08:	4681                	li	a3,0
1c009c0a:	08000637          	lui	a2,0x8000
1c009c0e:	fc8ff06f          	j	1c0093d6 <pos_libc_prf+0x66c>
1c009c12:	47e2                	lw	a5,24(sp)
1c009c14:	c7d5                	beqz	a5,1c009cc0 <pos_libc_prf+0xf56>
1c009c16:	02000713          	li	a4,32
1c009c1a:	02e10223          	sb	a4,36(sp)
1c009c1e:	02510e93          	addi	t4,sp,37
1c009c22:	4301                	li	t1,0
1c009c24:	4501                	li	a0,0
1c009c26:	4681                	li	a3,0
1c009c28:	4581                	li	a1,0
1c009c2a:	ef0ff06f          	j	1c00931a <pos_libc_prf+0x5b0>
1c009c2e:	479d                	li	a5,7
1c009c30:	fa67dee3          	ble	t1,a5,1c009bec <pos_libc_prf+0xe82>
1c009c34:	4e19                	li	t3,6
1c009c36:	06500d93          	li	s11,101
1c009c3a:	f32ff06f          	j	1c00936c <pos_libc_prf+0x602>
1c009c3e:	679d                	lui	a5,0x7
1c009c40:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c009c44:	00f71023          	sh	a5,0(a4)
1c009c48:	06600793          	li	a5,102
1c009c4c:	00f70123          	sb	a5,2(a4)
1c009c50:	b561                	j	1c009ad8 <pos_libc_prf+0xd6e>
1c009c52:	03000693          	li	a3,48
1c009c56:	00de8023          	sb	a3,0(t4)
1c009c5a:	4541                	li	a0,16
1c009c5c:	b711                	j	1c009b60 <pos_libc_prf+0xdf6>
1c009c5e:	48e2                	lw	a7,24(sp)
1c009c60:	8ee6                	mv	t4,s9
1c009c62:	dc088e63          	beqz	a7,1c00923e <pos_libc_prf+0x4d4>
1c009c66:	02000713          	li	a4,32
1c009c6a:	02e10223          	sb	a4,36(sp)
1c009c6e:	02510e93          	addi	t4,sp,37
1c009c72:	dccff06f          	j	1c00923e <pos_libc_prf+0x4d4>
1c009c76:	80000737          	lui	a4,0x80000
1c009c7a:	02510793          	addi	a5,sp,37
1c009c7e:	bc91                	j	1c0096d2 <pos_libc_prf+0x968>
1c009c80:	06600d93          	li	s11,102
1c009c84:	b751                	j	1c009c08 <pos_libc_prf+0xe9e>
1c009c86:	02d00713          	li	a4,45
1c009c8a:	02e10223          	sb	a4,36(sp)
1c009c8e:	02510713          	addi	a4,sp,37
1c009c92:	b505                	j	1c009ab2 <pos_libc_prf+0xd48>
1c009c94:	a40a5d63          	bgez	s4,1c008eee <pos_libc_prf+0x184>
1c009c98:	a62ff06f          	j	1c008efa <pos_libc_prf+0x190>
1c009c9c:	02d00713          	li	a4,45
1c009ca0:	02e10223          	sb	a4,36(sp)
1c009ca4:	02510e93          	addi	t4,sp,37
1c009ca8:	d96ff06f          	j	1c00923e <pos_libc_prf+0x4d4>
1c009cac:	6799                	lui	a5,0x6
1c009cae:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c009cb2:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c009cb6:	06e00793          	li	a5,110
1c009cba:	00f70123          	sb	a5,2(a4)
1c009cbe:	bd29                	j	1c009ad8 <pos_libc_prf+0xd6e>
1c009cc0:	8ee6                	mv	t4,s9
1c009cc2:	b785                	j	1c009c22 <pos_libc_prf+0xeb8>
1c009cc4:	89aa                	mv	s3,a0
1c009cc6:	820f8de3          	beqz	t6,1c009500 <pos_libc_prf+0x796>
1c009cca:	b8dd                	j	1c0095c0 <pos_libc_prf+0x856>

1c009ccc <pos_init_start>:
1c009ccc:	1141                	addi	sp,sp,-16
1c009cce:	c422                	sw	s0,8(sp)
1c009cd0:	1c000437          	lui	s0,0x1c000
1c009cd4:	c606                	sw	ra,12(sp)
1c009cd6:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009cda:	deefe0ef          	jal	ra,1c0082c8 <pos_soc_init>
1c009cde:	2275                	jal	1c009e8a <pos_irq_init>
1c009ce0:	2ae1                	jal	1c009eb8 <pos_soc_event_init>
1c009ce2:	2a31                	jal	1c009dfe <pos_allocs_init>
1c009ce4:	405c                	lw	a5,4(s0)
1c009ce6:	c791                	beqz	a5,1c009cf2 <pos_init_start+0x26>
1c009ce8:	0411                	addi	s0,s0,4
1c009cea:	0411                	addi	s0,s0,4
1c009cec:	9782                	jalr	a5
1c009cee:	401c                	lw	a5,0(s0)
1c009cf0:	ffed                	bnez	a5,1c009cea <pos_init_start+0x1e>
1c009cf2:	842ff0ef          	jal	ra,1c008d34 <pos_io_start>
1c009cf6:	300467f3          	csrrsi	a5,mstatus,8
1c009cfa:	40b2                	lw	ra,12(sp)
1c009cfc:	4422                	lw	s0,8(sp)
1c009cfe:	0141                	addi	sp,sp,16
1c009d00:	8082                	ret

1c009d02 <pos_init_stop>:
1c009d02:	1141                	addi	sp,sp,-16
1c009d04:	c422                	sw	s0,8(sp)
1c009d06:	1c000437          	lui	s0,0x1c000
1c009d0a:	c606                	sw	ra,12(sp)
1c009d0c:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009d10:	828ff0ef          	jal	ra,1c008d38 <pos_io_stop>
1c009d14:	405c                	lw	a5,4(s0)
1c009d16:	c791                	beqz	a5,1c009d22 <pos_init_stop+0x20>
1c009d18:	0411                	addi	s0,s0,4
1c009d1a:	0411                	addi	s0,s0,4
1c009d1c:	9782                	jalr	a5
1c009d1e:	401c                	lw	a5,0(s0)
1c009d20:	ffed                	bnez	a5,1c009d1a <pos_init_stop+0x18>
1c009d22:	40b2                	lw	ra,12(sp)
1c009d24:	4422                	lw	s0,8(sp)
1c009d26:	0141                	addi	sp,sp,16
1c009d28:	8082                	ret

1c009d2a <pos_alloc_init>:
1c009d2a:	00758793          	addi	a5,a1,7
1c009d2e:	9be1                	andi	a5,a5,-8
1c009d30:	40b785b3          	sub	a1,a5,a1
1c009d34:	c11c                	sw	a5,0(a0)
1c009d36:	8e0d                	sub	a2,a2,a1
1c009d38:	00c05663          	blez	a2,1c009d44 <pos_alloc_init+0x1a>
1c009d3c:	9a61                	andi	a2,a2,-8
1c009d3e:	c390                	sw	a2,0(a5)
1c009d40:	0007a223          	sw	zero,4(a5)
1c009d44:	8082                	ret

1c009d46 <pos_alloc>:
1c009d46:	4110                	lw	a2,0(a0)
1c009d48:	059d                	addi	a1,a1,7
1c009d4a:	99e1                	andi	a1,a1,-8
1c009d4c:	ca31                	beqz	a2,1c009da0 <pos_alloc+0x5a>
1c009d4e:	4218                	lw	a4,0(a2)
1c009d50:	425c                	lw	a5,4(a2)
1c009d52:	02b75963          	ble	a1,a4,1c009d84 <pos_alloc+0x3e>
1c009d56:	cb81                	beqz	a5,1c009d66 <pos_alloc+0x20>
1c009d58:	4398                	lw	a4,0(a5)
1c009d5a:	43d4                	lw	a3,4(a5)
1c009d5c:	00b75763          	ble	a1,a4,1c009d6a <pos_alloc+0x24>
1c009d60:	863e                	mv	a2,a5
1c009d62:	87b6                	mv	a5,a3
1c009d64:	fbf5                	bnez	a5,1c009d58 <pos_alloc+0x12>
1c009d66:	853e                	mv	a0,a5
1c009d68:	8082                	ret
1c009d6a:	00b70a63          	beq	a4,a1,1c009d7e <pos_alloc+0x38>
1c009d6e:	00b78533          	add	a0,a5,a1
1c009d72:	8f0d                	sub	a4,a4,a1
1c009d74:	c118                	sw	a4,0(a0)
1c009d76:	c154                	sw	a3,4(a0)
1c009d78:	c248                	sw	a0,4(a2)
1c009d7a:	853e                	mv	a0,a5
1c009d7c:	8082                	ret
1c009d7e:	c254                	sw	a3,4(a2)
1c009d80:	853e                	mv	a0,a5
1c009d82:	8082                	ret
1c009d84:	00e58b63          	beq	a1,a4,1c009d9a <pos_alloc+0x54>
1c009d88:	00b606b3          	add	a3,a2,a1
1c009d8c:	8f0d                	sub	a4,a4,a1
1c009d8e:	c2dc                	sw	a5,4(a3)
1c009d90:	c298                	sw	a4,0(a3)
1c009d92:	87b2                	mv	a5,a2
1c009d94:	c114                	sw	a3,0(a0)
1c009d96:	853e                	mv	a0,a5
1c009d98:	8082                	ret
1c009d9a:	c11c                	sw	a5,0(a0)
1c009d9c:	87b2                	mv	a5,a2
1c009d9e:	b7e1                	j	1c009d66 <pos_alloc+0x20>
1c009da0:	4781                	li	a5,0
1c009da2:	b7d1                	j	1c009d66 <pos_alloc+0x20>

1c009da4 <pos_free>:
1c009da4:	4118                	lw	a4,0(a0)
1c009da6:	061d                	addi	a2,a2,7
1c009da8:	9a61                	andi	a2,a2,-8
1c009daa:	c729                	beqz	a4,1c009df4 <pos_free+0x50>
1c009dac:	00b76663          	bltu	a4,a1,1c009db8 <pos_free+0x14>
1c009db0:	a0a1                	j	1c009df8 <pos_free+0x54>
1c009db2:	00b7f563          	bleu	a1,a5,1c009dbc <pos_free+0x18>
1c009db6:	873e                	mv	a4,a5
1c009db8:	435c                	lw	a5,4(a4)
1c009dba:	ffe5                	bnez	a5,1c009db2 <pos_free+0xe>
1c009dbc:	00c586b3          	add	a3,a1,a2
1c009dc0:	02d78463          	beq	a5,a3,1c009de8 <pos_free+0x44>
1c009dc4:	c190                	sw	a2,0(a1)
1c009dc6:	c1dc                	sw	a5,4(a1)
1c009dc8:	cf11                	beqz	a4,1c009de4 <pos_free+0x40>
1c009dca:	431c                	lw	a5,0(a4)
1c009dcc:	00f706b3          	add	a3,a4,a5
1c009dd0:	00d58463          	beq	a1,a3,1c009dd8 <pos_free+0x34>
1c009dd4:	c34c                	sw	a1,4(a4)
1c009dd6:	8082                	ret
1c009dd8:	4194                	lw	a3,0(a1)
1c009dda:	41d0                	lw	a2,4(a1)
1c009ddc:	97b6                	add	a5,a5,a3
1c009dde:	c31c                	sw	a5,0(a4)
1c009de0:	c350                	sw	a2,4(a4)
1c009de2:	8082                	ret
1c009de4:	c10c                	sw	a1,0(a0)
1c009de6:	8082                	ret
1c009de8:	4394                	lw	a3,0(a5)
1c009dea:	43dc                	lw	a5,4(a5)
1c009dec:	9636                	add	a2,a2,a3
1c009dee:	c190                	sw	a2,0(a1)
1c009df0:	c1dc                	sw	a5,4(a1)
1c009df2:	bfd9                	j	1c009dc8 <pos_free+0x24>
1c009df4:	4781                	li	a5,0
1c009df6:	b7d9                	j	1c009dbc <pos_free+0x18>
1c009df8:	87ba                	mv	a5,a4
1c009dfa:	4701                	li	a4,0
1c009dfc:	b7c1                	j	1c009dbc <pos_free+0x18>

1c009dfe <pos_allocs_init>:
1c009dfe:	1141                	addi	sp,sp,-16
1c009e00:	1c0065b7          	lui	a1,0x1c006
1c009e04:	c606                	sw	ra,12(sp)
1c009e06:	21458793          	addi	a5,a1,532 # 1c006214 <__l2_priv0_end>
1c009e0a:	1c008637          	lui	a2,0x1c008
1c009e0e:	04c7cc63          	blt	a5,a2,1c009e66 <pos_allocs_init+0x68>
1c009e12:	4581                	li	a1,0
1c009e14:	4601                	li	a2,0
1c009e16:	1c006537          	lui	a0,0x1c006
1c009e1a:	20850513          	addi	a0,a0,520 # 1c006208 <pos_alloc_l2>
1c009e1e:	3731                	jal	1c009d2a <pos_alloc_init>
1c009e20:	1c00a5b7          	lui	a1,0x1c00a
1c009e24:	ed058793          	addi	a5,a1,-304 # 1c009ed0 <__l2_priv1_end>
1c009e28:	1c010637          	lui	a2,0x1c010
1c009e2c:	02c7c963          	blt	a5,a2,1c009e5e <pos_allocs_init+0x60>
1c009e30:	4581                	li	a1,0
1c009e32:	4601                	li	a2,0
1c009e34:	1c006537          	lui	a0,0x1c006
1c009e38:	20c50513          	addi	a0,a0,524 # 1c00620c <pos_alloc_l2+0x4>
1c009e3c:	35fd                	jal	1c009d2a <pos_alloc_init>
1c009e3e:	1c0105b7          	lui	a1,0x1c010
1c009e42:	00058793          	mv	a5,a1
1c009e46:	40b2                	lw	ra,12(sp)
1c009e48:	1c080637          	lui	a2,0x1c080
1c009e4c:	1c006537          	lui	a0,0x1c006
1c009e50:	8e1d                	sub	a2,a2,a5
1c009e52:	00058593          	mv	a1,a1
1c009e56:	21050513          	addi	a0,a0,528 # 1c006210 <pos_alloc_l2+0x8>
1c009e5a:	0141                	addi	sp,sp,16
1c009e5c:	b5f9                	j	1c009d2a <pos_alloc_init>
1c009e5e:	8e1d                	sub	a2,a2,a5
1c009e60:	ed058593          	addi	a1,a1,-304 # 1c00fed0 <__l2_priv1_end+0x6000>
1c009e64:	bfc1                	j	1c009e34 <pos_allocs_init+0x36>
1c009e66:	8e1d                	sub	a2,a2,a5
1c009e68:	21458593          	addi	a1,a1,532
1c009e6c:	b76d                	j	1c009e16 <pos_allocs_init+0x18>

1c009e6e <pi_l2_malloc>:
1c009e6e:	85aa                	mv	a1,a0
1c009e70:	1c006537          	lui	a0,0x1c006
1c009e74:	20850513          	addi	a0,a0,520 # 1c006208 <pos_alloc_l2>
1c009e78:	b5f9                	j	1c009d46 <pos_alloc>

1c009e7a <pi_l2_free>:
1c009e7a:	862e                	mv	a2,a1
1c009e7c:	85aa                	mv	a1,a0
1c009e7e:	1c006537          	lui	a0,0x1c006
1c009e82:	20850513          	addi	a0,a0,520 # 1c006208 <pos_alloc_l2>
1c009e86:	bf39                	j	1c009da4 <pos_free>

1c009e88 <__rt_handle_illegal_instr>:
1c009e88:	8082                	ret

1c009e8a <pos_irq_init>:
1c009e8a:	1a10a737          	lui	a4,0x1a10a
1c009e8e:	f14027f3          	csrr	a5,mhartid
1c009e92:	56fd                	li	a3,-1
1c009e94:	8795                	srai	a5,a5,0x5
1c009e96:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c009e9a:	03f7f793          	andi	a5,a5,63
1c009e9e:	477d                	li	a4,31
1c009ea0:	00e78363          	beq	a5,a4,1c009ea6 <pos_irq_init+0x1c>
1c009ea4:	8082                	ret
1c009ea6:	1c0087b7          	lui	a5,0x1c008
1c009eaa:	00078793          	mv	a5,a5
1c009eae:	0017e793          	ori	a5,a5,1
1c009eb2:	30579073          	csrw	mtvec,a5
1c009eb6:	8082                	ret

1c009eb8 <pos_soc_event_init>:
1c009eb8:	1a1067b7          	lui	a5,0x1a106
1c009ebc:	577d                	li	a4,-1
1c009ebe:	c3d8                	sw	a4,4(a5)
1c009ec0:	c798                	sw	a4,8(a5)
1c009ec2:	c7d8                	sw	a4,12(a5)
1c009ec4:	cb98                	sw	a4,16(a5)
1c009ec6:	cbd8                	sw	a4,20(a5)
1c009ec8:	cf98                	sw	a4,24(a5)
1c009eca:	cfd8                	sw	a4,28(a5)
1c009ecc:	d398                	sw	a4,32(a5)
1c009ece:	8082                	ret
