riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/keccak_ip/build/keccak/keccak

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/keccak_ip/build/keccak/keccak:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	5aa0006f          	j	1c0085aa <__rt_handle_illegal_instr>
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
1c008084:	5260006f          	j	1c0085aa <__rt_handle_illegal_instr>

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
1c0080c4:	07028293          	addi	t0,t0,112 # 1c006130 <stack>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	08c30313          	addi	t1,t1,140 # 1c006154 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	05610113          	addi	sp,sp,86 # 1c006130 <stack>
1c0080e2:	3e4000ef          	jal	ra,1c0084c6 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	3fc000ef          	jal	ra,1c0084f8 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	3a8000ef          	jal	ra,1c0084aa <exit>

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
1c008142:	1c000537          	lui	a0,0x1c000
1c008146:	7125                	addi	sp,sp,-416
1c008148:	11c50513          	addi	a0,a0,284 # 1c00011c <__DTOR_END__+0x100>
1c00814c:	18112e23          	sw	ra,412(sp)
1c008150:	2619                	jal	1c008456 <puts>
1c008152:	0b800613          	li	a2,184
1c008156:	4581                	li	a1,0
1c008158:	0808                	addi	a0,sp,16
1c00815a:	2c05                	jal	1c00838a <memset>
1c00815c:	0c800613          	li	a2,200
1c008160:	4581                	li	a1,0
1c008162:	01a8                	addi	a0,sp,200
1c008164:	241d                	jal	1c00838a <memset>
1c008166:	7369c7b7          	lui	a5,0x7369c
1c00816a:	66778793          	addi	a5,a5,1639 # 7369c667 <__l2_shared_end+0x5768c667>
1c00816e:	c03e                	sw	a5,0(sp)
1c008170:	ec4b07b7          	lui	a5,0xec4b0
1c008174:	f5178793          	addi	a5,a5,-175 # ec4aff51 <pulp__FC+0xec4aff52>
1c008178:	c23e                	sw	a5,4(sp)
1c00817a:	abbad7b7          	lui	a5,0xabbad
1c00817e:	d2978793          	addi	a5,a5,-727 # abbacd29 <pulp__FC+0xabbacd2a>
1c008182:	c43e                	sw	a5,8(sp)
1c008184:	47c1                	li	a5,16
1c008186:	850a                	mv	a0,sp
1c008188:	c63e                	sw	a5,12(sp)
1c00818a:	01ac                	addi	a1,sp,200
1c00818c:	800007b7          	lui	a5,0x80000
1c008190:	debe                	sw	a5,124(sp)
1c008192:	22b5                	jal	1c0082fe <KeccakF1600_StatePermute>
1c008194:	19c12083          	lw	ra,412(sp)
1c008198:	4501                	li	a0,0
1c00819a:	611d                	addi	sp,sp,416
1c00819c:	8082                	ret

