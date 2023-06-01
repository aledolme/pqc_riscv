riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	65d0106f          	j	1c009e5c <__rt_handle_illegal_instr>
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
1c008084:	5d90106f          	j	1c009e5c <__rt_handle_illegal_instr>

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
1c0080e2:	3bf010ef          	jal	ra,1c009ca0 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	3db010ef          	jal	ra,1c009cd6 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	3f3000ef          	jal	ra,1c008cf4 <exit>

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
1c008156:	321000ef          	jal	ra,1c008c76 <puts>
1c00815a:	6785                	lui	a5,0x1
1c00815c:	757d                	lui	a0,0xfffff
1c00815e:	e0078793          	addi	a5,a5,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c008162:	978a                	add	a5,a5,sp
1c008164:	6a050593          	addi	a1,a0,1696 # fffff6a0 <pulp__FC+0xfffff6a1>
1c008168:	20050513          	addi	a0,a0,512
1c00816c:	95be                	add	a1,a1,a5
1c00816e:	953e                	add	a0,a0,a5
1c008170:	790000ef          	jal	ra,1c008900 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c008174:	1c000537          	lui	a0,0x1c000
1c008178:	12850513          	addi	a0,a0,296 # 1c000128 <__DTOR_END__+0x10c>
1c00817c:	2fb000ef          	jal	ra,1c008c76 <puts>
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
1c008200:	1f440413          	addi	s0,s0,500 # 1c0061f4 <pos_fll_freq>
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
1c00822c:	1f050513          	addi	a0,a0,496 # 1c0061f0 <stack>
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
1c008268:	1f050513          	addi	a0,a0,496 # 1c0061f0 <stack>
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
1c0082b4:	1f478793          	addi	a5,a5,500 # 1c0061f4 <pos_fll_freq>
1c0082b8:	0007a023          	sw	zero,0(a5)
1c0082bc:	0007a223          	sw	zero,4(a5)
1c0082c0:	1c0067b7          	lui	a5,0x1c006
1c0082c4:	1e079823          	sh	zero,496(a5) # 1c0061f0 <stack>
1c0082c8:	8082                	ret

1c0082ca <pos_soc_init>:
1c0082ca:	1141                	addi	sp,sp,-16
1c0082cc:	c606                	sw	ra,12(sp)
1c0082ce:	c422                	sw	s0,8(sp)
1c0082d0:	37c5                	jal	1c0082b0 <pos_fll_constructor>
1c0082d2:	4501                	li	a0,0
1c0082d4:	3d75                	jal	1c008190 <pos_fll_init>
1c0082d6:	1c006437          	lui	s0,0x1c006
1c0082da:	1ea42e23          	sw	a0,508(s0) # 1c0061fc <pos_freq_domains>
1c0082de:	4505                	li	a0,1
1c0082e0:	3d45                	jal	1c008190 <pos_fll_init>
1c0082e2:	1fc40413          	addi	s0,s0,508
1c0082e6:	c408                	sw	a0,8(s0)
1c0082e8:	40b2                	lw	ra,12(sp)
1c0082ea:	4422                	lw	s0,8(sp)
1c0082ec:	0141                	addi	sp,sp,16
1c0082ee:	8082                	ret

1c0082f0 <poll_done>:
1c0082f0:	1a400737          	lui	a4,0x1a400
1c0082f4:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c0082f8:	8b85                	andi	a5,a5,1
1c0082fa:	dfed                	beqz	a5,1c0082f4 <poll_done+0x4>
1c0082fc:	8082                	ret

1c0082fe <KeccakF1600_StatePermute>:
1c0082fe:	1a4007b7          	lui	a5,0x1a400
1c008302:	1141                	addi	sp,sp,-16
1c008304:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c008308:	4118                	lw	a4,0(a0)
1c00830a:	0791                	addi	a5,a5,4
1c00830c:	fee7ae23          	sw	a4,-4(a5)
1c008310:	0511                	addi	a0,a0,4
1c008312:	fed79be3          	bne	a5,a3,1c008308 <KeccakF1600_StatePermute+0xa>
1c008316:	1a4007b7          	lui	a5,0x1a400
1c00831a:	4705                	li	a4,1
1c00831c:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c008320:	1a400737          	lui	a4,0x1a400
1c008324:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c008328:	8b85                	andi	a5,a5,1
1c00832a:	dfed                	beqz	a5,1c008324 <KeccakF1600_StatePermute+0x26>
1c00832c:	c602                	sw	zero,12(sp)
1c00832e:	4732                	lw	a4,12(sp)
1c008330:	03100793          	li	a5,49
1c008334:	02e7c663          	blt	a5,a4,1c008360 <KeccakF1600_StatePermute+0x62>
1c008338:	1a400637          	lui	a2,0x1a400
1c00833c:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c008340:	03100513          	li	a0,49
1c008344:	4732                	lw	a4,12(sp)
1c008346:	47b2                	lw	a5,12(sp)
1c008348:	070a                	slli	a4,a4,0x2
1c00834a:	9732                	add	a4,a4,a2
1c00834c:	4314                	lw	a3,0(a4)
1c00834e:	4732                	lw	a4,12(sp)
1c008350:	078a                	slli	a5,a5,0x2
1c008352:	0705                	addi	a4,a4,1
1c008354:	c63a                	sw	a4,12(sp)
1c008356:	97ae                	add	a5,a5,a1
1c008358:	4732                	lw	a4,12(sp)
1c00835a:	c394                	sw	a3,0(a5)
1c00835c:	fee554e3          	ble	a4,a0,1c008344 <KeccakF1600_StatePermute+0x46>
1c008360:	0141                	addi	sp,sp,16
1c008362:	8082                	ret

1c008364 <KYBER_poly_ntt>:
1c008364:	1c000537          	lui	a0,0x1c000
1c008368:	1141                	addi	sp,sp,-16
1c00836a:	13450513          	addi	a0,a0,308 # 1c000134 <__DTOR_END__+0x118>
1c00836e:	c606                	sw	ra,12(sp)
1c008370:	c422                	sw	s0,8(sp)
1c008372:	c226                	sw	s1,4(sp)
1c008374:	c04a                	sw	s2,0(sp)
1c008376:	101000ef          	jal	ra,1c008c76 <puts>
1c00837a:	011a44b7          	lui	s1,0x11a4
1c00837e:	4785                	li	a5,1
1c008380:	10f4a423          	sw	a5,264(s1) # 11a4108 <__CTOR_LIST__-0x1ae5befc>
1c008384:	1004a423          	sw	zero,264(s1)
1c008388:	1004a423          	sw	zero,264(s1)
1c00838c:	1004a423          	sw	zero,264(s1)
1c008390:	1004a423          	sw	zero,264(s1)
1c008394:	1004a423          	sw	zero,264(s1)
1c008398:	1004a423          	sw	zero,264(s1)
1c00839c:	1004a423          	sw	zero,264(s1)
1c0083a0:	1004a423          	sw	zero,264(s1)
1c0083a4:	1004a423          	sw	zero,264(s1)
1c0083a8:	1c000537          	lui	a0,0x1c000
1c0083ac:	14850513          	addi	a0,a0,328 # 1c000148 <__DTOR_END__+0x12c>
1c0083b0:	0c7000ef          	jal	ra,1c008c76 <puts>
1c0083b4:	4401                	li	s0,0
1c0083b6:	1004a423          	sw	zero,264(s1)
1c0083ba:	1c000937          	lui	s2,0x1c000
1c0083be:	10000493          	li	s1,256
1c0083c2:	0405                	addi	s0,s0,1
1c0083c4:	85a2                	mv	a1,s0
1c0083c6:	16490513          	addi	a0,s2,356 # 1c000164 <__DTOR_END__+0x148>
1c0083ca:	147000ef          	jal	ra,1c008d10 <printf>
1c0083ce:	fe941ae3          	bne	s0,s1,1c0083c2 <KYBER_poly_ntt+0x5e>
1c0083d2:	1c000537          	lui	a0,0x1c000
1c0083d6:	16850513          	addi	a0,a0,360 # 1c000168 <__DTOR_END__+0x14c>
1c0083da:	09d000ef          	jal	ra,1c008c76 <puts>
1c0083de:	011a47b7          	lui	a5,0x11a4
1c0083e2:	08000713          	li	a4,128
1c0083e6:	10e7a423          	sw	a4,264(a5) # 11a4108 <__CTOR_LIST__-0x1ae5befc>
1c0083ea:	4422                	lw	s0,8(sp)
1c0083ec:	40b2                	lw	ra,12(sp)
1c0083ee:	4492                	lw	s1,4(sp)
1c0083f0:	4902                	lw	s2,0(sp)
1c0083f2:	0141                	addi	sp,sp,16
1c0083f4:	bdf5                	j	1c0082f0 <poll_done>

1c0083f6 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c0083f6:	1141                	addi	sp,sp,-16
1c0083f8:	55555337          	lui	t1,0x55555
1c0083fc:	68c1                	lui	a7,0x10
1c0083fe:	c622                	sw	s0,12(sp)
1c008400:	c426                	sw	s1,8(sp)
1c008402:	c24a                	sw	s2,4(sp)
1c008404:	20050e13          	addi	t3,a0,512
1c008408:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00840c:	18fd                	addi	a7,a7,-1
1c00840e:	419c                	lw	a5,0(a1)
1c008410:	0541                	addi	a0,a0,16
1c008412:	0017d713          	srli	a4,a5,0x1
1c008416:	00677733          	and	a4,a4,t1
1c00841a:	0067f7b3          	and	a5,a5,t1
1c00841e:	97ba                	add	a5,a5,a4
1c008420:	0027d913          	srli	s2,a5,0x2
1c008424:	0087d693          	srli	a3,a5,0x8
1c008428:	00a7d493          	srli	s1,a5,0xa
1c00842c:	0107d713          	srli	a4,a5,0x10
1c008430:	0127d413          	srli	s0,a5,0x12
1c008434:	0037f613          	andi	a2,a5,3
1c008438:	00397913          	andi	s2,s2,3
1c00843c:	8a8d                	andi	a3,a3,3
1c00843e:	888d                	andi	s1,s1,3
1c008440:	8b0d                	andi	a4,a4,3
1c008442:	880d                	andi	s0,s0,3
1c008444:	0047df13          	srli	t5,a5,0x4
1c008448:	0067d393          	srli	t2,a5,0x6
1c00844c:	00c7de93          	srli	t4,a5,0xc
1c008450:	00e7d293          	srli	t0,a5,0xe
1c008454:	0147d813          	srli	a6,a5,0x14
1c008458:	0167df93          	srli	t6,a5,0x16
1c00845c:	41260633          	sub	a2,a2,s2
1c008460:	8e85                	sub	a3,a3,s1
1c008462:	8f01                	sub	a4,a4,s0
1c008464:	0033f393          	andi	t2,t2,3
1c008468:	0032f293          	andi	t0,t0,3
1c00846c:	003fff93          	andi	t6,t6,3
1c008470:	003f7f13          	andi	t5,t5,3
1c008474:	003efe93          	andi	t4,t4,3
1c008478:	00387813          	andi	a6,a6,3
1c00847c:	0642                	slli	a2,a2,0x10
1c00847e:	06c2                	slli	a3,a3,0x10
1c008480:	0742                	slli	a4,a4,0x10
1c008482:	407f0f33          	sub	t5,t5,t2
1c008486:	405e8eb3          	sub	t4,t4,t0
1c00848a:	41f80833          	sub	a6,a6,t6
1c00848e:	0187d293          	srli	t0,a5,0x18
1c008492:	01a7d393          	srli	t2,a5,0x1a
1c008496:	01c7df93          	srli	t6,a5,0x1c
1c00849a:	8241                	srli	a2,a2,0x10
1c00849c:	82c1                	srli	a3,a3,0x10
1c00849e:	8341                	srli	a4,a4,0x10
1c0084a0:	0842                	slli	a6,a6,0x10
1c0084a2:	0f42                	slli	t5,t5,0x10
1c0084a4:	01167633          	and	a2,a2,a7
1c0084a8:	0ec2                	slli	t4,t4,0x10
1c0084aa:	0116f6b3          	and	a3,a3,a7
1c0084ae:	01177733          	and	a4,a4,a7
1c0084b2:	0032f293          	andi	t0,t0,3
1c0084b6:	0033f393          	andi	t2,t2,3
1c0084ba:	003fff93          	andi	t6,t6,3
1c0084be:	83f9                	srli	a5,a5,0x1e
1c0084c0:	01076733          	or	a4,a4,a6
1c0084c4:	01e66633          	or	a2,a2,t5
1c0084c8:	01d6e6b3          	or	a3,a3,t4
1c0084cc:	40728833          	sub	a6,t0,t2
1c0084d0:	40ff87b3          	sub	a5,t6,a5
1c0084d4:	fec52823          	sw	a2,-16(a0)
1c0084d8:	fed52a23          	sw	a3,-12(a0)
1c0084dc:	fee52c23          	sw	a4,-8(a0)
1c0084e0:	ff051e23          	sh	a6,-4(a0)
1c0084e4:	fef51f23          	sh	a5,-2(a0)
1c0084e8:	0591                	addi	a1,a1,4
1c0084ea:	f3c512e3          	bne	a0,t3,1c00840e <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c0084ee:	4432                	lw	s0,12(sp)
1c0084f0:	44a2                	lw	s1,8(sp)
1c0084f2:	4912                	lw	s2,4(sp)
1c0084f4:	0141                	addi	sp,sp,16
1c0084f6:	8082                	ret

1c0084f8 <keccak_absorb.constprop.7>:
1c0084f8:	7151                	addi	sp,sp,-240
1c0084fa:	d3a6                	sw	s1,228(sp)
1c0084fc:	cfce                	sw	s3,220(sp)
1c0084fe:	cdd2                	sw	s4,216(sp)
1c008500:	cbd6                	sw	s5,212(sp)
1c008502:	d786                	sw	ra,236(sp)
1c008504:	d5a2                	sw	s0,232(sp)
1c008506:	d1ca                	sw	s2,224(sp)
1c008508:	89aa                	mv	s3,a0
1c00850a:	8a32                	mv	s4,a2
1c00850c:	84b6                	mv	s1,a3
1c00850e:	8aaa                	mv	s5,a0
1c008510:	0c850713          	addi	a4,a0,200
1c008514:	87aa                	mv	a5,a0
1c008516:	4601                	li	a2,0
1c008518:	4681                	li	a3,0
1c00851a:	c390                	sw	a2,0(a5)
1c00851c:	c3d4                	sw	a3,4(a5)
1c00851e:	07a1                	addi	a5,a5,8
1c008520:	fef71be3          	bne	a4,a5,1c008516 <keccak_absorb.constprop.7+0x1e>
1c008524:	08700793          	li	a5,135
1c008528:	0747fb63          	bleu	s4,a5,1c00859e <keccak_absorb.constprop.7+0xa6>
1c00852c:	08700413          	li	s0,135
1c008530:	08858913          	addi	s2,a1,136
1c008534:	874e                	mv	a4,s3
1c008536:	0015c783          	lbu	a5,1(a1)
1c00853a:	0025c603          	lbu	a2,2(a1)
1c00853e:	0055c883          	lbu	a7,5(a1)
1c008542:	0045c303          	lbu	t1,4(a1)
1c008546:	0065c803          	lbu	a6,6(a1)
1c00854a:	0005ce03          	lbu	t3,0(a1)
1c00854e:	0035c503          	lbu	a0,3(a1)
1c008552:	0075c683          	lbu	a3,7(a1)
1c008556:	0642                	slli	a2,a2,0x10
1c008558:	07a2                	slli	a5,a5,0x8
1c00855a:	08a2                	slli	a7,a7,0x8
1c00855c:	8fd1                	or	a5,a5,a2
1c00855e:	0068e8b3          	or	a7,a7,t1
1c008562:	0842                	slli	a6,a6,0x10
1c008564:	00072303          	lw	t1,0(a4)
1c008568:	4350                	lw	a2,4(a4)
1c00856a:	01c7e7b3          	or	a5,a5,t3
1c00856e:	0562                	slli	a0,a0,0x18
1c008570:	01186833          	or	a6,a6,a7
1c008574:	06e2                	slli	a3,a3,0x18
1c008576:	8fc9                	or	a5,a5,a0
1c008578:	0106e6b3          	or	a3,a3,a6
1c00857c:	00f347b3          	xor	a5,t1,a5
1c008580:	8eb1                	xor	a3,a3,a2
1c008582:	c31c                	sw	a5,0(a4)
1c008584:	c354                	sw	a3,4(a4)
1c008586:	05a1                	addi	a1,a1,8
1c008588:	0721                	addi	a4,a4,8
1c00858a:	fab916e3          	bne	s2,a1,1c008536 <keccak_absorb.constprop.7+0x3e>
1c00858e:	85ce                	mv	a1,s3
1c008590:	854e                	mv	a0,s3
1c008592:	33b5                	jal	1c0082fe <KeccakF1600_StatePermute>
1c008594:	f78a0a13          	addi	s4,s4,-136
1c008598:	85ca                	mv	a1,s2
1c00859a:	f9446be3          	bltu	s0,s4,1c008530 <keccak_absorb.constprop.7+0x38>
1c00859e:	003c                	addi	a5,sp,8
1c0085a0:	0918                	addi	a4,sp,144
1c0085a2:	883e                	mv	a6,a5
1c0085a4:	4681                	li	a3,0
1c0085a6:	00d82023          	sw	a3,0(a6)
1c0085aa:	0811                	addi	a6,a6,4
1c0085ac:	ff071ce3          	bne	a4,a6,1c0085a4 <keccak_absorb.constprop.7+0xac>
1c0085b0:	060a0463          	beqz	s4,1c008618 <keccak_absorb.constprop.7+0x120>
1c0085b4:	fffa0713          	addi	a4,s4,-1
1c0085b8:	4689                	li	a3,2
1c0085ba:	0ee6f163          	bleu	a4,a3,1c00869c <keccak_absorb.constprop.7+0x1a4>
1c0085be:	002a5893          	srli	a7,s4,0x2
1c0085c2:	862e                	mv	a2,a1
1c0085c4:	86be                	mv	a3,a5
1c0085c6:	4701                	li	a4,0
1c0085c8:	4208                	lw	a0,0(a2)
1c0085ca:	0705                	addi	a4,a4,1
1c0085cc:	c288                	sw	a0,0(a3)
1c0085ce:	0611                	addi	a2,a2,4
1c0085d0:	0691                	addi	a3,a3,4
1c0085d2:	ff176be3          	bltu	a4,a7,1c0085c8 <keccak_absorb.constprop.7+0xd0>
1c0085d6:	ffca7713          	andi	a4,s4,-4
1c0085da:	02ea0f63          	beq	s4,a4,1c008618 <keccak_absorb.constprop.7+0x120>
1c0085de:	00e586b3          	add	a3,a1,a4
1c0085e2:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c0085e6:	0988                	addi	a0,sp,208
1c0085e8:	00e506b3          	add	a3,a0,a4
1c0085ec:	f2c68c23          	sb	a2,-200(a3)
1c0085f0:	00170693          	addi	a3,a4,1
1c0085f4:	0346f263          	bleu	s4,a3,1c008618 <keccak_absorb.constprop.7+0x120>
1c0085f8:	00d58633          	add	a2,a1,a3
1c0085fc:	00064603          	lbu	a2,0(a2)
1c008600:	96aa                	add	a3,a3,a0
1c008602:	f2c68c23          	sb	a2,-200(a3)
1c008606:	0709                	addi	a4,a4,2
1c008608:	01477863          	bleu	s4,a4,1c008618 <keccak_absorb.constprop.7+0x120>
1c00860c:	95ba                	add	a1,a1,a4
1c00860e:	0005c683          	lbu	a3,0(a1)
1c008612:	972a                	add	a4,a4,a0
1c008614:	f2d70c23          	sb	a3,-200(a4)
1c008618:	0990                	addi	a2,sp,208
1c00861a:	9a32                	add	s4,s4,a2
1c00861c:	f29a0c23          	sb	s1,-200(s4)
1c008620:	08f14703          	lbu	a4,143(sp)
1c008624:	f8076713          	ori	a4,a4,-128
1c008628:	08e107a3          	sb	a4,143(sp)
1c00862c:	0017c703          	lbu	a4,1(a5)
1c008630:	0027c883          	lbu	a7,2(a5)
1c008634:	0057c503          	lbu	a0,5(a5)
1c008638:	0047c303          	lbu	t1,4(a5)
1c00863c:	0067c583          	lbu	a1,6(a5)
1c008640:	0007ce03          	lbu	t3,0(a5)
1c008644:	0037c603          	lbu	a2,3(a5)
1c008648:	0077c683          	lbu	a3,7(a5)
1c00864c:	08c2                	slli	a7,a7,0x10
1c00864e:	0722                	slli	a4,a4,0x8
1c008650:	0522                	slli	a0,a0,0x8
1c008652:	01176733          	or	a4,a4,a7
1c008656:	00656533          	or	a0,a0,t1
1c00865a:	05c2                	slli	a1,a1,0x10
1c00865c:	000aa303          	lw	t1,0(s5)
1c008660:	004aa883          	lw	a7,4(s5)
1c008664:	01c76733          	or	a4,a4,t3
1c008668:	0662                	slli	a2,a2,0x18
1c00866a:	8dc9                	or	a1,a1,a0
1c00866c:	06e2                	slli	a3,a3,0x18
1c00866e:	8f51                	or	a4,a4,a2
1c008670:	8ecd                	or	a3,a3,a1
1c008672:	00e34733          	xor	a4,t1,a4
1c008676:	00d8c6b3          	xor	a3,a7,a3
1c00867a:	00eaa023          	sw	a4,0(s5)
1c00867e:	00daa223          	sw	a3,4(s5)
1c008682:	07a1                	addi	a5,a5,8
1c008684:	0aa1                	addi	s5,s5,8
1c008686:	faf813e3          	bne	a6,a5,1c00862c <keccak_absorb.constprop.7+0x134>
1c00868a:	50be                	lw	ra,236(sp)
1c00868c:	542e                	lw	s0,232(sp)
1c00868e:	549e                	lw	s1,228(sp)
1c008690:	590e                	lw	s2,224(sp)
1c008692:	49fe                	lw	s3,220(sp)
1c008694:	4a6e                	lw	s4,216(sp)
1c008696:	4ade                	lw	s5,212(sp)
1c008698:	616d                	addi	sp,sp,240
1c00869a:	8082                	ret
1c00869c:	4701                	li	a4,0
1c00869e:	b781                	j	1c0085de <keccak_absorb.constprop.7+0xe6>