1c00819e <pos_fll_init>:
1c00819e:	1101                	addi	sp,sp,-32
1c0081a0:	1a100637          	lui	a2,0x1a100
1c0081a4:	ca26                	sw	s1,20(sp)
1c0081a6:	00451693          	slli	a3,a0,0x4
1c0081aa:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c0081ae:	94b6                	add	s1,s1,a3
1c0081b0:	4098                	lw	a4,0(s1)
1c0081b2:	c84a                	sw	s2,16(sp)
1c0081b4:	ce06                	sw	ra,28(sp)
1c0081b6:	cc22                	sw	s0,24(sp)
1c0081b8:	c64e                	sw	s3,12(sp)
1c0081ba:	c452                	sw	s4,8(sp)
1c0081bc:	892a                	mv	s2,a0
1c0081be:	87ba                	mv	a5,a4
1c0081c0:	04074563          	bltz	a4,1c00820a <pos_fll_init+0x6c>
1c0081c4:	00860593          	addi	a1,a2,8
1c0081c8:	95b6                	add	a1,a1,a3
1c0081ca:	419c                	lw	a5,0(a1)
1c0081cc:	7541                	lui	a0,0xffff0
1c0081ce:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c0081d2:	8fe9                	and	a5,a5,a0
1c0081d4:	6509                	lui	a0,0x2
1c0081d6:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c0081da:	8fc9                	or	a5,a5,a0
1c0081dc:	f0010537          	lui	a0,0xf0010
1c0081e0:	157d                	addi	a0,a0,-1
1c0081e2:	8fe9                	and	a5,a5,a0
1c0081e4:	00500537          	lui	a0,0x500
1c0081e8:	8fc9                	or	a5,a5,a0
1c0081ea:	0631                	addi	a2,a2,12
1c0081ec:	c19c                	sw	a5,0(a1)
1c0081ee:	96b2                	add	a3,a3,a2
1c0081f0:	429c                	lw	a5,0(a3)
1c0081f2:	fc010637          	lui	a2,0xfc010
1c0081f6:	167d                	addi	a2,a2,-1
1c0081f8:	8ff1                	and	a5,a5,a2
1c0081fa:	014c0637          	lui	a2,0x14c0
1c0081fe:	8fd1                	or	a5,a5,a2
1c008200:	c29c                	sw	a5,0(a3)
1c008202:	c00007b7          	lui	a5,0xc0000
1c008206:	8fd9                	or	a5,a5,a4
1c008208:	c09c                	sw	a5,0(s1)
1c00820a:	1c006437          	lui	s0,0x1c006
1c00820e:	13440413          	addi	s0,s0,308 # 1c006134 <pos_fll_freq>
1c008212:	00291993          	slli	s3,s2,0x2
1c008216:	013406b3          	add	a3,s0,s3
1c00821a:	0006aa03          	lw	s4,0(a3)
1c00821e:	020a1d63          	bnez	s4,1c008258 <pos_fll_init+0xba>
1c008222:	83e9                	srli	a5,a5,0x1a
1c008224:	0742                	slli	a4,a4,0x10
1c008226:	8341                	srli	a4,a4,0x10
1c008228:	8bbd                	andi	a5,a5,15
1c00822a:	073e                	slli	a4,a4,0xf
1c00822c:	17fd                	addi	a5,a5,-1
1c00822e:	00f75a33          	srl	s4,a4,a5
1c008232:	1c006537          	lui	a0,0x1c006
1c008236:	0146a023          	sw	s4,0(a3)
1c00823a:	13050513          	addi	a0,a0,304 # 1c006130 <stack>
1c00823e:	954a                	add	a0,a0,s2
1c008240:	4685                	li	a3,1
1c008242:	00d50023          	sb	a3,0(a0)
1c008246:	40f2                	lw	ra,28(sp)
1c008248:	4462                	lw	s0,24(sp)
1c00824a:	8552                	mv	a0,s4
1c00824c:	44d2                	lw	s1,20(sp)
1c00824e:	4942                	lw	s2,16(sp)
1c008250:	49b2                	lw	s3,12(sp)
1c008252:	4a22                	lw	s4,8(sp)
1c008254:	6105                	addi	sp,sp,32
1c008256:	8082                	ret
1c008258:	8552                	mv	a0,s4
1c00825a:	3575                	jal	1c008106 <__clzsi2>
1c00825c:	1579                	addi	a0,a0,-2
1c00825e:	00155613          	srli	a2,a0,0x1
1c008262:	e631                	bnez	a2,1c0082ae <pos_fll_init+0x110>
1c008264:	4709                	li	a4,2
1c008266:	4585                	li	a1,1
1c008268:	4605                	li	a2,1
1c00826a:	00ca17b3          	sll	a5,s4,a2
1c00826e:	76e1                	lui	a3,0xffff8
1c008270:	1c006537          	lui	a0,0x1c006
1c008274:	8efd                	and	a3,a3,a5
1c008276:	13050513          	addi	a0,a0,304 # 1c006130 <stack>
1c00827a:	96ae                	add	a3,a3,a1
1c00827c:	012505b3          	add	a1,a0,s2
1c008280:	00c6d6b3          	srl	a3,a3,a2
1c008284:	944e                	add	s0,s0,s3
1c008286:	0005c603          	lbu	a2,0(a1)
1c00828a:	c014                	sw	a3,0(s0)
1c00828c:	da4d                	beqz	a2,1c00823e <pos_fll_init+0xa0>
1c00828e:	4094                	lw	a3,0(s1)
1c008290:	83bd                	srli	a5,a5,0xf
1c008292:	07c2                	slli	a5,a5,0x10
1c008294:	7641                	lui	a2,0xffff0
1c008296:	83c1                	srli	a5,a5,0x10
1c008298:	8ef1                	and	a3,a3,a2
1c00829a:	8edd                	or	a3,a3,a5
1c00829c:	c40007b7          	lui	a5,0xc4000
1c0082a0:	8b3d                	andi	a4,a4,15
1c0082a2:	17fd                	addi	a5,a5,-1
1c0082a4:	076a                	slli	a4,a4,0x1a
1c0082a6:	8efd                	and	a3,a3,a5
1c0082a8:	8ed9                	or	a3,a3,a4
1c0082aa:	c094                	sw	a3,0(s1)
1c0082ac:	bf49                	j	1c00823e <pos_fll_init+0xa0>
1c0082ae:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c0082b2:	4685                	li	a3,1
1c0082b4:	00b695b3          	sll	a1,a3,a1
1c0082b8:	00160713          	addi	a4,a2,1
1c0082bc:	b77d                	j	1c00826a <pos_fll_init+0xcc>