1c0086a0 <shake256>:
1c0086a0:	7131                	addi	sp,sp,-192
1c0086a2:	db26                	sw	s1,180(sp)
1c0086a4:	d94a                	sw	s2,176(sp)
1c0086a6:	08800493          	li	s1,136
1c0086aa:	892a                	mv	s2,a0
1c0086ac:	0c800513          	li	a0,200
1c0086b0:	dd22                	sw	s0,184(sp)
1c0086b2:	d74e                	sw	s3,172(sp)
1c0086b4:	d552                	sw	s4,168(sp)
1c0086b6:	df06                	sw	ra,188(sp)
1c0086b8:	d356                	sw	s5,164(sp)
1c0086ba:	d15a                	sw	s6,160(sp)
1c0086bc:	cf5e                	sw	s7,156(sp)
1c0086be:	cd62                	sw	s8,152(sp)
1c0086c0:	cb66                	sw	s9,148(sp)
1c0086c2:	89ae                	mv	s3,a1
1c0086c4:	8432                	mv	s0,a2
1c0086c6:	8a36                	mv	s4,a3
1c0086c8:	0295d4b3          	divu	s1,a1,s1
1c0086cc:	776010ef          	jal	ra,1c009e42 <pi_l2_malloc>
1c0086d0:	20050163          	beqz	a0,1c0088d2 <shake256+0x232>
1c0086d4:	46fd                	li	a3,31
1c0086d6:	8652                	mv	a2,s4
1c0086d8:	85a2                	mv	a1,s0
1c0086da:	8b2a                	mv	s6,a0
1c0086dc:	3d31                	jal	1c0084f8 <keccak_absorb.constprop.7>
1c0086de:	c4dd                	beqz	s1,1c00878c <shake256+0xec>
1c0086e0:	00449713          	slli	a4,s1,0x4
1c0086e4:	00970433          	add	s0,a4,s1
1c0086e8:	040e                	slli	s0,s0,0x3
1c0086ea:	7bc1                	lui	s7,0xffff0
1c0086ec:	ff010ab7          	lui	s5,0xff010
1c0086f0:	01000a37          	lui	s4,0x1000
1c0086f4:	412b0c33          	sub	s8,s6,s2
1c0086f8:	944a                	add	s0,s0,s2
1c0086fa:	8cca                	mv	s9,s2
1c0086fc:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c008700:	1afd                	addi	s5,s5,-1
1c008702:	1a7d                	addi	s4,s4,-1
1c008704:	85da                	mv	a1,s6
1c008706:	855a                	mv	a0,s6
1c008708:	3edd                	jal	1c0082fe <KeccakF1600_StatePermute>
1c00870a:	8666                	mv	a2,s9
1c00870c:	088c8593          	addi	a1,s9,136
1c008710:	00cc07b3          	add	a5,s8,a2
1c008714:	4388                	lw	a0,0(a5)
1c008716:	43d4                	lw	a3,4(a5)
1c008718:	00855893          	srli	a7,a0,0x8
1c00871c:	0086d813          	srli	a6,a3,0x8
1c008720:	0ff57713          	andi	a4,a0,255
1c008724:	0ff6f793          	andi	a5,a3,255
1c008728:	0ff8f893          	andi	a7,a7,255
1c00872c:	0ff87813          	andi	a6,a6,255
1c008730:	08a2                	slli	a7,a7,0x8
1c008732:	0822                	slli	a6,a6,0x8
1c008734:	01777733          	and	a4,a4,s7
1c008738:	0177f7b3          	and	a5,a5,s7
1c00873c:	01176733          	or	a4,a4,a7
1c008740:	0107e7b3          	or	a5,a5,a6
1c008744:	00ff08b7          	lui	a7,0xff0
1c008748:	00ff0837          	lui	a6,0xff0
1c00874c:	011578b3          	and	a7,a0,a7
1c008750:	0106f833          	and	a6,a3,a6
1c008754:	01577733          	and	a4,a4,s5
1c008758:	0157f7b3          	and	a5,a5,s5
1c00875c:	01176733          	or	a4,a4,a7
1c008760:	8161                	srli	a0,a0,0x18
1c008762:	0107e7b3          	or	a5,a5,a6
1c008766:	82e1                	srli	a3,a3,0x18
1c008768:	0562                	slli	a0,a0,0x18
1c00876a:	01477733          	and	a4,a4,s4
1c00876e:	06e2                	slli	a3,a3,0x18
1c008770:	0147f7b3          	and	a5,a5,s4
1c008774:	8f49                	or	a4,a4,a0
1c008776:	8fd5                	or	a5,a5,a3
1c008778:	c218                	sw	a4,0(a2)
1c00877a:	c25c                	sw	a5,4(a2)
1c00877c:	0621                	addi	a2,a2,8
1c00877e:	f8c599e3          	bne	a1,a2,1c008710 <shake256+0x70>
1c008782:	8cae                	mv	s9,a1
1c008784:	f78c0c13          	addi	s8,s8,-136
1c008788:	f6b41ee3          	bne	s0,a1,1c008704 <shake256+0x64>
1c00878c:	08800793          	li	a5,136
1c008790:	02f9f9b3          	remu	s3,s3,a5
1c008794:	02099363          	bnez	s3,1c0087ba <shake256+0x11a>
1c008798:	546a                	lw	s0,184(sp)
1c00879a:	50fa                	lw	ra,188(sp)
1c00879c:	54da                	lw	s1,180(sp)
1c00879e:	594a                	lw	s2,176(sp)
1c0087a0:	59ba                	lw	s3,172(sp)
1c0087a2:	5a2a                	lw	s4,168(sp)
1c0087a4:	5a9a                	lw	s5,164(sp)
1c0087a6:	4bfa                	lw	s7,156(sp)
1c0087a8:	4c6a                	lw	s8,152(sp)
1c0087aa:	4cda                	lw	s9,148(sp)
1c0087ac:	855a                	mv	a0,s6
1c0087ae:	5b0a                	lw	s6,160(sp)
1c0087b0:	0c800593          	li	a1,200
1c0087b4:	6129                	addi	sp,sp,192
1c0087b6:	6980106f          	j	1c009e4e <pi_l2_free>
1c0087ba:	85da                	mv	a1,s6
1c0087bc:	855a                	mv	a0,s6
1c0087be:	3681                	jal	1c0082fe <KeccakF1600_StatePermute>
1c0087c0:	002c                	addi	a1,sp,8
1c0087c2:	78c1                	lui	a7,0xffff0
1c0087c4:	ff010837          	lui	a6,0xff010
1c0087c8:	01000537          	lui	a0,0x1000
1c0087cc:	09010e13          	addi	t3,sp,144
1c0087d0:	862e                	mv	a2,a1
1c0087d2:	40bb0333          	sub	t1,s6,a1
1c0087d6:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c0087da:	187d                	addi	a6,a6,-1
1c0087dc:	157d                	addi	a0,a0,-1
1c0087de:	00c307b3          	add	a5,t1,a2
1c0087e2:	0007ae83          	lw	t4,0(a5)
1c0087e6:	43d4                	lw	a3,4(a5)
1c0087e8:	008edf93          	srli	t6,t4,0x8
1c0087ec:	0086df13          	srli	t5,a3,0x8
1c0087f0:	0ffef713          	andi	a4,t4,255
1c0087f4:	0ff6f793          	andi	a5,a3,255
1c0087f8:	0fffff93          	andi	t6,t6,255
1c0087fc:	0fff7f13          	andi	t5,t5,255
1c008800:	0fa2                	slli	t6,t6,0x8
1c008802:	0f22                	slli	t5,t5,0x8
1c008804:	01177733          	and	a4,a4,a7
1c008808:	0117f7b3          	and	a5,a5,a7
1c00880c:	01f76733          	or	a4,a4,t6
1c008810:	01e7e7b3          	or	a5,a5,t5
1c008814:	00ff0fb7          	lui	t6,0xff0
1c008818:	00ff0f37          	lui	t5,0xff0
1c00881c:	01feffb3          	and	t6,t4,t6
1c008820:	01e6ff33          	and	t5,a3,t5
1c008824:	01077733          	and	a4,a4,a6
1c008828:	0107f7b3          	and	a5,a5,a6
1c00882c:	01f76733          	or	a4,a4,t6
1c008830:	018ede93          	srli	t4,t4,0x18
1c008834:	01e7e7b3          	or	a5,a5,t5
1c008838:	82e1                	srli	a3,a3,0x18
1c00883a:	0ee2                	slli	t4,t4,0x18
1c00883c:	8f69                	and	a4,a4,a0
1c00883e:	06e2                	slli	a3,a3,0x18
1c008840:	8fe9                	and	a5,a5,a0
1c008842:	01d76733          	or	a4,a4,t4
1c008846:	8fd5                	or	a5,a5,a3
1c008848:	c218                	sw	a4,0(a2)
1c00884a:	c25c                	sw	a5,4(a2)
1c00884c:	0621                	addi	a2,a2,8
1c00884e:	f8ce18e3          	bne	t3,a2,1c0087de <shake256+0x13e>
1c008852:	fff98793          	addi	a5,s3,-1
1c008856:	4709                	li	a4,2
1c008858:	06f77963          	bleu	a5,a4,1c0088ca <shake256+0x22a>
1c00885c:	00449713          	slli	a4,s1,0x4
1c008860:	009707b3          	add	a5,a4,s1
1c008864:	078e                	slli	a5,a5,0x3
1c008866:	0029d513          	srli	a0,s3,0x2
1c00886a:	97ca                	add	a5,a5,s2
1c00886c:	4681                	li	a3,0
1c00886e:	4190                	lw	a2,0(a1)
1c008870:	0685                	addi	a3,a3,1
1c008872:	c390                	sw	a2,0(a5)
1c008874:	0591                	addi	a1,a1,4
1c008876:	0791                	addi	a5,a5,4
1c008878:	fea6ebe3          	bltu	a3,a0,1c00886e <shake256+0x1ce>
1c00887c:	ffc9f693          	andi	a3,s3,-4
1c008880:	f0d98ce3          	beq	s3,a3,1c008798 <shake256+0xf8>
1c008884:	009707b3          	add	a5,a4,s1
1c008888:	090c                	addi	a1,sp,144
1c00888a:	00d58733          	add	a4,a1,a3
1c00888e:	078e                	slli	a5,a5,0x3
1c008890:	f7874603          	lbu	a2,-136(a4)
1c008894:	97ca                	add	a5,a5,s2
1c008896:	00d78733          	add	a4,a5,a3
1c00889a:	00c70023          	sb	a2,0(a4)
1c00889e:	00168713          	addi	a4,a3,1
1c0088a2:	ef377be3          	bleu	s3,a4,1c008798 <shake256+0xf8>
1c0088a6:	00e58633          	add	a2,a1,a4
1c0088aa:	f7864603          	lbu	a2,-136(a2)
1c0088ae:	973e                	add	a4,a4,a5
1c0088b0:	00c70023          	sb	a2,0(a4)
1c0088b4:	0689                	addi	a3,a3,2
1c0088b6:	ef36f1e3          	bleu	s3,a3,1c008798 <shake256+0xf8>
1c0088ba:	00d58733          	add	a4,a1,a3
1c0088be:	f7874703          	lbu	a4,-136(a4)
1c0088c2:	97b6                	add	a5,a5,a3
1c0088c4:	00e78023          	sb	a4,0(a5)
1c0088c8:	bdc1                	j	1c008798 <shake256+0xf8>
1c0088ca:	4681                	li	a3,0
1c0088cc:	00449713          	slli	a4,s1,0x4
1c0088d0:	bf55                	j	1c008884 <shake256+0x1e4>
1c0088d2:	06f00513          	li	a0,111
1c0088d6:	2939                	jal	1c008cf4 <exit>

1c0088d8 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c0088d8:	9b010113          	addi	sp,sp,-1616
1c0088dc:	100c                	addi	a1,sp,32
1c0088de:	4601                	li	a2,0
1c0088e0:	0088                	addi	a0,sp,64
1c0088e2:	64112623          	sw	ra,1612(sp)
1c0088e6:	2025                	jal	1c00890e <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0088e8:	1c000537          	lui	a0,0x1c000
1c0088ec:	17c50513          	addi	a0,a0,380 # 1c00017c <__DTOR_END__+0x160>
1c0088f0:	2659                	jal	1c008c76 <puts>
1c0088f2:	0088                	addi	a0,sp,64
1c0088f4:	2835                	jal	1c008930 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c0088f6:	64c12083          	lw	ra,1612(sp)
1c0088fa:	65010113          	addi	sp,sp,1616
1c0088fe:	8082                	ret

1c008900 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c008900:	1141                	addi	sp,sp,-16
1c008902:	c606                	sw	ra,12(sp)
1c008904:	3fd1                	jal	1c0088d8 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c008906:	40b2                	lw	ra,12(sp)
1c008908:	4501                	li	a0,0
1c00890a:	0141                	addi	sp,sp,16
1c00890c:	8082                	ret

1c00890e <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c00890e:	7175                	addi	sp,sp,-144
1c008910:	c522                	sw	s0,136(sp)
1c008912:	86b2                	mv	a3,a2
1c008914:	842a                	mv	s0,a0
1c008916:	862e                	mv	a2,a1
1c008918:	850a                	mv	a0,sp
1c00891a:	08000593          	li	a1,128
1c00891e:	c706                	sw	ra,140(sp)
1c008920:	283d                	jal	1c00895e <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c008922:	858a                	mv	a1,sp
1c008924:	8522                	mv	a0,s0
1c008926:	3cc1                	jal	1c0083f6 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c008928:	40ba                	lw	ra,140(sp)
1c00892a:	442a                	lw	s0,136(sp)
1c00892c:	6149                	addi	sp,sp,144
1c00892e:	8082                	ret

1c008930 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c008930:	1c000537          	lui	a0,0x1c000
1c008934:	bf010113          	addi	sp,sp,-1040
1c008938:	19050513          	addi	a0,a0,400 # 1c000190 <__DTOR_END__+0x174>
1c00893c:	40112623          	sw	ra,1036(sp)
1c008940:	2e1d                	jal	1c008c76 <puts>
1c008942:	40011583          	lh	a1,1024(sp)
1c008946:	20011503          	lh	a0,512(sp)
1c00894a:	3c29                	jal	1c008364 <KYBER_poly_ntt>
1c00894c:	40c12083          	lw	ra,1036(sp)
1c008950:	1c000537          	lui	a0,0x1c000
1c008954:	1b050513          	addi	a0,a0,432 # 1c0001b0 <__DTOR_END__+0x194>
1c008958:	41010113          	addi	sp,sp,1040
1c00895c:	ae29                	j	1c008c76 <puts>

1c00895e <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00895e:	7139                	addi	sp,sp,-64
1c008960:	87b2                	mv	a5,a2
1c008962:	da26                	sw	s1,52(sp)
1c008964:	d84a                	sw	s2,48(sp)
1c008966:	84aa                	mv	s1,a0
1c008968:	892e                	mv	s2,a1
1c00896a:	02000613          	li	a2,32
1c00896e:	85be                	mv	a1,a5
1c008970:	0068                	addi	a0,sp,12
1c008972:	de06                	sw	ra,60(sp)
1c008974:	dc22                	sw	s0,56(sp)
1c008976:	8436                	mv	s0,a3
1c008978:	2091                	jal	1c0089bc <memcpy>
1c00897a:	0070                	addi	a2,sp,12
1c00897c:	85ca                	mv	a1,s2
1c00897e:	8526                	mv	a0,s1
1c008980:	02100693          	li	a3,33
1c008984:	02810623          	sb	s0,44(sp)
1c008988:	3b21                	jal	1c0086a0 <shake256>
1c00898a:	50f2                	lw	ra,60(sp)
1c00898c:	5462                	lw	s0,56(sp)
1c00898e:	54d2                	lw	s1,52(sp)
1c008990:	5942                	lw	s2,48(sp)
1c008992:	6121                	addi	sp,sp,64
1c008994:	8082                	ret

1c008996 <pos_wait_forever>:
1c008996:	f14027f3          	csrr	a5,mhartid
1c00899a:	8795                	srai	a5,a5,0x5
1c00899c:	03f7f793          	andi	a5,a5,63
1c0089a0:	477d                	li	a4,31
1c0089a2:	00e78363          	beq	a5,a4,1c0089a8 <pos_wait_forever+0x12>
1c0089a6:	a001                	j	1c0089a6 <pos_wait_forever+0x10>
1c0089a8:	1a10a7b7          	lui	a5,0x1a10a
1c0089ac:	577d                	li	a4,-1
1c0089ae:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c0089b2:	10500073          	wfi
1c0089b6:	10500073          	wfi
1c0089ba:	bfe5                	j	1c0089b2 <pos_wait_forever+0x1c>

1c0089bc <memcpy>:
1c0089bc:	00b567b3          	or	a5,a0,a1
1c0089c0:	8b8d                	andi	a5,a5,3
1c0089c2:	10078f63          	beqz	a5,1c008ae0 <memcpy+0x124>
1c0089c6:	14060063          	beqz	a2,1c008b06 <memcpy+0x14a>
1c0089ca:	00458793          	addi	a5,a1,4
1c0089ce:	00450693          	addi	a3,a0,4
1c0089d2:	00f537b3          	sltu	a5,a0,a5
1c0089d6:	00d5b6b3          	sltu	a3,a1,a3
1c0089da:	0017c793          	xori	a5,a5,1
1c0089de:	0016c693          	xori	a3,a3,1
1c0089e2:	873e                	mv	a4,a5
1c0089e4:	87b6                	mv	a5,a3
1c0089e6:	8fd9                	or	a5,a5,a4
1c0089e8:	0ff7f793          	andi	a5,a5,255
1c0089ec:	cff9                	beqz	a5,1c008aca <memcpy+0x10e>
1c0089ee:	00863793          	sltiu	a5,a2,8
1c0089f2:	0017c793          	xori	a5,a5,1
1c0089f6:	0ff7f793          	andi	a5,a5,255
1c0089fa:	cbe1                	beqz	a5,1c008aca <memcpy+0x10e>
1c0089fc:	40b007b3          	neg	a5,a1
1c008a00:	8b8d                	andi	a5,a5,3
1c008a02:	fff60313          	addi	t1,a2,-1
1c008a06:	cfe5                	beqz	a5,1c008afe <memcpy+0x142>
1c008a08:	0005c683          	lbu	a3,0(a1)
1c008a0c:	4705                	li	a4,1
1c008a0e:	00d50023          	sb	a3,0(a0)
1c008a12:	00158893          	addi	a7,a1,1
1c008a16:	00150813          	addi	a6,a0,1
1c008a1a:	02e78963          	beq	a5,a4,1c008a4c <memcpy+0x90>
1c008a1e:	0015c683          	lbu	a3,1(a1)
1c008a22:	470d                	li	a4,3
1c008a24:	00d500a3          	sb	a3,1(a0)
1c008a28:	00258893          	addi	a7,a1,2
1c008a2c:	00250813          	addi	a6,a0,2
1c008a30:	ffe60313          	addi	t1,a2,-2
1c008a34:	00e79c63          	bne	a5,a4,1c008a4c <memcpy+0x90>
1c008a38:	0025c703          	lbu	a4,2(a1)
1c008a3c:	00358893          	addi	a7,a1,3
1c008a40:	00350813          	addi	a6,a0,3
1c008a44:	00e50123          	sb	a4,2(a0)
1c008a48:	ffd60313          	addi	t1,a2,-3
1c008a4c:	8e1d                	sub	a2,a2,a5
1c008a4e:	95be                	add	a1,a1,a5
1c008a50:	00265e13          	srli	t3,a2,0x2
1c008a54:	97aa                	add	a5,a5,a0
1c008a56:	4701                	li	a4,0
1c008a58:	4194                	lw	a3,0(a1)
1c008a5a:	0705                	addi	a4,a4,1
1c008a5c:	c394                	sw	a3,0(a5)
1c008a5e:	0591                	addi	a1,a1,4
1c008a60:	0791                	addi	a5,a5,4
1c008a62:	ffc76be3          	bltu	a4,t3,1c008a58 <memcpy+0x9c>
1c008a66:	ffc67593          	andi	a1,a2,-4
1c008a6a:	40b306b3          	sub	a3,t1,a1
1c008a6e:	00b807b3          	add	a5,a6,a1
1c008a72:	00b88733          	add	a4,a7,a1
1c008a76:	06b60463          	beq	a2,a1,1c008ade <memcpy+0x122>
1c008a7a:	00074583          	lbu	a1,0(a4)
1c008a7e:	fff68613          	addi	a2,a3,-1
1c008a82:	00b78023          	sb	a1,0(a5)
1c008a86:	ce21                	beqz	a2,1c008ade <memcpy+0x122>
1c008a88:	00174583          	lbu	a1,1(a4)
1c008a8c:	ffe68613          	addi	a2,a3,-2
1c008a90:	00b780a3          	sb	a1,1(a5)
1c008a94:	c629                	beqz	a2,1c008ade <memcpy+0x122>
1c008a96:	00274583          	lbu	a1,2(a4)
1c008a9a:	ffd68613          	addi	a2,a3,-3
1c008a9e:	00b78123          	sb	a1,2(a5)
1c008aa2:	ce15                	beqz	a2,1c008ade <memcpy+0x122>
1c008aa4:	00374583          	lbu	a1,3(a4)
1c008aa8:	ffc68613          	addi	a2,a3,-4
1c008aac:	00b781a3          	sb	a1,3(a5)
1c008ab0:	c61d                	beqz	a2,1c008ade <memcpy+0x122>
1c008ab2:	00474583          	lbu	a1,4(a4)
1c008ab6:	4615                	li	a2,5
1c008ab8:	00b78223          	sb	a1,4(a5)
1c008abc:	02c68163          	beq	a3,a2,1c008ade <memcpy+0x122>
1c008ac0:	00574703          	lbu	a4,5(a4)
1c008ac4:	00e782a3          	sb	a4,5(a5)
1c008ac8:	8082                	ret
1c008aca:	962e                	add	a2,a2,a1
1c008acc:	87aa                	mv	a5,a0
1c008ace:	0585                	addi	a1,a1,1
1c008ad0:	fff5c703          	lbu	a4,-1(a1)
1c008ad4:	0785                	addi	a5,a5,1
1c008ad6:	fee78fa3          	sb	a4,-1(a5)
1c008ada:	fec59ae3          	bne	a1,a2,1c008ace <memcpy+0x112>
1c008ade:	8082                	ret
1c008ae0:	00367793          	andi	a5,a2,3
1c008ae4:	ee0793e3          	bnez	a5,1c0089ca <memcpy+0xe>
1c008ae8:	da7d                	beqz	a2,1c008ade <memcpy+0x122>
1c008aea:	87aa                	mv	a5,a0
1c008aec:	0591                	addi	a1,a1,4
1c008aee:	ffc5a703          	lw	a4,-4(a1)
1c008af2:	0791                	addi	a5,a5,4
1c008af4:	fee7ae23          	sw	a4,-4(a5)
1c008af8:	1671                	addi	a2,a2,-4
1c008afa:	fa6d                	bnez	a2,1c008aec <memcpy+0x130>
1c008afc:	8082                	ret
1c008afe:	88ae                	mv	a7,a1
1c008b00:	882a                	mv	a6,a0
1c008b02:	8332                	mv	t1,a2
1c008b04:	b7a1                	j	1c008a4c <memcpy+0x90>
1c008b06:	8082                	ret

1c008b08 <memmove>:
1c008b08:	40b507b3          	sub	a5,a0,a1
1c008b0c:	10c7e463          	bltu	a5,a2,1c008c14 <memmove+0x10c>
1c008b10:	12060b63          	beqz	a2,1c008c46 <memmove+0x13e>
1c008b14:	00458793          	addi	a5,a1,4
1c008b18:	00450693          	addi	a3,a0,4
1c008b1c:	00f537b3          	sltu	a5,a0,a5
1c008b20:	00d5b6b3          	sltu	a3,a1,a3
1c008b24:	0017c793          	xori	a5,a5,1
1c008b28:	0016c693          	xori	a3,a3,1
1c008b2c:	873e                	mv	a4,a5
1c008b2e:	87b6                	mv	a5,a3
1c008b30:	8fd9                	or	a5,a5,a4
1c008b32:	0ff7f793          	andi	a5,a5,255
1c008b36:	cfed                	beqz	a5,1c008c30 <memmove+0x128>
1c008b38:	00863793          	sltiu	a5,a2,8
1c008b3c:	0017c793          	xori	a5,a5,1
1c008b40:	0ff7f793          	andi	a5,a5,255
1c008b44:	c7f5                	beqz	a5,1c008c30 <memmove+0x128>
1c008b46:	40b007b3          	neg	a5,a1
1c008b4a:	8b8d                	andi	a5,a5,3
1c008b4c:	fff60313          	addi	t1,a2,-1
1c008b50:	cfe5                	beqz	a5,1c008c48 <memmove+0x140>
1c008b52:	0005c683          	lbu	a3,0(a1)
1c008b56:	4705                	li	a4,1
1c008b58:	00d50023          	sb	a3,0(a0)
1c008b5c:	00150813          	addi	a6,a0,1
1c008b60:	00158893          	addi	a7,a1,1
1c008b64:	02e78963          	beq	a5,a4,1c008b96 <memmove+0x8e>
1c008b68:	0015c683          	lbu	a3,1(a1)
1c008b6c:	470d                	li	a4,3
1c008b6e:	00d500a3          	sb	a3,1(a0)
1c008b72:	00250813          	addi	a6,a0,2
1c008b76:	00258893          	addi	a7,a1,2
1c008b7a:	ffe60313          	addi	t1,a2,-2
1c008b7e:	00e79c63          	bne	a5,a4,1c008b96 <memmove+0x8e>
1c008b82:	0025c703          	lbu	a4,2(a1)
1c008b86:	00350813          	addi	a6,a0,3
1c008b8a:	00e50123          	sb	a4,2(a0)
1c008b8e:	00358893          	addi	a7,a1,3
1c008b92:	ffd60313          	addi	t1,a2,-3
1c008b96:	8e1d                	sub	a2,a2,a5
1c008b98:	95be                	add	a1,a1,a5
1c008b9a:	00265e13          	srli	t3,a2,0x2
1c008b9e:	97aa                	add	a5,a5,a0
1c008ba0:	4701                	li	a4,0
1c008ba2:	4194                	lw	a3,0(a1)
1c008ba4:	0705                	addi	a4,a4,1
1c008ba6:	c394                	sw	a3,0(a5)
1c008ba8:	0591                	addi	a1,a1,4
1c008baa:	0791                	addi	a5,a5,4
1c008bac:	ffc76be3          	bltu	a4,t3,1c008ba2 <memmove+0x9a>
1c008bb0:	ffc67593          	andi	a1,a2,-4
1c008bb4:	40b306b3          	sub	a3,t1,a1
1c008bb8:	00b807b3          	add	a5,a6,a1
1c008bbc:	00b88733          	add	a4,a7,a1
1c008bc0:	08b60263          	beq	a2,a1,1c008c44 <memmove+0x13c>
1c008bc4:	00074583          	lbu	a1,0(a4)
1c008bc8:	fff68613          	addi	a2,a3,-1
1c008bcc:	00b78023          	sb	a1,0(a5)
1c008bd0:	ca35                	beqz	a2,1c008c44 <memmove+0x13c>
1c008bd2:	00174583          	lbu	a1,1(a4)
1c008bd6:	ffe68613          	addi	a2,a3,-2
1c008bda:	00b780a3          	sb	a1,1(a5)
1c008bde:	c23d                	beqz	a2,1c008c44 <memmove+0x13c>
1c008be0:	00274583          	lbu	a1,2(a4)
1c008be4:	ffd68613          	addi	a2,a3,-3
1c008be8:	00b78123          	sb	a1,2(a5)
1c008bec:	ce21                	beqz	a2,1c008c44 <memmove+0x13c>
1c008bee:	00374583          	lbu	a1,3(a4)
1c008bf2:	ffc68613          	addi	a2,a3,-4
1c008bf6:	00b781a3          	sb	a1,3(a5)
1c008bfa:	c629                	beqz	a2,1c008c44 <memmove+0x13c>
1c008bfc:	00474583          	lbu	a1,4(a4)
1c008c00:	4615                	li	a2,5
1c008c02:	00b78223          	sb	a1,4(a5)
1c008c06:	02c68f63          	beq	a3,a2,1c008c44 <memmove+0x13c>
1c008c0a:	00574703          	lbu	a4,5(a4)
1c008c0e:	00e782a3          	sb	a4,5(a5)
1c008c12:	8082                	ret
1c008c14:	167d                	addi	a2,a2,-1
1c008c16:	00c587b3          	add	a5,a1,a2
1c008c1a:	962a                	add	a2,a2,a0
1c008c1c:	15fd                	addi	a1,a1,-1
1c008c1e:	0007c703          	lbu	a4,0(a5)
1c008c22:	17fd                	addi	a5,a5,-1
1c008c24:	00e60023          	sb	a4,0(a2)
1c008c28:	167d                	addi	a2,a2,-1
1c008c2a:	feb79ae3          	bne	a5,a1,1c008c1e <memmove+0x116>
1c008c2e:	8082                	ret
1c008c30:	962a                	add	a2,a2,a0
1c008c32:	87aa                	mv	a5,a0
1c008c34:	0005c703          	lbu	a4,0(a1)
1c008c38:	0785                	addi	a5,a5,1
1c008c3a:	fee78fa3          	sb	a4,-1(a5)
1c008c3e:	0585                	addi	a1,a1,1
1c008c40:	fec79ae3          	bne	a5,a2,1c008c34 <memmove+0x12c>
1c008c44:	8082                	ret
1c008c46:	8082                	ret
1c008c48:	88ae                	mv	a7,a1
1c008c4a:	882a                	mv	a6,a0
1c008c4c:	8332                	mv	t1,a2
1c008c4e:	b7a1                	j	1c008b96 <memmove+0x8e>

1c008c50 <strchr>:
1c008c50:	00054783          	lbu	a5,0(a0)
1c008c54:	0ff5f593          	andi	a1,a1,255
1c008c58:	00b78863          	beq	a5,a1,1c008c68 <strchr+0x18>
1c008c5c:	c799                	beqz	a5,1c008c6a <strchr+0x1a>
1c008c5e:	0505                	addi	a0,a0,1
1c008c60:	00054783          	lbu	a5,0(a0)
1c008c64:	feb79ce3          	bne	a5,a1,1c008c5c <strchr+0xc>
1c008c68:	8082                	ret
1c008c6a:	0015b593          	seqz	a1,a1
1c008c6e:	40b005b3          	neg	a1,a1
1c008c72:	8d6d                	and	a0,a0,a1
1c008c74:	8082                	ret

1c008c76 <puts>:
1c008c76:	00054783          	lbu	a5,0(a0)
1c008c7a:	c78d                	beqz	a5,1c008ca4 <puts+0x2e>
1c008c7c:	f14026f3          	csrr	a3,mhartid
1c008c80:	00369713          	slli	a4,a3,0x3
1c008c84:	1a10f637          	lui	a2,0x1a10f
1c008c88:	0ff77713          	andi	a4,a4,255
1c008c8c:	9732                	add	a4,a4,a2
1c008c8e:	6609                	lui	a2,0x2
1c008c90:	068a                	slli	a3,a3,0x2
1c008c92:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008c96:	8ef1                	and	a3,a3,a2
1c008c98:	9736                	add	a4,a4,a3
1c008c9a:	c31c                	sw	a5,0(a4)
1c008c9c:	0505                	addi	a0,a0,1
1c008c9e:	00054783          	lbu	a5,0(a0)
1c008ca2:	ffe5                	bnez	a5,1c008c9a <puts+0x24>
1c008ca4:	f1402773          	csrr	a4,mhartid
1c008ca8:	00371793          	slli	a5,a4,0x3
1c008cac:	1a10f6b7          	lui	a3,0x1a10f
1c008cb0:	0ff7f793          	andi	a5,a5,255
1c008cb4:	97b6                	add	a5,a5,a3
1c008cb6:	6689                	lui	a3,0x2
1c008cb8:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008cbc:	070a                	slli	a4,a4,0x2
1c008cbe:	8f75                	and	a4,a4,a3
1c008cc0:	97ba                	add	a5,a5,a4
1c008cc2:	4729                	li	a4,10
1c008cc4:	c398                	sw	a4,0(a5)
1c008cc6:	4501                	li	a0,0
1c008cc8:	8082                	ret

1c008cca <pos_libc_fputc_locked>:
1c008cca:	6689                	lui	a3,0x2
1c008ccc:	f14027f3          	csrr	a5,mhartid
1c008cd0:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008cd4:	00379713          	slli	a4,a5,0x3
1c008cd8:	078a                	slli	a5,a5,0x2
1c008cda:	8ff5                	and	a5,a5,a3
1c008cdc:	0ff77713          	andi	a4,a4,255
1c008ce0:	1a10f6b7          	lui	a3,0x1a10f
1c008ce4:	9736                	add	a4,a4,a3
1c008ce6:	0ff57513          	andi	a0,a0,255
1c008cea:	97ba                	add	a5,a5,a4
1c008cec:	c388                	sw	a0,0(a5)
1c008cee:	4501                	li	a0,0
1c008cf0:	8082                	ret

1c008cf2 <pos_libc_prf_locked>:
1c008cf2:	a0b1                	j	1c008d3e <pos_libc_prf>

1c008cf4 <exit>:
1c008cf4:	800007b7          	lui	a5,0x80000
1c008cf8:	1141                	addi	sp,sp,-16
1c008cfa:	8d5d                	or	a0,a0,a5
1c008cfc:	c606                	sw	ra,12(sp)
1c008cfe:	1a1047b7          	lui	a5,0x1a104
1c008d02:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008d06:	3941                	jal	1c008996 <pos_wait_forever>

1c008d08 <pos_io_start>:
1c008d08:	4501                	li	a0,0
1c008d0a:	8082                	ret

1c008d0c <pos_io_stop>:
1c008d0c:	4501                	li	a0,0
1c008d0e:	8082                	ret

1c008d10 <printf>:
1c008d10:	7139                	addi	sp,sp,-64
1c008d12:	02410313          	addi	t1,sp,36
1c008d16:	d432                	sw	a2,40(sp)
1c008d18:	862a                	mv	a2,a0
1c008d1a:	1c009537          	lui	a0,0x1c009
1c008d1e:	d22e                	sw	a1,36(sp)
1c008d20:	d636                	sw	a3,44(sp)
1c008d22:	4589                	li	a1,2
1c008d24:	869a                	mv	a3,t1
1c008d26:	cca50513          	addi	a0,a0,-822 # 1c008cca <pos_libc_fputc_locked>
1c008d2a:	ce06                	sw	ra,28(sp)
1c008d2c:	d83a                	sw	a4,48(sp)
1c008d2e:	da3e                	sw	a5,52(sp)
1c008d30:	dc42                	sw	a6,56(sp)
1c008d32:	de46                	sw	a7,60(sp)
1c008d34:	c61a                	sw	t1,12(sp)
1c008d36:	3f75                	jal	1c008cf2 <pos_libc_prf_locked>
1c008d38:	40f2                	lw	ra,28(sp)
1c008d3a:	6121                	addi	sp,sp,64
1c008d3c:	8082                	ret