1c0082be <pos_fll_constructor>:
1c0082be:	1c0067b7          	lui	a5,0x1c006
1c0082c2:	13478793          	addi	a5,a5,308 # 1c006134 <pos_fll_freq>
1c0082c6:	0007a023          	sw	zero,0(a5)
1c0082ca:	0007a223          	sw	zero,4(a5)
1c0082ce:	1c0067b7          	lui	a5,0x1c006
1c0082d2:	12079823          	sh	zero,304(a5) # 1c006130 <stack>
1c0082d6:	8082                	ret

1c0082d8 <pos_soc_init>:
1c0082d8:	1141                	addi	sp,sp,-16
1c0082da:	c606                	sw	ra,12(sp)
1c0082dc:	c422                	sw	s0,8(sp)
1c0082de:	37c5                	jal	1c0082be <pos_fll_constructor>
1c0082e0:	4501                	li	a0,0
1c0082e2:	3d75                	jal	1c00819e <pos_fll_init>
1c0082e4:	1c006437          	lui	s0,0x1c006
1c0082e8:	12a42e23          	sw	a0,316(s0) # 1c00613c <pos_freq_domains>
1c0082ec:	4505                	li	a0,1
1c0082ee:	3d45                	jal	1c00819e <pos_fll_init>
1c0082f0:	13c40413          	addi	s0,s0,316
1c0082f4:	c408                	sw	a0,8(s0)
1c0082f6:	40b2                	lw	ra,12(sp)
1c0082f8:	4422                	lw	s0,8(sp)
1c0082fa:	0141                	addi	sp,sp,16
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

1c008364 <pos_wait_forever>:
1c008364:	f14027f3          	csrr	a5,mhartid
1c008368:	8795                	srai	a5,a5,0x5
1c00836a:	03f7f793          	andi	a5,a5,63
1c00836e:	477d                	li	a4,31
1c008370:	00e78363          	beq	a5,a4,1c008376 <pos_wait_forever+0x12>
1c008374:	a001                	j	1c008374 <pos_wait_forever+0x10>
1c008376:	1a10a7b7          	lui	a5,0x1a10a
1c00837a:	577d                	li	a4,-1
1c00837c:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c008380:	10500073          	wfi
1c008384:	10500073          	wfi
1c008388:	bfe5                	j	1c008380 <pos_wait_forever+0x1c>