1c008d3e <pos_libc_prf>:
1c008d3e:	7169                	addi	sp,sp,-304
1c008d40:	12812423          	sw	s0,296(sp)
1c008d44:	12912223          	sw	s1,292(sp)
1c008d48:	11612823          	sw	s6,272(sp)
1c008d4c:	11712623          	sw	s7,268(sp)
1c008d50:	11812423          	sw	s8,264(sp)
1c008d54:	11912223          	sw	s9,260(sp)
1c008d58:	11a12023          	sw	s10,256(sp)
1c008d5c:	12112623          	sw	ra,300(sp)
1c008d60:	13212023          	sw	s2,288(sp)
1c008d64:	11312e23          	sw	s3,284(sp)
1c008d68:	11412c23          	sw	s4,280(sp)
1c008d6c:	11512a23          	sw	s5,276(sp)
1c008d70:	dfee                	sw	s11,252(sp)
1c008d72:	8b2a                	mv	s6,a0
1c008d74:	8d2e                	mv	s10,a1
1c008d76:	84b2                	mv	s1,a2
1c008d78:	8c36                	mv	s8,a3
1c008d7a:	4401                	li	s0,0
1c008d7c:	1c000bb7          	lui	s7,0x1c000
1c008d80:	02410c93          	addi	s9,sp,36
1c008d84:	0004c503          	lbu	a0,0(s1)
1c008d88:	0485                	addi	s1,s1,1
1c008d8a:	cd19                	beqz	a0,1c008da8 <pos_libc_prf+0x6a>
1c008d8c:	02500793          	li	a5,37
1c008d90:	04f50863          	beq	a0,a5,1c008de0 <pos_libc_prf+0xa2>
1c008d94:	85ea                	mv	a1,s10
1c008d96:	9b02                	jalr	s6
1c008d98:	57fd                	li	a5,-1
1c008d9a:	24f50863          	beq	a0,a5,1c008fea <pos_libc_prf+0x2ac>
1c008d9e:	0405                	addi	s0,s0,1
1c008da0:	0004c503          	lbu	a0,0(s1)
1c008da4:	0485                	addi	s1,s1,1
1c008da6:	f17d                	bnez	a0,1c008d8c <pos_libc_prf+0x4e>
1c008da8:	8522                	mv	a0,s0
1c008daa:	12c12083          	lw	ra,300(sp)
1c008dae:	12812403          	lw	s0,296(sp)
1c008db2:	12412483          	lw	s1,292(sp)
1c008db6:	12012903          	lw	s2,288(sp)
1c008dba:	11c12983          	lw	s3,284(sp)
1c008dbe:	11812a03          	lw	s4,280(sp)
1c008dc2:	11412a83          	lw	s5,276(sp)
1c008dc6:	11012b03          	lw	s6,272(sp)
1c008dca:	10c12b83          	lw	s7,268(sp)
1c008dce:	10812c03          	lw	s8,264(sp)
1c008dd2:	10412c83          	lw	s9,260(sp)
1c008dd6:	10012d03          	lw	s10,256(sp)
1c008dda:	5dfe                	lw	s11,252(sp)
1c008ddc:	6155                	addi	sp,sp,304
1c008dde:	8082                	ret
1c008de0:	00148a93          	addi	s5,s1,1
1c008de4:	fffacd83          	lbu	s11,-1(s5) # ff00ffff <pulp__FC+0xff010000>
1c008de8:	02000713          	li	a4,32
1c008dec:	1d4b8513          	addi	a0,s7,468 # 1c0001d4 <__DTOR_END__+0x1b8>
1c008df0:	85ee                	mv	a1,s11
1c008df2:	c83a                	sw	a4,16(sp)
1c008df4:	cc02                	sw	zero,24(sp)
1c008df6:	ca02                	sw	zero,20(sp)
1c008df8:	ce02                	sw	zero,28(sp)
1c008dfa:	c602                	sw	zero,12(sp)
1c008dfc:	02300913          	li	s2,35
1c008e00:	02d00a13          	li	s4,45
1c008e04:	89d6                	mv	s3,s5
1c008e06:	35a9                	jal	1c008c50 <strchr>
1c008e08:	c915                	beqz	a0,1c008e3c <pos_libc_prf+0xfe>
1c008e0a:	212d8963          	beq	s11,s2,1c00901c <pos_libc_prf+0x2de>
1c008e0e:	1fb97063          	bleu	s11,s2,1c008fee <pos_libc_prf+0x2b0>
1c008e12:	214d8163          	beq	s11,s4,1c009014 <pos_libc_prf+0x2d6>
1c008e16:	03000613          	li	a2,48
1c008e1a:	1ecd8863          	beq	s11,a2,1c00900a <pos_libc_prf+0x2cc>
1c008e1e:	02b00693          	li	a3,43
1c008e22:	1edd8063          	beq	s11,a3,1c009002 <pos_libc_prf+0x2c4>
1c008e26:	84d6                	mv	s1,s5
1c008e28:	00148a93          	addi	s5,s1,1
1c008e2c:	fffacd83          	lbu	s11,-1(s5)
1c008e30:	1d4b8513          	addi	a0,s7,468
1c008e34:	85ee                	mv	a1,s11
1c008e36:	89d6                	mv	s3,s5
1c008e38:	3d21                	jal	1c008c50 <strchr>
1c008e3a:	f961                	bnez	a0,1c008e0a <pos_libc_prf+0xcc>
1c008e3c:	02a00613          	li	a2,42
1c008e40:	20cd8463          	beq	s11,a2,1c009048 <pos_libc_prf+0x30a>
1c008e44:	fd0d8613          	addi	a2,s11,-48
1c008e48:	45a5                	li	a1,9
1c008e4a:	4901                	li	s2,0
1c008e4c:	1cc5fe63          	bleu	a2,a1,1c009028 <pos_libc_prf+0x2ea>
1c008e50:	02e00713          	li	a4,46
1c008e54:	5a7d                	li	s4,-1
1c008e56:	24ed8463          	beq	s11,a4,1c00909e <pos_libc_prf+0x360>
1c008e5a:	1c000837          	lui	a6,0x1c000
1c008e5e:	85ee                	mv	a1,s11
1c008e60:	1dc80513          	addi	a0,a6,476 # 1c0001dc <__DTOR_END__+0x1c0>
1c008e64:	33f5                	jal	1c008c50 <strchr>
1c008e66:	84ce                	mv	s1,s3
1c008e68:	c509                	beqz	a0,1c008e72 <pos_libc_prf+0x134>
1c008e6a:	0009cd83          	lbu	s11,0(s3)
1c008e6e:	00198493          	addi	s1,s3,1
1c008e72:	06700713          	li	a4,103
1c008e76:	1fb75963          	ble	s11,a4,1c009068 <pos_libc_prf+0x32a>
1c008e7a:	07000713          	li	a4,112
1c008e7e:	12ed89e3          	beq	s11,a4,1c0097b0 <pos_libc_prf+0xa72>
1c008e82:	25b75263          	ble	s11,a4,1c0090c6 <pos_libc_prf+0x388>
1c008e86:	07500713          	li	a4,117
1c008e8a:	0aed89e3          	beq	s11,a4,1c00973c <pos_libc_prf+0x9fe>
1c008e8e:	07800713          	li	a4,120
1c008e92:	72ed8b63          	beq	s11,a4,1c0095c8 <pos_libc_prf+0x88a>
1c008e96:	07300713          	li	a4,115
1c008e9a:	1aed9ce3          	bne	s11,a4,1c009852 <pos_libc_prf+0xb14>
1c008e9e:	000c2583          	lw	a1,0(s8)
1c008ea2:	004c0a93          	addi	s5,s8,4
1c008ea6:	87ae                	mv	a5,a1
1c008ea8:	4981                	li	s3,0
1c008eaa:	0c800693          	li	a3,200
1c008eae:	a021                	j	1c008eb6 <pos_libc_prf+0x178>
1c008eb0:	0985                	addi	s3,s3,1
1c008eb2:	5ad98be3          	beq	s3,a3,1c009c68 <pos_libc_prf+0xf2a>
1c008eb6:	0007c703          	lbu	a4,0(a5)
1c008eba:	0785                	addi	a5,a5,1
1c008ebc:	fb75                	bnez	a4,1c008eb0 <pos_libc_prf+0x172>
1c008ebe:	000a4563          	bltz	s4,1c008ec8 <pos_libc_prf+0x18a>
1c008ec2:	013a5363          	ble	s3,s4,1c008ec8 <pos_libc_prf+0x18a>
1c008ec6:	89d2                	mv	s3,s4
1c008ec8:	8c56                	mv	s8,s5
1c008eca:	ea098de3          	beqz	s3,1c008d84 <pos_libc_prf+0x46>
1c008ece:	864e                	mv	a2,s3
1c008ed0:	8566                	mv	a0,s9
1c008ed2:	34ed                	jal	1c0089bc <memcpy>
1c008ed4:	8c56                	mv	s8,s5
1c008ed6:	0f29d963          	ble	s2,s3,1c008fc8 <pos_libc_prf+0x28a>
1c008eda:	c602                	sw	zero,12(sp)
1c008edc:	48f2                	lw	a7,28(sp)
1c008ede:	1a0885e3          	beqz	a7,1c009888 <pos_libc_prf+0xb4a>
1c008ee2:	013c87b3          	add	a5,s9,s3
1c008ee6:	40f007b3          	neg	a5,a5
1c008eea:	8b8d                	andi	a5,a5,3
1c008eec:	00378693          	addi	a3,a5,3
1c008ef0:	4715                	li	a4,5
1c008ef2:	413905b3          	sub	a1,s2,s3
1c008ef6:	00e6f363          	bleu	a4,a3,1c008efc <pos_libc_prf+0x1be>
1c008efa:	4695                	li	a3,5
1c008efc:	fff90713          	addi	a4,s2,-1
1c008f00:	41370733          	sub	a4,a4,s3
1c008f04:	06d76663          	bltu	a4,a3,1c008f70 <pos_libc_prf+0x232>
1c008f08:	86ce                	mv	a3,s3
1c008f0a:	cb9d                	beqz	a5,1c008f40 <pos_libc_prf+0x202>
1c008f0c:	0f010813          	addi	a6,sp,240
1c008f10:	013806b3          	add	a3,a6,s3
1c008f14:	02000713          	li	a4,32
1c008f18:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c008f1c:	4605                	li	a2,1
1c008f1e:	00198693          	addi	a3,s3,1
1c008f22:	00c78f63          	beq	a5,a2,1c008f40 <pos_libc_prf+0x202>
1c008f26:	96c2                	add	a3,a3,a6
1c008f28:	f2e68a23          	sb	a4,-204(a3)
1c008f2c:	460d                	li	a2,3
1c008f2e:	00298693          	addi	a3,s3,2
1c008f32:	00c79763          	bne	a5,a2,1c008f40 <pos_libc_prf+0x202>
1c008f36:	96c2                	add	a3,a3,a6
1c008f38:	f2e68a23          	sb	a4,-204(a3)
1c008f3c:	00398693          	addi	a3,s3,3
1c008f40:	8d9d                	sub	a1,a1,a5
1c008f42:	97ce                	add	a5,a5,s3
1c008f44:	0025d613          	srli	a2,a1,0x2
1c008f48:	97e6                	add	a5,a5,s9
1c008f4a:	4701                	li	a4,0
1c008f4c:	1c0008b7          	lui	a7,0x1c000
1c008f50:	1d088893          	addi	a7,a7,464 # 1c0001d0 <__DTOR_END__+0x1b4>
1c008f54:	0008a883          	lw	a7,0(a7)
1c008f58:	0705                	addi	a4,a4,1
1c008f5a:	0117a023          	sw	a7,0(a5)
1c008f5e:	0791                	addi	a5,a5,4
1c008f60:	fec766e3          	bltu	a4,a2,1c008f4c <pos_libc_prf+0x20e>
1c008f64:	ffc5f793          	andi	a5,a1,-4
1c008f68:	00d789b3          	add	s3,a5,a3
1c008f6c:	04b78b63          	beq	a5,a1,1c008fc2 <pos_libc_prf+0x284>
1c008f70:	1988                	addi	a0,sp,240
1c008f72:	01350733          	add	a4,a0,s3
1c008f76:	02000793          	li	a5,32
1c008f7a:	f2f70a23          	sb	a5,-204(a4)
1c008f7e:	00198713          	addi	a4,s3,1
1c008f82:	05275063          	ble	s2,a4,1c008fc2 <pos_libc_prf+0x284>
1c008f86:	972a                	add	a4,a4,a0
1c008f88:	f2f70a23          	sb	a5,-204(a4)
1c008f8c:	00298713          	addi	a4,s3,2
1c008f90:	03275963          	ble	s2,a4,1c008fc2 <pos_libc_prf+0x284>
1c008f94:	972a                	add	a4,a4,a0
1c008f96:	f2f70a23          	sb	a5,-204(a4)
1c008f9a:	00398713          	addi	a4,s3,3
1c008f9e:	03275263          	ble	s2,a4,1c008fc2 <pos_libc_prf+0x284>
1c008fa2:	972a                	add	a4,a4,a0
1c008fa4:	f2f70a23          	sb	a5,-204(a4)
1c008fa8:	00498713          	addi	a4,s3,4
1c008fac:	01275b63          	ble	s2,a4,1c008fc2 <pos_libc_prf+0x284>
1c008fb0:	972a                	add	a4,a4,a0
1c008fb2:	f2f70a23          	sb	a5,-204(a4)
1c008fb6:	0995                	addi	s3,s3,5
1c008fb8:	0129d563          	ble	s2,s3,1c008fc2 <pos_libc_prf+0x284>
1c008fbc:	99aa                	add	s3,s3,a0
1c008fbe:	f2f98a23          	sb	a5,-204(s3)
1c008fc2:	89ca                	mv	s3,s2
1c008fc4:	dc0980e3          	beqz	s3,1c008d84 <pos_libc_prf+0x46>
1c008fc8:	8966                	mv	s2,s9
1c008fca:	5a7d                	li	s4,-1
1c008fcc:	41940ab3          	sub	s5,s0,s9
1c008fd0:	a029                	j	1c008fda <pos_libc_prf+0x29c>
1c008fd2:	01590433          	add	s0,s2,s5
1c008fd6:	da0987e3          	beqz	s3,1c008d84 <pos_libc_prf+0x46>
1c008fda:	00094503          	lbu	a0,0(s2)
1c008fde:	85ea                	mv	a1,s10
1c008fe0:	9b02                	jalr	s6
1c008fe2:	0905                	addi	s2,s2,1
1c008fe4:	19fd                	addi	s3,s3,-1
1c008fe6:	ff4516e3          	bne	a0,s4,1c008fd2 <pos_libc_prf+0x294>
1c008fea:	547d                	li	s0,-1
1c008fec:	bb75                	j	1c008da8 <pos_libc_prf+0x6a>
1c008fee:	da0d8de3          	beqz	s11,1c008da8 <pos_libc_prf+0x6a>
1c008ff2:	02000513          	li	a0,32
1c008ff6:	e2ad98e3          	bne	s11,a0,1c008e26 <pos_libc_prf+0xe8>
1c008ffa:	4785                	li	a5,1
1c008ffc:	cc3e                	sw	a5,24(sp)
1c008ffe:	84d6                	mv	s1,s5
1c009000:	b525                	j	1c008e28 <pos_libc_prf+0xea>
1c009002:	4705                	li	a4,1
1c009004:	ca3a                	sw	a4,20(sp)
1c009006:	84d6                	mv	s1,s5
1c009008:	b505                	j	1c008e28 <pos_libc_prf+0xea>
1c00900a:	03000893          	li	a7,48
1c00900e:	c846                	sw	a7,16(sp)
1c009010:	84d6                	mv	s1,s5
1c009012:	bd19                	j	1c008e28 <pos_libc_prf+0xea>
1c009014:	4685                	li	a3,1
1c009016:	ce36                	sw	a3,28(sp)
1c009018:	84d6                	mv	s1,s5
1c00901a:	b539                	j	1c008e28 <pos_libc_prf+0xea>
1c00901c:	4805                	li	a6,1
1c00901e:	c642                	sw	a6,12(sp)
1c009020:	84d6                	mv	s1,s5
1c009022:	b519                	j	1c008e28 <pos_libc_prf+0xea>
1c009024:	84d6                	mv	s1,s5
1c009026:	0a85                	addi	s5,s5,1
1c009028:	00291793          	slli	a5,s2,0x2
1c00902c:	97ca                	add	a5,a5,s2
1c00902e:	0786                	slli	a5,a5,0x1
1c009030:	97ee                	add	a5,a5,s11
1c009032:	000acd83          	lbu	s11,0(s5)
1c009036:	fd078913          	addi	s2,a5,-48
1c00903a:	fd0d8793          	addi	a5,s11,-48
1c00903e:	fef5f3e3          	bleu	a5,a1,1c009024 <pos_libc_prf+0x2e6>
1c009042:	00248993          	addi	s3,s1,2
1c009046:	a811                	j	1c00905a <pos_libc_prf+0x31c>
1c009048:	000c2903          	lw	s2,0(s8)
1c00904c:	0c11                	addi	s8,s8,4
1c00904e:	14094663          	bltz	s2,1c00919a <pos_libc_prf+0x45c>
1c009052:	000acd83          	lbu	s11,0(s5)
1c009056:	00248993          	addi	s3,s1,2
1c00905a:	0c800713          	li	a4,200
1c00905e:	df2779e3          	bleu	s2,a4,1c008e50 <pos_libc_prf+0x112>
1c009062:	0c800913          	li	s2,200
1c009066:	b3ed                	j	1c008e50 <pos_libc_prf+0x112>
1c009068:	06500713          	li	a4,101
1c00906c:	12eddc63          	ble	a4,s11,1c0091a4 <pos_libc_prf+0x466>
1c009070:	04700713          	li	a4,71
1c009074:	55b74063          	blt	a4,s11,1c0095b4 <pos_libc_prf+0x876>
1c009078:	04500713          	li	a4,69
1c00907c:	12edd463          	ble	a4,s11,1c0091a4 <pos_libc_prf+0x466>
1c009080:	d20d84e3          	beqz	s11,1c008da8 <pos_libc_prf+0x6a>
1c009084:	02500713          	li	a4,37
1c009088:	7ced9563          	bne	s11,a4,1c009852 <pos_libc_prf+0xb14>
1c00908c:	85ea                	mv	a1,s10
1c00908e:	02500513          	li	a0,37
1c009092:	9b02                	jalr	s6
1c009094:	57fd                	li	a5,-1
1c009096:	f4f50ae3          	beq	a0,a5,1c008fea <pos_libc_prf+0x2ac>
1c00909a:	0405                	addi	s0,s0,1
1c00909c:	b311                	j	1c008da0 <pos_libc_prf+0x62>
1c00909e:	0009c783          	lbu	a5,0(s3)
1c0090a2:	02a00713          	li	a4,42
1c0090a6:	00198693          	addi	a3,s3,1
1c0090aa:	0ae79d63          	bne	a5,a4,1c009164 <pos_libc_prf+0x426>
1c0090ae:	000c2a03          	lw	s4,0(s8)
1c0090b2:	0019cd83          	lbu	s11,1(s3)
1c0090b6:	0c11                	addi	s8,s8,4
1c0090b8:	0989                	addi	s3,s3,2
1c0090ba:	0c800713          	li	a4,200
1c0090be:	d9475ee3          	ble	s4,a4,1c008e5a <pos_libc_prf+0x11c>
1c0090c2:	5a7d                	li	s4,-1
1c0090c4:	bb59                	j	1c008e5a <pos_libc_prf+0x11c>
1c0090c6:	06e00713          	li	a4,110
1c0090ca:	76ed8e63          	beq	s11,a4,1c009846 <pos_libc_prf+0xb08>
1c0090ce:	5bb75663          	ble	s11,a4,1c00967a <pos_libc_prf+0x93c>
1c0090d2:	4732                	lw	a4,12(sp)
1c0090d4:	004c0513          	addi	a0,s8,4
1c0090d8:	000c2683          	lw	a3,0(s8)
1c0090dc:	1c070de3          	beqz	a4,1c009ab6 <pos_libc_prf+0xd78>
1c0090e0:	03000793          	li	a5,48
1c0090e4:	02f10223          	sb	a5,36(sp)
1c0090e8:	16068de3          	beqz	a3,1c009a62 <pos_libc_prf+0xd24>
1c0090ec:	02510593          	addi	a1,sp,37
1c0090f0:	872e                	mv	a4,a1
1c0090f2:	87ba                	mv	a5,a4
1c0090f4:	0076f613          	andi	a2,a3,7
1c0090f8:	0785                	addi	a5,a5,1
1c0090fa:	03060613          	addi	a2,a2,48
1c0090fe:	828d                	srli	a3,a3,0x3
1c009100:	fec78fa3          	sb	a2,-1(a5)
1c009104:	fae5                	bnez	a3,1c0090f4 <pos_libc_prf+0x3b6>
1c009106:	40b789b3          	sub	s3,a5,a1
1c00910a:	0149db63          	ble	s4,s3,1c009120 <pos_libc_prf+0x3e2>
1c00910e:	03000693          	li	a3,48
1c009112:	0785                	addi	a5,a5,1
1c009114:	fed78fa3          	sb	a3,-1(a5)
1c009118:	40b789b3          	sub	s3,a5,a1
1c00911c:	ff49cbe3          	blt	s3,s4,1c009112 <pos_libc_prf+0x3d4>
1c009120:	00078023          	sb	zero,0(a5)
1c009124:	17fd                	addi	a5,a5,-1
1c009126:	00f77e63          	bleu	a5,a4,1c009142 <pos_libc_prf+0x404>
1c00912a:	00074603          	lbu	a2,0(a4)
1c00912e:	0007c683          	lbu	a3,0(a5)
1c009132:	00c78023          	sb	a2,0(a5)
1c009136:	00d70023          	sb	a3,0(a4)
1c00913a:	17fd                	addi	a5,a5,-1
1c00913c:	0705                	addi	a4,a4,1
1c00913e:	fef766e3          	bltu	a4,a5,1c00912a <pos_libc_prf+0x3ec>
1c009142:	4832                	lw	a6,12(sp)
1c009144:	57fd                	li	a5,-1
1c009146:	99c2                	add	s3,s3,a6
1c009148:	22fa0ee3          	beq	s4,a5,1c009b84 <pos_libc_prf+0xe46>
1c00914c:	0c800793          	li	a5,200
1c009150:	e937cde3          	blt	a5,s3,1c008fea <pos_libc_prf+0x2ac>
1c009154:	02000693          	li	a3,32
1c009158:	8c2a                	mv	s8,a0
1c00915a:	c602                	sw	zero,12(sp)
1c00915c:	c836                	sw	a3,16(sp)
1c00915e:	d729cfe3          	blt	s3,s2,1c008edc <pos_libc_prf+0x19e>
1c009162:	b58d                	j	1c008fc4 <pos_libc_prf+0x286>
1c009164:	fd078593          	addi	a1,a5,-48
1c009168:	4725                	li	a4,9
1c00916a:	8dbe                	mv	s11,a5
1c00916c:	4a01                	li	s4,0
1c00916e:	4625                	li	a2,9
1c009170:	00b77663          	bleu	a1,a4,1c00917c <pos_libc_prf+0x43e>
1c009174:	1070006f          	j	1c009a7a <pos_libc_prf+0xd3c>
1c009178:	89b6                	mv	s3,a3
1c00917a:	0685                	addi	a3,a3,1
1c00917c:	002a1793          	slli	a5,s4,0x2
1c009180:	97d2                	add	a5,a5,s4
1c009182:	0786                	slli	a5,a5,0x1
1c009184:	97ee                	add	a5,a5,s11
1c009186:	0006cd83          	lbu	s11,0(a3)
1c00918a:	fd078a13          	addi	s4,a5,-48
1c00918e:	fd0d8793          	addi	a5,s11,-48
1c009192:	fef673e3          	bleu	a5,a2,1c009178 <pos_libc_prf+0x43a>
1c009196:	0989                	addi	s3,s3,2
1c009198:	b70d                	j	1c0090ba <pos_libc_prf+0x37c>
1c00919a:	4785                	li	a5,1
1c00919c:	41200933          	neg	s2,s2
1c0091a0:	ce3e                	sw	a5,28(sp)
1c0091a2:	bd45                	j	1c009052 <pos_libc_prf+0x314>
1c0091a4:	0c1d                	addi	s8,s8,7
1c0091a6:	ff8c7c13          	andi	s8,s8,-8
1c0091aa:	000c2703          	lw	a4,0(s8)
1c0091ae:	004c2803          	lw	a6,4(s8)
1c0091b2:	01575693          	srli	a3,a4,0x15
1c0091b6:	00b81613          	slli	a2,a6,0xb
1c0091ba:	8e55                	or	a2,a2,a3
1c0091bc:	01485513          	srli	a0,a6,0x14
1c0091c0:	00b71693          	slli	a3,a4,0xb
1c0091c4:	80000737          	lui	a4,0x80000
1c0091c8:	fff74713          	not	a4,a4
1c0091cc:	7ff57513          	andi	a0,a0,2047
1c0091d0:	7ff00593          	li	a1,2047
1c0091d4:	0c21                	addi	s8,s8,8
1c0091d6:	8e79                	and	a2,a2,a4
1c0091d8:	0ab504e3          	beq	a0,a1,1c009a80 <pos_libc_prf+0xd42>
1c0091dc:	04600593          	li	a1,70
1c0091e0:	00bd9463          	bne	s11,a1,1c0091e8 <pos_libc_prf+0x4aa>
1c0091e4:	06600d93          	li	s11,102
1c0091e8:	00d56733          	or	a4,a0,a3
1c0091ec:	8f51                	or	a4,a4,a2
1c0091ee:	7e070963          	beqz	a4,1c0099e0 <pos_libc_prf+0xca2>
1c0091f2:	800005b7          	lui	a1,0x80000
1c0091f6:	c0250513          	addi	a0,a0,-1022
1c0091fa:	8dd1                	or	a1,a1,a2
1c0091fc:	26084ae3          	bltz	a6,1c009c70 <pos_libc_prf+0xf32>
1c009200:	4852                	lw	a6,20(sp)
1c009202:	220808e3          	beqz	a6,1c009c32 <pos_libc_prf+0xef4>
1c009206:	02b00713          	li	a4,43
1c00920a:	02e10223          	sb	a4,36(sp)
1c00920e:	02510e93          	addi	t4,sp,37
1c009212:	5779                	li	a4,-2
1c009214:	4301                	li	t1,0
1c009216:	06e55763          	ble	a4,a0,1c009284 <pos_libc_prf+0x546>
1c00921a:	33333837          	lui	a6,0x33333
1c00921e:	800008b7          	lui	a7,0x80000
1c009222:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c009226:	fff8c893          	not	a7,a7
1c00922a:	5e79                	li	t3,-2
1c00922c:	a011                	j	1c009230 <pos_libc_prf+0x4f2>
1c00922e:	853e                	mv	a0,a5
1c009230:	01f59613          	slli	a2,a1,0x1f
1c009234:	0016d713          	srli	a4,a3,0x1
1c009238:	0016f793          	andi	a5,a3,1
1c00923c:	8f51                	or	a4,a4,a2
1c00923e:	00e786b3          	add	a3,a5,a4
1c009242:	00f6b7b3          	sltu	a5,a3,a5
1c009246:	8185                	srli	a1,a1,0x1
1c009248:	95be                	add	a1,a1,a5
1c00924a:	00150793          	addi	a5,a0,1
1c00924e:	feb860e3          	bltu	a6,a1,1c00922e <pos_libc_prf+0x4f0>
1c009252:	00269613          	slli	a2,a3,0x2
1c009256:	01e6df13          	srli	t5,a3,0x1e
1c00925a:	00259713          	slli	a4,a1,0x2
1c00925e:	96b2                	add	a3,a3,a2
1c009260:	00ef6733          	or	a4,t5,a4
1c009264:	95ba                	add	a1,a1,a4
1c009266:	00c6b633          	sltu	a2,a3,a2
1c00926a:	95b2                	add	a1,a1,a2
1c00926c:	01f6d713          	srli	a4,a3,0x1f
1c009270:	0509                	addi	a0,a0,2
1c009272:	137d                	addi	t1,t1,-1
1c009274:	01159663          	bne	a1,a7,1c009280 <pos_libc_prf+0x542>
1c009278:	0686                	slli	a3,a3,0x1
1c00927a:	ffe76593          	ori	a1,a4,-2
1c00927e:	853e                	mv	a0,a5
1c009280:	fbc548e3          	blt	a0,t3,1c009230 <pos_libc_prf+0x4f2>
1c009284:	06a05563          	blez	a0,1c0092ee <pos_libc_prf+0x5b0>
1c009288:	800008b7          	lui	a7,0x80000
1c00928c:	4e15                	li	t3,5
1c00928e:	fff8c893          	not	a7,a7
1c009292:	00268613          	addi	a2,a3,2
1c009296:	00d636b3          	sltu	a3,a2,a3
1c00929a:	95b6                	add	a1,a1,a3
1c00929c:	03c5d7b3          	divu	a5,a1,t3
1c0092a0:	00279713          	slli	a4,a5,0x2
1c0092a4:	973e                	add	a4,a4,a5
1c0092a6:	8d99                	sub	a1,a1,a4
1c0092a8:	01d59713          	slli	a4,a1,0x1d
1c0092ac:	00365593          	srli	a1,a2,0x3
1c0092b0:	8dd9                	or	a1,a1,a4
1c0092b2:	03c5d5b3          	divu	a1,a1,t3
1c0092b6:	00359693          	slli	a3,a1,0x3
1c0092ba:	00559713          	slli	a4,a1,0x5
1c0092be:	9736                	add	a4,a4,a3
1c0092c0:	40e60733          	sub	a4,a2,a4
1c0092c4:	03c75733          	divu	a4,a4,t3
1c0092c8:	81f5                	srli	a1,a1,0x1d
1c0092ca:	96ba                	add	a3,a3,a4
1c0092cc:	97ae                	add	a5,a5,a1
1c0092ce:	00e6b733          	sltu	a4,a3,a4
1c0092d2:	00f705b3          	add	a1,a4,a5
1c0092d6:	157d                	addi	a0,a0,-1
1c0092d8:	0305                	addi	t1,t1,1
1c0092da:	01f6d793          	srli	a5,a3,0x1f
1c0092de:	0586                	slli	a1,a1,0x1
1c0092e0:	8ddd                	or	a1,a1,a5
1c0092e2:	0686                	slli	a3,a3,0x1
1c0092e4:	157d                	addi	a0,a0,-1
1c0092e6:	feb8fae3          	bleu	a1,a7,1c0092da <pos_libc_prf+0x59c>
1c0092ea:	faa044e3          	bgtz	a0,1c009292 <pos_libc_prf+0x554>
1c0092ee:	4611                	li	a2,4
1c0092f0:	01f59713          	slli	a4,a1,0x1f
1c0092f4:	0016d793          	srli	a5,a3,0x1
1c0092f8:	8fd9                	or	a5,a5,a4
1c0092fa:	8a85                	andi	a3,a3,1
1c0092fc:	00f688b3          	add	a7,a3,a5
1c009300:	8185                	srli	a1,a1,0x1
1c009302:	00d8b6b3          	sltu	a3,a7,a3
1c009306:	00b68733          	add	a4,a3,a1
1c00930a:	0505                	addi	a0,a0,1
1c00930c:	86c6                	mv	a3,a7
1c00930e:	85ba                	mv	a1,a4
1c009310:	fec510e3          	bne	a0,a2,1c0092f0 <pos_libc_prf+0x5b2>
1c009314:	06700693          	li	a3,103
1c009318:	040a48e3          	bltz	s4,1c009b68 <pos_libc_prf+0xe2a>
1c00931c:	70dd8b63          	beq	s11,a3,1c009a32 <pos_libc_prf+0xcf4>
1c009320:	04700693          	li	a3,71
1c009324:	70dd8763          	beq	s11,a3,1c009a32 <pos_libc_prf+0xcf4>
1c009328:	06600693          	li	a3,102
1c00932c:	08dd89e3          	beq	s11,a3,1c009bbe <pos_libc_prf+0xe80>
1c009330:	001a0e13          	addi	t3,s4,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c009334:	46c1                	li	a3,16
1c009336:	01c6d363          	ble	t3,a3,1c00933c <pos_libc_prf+0x5fe>
1c00933a:	4e41                	li	t3,16
1c00933c:	1e7d                	addi	t3,t3,-1
1c00933e:	4f81                	li	t6,0
1c009340:	4681                	li	a3,0
1c009342:	08000637          	lui	a2,0x8000
1c009346:	4f15                	li	t5,5
1c009348:	52fd                	li	t0,-1
1c00934a:	00268593          	addi	a1,a3,2
1c00934e:	00d5b7b3          	sltu	a5,a1,a3
1c009352:	97b2                	add	a5,a5,a2
1c009354:	03e7d633          	divu	a2,a5,t5
1c009358:	00261693          	slli	a3,a2,0x2
1c00935c:	96b2                	add	a3,a3,a2
1c00935e:	8f95                	sub	a5,a5,a3
1c009360:	07f6                	slli	a5,a5,0x1d
1c009362:	0035d513          	srli	a0,a1,0x3
1c009366:	8d5d                	or	a0,a0,a5
1c009368:	03e55533          	divu	a0,a0,t5
1c00936c:	00351693          	slli	a3,a0,0x3
1c009370:	00551793          	slli	a5,a0,0x5
1c009374:	97b6                	add	a5,a5,a3
1c009376:	40f587b3          	sub	a5,a1,a5
1c00937a:	03e7d7b3          	divu	a5,a5,t5
1c00937e:	8175                	srli	a0,a0,0x1d
1c009380:	96be                	add	a3,a3,a5
1c009382:	00f6b7b3          	sltu	a5,a3,a5
1c009386:	962a                	add	a2,a2,a0
1c009388:	963e                	add	a2,a2,a5
1c00938a:	01f61513          	slli	a0,a2,0x1f
1c00938e:	0016d793          	srli	a5,a3,0x1
1c009392:	0016f593          	andi	a1,a3,1
1c009396:	8fc9                	or	a5,a5,a0
1c009398:	00f586b3          	add	a3,a1,a5
1c00939c:	8205                	srli	a2,a2,0x1
1c00939e:	00b6b7b3          	sltu	a5,a3,a1
1c0093a2:	1e7d                	addi	t3,t3,-1
1c0093a4:	963e                	add	a2,a2,a5
1c0093a6:	fa5e12e3          	bne	t3,t0,1c00934a <pos_libc_prf+0x60c>
1c0093aa:	96c6                	add	a3,a3,a7
1c0093ac:	963a                	add	a2,a2,a4
1c0093ae:	0116b8b3          	sltu	a7,a3,a7
1c0093b2:	9646                	add	a2,a2,a7
1c0093b4:	f00005b7          	lui	a1,0xf0000
1c0093b8:	8df1                	and	a1,a1,a2
1c0093ba:	8736                	mv	a4,a3
1c0093bc:	cdb9                	beqz	a1,1c00941a <pos_libc_prf+0x6dc>
1c0093be:	0689                	addi	a3,a3,2
1c0093c0:	00e6b733          	sltu	a4,a3,a4
1c0093c4:	963a                	add	a2,a2,a4
1c0093c6:	4815                	li	a6,5
1c0093c8:	03065533          	divu	a0,a2,a6
1c0093cc:	00251713          	slli	a4,a0,0x2
1c0093d0:	972a                	add	a4,a4,a0
1c0093d2:	8e19                	sub	a2,a2,a4
1c0093d4:	01d61713          	slli	a4,a2,0x1d
1c0093d8:	0036d593          	srli	a1,a3,0x3
1c0093dc:	8dd9                	or	a1,a1,a4
1c0093de:	0305d5b3          	divu	a1,a1,a6
1c0093e2:	00359613          	slli	a2,a1,0x3
1c0093e6:	00559713          	slli	a4,a1,0x5
1c0093ea:	9732                	add	a4,a4,a2
1c0093ec:	40e68733          	sub	a4,a3,a4
1c0093f0:	03075733          	divu	a4,a4,a6
1c0093f4:	81f5                	srli	a1,a1,0x1d
1c0093f6:	963a                	add	a2,a2,a4
1c0093f8:	00e63733          	sltu	a4,a2,a4
1c0093fc:	95aa                	add	a1,a1,a0
1c0093fe:	00b706b3          	add	a3,a4,a1
1c009402:	01f69593          	slli	a1,a3,0x1f
1c009406:	00165713          	srli	a4,a2,0x1
1c00940a:	8f4d                	or	a4,a4,a1
1c00940c:	8a05                	andi	a2,a2,1
1c00940e:	9732                	add	a4,a4,a2
1c009410:	8285                	srli	a3,a3,0x1
1c009412:	00c73633          	sltu	a2,a4,a2
1c009416:	9636                	add	a2,a2,a3
1c009418:	0305                	addi	t1,t1,1
1c00941a:	001e8993          	addi	s3,t4,1
1c00941e:	06600693          	li	a3,102
1c009422:	85ce                	mv	a1,s3
1c009424:	6add8663          	beq	s11,a3,1c009ad0 <pos_libc_prf+0xd92>
1c009428:	00271693          	slli	a3,a4,0x2
1c00942c:	01e75593          	srli	a1,a4,0x1e
1c009430:	00261513          	slli	a0,a2,0x2
1c009434:	9736                	add	a4,a4,a3
1c009436:	8d4d                	or	a0,a0,a1
1c009438:	962a                	add	a2,a2,a0
1c00943a:	00d735b3          	sltu	a1,a4,a3
1c00943e:	95b2                	add	a1,a1,a2
1c009440:	01f75693          	srli	a3,a4,0x1f
1c009444:	0586                	slli	a1,a1,0x1
1c009446:	8dd5                	or	a1,a1,a3
1c009448:	01c5d693          	srli	a3,a1,0x1c
1c00944c:	03068613          	addi	a2,a3,48
1c009450:	00d036b3          	snez	a3,a3
1c009454:	10000537          	lui	a0,0x10000
1c009458:	40d30333          	sub	t1,t1,a3
1c00945c:	46b2                	lw	a3,12(sp)
1c00945e:	157d                	addi	a0,a0,-1
1c009460:	00ce8023          	sb	a2,0(t4)
1c009464:	0706                	slli	a4,a4,0x1
1c009466:	8de9                	and	a1,a1,a0
1c009468:	64068b63          	beqz	a3,1c009abe <pos_libc_prf+0xd80>
1c00946c:	02e00693          	li	a3,46
1c009470:	00de80a3          	sb	a3,1(t4)
1c009474:	002e8513          	addi	a0,t4,2
1c009478:	020a00e3          	beqz	s4,1c009c98 <pos_libc_prf+0xf5a>
1c00947c:	014509b3          	add	s3,a0,s4
1c009480:	48bd                	li	a7,15
1c009482:	03000e13          	li	t3,48
1c009486:	00271793          	slli	a5,a4,0x2
1c00948a:	01e75813          	srli	a6,a4,0x1e
1c00948e:	00259693          	slli	a3,a1,0x2
1c009492:	00e78633          	add	a2,a5,a4
1c009496:	00d866b3          	or	a3,a6,a3
1c00949a:	96ae                	add	a3,a3,a1
1c00949c:	00f637b3          	sltu	a5,a2,a5
1c0094a0:	97b6                	add	a5,a5,a3
1c0094a2:	0786                	slli	a5,a5,0x1
1c0094a4:	01f65693          	srli	a3,a2,0x1f
1c0094a8:	8fd5                	or	a5,a5,a3
1c0094aa:	01c7d693          	srli	a3,a5,0x1c
1c0094ae:	03068693          	addi	a3,a3,48
1c0094b2:	0505                	addi	a0,a0,1
1c0094b4:	3b105663          	blez	a7,1c009860 <pos_libc_prf+0xb22>
1c0094b8:	10000837          	lui	a6,0x10000
1c0094bc:	187d                	addi	a6,a6,-1
1c0094be:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c0094c2:	18fd                	addi	a7,a7,-1
1c0094c4:	00161713          	slli	a4,a2,0x1
1c0094c8:	0107f5b3          	and	a1,a5,a6
1c0094cc:	faa99de3          	bne	s3,a0,1c009486 <pos_libc_prf+0x748>
1c0094d0:	0c0f9263          	bnez	t6,1c009594 <pos_libc_prf+0x856>
1c0094d4:	fdfdf713          	andi	a4,s11,-33
1c0094d8:	04500693          	li	a3,69
1c0094dc:	02d71963          	bne	a4,a3,1c00950e <pos_libc_prf+0x7d0>
1c0094e0:	87ee                	mv	a5,s11
1c0094e2:	00f98023          	sb	a5,0(s3)
1c0094e6:	6a034763          	bltz	t1,1c009b94 <pos_libc_prf+0xe56>
1c0094ea:	02b00793          	li	a5,43
1c0094ee:	00f980a3          	sb	a5,1(s3)
1c0094f2:	47a9                	li	a5,10
1c0094f4:	02f34733          	div	a4,t1,a5
1c0094f8:	02f367b3          	rem	a5,t1,a5
1c0094fc:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c009500:	03078793          	addi	a5,a5,48
1c009504:	00e98123          	sb	a4,2(s3)
1c009508:	00f981a3          	sb	a5,3(s3)
1c00950c:	0991                	addi	s3,s3,4
1c00950e:	00098023          	sb	zero,0(s3)
1c009512:	419989b3          	sub	s3,s3,s9
1c009516:	48d2                	lw	a7,20(sp)
1c009518:	4662                	lw	a2,24(sp)
1c00951a:	00c8e8b3          	or	a7,a7,a2
1c00951e:	c646                	sw	a7,12(sp)
1c009520:	34089d63          	bnez	a7,1c00987a <pos_libc_prf+0xb3c>
1c009524:	02414703          	lbu	a4,36(sp)
1c009528:	02d00793          	li	a5,45
1c00952c:	34f70763          	beq	a4,a5,1c00987a <pos_libc_prf+0xb3c>
1c009530:	0c800793          	li	a5,200
1c009534:	ab37cbe3          	blt	a5,s3,1c008fea <pos_libc_prf+0x2ac>
1c009538:	9b29c2e3          	blt	s3,s2,1c008edc <pos_libc_prf+0x19e>
1c00953c:	b461                	j	1c008fc4 <pos_libc_prf+0x286>
1c00953e:	0585                	addi	a1,a1,1
1c009540:	00271793          	slli	a5,a4,0x2
1c009544:	01e75e13          	srli	t3,a4,0x1e
1c009548:	00261693          	slli	a3,a2,0x2
1c00954c:	00e788b3          	add	a7,a5,a4
1c009550:	00de66b3          	or	a3,t3,a3
1c009554:	96b2                	add	a3,a3,a2
1c009556:	00f8b7b3          	sltu	a5,a7,a5
1c00955a:	97b6                	add	a5,a5,a3
1c00955c:	0786                	slli	a5,a5,0x1
1c00955e:	01f8d693          	srli	a3,a7,0x1f
1c009562:	8fd5                	or	a5,a5,a3
1c009564:	01c7de13          	srli	t3,a5,0x1c
1c009568:	03000693          	li	a3,48
1c00956c:	00a05c63          	blez	a0,1c009584 <pos_libc_prf+0x846>
1c009570:	00189713          	slli	a4,a7,0x1
1c009574:	100008b7          	lui	a7,0x10000
1c009578:	18fd                	addi	a7,a7,-1
1c00957a:	030e0693          	addi	a3,t3,48
1c00957e:	157d                	addi	a0,a0,-1
1c009580:	0117f633          	and	a2,a5,a7
1c009584:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c009588:	fab99be3          	bne	s3,a1,1c00953e <pos_libc_prf+0x800>
1c00958c:	014809b3          	add	s3,a6,s4
1c009590:	f60f8fe3          	beqz	t6,1c00950e <pos_libc_prf+0x7d0>
1c009594:	03000613          	li	a2,48
1c009598:	a011                	j	1c00959c <pos_libc_prf+0x85e>
1c00959a:	89ba                	mv	s3,a4
1c00959c:	fff9c683          	lbu	a3,-1(s3)
1c0095a0:	fff98713          	addi	a4,s3,-1
1c0095a4:	fec68be3          	beq	a3,a2,1c00959a <pos_libc_prf+0x85c>
1c0095a8:	02e00613          	li	a2,46
1c0095ac:	f2c694e3          	bne	a3,a2,1c0094d4 <pos_libc_prf+0x796>
1c0095b0:	89ba                	mv	s3,a4
1c0095b2:	b70d                	j	1c0094d4 <pos_libc_prf+0x796>
1c0095b4:	06300713          	li	a4,99
1c0095b8:	16ed8863          	beq	s11,a4,1c009728 <pos_libc_prf+0x9ea>
1c0095bc:	0db74363          	blt	a4,s11,1c009682 <pos_libc_prf+0x944>
1c0095c0:	05800713          	li	a4,88
1c0095c4:	28ed9763          	bne	s11,a4,1c009852 <pos_libc_prf+0xb14>
1c0095c8:	48b2                	lw	a7,12(sp)
1c0095ca:	004c0813          	addi	a6,s8,4
1c0095ce:	000c2583          	lw	a1,0(s8)
1c0095d2:	3c088a63          	beqz	a7,1c0099a6 <pos_libc_prf+0xc68>
1c0095d6:	7761                	lui	a4,0xffff8
1c0095d8:	83074713          	xori	a4,a4,-2000
1c0095dc:	02e11223          	sh	a4,36(sp)
1c0095e0:	4889                	li	a7,2
1c0095e2:	02610693          	addi	a3,sp,38
1c0095e6:	8736                	mv	a4,a3
1c0095e8:	4e25                	li	t3,9
1c0095ea:	00f5f613          	andi	a2,a1,15
1c0095ee:	0ff67793          	andi	a5,a2,255
1c0095f2:	03078513          	addi	a0,a5,48
1c0095f6:	8191                	srli	a1,a1,0x4
1c0095f8:	05778793          	addi	a5,a5,87
1c0095fc:	0705                	addi	a4,a4,1
1c0095fe:	06ce6a63          	bltu	t3,a2,1c009672 <pos_libc_prf+0x934>
1c009602:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c009606:	f1f5                	bnez	a1,1c0095ea <pos_libc_prf+0x8ac>
1c009608:	40d709b3          	sub	s3,a4,a3
1c00960c:	0149db63          	ble	s4,s3,1c009622 <pos_libc_prf+0x8e4>
1c009610:	03000613          	li	a2,48
1c009614:	0705                	addi	a4,a4,1
1c009616:	fec70fa3          	sb	a2,-1(a4)
1c00961a:	40d709b3          	sub	s3,a4,a3
1c00961e:	ff49cbe3          	blt	s3,s4,1c009614 <pos_libc_prf+0x8d6>
1c009622:	00070023          	sb	zero,0(a4)
1c009626:	177d                	addi	a4,a4,-1
1c009628:	00e6fe63          	bleu	a4,a3,1c009644 <pos_libc_prf+0x906>
1c00962c:	0006c603          	lbu	a2,0(a3)
1c009630:	00074783          	lbu	a5,0(a4)
1c009634:	00c70023          	sb	a2,0(a4)
1c009638:	00f68023          	sb	a5,0(a3)
1c00963c:	177d                	addi	a4,a4,-1
1c00963e:	0685                	addi	a3,a3,1
1c009640:	fee6e6e3          	bltu	a3,a4,1c00962c <pos_libc_prf+0x8ee>
1c009644:	05800713          	li	a4,88
1c009648:	36ed8263          	beq	s11,a4,1c0099ac <pos_libc_prf+0xc6e>
1c00964c:	46b2                	lw	a3,12(sp)
1c00964e:	99c6                	add	s3,s3,a7
1c009650:	c299                	beqz	a3,1c009656 <pos_libc_prf+0x918>
1c009652:	4709                	li	a4,2
1c009654:	c63a                	sw	a4,12(sp)
1c009656:	57fd                	li	a5,-1
1c009658:	3afa0263          	beq	s4,a5,1c0099fc <pos_libc_prf+0xcbe>
1c00965c:	0c800793          	li	a5,200
1c009660:	9937c5e3          	blt	a5,s3,1c008fea <pos_libc_prf+0x2ac>
1c009664:	02000793          	li	a5,32
1c009668:	c83e                	sw	a5,16(sp)
1c00966a:	8c42                	mv	s8,a6
1c00966c:	8729c8e3          	blt	s3,s2,1c008edc <pos_libc_prf+0x19e>
1c009670:	ba91                	j	1c008fc4 <pos_libc_prf+0x286>
1c009672:	fef70fa3          	sb	a5,-1(a4)
1c009676:	f9b5                	bnez	a1,1c0095ea <pos_libc_prf+0x8ac>
1c009678:	bf41                	j	1c009608 <pos_libc_prf+0x8ca>
1c00967a:	06900713          	li	a4,105
1c00967e:	1ced9a63          	bne	s11,a4,1c009852 <pos_libc_prf+0xb14>
1c009682:	000c2583          	lw	a1,0(s8)
1c009686:	0c11                	addi	s8,s8,4
1c009688:	3805c863          	bltz	a1,1c009a18 <pos_libc_prf+0xcda>
1c00968c:	48d2                	lw	a7,20(sp)
1c00968e:	872e                	mv	a4,a1
1c009690:	36089d63          	bnez	a7,1c009a0a <pos_libc_prf+0xccc>
1c009694:	4662                	lw	a2,24(sp)
1c009696:	87e6                	mv	a5,s9
1c009698:	c619                	beqz	a2,1c0096a6 <pos_libc_prf+0x968>
1c00969a:	02000793          	li	a5,32
1c00969e:	02f10223          	sb	a5,36(sp)
1c0096a2:	02510793          	addi	a5,sp,37
1c0096a6:	89be                	mv	s3,a5
1c0096a8:	4629                	li	a2,10
1c0096aa:	02c776b3          	remu	a3,a4,a2
1c0096ae:	02c75733          	divu	a4,a4,a2
1c0096b2:	0985                	addi	s3,s3,1
1c0096b4:	03068693          	addi	a3,a3,48
1c0096b8:	fed98fa3          	sb	a3,-1(s3)
1c0096bc:	f77d                	bnez	a4,1c0096aa <pos_libc_prf+0x96c>
1c0096be:	40f98733          	sub	a4,s3,a5
1c0096c2:	01475b63          	ble	s4,a4,1c0096d8 <pos_libc_prf+0x99a>
1c0096c6:	03000693          	li	a3,48
1c0096ca:	0985                	addi	s3,s3,1
1c0096cc:	fed98fa3          	sb	a3,-1(s3)
1c0096d0:	40f98733          	sub	a4,s3,a5
1c0096d4:	ff474be3          	blt	a4,s4,1c0096ca <pos_libc_prf+0x98c>
1c0096d8:	00098023          	sb	zero,0(s3)
1c0096dc:	fff98713          	addi	a4,s3,-1
1c0096e0:	00e7fe63          	bleu	a4,a5,1c0096fc <pos_libc_prf+0x9be>
1c0096e4:	0007c603          	lbu	a2,0(a5)
1c0096e8:	00074683          	lbu	a3,0(a4)
1c0096ec:	00c70023          	sb	a2,0(a4)
1c0096f0:	00d78023          	sb	a3,0(a5)
1c0096f4:	177d                	addi	a4,a4,-1
1c0096f6:	0785                	addi	a5,a5,1
1c0096f8:	fee7e6e3          	bltu	a5,a4,1c0096e4 <pos_libc_prf+0x9a6>
1c0096fc:	46d2                	lw	a3,20(sp)
1c0096fe:	4762                	lw	a4,24(sp)
1c009700:	419989b3          	sub	s3,s3,s9
1c009704:	8ed9                	or	a3,a3,a4
1c009706:	c636                	sw	a3,12(sp)
1c009708:	e299                	bnez	a3,1c00970e <pos_libc_prf+0x9d0>
1c00970a:	81fd                	srli	a1,a1,0x1f
1c00970c:	c62e                	sw	a1,12(sp)
1c00970e:	57fd                	li	a5,-1
1c009710:	e2fa00e3          	beq	s4,a5,1c009530 <pos_libc_prf+0x7f2>
1c009714:	0c800793          	li	a5,200
1c009718:	8d37c9e3          	blt	a5,s3,1c008fea <pos_libc_prf+0x2ac>
1c00971c:	02000793          	li	a5,32
1c009720:	c83e                	sw	a5,16(sp)
1c009722:	fb29cd63          	blt	s3,s2,1c008edc <pos_libc_prf+0x19e>
1c009726:	b879                	j	1c008fc4 <pos_libc_prf+0x286>
1c009728:	000c2783          	lw	a5,0(s8)
1c00972c:	020102a3          	sb	zero,37(sp)
1c009730:	02f10223          	sb	a5,36(sp)
1c009734:	0c11                	addi	s8,s8,4
1c009736:	4985                	li	s3,1
1c009738:	f9eff06f          	j	1c008ed6 <pos_libc_prf+0x198>
1c00973c:	000c2703          	lw	a4,0(s8)
1c009740:	87e6                	mv	a5,s9
1c009742:	0c11                	addi	s8,s8,4
1c009744:	4629                	li	a2,10
1c009746:	02c776b3          	remu	a3,a4,a2
1c00974a:	02c75733          	divu	a4,a4,a2
1c00974e:	0785                	addi	a5,a5,1
1c009750:	03068693          	addi	a3,a3,48
1c009754:	fed78fa3          	sb	a3,-1(a5)
1c009758:	f77d                	bnez	a4,1c009746 <pos_libc_prf+0xa08>
1c00975a:	419789b3          	sub	s3,a5,s9
1c00975e:	0149db63          	ble	s4,s3,1c009774 <pos_libc_prf+0xa36>
1c009762:	03000713          	li	a4,48
1c009766:	0785                	addi	a5,a5,1
1c009768:	fee78fa3          	sb	a4,-1(a5)
1c00976c:	419789b3          	sub	s3,a5,s9
1c009770:	ff49cbe3          	blt	s3,s4,1c009766 <pos_libc_prf+0xa28>
1c009774:	00078023          	sb	zero,0(a5)
1c009778:	17fd                	addi	a5,a5,-1
1c00977a:	00fcff63          	bleu	a5,s9,1c009798 <pos_libc_prf+0xa5a>
1c00977e:	8766                	mv	a4,s9
1c009780:	00074603          	lbu	a2,0(a4)
1c009784:	0007c683          	lbu	a3,0(a5)
1c009788:	00c78023          	sb	a2,0(a5)
1c00978c:	00d70023          	sb	a3,0(a4)
1c009790:	17fd                	addi	a5,a5,-1
1c009792:	0705                	addi	a4,a4,1
1c009794:	fef766e3          	bltu	a4,a5,1c009780 <pos_libc_prf+0xa42>
1c009798:	57fd                	li	a5,-1
1c00979a:	0cfa0a63          	beq	s4,a5,1c00986e <pos_libc_prf+0xb30>
1c00979e:	0c800793          	li	a5,200
1c0097a2:	8537c4e3          	blt	a5,s3,1c008fea <pos_libc_prf+0x2ac>
1c0097a6:	02000813          	li	a6,32
1c0097aa:	c602                	sw	zero,12(sp)
1c0097ac:	c842                	sw	a6,16(sp)
1c0097ae:	ba45                	j	1c00915e <pos_libc_prf+0x420>
1c0097b0:	77e1                	lui	a5,0xffff8
1c0097b2:	8307c793          	xori	a5,a5,-2000
1c0097b6:	02610713          	addi	a4,sp,38
1c0097ba:	000c2603          	lw	a2,0(s8)
1c0097be:	02f11223          	sh	a5,36(sp)
1c0097c2:	0c11                	addi	s8,s8,4
1c0097c4:	87ba                	mv	a5,a4
1c0097c6:	4825                	li	a6,9
1c0097c8:	00f67593          	andi	a1,a2,15
1c0097cc:	0ff5f693          	andi	a3,a1,255
1c0097d0:	03068513          	addi	a0,a3,48
1c0097d4:	8211                	srli	a2,a2,0x4
1c0097d6:	05768693          	addi	a3,a3,87
1c0097da:	0785                	addi	a5,a5,1
1c0097dc:	06b86163          	bltu	a6,a1,1c00983e <pos_libc_prf+0xb00>
1c0097e0:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c0097e4:	f275                	bnez	a2,1c0097c8 <pos_libc_prf+0xa8a>
1c0097e6:	40e789b3          	sub	s3,a5,a4
1c0097ea:	469d                	li	a3,7
1c0097ec:	0136cb63          	blt	a3,s3,1c009802 <pos_libc_prf+0xac4>
1c0097f0:	03000613          	li	a2,48
1c0097f4:	0785                	addi	a5,a5,1
1c0097f6:	fec78fa3          	sb	a2,-1(a5)
1c0097fa:	40e789b3          	sub	s3,a5,a4
1c0097fe:	ff36dbe3          	ble	s3,a3,1c0097f4 <pos_libc_prf+0xab6>
1c009802:	00078023          	sb	zero,0(a5)
1c009806:	17fd                	addi	a5,a5,-1
1c009808:	00f77e63          	bleu	a5,a4,1c009824 <pos_libc_prf+0xae6>
1c00980c:	00074603          	lbu	a2,0(a4)
1c009810:	0007c683          	lbu	a3,0(a5)
1c009814:	00c78023          	sb	a2,0(a5)
1c009818:	00d70023          	sb	a3,0(a4)
1c00981c:	17fd                	addi	a5,a5,-1
1c00981e:	0705                	addi	a4,a4,1
1c009820:	fef766e3          	bltu	a4,a5,1c00980c <pos_libc_prf+0xace>
1c009824:	57fd                	li	a5,-1
1c009826:	0989                	addi	s3,s3,2
1c009828:	04fa0363          	beq	s4,a5,1c00986e <pos_libc_prf+0xb30>
1c00982c:	0c800793          	li	a5,200
1c009830:	fb37cd63          	blt	a5,s3,1c008fea <pos_libc_prf+0x2ac>
1c009834:	02000893          	li	a7,32
1c009838:	c602                	sw	zero,12(sp)
1c00983a:	c846                	sw	a7,16(sp)
1c00983c:	b20d                	j	1c00915e <pos_libc_prf+0x420>
1c00983e:	fed78fa3          	sb	a3,-1(a5)
1c009842:	f259                	bnez	a2,1c0097c8 <pos_libc_prf+0xa8a>
1c009844:	b74d                	j	1c0097e6 <pos_libc_prf+0xaa8>
1c009846:	000c2783          	lw	a5,0(s8)
1c00984a:	0c11                	addi	s8,s8,4
1c00984c:	c380                	sw	s0,0(a5)
1c00984e:	d36ff06f          	j	1c008d84 <pos_libc_prf+0x46>
1c009852:	0c800713          	li	a4,200
1c009856:	d3b75763          	ble	s11,a4,1c008d84 <pos_libc_prf+0x46>
1c00985a:	547d                	li	s0,-1
1c00985c:	d4cff06f          	j	1c008da8 <pos_libc_prf+0x6a>
1c009860:	ffc50fa3          	sb	t3,-1(a0)
1c009864:	c2a991e3          	bne	s3,a0,1c009486 <pos_libc_prf+0x748>
1c009868:	c60f86e3          	beqz	t6,1c0094d4 <pos_libc_prf+0x796>
1c00986c:	b325                	j	1c009594 <pos_libc_prf+0x856>
1c00986e:	0c800793          	li	a5,200
1c009872:	f737cc63          	blt	a5,s3,1c008fea <pos_libc_prf+0x2ac>
1c009876:	c602                	sw	zero,12(sp)
1c009878:	b0dd                	j	1c00915e <pos_libc_prf+0x420>
1c00987a:	0c800793          	li	a5,200
1c00987e:	f737c663          	blt	a5,s3,1c008fea <pos_libc_prf+0x2ac>
1c009882:	4705                	li	a4,1
1c009884:	c63a                	sw	a4,12(sp)
1c009886:	b8e1                	j	1c00915e <pos_libc_prf+0x420>
1c009888:	41390a33          	sub	s4,s2,s3
1c00988c:	00198613          	addi	a2,s3,1
1c009890:	85e6                	mv	a1,s9
1c009892:	014c8533          	add	a0,s9,s4
1c009896:	a72ff0ef          	jal	ra,1c008b08 <memmove>
1c00989a:	46c2                	lw	a3,16(sp)
1c00989c:	02000793          	li	a5,32
1c0098a0:	30f68163          	beq	a3,a5,1c009ba2 <pos_libc_prf+0xe64>
1c0098a4:	4732                	lw	a4,12(sp)
1c0098a6:	89ca                	mv	s3,s2
1c0098a8:	9a3a                	add	s4,s4,a4
1c0098aa:	f1475d63          	ble	s4,a4,1c008fc4 <pos_libc_prf+0x286>
1c0098ae:	4832                	lw	a6,12(sp)
1c0098b0:	4715                	li	a4,5
1c0098b2:	010c87b3          	add	a5,s9,a6
1c0098b6:	40f007b3          	neg	a5,a5
1c0098ba:	8b8d                	andi	a5,a5,3
1c0098bc:	00378693          	addi	a3,a5,3
1c0098c0:	410a05b3          	sub	a1,s4,a6
1c0098c4:	00e6f363          	bleu	a4,a3,1c0098ca <pos_libc_prf+0xb8c>
1c0098c8:	4695                	li	a3,5
1c0098ca:	48b2                	lw	a7,12(sp)
1c0098cc:	fffa0713          	addi	a4,s4,-1
1c0098d0:	41170733          	sub	a4,a4,a7
1c0098d4:	06d76b63          	bltu	a4,a3,1c00994a <pos_libc_prf+0xc0c>
1c0098d8:	86c6                	mv	a3,a7
1c0098da:	cb9d                	beqz	a5,1c009910 <pos_libc_prf+0xbd2>
1c0098dc:	46c2                	lw	a3,16(sp)
1c0098de:	1988                	addi	a0,sp,240
1c0098e0:	01150733          	add	a4,a0,a7
1c0098e4:	f2d70a23          	sb	a3,-204(a4)
1c0098e8:	4705                	li	a4,1
1c0098ea:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c0098ee:	02e78163          	beq	a5,a4,1c009910 <pos_libc_prf+0xbd2>
1c0098f2:	4742                	lw	a4,16(sp)
1c0098f4:	96aa                	add	a3,a3,a0
1c0098f6:	f2e68a23          	sb	a4,-204(a3)
1c0098fa:	470d                	li	a4,3
1c0098fc:	00288693          	addi	a3,a7,2
1c009900:	00e79863          	bne	a5,a4,1c009910 <pos_libc_prf+0xbd2>
1c009904:	4842                	lw	a6,16(sp)
1c009906:	96aa                	add	a3,a3,a0
1c009908:	f3068a23          	sb	a6,-204(a3)
1c00990c:	00388693          	addi	a3,a7,3
1c009910:	48c2                	lw	a7,16(sp)
1c009912:	4832                	lw	a6,12(sp)
1c009914:	00889713          	slli	a4,a7,0x8
1c009918:	01089513          	slli	a0,a7,0x10
1c00991c:	00e8e733          	or	a4,a7,a4
1c009920:	8d9d                	sub	a1,a1,a5
1c009922:	01889613          	slli	a2,a7,0x18
1c009926:	8f49                	or	a4,a4,a0
1c009928:	97c2                	add	a5,a5,a6
1c00992a:	8f51                	or	a4,a4,a2
1c00992c:	0025d513          	srli	a0,a1,0x2
1c009930:	97e6                	add	a5,a5,s9
1c009932:	4601                	li	a2,0
1c009934:	c398                	sw	a4,0(a5)
1c009936:	0605                	addi	a2,a2,1
1c009938:	0791                	addi	a5,a5,4
1c00993a:	fea66de3          	bltu	a2,a0,1c009934 <pos_libc_prf+0xbf6>
1c00993e:	ffc5f793          	andi	a5,a1,-4
1c009942:	96be                	add	a3,a3,a5
1c009944:	c636                	sw	a3,12(sp)
1c009946:	e6b78e63          	beq	a5,a1,1c008fc2 <pos_libc_prf+0x284>
1c00994a:	46b2                	lw	a3,12(sp)
1c00994c:	0f010893          	addi	a7,sp,240
1c009950:	4742                	lw	a4,16(sp)
1c009952:	00d887b3          	add	a5,a7,a3
1c009956:	f2e78a23          	sb	a4,-204(a5)
1c00995a:	00168793          	addi	a5,a3,1
1c00995e:	e747d263          	ble	s4,a5,1c008fc2 <pos_libc_prf+0x284>
1c009962:	97c6                	add	a5,a5,a7
1c009964:	f2e78a23          	sb	a4,-204(a5)
1c009968:	00268793          	addi	a5,a3,2
1c00996c:	e547db63          	ble	s4,a5,1c008fc2 <pos_libc_prf+0x284>
1c009970:	97c6                	add	a5,a5,a7
1c009972:	f2e78a23          	sb	a4,-204(a5)
1c009976:	00368793          	addi	a5,a3,3
1c00997a:	e547d463          	ble	s4,a5,1c008fc2 <pos_libc_prf+0x284>
1c00997e:	97c6                	add	a5,a5,a7
1c009980:	f2e78a23          	sb	a4,-204(a5)
1c009984:	00468793          	addi	a5,a3,4
1c009988:	e347dd63          	ble	s4,a5,1c008fc2 <pos_libc_prf+0x284>
1c00998c:	97c6                	add	a5,a5,a7
1c00998e:	f2e78a23          	sb	a4,-204(a5)
1c009992:	00568a93          	addi	s5,a3,5
1c009996:	e34ad663          	ble	s4,s5,1c008fc2 <pos_libc_prf+0x284>
1c00999a:	9ac6                	add	s5,s5,a7
1c00999c:	f2ea8a23          	sb	a4,-204(s5)
1c0099a0:	89ca                	mv	s3,s2
1c0099a2:	e22ff06f          	j	1c008fc4 <pos_libc_prf+0x286>
1c0099a6:	4881                	li	a7,0
1c0099a8:	1054                	addi	a3,sp,36
1c0099aa:	b935                	j	1c0095e6 <pos_libc_prf+0x8a8>
1c0099ac:	02414783          	lbu	a5,36(sp)
1c0099b0:	1058                	addi	a4,sp,36
1c0099b2:	46e5                	li	a3,25
1c0099b4:	c8078ce3          	beqz	a5,1c00964c <pos_libc_prf+0x90e>
1c0099b8:	fe078613          	addi	a2,a5,-32
1c0099bc:	f9f78793          	addi	a5,a5,-97
1c0099c0:	0ff7f793          	andi	a5,a5,255
1c0099c4:	00f6e963          	bltu	a3,a5,1c0099d6 <pos_libc_prf+0xc98>
1c0099c8:	00c70023          	sb	a2,0(a4)
1c0099cc:	0705                	addi	a4,a4,1
1c0099ce:	00074783          	lbu	a5,0(a4)
1c0099d2:	f3fd                	bnez	a5,1c0099b8 <pos_libc_prf+0xc7a>
1c0099d4:	b9a5                	j	1c00964c <pos_libc_prf+0x90e>
1c0099d6:	0705                	addi	a4,a4,1
1c0099d8:	00074783          	lbu	a5,0(a4)
1c0099dc:	fff1                	bnez	a5,1c0099b8 <pos_libc_prf+0xc7a>
1c0099de:	b1bd                	j	1c00964c <pos_libc_prf+0x90e>
1c0099e0:	47d2                	lw	a5,20(sp)
1c0099e2:	20078263          	beqz	a5,1c009be6 <pos_libc_prf+0xea8>
1c0099e6:	02b00713          	li	a4,43
1c0099ea:	02e10223          	sb	a4,36(sp)
1c0099ee:	02510e93          	addi	t4,sp,37
1c0099f2:	4301                	li	t1,0
1c0099f4:	4501                	li	a0,0
1c0099f6:	4681                	li	a3,0
1c0099f8:	4581                	li	a1,0
1c0099fa:	b8d5                	j	1c0092ee <pos_libc_prf+0x5b0>
1c0099fc:	0c800793          	li	a5,200
1c009a00:	df37c563          	blt	a5,s3,1c008fea <pos_libc_prf+0x2ac>
1c009a04:	8c42                	mv	s8,a6
1c009a06:	f58ff06f          	j	1c00915e <pos_libc_prf+0x420>
1c009a0a:	02b00793          	li	a5,43
1c009a0e:	02f10223          	sb	a5,36(sp)
1c009a12:	02510793          	addi	a5,sp,37
1c009a16:	b941                	j	1c0096a6 <pos_libc_prf+0x968>
1c009a18:	02d00793          	li	a5,45
1c009a1c:	02f10223          	sb	a5,36(sp)
1c009a20:	800007b7          	lui	a5,0x80000
1c009a24:	22f58363          	beq	a1,a5,1c009c4a <pos_libc_prf+0xf0c>
1c009a28:	40b00733          	neg	a4,a1
1c009a2c:	02510793          	addi	a5,sp,37
1c009a30:	b99d                	j	1c0096a6 <pos_libc_prf+0x968>
1c009a32:	47b2                	lw	a5,12(sp)
1c009a34:	4f81                	li	t6,0
1c009a36:	e399                	bnez	a5,1c009a3c <pos_libc_prf+0xcfe>
1c009a38:	01403fb3          	snez	t6,s4
1c009a3c:	56f5                	li	a3,-3
1c009a3e:	001a0e13          	addi	t3,s4,1
1c009a42:	00d34463          	blt	t1,a3,1c009a4a <pos_libc_prf+0xd0c>
1c009a46:	166e5d63          	ble	t1,t3,1c009bc0 <pos_libc_prf+0xe82>
1c009a4a:	46c1                	li	a3,16
1c009a4c:	01c6d363          	ble	t3,a3,1c009a52 <pos_libc_prf+0xd14>
1c009a50:	4e41                	li	t3,16
1c009a52:	06700693          	li	a3,103
1c009a56:	1e7d                	addi	t3,t3,-1
1c009a58:	1add8963          	beq	s11,a3,1c009c0a <pos_libc_prf+0xecc>
1c009a5c:	04500d93          	li	s11,69
1c009a60:	b0c5                	j	1c009340 <pos_libc_prf+0x602>
1c009a62:	020102a3          	sb	zero,37(sp)
1c009a66:	57fd                	li	a5,-1
1c009a68:	89ba                	mv	s3,a4
1c009a6a:	8c2a                	mv	s8,a0
1c009a6c:	c6fa0563          	beq	s4,a5,1c008ed6 <pos_libc_prf+0x198>
1c009a70:	02000813          	li	a6,32
1c009a74:	c842                	sw	a6,16(sp)
1c009a76:	c60ff06f          	j	1c008ed6 <pos_libc_prf+0x198>
1c009a7a:	89b6                	mv	s3,a3
1c009a7c:	bdeff06f          	j	1c008e5a <pos_libc_prf+0x11c>
1c009a80:	8766                	mv	a4,s9
1c009a82:	1c084c63          	bltz	a6,1c009c5a <pos_libc_prf+0xf1c>
1c009a86:	8e55                	or	a2,a2,a3
1c009a88:	fbfd8793          	addi	a5,s11,-65
1c009a8c:	00370993          	addi	s3,a4,3
1c009a90:	46e5                	li	a3,25
1c009a92:	10061a63          	bnez	a2,1c009ba6 <pos_libc_prf+0xe68>
1c009a96:	16f6ee63          	bltu	a3,a5,1c009c12 <pos_libc_prf+0xed4>
1c009a9a:	6795                	lui	a5,0x5
1c009a9c:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c009aa0:	00f71023          	sh	a5,0(a4)
1c009aa4:	04600793          	li	a5,70
1c009aa8:	00f70123          	sb	a5,2(a4)
1c009aac:	000701a3          	sb	zero,3(a4)
1c009ab0:	419989b3          	sub	s3,s3,s9
1c009ab4:	b48d                	j	1c009516 <pos_libc_prf+0x7d8>
1c009ab6:	85e6                	mv	a1,s9
1c009ab8:	8766                	mv	a4,s9
1c009aba:	e38ff06f          	j	1c0090f2 <pos_libc_prf+0x3b4>
1c009abe:	a00a09e3          	beqz	s4,1c0094d0 <pos_libc_prf+0x792>
1c009ac2:	02e00693          	li	a3,46
1c009ac6:	002e8513          	addi	a0,t4,2
1c009aca:	00de80a3          	sb	a3,1(t4)
1c009ace:	b27d                	j	1c00947c <pos_libc_prf+0x73e>
1c009ad0:	14605b63          	blez	t1,1c009c26 <pos_libc_prf+0xee8>
1c009ad4:	006e89b3          	add	s3,t4,t1
1c009ad8:	4541                	li	a0,16
1c009ada:	03000893          	li	a7,48
1c009ade:	00271793          	slli	a5,a4,0x2
1c009ae2:	01e75313          	srli	t1,a4,0x1e
1c009ae6:	00261693          	slli	a3,a2,0x2
1c009aea:	00e78833          	add	a6,a5,a4
1c009aee:	00d366b3          	or	a3,t1,a3
1c009af2:	96b2                	add	a3,a3,a2
1c009af4:	00f837b3          	sltu	a5,a6,a5
1c009af8:	97b6                	add	a5,a5,a3
1c009afa:	0786                	slli	a5,a5,0x1
1c009afc:	01f85693          	srli	a3,a6,0x1f
1c009b00:	8fd5                	or	a5,a5,a3
1c009b02:	01c7d693          	srli	a3,a5,0x1c
1c009b06:	03068693          	addi	a3,a3,48
1c009b0a:	02a05063          	blez	a0,1c009b2a <pos_libc_prf+0xdec>
1c009b0e:	00181713          	slli	a4,a6,0x1
1c009b12:	10000837          	lui	a6,0x10000
1c009b16:	187d                	addi	a6,a6,-1
1c009b18:	fed58fa3          	sb	a3,-1(a1)
1c009b1c:	157d                	addi	a0,a0,-1
1c009b1e:	0107f633          	and	a2,a5,a6
1c009b22:	00b98863          	beq	s3,a1,1c009b32 <pos_libc_prf+0xdf4>
1c009b26:	0585                	addi	a1,a1,1
1c009b28:	bf5d                	j	1c009ade <pos_libc_prf+0xda0>
1c009b2a:	ff158fa3          	sb	a7,-1(a1)
1c009b2e:	feb99ce3          	bne	s3,a1,1c009b26 <pos_libc_prf+0xde8>
1c009b32:	4301                	li	t1,0
1c009b34:	48b2                	lw	a7,12(sp)
1c009b36:	00089463          	bnez	a7,1c009b3e <pos_libc_prf+0xe00>
1c009b3a:	a40a0be3          	beqz	s4,1c009590 <pos_libc_prf+0x852>
1c009b3e:	00198813          	addi	a6,s3,1
1c009b42:	001a0693          	addi	a3,s4,1
1c009b46:	02e00593          	li	a1,46
1c009b4a:	00b98023          	sb	a1,0(s3)
1c009b4e:	99b6                	add	s3,s3,a3
1c009b50:	85c2                	mv	a1,a6
1c009b52:	03000693          	li	a3,48
1c009b56:	a2b98be3          	beq	s3,a1,1c00958c <pos_libc_prf+0x84e>
1c009b5a:	0585                	addi	a1,a1,1
1c009b5c:	9e0302e3          	beqz	t1,1c009540 <pos_libc_prf+0x802>
1c009b60:	fed58fa3          	sb	a3,-1(a1)
1c009b64:	0305                	addi	t1,t1,1
1c009b66:	bfc5                	j	1c009b56 <pos_libc_prf+0xe18>
1c009b68:	4a19                	li	s4,6
1c009b6a:	fadd9b63          	bne	s11,a3,1c009320 <pos_libc_prf+0x5e2>
1c009b6e:	46b2                	lw	a3,12(sp)
1c009b70:	57f5                	li	a5,-3
1c009b72:	0016cf93          	xori	t6,a3,1
1c009b76:	08f35663          	ble	a5,t1,1c009c02 <pos_libc_prf+0xec4>
1c009b7a:	06500d93          	li	s11,101
1c009b7e:	4e19                	li	t3,6
1c009b80:	fc0ff06f          	j	1c009340 <pos_libc_prf+0x602>
1c009b84:	0c800793          	li	a5,200
1c009b88:	c737c163          	blt	a5,s3,1c008fea <pos_libc_prf+0x2ac>
1c009b8c:	8c2a                	mv	s8,a0
1c009b8e:	c602                	sw	zero,12(sp)
1c009b90:	dceff06f          	j	1c00915e <pos_libc_prf+0x420>
1c009b94:	02d00793          	li	a5,45
1c009b98:	40600333          	neg	t1,t1
1c009b9c:	00f980a3          	sb	a5,1(s3)
1c009ba0:	ba89                	j	1c0094f2 <pos_libc_prf+0x7b4>
1c009ba2:	c602                	sw	zero,12(sp)
1c009ba4:	b329                	j	1c0098ae <pos_libc_prf+0xb70>
1c009ba6:	0cf6ed63          	bltu	a3,a5,1c009c80 <pos_libc_prf+0xf42>
1c009baa:	6791                	lui	a5,0x4
1c009bac:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c009bb0:	00f71023          	sh	a5,0(a4)
1c009bb4:	04e00793          	li	a5,78
1c009bb8:	00f70123          	sb	a5,2(a4)
1c009bbc:	bdc5                	j	1c009aac <pos_libc_prf+0xd6e>
1c009bbe:	4f81                	li	t6,0
1c009bc0:	014307b3          	add	a5,t1,s4
1c009bc4:	0807c863          	bltz	a5,1c009c54 <pos_libc_prf+0xf16>
1c009bc8:	46c1                	li	a3,16
1c009bca:	8e3e                	mv	t3,a5
1c009bcc:	00f6d363          	ble	a5,a3,1c009bd2 <pos_libc_prf+0xe94>
1c009bd0:	4e41                	li	t3,16
1c009bd2:	1e7d                	addi	t3,t3,-1
1c009bd4:	06600d93          	li	s11,102
1c009bd8:	f6079463          	bnez	a5,1c009340 <pos_libc_prf+0x602>
1c009bdc:	4681                	li	a3,0
1c009bde:	08000637          	lui	a2,0x8000
1c009be2:	fc8ff06f          	j	1c0093aa <pos_libc_prf+0x66c>
1c009be6:	47e2                	lw	a5,24(sp)
1c009be8:	c7d5                	beqz	a5,1c009c94 <pos_libc_prf+0xf56>
1c009bea:	02000713          	li	a4,32
1c009bee:	02e10223          	sb	a4,36(sp)
1c009bf2:	02510e93          	addi	t4,sp,37
1c009bf6:	4301                	li	t1,0
1c009bf8:	4501                	li	a0,0
1c009bfa:	4681                	li	a3,0
1c009bfc:	4581                	li	a1,0
1c009bfe:	ef0ff06f          	j	1c0092ee <pos_libc_prf+0x5b0>
1c009c02:	479d                	li	a5,7
1c009c04:	fa67dee3          	ble	t1,a5,1c009bc0 <pos_libc_prf+0xe82>
1c009c08:	4e19                	li	t3,6
1c009c0a:	06500d93          	li	s11,101
1c009c0e:	f32ff06f          	j	1c009340 <pos_libc_prf+0x602>
1c009c12:	679d                	lui	a5,0x7
1c009c14:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c009c18:	00f71023          	sh	a5,0(a4)
1c009c1c:	06600793          	li	a5,102
1c009c20:	00f70123          	sb	a5,2(a4)
1c009c24:	b561                	j	1c009aac <pos_libc_prf+0xd6e>
1c009c26:	03000693          	li	a3,48
1c009c2a:	00de8023          	sb	a3,0(t4)
1c009c2e:	4541                	li	a0,16
1c009c30:	b711                	j	1c009b34 <pos_libc_prf+0xdf6>
1c009c32:	48e2                	lw	a7,24(sp)
1c009c34:	8ee6                	mv	t4,s9
1c009c36:	dc088e63          	beqz	a7,1c009212 <pos_libc_prf+0x4d4>
1c009c3a:	02000713          	li	a4,32
1c009c3e:	02e10223          	sb	a4,36(sp)
1c009c42:	02510e93          	addi	t4,sp,37
1c009c46:	dccff06f          	j	1c009212 <pos_libc_prf+0x4d4>
1c009c4a:	80000737          	lui	a4,0x80000
1c009c4e:	02510793          	addi	a5,sp,37
1c009c52:	bc91                	j	1c0096a6 <pos_libc_prf+0x968>
1c009c54:	06600d93          	li	s11,102
1c009c58:	b751                	j	1c009bdc <pos_libc_prf+0xe9e>
1c009c5a:	02d00713          	li	a4,45
1c009c5e:	02e10223          	sb	a4,36(sp)
1c009c62:	02510713          	addi	a4,sp,37
1c009c66:	b505                	j	1c009a86 <pos_libc_prf+0xd48>
1c009c68:	a40a5d63          	bgez	s4,1c008ec2 <pos_libc_prf+0x184>
1c009c6c:	a62ff06f          	j	1c008ece <pos_libc_prf+0x190>
1c009c70:	02d00713          	li	a4,45
1c009c74:	02e10223          	sb	a4,36(sp)
1c009c78:	02510e93          	addi	t4,sp,37
1c009c7c:	d96ff06f          	j	1c009212 <pos_libc_prf+0x4d4>
1c009c80:	6799                	lui	a5,0x6
1c009c82:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c009c86:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c009c8a:	06e00793          	li	a5,110
1c009c8e:	00f70123          	sb	a5,2(a4)
1c009c92:	bd29                	j	1c009aac <pos_libc_prf+0xd6e>
1c009c94:	8ee6                	mv	t4,s9
1c009c96:	b785                	j	1c009bf6 <pos_libc_prf+0xeb8>
1c009c98:	89aa                	mv	s3,a0
1c009c9a:	820f8de3          	beqz	t6,1c0094d4 <pos_libc_prf+0x796>
1c009c9e:	b8dd                	j	1c009594 <pos_libc_prf+0x856>

1c009ca0 <pos_init_start>:
1c009ca0:	1141                	addi	sp,sp,-16
1c009ca2:	c422                	sw	s0,8(sp)
1c009ca4:	1c000437          	lui	s0,0x1c000
1c009ca8:	c606                	sw	ra,12(sp)
1c009caa:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009cae:	e1cfe0ef          	jal	ra,1c0082ca <pos_soc_init>
1c009cb2:	2275                	jal	1c009e5e <pos_irq_init>
1c009cb4:	2ae1                	jal	1c009e8c <pos_soc_event_init>
1c009cb6:	2a31                	jal	1c009dd2 <pos_allocs_init>
1c009cb8:	405c                	lw	a5,4(s0)
1c009cba:	c791                	beqz	a5,1c009cc6 <pos_init_start+0x26>
1c009cbc:	0411                	addi	s0,s0,4
1c009cbe:	0411                	addi	s0,s0,4
1c009cc0:	9782                	jalr	a5
1c009cc2:	401c                	lw	a5,0(s0)
1c009cc4:	ffed                	bnez	a5,1c009cbe <pos_init_start+0x1e>
1c009cc6:	842ff0ef          	jal	ra,1c008d08 <pos_io_start>
1c009cca:	300467f3          	csrrsi	a5,mstatus,8
1c009cce:	40b2                	lw	ra,12(sp)
1c009cd0:	4422                	lw	s0,8(sp)
1c009cd2:	0141                	addi	sp,sp,16
1c009cd4:	8082                	ret