1c00838a <memset>:
1c00838a:	fff60313          	addi	t1,a2,-1
1c00838e:	ce55                	beqz	a2,1c00844a <memset+0xc0>
1c008390:	40a007b3          	neg	a5,a0
1c008394:	8b8d                	andi	a5,a5,3
1c008396:	00378713          	addi	a4,a5,3
1c00839a:	4695                	li	a3,5
1c00839c:	0ff5f593          	andi	a1,a1,255
1c0083a0:	0ad76663          	bltu	a4,a3,1c00844c <memset+0xc2>
1c0083a4:	0ae36763          	bltu	t1,a4,1c008452 <memset+0xc8>
1c0083a8:	88aa                	mv	a7,a0
1c0083aa:	cb8d                	beqz	a5,1c0083dc <memset+0x52>
1c0083ac:	00b50023          	sb	a1,0(a0)
1c0083b0:	4705                	li	a4,1
1c0083b2:	00150893          	addi	a7,a0,1
1c0083b6:	ffe60313          	addi	t1,a2,-2
1c0083ba:	02e78163          	beq	a5,a4,1c0083dc <memset+0x52>
1c0083be:	00b500a3          	sb	a1,1(a0)
1c0083c2:	470d                	li	a4,3
1c0083c4:	00250893          	addi	a7,a0,2
1c0083c8:	ffd60313          	addi	t1,a2,-3
1c0083cc:	00e79863          	bne	a5,a4,1c0083dc <memset+0x52>
1c0083d0:	00350893          	addi	a7,a0,3
1c0083d4:	00b50123          	sb	a1,2(a0)
1c0083d8:	ffc60313          	addi	t1,a2,-4
1c0083dc:	00859813          	slli	a6,a1,0x8
1c0083e0:	0105e833          	or	a6,a1,a6
1c0083e4:	01059713          	slli	a4,a1,0x10
1c0083e8:	00e86733          	or	a4,a6,a4
1c0083ec:	8e1d                	sub	a2,a2,a5
1c0083ee:	01859693          	slli	a3,a1,0x18
1c0083f2:	8ed9                	or	a3,a3,a4
1c0083f4:	00265813          	srli	a6,a2,0x2
1c0083f8:	97aa                	add	a5,a5,a0
1c0083fa:	4701                	li	a4,0
1c0083fc:	c394                	sw	a3,0(a5)
1c0083fe:	0705                	addi	a4,a4,1
1c008400:	0791                	addi	a5,a5,4
1c008402:	ff076de3          	bltu	a4,a6,1c0083fc <memset+0x72>
1c008406:	ffc67713          	andi	a4,a2,-4
1c00840a:	00e887b3          	add	a5,a7,a4
1c00840e:	40e30333          	sub	t1,t1,a4
1c008412:	02e60f63          	beq	a2,a4,1c008450 <memset+0xc6>
1c008416:	00b78023          	sb	a1,0(a5)
1c00841a:	02030863          	beqz	t1,1c00844a <memset+0xc0>
1c00841e:	00b780a3          	sb	a1,1(a5)
1c008422:	4705                	li	a4,1
1c008424:	02e30363          	beq	t1,a4,1c00844a <memset+0xc0>
1c008428:	00b78123          	sb	a1,2(a5)
1c00842c:	4709                	li	a4,2
1c00842e:	00e30e63          	beq	t1,a4,1c00844a <memset+0xc0>
1c008432:	00b781a3          	sb	a1,3(a5)
1c008436:	470d                	li	a4,3
1c008438:	00e30963          	beq	t1,a4,1c00844a <memset+0xc0>
1c00843c:	00b78223          	sb	a1,4(a5)
1c008440:	4711                	li	a4,4
1c008442:	00e30463          	beq	t1,a4,1c00844a <memset+0xc0>
1c008446:	00b782a3          	sb	a1,5(a5)
1c00844a:	8082                	ret
1c00844c:	4715                	li	a4,5
1c00844e:	bf99                	j	1c0083a4 <memset+0x1a>
1c008450:	8082                	ret
1c008452:	87aa                	mv	a5,a0
1c008454:	b7c9                	j	1c008416 <memset+0x8c>

1c008456 <puts>:
1c008456:	00054783          	lbu	a5,0(a0)
1c00845a:	c78d                	beqz	a5,1c008484 <puts+0x2e>
1c00845c:	f14026f3          	csrr	a3,mhartid
1c008460:	00369713          	slli	a4,a3,0x3
1c008464:	1a10f637          	lui	a2,0x1a10f
1c008468:	0ff77713          	andi	a4,a4,255
1c00846c:	9732                	add	a4,a4,a2
1c00846e:	6609                	lui	a2,0x2
1c008470:	068a                	slli	a3,a3,0x2
1c008472:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008476:	8ef1                	and	a3,a3,a2
1c008478:	9736                	add	a4,a4,a3
1c00847a:	c31c                	sw	a5,0(a4)
1c00847c:	0505                	addi	a0,a0,1
1c00847e:	00054783          	lbu	a5,0(a0)
1c008482:	ffe5                	bnez	a5,1c00847a <puts+0x24>
1c008484:	f1402773          	csrr	a4,mhartid
1c008488:	00371793          	slli	a5,a4,0x3
1c00848c:	1a10f6b7          	lui	a3,0x1a10f
1c008490:	0ff7f793          	andi	a5,a5,255
1c008494:	97b6                	add	a5,a5,a3
1c008496:	6689                	lui	a3,0x2
1c008498:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00849c:	070a                	slli	a4,a4,0x2
1c00849e:	8f75                	and	a4,a4,a3
1c0084a0:	97ba                	add	a5,a5,a4
1c0084a2:	4729                	li	a4,10
1c0084a4:	c398                	sw	a4,0(a5)
1c0084a6:	4501                	li	a0,0
1c0084a8:	8082                	ret

1c0084aa <exit>:
1c0084aa:	800007b7          	lui	a5,0x80000
1c0084ae:	1141                	addi	sp,sp,-16
1c0084b0:	8d5d                	or	a0,a0,a5
1c0084b2:	c606                	sw	ra,12(sp)
1c0084b4:	1a1047b7          	lui	a5,0x1a104
1c0084b8:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c0084bc:	3565                	jal	1c008364 <pos_wait_forever>

1c0084be <pos_io_start>:
1c0084be:	4501                	li	a0,0
1c0084c0:	8082                	ret

1c0084c2 <pos_io_stop>:
1c0084c2:	4501                	li	a0,0
1c0084c4:	8082                	ret

1c0084c6 <pos_init_start>:
1c0084c6:	1141                	addi	sp,sp,-16
1c0084c8:	c422                	sw	s0,8(sp)
1c0084ca:	1c000437          	lui	s0,0x1c000
1c0084ce:	c606                	sw	ra,12(sp)
1c0084d0:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c0084d4:	3511                	jal	1c0082d8 <pos_soc_init>
1c0084d6:	28d9                	jal	1c0085ac <pos_irq_init>
1c0084d8:	2209                	jal	1c0085da <pos_soc_event_init>
1c0084da:	2085                	jal	1c00853a <pos_allocs_init>
1c0084dc:	405c                	lw	a5,4(s0)
1c0084de:	c791                	beqz	a5,1c0084ea <pos_init_start+0x24>
1c0084e0:	0411                	addi	s0,s0,4
1c0084e2:	0411                	addi	s0,s0,4
1c0084e4:	9782                	jalr	a5
1c0084e6:	401c                	lw	a5,0(s0)
1c0084e8:	ffed                	bnez	a5,1c0084e2 <pos_init_start+0x1c>
1c0084ea:	3fd1                	jal	1c0084be <pos_io_start>
1c0084ec:	300467f3          	csrrsi	a5,mstatus,8
1c0084f0:	40b2                	lw	ra,12(sp)
1c0084f2:	4422                	lw	s0,8(sp)
1c0084f4:	0141                	addi	sp,sp,16
1c0084f6:	8082                	ret

1c0084f8 <pos_init_stop>:
1c0084f8:	1141                	addi	sp,sp,-16
1c0084fa:	c422                	sw	s0,8(sp)
1c0084fc:	1c000437          	lui	s0,0x1c000
1c008500:	c606                	sw	ra,12(sp)
1c008502:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c008506:	3f75                	jal	1c0084c2 <pos_io_stop>
1c008508:	405c                	lw	a5,4(s0)
1c00850a:	c791                	beqz	a5,1c008516 <pos_init_stop+0x1e>
1c00850c:	0411                	addi	s0,s0,4
1c00850e:	0411                	addi	s0,s0,4
1c008510:	9782                	jalr	a5
1c008512:	401c                	lw	a5,0(s0)
1c008514:	ffed                	bnez	a5,1c00850e <pos_init_stop+0x16>
1c008516:	40b2                	lw	ra,12(sp)
1c008518:	4422                	lw	s0,8(sp)
1c00851a:	0141                	addi	sp,sp,16
1c00851c:	8082                	ret

1c00851e <pos_alloc_init>:
1c00851e:	00758793          	addi	a5,a1,7
1c008522:	9be1                	andi	a5,a5,-8
1c008524:	40b785b3          	sub	a1,a5,a1
1c008528:	c11c                	sw	a5,0(a0)
1c00852a:	8e0d                	sub	a2,a2,a1
1c00852c:	00c05663          	blez	a2,1c008538 <pos_alloc_init+0x1a>
1c008530:	9a61                	andi	a2,a2,-8
1c008532:	c390                	sw	a2,0(a5)
1c008534:	0007a223          	sw	zero,4(a5)
1c008538:	8082                	ret