1c009cd6 <pos_init_stop>:
1c009cd6:	1141                	addi	sp,sp,-16
1c009cd8:	c422                	sw	s0,8(sp)
1c009cda:	1c000437          	lui	s0,0x1c000
1c009cde:	c606                	sw	ra,12(sp)
1c009ce0:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009ce4:	828ff0ef          	jal	ra,1c008d0c <pos_io_stop>
1c009ce8:	405c                	lw	a5,4(s0)
1c009cea:	c791                	beqz	a5,1c009cf6 <pos_init_stop+0x20>
1c009cec:	0411                	addi	s0,s0,4
1c009cee:	0411                	addi	s0,s0,4
1c009cf0:	9782                	jalr	a5
1c009cf2:	401c                	lw	a5,0(s0)
1c009cf4:	ffed                	bnez	a5,1c009cee <pos_init_stop+0x18>
1c009cf6:	40b2                	lw	ra,12(sp)
1c009cf8:	4422                	lw	s0,8(sp)
1c009cfa:	0141                	addi	sp,sp,16
1c009cfc:	8082                	ret

1c009cfe <pos_alloc_init>:
1c009cfe:	00758793          	addi	a5,a1,7
1c009d02:	9be1                	andi	a5,a5,-8
1c009d04:	40b785b3          	sub	a1,a5,a1
1c009d08:	c11c                	sw	a5,0(a0)
1c009d0a:	8e0d                	sub	a2,a2,a1
1c009d0c:	00c05663          	blez	a2,1c009d18 <pos_alloc_init+0x1a>
1c009d10:	9a61                	andi	a2,a2,-8
1c009d12:	c390                	sw	a2,0(a5)
1c009d14:	0007a223          	sw	zero,4(a5)
1c009d18:	8082                	ret

1c009d1a <pos_alloc>:
1c009d1a:	4110                	lw	a2,0(a0)
1c009d1c:	059d                	addi	a1,a1,7
1c009d1e:	99e1                	andi	a1,a1,-8
1c009d20:	ca31                	beqz	a2,1c009d74 <pos_alloc+0x5a>
1c009d22:	4218                	lw	a4,0(a2)
1c009d24:	425c                	lw	a5,4(a2)
1c009d26:	02b75963          	ble	a1,a4,1c009d58 <pos_alloc+0x3e>
1c009d2a:	cb81                	beqz	a5,1c009d3a <pos_alloc+0x20>
1c009d2c:	4398                	lw	a4,0(a5)
1c009d2e:	43d4                	lw	a3,4(a5)
1c009d30:	00b75763          	ble	a1,a4,1c009d3e <pos_alloc+0x24>
1c009d34:	863e                	mv	a2,a5
1c009d36:	87b6                	mv	a5,a3
1c009d38:	fbf5                	bnez	a5,1c009d2c <pos_alloc+0x12>
1c009d3a:	853e                	mv	a0,a5
1c009d3c:	8082                	ret
1c009d3e:	00b70a63          	beq	a4,a1,1c009d52 <pos_alloc+0x38>
1c009d42:	00b78533          	add	a0,a5,a1
1c009d46:	8f0d                	sub	a4,a4,a1
1c009d48:	c118                	sw	a4,0(a0)
1c009d4a:	c154                	sw	a3,4(a0)
1c009d4c:	c248                	sw	a0,4(a2)
1c009d4e:	853e                	mv	a0,a5
1c009d50:	8082                	ret
1c009d52:	c254                	sw	a3,4(a2)
1c009d54:	853e                	mv	a0,a5
1c009d56:	8082                	ret
1c009d58:	00e58b63          	beq	a1,a4,1c009d6e <pos_alloc+0x54>
1c009d5c:	00b606b3          	add	a3,a2,a1
1c009d60:	8f0d                	sub	a4,a4,a1
1c009d62:	c2dc                	sw	a5,4(a3)
1c009d64:	c298                	sw	a4,0(a3)
1c009d66:	87b2                	mv	a5,a2
1c009d68:	c114                	sw	a3,0(a0)
1c009d6a:	853e                	mv	a0,a5
1c009d6c:	8082                	ret
1c009d6e:	c11c                	sw	a5,0(a0)
1c009d70:	87b2                	mv	a5,a2
1c009d72:	b7e1                	j	1c009d3a <pos_alloc+0x20>
1c009d74:	4781                	li	a5,0
1c009d76:	b7d1                	j	1c009d3a <pos_alloc+0x20>