1c00853a <pos_allocs_init>:
1c00853a:	1141                	addi	sp,sp,-16
1c00853c:	1c0065b7          	lui	a1,0x1c006
1c008540:	c606                	sw	ra,12(sp)
1c008542:	15458793          	addi	a5,a1,340 # 1c006154 <__l2_priv0_end>
1c008546:	1c008637          	lui	a2,0x1c008
1c00854a:	04c7cc63          	blt	a5,a2,1c0085a2 <pos_allocs_init+0x68>
1c00854e:	4581                	li	a1,0
1c008550:	4601                	li	a2,0
1c008552:	1c006537          	lui	a0,0x1c006
1c008556:	14850513          	addi	a0,a0,328 # 1c006148 <pos_alloc_l2>
1c00855a:	37d1                	jal	1c00851e <pos_alloc_init>
1c00855c:	1c0085b7          	lui	a1,0x1c008
1c008560:	5f458793          	addi	a5,a1,1524 # 1c0085f4 <__l2_priv1_end>
1c008564:	1c010637          	lui	a2,0x1c010
1c008568:	02c7c963          	blt	a5,a2,1c00859a <pos_allocs_init+0x60>
1c00856c:	4581                	li	a1,0
1c00856e:	4601                	li	a2,0
1c008570:	1c006537          	lui	a0,0x1c006
1c008574:	14c50513          	addi	a0,a0,332 # 1c00614c <pos_alloc_l2+0x4>
1c008578:	375d                	jal	1c00851e <pos_alloc_init>
1c00857a:	1c0105b7          	lui	a1,0x1c010
1c00857e:	00058793          	mv	a5,a1
1c008582:	40b2                	lw	ra,12(sp)
1c008584:	1c080637          	lui	a2,0x1c080
1c008588:	1c006537          	lui	a0,0x1c006
1c00858c:	8e1d                	sub	a2,a2,a5
1c00858e:	00058593          	mv	a1,a1
1c008592:	15050513          	addi	a0,a0,336 # 1c006150 <pos_alloc_l2+0x8>
1c008596:	0141                	addi	sp,sp,16
1c008598:	b759                	j	1c00851e <pos_alloc_init>
1c00859a:	8e1d                	sub	a2,a2,a5
1c00859c:	5f458593          	addi	a1,a1,1524 # 1c0105f4 <__l2_shared_end+0x5f4>
1c0085a0:	bfc1                	j	1c008570 <pos_allocs_init+0x36>
1c0085a2:	8e1d                	sub	a2,a2,a5
1c0085a4:	15458593          	addi	a1,a1,340
1c0085a8:	b76d                	j	1c008552 <pos_allocs_init+0x18>

1c0085aa <__rt_handle_illegal_instr>:
1c0085aa:	8082                	ret

1c0085ac <pos_irq_init>:
1c0085ac:	1a10a737          	lui	a4,0x1a10a
1c0085b0:	f14027f3          	csrr	a5,mhartid
1c0085b4:	56fd                	li	a3,-1
1c0085b6:	8795                	srai	a5,a5,0x5
1c0085b8:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c0085bc:	03f7f793          	andi	a5,a5,63
1c0085c0:	477d                	li	a4,31
1c0085c2:	00e78363          	beq	a5,a4,1c0085c8 <pos_irq_init+0x1c>
1c0085c6:	8082                	ret
1c0085c8:	1c0087b7          	lui	a5,0x1c008
1c0085cc:	00078793          	mv	a5,a5
1c0085d0:	0017e793          	ori	a5,a5,1
1c0085d4:	30579073          	csrw	mtvec,a5
1c0085d8:	8082                	ret

1c0085da <pos_soc_event_init>:
1c0085da:	1a1067b7          	lui	a5,0x1a106
1c0085de:	577d                	li	a4,-1
1c0085e0:	c3d8                	sw	a4,4(a5)
1c0085e2:	c798                	sw	a4,8(a5)
1c0085e4:	c7d8                	sw	a4,12(a5)
1c0085e6:	cb98                	sw	a4,16(a5)
1c0085e8:	cbd8                	sw	a4,20(a5)
1c0085ea:	cf98                	sw	a4,24(a5)
1c0085ec:	cfd8                	sw	a4,28(a5)
1c0085ee:	d398                	sw	a4,32(a5)
1c0085f0:	8082                	ret

1c0085f2 <_endtext>:
	...