1c009d78 <pos_free>:
1c009d78:	4118                	lw	a4,0(a0)
1c009d7a:	061d                	addi	a2,a2,7
1c009d7c:	9a61                	andi	a2,a2,-8
1c009d7e:	c729                	beqz	a4,1c009dc8 <pos_free+0x50>
1c009d80:	00b76663          	bltu	a4,a1,1c009d8c <pos_free+0x14>
1c009d84:	a0a1                	j	1c009dcc <pos_free+0x54>
1c009d86:	00b7f563          	bleu	a1,a5,1c009d90 <pos_free+0x18>
1c009d8a:	873e                	mv	a4,a5
1c009d8c:	435c                	lw	a5,4(a4)
1c009d8e:	ffe5                	bnez	a5,1c009d86 <pos_free+0xe>
1c009d90:	00c586b3          	add	a3,a1,a2
1c009d94:	02d78463          	beq	a5,a3,1c009dbc <pos_free+0x44>
1c009d98:	c190                	sw	a2,0(a1)
1c009d9a:	c1dc                	sw	a5,4(a1)
1c009d9c:	cf11                	beqz	a4,1c009db8 <pos_free+0x40>
1c009d9e:	431c                	lw	a5,0(a4)
1c009da0:	00f706b3          	add	a3,a4,a5
1c009da4:	00d58463          	beq	a1,a3,1c009dac <pos_free+0x34>
1c009da8:	c34c                	sw	a1,4(a4)
1c009daa:	8082                	ret
1c009dac:	4194                	lw	a3,0(a1)
1c009dae:	41d0                	lw	a2,4(a1)
1c009db0:	97b6                	add	a5,a5,a3
1c009db2:	c31c                	sw	a5,0(a4)
1c009db4:	c350                	sw	a2,4(a4)
1c009db6:	8082                	ret
1c009db8:	c10c                	sw	a1,0(a0)
1c009dba:	8082                	ret
1c009dbc:	4394                	lw	a3,0(a5)
1c009dbe:	43dc                	lw	a5,4(a5)
1c009dc0:	9636                	add	a2,a2,a3
1c009dc2:	c190                	sw	a2,0(a1)
1c009dc4:	c1dc                	sw	a5,4(a1)
1c009dc6:	bfd9                	j	1c009d9c <pos_free+0x24>
1c009dc8:	4781                	li	a5,0
1c009dca:	b7d9                	j	1c009d90 <pos_free+0x18>
1c009dcc:	87ba                	mv	a5,a4
1c009dce:	4701                	li	a4,0
1c009dd0:	b7c1                	j	1c009d90 <pos_free+0x18>

1c009dd2 <pos_allocs_init>:
1c009dd2:	1141                	addi	sp,sp,-16
1c009dd4:	1c0065b7          	lui	a1,0x1c006
1c009dd8:	c606                	sw	ra,12(sp)
1c009dda:	21458793          	addi	a5,a1,532 # 1c006214 <__l2_priv0_end>
1c009dde:	1c008637          	lui	a2,0x1c008
1c009de2:	04c7cc63          	blt	a5,a2,1c009e3a <pos_allocs_init+0x68>
1c009de6:	4581                	li	a1,0
1c009de8:	4601                	li	a2,0
1c009dea:	1c006537          	lui	a0,0x1c006
1c009dee:	20850513          	addi	a0,a0,520 # 1c006208 <pos_alloc_l2>
1c009df2:	3731                	jal	1c009cfe <pos_alloc_init>
1c009df4:	1c00a5b7          	lui	a1,0x1c00a
1c009df8:	ea458793          	addi	a5,a1,-348 # 1c009ea4 <__l2_priv1_end>
1c009dfc:	1c010637          	lui	a2,0x1c010
1c009e00:	02c7c963          	blt	a5,a2,1c009e32 <pos_allocs_init+0x60>
1c009e04:	4581                	li	a1,0
1c009e06:	4601                	li	a2,0
1c009e08:	1c006537          	lui	a0,0x1c006
1c009e0c:	20c50513          	addi	a0,a0,524 # 1c00620c <pos_alloc_l2+0x4>
1c009e10:	35fd                	jal	1c009cfe <pos_alloc_init>
1c009e12:	1c0105b7          	lui	a1,0x1c010
1c009e16:	00058793          	mv	a5,a1
1c009e1a:	40b2                	lw	ra,12(sp)
1c009e1c:	1c080637          	lui	a2,0x1c080
1c009e20:	1c006537          	lui	a0,0x1c006
1c009e24:	8e1d                	sub	a2,a2,a5
1c009e26:	00058593          	mv	a1,a1
1c009e2a:	21050513          	addi	a0,a0,528 # 1c006210 <pos_alloc_l2+0x8>
1c009e2e:	0141                	addi	sp,sp,16
1c009e30:	b5f9                	j	1c009cfe <pos_alloc_init>
1c009e32:	8e1d                	sub	a2,a2,a5
1c009e34:	ea458593          	addi	a1,a1,-348 # 1c00fea4 <__l2_priv1_end+0x6000>
1c009e38:	bfc1                	j	1c009e08 <pos_allocs_init+0x36>
1c009e3a:	8e1d                	sub	a2,a2,a5
1c009e3c:	21458593          	addi	a1,a1,532
1c009e40:	b76d                	j	1c009dea <pos_allocs_init+0x18>

1c009e42 <pi_l2_malloc>:
1c009e42:	85aa                	mv	a1,a0
1c009e44:	1c006537          	lui	a0,0x1c006
1c009e48:	20850513          	addi	a0,a0,520 # 1c006208 <pos_alloc_l2>
1c009e4c:	b5f9                	j	1c009d1a <pos_alloc>

1c009e4e <pi_l2_free>:
1c009e4e:	862e                	mv	a2,a1
1c009e50:	85aa                	mv	a1,a0
1c009e52:	1c006537          	lui	a0,0x1c006
1c009e56:	20850513          	addi	a0,a0,520 # 1c006208 <pos_alloc_l2>
1c009e5a:	bf39                	j	1c009d78 <pos_free>

1c009e5c <__rt_handle_illegal_instr>:
1c009e5c:	8082                	ret

1c009e5e <pos_irq_init>:
1c009e5e:	1a10a737          	lui	a4,0x1a10a
1c009e62:	f14027f3          	csrr	a5,mhartid
1c009e66:	56fd                	li	a3,-1
1c009e68:	8795                	srai	a5,a5,0x5
1c009e6a:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c009e6e:	03f7f793          	andi	a5,a5,63
1c009e72:	477d                	li	a4,31
1c009e74:	00e78363          	beq	a5,a4,1c009e7a <pos_irq_init+0x1c>
1c009e78:	8082                	ret
1c009e7a:	1c0087b7          	lui	a5,0x1c008
1c009e7e:	00078793          	mv	a5,a5
1c009e82:	0017e793          	ori	a5,a5,1
1c009e86:	30579073          	csrw	mtvec,a5
1c009e8a:	8082                	ret

1c009e8c <pos_soc_event_init>:
1c009e8c:	1a1067b7          	lui	a5,0x1a106
1c009e90:	577d                	li	a4,-1
1c009e92:	c3d8                	sw	a4,4(a5)
1c009e94:	c798                	sw	a4,8(a5)
1c009e96:	c7d8                	sw	a4,12(a5)
1c009e98:	cb98                	sw	a4,16(a5)
1c009e9a:	cbd8                	sw	a4,20(a5)
1c009e9c:	cf98                	sw	a4,24(a5)
1c009e9e:	cfd8                	sw	a4,28(a5)
1c009ea0:	d398                	sw	a4,32(a5)
1c009ea2:	8082                	ret
