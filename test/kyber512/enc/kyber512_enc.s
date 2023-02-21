riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber512/enc/build/enc/enc

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber512/enc/build/enc/enc:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	3c80406f          	j	1c00c3c8 <__rt_handle_illegal_instr>
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
1c008084:	3440406f          	j	1c00c3c8 <__rt_handle_illegal_instr>

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
1c0080c4:	4c028293          	addi	t0,t0,1216 # 1c006580 <stack>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	53030313          	addi	t1,t1,1328 # 1c0065f8 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	4a610113          	addi	sp,sp,1190 # 1c006580 <stack>
1c0080e2:	12a040ef          	jal	ra,1c00c20c <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	08a38393          	addi	t2,t2,138 # 1c008178 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	146040ef          	jal	ra,1c00c242 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	15e030ef          	jal	ra,1c00b260 <exit>

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

1c008142 <printbytes>:
1c008142:	1141                	addi	sp,sp,-16
1c008144:	c422                	sw	s0,8(sp)
1c008146:	c226                	sw	s1,4(sp)
1c008148:	c04a                	sw	s2,0(sp)
1c00814a:	c606                	sw	ra,12(sp)
1c00814c:	842a                	mv	s0,a0
1c00814e:	00b50933          	add	s2,a0,a1
1c008152:	1c0004b7          	lui	s1,0x1c000
1c008156:	00044583          	lbu	a1,0(s0)
1c00815a:	46448513          	addi	a0,s1,1124 # 1c000464 <__DTOR_END__+0x448>
1c00815e:	0405                	addi	s0,s0,1
1c008160:	11c030ef          	jal	ra,1c00b27c <printf>
1c008164:	ff2419e3          	bne	s0,s2,1c008156 <printbytes+0x14>
1c008168:	4422                	lw	s0,8(sp)
1c00816a:	40b2                	lw	ra,12(sp)
1c00816c:	4492                	lw	s1,4(sp)
1c00816e:	4902                	lw	s2,0(sp)
1c008170:	4529                	li	a0,10
1c008172:	0141                	addi	sp,sp,16
1c008174:	0c20306f          	j	1c00b236 <putchar>

1c008178 <main>:
1c008178:	9b010113          	addi	sp,sp,-1616
1c00817c:	64112623          	sw	ra,1612(sp)
1c008180:	1c0003b7          	lui	t2,0x1c000
1c008184:	1c0000b7          	lui	ra,0x1c000
1c008188:	1c0002b7          	lui	t0,0x1c000
1c00818c:	1c000fb7          	lui	t6,0x1c000
1c008190:	1c000f37          	lui	t5,0x1c000
1c008194:	1c000eb7          	lui	t4,0x1c000
1c008198:	1c000e37          	lui	t3,0x1c000
1c00819c:	1c000337          	lui	t1,0x1c000
1c0081a0:	1c0008b7          	lui	a7,0x1c000
1c0081a4:	1c000837          	lui	a6,0x1c000
1c0081a8:	1c000537          	lui	a0,0x1c000
1c0081ac:	1c0005b7          	lui	a1,0x1c000
1c0081b0:	1c000637          	lui	a2,0x1c000
1c0081b4:	1c0006b7          	lui	a3,0x1c000
1c0081b8:	1c000737          	lui	a4,0x1c000
1c0081bc:	11c0a083          	lw	ra,284(ra) # 1c00011c <__DTOR_END__+0x100>
1c0081c0:	1203a383          	lw	t2,288(t2) # 1c000120 <__DTOR_END__+0x104>
1c0081c4:	1242a283          	lw	t0,292(t0) # 1c000124 <__DTOR_END__+0x108>
1c0081c8:	128faf83          	lw	t6,296(t6) # 1c000128 <__DTOR_END__+0x10c>
1c0081cc:	12cf2f03          	lw	t5,300(t5) # 1c00012c <__DTOR_END__+0x110>
1c0081d0:	130eae83          	lw	t4,304(t4) # 1c000130 <__DTOR_END__+0x114>
1c0081d4:	134e2e03          	lw	t3,308(t3) # 1c000134 <__DTOR_END__+0x118>
1c0081d8:	13832303          	lw	t1,312(t1) # 1c000138 <__DTOR_END__+0x11c>
1c0081dc:	13c8a883          	lw	a7,316(a7) # 1c00013c <__DTOR_END__+0x120>
1c0081e0:	14082803          	lw	a6,320(a6) # 1c000140 <__DTOR_END__+0x124>
1c0081e4:	14452503          	lw	a0,324(a0) # 1c000144 <__DTOR_END__+0x128>
1c0081e8:	1485a583          	lw	a1,328(a1) # 1c000148 <__DTOR_END__+0x12c>
1c0081ec:	14c62603          	lw	a2,332(a2) # 1c00014c <__DTOR_END__+0x130>
1c0081f0:	1506a683          	lw	a3,336(a3) # 1c000150 <__DTOR_END__+0x134>
1c0081f4:	15472703          	lw	a4,340(a4) # 1c000154 <__DTOR_END__+0x138>
1c0081f8:	1c0007b7          	lui	a5,0x1c000
1c0081fc:	1587a783          	lw	a5,344(a5) # 1c000158 <__DTOR_END__+0x13c>
1c008200:	32112023          	sw	ra,800(sp)
1c008204:	32712223          	sw	t2,804(sp)
1c008208:	32512423          	sw	t0,808(sp)
1c00820c:	33f12623          	sw	t6,812(sp)
1c008210:	33e12823          	sw	t5,816(sp)
1c008214:	33d12a23          	sw	t4,820(sp)
1c008218:	33c12c23          	sw	t3,824(sp)
1c00821c:	32612e23          	sw	t1,828(sp)
1c008220:	35112023          	sw	a7,832(sp)
1c008224:	35012223          	sw	a6,836(sp)
1c008228:	34a12423          	sw	a0,840(sp)
1c00822c:	34b12623          	sw	a1,844(sp)
1c008230:	34c12823          	sw	a2,848(sp)
1c008234:	34d12a23          	sw	a3,852(sp)
1c008238:	34e12c23          	sw	a4,856(sp)
1c00823c:	34f12e23          	sw	a5,860(sp)
1c008240:	1c0000b7          	lui	ra,0x1c000
1c008244:	1c000337          	lui	t1,0x1c000
1c008248:	1c0008b7          	lui	a7,0x1c000
1c00824c:	1c000837          	lui	a6,0x1c000
1c008250:	1c0005b7          	lui	a1,0x1c000
1c008254:	1c000637          	lui	a2,0x1c000
1c008258:	1c0006b7          	lui	a3,0x1c000
1c00825c:	1c000737          	lui	a4,0x1c000
1c008260:	1c0007b7          	lui	a5,0x1c000
1c008264:	15c0a083          	lw	ra,348(ra) # 1c00015c <__DTOR_END__+0x140>
1c008268:	17832303          	lw	t1,376(t1) # 1c000178 <__DTOR_END__+0x15c>
1c00826c:	17c8a883          	lw	a7,380(a7) # 1c00017c <__DTOR_END__+0x160>
1c008270:	18082803          	lw	a6,384(a6) # 1c000180 <__DTOR_END__+0x164>
1c008274:	1885a583          	lw	a1,392(a1) # 1c000188 <__DTOR_END__+0x16c>
1c008278:	18c62603          	lw	a2,396(a2) # 1c00018c <__DTOR_END__+0x170>
1c00827c:	1906a683          	lw	a3,400(a3) # 1c000190 <__DTOR_END__+0x174>
1c008280:	19472703          	lw	a4,404(a4) # 1c000194 <__DTOR_END__+0x178>
1c008284:	1987a783          	lw	a5,408(a5) # 1c000198 <__DTOR_END__+0x17c>
1c008288:	1c0003b7          	lui	t2,0x1c000
1c00828c:	1c0002b7          	lui	t0,0x1c000
1c008290:	1c000fb7          	lui	t6,0x1c000
1c008294:	1c000f37          	lui	t5,0x1c000
1c008298:	1c000eb7          	lui	t4,0x1c000
1c00829c:	1c000e37          	lui	t3,0x1c000
1c0082a0:	1c000537          	lui	a0,0x1c000
1c0082a4:	1603a383          	lw	t2,352(t2) # 1c000160 <__DTOR_END__+0x144>
1c0082a8:	1642a283          	lw	t0,356(t0) # 1c000164 <__DTOR_END__+0x148>
1c0082ac:	168faf83          	lw	t6,360(t6) # 1c000168 <__DTOR_END__+0x14c>
1c0082b0:	16cf2f03          	lw	t5,364(t5) # 1c00016c <__DTOR_END__+0x150>
1c0082b4:	170eae83          	lw	t4,368(t4) # 1c000170 <__DTOR_END__+0x154>
1c0082b8:	174e2e03          	lw	t3,372(t3) # 1c000174 <__DTOR_END__+0x158>
1c0082bc:	18452503          	lw	a0,388(a0) # 1c000184 <__DTOR_END__+0x168>
1c0082c0:	36112023          	sw	ra,864(sp)
1c0082c4:	36612e23          	sw	t1,892(sp)
1c0082c8:	39112023          	sw	a7,896(sp)
1c0082cc:	39012223          	sw	a6,900(sp)
1c0082d0:	38b12623          	sw	a1,908(sp)
1c0082d4:	38c12823          	sw	a2,912(sp)
1c0082d8:	38d12a23          	sw	a3,916(sp)
1c0082dc:	38e12c23          	sw	a4,920(sp)
1c0082e0:	38f12e23          	sw	a5,924(sp)
1c0082e4:	1c0000b7          	lui	ra,0x1c000
1c0082e8:	1c000337          	lui	t1,0x1c000
1c0082ec:	1c0008b7          	lui	a7,0x1c000
1c0082f0:	1c000837          	lui	a6,0x1c000
1c0082f4:	1c0005b7          	lui	a1,0x1c000
1c0082f8:	1c000637          	lui	a2,0x1c000
1c0082fc:	1c0006b7          	lui	a3,0x1c000
1c008300:	1c000737          	lui	a4,0x1c000
1c008304:	1c0007b7          	lui	a5,0x1c000
1c008308:	36712223          	sw	t2,868(sp)
1c00830c:	36512423          	sw	t0,872(sp)
1c008310:	37f12623          	sw	t6,876(sp)
1c008314:	37e12823          	sw	t5,880(sp)
1c008318:	37d12a23          	sw	t4,884(sp)
1c00831c:	37c12c23          	sw	t3,888(sp)
1c008320:	38a12423          	sw	a0,904(sp)
1c008324:	1c0003b7          	lui	t2,0x1c000
1c008328:	19c0a083          	lw	ra,412(ra) # 1c00019c <__DTOR_END__+0x180>
1c00832c:	1c0002b7          	lui	t0,0x1c000
1c008330:	1b832303          	lw	t1,440(t1) # 1c0001b8 <__DTOR_END__+0x19c>
1c008334:	1bc8a883          	lw	a7,444(a7) # 1c0001bc <__DTOR_END__+0x1a0>
1c008338:	1c082803          	lw	a6,448(a6) # 1c0001c0 <__DTOR_END__+0x1a4>
1c00833c:	1c85a583          	lw	a1,456(a1) # 1c0001c8 <__DTOR_END__+0x1ac>
1c008340:	1cc62603          	lw	a2,460(a2) # 1c0001cc <__DTOR_END__+0x1b0>
1c008344:	1d06a683          	lw	a3,464(a3) # 1c0001d0 <__DTOR_END__+0x1b4>
1c008348:	1d472703          	lw	a4,468(a4) # 1c0001d4 <__DTOR_END__+0x1b8>
1c00834c:	1d87a783          	lw	a5,472(a5) # 1c0001d8 <__DTOR_END__+0x1bc>
1c008350:	1c000fb7          	lui	t6,0x1c000
1c008354:	1c000f37          	lui	t5,0x1c000
1c008358:	1c000eb7          	lui	t4,0x1c000
1c00835c:	1c000e37          	lui	t3,0x1c000
1c008360:	1c000537          	lui	a0,0x1c000
1c008364:	1a03a383          	lw	t2,416(t2) # 1c0001a0 <__DTOR_END__+0x184>
1c008368:	1a42a283          	lw	t0,420(t0) # 1c0001a4 <__DTOR_END__+0x188>
1c00836c:	1a8faf83          	lw	t6,424(t6) # 1c0001a8 <__DTOR_END__+0x18c>
1c008370:	1acf2f03          	lw	t5,428(t5) # 1c0001ac <__DTOR_END__+0x190>
1c008374:	1b0eae83          	lw	t4,432(t4) # 1c0001b0 <__DTOR_END__+0x194>
1c008378:	1b4e2e03          	lw	t3,436(t3) # 1c0001b4 <__DTOR_END__+0x198>
1c00837c:	1c452503          	lw	a0,452(a0) # 1c0001c4 <__DTOR_END__+0x1a8>
1c008380:	3a112023          	sw	ra,928(sp)
1c008384:	3a612e23          	sw	t1,956(sp)
1c008388:	3d112023          	sw	a7,960(sp)
1c00838c:	3d012223          	sw	a6,964(sp)
1c008390:	3cb12623          	sw	a1,972(sp)
1c008394:	3cc12823          	sw	a2,976(sp)
1c008398:	3cd12a23          	sw	a3,980(sp)
1c00839c:	3ce12c23          	sw	a4,984(sp)
1c0083a0:	3cf12e23          	sw	a5,988(sp)
1c0083a4:	1c0000b7          	lui	ra,0x1c000
1c0083a8:	1c000337          	lui	t1,0x1c000
1c0083ac:	1c0008b7          	lui	a7,0x1c000
1c0083b0:	1c000837          	lui	a6,0x1c000
1c0083b4:	1c0005b7          	lui	a1,0x1c000
1c0083b8:	1c000637          	lui	a2,0x1c000
1c0083bc:	1c0006b7          	lui	a3,0x1c000
1c0083c0:	1c000737          	lui	a4,0x1c000
1c0083c4:	1c0007b7          	lui	a5,0x1c000
1c0083c8:	3a712223          	sw	t2,932(sp)
1c0083cc:	3a512423          	sw	t0,936(sp)
1c0083d0:	3bf12623          	sw	t6,940(sp)
1c0083d4:	3be12823          	sw	t5,944(sp)
1c0083d8:	3bd12a23          	sw	t4,948(sp)
1c0083dc:	3bc12c23          	sw	t3,952(sp)
1c0083e0:	3ca12423          	sw	a0,968(sp)
1c0083e4:	1c0003b7          	lui	t2,0x1c000
1c0083e8:	1dc0a083          	lw	ra,476(ra) # 1c0001dc <__DTOR_END__+0x1c0>
1c0083ec:	1c0002b7          	lui	t0,0x1c000
1c0083f0:	1f832303          	lw	t1,504(t1) # 1c0001f8 <__DTOR_END__+0x1dc>
1c0083f4:	1fc8a883          	lw	a7,508(a7) # 1c0001fc <__DTOR_END__+0x1e0>
1c0083f8:	20082803          	lw	a6,512(a6) # 1c000200 <__DTOR_END__+0x1e4>
1c0083fc:	2085a583          	lw	a1,520(a1) # 1c000208 <__DTOR_END__+0x1ec>
1c008400:	20c62603          	lw	a2,524(a2) # 1c00020c <__DTOR_END__+0x1f0>
1c008404:	2106a683          	lw	a3,528(a3) # 1c000210 <__DTOR_END__+0x1f4>
1c008408:	21472703          	lw	a4,532(a4) # 1c000214 <__DTOR_END__+0x1f8>
1c00840c:	2187a783          	lw	a5,536(a5) # 1c000218 <__DTOR_END__+0x1fc>
1c008410:	1c000fb7          	lui	t6,0x1c000
1c008414:	1c000f37          	lui	t5,0x1c000
1c008418:	1c000eb7          	lui	t4,0x1c000
1c00841c:	1c000e37          	lui	t3,0x1c000
1c008420:	1c000537          	lui	a0,0x1c000
1c008424:	1e03a383          	lw	t2,480(t2) # 1c0001e0 <__DTOR_END__+0x1c4>
1c008428:	1e42a283          	lw	t0,484(t0) # 1c0001e4 <__DTOR_END__+0x1c8>
1c00842c:	1e8faf83          	lw	t6,488(t6) # 1c0001e8 <__DTOR_END__+0x1cc>
1c008430:	1ecf2f03          	lw	t5,492(t5) # 1c0001ec <__DTOR_END__+0x1d0>
1c008434:	1f0eae83          	lw	t4,496(t4) # 1c0001f0 <__DTOR_END__+0x1d4>
1c008438:	1f4e2e03          	lw	t3,500(t3) # 1c0001f4 <__DTOR_END__+0x1d8>
1c00843c:	20452503          	lw	a0,516(a0) # 1c000204 <__DTOR_END__+0x1e8>
1c008440:	3e112023          	sw	ra,992(sp)
1c008444:	3e612e23          	sw	t1,1020(sp)
1c008448:	41112023          	sw	a7,1024(sp)
1c00844c:	41012223          	sw	a6,1028(sp)
1c008450:	40b12623          	sw	a1,1036(sp)
1c008454:	40c12823          	sw	a2,1040(sp)
1c008458:	40d12a23          	sw	a3,1044(sp)
1c00845c:	40e12c23          	sw	a4,1048(sp)
1c008460:	40f12e23          	sw	a5,1052(sp)
1c008464:	1c0000b7          	lui	ra,0x1c000
1c008468:	1c000337          	lui	t1,0x1c000
1c00846c:	1c0008b7          	lui	a7,0x1c000
1c008470:	1c000837          	lui	a6,0x1c000
1c008474:	1c0005b7          	lui	a1,0x1c000
1c008478:	1c000637          	lui	a2,0x1c000
1c00847c:	1c0006b7          	lui	a3,0x1c000
1c008480:	1c000737          	lui	a4,0x1c000
1c008484:	1c0007b7          	lui	a5,0x1c000
1c008488:	3e712223          	sw	t2,996(sp)
1c00848c:	3e512423          	sw	t0,1000(sp)
1c008490:	3ff12623          	sw	t6,1004(sp)
1c008494:	3fe12823          	sw	t5,1008(sp)
1c008498:	3fd12a23          	sw	t4,1012(sp)
1c00849c:	3fc12c23          	sw	t3,1016(sp)
1c0084a0:	40a12423          	sw	a0,1032(sp)
1c0084a4:	1c0003b7          	lui	t2,0x1c000
1c0084a8:	21c0a083          	lw	ra,540(ra) # 1c00021c <__DTOR_END__+0x200>
1c0084ac:	1c0002b7          	lui	t0,0x1c000
1c0084b0:	23832303          	lw	t1,568(t1) # 1c000238 <__DTOR_END__+0x21c>
1c0084b4:	23c8a883          	lw	a7,572(a7) # 1c00023c <__DTOR_END__+0x220>
1c0084b8:	24082803          	lw	a6,576(a6) # 1c000240 <__DTOR_END__+0x224>
1c0084bc:	2485a583          	lw	a1,584(a1) # 1c000248 <__DTOR_END__+0x22c>
1c0084c0:	24c62603          	lw	a2,588(a2) # 1c00024c <__DTOR_END__+0x230>
1c0084c4:	2506a683          	lw	a3,592(a3) # 1c000250 <__DTOR_END__+0x234>
1c0084c8:	25472703          	lw	a4,596(a4) # 1c000254 <__DTOR_END__+0x238>
1c0084cc:	2587a783          	lw	a5,600(a5) # 1c000258 <__DTOR_END__+0x23c>
1c0084d0:	1c000fb7          	lui	t6,0x1c000
1c0084d4:	1c000f37          	lui	t5,0x1c000
1c0084d8:	1c000eb7          	lui	t4,0x1c000
1c0084dc:	1c000e37          	lui	t3,0x1c000
1c0084e0:	1c000537          	lui	a0,0x1c000
1c0084e4:	2203a383          	lw	t2,544(t2) # 1c000220 <__DTOR_END__+0x204>
1c0084e8:	2242a283          	lw	t0,548(t0) # 1c000224 <__DTOR_END__+0x208>
1c0084ec:	228faf83          	lw	t6,552(t6) # 1c000228 <__DTOR_END__+0x20c>
1c0084f0:	22cf2f03          	lw	t5,556(t5) # 1c00022c <__DTOR_END__+0x210>
1c0084f4:	230eae83          	lw	t4,560(t4) # 1c000230 <__DTOR_END__+0x214>
1c0084f8:	234e2e03          	lw	t3,564(t3) # 1c000234 <__DTOR_END__+0x218>
1c0084fc:	24452503          	lw	a0,580(a0) # 1c000244 <__DTOR_END__+0x228>
1c008500:	42112023          	sw	ra,1056(sp)
1c008504:	42612e23          	sw	t1,1084(sp)
1c008508:	45112023          	sw	a7,1088(sp)
1c00850c:	45012223          	sw	a6,1092(sp)
1c008510:	44b12623          	sw	a1,1100(sp)
1c008514:	44c12823          	sw	a2,1104(sp)
1c008518:	44d12a23          	sw	a3,1108(sp)
1c00851c:	44e12c23          	sw	a4,1112(sp)
1c008520:	44f12e23          	sw	a5,1116(sp)
1c008524:	1c0000b7          	lui	ra,0x1c000
1c008528:	1c000337          	lui	t1,0x1c000
1c00852c:	1c0008b7          	lui	a7,0x1c000
1c008530:	1c000837          	lui	a6,0x1c000
1c008534:	1c0005b7          	lui	a1,0x1c000
1c008538:	1c000637          	lui	a2,0x1c000
1c00853c:	1c0006b7          	lui	a3,0x1c000
1c008540:	1c000737          	lui	a4,0x1c000
1c008544:	1c0007b7          	lui	a5,0x1c000
1c008548:	42712223          	sw	t2,1060(sp)
1c00854c:	42512423          	sw	t0,1064(sp)
1c008550:	43f12623          	sw	t6,1068(sp)
1c008554:	43e12823          	sw	t5,1072(sp)
1c008558:	43d12a23          	sw	t4,1076(sp)
1c00855c:	43c12c23          	sw	t3,1080(sp)
1c008560:	44a12423          	sw	a0,1096(sp)
1c008564:	1c0003b7          	lui	t2,0x1c000
1c008568:	25c0a083          	lw	ra,604(ra) # 1c00025c <__DTOR_END__+0x240>
1c00856c:	1c0002b7          	lui	t0,0x1c000
1c008570:	27832303          	lw	t1,632(t1) # 1c000278 <__DTOR_END__+0x25c>
1c008574:	27c8a883          	lw	a7,636(a7) # 1c00027c <__DTOR_END__+0x260>
1c008578:	28082803          	lw	a6,640(a6) # 1c000280 <__DTOR_END__+0x264>
1c00857c:	2885a583          	lw	a1,648(a1) # 1c000288 <__DTOR_END__+0x26c>
1c008580:	28c62603          	lw	a2,652(a2) # 1c00028c <__DTOR_END__+0x270>
1c008584:	2906a683          	lw	a3,656(a3) # 1c000290 <__DTOR_END__+0x274>
1c008588:	29472703          	lw	a4,660(a4) # 1c000294 <__DTOR_END__+0x278>
1c00858c:	2987a783          	lw	a5,664(a5) # 1c000298 <__DTOR_END__+0x27c>
1c008590:	1c000fb7          	lui	t6,0x1c000
1c008594:	1c000f37          	lui	t5,0x1c000
1c008598:	1c000eb7          	lui	t4,0x1c000
1c00859c:	1c000e37          	lui	t3,0x1c000
1c0085a0:	1c000537          	lui	a0,0x1c000
1c0085a4:	2603a383          	lw	t2,608(t2) # 1c000260 <__DTOR_END__+0x244>
1c0085a8:	2642a283          	lw	t0,612(t0) # 1c000264 <__DTOR_END__+0x248>
1c0085ac:	268faf83          	lw	t6,616(t6) # 1c000268 <__DTOR_END__+0x24c>
1c0085b0:	26cf2f03          	lw	t5,620(t5) # 1c00026c <__DTOR_END__+0x250>
1c0085b4:	270eae83          	lw	t4,624(t4) # 1c000270 <__DTOR_END__+0x254>
1c0085b8:	274e2e03          	lw	t3,628(t3) # 1c000274 <__DTOR_END__+0x258>
1c0085bc:	28452503          	lw	a0,644(a0) # 1c000284 <__DTOR_END__+0x268>
1c0085c0:	46112023          	sw	ra,1120(sp)
1c0085c4:	46612e23          	sw	t1,1148(sp)
1c0085c8:	49112023          	sw	a7,1152(sp)
1c0085cc:	49012223          	sw	a6,1156(sp)
1c0085d0:	48b12623          	sw	a1,1164(sp)
1c0085d4:	48c12823          	sw	a2,1168(sp)
1c0085d8:	48d12a23          	sw	a3,1172(sp)
1c0085dc:	48e12c23          	sw	a4,1176(sp)
1c0085e0:	48f12e23          	sw	a5,1180(sp)
1c0085e4:	1c0000b7          	lui	ra,0x1c000
1c0085e8:	1c000337          	lui	t1,0x1c000
1c0085ec:	1c0008b7          	lui	a7,0x1c000
1c0085f0:	1c000837          	lui	a6,0x1c000
1c0085f4:	1c0005b7          	lui	a1,0x1c000
1c0085f8:	1c000637          	lui	a2,0x1c000
1c0085fc:	1c0006b7          	lui	a3,0x1c000
1c008600:	1c000737          	lui	a4,0x1c000
1c008604:	1c0007b7          	lui	a5,0x1c000
1c008608:	46712223          	sw	t2,1124(sp)
1c00860c:	46512423          	sw	t0,1128(sp)
1c008610:	47f12623          	sw	t6,1132(sp)
1c008614:	47e12823          	sw	t5,1136(sp)
1c008618:	47d12a23          	sw	t4,1140(sp)
1c00861c:	47c12c23          	sw	t3,1144(sp)
1c008620:	48a12423          	sw	a0,1160(sp)
1c008624:	1c0003b7          	lui	t2,0x1c000
1c008628:	29c0a083          	lw	ra,668(ra) # 1c00029c <__DTOR_END__+0x280>
1c00862c:	1c0002b7          	lui	t0,0x1c000
1c008630:	2b832303          	lw	t1,696(t1) # 1c0002b8 <__DTOR_END__+0x29c>
1c008634:	2bc8a883          	lw	a7,700(a7) # 1c0002bc <__DTOR_END__+0x2a0>
1c008638:	2c082803          	lw	a6,704(a6) # 1c0002c0 <__DTOR_END__+0x2a4>
1c00863c:	2c85a583          	lw	a1,712(a1) # 1c0002c8 <__DTOR_END__+0x2ac>
1c008640:	2cc62603          	lw	a2,716(a2) # 1c0002cc <__DTOR_END__+0x2b0>
1c008644:	2d06a683          	lw	a3,720(a3) # 1c0002d0 <__DTOR_END__+0x2b4>
1c008648:	2d472703          	lw	a4,724(a4) # 1c0002d4 <__DTOR_END__+0x2b8>
1c00864c:	2d87a783          	lw	a5,728(a5) # 1c0002d8 <__DTOR_END__+0x2bc>
1c008650:	1c000fb7          	lui	t6,0x1c000
1c008654:	1c000f37          	lui	t5,0x1c000
1c008658:	1c000eb7          	lui	t4,0x1c000
1c00865c:	1c000e37          	lui	t3,0x1c000
1c008660:	1c000537          	lui	a0,0x1c000
1c008664:	2a03a383          	lw	t2,672(t2) # 1c0002a0 <__DTOR_END__+0x284>
1c008668:	2a42a283          	lw	t0,676(t0) # 1c0002a4 <__DTOR_END__+0x288>
1c00866c:	2a8faf83          	lw	t6,680(t6) # 1c0002a8 <__DTOR_END__+0x28c>
1c008670:	2acf2f03          	lw	t5,684(t5) # 1c0002ac <__DTOR_END__+0x290>
1c008674:	2b0eae83          	lw	t4,688(t4) # 1c0002b0 <__DTOR_END__+0x294>
1c008678:	2b4e2e03          	lw	t3,692(t3) # 1c0002b4 <__DTOR_END__+0x298>
1c00867c:	2c452503          	lw	a0,708(a0) # 1c0002c4 <__DTOR_END__+0x2a8>
1c008680:	4a112023          	sw	ra,1184(sp)
1c008684:	4a612e23          	sw	t1,1212(sp)
1c008688:	4d112023          	sw	a7,1216(sp)
1c00868c:	4d012223          	sw	a6,1220(sp)
1c008690:	4cb12623          	sw	a1,1228(sp)
1c008694:	4cc12823          	sw	a2,1232(sp)
1c008698:	4cd12a23          	sw	a3,1236(sp)
1c00869c:	4ce12c23          	sw	a4,1240(sp)
1c0086a0:	4cf12e23          	sw	a5,1244(sp)
1c0086a4:	1c0000b7          	lui	ra,0x1c000
1c0086a8:	1c000337          	lui	t1,0x1c000
1c0086ac:	1c0008b7          	lui	a7,0x1c000
1c0086b0:	1c000837          	lui	a6,0x1c000
1c0086b4:	1c0005b7          	lui	a1,0x1c000
1c0086b8:	1c000637          	lui	a2,0x1c000
1c0086bc:	1c0006b7          	lui	a3,0x1c000
1c0086c0:	1c000737          	lui	a4,0x1c000
1c0086c4:	1c0007b7          	lui	a5,0x1c000
1c0086c8:	4a712223          	sw	t2,1188(sp)
1c0086cc:	4a512423          	sw	t0,1192(sp)
1c0086d0:	4bf12623          	sw	t6,1196(sp)
1c0086d4:	4be12823          	sw	t5,1200(sp)
1c0086d8:	4bd12a23          	sw	t4,1204(sp)
1c0086dc:	4bc12c23          	sw	t3,1208(sp)
1c0086e0:	4ca12423          	sw	a0,1224(sp)
1c0086e4:	1c0003b7          	lui	t2,0x1c000
1c0086e8:	2dc0a083          	lw	ra,732(ra) # 1c0002dc <__DTOR_END__+0x2c0>
1c0086ec:	1c0002b7          	lui	t0,0x1c000
1c0086f0:	2f832303          	lw	t1,760(t1) # 1c0002f8 <__DTOR_END__+0x2dc>
1c0086f4:	2fc8a883          	lw	a7,764(a7) # 1c0002fc <__DTOR_END__+0x2e0>
1c0086f8:	30082803          	lw	a6,768(a6) # 1c000300 <__DTOR_END__+0x2e4>
1c0086fc:	3085a583          	lw	a1,776(a1) # 1c000308 <__DTOR_END__+0x2ec>
1c008700:	30c62603          	lw	a2,780(a2) # 1c00030c <__DTOR_END__+0x2f0>
1c008704:	3106a683          	lw	a3,784(a3) # 1c000310 <__DTOR_END__+0x2f4>
1c008708:	31472703          	lw	a4,788(a4) # 1c000314 <__DTOR_END__+0x2f8>
1c00870c:	3187a783          	lw	a5,792(a5) # 1c000318 <__DTOR_END__+0x2fc>
1c008710:	1c000fb7          	lui	t6,0x1c000
1c008714:	1c000f37          	lui	t5,0x1c000
1c008718:	1c000eb7          	lui	t4,0x1c000
1c00871c:	1c000e37          	lui	t3,0x1c000
1c008720:	1c000537          	lui	a0,0x1c000
1c008724:	2e03a383          	lw	t2,736(t2) # 1c0002e0 <__DTOR_END__+0x2c4>
1c008728:	2e42a283          	lw	t0,740(t0) # 1c0002e4 <__DTOR_END__+0x2c8>
1c00872c:	2e8faf83          	lw	t6,744(t6) # 1c0002e8 <__DTOR_END__+0x2cc>
1c008730:	2ecf2f03          	lw	t5,748(t5) # 1c0002ec <__DTOR_END__+0x2d0>
1c008734:	2f0eae83          	lw	t4,752(t4) # 1c0002f0 <__DTOR_END__+0x2d4>
1c008738:	2f4e2e03          	lw	t3,756(t3) # 1c0002f4 <__DTOR_END__+0x2d8>
1c00873c:	30452503          	lw	a0,772(a0) # 1c000304 <__DTOR_END__+0x2e8>
1c008740:	4e112023          	sw	ra,1248(sp)
1c008744:	4e612e23          	sw	t1,1276(sp)
1c008748:	51112023          	sw	a7,1280(sp)
1c00874c:	51012223          	sw	a6,1284(sp)
1c008750:	50b12623          	sw	a1,1292(sp)
1c008754:	50c12823          	sw	a2,1296(sp)
1c008758:	50d12a23          	sw	a3,1300(sp)
1c00875c:	50e12c23          	sw	a4,1304(sp)
1c008760:	50f12e23          	sw	a5,1308(sp)
1c008764:	1c0000b7          	lui	ra,0x1c000
1c008768:	1c000337          	lui	t1,0x1c000
1c00876c:	1c0008b7          	lui	a7,0x1c000
1c008770:	1c000837          	lui	a6,0x1c000
1c008774:	1c0005b7          	lui	a1,0x1c000
1c008778:	1c000637          	lui	a2,0x1c000
1c00877c:	1c0006b7          	lui	a3,0x1c000
1c008780:	1c000737          	lui	a4,0x1c000
1c008784:	1c0007b7          	lui	a5,0x1c000
1c008788:	4e712223          	sw	t2,1252(sp)
1c00878c:	4e512423          	sw	t0,1256(sp)
1c008790:	4ff12623          	sw	t6,1260(sp)
1c008794:	4fe12823          	sw	t5,1264(sp)
1c008798:	4fd12a23          	sw	t4,1268(sp)
1c00879c:	4fc12c23          	sw	t3,1272(sp)
1c0087a0:	50a12423          	sw	a0,1288(sp)
1c0087a4:	1c0003b7          	lui	t2,0x1c000
1c0087a8:	31c0a083          	lw	ra,796(ra) # 1c00031c <__DTOR_END__+0x300>
1c0087ac:	1c0002b7          	lui	t0,0x1c000
1c0087b0:	33832303          	lw	t1,824(t1) # 1c000338 <__DTOR_END__+0x31c>
1c0087b4:	33c8a883          	lw	a7,828(a7) # 1c00033c <__DTOR_END__+0x320>
1c0087b8:	34082803          	lw	a6,832(a6) # 1c000340 <__DTOR_END__+0x324>
1c0087bc:	3485a583          	lw	a1,840(a1) # 1c000348 <__DTOR_END__+0x32c>
1c0087c0:	34c62603          	lw	a2,844(a2) # 1c00034c <__DTOR_END__+0x330>
1c0087c4:	3506a683          	lw	a3,848(a3) # 1c000350 <__DTOR_END__+0x334>
1c0087c8:	35472703          	lw	a4,852(a4) # 1c000354 <__DTOR_END__+0x338>
1c0087cc:	3587a783          	lw	a5,856(a5) # 1c000358 <__DTOR_END__+0x33c>
1c0087d0:	1c000fb7          	lui	t6,0x1c000
1c0087d4:	1c000f37          	lui	t5,0x1c000
1c0087d8:	1c000eb7          	lui	t4,0x1c000
1c0087dc:	1c000e37          	lui	t3,0x1c000
1c0087e0:	1c000537          	lui	a0,0x1c000
1c0087e4:	3203a383          	lw	t2,800(t2) # 1c000320 <__DTOR_END__+0x304>
1c0087e8:	3242a283          	lw	t0,804(t0) # 1c000324 <__DTOR_END__+0x308>
1c0087ec:	328faf83          	lw	t6,808(t6) # 1c000328 <__DTOR_END__+0x30c>
1c0087f0:	32cf2f03          	lw	t5,812(t5) # 1c00032c <__DTOR_END__+0x310>
1c0087f4:	330eae83          	lw	t4,816(t4) # 1c000330 <__DTOR_END__+0x314>
1c0087f8:	334e2e03          	lw	t3,820(t3) # 1c000334 <__DTOR_END__+0x318>
1c0087fc:	34452503          	lw	a0,836(a0) # 1c000344 <__DTOR_END__+0x328>
1c008800:	52112023          	sw	ra,1312(sp)
1c008804:	52612e23          	sw	t1,1340(sp)
1c008808:	55112023          	sw	a7,1344(sp)
1c00880c:	55012223          	sw	a6,1348(sp)
1c008810:	54b12623          	sw	a1,1356(sp)
1c008814:	54c12823          	sw	a2,1360(sp)
1c008818:	54d12a23          	sw	a3,1364(sp)
1c00881c:	54e12c23          	sw	a4,1368(sp)
1c008820:	54f12e23          	sw	a5,1372(sp)
1c008824:	1c0000b7          	lui	ra,0x1c000
1c008828:	1c000337          	lui	t1,0x1c000
1c00882c:	1c0008b7          	lui	a7,0x1c000
1c008830:	1c000837          	lui	a6,0x1c000
1c008834:	1c0005b7          	lui	a1,0x1c000
1c008838:	1c000637          	lui	a2,0x1c000
1c00883c:	1c0006b7          	lui	a3,0x1c000
1c008840:	1c000737          	lui	a4,0x1c000
1c008844:	1c0007b7          	lui	a5,0x1c000
1c008848:	52712223          	sw	t2,1316(sp)
1c00884c:	52512423          	sw	t0,1320(sp)
1c008850:	53f12623          	sw	t6,1324(sp)
1c008854:	53e12823          	sw	t5,1328(sp)
1c008858:	53d12a23          	sw	t4,1332(sp)
1c00885c:	53c12c23          	sw	t3,1336(sp)
1c008860:	54a12423          	sw	a0,1352(sp)
1c008864:	1c0003b7          	lui	t2,0x1c000
1c008868:	35c0a083          	lw	ra,860(ra) # 1c00035c <__DTOR_END__+0x340>
1c00886c:	1c0002b7          	lui	t0,0x1c000
1c008870:	37832303          	lw	t1,888(t1) # 1c000378 <__DTOR_END__+0x35c>
1c008874:	37c8a883          	lw	a7,892(a7) # 1c00037c <__DTOR_END__+0x360>
1c008878:	38082803          	lw	a6,896(a6) # 1c000380 <__DTOR_END__+0x364>
1c00887c:	3885a583          	lw	a1,904(a1) # 1c000388 <__DTOR_END__+0x36c>
1c008880:	38c62603          	lw	a2,908(a2) # 1c00038c <__DTOR_END__+0x370>
1c008884:	3906a683          	lw	a3,912(a3) # 1c000390 <__DTOR_END__+0x374>
1c008888:	39472703          	lw	a4,916(a4) # 1c000394 <__DTOR_END__+0x378>
1c00888c:	3987a783          	lw	a5,920(a5) # 1c000398 <__DTOR_END__+0x37c>
1c008890:	1c000fb7          	lui	t6,0x1c000
1c008894:	1c000f37          	lui	t5,0x1c000
1c008898:	1c000eb7          	lui	t4,0x1c000
1c00889c:	1c000e37          	lui	t3,0x1c000
1c0088a0:	1c000537          	lui	a0,0x1c000
1c0088a4:	3603a383          	lw	t2,864(t2) # 1c000360 <__DTOR_END__+0x344>
1c0088a8:	3642a283          	lw	t0,868(t0) # 1c000364 <__DTOR_END__+0x348>
1c0088ac:	368faf83          	lw	t6,872(t6) # 1c000368 <__DTOR_END__+0x34c>
1c0088b0:	36cf2f03          	lw	t5,876(t5) # 1c00036c <__DTOR_END__+0x350>
1c0088b4:	370eae83          	lw	t4,880(t4) # 1c000370 <__DTOR_END__+0x354>
1c0088b8:	374e2e03          	lw	t3,884(t3) # 1c000374 <__DTOR_END__+0x358>
1c0088bc:	38452503          	lw	a0,900(a0) # 1c000384 <__DTOR_END__+0x368>
1c0088c0:	56112023          	sw	ra,1376(sp)
1c0088c4:	56612e23          	sw	t1,1404(sp)
1c0088c8:	59112023          	sw	a7,1408(sp)
1c0088cc:	59012223          	sw	a6,1412(sp)
1c0088d0:	58b12623          	sw	a1,1420(sp)
1c0088d4:	58c12823          	sw	a2,1424(sp)
1c0088d8:	58d12a23          	sw	a3,1428(sp)
1c0088dc:	58e12c23          	sw	a4,1432(sp)
1c0088e0:	58f12e23          	sw	a5,1436(sp)
1c0088e4:	1c0000b7          	lui	ra,0x1c000
1c0088e8:	1c000337          	lui	t1,0x1c000
1c0088ec:	1c0008b7          	lui	a7,0x1c000
1c0088f0:	1c000837          	lui	a6,0x1c000
1c0088f4:	1c0005b7          	lui	a1,0x1c000
1c0088f8:	1c000637          	lui	a2,0x1c000
1c0088fc:	1c0006b7          	lui	a3,0x1c000
1c008900:	1c000737          	lui	a4,0x1c000
1c008904:	1c0007b7          	lui	a5,0x1c000
1c008908:	56712223          	sw	t2,1380(sp)
1c00890c:	56512423          	sw	t0,1384(sp)
1c008910:	57f12623          	sw	t6,1388(sp)
1c008914:	57e12823          	sw	t5,1392(sp)
1c008918:	57d12a23          	sw	t4,1396(sp)
1c00891c:	57c12c23          	sw	t3,1400(sp)
1c008920:	58a12423          	sw	a0,1416(sp)
1c008924:	1c0003b7          	lui	t2,0x1c000
1c008928:	39c0a083          	lw	ra,924(ra) # 1c00039c <__DTOR_END__+0x380>
1c00892c:	1c0002b7          	lui	t0,0x1c000
1c008930:	3b832303          	lw	t1,952(t1) # 1c0003b8 <__DTOR_END__+0x39c>
1c008934:	3bc8a883          	lw	a7,956(a7) # 1c0003bc <__DTOR_END__+0x3a0>
1c008938:	3c082803          	lw	a6,960(a6) # 1c0003c0 <__DTOR_END__+0x3a4>
1c00893c:	3c85a583          	lw	a1,968(a1) # 1c0003c8 <__DTOR_END__+0x3ac>
1c008940:	3cc62603          	lw	a2,972(a2) # 1c0003cc <__DTOR_END__+0x3b0>
1c008944:	3d06a683          	lw	a3,976(a3) # 1c0003d0 <__DTOR_END__+0x3b4>
1c008948:	3d472703          	lw	a4,980(a4) # 1c0003d4 <__DTOR_END__+0x3b8>
1c00894c:	3d87a783          	lw	a5,984(a5) # 1c0003d8 <__DTOR_END__+0x3bc>
1c008950:	1c000fb7          	lui	t6,0x1c000
1c008954:	1c000f37          	lui	t5,0x1c000
1c008958:	1c000eb7          	lui	t4,0x1c000
1c00895c:	1c000e37          	lui	t3,0x1c000
1c008960:	1c000537          	lui	a0,0x1c000
1c008964:	3a03a383          	lw	t2,928(t2) # 1c0003a0 <__DTOR_END__+0x384>
1c008968:	3a42a283          	lw	t0,932(t0) # 1c0003a4 <__DTOR_END__+0x388>
1c00896c:	3a8faf83          	lw	t6,936(t6) # 1c0003a8 <__DTOR_END__+0x38c>
1c008970:	3acf2f03          	lw	t5,940(t5) # 1c0003ac <__DTOR_END__+0x390>
1c008974:	3b0eae83          	lw	t4,944(t4) # 1c0003b0 <__DTOR_END__+0x394>
1c008978:	3b4e2e03          	lw	t3,948(t3) # 1c0003b4 <__DTOR_END__+0x398>
1c00897c:	3c452503          	lw	a0,964(a0) # 1c0003c4 <__DTOR_END__+0x3a8>
1c008980:	5a112023          	sw	ra,1440(sp)
1c008984:	5a612e23          	sw	t1,1468(sp)
1c008988:	5d112023          	sw	a7,1472(sp)
1c00898c:	5d012223          	sw	a6,1476(sp)
1c008990:	5cb12623          	sw	a1,1484(sp)
1c008994:	5cc12823          	sw	a2,1488(sp)
1c008998:	5cd12a23          	sw	a3,1492(sp)
1c00899c:	5ce12c23          	sw	a4,1496(sp)
1c0089a0:	5cf12e23          	sw	a5,1500(sp)
1c0089a4:	1c0000b7          	lui	ra,0x1c000
1c0089a8:	1c000337          	lui	t1,0x1c000
1c0089ac:	1c0008b7          	lui	a7,0x1c000
1c0089b0:	1c000837          	lui	a6,0x1c000
1c0089b4:	1c0005b7          	lui	a1,0x1c000
1c0089b8:	1c000637          	lui	a2,0x1c000
1c0089bc:	1c0006b7          	lui	a3,0x1c000
1c0089c0:	1c000737          	lui	a4,0x1c000
1c0089c4:	1c0007b7          	lui	a5,0x1c000
1c0089c8:	5a712223          	sw	t2,1444(sp)
1c0089cc:	5a512423          	sw	t0,1448(sp)
1c0089d0:	5bf12623          	sw	t6,1452(sp)
1c0089d4:	5be12823          	sw	t5,1456(sp)
1c0089d8:	5bd12a23          	sw	t4,1460(sp)
1c0089dc:	5bc12c23          	sw	t3,1464(sp)
1c0089e0:	5ca12423          	sw	a0,1480(sp)
1c0089e4:	1c0003b7          	lui	t2,0x1c000
1c0089e8:	3dc0a083          	lw	ra,988(ra) # 1c0003dc <__DTOR_END__+0x3c0>
1c0089ec:	1c0002b7          	lui	t0,0x1c000
1c0089f0:	3f832303          	lw	t1,1016(t1) # 1c0003f8 <__DTOR_END__+0x3dc>
1c0089f4:	3fc8a883          	lw	a7,1020(a7) # 1c0003fc <__DTOR_END__+0x3e0>
1c0089f8:	40082803          	lw	a6,1024(a6) # 1c000400 <__DTOR_END__+0x3e4>
1c0089fc:	4085a583          	lw	a1,1032(a1) # 1c000408 <__DTOR_END__+0x3ec>
1c008a00:	40c62603          	lw	a2,1036(a2) # 1c00040c <__DTOR_END__+0x3f0>
1c008a04:	4106a683          	lw	a3,1040(a3) # 1c000410 <__DTOR_END__+0x3f4>
1c008a08:	41472703          	lw	a4,1044(a4) # 1c000414 <__DTOR_END__+0x3f8>
1c008a0c:	4187a783          	lw	a5,1048(a5) # 1c000418 <__DTOR_END__+0x3fc>
1c008a10:	1c000fb7          	lui	t6,0x1c000
1c008a14:	1c000f37          	lui	t5,0x1c000
1c008a18:	1c000eb7          	lui	t4,0x1c000
1c008a1c:	1c000e37          	lui	t3,0x1c000
1c008a20:	1c000537          	lui	a0,0x1c000
1c008a24:	3e03a383          	lw	t2,992(t2) # 1c0003e0 <__DTOR_END__+0x3c4>
1c008a28:	3e42a283          	lw	t0,996(t0) # 1c0003e4 <__DTOR_END__+0x3c8>
1c008a2c:	3e8faf83          	lw	t6,1000(t6) # 1c0003e8 <__DTOR_END__+0x3cc>
1c008a30:	3ecf2f03          	lw	t5,1004(t5) # 1c0003ec <__DTOR_END__+0x3d0>
1c008a34:	3f0eae83          	lw	t4,1008(t4) # 1c0003f0 <__DTOR_END__+0x3d4>
1c008a38:	3f4e2e03          	lw	t3,1012(t3) # 1c0003f4 <__DTOR_END__+0x3d8>
1c008a3c:	40452503          	lw	a0,1028(a0) # 1c000404 <__DTOR_END__+0x3e8>
1c008a40:	5e612e23          	sw	t1,1532(sp)
1c008a44:	61112023          	sw	a7,1536(sp)
1c008a48:	61012223          	sw	a6,1540(sp)
1c008a4c:	60b12623          	sw	a1,1548(sp)
1c008a50:	60c12823          	sw	a2,1552(sp)
1c008a54:	60d12a23          	sw	a3,1556(sp)
1c008a58:	60e12c23          	sw	a4,1560(sp)
1c008a5c:	60f12e23          	sw	a5,1564(sp)
1c008a60:	1c000337          	lui	t1,0x1c000
1c008a64:	1c0008b7          	lui	a7,0x1c000
1c008a68:	1c000837          	lui	a6,0x1c000
1c008a6c:	1c0005b7          	lui	a1,0x1c000
1c008a70:	1c000637          	lui	a2,0x1c000
1c008a74:	1c0006b7          	lui	a3,0x1c000
1c008a78:	1c000737          	lui	a4,0x1c000
1c008a7c:	1c0007b7          	lui	a5,0x1c000
1c008a80:	5e112023          	sw	ra,1504(sp)
1c008a84:	5e712223          	sw	t2,1508(sp)
1c008a88:	5e512423          	sw	t0,1512(sp)
1c008a8c:	5ff12623          	sw	t6,1516(sp)
1c008a90:	5fe12823          	sw	t5,1520(sp)
1c008a94:	5fd12a23          	sw	t4,1524(sp)
1c008a98:	5fc12c23          	sw	t3,1528(sp)
1c008a9c:	60a12423          	sw	a0,1544(sp)
1c008aa0:	41c32303          	lw	t1,1052(t1) # 1c00041c <__DTOR_END__+0x400>
1c008aa4:	1c000537          	lui	a0,0x1c000
1c008aa8:	4208a883          	lw	a7,1056(a7) # 1c000420 <__DTOR_END__+0x404>
1c008aac:	42482803          	lw	a6,1060(a6) # 1c000424 <__DTOR_END__+0x408>
1c008ab0:	4306a683          	lw	a3,1072(a3) # 1c000430 <__DTOR_END__+0x414>
1c008ab4:	43472703          	lw	a4,1076(a4) # 1c000434 <__DTOR_END__+0x418>
1c008ab8:	4387a783          	lw	a5,1080(a5) # 1c000438 <__DTOR_END__+0x41c>
1c008abc:	42c62603          	lw	a2,1068(a2) # 1c00042c <__DTOR_END__+0x410>
1c008ac0:	4285a583          	lw	a1,1064(a1) # 1c000428 <__DTOR_END__+0x40c>
1c008ac4:	43c50513          	addi	a0,a0,1084 # 1c00043c <__DTOR_END__+0x420>
1c008ac8:	62612023          	sw	t1,1568(sp)
1c008acc:	63112223          	sw	a7,1572(sp)
1c008ad0:	63012423          	sw	a6,1576(sp)
1c008ad4:	62d12a23          	sw	a3,1588(sp)
1c008ad8:	62e12c23          	sw	a4,1592(sp)
1c008adc:	62f12e23          	sw	a5,1596(sp)
1c008ae0:	62c12823          	sw	a2,1584(sp)
1c008ae4:	62b12623          	sw	a1,1580(sp)
1c008ae8:	6d2020ef          	jal	ra,1c00b1ba <puts>
1c008aec:	1608                	addi	a0,sp,800
1c008aee:	32000593          	li	a1,800
1c008af2:	e50ff0ef          	jal	ra,1c008142 <printbytes>
1c008af6:	1610                	addi	a2,sp,800
1c008af8:	858a                	mv	a1,sp
1c008afa:	1008                	addi	a0,sp,32
1c008afc:	0bb010ef          	jal	ra,1c00a3b6 <PQCLEAN_KYBER512_CLEAN_crypto_kem_enc>
1c008b00:	1c000537          	lui	a0,0x1c000
1c008b04:	44050513          	addi	a0,a0,1088 # 1c000440 <__DTOR_END__+0x424>
1c008b08:	6b2020ef          	jal	ra,1c00b1ba <puts>
1c008b0c:	1c000537          	lui	a0,0x1c000
1c008b10:	45450513          	addi	a0,a0,1108 # 1c000454 <__DTOR_END__+0x438>
1c008b14:	6a6020ef          	jal	ra,1c00b1ba <puts>
1c008b18:	30000593          	li	a1,768
1c008b1c:	1008                	addi	a0,sp,32
1c008b1e:	e24ff0ef          	jal	ra,1c008142 <printbytes>
1c008b22:	1c000537          	lui	a0,0x1c000
1c008b26:	45c50513          	addi	a0,a0,1116 # 1c00045c <__DTOR_END__+0x440>
1c008b2a:	690020ef          	jal	ra,1c00b1ba <puts>
1c008b2e:	850a                	mv	a0,sp
1c008b30:	02000593          	li	a1,32
1c008b34:	e0eff0ef          	jal	ra,1c008142 <printbytes>
1c008b38:	64c12083          	lw	ra,1612(sp)
1c008b3c:	4501                	li	a0,0
1c008b3e:	65010113          	addi	sp,sp,1616
1c008b42:	8082                	ret

1c008b44 <pos_fll_init>:
1c008b44:	1101                	addi	sp,sp,-32
1c008b46:	1a100637          	lui	a2,0x1a100
1c008b4a:	ca26                	sw	s1,20(sp)
1c008b4c:	00451693          	slli	a3,a0,0x4
1c008b50:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c008b54:	94b6                	add	s1,s1,a3
1c008b56:	4098                	lw	a4,0(s1)
1c008b58:	c84a                	sw	s2,16(sp)
1c008b5a:	ce06                	sw	ra,28(sp)
1c008b5c:	cc22                	sw	s0,24(sp)
1c008b5e:	c64e                	sw	s3,12(sp)
1c008b60:	c452                	sw	s4,8(sp)
1c008b62:	892a                	mv	s2,a0
1c008b64:	87ba                	mv	a5,a4
1c008b66:	04074563          	bltz	a4,1c008bb0 <pos_fll_init+0x6c>
1c008b6a:	00860593          	addi	a1,a2,8
1c008b6e:	95b6                	add	a1,a1,a3
1c008b70:	419c                	lw	a5,0(a1)
1c008b72:	7541                	lui	a0,0xffff0
1c008b74:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c008b78:	8fe9                	and	a5,a5,a0
1c008b7a:	6509                	lui	a0,0x2
1c008b7c:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c008b80:	8fc9                	or	a5,a5,a0
1c008b82:	f0010537          	lui	a0,0xf0010
1c008b86:	157d                	addi	a0,a0,-1
1c008b88:	8fe9                	and	a5,a5,a0
1c008b8a:	00500537          	lui	a0,0x500
1c008b8e:	8fc9                	or	a5,a5,a0
1c008b90:	0631                	addi	a2,a2,12
1c008b92:	c19c                	sw	a5,0(a1)
1c008b94:	96b2                	add	a3,a3,a2
1c008b96:	429c                	lw	a5,0(a3)
1c008b98:	fc010637          	lui	a2,0xfc010
1c008b9c:	167d                	addi	a2,a2,-1
1c008b9e:	8ff1                	and	a5,a5,a2
1c008ba0:	014c0637          	lui	a2,0x14c0
1c008ba4:	8fd1                	or	a5,a5,a2
1c008ba6:	c29c                	sw	a5,0(a3)
1c008ba8:	c00007b7          	lui	a5,0xc0000
1c008bac:	8fd9                	or	a5,a5,a4
1c008bae:	c09c                	sw	a5,0(s1)
1c008bb0:	1c006437          	lui	s0,0x1c006
1c008bb4:	5d840413          	addi	s0,s0,1496 # 1c0065d8 <pos_fll_freq>
1c008bb8:	00291993          	slli	s3,s2,0x2
1c008bbc:	013406b3          	add	a3,s0,s3
1c008bc0:	0006aa03          	lw	s4,0(a3)
1c008bc4:	020a1d63          	bnez	s4,1c008bfe <pos_fll_init+0xba>
1c008bc8:	83e9                	srli	a5,a5,0x1a
1c008bca:	0742                	slli	a4,a4,0x10
1c008bcc:	8341                	srli	a4,a4,0x10
1c008bce:	8bbd                	andi	a5,a5,15
1c008bd0:	073e                	slli	a4,a4,0xf
1c008bd2:	17fd                	addi	a5,a5,-1
1c008bd4:	00f75a33          	srl	s4,a4,a5
1c008bd8:	1c006537          	lui	a0,0x1c006
1c008bdc:	0146a023          	sw	s4,0(a3)
1c008be0:	5d050513          	addi	a0,a0,1488 # 1c0065d0 <pos_fll_is_on>
1c008be4:	954a                	add	a0,a0,s2
1c008be6:	4685                	li	a3,1
1c008be8:	00d50023          	sb	a3,0(a0)
1c008bec:	40f2                	lw	ra,28(sp)
1c008bee:	4462                	lw	s0,24(sp)
1c008bf0:	8552                	mv	a0,s4
1c008bf2:	44d2                	lw	s1,20(sp)
1c008bf4:	4942                	lw	s2,16(sp)
1c008bf6:	49b2                	lw	s3,12(sp)
1c008bf8:	4a22                	lw	s4,8(sp)
1c008bfa:	6105                	addi	sp,sp,32
1c008bfc:	8082                	ret
1c008bfe:	8552                	mv	a0,s4
1c008c00:	d06ff0ef          	jal	ra,1c008106 <__clzsi2>
1c008c04:	1579                	addi	a0,a0,-2
1c008c06:	00155613          	srli	a2,a0,0x1
1c008c0a:	e631                	bnez	a2,1c008c56 <pos_fll_init+0x112>
1c008c0c:	4709                	li	a4,2
1c008c0e:	4585                	li	a1,1
1c008c10:	4605                	li	a2,1
1c008c12:	00ca17b3          	sll	a5,s4,a2
1c008c16:	76e1                	lui	a3,0xffff8
1c008c18:	1c006537          	lui	a0,0x1c006
1c008c1c:	8efd                	and	a3,a3,a5
1c008c1e:	5d050513          	addi	a0,a0,1488 # 1c0065d0 <pos_fll_is_on>
1c008c22:	96ae                	add	a3,a3,a1
1c008c24:	012505b3          	add	a1,a0,s2
1c008c28:	00c6d6b3          	srl	a3,a3,a2
1c008c2c:	944e                	add	s0,s0,s3
1c008c2e:	0005c603          	lbu	a2,0(a1)
1c008c32:	c014                	sw	a3,0(s0)
1c008c34:	da45                	beqz	a2,1c008be4 <pos_fll_init+0xa0>
1c008c36:	4094                	lw	a3,0(s1)
1c008c38:	83bd                	srli	a5,a5,0xf
1c008c3a:	07c2                	slli	a5,a5,0x10
1c008c3c:	7641                	lui	a2,0xffff0
1c008c3e:	83c1                	srli	a5,a5,0x10
1c008c40:	8ef1                	and	a3,a3,a2
1c008c42:	8edd                	or	a3,a3,a5
1c008c44:	c40007b7          	lui	a5,0xc4000
1c008c48:	8b3d                	andi	a4,a4,15
1c008c4a:	17fd                	addi	a5,a5,-1
1c008c4c:	076a                	slli	a4,a4,0x1a
1c008c4e:	8efd                	and	a3,a3,a5
1c008c50:	8ed9                	or	a3,a3,a4
1c008c52:	c094                	sw	a3,0(s1)
1c008c54:	bf41                	j	1c008be4 <pos_fll_init+0xa0>
1c008c56:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c008c5a:	4685                	li	a3,1
1c008c5c:	00b695b3          	sll	a1,a3,a1
1c008c60:	00160713          	addi	a4,a2,1
1c008c64:	b77d                	j	1c008c12 <pos_fll_init+0xce>

1c008c66 <pos_fll_constructor>:
1c008c66:	1c0067b7          	lui	a5,0x1c006
1c008c6a:	5d878793          	addi	a5,a5,1496 # 1c0065d8 <pos_fll_freq>
1c008c6e:	0007a023          	sw	zero,0(a5)
1c008c72:	0007a223          	sw	zero,4(a5)
1c008c76:	1c0067b7          	lui	a5,0x1c006
1c008c7a:	5c079823          	sh	zero,1488(a5) # 1c0065d0 <pos_fll_is_on>
1c008c7e:	8082                	ret

1c008c80 <pos_soc_init>:
1c008c80:	1141                	addi	sp,sp,-16
1c008c82:	c606                	sw	ra,12(sp)
1c008c84:	c422                	sw	s0,8(sp)
1c008c86:	37c5                	jal	1c008c66 <pos_fll_constructor>
1c008c88:	4501                	li	a0,0
1c008c8a:	3d6d                	jal	1c008b44 <pos_fll_init>
1c008c8c:	1c006437          	lui	s0,0x1c006
1c008c90:	5ea42023          	sw	a0,1504(s0) # 1c0065e0 <pos_freq_domains>
1c008c94:	4505                	li	a0,1
1c008c96:	357d                	jal	1c008b44 <pos_fll_init>
1c008c98:	5e040413          	addi	s0,s0,1504
1c008c9c:	c408                	sw	a0,8(s0)
1c008c9e:	40b2                	lw	ra,12(sp)
1c008ca0:	4422                	lw	s0,8(sp)
1c008ca2:	0141                	addi	sp,sp,16
1c008ca4:	8082                	ret

1c008ca6 <KeccakF1600_StatePermute>:
1c008ca6:	1a4007b7          	lui	a5,0x1a400
1c008caa:	1141                	addi	sp,sp,-16
1c008cac:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c008cb0:	4118                	lw	a4,0(a0)
1c008cb2:	0791                	addi	a5,a5,4
1c008cb4:	fee7ae23          	sw	a4,-4(a5)
1c008cb8:	0511                	addi	a0,a0,4
1c008cba:	fed79be3          	bne	a5,a3,1c008cb0 <KeccakF1600_StatePermute+0xa>
1c008cbe:	1a4007b7          	lui	a5,0x1a400
1c008cc2:	4705                	li	a4,1
1c008cc4:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c008cc8:	1a400737          	lui	a4,0x1a400
1c008ccc:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c008cd0:	8b85                	andi	a5,a5,1
1c008cd2:	dfed                	beqz	a5,1c008ccc <KeccakF1600_StatePermute+0x26>
1c008cd4:	c602                	sw	zero,12(sp)
1c008cd6:	4732                	lw	a4,12(sp)
1c008cd8:	03100793          	li	a5,49
1c008cdc:	02e7c663          	blt	a5,a4,1c008d08 <KeccakF1600_StatePermute+0x62>
1c008ce0:	1a400637          	lui	a2,0x1a400
1c008ce4:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c008ce8:	03100513          	li	a0,49
1c008cec:	4732                	lw	a4,12(sp)
1c008cee:	47b2                	lw	a5,12(sp)
1c008cf0:	070a                	slli	a4,a4,0x2
1c008cf2:	9732                	add	a4,a4,a2
1c008cf4:	4314                	lw	a3,0(a4)
1c008cf6:	4732                	lw	a4,12(sp)
1c008cf8:	078a                	slli	a5,a5,0x2
1c008cfa:	0705                	addi	a4,a4,1
1c008cfc:	c63a                	sw	a4,12(sp)
1c008cfe:	97ae                	add	a5,a5,a1
1c008d00:	4732                	lw	a4,12(sp)
1c008d02:	c394                	sw	a3,0(a5)
1c008d04:	fee554e3          	ble	a4,a0,1c008cec <KeccakF1600_StatePermute+0x46>
1c008d08:	0141                	addi	sp,sp,16
1c008d0a:	8082                	ret

1c008d0c <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>:
1c008d0c:	00249337          	lui	t1,0x249
1c008d10:	20050e13          	addi	t3,a0,512
1c008d14:	24930313          	addi	t1,t1,585 # 249249 <__CTOR_LIST__-0x1bdb6dbb>
1c008d18:	0015c703          	lbu	a4,1(a1)
1c008d1c:	0025c783          	lbu	a5,2(a1)
1c008d20:	0005c683          	lbu	a3,0(a1)
1c008d24:	07c2                	slli	a5,a5,0x10
1c008d26:	0722                	slli	a4,a4,0x8
1c008d28:	8f5d                	or	a4,a4,a5
1c008d2a:	8f55                	or	a4,a4,a3
1c008d2c:	00175793          	srli	a5,a4,0x1
1c008d30:	00275693          	srli	a3,a4,0x2
1c008d34:	0066f6b3          	and	a3,a3,t1
1c008d38:	0067f7b3          	and	a5,a5,t1
1c008d3c:	00677733          	and	a4,a4,t1
1c008d40:	97b6                	add	a5,a5,a3
1c008d42:	97ba                	add	a5,a5,a4
1c008d44:	0037df13          	srli	t5,a5,0x3
1c008d48:	0067d613          	srli	a2,a5,0x6
1c008d4c:	0097de93          	srli	t4,a5,0x9
1c008d50:	00c7d693          	srli	a3,a5,0xc
1c008d54:	00f7d893          	srli	a7,a5,0xf
1c008d58:	0127d713          	srli	a4,a5,0x12
1c008d5c:	0077f813          	andi	a6,a5,7
1c008d60:	007f7f13          	andi	t5,t5,7
1c008d64:	8a1d                	andi	a2,a2,7
1c008d66:	007efe93          	andi	t4,t4,7
1c008d6a:	8a9d                	andi	a3,a3,7
1c008d6c:	0078f893          	andi	a7,a7,7
1c008d70:	8b1d                	andi	a4,a4,7
1c008d72:	83d5                	srli	a5,a5,0x15
1c008d74:	41e80833          	sub	a6,a6,t5
1c008d78:	41d60633          	sub	a2,a2,t4
1c008d7c:	411686b3          	sub	a3,a3,a7
1c008d80:	40f707b3          	sub	a5,a4,a5
1c008d84:	01051023          	sh	a6,0(a0)
1c008d88:	00c51123          	sh	a2,2(a0)
1c008d8c:	00d51223          	sh	a3,4(a0)
1c008d90:	00f51323          	sh	a5,6(a0)
1c008d94:	0521                	addi	a0,a0,8
1c008d96:	058d                	addi	a1,a1,3
1c008d98:	f8ae10e3          	bne	t3,a0,1c008d18 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1+0xc>
1c008d9c:	8082                	ret

1c008d9e <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2>:
1c008d9e:	1141                	addi	sp,sp,-16
1c008da0:	55555337          	lui	t1,0x55555
1c008da4:	68c1                	lui	a7,0x10
1c008da6:	c622                	sw	s0,12(sp)
1c008da8:	c426                	sw	s1,8(sp)
1c008daa:	c24a                	sw	s2,4(sp)
1c008dac:	20050e13          	addi	t3,a0,512
1c008db0:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c008db4:	18fd                	addi	a7,a7,-1
1c008db6:	419c                	lw	a5,0(a1)
1c008db8:	0541                	addi	a0,a0,16
1c008dba:	0017d713          	srli	a4,a5,0x1
1c008dbe:	00677733          	and	a4,a4,t1
1c008dc2:	0067f7b3          	and	a5,a5,t1
1c008dc6:	97ba                	add	a5,a5,a4
1c008dc8:	0027d913          	srli	s2,a5,0x2
1c008dcc:	0087d693          	srli	a3,a5,0x8
1c008dd0:	00a7d493          	srli	s1,a5,0xa
1c008dd4:	0107d713          	srli	a4,a5,0x10
1c008dd8:	0127d413          	srli	s0,a5,0x12
1c008ddc:	0037f613          	andi	a2,a5,3
1c008de0:	00397913          	andi	s2,s2,3
1c008de4:	8a8d                	andi	a3,a3,3
1c008de6:	888d                	andi	s1,s1,3
1c008de8:	8b0d                	andi	a4,a4,3
1c008dea:	880d                	andi	s0,s0,3
1c008dec:	0047df13          	srli	t5,a5,0x4
1c008df0:	0067d393          	srli	t2,a5,0x6
1c008df4:	00c7de93          	srli	t4,a5,0xc
1c008df8:	00e7d293          	srli	t0,a5,0xe
1c008dfc:	0147d813          	srli	a6,a5,0x14
1c008e00:	0167df93          	srli	t6,a5,0x16
1c008e04:	41260633          	sub	a2,a2,s2
1c008e08:	8e85                	sub	a3,a3,s1
1c008e0a:	8f01                	sub	a4,a4,s0
1c008e0c:	0033f393          	andi	t2,t2,3
1c008e10:	0032f293          	andi	t0,t0,3
1c008e14:	003fff93          	andi	t6,t6,3
1c008e18:	003f7f13          	andi	t5,t5,3
1c008e1c:	003efe93          	andi	t4,t4,3
1c008e20:	00387813          	andi	a6,a6,3
1c008e24:	0642                	slli	a2,a2,0x10
1c008e26:	06c2                	slli	a3,a3,0x10
1c008e28:	0742                	slli	a4,a4,0x10
1c008e2a:	407f0f33          	sub	t5,t5,t2
1c008e2e:	405e8eb3          	sub	t4,t4,t0
1c008e32:	41f80833          	sub	a6,a6,t6
1c008e36:	0187d293          	srli	t0,a5,0x18
1c008e3a:	01a7d393          	srli	t2,a5,0x1a
1c008e3e:	01c7df93          	srli	t6,a5,0x1c
1c008e42:	8241                	srli	a2,a2,0x10
1c008e44:	82c1                	srli	a3,a3,0x10
1c008e46:	8341                	srli	a4,a4,0x10
1c008e48:	0842                	slli	a6,a6,0x10
1c008e4a:	0f42                	slli	t5,t5,0x10
1c008e4c:	01167633          	and	a2,a2,a7
1c008e50:	0ec2                	slli	t4,t4,0x10
1c008e52:	0116f6b3          	and	a3,a3,a7
1c008e56:	01177733          	and	a4,a4,a7
1c008e5a:	0032f293          	andi	t0,t0,3
1c008e5e:	0033f393          	andi	t2,t2,3
1c008e62:	003fff93          	andi	t6,t6,3
1c008e66:	83f9                	srli	a5,a5,0x1e
1c008e68:	01076733          	or	a4,a4,a6
1c008e6c:	01e66633          	or	a2,a2,t5
1c008e70:	01d6e6b3          	or	a3,a3,t4
1c008e74:	40728833          	sub	a6,t0,t2
1c008e78:	40ff87b3          	sub	a5,t6,a5
1c008e7c:	fec52823          	sw	a2,-16(a0)
1c008e80:	fed52a23          	sw	a3,-12(a0)
1c008e84:	fee52c23          	sw	a4,-8(a0)
1c008e88:	ff051e23          	sh	a6,-4(a0)
1c008e8c:	fef51f23          	sh	a5,-2(a0)
1c008e90:	0591                	addi	a1,a1,4
1c008e92:	f3c512e3          	bne	a0,t3,1c008db6 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2+0x18>
1c008e96:	4432                	lw	s0,12(sp)
1c008e98:	44a2                	lw	s1,8(sp)
1c008e9a:	4912                	lw	s2,4(sp)
1c008e9c:	0141                	addi	sp,sp,16
1c008e9e:	8082                	ret

1c008ea0 <keccak_absorb.constprop.7>:
1c008ea0:	7151                	addi	sp,sp,-240
1c008ea2:	d3a6                	sw	s1,228(sp)
1c008ea4:	cfce                	sw	s3,220(sp)
1c008ea6:	cdd2                	sw	s4,216(sp)
1c008ea8:	cbd6                	sw	s5,212(sp)
1c008eaa:	d786                	sw	ra,236(sp)
1c008eac:	d5a2                	sw	s0,232(sp)
1c008eae:	d1ca                	sw	s2,224(sp)
1c008eb0:	89aa                	mv	s3,a0
1c008eb2:	8a32                	mv	s4,a2
1c008eb4:	84b6                	mv	s1,a3
1c008eb6:	8aaa                	mv	s5,a0
1c008eb8:	0c850713          	addi	a4,a0,200
1c008ebc:	87aa                	mv	a5,a0
1c008ebe:	4601                	li	a2,0
1c008ec0:	4681                	li	a3,0
1c008ec2:	c390                	sw	a2,0(a5)
1c008ec4:	c3d4                	sw	a3,4(a5)
1c008ec6:	07a1                	addi	a5,a5,8
1c008ec8:	fef71be3          	bne	a4,a5,1c008ebe <keccak_absorb.constprop.7+0x1e>
1c008ecc:	08700793          	li	a5,135
1c008ed0:	0747fb63          	bleu	s4,a5,1c008f46 <keccak_absorb.constprop.7+0xa6>
1c008ed4:	08700413          	li	s0,135
1c008ed8:	08858913          	addi	s2,a1,136
1c008edc:	874e                	mv	a4,s3
1c008ede:	0015c783          	lbu	a5,1(a1)
1c008ee2:	0025c603          	lbu	a2,2(a1)
1c008ee6:	0055c883          	lbu	a7,5(a1)
1c008eea:	0045c303          	lbu	t1,4(a1)
1c008eee:	0065c803          	lbu	a6,6(a1)
1c008ef2:	0005ce03          	lbu	t3,0(a1)
1c008ef6:	0035c503          	lbu	a0,3(a1)
1c008efa:	0075c683          	lbu	a3,7(a1)
1c008efe:	0642                	slli	a2,a2,0x10
1c008f00:	07a2                	slli	a5,a5,0x8
1c008f02:	08a2                	slli	a7,a7,0x8
1c008f04:	8fd1                	or	a5,a5,a2
1c008f06:	0068e8b3          	or	a7,a7,t1
1c008f0a:	0842                	slli	a6,a6,0x10
1c008f0c:	00072303          	lw	t1,0(a4)
1c008f10:	4350                	lw	a2,4(a4)
1c008f12:	01c7e7b3          	or	a5,a5,t3
1c008f16:	0562                	slli	a0,a0,0x18
1c008f18:	01186833          	or	a6,a6,a7
1c008f1c:	06e2                	slli	a3,a3,0x18
1c008f1e:	8fc9                	or	a5,a5,a0
1c008f20:	0106e6b3          	or	a3,a3,a6
1c008f24:	00f347b3          	xor	a5,t1,a5
1c008f28:	8eb1                	xor	a3,a3,a2
1c008f2a:	c31c                	sw	a5,0(a4)
1c008f2c:	c354                	sw	a3,4(a4)
1c008f2e:	05a1                	addi	a1,a1,8
1c008f30:	0721                	addi	a4,a4,8
1c008f32:	fab916e3          	bne	s2,a1,1c008ede <keccak_absorb.constprop.7+0x3e>
1c008f36:	85ce                	mv	a1,s3
1c008f38:	854e                	mv	a0,s3
1c008f3a:	33b5                	jal	1c008ca6 <KeccakF1600_StatePermute>
1c008f3c:	f78a0a13          	addi	s4,s4,-136
1c008f40:	85ca                	mv	a1,s2
1c008f42:	f9446be3          	bltu	s0,s4,1c008ed8 <keccak_absorb.constprop.7+0x38>
1c008f46:	003c                	addi	a5,sp,8
1c008f48:	0918                	addi	a4,sp,144
1c008f4a:	883e                	mv	a6,a5
1c008f4c:	4681                	li	a3,0
1c008f4e:	00d82023          	sw	a3,0(a6)
1c008f52:	0811                	addi	a6,a6,4
1c008f54:	ff071ce3          	bne	a4,a6,1c008f4c <keccak_absorb.constprop.7+0xac>
1c008f58:	060a0463          	beqz	s4,1c008fc0 <keccak_absorb.constprop.7+0x120>
1c008f5c:	fffa0713          	addi	a4,s4,-1
1c008f60:	4689                	li	a3,2
1c008f62:	0ee6f163          	bleu	a4,a3,1c009044 <keccak_absorb.constprop.7+0x1a4>
1c008f66:	002a5893          	srli	a7,s4,0x2
1c008f6a:	862e                	mv	a2,a1
1c008f6c:	86be                	mv	a3,a5
1c008f6e:	4701                	li	a4,0
1c008f70:	4208                	lw	a0,0(a2)
1c008f72:	0705                	addi	a4,a4,1
1c008f74:	c288                	sw	a0,0(a3)
1c008f76:	0611                	addi	a2,a2,4
1c008f78:	0691                	addi	a3,a3,4
1c008f7a:	ff176be3          	bltu	a4,a7,1c008f70 <keccak_absorb.constprop.7+0xd0>
1c008f7e:	ffca7713          	andi	a4,s4,-4
1c008f82:	02ea0f63          	beq	s4,a4,1c008fc0 <keccak_absorb.constprop.7+0x120>
1c008f86:	00e586b3          	add	a3,a1,a4
1c008f8a:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c008f8e:	0988                	addi	a0,sp,208
1c008f90:	00e506b3          	add	a3,a0,a4
1c008f94:	f2c68c23          	sb	a2,-200(a3)
1c008f98:	00170693          	addi	a3,a4,1
1c008f9c:	0346f263          	bleu	s4,a3,1c008fc0 <keccak_absorb.constprop.7+0x120>
1c008fa0:	00d58633          	add	a2,a1,a3
1c008fa4:	00064603          	lbu	a2,0(a2)
1c008fa8:	96aa                	add	a3,a3,a0
1c008faa:	f2c68c23          	sb	a2,-200(a3)
1c008fae:	0709                	addi	a4,a4,2
1c008fb0:	01477863          	bleu	s4,a4,1c008fc0 <keccak_absorb.constprop.7+0x120>
1c008fb4:	95ba                	add	a1,a1,a4
1c008fb6:	0005c683          	lbu	a3,0(a1)
1c008fba:	972a                	add	a4,a4,a0
1c008fbc:	f2d70c23          	sb	a3,-200(a4)
1c008fc0:	0990                	addi	a2,sp,208
1c008fc2:	9a32                	add	s4,s4,a2
1c008fc4:	f29a0c23          	sb	s1,-200(s4)
1c008fc8:	08f14703          	lbu	a4,143(sp)
1c008fcc:	f8076713          	ori	a4,a4,-128
1c008fd0:	08e107a3          	sb	a4,143(sp)
1c008fd4:	0017c703          	lbu	a4,1(a5)
1c008fd8:	0027c883          	lbu	a7,2(a5)
1c008fdc:	0057c503          	lbu	a0,5(a5)
1c008fe0:	0047c303          	lbu	t1,4(a5)
1c008fe4:	0067c583          	lbu	a1,6(a5)
1c008fe8:	0007ce03          	lbu	t3,0(a5)
1c008fec:	0037c603          	lbu	a2,3(a5)
1c008ff0:	0077c683          	lbu	a3,7(a5)
1c008ff4:	08c2                	slli	a7,a7,0x10
1c008ff6:	0722                	slli	a4,a4,0x8
1c008ff8:	0522                	slli	a0,a0,0x8
1c008ffa:	01176733          	or	a4,a4,a7
1c008ffe:	00656533          	or	a0,a0,t1
1c009002:	05c2                	slli	a1,a1,0x10
1c009004:	000aa303          	lw	t1,0(s5)
1c009008:	004aa883          	lw	a7,4(s5)
1c00900c:	01c76733          	or	a4,a4,t3
1c009010:	0662                	slli	a2,a2,0x18
1c009012:	8dc9                	or	a1,a1,a0
1c009014:	06e2                	slli	a3,a3,0x18
1c009016:	8f51                	or	a4,a4,a2
1c009018:	8ecd                	or	a3,a3,a1
1c00901a:	00e34733          	xor	a4,t1,a4
1c00901e:	00d8c6b3          	xor	a3,a7,a3
1c009022:	00eaa023          	sw	a4,0(s5)
1c009026:	00daa223          	sw	a3,4(s5)
1c00902a:	07a1                	addi	a5,a5,8
1c00902c:	0aa1                	addi	s5,s5,8
1c00902e:	faf813e3          	bne	a6,a5,1c008fd4 <keccak_absorb.constprop.7+0x134>
1c009032:	50be                	lw	ra,236(sp)
1c009034:	542e                	lw	s0,232(sp)
1c009036:	549e                	lw	s1,228(sp)
1c009038:	590e                	lw	s2,224(sp)
1c00903a:	49fe                	lw	s3,220(sp)
1c00903c:	4a6e                	lw	s4,216(sp)
1c00903e:	4ade                	lw	s5,212(sp)
1c009040:	616d                	addi	sp,sp,240
1c009042:	8082                	ret
1c009044:	4701                	li	a4,0
1c009046:	b781                	j	1c008f86 <keccak_absorb.constprop.7+0xe6>

1c009048 <shake128_absorb>:
1c009048:	7151                	addi	sp,sp,-240
1c00904a:	d5a2                	sw	s0,232(sp)
1c00904c:	842a                	mv	s0,a0
1c00904e:	0c800513          	li	a0,200
1c009052:	d1ca                	sw	s2,224(sp)
1c009054:	cfce                	sw	s3,220(sp)
1c009056:	d786                	sw	ra,236(sp)
1c009058:	d3a6                	sw	s1,228(sp)
1c00905a:	cdd2                	sw	s4,216(sp)
1c00905c:	892e                	mv	s2,a1
1c00905e:	89b2                	mv	s3,a2
1c009060:	34e030ef          	jal	ra,1c00c3ae <pi_l2_malloc>
1c009064:	c008                	sw	a0,0(s0)
1c009066:	1a050663          	beqz	a0,1c009212 <shake128_absorb+0x1ca>
1c00906a:	8a2a                	mv	s4,a0
1c00906c:	0c850713          	addi	a4,a0,200
1c009070:	87aa                	mv	a5,a0
1c009072:	4601                	li	a2,0
1c009074:	4681                	li	a3,0
1c009076:	c390                	sw	a2,0(a5)
1c009078:	c3d4                	sw	a3,4(a5)
1c00907a:	07a1                	addi	a5,a5,8
1c00907c:	fef71be3          	bne	a4,a5,1c009072 <shake128_absorb+0x2a>
1c009080:	0a700793          	li	a5,167
1c009084:	0937f163          	bleu	s3,a5,1c009106 <shake128_absorb+0xbe>
1c009088:	412a04b3          	sub	s1,s4,s2
1c00908c:	0a700413          	li	s0,167
1c009090:	85ca                	mv	a1,s2
1c009092:	0a890913          	addi	s2,s2,168
1c009096:	0015c783          	lbu	a5,1(a1)
1c00909a:	0025c603          	lbu	a2,2(a1)
1c00909e:	0055c803          	lbu	a6,5(a1)
1c0090a2:	0045c303          	lbu	t1,4(a1)
1c0090a6:	0065c503          	lbu	a0,6(a1)
1c0090aa:	0005ce03          	lbu	t3,0(a1)
1c0090ae:	0035c683          	lbu	a3,3(a1)
1c0090b2:	0075c703          	lbu	a4,7(a1)
1c0090b6:	0642                	slli	a2,a2,0x10
1c0090b8:	07a2                	slli	a5,a5,0x8
1c0090ba:	0822                	slli	a6,a6,0x8
1c0090bc:	00b488b3          	add	a7,s1,a1
1c0090c0:	8fd1                	or	a5,a5,a2
1c0090c2:	00686833          	or	a6,a6,t1
1c0090c6:	0542                	slli	a0,a0,0x10
1c0090c8:	0008a603          	lw	a2,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c0090cc:	0048a303          	lw	t1,4(a7)
1c0090d0:	01c7e7b3          	or	a5,a5,t3
1c0090d4:	06e2                	slli	a3,a3,0x18
1c0090d6:	01056533          	or	a0,a0,a6
1c0090da:	0762                	slli	a4,a4,0x18
1c0090dc:	8fd5                	or	a5,a5,a3
1c0090de:	8f49                	or	a4,a4,a0
1c0090e0:	8fb1                	xor	a5,a5,a2
1c0090e2:	00e34733          	xor	a4,t1,a4
1c0090e6:	00f8a023          	sw	a5,0(a7)
1c0090ea:	00e8a223          	sw	a4,4(a7)
1c0090ee:	05a1                	addi	a1,a1,8
1c0090f0:	fab913e3          	bne	s2,a1,1c009096 <shake128_absorb+0x4e>
1c0090f4:	85d2                	mv	a1,s4
1c0090f6:	8552                	mv	a0,s4
1c0090f8:	f5898993          	addi	s3,s3,-168
1c0090fc:	366d                	jal	1c008ca6 <KeccakF1600_StatePermute>
1c0090fe:	f5848493          	addi	s1,s1,-168
1c009102:	f93467e3          	bltu	s0,s3,1c009090 <shake128_absorb+0x48>
1c009106:	191c                	addi	a5,sp,176
1c009108:	00810813          	addi	a6,sp,8
1c00910c:	4681                	li	a3,0
1c00910e:	00d82023          	sw	a3,0(a6)
1c009112:	0811                	addi	a6,a6,4
1c009114:	ff079ce3          	bne	a5,a6,1c00910c <shake128_absorb+0xc4>
1c009118:	06098563          	beqz	s3,1c009182 <shake128_absorb+0x13a>
1c00911c:	fff98793          	addi	a5,s3,-1
1c009120:	4709                	li	a4,2
1c009122:	0ef77663          	bleu	a5,a4,1c00920e <shake128_absorb+0x1c6>
1c009126:	0029d513          	srli	a0,s3,0x2
1c00912a:	86ca                	mv	a3,s2
1c00912c:	0038                	addi	a4,sp,8
1c00912e:	4781                	li	a5,0
1c009130:	4290                	lw	a2,0(a3)
1c009132:	0785                	addi	a5,a5,1
1c009134:	c310                	sw	a2,0(a4)
1c009136:	0691                	addi	a3,a3,4
1c009138:	0711                	addi	a4,a4,4
1c00913a:	fea7ebe3          	bltu	a5,a0,1c009130 <shake128_absorb+0xe8>
1c00913e:	ffc9f793          	andi	a5,s3,-4
1c009142:	04f98063          	beq	s3,a5,1c009182 <shake128_absorb+0x13a>
1c009146:	00f90733          	add	a4,s2,a5
1c00914a:	00074683          	lbu	a3,0(a4)
1c00914e:	0990                	addi	a2,sp,208
1c009150:	00f60733          	add	a4,a2,a5
1c009154:	f2d70c23          	sb	a3,-200(a4)
1c009158:	00178713          	addi	a4,a5,1
1c00915c:	03377363          	bleu	s3,a4,1c009182 <shake128_absorb+0x13a>
1c009160:	00e906b3          	add	a3,s2,a4
1c009164:	0006c683          	lbu	a3,0(a3)
1c009168:	9732                	add	a4,a4,a2
1c00916a:	f2d70c23          	sb	a3,-200(a4)
1c00916e:	0789                	addi	a5,a5,2
1c009170:	0137f963          	bleu	s3,a5,1c009182 <shake128_absorb+0x13a>
1c009174:	00f905b3          	add	a1,s2,a5
1c009178:	0005c703          	lbu	a4,0(a1)
1c00917c:	97b2                	add	a5,a5,a2
1c00917e:	f2e78c23          	sb	a4,-200(a5)
1c009182:	0994                	addi	a3,sp,208
1c009184:	47fd                	li	a5,31
1c009186:	99b6                	add	s3,s3,a3
1c009188:	f2f98c23          	sb	a5,-200(s3)
1c00918c:	0af14703          	lbu	a4,175(sp)
1c009190:	003c                	addi	a5,sp,8
1c009192:	f8076713          	ori	a4,a4,-128
1c009196:	0ae107a3          	sb	a4,175(sp)
1c00919a:	40fa0a33          	sub	s4,s4,a5
1c00919e:	0017c703          	lbu	a4,1(a5)
1c0091a2:	0027c303          	lbu	t1,2(a5)
1c0091a6:	0057c503          	lbu	a0,5(a5)
1c0091aa:	0047ce03          	lbu	t3,4(a5)
1c0091ae:	0067c583          	lbu	a1,6(a5)
1c0091b2:	0007ce83          	lbu	t4,0(a5)
1c0091b6:	0037c603          	lbu	a2,3(a5)
1c0091ba:	0077c683          	lbu	a3,7(a5)
1c0091be:	0342                	slli	t1,t1,0x10
1c0091c0:	0722                	slli	a4,a4,0x8
1c0091c2:	0522                	slli	a0,a0,0x8
1c0091c4:	00fa08b3          	add	a7,s4,a5
1c0091c8:	00676733          	or	a4,a4,t1
1c0091cc:	01c56533          	or	a0,a0,t3
1c0091d0:	05c2                	slli	a1,a1,0x10
1c0091d2:	0008ae03          	lw	t3,0(a7)
1c0091d6:	0048a303          	lw	t1,4(a7)
1c0091da:	01d76733          	or	a4,a4,t4
1c0091de:	0662                	slli	a2,a2,0x18
1c0091e0:	8dc9                	or	a1,a1,a0
1c0091e2:	06e2                	slli	a3,a3,0x18
1c0091e4:	8f51                	or	a4,a4,a2
1c0091e6:	8ecd                	or	a3,a3,a1
1c0091e8:	00ee4733          	xor	a4,t3,a4
1c0091ec:	00d346b3          	xor	a3,t1,a3
1c0091f0:	00e8a023          	sw	a4,0(a7)
1c0091f4:	00d8a223          	sw	a3,4(a7)
1c0091f8:	07a1                	addi	a5,a5,8
1c0091fa:	faf812e3          	bne	a6,a5,1c00919e <shake128_absorb+0x156>
1c0091fe:	50be                	lw	ra,236(sp)
1c009200:	542e                	lw	s0,232(sp)
1c009202:	549e                	lw	s1,228(sp)
1c009204:	590e                	lw	s2,224(sp)
1c009206:	49fe                	lw	s3,220(sp)
1c009208:	4a6e                	lw	s4,216(sp)
1c00920a:	616d                	addi	sp,sp,240
1c00920c:	8082                	ret
1c00920e:	4781                	li	a5,0
1c009210:	bf1d                	j	1c009146 <shake128_absorb+0xfe>
1c009212:	06f00513          	li	a0,111
1c009216:	04a020ef          	jal	ra,1c00b260 <exit>

1c00921a <shake128_squeezeblocks>:
1c00921a:	1101                	addi	sp,sp,-32
1c00921c:	c452                	sw	s4,8(sp)
1c00921e:	ce06                	sw	ra,28(sp)
1c009220:	cc22                	sw	s0,24(sp)
1c009222:	ca26                	sw	s1,20(sp)
1c009224:	c84a                	sw	s2,16(sp)
1c009226:	c64e                	sw	s3,12(sp)
1c009228:	c256                	sw	s5,4(sp)
1c00922a:	00062a03          	lw	s4,0(a2)
1c00922e:	cdc9                	beqz	a1,1c0092c8 <shake128_squeezeblocks+0xae>
1c009230:	7941                	lui	s2,0xffff0
1c009232:	ff0104b7          	lui	s1,0xff010
1c009236:	01000437          	lui	s0,0x1000
1c00923a:	89ae                	mv	s3,a1
1c00923c:	8aaa                	mv	s5,a0
1c00923e:	0ff90913          	addi	s2,s2,255 # ffff00ff <pulp__FC+0xffff0100>
1c009242:	14fd                	addi	s1,s1,-1
1c009244:	147d                	addi	s0,s0,-1
1c009246:	85d2                	mv	a1,s4
1c009248:	8552                	mv	a0,s4
1c00924a:	3cb1                	jal	1c008ca6 <KeccakF1600_StatePermute>
1c00924c:	85d6                	mv	a1,s5
1c00924e:	8852                	mv	a6,s4
1c009250:	0a8a8513          	addi	a0,s5,168
1c009254:	00082603          	lw	a2,0(a6)
1c009258:	00482683          	lw	a3,4(a6)
1c00925c:	00865313          	srli	t1,a2,0x8
1c009260:	0086d893          	srli	a7,a3,0x8
1c009264:	0ff67713          	andi	a4,a2,255
1c009268:	0ff6f793          	andi	a5,a3,255
1c00926c:	0ff37313          	andi	t1,t1,255
1c009270:	0ff8f893          	andi	a7,a7,255
1c009274:	0322                	slli	t1,t1,0x8
1c009276:	08a2                	slli	a7,a7,0x8
1c009278:	01277733          	and	a4,a4,s2
1c00927c:	0127f7b3          	and	a5,a5,s2
1c009280:	00676733          	or	a4,a4,t1
1c009284:	0117e7b3          	or	a5,a5,a7
1c009288:	00ff0337          	lui	t1,0xff0
1c00928c:	00ff08b7          	lui	a7,0xff0
1c009290:	00667333          	and	t1,a2,t1
1c009294:	0116f8b3          	and	a7,a3,a7
1c009298:	8f65                	and	a4,a4,s1
1c00929a:	8fe5                	and	a5,a5,s1
1c00929c:	00676733          	or	a4,a4,t1
1c0092a0:	8261                	srli	a2,a2,0x18
1c0092a2:	0117e7b3          	or	a5,a5,a7
1c0092a6:	82e1                	srli	a3,a3,0x18
1c0092a8:	0662                	slli	a2,a2,0x18
1c0092aa:	8f61                	and	a4,a4,s0
1c0092ac:	06e2                	slli	a3,a3,0x18
1c0092ae:	8fe1                	and	a5,a5,s0
1c0092b0:	8f51                	or	a4,a4,a2
1c0092b2:	8fd5                	or	a5,a5,a3
1c0092b4:	c198                	sw	a4,0(a1)
1c0092b6:	c1dc                	sw	a5,4(a1)
1c0092b8:	05a1                	addi	a1,a1,8
1c0092ba:	0821                	addi	a6,a6,8
1c0092bc:	f8b51ce3          	bne	a0,a1,1c009254 <shake128_squeezeblocks+0x3a>
1c0092c0:	19fd                	addi	s3,s3,-1
1c0092c2:	8aaa                	mv	s5,a0
1c0092c4:	f80991e3          	bnez	s3,1c009246 <shake128_squeezeblocks+0x2c>
1c0092c8:	40f2                	lw	ra,28(sp)
1c0092ca:	4462                	lw	s0,24(sp)
1c0092cc:	44d2                	lw	s1,20(sp)
1c0092ce:	4942                	lw	s2,16(sp)
1c0092d0:	49b2                	lw	s3,12(sp)
1c0092d2:	4a22                	lw	s4,8(sp)
1c0092d4:	4a92                	lw	s5,4(sp)
1c0092d6:	6105                	addi	sp,sp,32
1c0092d8:	8082                	ret

1c0092da <shake128_ctx_release>:
1c0092da:	4108                	lw	a0,0(a0)
1c0092dc:	0c800593          	li	a1,200
1c0092e0:	0da0306f          	j	1c00c3ba <pi_l2_free>

1c0092e4 <shake256>:
1c0092e4:	7131                	addi	sp,sp,-192
1c0092e6:	db26                	sw	s1,180(sp)
1c0092e8:	d94a                	sw	s2,176(sp)
1c0092ea:	08800493          	li	s1,136
1c0092ee:	892a                	mv	s2,a0
1c0092f0:	0c800513          	li	a0,200
1c0092f4:	dd22                	sw	s0,184(sp)
1c0092f6:	d74e                	sw	s3,172(sp)
1c0092f8:	d552                	sw	s4,168(sp)
1c0092fa:	df06                	sw	ra,188(sp)
1c0092fc:	d356                	sw	s5,164(sp)
1c0092fe:	d15a                	sw	s6,160(sp)
1c009300:	cf5e                	sw	s7,156(sp)
1c009302:	cd62                	sw	s8,152(sp)
1c009304:	cb66                	sw	s9,148(sp)
1c009306:	89ae                	mv	s3,a1
1c009308:	8432                	mv	s0,a2
1c00930a:	8a36                	mv	s4,a3
1c00930c:	0295d4b3          	divu	s1,a1,s1
1c009310:	09e030ef          	jal	ra,1c00c3ae <pi_l2_malloc>
1c009314:	20050163          	beqz	a0,1c009516 <shake256+0x232>
1c009318:	46fd                	li	a3,31
1c00931a:	8652                	mv	a2,s4
1c00931c:	85a2                	mv	a1,s0
1c00931e:	8b2a                	mv	s6,a0
1c009320:	3641                	jal	1c008ea0 <keccak_absorb.constprop.7>
1c009322:	c4dd                	beqz	s1,1c0093d0 <shake256+0xec>
1c009324:	00449713          	slli	a4,s1,0x4
1c009328:	00970433          	add	s0,a4,s1
1c00932c:	040e                	slli	s0,s0,0x3
1c00932e:	7bc1                	lui	s7,0xffff0
1c009330:	ff010ab7          	lui	s5,0xff010
1c009334:	01000a37          	lui	s4,0x1000
1c009338:	412b0c33          	sub	s8,s6,s2
1c00933c:	944a                	add	s0,s0,s2
1c00933e:	8cca                	mv	s9,s2
1c009340:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c009344:	1afd                	addi	s5,s5,-1
1c009346:	1a7d                	addi	s4,s4,-1
1c009348:	85da                	mv	a1,s6
1c00934a:	855a                	mv	a0,s6
1c00934c:	3aa9                	jal	1c008ca6 <KeccakF1600_StatePermute>
1c00934e:	8666                	mv	a2,s9
1c009350:	088c8593          	addi	a1,s9,136
1c009354:	00cc07b3          	add	a5,s8,a2
1c009358:	4388                	lw	a0,0(a5)
1c00935a:	43d4                	lw	a3,4(a5)
1c00935c:	00855893          	srli	a7,a0,0x8
1c009360:	0086d813          	srli	a6,a3,0x8
1c009364:	0ff57713          	andi	a4,a0,255
1c009368:	0ff6f793          	andi	a5,a3,255
1c00936c:	0ff8f893          	andi	a7,a7,255
1c009370:	0ff87813          	andi	a6,a6,255
1c009374:	08a2                	slli	a7,a7,0x8
1c009376:	0822                	slli	a6,a6,0x8
1c009378:	01777733          	and	a4,a4,s7
1c00937c:	0177f7b3          	and	a5,a5,s7
1c009380:	01176733          	or	a4,a4,a7
1c009384:	0107e7b3          	or	a5,a5,a6
1c009388:	00ff08b7          	lui	a7,0xff0
1c00938c:	00ff0837          	lui	a6,0xff0
1c009390:	011578b3          	and	a7,a0,a7
1c009394:	0106f833          	and	a6,a3,a6
1c009398:	01577733          	and	a4,a4,s5
1c00939c:	0157f7b3          	and	a5,a5,s5
1c0093a0:	01176733          	or	a4,a4,a7
1c0093a4:	8161                	srli	a0,a0,0x18
1c0093a6:	0107e7b3          	or	a5,a5,a6
1c0093aa:	82e1                	srli	a3,a3,0x18
1c0093ac:	0562                	slli	a0,a0,0x18
1c0093ae:	01477733          	and	a4,a4,s4
1c0093b2:	06e2                	slli	a3,a3,0x18
1c0093b4:	0147f7b3          	and	a5,a5,s4
1c0093b8:	8f49                	or	a4,a4,a0
1c0093ba:	8fd5                	or	a5,a5,a3
1c0093bc:	c218                	sw	a4,0(a2)
1c0093be:	c25c                	sw	a5,4(a2)
1c0093c0:	0621                	addi	a2,a2,8
1c0093c2:	f8c599e3          	bne	a1,a2,1c009354 <shake256+0x70>
1c0093c6:	8cae                	mv	s9,a1
1c0093c8:	f78c0c13          	addi	s8,s8,-136
1c0093cc:	f6b41ee3          	bne	s0,a1,1c009348 <shake256+0x64>
1c0093d0:	08800793          	li	a5,136
1c0093d4:	02f9f9b3          	remu	s3,s3,a5
1c0093d8:	02099363          	bnez	s3,1c0093fe <shake256+0x11a>
1c0093dc:	546a                	lw	s0,184(sp)
1c0093de:	50fa                	lw	ra,188(sp)
1c0093e0:	54da                	lw	s1,180(sp)
1c0093e2:	594a                	lw	s2,176(sp)
1c0093e4:	59ba                	lw	s3,172(sp)
1c0093e6:	5a2a                	lw	s4,168(sp)
1c0093e8:	5a9a                	lw	s5,164(sp)
1c0093ea:	4bfa                	lw	s7,156(sp)
1c0093ec:	4c6a                	lw	s8,152(sp)
1c0093ee:	4cda                	lw	s9,148(sp)
1c0093f0:	855a                	mv	a0,s6
1c0093f2:	5b0a                	lw	s6,160(sp)
1c0093f4:	0c800593          	li	a1,200
1c0093f8:	6129                	addi	sp,sp,192
1c0093fa:	7c10206f          	j	1c00c3ba <pi_l2_free>
1c0093fe:	85da                	mv	a1,s6
1c009400:	855a                	mv	a0,s6
1c009402:	3055                	jal	1c008ca6 <KeccakF1600_StatePermute>
1c009404:	002c                	addi	a1,sp,8
1c009406:	78c1                	lui	a7,0xffff0
1c009408:	ff010837          	lui	a6,0xff010
1c00940c:	01000537          	lui	a0,0x1000
1c009410:	09010e13          	addi	t3,sp,144
1c009414:	862e                	mv	a2,a1
1c009416:	40bb0333          	sub	t1,s6,a1
1c00941a:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00941e:	187d                	addi	a6,a6,-1
1c009420:	157d                	addi	a0,a0,-1
1c009422:	00c307b3          	add	a5,t1,a2
1c009426:	0007ae83          	lw	t4,0(a5)
1c00942a:	43d4                	lw	a3,4(a5)
1c00942c:	008edf93          	srli	t6,t4,0x8
1c009430:	0086df13          	srli	t5,a3,0x8
1c009434:	0ffef713          	andi	a4,t4,255
1c009438:	0ff6f793          	andi	a5,a3,255
1c00943c:	0fffff93          	andi	t6,t6,255
1c009440:	0fff7f13          	andi	t5,t5,255
1c009444:	0fa2                	slli	t6,t6,0x8
1c009446:	0f22                	slli	t5,t5,0x8
1c009448:	01177733          	and	a4,a4,a7
1c00944c:	0117f7b3          	and	a5,a5,a7
1c009450:	01f76733          	or	a4,a4,t6
1c009454:	01e7e7b3          	or	a5,a5,t5
1c009458:	00ff0fb7          	lui	t6,0xff0
1c00945c:	00ff0f37          	lui	t5,0xff0
1c009460:	01feffb3          	and	t6,t4,t6
1c009464:	01e6ff33          	and	t5,a3,t5
1c009468:	01077733          	and	a4,a4,a6
1c00946c:	0107f7b3          	and	a5,a5,a6
1c009470:	01f76733          	or	a4,a4,t6
1c009474:	018ede93          	srli	t4,t4,0x18
1c009478:	01e7e7b3          	or	a5,a5,t5
1c00947c:	82e1                	srli	a3,a3,0x18
1c00947e:	0ee2                	slli	t4,t4,0x18
1c009480:	8f69                	and	a4,a4,a0
1c009482:	06e2                	slli	a3,a3,0x18
1c009484:	8fe9                	and	a5,a5,a0
1c009486:	01d76733          	or	a4,a4,t4
1c00948a:	8fd5                	or	a5,a5,a3
1c00948c:	c218                	sw	a4,0(a2)
1c00948e:	c25c                	sw	a5,4(a2)
1c009490:	0621                	addi	a2,a2,8
1c009492:	f8ce18e3          	bne	t3,a2,1c009422 <shake256+0x13e>
1c009496:	fff98793          	addi	a5,s3,-1
1c00949a:	4709                	li	a4,2
1c00949c:	06f77963          	bleu	a5,a4,1c00950e <shake256+0x22a>
1c0094a0:	00449713          	slli	a4,s1,0x4
1c0094a4:	009707b3          	add	a5,a4,s1
1c0094a8:	078e                	slli	a5,a5,0x3
1c0094aa:	0029d513          	srli	a0,s3,0x2
1c0094ae:	97ca                	add	a5,a5,s2
1c0094b0:	4681                	li	a3,0
1c0094b2:	4190                	lw	a2,0(a1)
1c0094b4:	0685                	addi	a3,a3,1
1c0094b6:	c390                	sw	a2,0(a5)
1c0094b8:	0591                	addi	a1,a1,4
1c0094ba:	0791                	addi	a5,a5,4
1c0094bc:	fea6ebe3          	bltu	a3,a0,1c0094b2 <shake256+0x1ce>
1c0094c0:	ffc9f693          	andi	a3,s3,-4
1c0094c4:	f0d98ce3          	beq	s3,a3,1c0093dc <shake256+0xf8>
1c0094c8:	009707b3          	add	a5,a4,s1
1c0094cc:	090c                	addi	a1,sp,144
1c0094ce:	00d58733          	add	a4,a1,a3
1c0094d2:	078e                	slli	a5,a5,0x3
1c0094d4:	f7874603          	lbu	a2,-136(a4)
1c0094d8:	97ca                	add	a5,a5,s2
1c0094da:	00d78733          	add	a4,a5,a3
1c0094de:	00c70023          	sb	a2,0(a4)
1c0094e2:	00168713          	addi	a4,a3,1
1c0094e6:	ef377be3          	bleu	s3,a4,1c0093dc <shake256+0xf8>
1c0094ea:	00e58633          	add	a2,a1,a4
1c0094ee:	f7864603          	lbu	a2,-136(a2)
1c0094f2:	973e                	add	a4,a4,a5
1c0094f4:	00c70023          	sb	a2,0(a4)
1c0094f8:	0689                	addi	a3,a3,2
1c0094fa:	ef36f1e3          	bleu	s3,a3,1c0093dc <shake256+0xf8>
1c0094fe:	00d58733          	add	a4,a1,a3
1c009502:	f7874703          	lbu	a4,-136(a4)
1c009506:	97b6                	add	a5,a5,a3
1c009508:	00e78023          	sb	a4,0(a5)
1c00950c:	bdc1                	j	1c0093dc <shake256+0xf8>
1c00950e:	4681                	li	a3,0
1c009510:	00449713          	slli	a4,s1,0x4
1c009514:	bf55                	j	1c0094c8 <shake256+0x1e4>
1c009516:	06f00513          	li	a0,111
1c00951a:	547010ef          	jal	ra,1c00b260 <exit>

1c00951e <sha3_256>:
1c00951e:	7111                	addi	sp,sp,-256
1c009520:	dda2                	sw	s0,248(sp)
1c009522:	4699                	li	a3,6
1c009524:	842a                	mv	s0,a0
1c009526:	0028                	addi	a0,sp,8
1c009528:	df86                	sw	ra,252(sp)
1c00952a:	dba6                	sw	s1,244(sp)
1c00952c:	d9ca                	sw	s2,240(sp)
1c00952e:	d7ce                	sw	s3,236(sp)
1c009530:	d5d2                	sw	s4,232(sp)
1c009532:	d3d6                	sw	s5,228(sp)
1c009534:	d1da                	sw	s6,224(sp)
1c009536:	cfde                	sw	s7,220(sp)
1c009538:	cde2                	sw	s8,216(sp)
1c00953a:	cbe6                	sw	s9,212(sp)
1c00953c:	c9ea                	sw	s10,208(sp)
1c00953e:	328d                	jal	1c008ea0 <keccak_absorb.constprop.7>
1c009540:	002c                	addi	a1,sp,8
1c009542:	852e                	mv	a0,a1
1c009544:	f62ff0ef          	jal	ra,1c008ca6 <KeccakF1600_StatePermute>
1c009548:	4f32                	lw	t5,12(sp)
1c00954a:	4922                	lw	s2,8(sp)
1c00954c:	4ec2                	lw	t4,16(sp)
1c00954e:	4e52                	lw	t3,20(sp)
1c009550:	4362                	lw	t1,24(sp)
1c009552:	44f2                	lw	s1,28(sp)
1c009554:	5382                	lw	t2,32(sp)
1c009556:	5292                	lw	t0,36(sp)
1c009558:	00895813          	srli	a6,s2,0x8
1c00955c:	008f5513          	srli	a0,t5,0x8
1c009560:	008ed593          	srli	a1,t4,0x8
1c009564:	008e5613          	srli	a2,t3,0x8
1c009568:	00835693          	srli	a3,t1,0x8
1c00956c:	0084d713          	srli	a4,s1,0x8
1c009570:	0083d993          	srli	s3,t2,0x8
1c009574:	0082df93          	srli	t6,t0,0x8
1c009578:	0ff87813          	andi	a6,a6,255
1c00957c:	0ff57513          	andi	a0,a0,255
1c009580:	0ff5f593          	andi	a1,a1,255
1c009584:	0ff67613          	andi	a2,a2,255
1c009588:	0ff6f693          	andi	a3,a3,255
1c00958c:	0ff77713          	andi	a4,a4,255
1c009590:	0ff9f993          	andi	s3,s3,255
1c009594:	0fffff93          	andi	t6,t6,255
1c009598:	0fff7d13          	andi	s10,t5,255
1c00959c:	0ffefc93          	andi	s9,t4,255
1c0095a0:	0ffe7c13          	andi	s8,t3,255
1c0095a4:	0ff37b93          	andi	s7,t1,255
1c0095a8:	0ff4fb13          	andi	s6,s1,255
1c0095ac:	0ff3fa93          	andi	s5,t2,255
1c0095b0:	0ff2fa13          	andi	s4,t0,255
1c0095b4:	0822                	slli	a6,a6,0x8
1c0095b6:	0ff97893          	andi	a7,s2,255
1c0095ba:	0522                	slli	a0,a0,0x8
1c0095bc:	05a2                	slli	a1,a1,0x8
1c0095be:	0622                	slli	a2,a2,0x8
1c0095c0:	06a2                	slli	a3,a3,0x8
1c0095c2:	0722                	slli	a4,a4,0x8
1c0095c4:	09a2                	slli	s3,s3,0x8
1c0095c6:	0fa2                	slli	t6,t6,0x8
1c0095c8:	ff0107b7          	lui	a5,0xff010
1c0095cc:	17fd                	addi	a5,a5,-1
1c0095ce:	01fa6fb3          	or	t6,s4,t6
1c0095d2:	0108e8b3          	or	a7,a7,a6
1c0095d6:	00ff0a37          	lui	s4,0xff0
1c0095da:	00ad6833          	or	a6,s10,a0
1c0095de:	00bce533          	or	a0,s9,a1
1c0095e2:	00ff0d37          	lui	s10,0xff0
1c0095e6:	00cc65b3          	or	a1,s8,a2
1c0095ea:	00ff0cb7          	lui	s9,0xff0
1c0095ee:	00dbe633          	or	a2,s7,a3
1c0095f2:	00ff0c37          	lui	s8,0xff0
1c0095f6:	00eb66b3          	or	a3,s6,a4
1c0095fa:	00ff0bb7          	lui	s7,0xff0
1c0095fe:	013ae733          	or	a4,s5,s3
1c009602:	00ff0b37          	lui	s6,0xff0
1c009606:	00ff0ab7          	lui	s5,0xff0
1c00960a:	00ff09b7          	lui	s3,0xff0
1c00960e:	01a97d33          	and	s10,s2,s10
1c009612:	019f7cb3          	and	s9,t5,s9
1c009616:	018efc33          	and	s8,t4,s8
1c00961a:	017e7bb3          	and	s7,t3,s7
1c00961e:	01637b33          	and	s6,t1,s6
1c009622:	0154fab3          	and	s5,s1,s5
1c009626:	0143fa33          	and	s4,t2,s4
1c00962a:	0132f9b3          	and	s3,t0,s3
1c00962e:	00f8f8b3          	and	a7,a7,a5
1c009632:	00f87833          	and	a6,a6,a5
1c009636:	8d7d                	and	a0,a0,a5
1c009638:	8dfd                	and	a1,a1,a5
1c00963a:	8e7d                	and	a2,a2,a5
1c00963c:	8efd                	and	a3,a3,a5
1c00963e:	8f7d                	and	a4,a4,a5
1c009640:	00fff7b3          	and	a5,t6,a5
1c009644:	01000fb7          	lui	t6,0x1000
1c009648:	1ffd                	addi	t6,t6,-1
1c00964a:	01a8e8b3          	or	a7,a7,s10
1c00964e:	01986833          	or	a6,a6,s9
1c009652:	01856533          	or	a0,a0,s8
1c009656:	0175e5b3          	or	a1,a1,s7
1c00965a:	01666633          	or	a2,a2,s6
1c00965e:	0156e6b3          	or	a3,a3,s5
1c009662:	01476733          	or	a4,a4,s4
1c009666:	0137e7b3          	or	a5,a5,s3
1c00966a:	01895913          	srli	s2,s2,0x18
1c00966e:	018f5f13          	srli	t5,t5,0x18
1c009672:	018ede93          	srli	t4,t4,0x18
1c009676:	018e5e13          	srli	t3,t3,0x18
1c00967a:	01835313          	srli	t1,t1,0x18
1c00967e:	80e1                	srli	s1,s1,0x18
1c009680:	0183d393          	srli	t2,t2,0x18
1c009684:	0182d293          	srli	t0,t0,0x18
1c009688:	0962                	slli	s2,s2,0x18
1c00968a:	04e2                	slli	s1,s1,0x18
1c00968c:	01f8f8b3          	and	a7,a7,t6
1c009690:	0f62                	slli	t5,t5,0x18
1c009692:	01f87833          	and	a6,a6,t6
1c009696:	0ee2                	slli	t4,t4,0x18
1c009698:	01f57533          	and	a0,a0,t6
1c00969c:	0e62                	slli	t3,t3,0x18
1c00969e:	01f5f5b3          	and	a1,a1,t6
1c0096a2:	0362                	slli	t1,t1,0x18
1c0096a4:	01f67633          	and	a2,a2,t6
1c0096a8:	01f6f6b3          	and	a3,a3,t6
1c0096ac:	03e2                	slli	t2,t2,0x18
1c0096ae:	01f77733          	and	a4,a4,t6
1c0096b2:	02e2                	slli	t0,t0,0x18
1c0096b4:	01f7f7b3          	and	a5,a5,t6
1c0096b8:	0128e8b3          	or	a7,a7,s2
1c0096bc:	8ec5                	or	a3,a3,s1
1c0096be:	01e86833          	or	a6,a6,t5
1c0096c2:	01d56533          	or	a0,a0,t4
1c0096c6:	01c5e5b3          	or	a1,a1,t3
1c0096ca:	00666633          	or	a2,a2,t1
1c0096ce:	00776733          	or	a4,a4,t2
1c0096d2:	0057e7b3          	or	a5,a5,t0
1c0096d6:	01142023          	sw	a7,0(s0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c0096da:	01042223          	sw	a6,4(s0)
1c0096de:	c408                	sw	a0,8(s0)
1c0096e0:	c44c                	sw	a1,12(s0)
1c0096e2:	c810                	sw	a2,16(s0)
1c0096e4:	c854                	sw	a3,20(s0)
1c0096e6:	cc18                	sw	a4,24(s0)
1c0096e8:	cc5c                	sw	a5,28(s0)
1c0096ea:	50fe                	lw	ra,252(sp)
1c0096ec:	546e                	lw	s0,248(sp)
1c0096ee:	54de                	lw	s1,244(sp)
1c0096f0:	594e                	lw	s2,240(sp)
1c0096f2:	59be                	lw	s3,236(sp)
1c0096f4:	5a2e                	lw	s4,232(sp)
1c0096f6:	5a9e                	lw	s5,228(sp)
1c0096f8:	5b0e                	lw	s6,224(sp)
1c0096fa:	4bfe                	lw	s7,220(sp)
1c0096fc:	4c6e                	lw	s8,216(sp)
1c0096fe:	4cde                	lw	s9,212(sp)
1c009700:	4d4e                	lw	s10,208(sp)
1c009702:	6111                	addi	sp,sp,256
1c009704:	8082                	ret

1c009706 <sha3_512>:
1c009706:	db010113          	addi	sp,sp,-592
1c00970a:	24812423          	sw	s0,584(sp)
1c00970e:	23312e23          	sw	s3,572(sp)
1c009712:	23412c23          	sw	s4,568(sp)
1c009716:	24112623          	sw	ra,588(sp)
1c00971a:	24912223          	sw	s1,580(sp)
1c00971e:	25212023          	sw	s2,576(sp)
1c009722:	23512a23          	sw	s5,564(sp)
1c009726:	23612823          	sw	s6,560(sp)
1c00972a:	23712623          	sw	s7,556(sp)
1c00972e:	23812423          	sw	s8,552(sp)
1c009732:	23912223          	sw	s9,548(sp)
1c009736:	23a12023          	sw	s10,544(sp)
1c00973a:	21b12e23          	sw	s11,540(sp)
1c00973e:	842a                	mv	s0,a0
1c009740:	8a32                	mv	s4,a2
1c009742:	14810993          	addi	s3,sp,328
1c009746:	011c                	addi	a5,sp,128
1c009748:	4601                	li	a2,0
1c00974a:	4681                	li	a3,0
1c00974c:	c390                	sw	a2,0(a5)
1c00974e:	c3d4                	sw	a3,4(a5)
1c009750:	07a1                	addi	a5,a5,8
1c009752:	fef99be3          	bne	s3,a5,1c009748 <sha3_512+0x42>
1c009756:	04700793          	li	a5,71
1c00975a:	0747fe63          	bleu	s4,a5,1c0097d6 <sha3_512+0xd0>
1c00975e:	04700493          	li	s1,71
1c009762:	87ae                	mv	a5,a1
1c009764:	04878913          	addi	s2,a5,72 # ff010048 <pulp__FC+0xff010049>
1c009768:	0114                	addi	a3,sp,128
1c00976a:	0017c703          	lbu	a4,1(a5)
1c00976e:	0027c583          	lbu	a1,2(a5)
1c009772:	0057c883          	lbu	a7,5(a5)
1c009776:	0047c303          	lbu	t1,4(a5)
1c00977a:	0067c803          	lbu	a6,6(a5)
1c00977e:	0007ce03          	lbu	t3,0(a5)
1c009782:	0037c503          	lbu	a0,3(a5)
1c009786:	0077c603          	lbu	a2,7(a5)
1c00978a:	05c2                	slli	a1,a1,0x10
1c00978c:	0722                	slli	a4,a4,0x8
1c00978e:	08a2                	slli	a7,a7,0x8
1c009790:	8f4d                	or	a4,a4,a1
1c009792:	0068e8b3          	or	a7,a7,t1
1c009796:	0842                	slli	a6,a6,0x10
1c009798:	428c                	lw	a1,0(a3)
1c00979a:	0046a303          	lw	t1,4(a3)
1c00979e:	01c76733          	or	a4,a4,t3
1c0097a2:	0562                	slli	a0,a0,0x18
1c0097a4:	01186833          	or	a6,a6,a7
1c0097a8:	0662                	slli	a2,a2,0x18
1c0097aa:	8f49                	or	a4,a4,a0
1c0097ac:	01066633          	or	a2,a2,a6
1c0097b0:	8f2d                	xor	a4,a4,a1
1c0097b2:	00c34633          	xor	a2,t1,a2
1c0097b6:	c298                	sw	a4,0(a3)
1c0097b8:	c2d0                	sw	a2,4(a3)
1c0097ba:	07a1                	addi	a5,a5,8
1c0097bc:	06a1                	addi	a3,a3,8
1c0097be:	faf916e3          	bne	s2,a5,1c00976a <sha3_512+0x64>
1c0097c2:	010c                	addi	a1,sp,128
1c0097c4:	852e                	mv	a0,a1
1c0097c6:	ce0ff0ef          	jal	ra,1c008ca6 <KeccakF1600_StatePermute>
1c0097ca:	fb8a0a13          	addi	s4,s4,-72 # feffb8 <__CTOR_LIST__-0x1b01004c>
1c0097ce:	87ca                	mv	a5,s2
1c0097d0:	f944eae3          	bltu	s1,s4,1c009764 <sha3_512+0x5e>
1c0097d4:	85ca                	mv	a1,s2
1c0097d6:	0b18                	addi	a4,sp,400
1c0097d8:	87ce                	mv	a5,s3
1c0097da:	4681                	li	a3,0
1c0097dc:	c394                	sw	a3,0(a5)
1c0097de:	0791                	addi	a5,a5,4
1c0097e0:	fef71de3          	bne	a4,a5,1c0097da <sha3_512+0xd4>
1c0097e4:	060a0563          	beqz	s4,1c00984e <sha3_512+0x148>
1c0097e8:	fffa0793          	addi	a5,s4,-1
1c0097ec:	4709                	li	a4,2
1c0097ee:	06f772e3          	bleu	a5,a4,1c00a052 <sha3_512+0x94c>
1c0097f2:	002a5613          	srli	a2,s4,0x2
1c0097f6:	872e                	mv	a4,a1
1c0097f8:	4781                	li	a5,0
1c0097fa:	4314                	lw	a3,0(a4)
1c0097fc:	0785                	addi	a5,a5,1
1c0097fe:	00d9a023          	sw	a3,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c009802:	0711                	addi	a4,a4,4
1c009804:	0991                	addi	s3,s3,4
1c009806:	fec7eae3          	bltu	a5,a2,1c0097fa <sha3_512+0xf4>
1c00980a:	ffca7793          	andi	a5,s4,-4
1c00980e:	04fa0063          	beq	s4,a5,1c00984e <sha3_512+0x148>
1c009812:	00f58733          	add	a4,a1,a5
1c009816:	00074683          	lbu	a3,0(a4)
1c00981a:	21010813          	addi	a6,sp,528
1c00981e:	00f80733          	add	a4,a6,a5
1c009822:	f2d70c23          	sb	a3,-200(a4)
1c009826:	00178713          	addi	a4,a5,1
1c00982a:	03477263          	bleu	s4,a4,1c00984e <sha3_512+0x148>
1c00982e:	00e586b3          	add	a3,a1,a4
1c009832:	0006c683          	lbu	a3,0(a3)
1c009836:	9742                	add	a4,a4,a6
1c009838:	f2d70c23          	sb	a3,-200(a4)
1c00983c:	0789                	addi	a5,a5,2
1c00983e:	0147f863          	bleu	s4,a5,1c00984e <sha3_512+0x148>
1c009842:	95be                	add	a1,a1,a5
1c009844:	0005c703          	lbu	a4,0(a1)
1c009848:	97c2                	add	a5,a5,a6
1c00984a:	f2e78c23          	sb	a4,-200(a5)
1c00984e:	21010893          	addi	a7,sp,528
1c009852:	9a46                	add	s4,s4,a7
1c009854:	4799                	li	a5,6
1c009856:	f2fa0c23          	sb	a5,-200(s4)
1c00985a:	14a14703          	lbu	a4,330(sp)
1c00985e:	14914f03          	lbu	t5,329(sp)
1c009862:	15214783          	lbu	a5,338(sp)
1c009866:	15114e83          	lbu	t4,337(sp)
1c00986a:	15514303          	lbu	t1,341(sp)
1c00986e:	15414383          	lbu	t2,340(sp)
1c009872:	15614803          	lbu	a6,342(sp)
1c009876:	14814283          	lbu	t0,328(sp)
1c00987a:	14b14503          	lbu	a0,331(sp)
1c00987e:	15014f83          	lbu	t6,336(sp)
1c009882:	15314603          	lbu	a2,339(sp)
1c009886:	15714683          	lbu	a3,343(sp)
1c00988a:	0f22                	slli	t5,t5,0x8
1c00988c:	0ea2                	slli	t4,t4,0x8
1c00988e:	0742                	slli	a4,a4,0x10
1c009890:	07c2                	slli	a5,a5,0x10
1c009892:	0322                	slli	t1,t1,0x8
1c009894:	14d14e03          	lbu	t3,333(sp)
1c009898:	00736333          	or	t1,t1,t2
1c00989c:	01e76733          	or	a4,a4,t5
1c0098a0:	01d7e7b3          	or	a5,a5,t4
1c0098a4:	0842                	slli	a6,a6,0x10
1c0098a6:	14c14483          	lbu	s1,332(sp)
1c0098aa:	14e14883          	lbu	a7,334(sp)
1c0098ae:	00576733          	or	a4,a4,t0
1c0098b2:	01f7e7b3          	or	a5,a5,t6
1c0098b6:	00686833          	or	a6,a6,t1
1c0098ba:	0662                	slli	a2,a2,0x18
1c0098bc:	06e2                	slli	a3,a3,0x18
1c0098be:	0562                	slli	a0,a0,0x18
1c0098c0:	14f14583          	lbu	a1,335(sp)
1c0098c4:	8d59                	or	a0,a0,a4
1c0098c6:	0e22                	slli	t3,t3,0x8
1c0098c8:	00f66733          	or	a4,a2,a5
1c0098cc:	0106e7b3          	or	a5,a3,a6
1c0098d0:	468a                	lw	a3,128(sp)
1c0098d2:	009e6e33          	or	t3,t3,s1
1c0098d6:	08c2                	slli	a7,a7,0x10
1c0098d8:	01c8e8b3          	or	a7,a7,t3
1c0098dc:	8d35                	xor	a0,a0,a3
1c0098de:	05e2                	slli	a1,a1,0x18
1c0098e0:	469a                	lw	a3,132(sp)
1c0098e2:	0115e5b3          	or	a1,a1,a7
1c0098e6:	8db5                	xor	a1,a1,a3
1c0098e8:	46aa                	lw	a3,136(sp)
1c0098ea:	15a14803          	lbu	a6,346(sp)
1c0098ee:	8eb9                	xor	a3,a3,a4
1c0098f0:	473a                	lw	a4,140(sp)
1c0098f2:	15914483          	lbu	s1,345(sp)
1c0098f6:	8f3d                	xor	a4,a4,a5
1c0098f8:	15814a83          	lbu	s5,344(sp)
1c0098fc:	15b14a03          	lbu	s4,347(sp)
1c009900:	15c14d03          	lbu	s10,348(sp)
1c009904:	18f14783          	lbu	a5,399(sp)
1c009908:	c12a                	sw	a0,128(sp)
1c00990a:	c32e                	sw	a1,132(sp)
1c00990c:	c536                	sw	a3,136(sp)
1c00990e:	c73a                	sw	a4,140(sp)
1c009910:	15d14903          	lbu	s2,349(sp)
1c009914:	15e14f83          	lbu	t6,350(sp)
1c009918:	16114283          	lbu	t0,353(sp)
1c00991c:	16214f03          	lbu	t5,354(sp)
1c009920:	16d14883          	lbu	a7,365(sp)
1c009924:	16c14b83          	lbu	s7,364(sp)
1c009928:	04a2                	slli	s1,s1,0x8
1c00992a:	0842                	slli	a6,a6,0x10
1c00992c:	02a2                	slli	t0,t0,0x8
1c00992e:	08a2                	slli	a7,a7,0x8
1c009930:	00986833          	or	a6,a6,s1
1c009934:	0f42                	slli	t5,t5,0x10
1c009936:	01e2ef33          	or	t5,t0,t5
1c00993a:	01586833          	or	a6,a6,s5
1c00993e:	0178e2b3          	or	t0,a7,s7
1c009942:	018a1893          	slli	a7,s4,0x18
1c009946:	15f14503          	lbu	a0,351(sp)
1c00994a:	0108e833          	or	a6,a7,a6
1c00994e:	0922                	slli	s2,s2,0x8
1c009950:	48ca                	lw	a7,144(sp)
1c009952:	01a96933          	or	s2,s2,s10
1c009956:	0fc2                	slli	t6,t6,0x10
1c009958:	16014983          	lbu	s3,352(sp)
1c00995c:	16514e83          	lbu	t4,357(sp)
1c009960:	16314583          	lbu	a1,355(sp)
1c009964:	012fefb3          	or	t6,t6,s2
1c009968:	0108c8b3          	xor	a7,a7,a6
1c00996c:	0562                	slli	a0,a0,0x18
1c00996e:	485a                	lw	a6,148(sp)
1c009970:	16414c83          	lbu	s9,356(sp)
1c009974:	16614c03          	lbu	s8,358(sp)
1c009978:	01f56533          	or	a0,a0,t6
1c00997c:	16914e03          	lbu	t3,361(sp)
1c009980:	16a14303          	lbu	t1,362(sp)
1c009984:	16714603          	lbu	a2,359(sp)
1c009988:	013f6f33          	or	t5,t5,s3
1c00998c:	00a84833          	xor	a6,a6,a0
1c009990:	0ea2                	slli	t4,t4,0x8
1c009992:	456a                	lw	a0,152(sp)
1c009994:	05e2                	slli	a1,a1,0x18
1c009996:	019ee4b3          	or	s1,t4,s9
1c00999a:	01e5e5b3          	or	a1,a1,t5
1c00999e:	010c1e93          	slli	t4,s8,0x10
1c0099a2:	16814383          	lbu	t2,360(sp)
1c0099a6:	16b14683          	lbu	a3,363(sp)
1c0099aa:	009eeeb3          	or	t4,t4,s1
1c0099ae:	8d2d                	xor	a0,a0,a1
1c0099b0:	0342                	slli	t1,t1,0x10
1c0099b2:	45fa                	lw	a1,156(sp)
1c0099b4:	0e22                	slli	t3,t3,0x8
1c0099b6:	0662                	slli	a2,a2,0x18
1c0099b8:	16e14b03          	lbu	s6,366(sp)
1c0099bc:	01d66633          	or	a2,a2,t4
1c0099c0:	006e6e33          	or	t3,t3,t1
1c0099c4:	16f14703          	lbu	a4,367(sp)
1c0099c8:	007e6e33          	or	t3,t3,t2
1c0099cc:	8db1                	xor	a1,a1,a2
1c0099ce:	06e2                	slli	a3,a3,0x18
1c0099d0:	560a                	lw	a2,160(sp)
1c0099d2:	01c6e6b3          	or	a3,a3,t3
1c0099d6:	010b1313          	slli	t1,s6,0x10
1c0099da:	00536333          	or	t1,t1,t0
1c0099de:	8e35                	xor	a2,a2,a3
1c0099e0:	0762                	slli	a4,a4,0x18
1c0099e2:	569a                	lw	a3,164(sp)
1c0099e4:	00676733          	or	a4,a4,t1
1c0099e8:	8f35                	xor	a4,a4,a3
1c0099ea:	c946                	sw	a7,144(sp)
1c0099ec:	cb42                	sw	a6,148(sp)
1c0099ee:	cd2a                	sw	a0,152(sp)
1c0099f0:	cf2e                	sw	a1,156(sp)
1c0099f2:	d132                	sw	a2,160(sp)
1c0099f4:	d33a                	sw	a4,164(sp)
1c0099f6:	17114e83          	lbu	t4,369(sp)
1c0099fa:	17214a83          	lbu	s5,370(sp)
1c0099fe:	17014903          	lbu	s2,368(sp)
1c009a02:	18114803          	lbu	a6,385(sp)
1c009a06:	18214483          	lbu	s1,386(sp)
1c009a0a:	18014283          	lbu	t0,384(sp)
1c009a0e:	18314703          	lbu	a4,387(sp)
1c009a12:	04c2                	slli	s1,s1,0x10
1c009a14:	0822                	slli	a6,a6,0x8
1c009a16:	17514f83          	lbu	t6,373(sp)
1c009a1a:	17314503          	lbu	a0,371(sp)
1c009a1e:	0ac2                	slli	s5,s5,0x10
1c009a20:	00986833          	or	a6,a6,s1
1c009a24:	0ea2                	slli	t4,t4,0x8
1c009a26:	17414b03          	lbu	s6,372(sp)
1c009a2a:	00586833          	or	a6,a6,t0
1c009a2e:	17614e03          	lbu	t3,374(sp)
1c009a32:	015eeeb3          	or	t4,t4,s5
1c009a36:	0762                	slli	a4,a4,0x18
1c009a38:	17914303          	lbu	t1,377(sp)
1c009a3c:	17a14983          	lbu	s3,378(sp)
1c009a40:	17714583          	lbu	a1,375(sp)
1c009a44:	012eeeb3          	or	t4,t4,s2
1c009a48:	01076733          	or	a4,a4,a6
1c009a4c:	0fa2                	slli	t6,t6,0x8
1c009a4e:	582a                	lw	a6,168(sp)
1c009a50:	0562                	slli	a0,a0,0x18
1c009a52:	016fefb3          	or	t6,t6,s6
1c009a56:	01d56533          	or	a0,a0,t4
1c009a5a:	0e42                	slli	t3,t3,0x10
1c009a5c:	17814383          	lbu	t2,376(sp)
1c009a60:	01fe6e33          	or	t3,t3,t6
1c009a64:	17d14f03          	lbu	t5,381(sp)
1c009a68:	17b14603          	lbu	a2,379(sp)
1c009a6c:	00a84833          	xor	a6,a6,a0
1c009a70:	09c2                	slli	s3,s3,0x10
1c009a72:	553a                	lw	a0,172(sp)
1c009a74:	0322                	slli	t1,t1,0x8
1c009a76:	05e2                	slli	a1,a1,0x18
1c009a78:	17c14a03          	lbu	s4,380(sp)
1c009a7c:	17e14883          	lbu	a7,382(sp)
1c009a80:	01c5e5b3          	or	a1,a1,t3
1c009a84:	01336333          	or	t1,t1,s3
1c009a88:	00736333          	or	t1,t1,t2
1c009a8c:	17f14683          	lbu	a3,383(sp)
1c009a90:	8d2d                	xor	a0,a0,a1
1c009a92:	0f22                	slli	t5,t5,0x8
1c009a94:	55ca                	lw	a1,176(sp)
1c009a96:	0662                	slli	a2,a2,0x18
1c009a98:	014f6f33          	or	t5,t5,s4
1c009a9c:	00666633          	or	a2,a2,t1
1c009aa0:	08c2                	slli	a7,a7,0x10
1c009aa2:	01e8e8b3          	or	a7,a7,t5
1c009aa6:	8db1                	xor	a1,a1,a2
1c009aa8:	06e2                	slli	a3,a3,0x18
1c009aaa:	565a                	lw	a2,180(sp)
1c009aac:	0116e6b3          	or	a3,a3,a7
1c009ab0:	8e35                	xor	a2,a2,a3
1c009ab2:	56ea                	lw	a3,184(sp)
1c009ab4:	18414f03          	lbu	t5,388(sp)
1c009ab8:	8f35                	xor	a4,a4,a3
1c009aba:	d542                	sw	a6,168(sp)
1c009abc:	d72a                	sw	a0,172(sp)
1c009abe:	d92e                	sw	a1,176(sp)
1c009ac0:	db32                	sw	a2,180(sp)
1c009ac2:	18514883          	lbu	a7,389(sp)
1c009ac6:	18614503          	lbu	a0,390(sp)
1c009aca:	18714603          	lbu	a2,391(sp)
1c009ace:	dd3a                	sw	a4,184(sp)
1c009ad0:	18914703          	lbu	a4,393(sp)
1c009ad4:	18a14303          	lbu	t1,394(sp)
1c009ad8:	18814e03          	lbu	t3,392(sp)
1c009adc:	0342                	slli	t1,t1,0x10
1c009ade:	18b14683          	lbu	a3,395(sp)
1c009ae2:	0722                	slli	a4,a4,0x8
1c009ae4:	00676733          	or	a4,a4,t1
1c009ae8:	08a2                	slli	a7,a7,0x8
1c009aea:	01e8e8b3          	or	a7,a7,t5
1c009aee:	01c76733          	or	a4,a4,t3
1c009af2:	06e2                	slli	a3,a3,0x18
1c009af4:	0542                	slli	a0,a0,0x10
1c009af6:	01156533          	or	a0,a0,a7
1c009afa:	18d14803          	lbu	a6,397(sp)
1c009afe:	8f55                	or	a4,a4,a3
1c009b00:	0662                	slli	a2,a2,0x18
1c009b02:	56fa                	lw	a3,188(sp)
1c009b04:	18c14e83          	lbu	t4,396(sp)
1c009b08:	18e14583          	lbu	a1,398(sp)
1c009b0c:	8e49                	or	a2,a2,a0
1c009b0e:	8e35                	xor	a2,a2,a3
1c009b10:	0822                	slli	a6,a6,0x8
1c009b12:	468e                	lw	a3,192(sp)
1c009b14:	01d86833          	or	a6,a6,t4
1c009b18:	0807e793          	ori	a5,a5,128
1c009b1c:	05c2                	slli	a1,a1,0x10
1c009b1e:	0105e5b3          	or	a1,a1,a6
1c009b22:	8eb9                	xor	a3,a3,a4
1c009b24:	07e2                	slli	a5,a5,0x18
1c009b26:	471e                	lw	a4,196(sp)
1c009b28:	8fcd                	or	a5,a5,a1
1c009b2a:	010c                	addi	a1,sp,128
1c009b2c:	8fb9                	xor	a5,a5,a4
1c009b2e:	852e                	mv	a0,a1
1c009b30:	df32                	sw	a2,188(sp)
1c009b32:	c1b6                	sw	a3,192(sp)
1c009b34:	c3be                	sw	a5,196(sp)
1c009b36:	970ff0ef          	jal	ra,1c008ca6 <KeccakF1600_StatePermute>
1c009b3a:	581a                	lw	a6,164(sp)
1c009b3c:	552a                	lw	a0,168(sp)
1c009b3e:	55ba                	lw	a1,172(sp)
1c009b40:	00885913          	srli	s2,a6,0x8
1c009b44:	564a                	lw	a2,176(sp)
1c009b46:	de4a                	sw	s2,60(sp)
1c009b48:	00855913          	srli	s2,a0,0x8
1c009b4c:	56da                	lw	a3,180(sp)
1c009b4e:	d24a                	sw	s2,36(sp)
1c009b50:	0085d913          	srli	s2,a1,0x8
1c009b54:	576a                	lw	a4,184(sp)
1c009b56:	d44a                	sw	s2,40(sp)
1c009b58:	00865913          	srli	s2,a2,0x8
1c009b5c:	57fa                	lw	a5,188(sp)
1c009b5e:	d64a                	sw	s2,44(sp)
1c009b60:	0086d913          	srli	s2,a3,0x8
1c009b64:	d84a                	sw	s2,48(sp)
1c009b66:	00875913          	srli	s2,a4,0x8
1c009b6a:	da4a                	sw	s2,52(sp)
1c009b6c:	0087d913          	srli	s2,a5,0x8
1c009b70:	dc4a                	sw	s2,56(sp)
1c009b72:	5972                	lw	s2,60(sp)
1c009b74:	448a                	lw	s1,128(sp)
1c009b76:	0ff97913          	andi	s2,s2,255
1c009b7a:	c2ca                	sw	s2,68(sp)
1c009b7c:	5912                	lw	s2,36(sp)
1c009b7e:	439a                	lw	t2,132(sp)
1c009b80:	0ff97913          	andi	s2,s2,255
1c009b84:	c4ca                	sw	s2,72(sp)
1c009b86:	5922                	lw	s2,40(sp)
1c009b88:	42aa                	lw	t0,136(sp)
1c009b8a:	0ff97913          	andi	s2,s2,255
1c009b8e:	c8ca                	sw	s2,80(sp)
1c009b90:	5932                	lw	s2,44(sp)
1c009b92:	4fba                	lw	t6,140(sp)
1c009b94:	0ff97913          	andi	s2,s2,255
1c009b98:	ccca                	sw	s2,88(sp)
1c009b9a:	5942                	lw	s2,48(sp)
1c009b9c:	4f4a                	lw	t5,144(sp)
1c009b9e:	0ff97913          	andi	s2,s2,255
1c009ba2:	4eda                	lw	t4,148(sp)
1c009ba4:	4e6a                	lw	t3,152(sp)
1c009ba6:	437a                	lw	t1,156(sp)
1c009ba8:	588a                	lw	a7,160(sp)
1c009baa:	d0ca                	sw	s2,96(sp)
1c009bac:	5952                	lw	s2,52(sp)
1c009bae:	0082dc93          	srli	s9,t0,0x8
1c009bb2:	0ff97913          	andi	s2,s2,255
1c009bb6:	d4ca                	sw	s2,104(sp)
1c009bb8:	5962                	lw	s2,56(sp)
1c009bba:	008fdc13          	srli	s8,t6,0x8
1c009bbe:	008f5b93          	srli	s7,t5,0x8
1c009bc2:	008edb13          	srli	s6,t4,0x8
1c009bc6:	0ff97913          	andi	s2,s2,255
1c009bca:	d8ca                	sw	s2,112(sp)
1c009bcc:	0083dd13          	srli	s10,t2,0x8
1c009bd0:	0ff4f913          	andi	s2,s1,255
1c009bd4:	0ffcfc93          	andi	s9,s9,255
1c009bd8:	0ffc7c13          	andi	s8,s8,255
1c009bdc:	0ffbfb93          	andi	s7,s7,255
1c009be0:	0ffb7b13          	andi	s6,s6,255
1c009be4:	d24a                	sw	s2,36(sp)
1c009be6:	008e5a93          	srli	s5,t3,0x8
1c009bea:	0ff2f913          	andi	s2,t0,255
1c009bee:	0ca2                	slli	s9,s9,0x8
1c009bf0:	0c22                	slli	s8,s8,0x8
1c009bf2:	0ba2                	slli	s7,s7,0x8
1c009bf4:	0b22                	slli	s6,s6,0x8
1c009bf6:	0ffd7d13          	andi	s10,s10,255
1c009bfa:	ce66                	sw	s9,28(sp)
1c009bfc:	d64a                	sw	s2,44(sp)
1c009bfe:	cc62                	sw	s8,24(sp)
1c009c00:	ca5e                	sw	s7,20(sp)
1c009c02:	0ffffc13          	andi	s8,t6,255
1c009c06:	4b96                	lw	s7,68(sp)
1c009c08:	0fff7c93          	andi	s9,t5,255
1c009c0c:	c85a                	sw	s6,16(sp)
1c009c0e:	0ffe7913          	andi	s2,t3,255
1c009c12:	0ff8fb13          	andi	s6,a7,255
1c009c16:	0d22                	slli	s10,s10,0x8
1c009c18:	0ffafa93          	andi	s5,s5,255
1c009c1c:	d06a                	sw	s10,32(sp)
1c009c1e:	d862                	sw	s8,48(sp)
1c009c20:	0ff3fd13          	andi	s10,t2,255
1c009c24:	da66                	sw	s9,52(sp)
1c009c26:	de4a                	sw	s2,60(sp)
1c009c28:	4ca6                	lw	s9,72(sp)
1c009c2a:	4946                	lw	s2,80(sp)
1c009c2c:	c0da                	sw	s6,64(sp)
1c009c2e:	0ff87c13          	andi	s8,a6,255
1c009c32:	4b66                	lw	s6,88(sp)
1c009c34:	0aa2                	slli	s5,s5,0x8
1c009c36:	d46a                	sw	s10,40(sp)
1c009c38:	c656                	sw	s5,12(sp)
1c009c3a:	0ffefd13          	andi	s10,t4,255
1c009c3e:	0ff37a93          	andi	s5,t1,255
1c009c42:	c2e2                	sw	s8,68(sp)
1c009c44:	0ba2                	slli	s7,s7,0x8
1c009c46:	5c06                	lw	s8,96(sp)
1c009c48:	dc6a                	sw	s10,56(sp)
1c009c4a:	dcd6                	sw	s5,120(sp)
1c009c4c:	dede                	sw	s7,124(sp)
1c009c4e:	0ff57d13          	andi	s10,a0,255
1c009c52:	0ff5fa93          	andi	s5,a1,255
1c009c56:	0ff67b93          	andi	s7,a2,255
1c009c5a:	0ca2                	slli	s9,s9,0x8
1c009c5c:	0922                	slli	s2,s2,0x8
1c009c5e:	0b22                	slli	s6,s6,0x8
1c009c60:	c4e6                	sw	s9,72(sp)
1c009c62:	c6ea                	sw	s10,76(sp)
1c009c64:	c8ca                	sw	s2,80(sp)
1c009c66:	cad6                	sw	s5,84(sp)
1c009c68:	ccda                	sw	s6,88(sp)
1c009c6a:	cede                	sw	s7,92(sp)
1c009c6c:	0c22                	slli	s8,s8,0x8
1c009c6e:	d0e2                	sw	s8,96(sp)
1c009c70:	5ac6                	lw	s5,112(sp)
1c009c72:	5d26                	lw	s10,104(sp)
1c009c74:	0ff6fc93          	andi	s9,a3,255
1c009c78:	0ff7fb13          	andi	s6,a5,255
1c009c7c:	0084dd93          	srli	s11,s1,0x8
1c009c80:	0aa2                	slli	s5,s5,0x8
1c009c82:	5b92                	lw	s7,36(sp)
1c009c84:	5c22                	lw	s8,40(sp)
1c009c86:	d2e6                	sw	s9,100(sp)
1c009c88:	d8d6                	sw	s5,112(sp)
1c009c8a:	5c82                	lw	s9,32(sp)
1c009c8c:	5ab2                	lw	s5,44(sp)
1c009c8e:	dada                	sw	s6,116(sp)
1c009c90:	0ffdfd93          	andi	s11,s11,255
1c009c94:	4b72                	lw	s6,28(sp)
1c009c96:	0d22                	slli	s10,s10,0x8
1c009c98:	0da2                	slli	s11,s11,0x8
1c009c9a:	d4ea                	sw	s10,104(sp)
1c009c9c:	01bbedb3          	or	s11,s7,s11
1c009ca0:	019c6d33          	or	s10,s8,s9
1c009ca4:	5bc2                	lw	s7,48(sp)
1c009ca6:	016aecb3          	or	s9,s5,s6
1c009caa:	4ae2                	lw	s5,24(sp)
1c009cac:	5b52                	lw	s6,52(sp)
1c009cae:	015bec33          	or	s8,s7,s5
1c009cb2:	4ad2                	lw	s5,20(sp)
1c009cb4:	0088d993          	srli	s3,a7,0x8
1c009cb8:	015b6bb3          	or	s7,s6,s5
1c009cbc:	4ac2                	lw	s5,16(sp)
1c009cbe:	5b62                	lw	s6,56(sp)
1c009cc0:	00835a13          	srli	s4,t1,0x8
1c009cc4:	015b6b33          	or	s6,s6,s5
1c009cc8:	c25a                	sw	s6,4(sp)
1c009cca:	4ab2                	lw	s5,12(sp)
1c009ccc:	5b72                	lw	s6,60(sp)
1c009cce:	0ff9f993          	andi	s3,s3,255
1c009cd2:	015b6b33          	or	s6,s6,s5
1c009cd6:	4a86                	lw	s5,64(sp)
1c009cd8:	c45a                	sw	s6,8(sp)
1c009cda:	0ffa7a13          	andi	s4,s4,255
1c009cde:	5b66                	lw	s6,120(sp)
1c009ce0:	09a2                	slli	s3,s3,0x8
1c009ce2:	013ae9b3          	or	s3,s5,s3
1c009ce6:	0a22                	slli	s4,s4,0x8
1c009ce8:	c0ce                	sw	s3,64(sp)
1c009cea:	014b6a33          	or	s4,s6,s4
1c009cee:	59f6                	lw	s3,124(sp)
1c009cf0:	4b16                	lw	s6,68(sp)
1c009cf2:	4ab6                	lw	s5,76(sp)
1c009cf4:	013b6b33          	or	s6,s6,s3
1c009cf8:	c2da                	sw	s6,68(sp)
1c009cfa:	4b26                	lw	s6,72(sp)
1c009cfc:	0ff77913          	andi	s2,a4,255
1c009d00:	016aeab3          	or	s5,s5,s6
1c009d04:	d6ca                	sw	s2,108(sp)
1c009d06:	49d6                	lw	s3,84(sp)
1c009d08:	c6d6                	sw	s5,76(sp)
1c009d0a:	4ac6                	lw	s5,80(sp)
1c009d0c:	4b76                	lw	s6,92(sp)
1c009d0e:	0159e9b3          	or	s3,s3,s5
1c009d12:	cace                	sw	s3,84(sp)
1c009d14:	49e6                	lw	s3,88(sp)
1c009d16:	5a96                	lw	s5,100(sp)
1c009d18:	013b6b33          	or	s6,s6,s3
1c009d1c:	ceda                	sw	s6,92(sp)
1c009d1e:	5b06                	lw	s6,96(sp)
1c009d20:	59b6                	lw	s3,108(sp)
1c009d22:	016aeab3          	or	s5,s5,s6
1c009d26:	d2d6                	sw	s5,100(sp)
1c009d28:	5aa6                	lw	s5,104(sp)
1c009d2a:	5b56                	lw	s6,116(sp)
1c009d2c:	0159e9b3          	or	s3,s3,s5
1c009d30:	d6ce                	sw	s3,108(sp)
1c009d32:	59c6                	lw	s3,112(sp)
1c009d34:	ff010937          	lui	s2,0xff010
1c009d38:	013b6b33          	or	s6,s6,s3
1c009d3c:	00ff09b7          	lui	s3,0xff0
1c009d40:	0134fab3          	and	s5,s1,s3
1c009d44:	0133f9b3          	and	s3,t2,s3
1c009d48:	d44e                	sw	s3,40(sp)
1c009d4a:	00ff09b7          	lui	s3,0xff0
1c009d4e:	0132f9b3          	and	s3,t0,s3
1c009d52:	d64e                	sw	s3,44(sp)
1c009d54:	00ff09b7          	lui	s3,0xff0
1c009d58:	013ff9b3          	and	s3,t6,s3
1c009d5c:	d84e                	sw	s3,48(sp)
1c009d5e:	00ff09b7          	lui	s3,0xff0
1c009d62:	013f79b3          	and	s3,t5,s3
1c009d66:	da4e                	sw	s3,52(sp)
1c009d68:	00ff09b7          	lui	s3,0xff0
1c009d6c:	013ef9b3          	and	s3,t4,s3
1c009d70:	dc4e                	sw	s3,56(sp)
1c009d72:	00ff09b7          	lui	s3,0xff0
1c009d76:	013e79b3          	and	s3,t3,s3
1c009d7a:	197d                	addi	s2,s2,-1
1c009d7c:	de4e                	sw	s3,60(sp)
1c009d7e:	00ff09b7          	lui	s3,0xff0
1c009d82:	012c7c33          	and	s8,s8,s2
1c009d86:	012bfbb3          	and	s7,s7,s2
1c009d8a:	013379b3          	and	s3,t1,s3
1c009d8e:	012cfcb3          	and	s9,s9,s2
1c009d92:	ca62                	sw	s8,20(sp)
1c009d94:	c85e                	sw	s7,16(sp)
1c009d96:	4c22                	lw	s8,8(sp)
1c009d98:	4b92                	lw	s7,4(sp)
1c009d9a:	dcce                	sw	s3,120(sp)
1c009d9c:	00ff09b7          	lui	s3,0xff0
1c009da0:	cc66                	sw	s9,24(sp)
1c009da2:	0138f9b3          	and	s3,a7,s3
1c009da6:	4c86                	lw	s9,64(sp)
1c009da8:	012d7d33          	and	s10,s10,s2
1c009dac:	012bfbb3          	and	s7,s7,s2
1c009db0:	012c7c33          	and	s8,s8,s2
1c009db4:	012a7a33          	and	s4,s4,s2
1c009db8:	dece                	sw	s3,124(sp)
1c009dba:	00ff09b7          	lui	s3,0xff0
1c009dbe:	dada                	sw	s6,116(sp)
1c009dc0:	ce6a                	sw	s10,28(sp)
1c009dc2:	c65e                	sw	s7,12(sp)
1c009dc4:	c462                	sw	s8,8(sp)
1c009dc6:	c252                	sw	s4,4(sp)
1c009dc8:	012cfcb3          	and	s9,s9,s2
1c009dcc:	013879b3          	and	s3,a6,s3
1c009dd0:	c0e6                	sw	s9,64(sp)
1c009dd2:	c4ce                	sw	s3,72(sp)
1c009dd4:	00ff09b7          	lui	s3,0xff0
1c009dd8:	013579b3          	and	s3,a0,s3
1c009ddc:	c8ce                	sw	s3,80(sp)
1c009dde:	00ff09b7          	lui	s3,0xff0
1c009de2:	0135f9b3          	and	s3,a1,s3
1c009de6:	ccce                	sw	s3,88(sp)
1c009de8:	49d6                	lw	s3,84(sp)
1c009dea:	012dfb33          	and	s6,s11,s2
1c009dee:	0129f9b3          	and	s3,s3,s2
1c009df2:	cace                	sw	s3,84(sp)
1c009df4:	00ff09b7          	lui	s3,0xff0
1c009df8:	013679b3          	and	s3,a2,s3
1c009dfc:	d0ce                	sw	s3,96(sp)
1c009dfe:	00ff09b7          	lui	s3,0xff0
1c009e02:	0136f9b3          	and	s3,a3,s3
1c009e06:	d4ce                	sw	s3,104(sp)
1c009e08:	00ff09b7          	lui	s3,0xff0
1c009e0c:	4db6                	lw	s11,76(sp)
1c009e0e:	4a76                	lw	s4,92(sp)
1c009e10:	013779b3          	and	s3,a4,s3
1c009e14:	d8ce                	sw	s3,112(sp)
1c009e16:	00ff09b7          	lui	s3,0xff0
1c009e1a:	4d16                	lw	s10,68(sp)
1c009e1c:	5b96                	lw	s7,100(sp)
1c009e1e:	012dfdb3          	and	s11,s11,s2
1c009e22:	012a7a33          	and	s4,s4,s2
1c009e26:	0137f9b3          	and	s3,a5,s3
1c009e2a:	5cd6                	lw	s9,116(sp)
1c009e2c:	5c36                	lw	s8,108(sp)
1c009e2e:	c6ee                	sw	s11,76(sp)
1c009e30:	ced2                	sw	s4,92(sp)
1c009e32:	c04e                	sw	s3,0(sp)
1c009e34:	5a22                	lw	s4,40(sp)
1c009e36:	49f2                	lw	s3,28(sp)
1c009e38:	015b6db3          	or	s11,s6,s5
1c009e3c:	4ae2                	lw	s5,24(sp)
1c009e3e:	5b32                	lw	s6,44(sp)
1c009e40:	012d7d33          	and	s10,s10,s2
1c009e44:	012bfbb3          	and	s7,s7,s2
1c009e48:	c2ea                	sw	s10,68(sp)
1c009e4a:	d2de                	sw	s7,100(sp)
1c009e4c:	012c7c33          	and	s8,s8,s2
1c009e50:	4bd2                	lw	s7,20(sp)
1c009e52:	012cf933          	and	s2,s9,s2
1c009e56:	0149ed33          	or	s10,s3,s4
1c009e5a:	016aecb3          	or	s9,s5,s6
1c009e5e:	59c2                	lw	s3,48(sp)
1c009e60:	4a42                	lw	s4,16(sp)
1c009e62:	5ad2                	lw	s5,52(sp)
1c009e64:	d6e2                	sw	s8,108(sp)
1c009e66:	013bec33          	or	s8,s7,s3
1c009e6a:	49b2                	lw	s3,12(sp)
1c009e6c:	015a6bb3          	or	s7,s4,s5
1c009e70:	5a62                	lw	s4,56(sp)
1c009e72:	daca                	sw	s2,116(sp)
1c009e74:	0149eb33          	or	s6,s3,s4
1c009e78:	49a2                	lw	s3,8(sp)
1c009e7a:	5a72                	lw	s4,60(sp)
1c009e7c:	80e1                	srli	s1,s1,0x18
1c009e7e:	0149eab3          	or	s5,s3,s4
1c009e82:	5a66                	lw	s4,120(sp)
1c009e84:	4992                	lw	s3,4(sp)
1c009e86:	04e2                	slli	s1,s1,0x18
1c009e88:	0149e9b3          	or	s3,s3,s4
1c009e8c:	dcce                	sw	s3,120(sp)
1c009e8e:	5a76                	lw	s4,124(sp)
1c009e90:	4986                	lw	s3,64(sp)
1c009e92:	01000937          	lui	s2,0x1000
1c009e96:	0149e9b3          	or	s3,s3,s4
1c009e9a:	d24e                	sw	s3,36(sp)
1c009e9c:	4a26                	lw	s4,72(sp)
1c009e9e:	4996                	lw	s3,68(sp)
1c009ea0:	197d                	addi	s2,s2,-1
1c009ea2:	0149e9b3          	or	s3,s3,s4
1c009ea6:	d44e                	sw	s3,40(sp)
1c009ea8:	4a46                	lw	s4,80(sp)
1c009eaa:	49b6                	lw	s3,76(sp)
1c009eac:	c2a6                	sw	s1,68(sp)
1c009eae:	0149e9b3          	or	s3,s3,s4
1c009eb2:	d64e                	sw	s3,44(sp)
1c009eb4:	4a66                	lw	s4,88(sp)
1c009eb6:	49d6                	lw	s3,84(sp)
1c009eb8:	54e6                	lw	s1,120(sp)
1c009eba:	0149e9b3          	or	s3,s3,s4
1c009ebe:	d84e                	sw	s3,48(sp)
1c009ec0:	5a06                	lw	s4,96(sp)
1c009ec2:	49f6                	lw	s3,92(sp)
1c009ec4:	018ede93          	srli	t4,t4,0x18
1c009ec8:	0149e9b3          	or	s3,s3,s4
1c009ecc:	da4e                	sw	s3,52(sp)
1c009ece:	5a26                	lw	s4,104(sp)
1c009ed0:	5996                	lw	s3,100(sp)
1c009ed2:	018e5e13          	srli	t3,t3,0x18
1c009ed6:	0149e9b3          	or	s3,s3,s4
1c009eda:	dc4e                	sw	s3,56(sp)
1c009edc:	5a46                	lw	s4,112(sp)
1c009ede:	59b6                	lw	s3,108(sp)
1c009ee0:	01835313          	srli	t1,t1,0x18
1c009ee4:	0149e9b3          	or	s3,s3,s4
1c009ee8:	de4e                	sw	s3,60(sp)
1c009eea:	4a02                	lw	s4,0(sp)
1c009eec:	59d6                	lw	s3,116(sp)
1c009eee:	012b7b33          	and	s6,s6,s2
1c009ef2:	0149e9b3          	or	s3,s3,s4
1c009ef6:	c0ce                	sw	s3,64(sp)
1c009ef8:	5992                	lw	s3,36(sp)
1c009efa:	0124fa33          	and	s4,s1,s2
1c009efe:	0129f9b3          	and	s3,s3,s2
1c009f02:	d24e                	sw	s3,36(sp)
1c009f04:	54a2                	lw	s1,40(sp)
1c009f06:	59b2                	lw	s3,44(sp)
1c009f08:	0124f4b3          	and	s1,s1,s2
1c009f0c:	d426                	sw	s1,40(sp)
1c009f0e:	54c2                	lw	s1,48(sp)
1c009f10:	0129f9b3          	and	s3,s3,s2
1c009f14:	d64e                	sw	s3,44(sp)
1c009f16:	0124f4b3          	and	s1,s1,s2
1c009f1a:	59d2                	lw	s3,52(sp)
1c009f1c:	d826                	sw	s1,48(sp)
1c009f1e:	54e2                	lw	s1,56(sp)
1c009f20:	0129f9b3          	and	s3,s3,s2
1c009f24:	da4e                	sw	s3,52(sp)
1c009f26:	0124f4b3          	and	s1,s1,s2
1c009f2a:	59f2                	lw	s3,60(sp)
1c009f2c:	dc26                	sw	s1,56(sp)
1c009f2e:	4486                	lw	s1,64(sp)
1c009f30:	012afab3          	and	s5,s5,s2
1c009f34:	0129f9b3          	and	s3,s3,s2
1c009f38:	0183d393          	srli	t2,t2,0x18
1c009f3c:	0182d293          	srli	t0,t0,0x18
1c009f40:	018fdf93          	srli	t6,t6,0x18
1c009f44:	018f5f13          	srli	t5,t5,0x18
1c009f48:	0ee2                	slli	t4,t4,0x18
1c009f4a:	0e62                	slli	t3,t3,0x18
1c009f4c:	0362                	slli	t1,t1,0x18
1c009f4e:	de4e                	sw	s3,60(sp)
1c009f50:	012dfdb3          	and	s11,s11,s2
1c009f54:	0124f9b3          	and	s3,s1,s2
1c009f58:	012d7d33          	and	s10,s10,s2
1c009f5c:	012cfcb3          	and	s9,s9,s2
1c009f60:	012c7c33          	and	s8,s8,s2
1c009f64:	012bfbb3          	and	s7,s7,s2
1c009f68:	01db6eb3          	or	t4,s6,t4
1c009f6c:	4916                	lw	s2,68(sp)
1c009f6e:	5b32                	lw	s6,44(sp)
1c009f70:	01caee33          	or	t3,s5,t3
1c009f74:	006a6333          	or	t1,s4,t1
1c009f78:	5aa2                	lw	s5,40(sp)
1c009f7a:	5a12                	lw	s4,36(sp)
1c009f7c:	0188d893          	srli	a7,a7,0x18
1c009f80:	01885813          	srli	a6,a6,0x18
1c009f84:	8161                	srli	a0,a0,0x18
1c009f86:	03e2                	slli	t2,t2,0x18
1c009f88:	02e2                	slli	t0,t0,0x18
1c009f8a:	0fe2                	slli	t6,t6,0x18
1c009f8c:	0f62                	slli	t5,t5,0x18
1c009f8e:	007d63b3          	or	t2,s10,t2
1c009f92:	005ce2b3          	or	t0,s9,t0
1c009f96:	5d72                	lw	s10,60(sp)
1c009f98:	5ce2                	lw	s9,56(sp)
1c009f9a:	01fc6fb3          	or	t6,s8,t6
1c009f9e:	01ebef33          	or	t5,s7,t5
1c009fa2:	5c52                	lw	s8,52(sp)
1c009fa4:	5bc2                	lw	s7,48(sp)
1c009fa6:	81e1                	srli	a1,a1,0x18
1c009fa8:	8261                	srli	a2,a2,0x18
1c009faa:	82e1                	srli	a3,a3,0x18
1c009fac:	8361                	srli	a4,a4,0x18
1c009fae:	83e1                	srli	a5,a5,0x18
1c009fb0:	08e2                	slli	a7,a7,0x18
1c009fb2:	0862                	slli	a6,a6,0x18
1c009fb4:	0562                	slli	a0,a0,0x18
1c009fb6:	012de4b3          	or	s1,s11,s2
1c009fba:	05e2                	slli	a1,a1,0x18
1c009fbc:	011a6933          	or	s2,s4,a7
1c009fc0:	0662                	slli	a2,a2,0x18
1c009fc2:	010aea33          	or	s4,s5,a6
1c009fc6:	06e2                	slli	a3,a3,0x18
1c009fc8:	00ab6ab3          	or	s5,s6,a0
1c009fcc:	0762                	slli	a4,a4,0x18
1c009fce:	07e2                	slli	a5,a5,0x18
1c009fd0:	c004                	sw	s1,0(s0)
1c009fd2:	03242023          	sw	s2,32(s0)
1c009fd6:	03442223          	sw	s4,36(s0)
1c009fda:	03542423          	sw	s5,40(s0)
1c009fde:	00bbe5b3          	or	a1,s7,a1
1c009fe2:	00cc6633          	or	a2,s8,a2
1c009fe6:	00dce6b3          	or	a3,s9,a3
1c009fea:	00ed6733          	or	a4,s10,a4
1c009fee:	00f9e7b3          	or	a5,s3,a5
1c009ff2:	00742223          	sw	t2,4(s0)
1c009ff6:	00542423          	sw	t0,8(s0)
1c009ffa:	01f42623          	sw	t6,12(s0)
1c009ffe:	01e42823          	sw	t5,16(s0)
1c00a002:	01d42a23          	sw	t4,20(s0)
1c00a006:	01c42c23          	sw	t3,24(s0)
1c00a00a:	00642e23          	sw	t1,28(s0)
1c00a00e:	d44c                	sw	a1,44(s0)
1c00a010:	d810                	sw	a2,48(s0)
1c00a012:	d854                	sw	a3,52(s0)
1c00a014:	dc18                	sw	a4,56(s0)
1c00a016:	dc5c                	sw	a5,60(s0)
1c00a018:	24c12083          	lw	ra,588(sp)
1c00a01c:	24812403          	lw	s0,584(sp)
1c00a020:	24412483          	lw	s1,580(sp)
1c00a024:	24012903          	lw	s2,576(sp)
1c00a028:	23c12983          	lw	s3,572(sp)
1c00a02c:	23812a03          	lw	s4,568(sp)
1c00a030:	23412a83          	lw	s5,564(sp)
1c00a034:	23012b03          	lw	s6,560(sp)
1c00a038:	22c12b83          	lw	s7,556(sp)
1c00a03c:	22812c03          	lw	s8,552(sp)
1c00a040:	22412c83          	lw	s9,548(sp)
1c00a044:	22012d03          	lw	s10,544(sp)
1c00a048:	21c12d83          	lw	s11,540(sp)
1c00a04c:	25010113          	addi	sp,sp,592
1c00a050:	8082                	ret
1c00a052:	4781                	li	a5,0
1c00a054:	fbeff06f          	j	1c009812 <sha3_512+0x10c>

1c00a058 <PQCLEAN_KYBER512_CLEAN_indcpa_enc>:
1c00a058:	737d                	lui	t1,0xfffff
1c00a05a:	81010113          	addi	sp,sp,-2032
1c00a05e:	98030313          	addi	t1,t1,-1664 # ffffe980 <pulp__FC+0xffffe981>
1c00a062:	7e112623          	sw	ra,2028(sp)
1c00a066:	7e812423          	sw	s0,2024(sp)
1c00a06a:	7e912223          	sw	s1,2020(sp)
1c00a06e:	7f212023          	sw	s2,2016(sp)
1c00a072:	7d312e23          	sw	s3,2012(sp)
1c00a076:	7d412c23          	sw	s4,2008(sp)
1c00a07a:	7d512a23          	sw	s5,2004(sp)
1c00a07e:	7d612823          	sw	s6,2000(sp)
1c00a082:	7d712623          	sw	s7,1996(sp)
1c00a086:	7d912223          	sw	s9,1988(sp)
1c00a08a:	7da12023          	sw	s10,1984(sp)
1c00a08e:	7d812423          	sw	s8,1992(sp)
1c00a092:	7bb12e23          	sw	s11,1980(sp)
1c00a096:	6789                	lui	a5,0x2
1c00a098:	911a                	add	sp,sp,t1
1c00a09a:	c62a                	sw	a0,12(sp)
1c00a09c:	e3078793          	addi	a5,a5,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00a0a0:	757d                	lui	a0,0xfffff
1c00a0a2:	978a                	add	a5,a5,sp
1c00a0a4:	c0050513          	addi	a0,a0,-1024 # ffffec00 <pulp__FC+0xffffec01>
1c00a0a8:	84ae                	mv	s1,a1
1c00a0aa:	953e                	add	a0,a0,a5
1c00a0ac:	85b2                	mv	a1,a2
1c00a0ae:	8432                	mv	s0,a2
1c00a0b0:	c436                	sw	a3,8(sp)
1c00a0b2:	221000ef          	jal	ra,1c00aad2 <PQCLEAN_KYBER512_CLEAN_polyvec_frombytes>
1c00a0b6:	6e89                	lui	t4,0x2
1c00a0b8:	7979                	lui	s2,0xffffe
1c00a0ba:	e30e8e93          	addi	t4,t4,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00a0be:	31c42783          	lw	a5,796(s0)
1c00a0c2:	30042e03          	lw	t3,768(s0)
1c00a0c6:	30442303          	lw	t1,772(s0)
1c00a0ca:	30842883          	lw	a7,776(s0)
1c00a0ce:	30c42803          	lw	a6,780(s0)
1c00a0d2:	31042603          	lw	a2,784(s0)
1c00a0d6:	31442683          	lw	a3,788(s0)
1c00a0da:	31842703          	lw	a4,792(s0)
1c00a0de:	9e8a                	add	t4,t4,sp
1c00a0e0:	40090513          	addi	a0,s2,1024 # ffffe400 <pulp__FC+0xffffe401>
1c00a0e4:	85a6                	mv	a1,s1
1c00a0e6:	9576                	add	a0,a0,t4
1c00a0e8:	d63e                	sw	a5,44(sp)
1c00a0ea:	c872                	sw	t3,16(sp)
1c00a0ec:	ca1a                	sw	t1,20(sp)
1c00a0ee:	cc46                	sw	a7,24(sp)
1c00a0f0:	ce42                	sw	a6,28(sp)
1c00a0f2:	d032                	sw	a2,32(sp)
1c00a0f4:	d236                	sw	a3,36(sp)
1c00a0f6:	d43a                	sw	a4,40(sp)
1c00a0f8:	74c000ef          	jal	ra,1c00a844 <PQCLEAN_KYBER512_CLEAN_poly_frommsg>
1c00a0fc:	6789                	lui	a5,0x2
1c00a0fe:	79fd                	lui	s3,0xfffff
1c00a100:	e3078793          	addi	a5,a5,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00a104:	6e85                	lui	t4,0x1
1c00a106:	978a                	add	a5,a5,sp
1c00a108:	4b01                	li	s6,0
1c00a10a:	40098493          	addi	s1,s3,1024 # fffff400 <pulp__FC+0xfffff401>
1c00a10e:	630e8e93          	addi	t4,t4,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00a112:	6d05                	lui	s10,0x1
1c00a114:	1e090913          	addi	s2,s2,480
1c00a118:	94be                	add	s1,s1,a5
1c00a11a:	00ab1413          	slli	s0,s6,0xa
1c00a11e:	9e8a                	add	t4,t4,sp
1c00a120:	01278ab3          	add	s5,a5,s2
1c00a124:	fffd0c93          	addi	s9,s10,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00a128:	1f848a13          	addi	s4,s1,504 # ff0101f8 <pulp__FC+0xff0101f9>
1c00a12c:	d00d0d13          	addi	s10,s10,-768
1c00a130:	0ffb7b93          	andi	s7,s6,255
1c00a134:	9476                	add	s0,s0,t4
1c00a136:	4901                	li	s2,0
1c00a138:	6505                	lui	a0,0x1
1c00a13a:	e3050513          	addi	a0,a0,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00a13e:	86ca                	mv	a3,s2
1c00a140:	85d6                	mv	a1,s5
1c00a142:	950a                	add	a0,a0,sp
1c00a144:	865e                	mv	a2,s7
1c00a146:	523000ef          	jal	ra,1c00ae68 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>
1c00a14a:	6605                	lui	a2,0x1
1c00a14c:	e3060613          	addi	a2,a2,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00a150:	8526                	mv	a0,s1
1c00a152:	960a                	add	a2,a2,sp
1c00a154:	458d                	li	a1,3
1c00a156:	8c4ff0ef          	jal	ra,1c00921a <shake128_squeezeblocks>
1c00a15a:	4d81                	li	s11,0
1c00a15c:	8726                	mv	a4,s1
1c00a15e:	10000513          	li	a0,256
1c00a162:	00174603          	lbu	a2,1(a4)
1c00a166:	00074683          	lbu	a3,0(a4)
1c00a16a:	00861793          	slli	a5,a2,0x8
1c00a16e:	8fd5                	or	a5,a5,a3
1c00a170:	0197f7b3          	and	a5,a5,s9
1c00a174:	00274683          	lbu	a3,2(a4)
1c00a178:	04fd6263          	bltu	s10,a5,1c00a1bc <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x164>
1c00a17c:	001d9593          	slli	a1,s11,0x1
1c00a180:	95a2                	add	a1,a1,s0
1c00a182:	0d85                	addi	s11,s11,1
1c00a184:	00f59023          	sh	a5,0(a1)
1c00a188:	20ad9f63          	bne	s11,a0,1c00a3a6 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x34e>
1c00a18c:	6505                	lui	a0,0x1
1c00a18e:	e3050513          	addi	a0,a0,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00a192:	950a                	add	a0,a0,sp
1c00a194:	946ff0ef          	jal	ra,1c0092da <shake128_ctx_release>
1c00a198:	20040413          	addi	s0,s0,512
1c00a19c:	0c090463          	beqz	s2,1c00a264 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x20c>
1c00a1a0:	0d2b0463          	beq	s6,s2,1c00a268 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x210>
1c00a1a4:	6e85                	lui	t4,0x1
1c00a1a6:	4b05                	li	s6,1
1c00a1a8:	630e8e93          	addi	t4,t4,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00a1ac:	00ab1413          	slli	s0,s6,0xa
1c00a1b0:	9e8a                	add	t4,t4,sp
1c00a1b2:	0ffb7b93          	andi	s7,s6,255
1c00a1b6:	9476                	add	s0,s0,t4
1c00a1b8:	4901                	li	s2,0
1c00a1ba:	bfbd                	j	1c00a138 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0xe0>
1c00a1bc:	8211                	srli	a2,a2,0x4
1c00a1be:	0692                	slli	a3,a3,0x4
1c00a1c0:	8ed1                	or	a3,a3,a2
1c00a1c2:	00dd4863          	blt	s10,a3,1c00a1d2 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x17a>
1c00a1c6:	001d9793          	slli	a5,s11,0x1
1c00a1ca:	97a2                	add	a5,a5,s0
1c00a1cc:	00d79023          	sh	a3,0(a5)
1c00a1d0:	0d85                	addi	s11,s11,1
1c00a1d2:	faad8de3          	beq	s11,a0,1c00a18c <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x134>
1c00a1d6:	070d                	addi	a4,a4,3
1c00a1d8:	f94715e3          	bne	a4,s4,1c00a162 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x10a>
1c00a1dc:	0a848c13          	addi	s8,s1,168
1c00a1e0:	a031                	j	1c00a1ec <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x194>
1c00a1e2:	9dae                	add	s11,s11,a1
1c00a1e4:	0ff00793          	li	a5,255
1c00a1e8:	fbb7e2e3          	bltu	a5,s11,1c00a18c <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x134>
1c00a1ec:	6605                	lui	a2,0x1
1c00a1ee:	e3060613          	addi	a2,a2,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00a1f2:	4585                	li	a1,1
1c00a1f4:	960a                	add	a2,a2,sp
1c00a1f6:	8526                	mv	a0,s1
1c00a1f8:	822ff0ef          	jal	ra,1c00921a <shake128_squeezeblocks>
1c00a1fc:	001d9313          	slli	t1,s11,0x1
1c00a200:	10000e13          	li	t3,256
1c00a204:	9322                	add	t1,t1,s0
1c00a206:	41be0e33          	sub	t3,t3,s11
1c00a20a:	86a6                	mv	a3,s1
1c00a20c:	4581                	li	a1,0
1c00a20e:	00159793          	slli	a5,a1,0x1
1c00a212:	00f30533          	add	a0,t1,a5
1c00a216:	fcdc06e3          	beq	s8,a3,1c00a1e2 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x18a>
1c00a21a:	0016c703          	lbu	a4,1(a3)
1c00a21e:	0006c603          	lbu	a2,0(a3)
1c00a222:	00871793          	slli	a5,a4,0x8
1c00a226:	8fd1                	or	a5,a5,a2
1c00a228:	0197f7b3          	and	a5,a5,s9
1c00a22c:	00475613          	srli	a2,a4,0x4
1c00a230:	0026c703          	lbu	a4,2(a3)
1c00a234:	00fd6563          	bltu	s10,a5,1c00a23e <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x1e6>
1c00a238:	00f51023          	sh	a5,0(a0)
1c00a23c:	0585                	addi	a1,a1,1
1c00a23e:	00471793          	slli	a5,a4,0x4
1c00a242:	8fd1                	or	a5,a5,a2
1c00a244:	f9c5ffe3          	bleu	t3,a1,1c00a1e2 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x18a>
1c00a248:	00159713          	slli	a4,a1,0x1
1c00a24c:	971a                	add	a4,a4,t1
1c00a24e:	00158613          	addi	a2,a1,1
1c00a252:	00fd4763          	blt	s10,a5,1c00a260 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x208>
1c00a256:	00f71023          	sh	a5,0(a4)
1c00a25a:	85b2                	mv	a1,a2
1c00a25c:	f9c673e3          	bleu	t3,a2,1c00a1e2 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x18a>
1c00a260:	068d                	addi	a3,a3,3
1c00a262:	b775                	j	1c00a20e <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x1b6>
1c00a264:	4905                	li	s2,1
1c00a266:	bdc9                	j	1c00a138 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0xe0>
1c00a268:	6789                	lui	a5,0x2
1c00a26a:	e3078793          	addi	a5,a5,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00a26e:	978a                	add	a5,a5,sp
1c00a270:	80098913          	addi	s2,s3,-2048
1c00a274:	993e                	add	s2,s2,a5
1c00a276:	45a2                	lw	a1,8(sp)
1c00a278:	854a                	mv	a0,s2
1c00a27a:	4601                	li	a2,0
1c00a27c:	2da9                	jal	1c00a8d6 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c00a27e:	45a2                	lw	a1,8(sp)
1c00a280:	20090513          	addi	a0,s2,512
1c00a284:	4605                	li	a2,1
1c00a286:	2d81                	jal	1c00a8d6 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c00a288:	6505                	lui	a0,0x1
1c00a28a:	45a2                	lw	a1,8(sp)
1c00a28c:	e3050513          	addi	a0,a0,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00a290:	950a                	add	a0,a0,sp
1c00a292:	4609                	li	a2,2
1c00a294:	259d                	jal	1c00a8fa <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00a296:	6e85                	lui	t4,0x1
1c00a298:	e30e8e93          	addi	t4,t4,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00a29c:	9e8a                	add	t4,t4,sp
1c00a29e:	45a2                	lw	a1,8(sp)
1c00a2a0:	200e8513          	addi	a0,t4,512
1c00a2a4:	460d                	li	a2,3
1c00a2a6:	2d91                	jal	1c00a8fa <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00a2a8:	6789                	lui	a5,0x2
1c00a2aa:	7a79                	lui	s4,0xffffe
1c00a2ac:	e3078793          	addi	a5,a5,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00a2b0:	978a                	add	a5,a5,sp
1c00a2b2:	600a0a93          	addi	s5,s4,1536 # ffffe600 <pulp__FC+0xffffe601>
1c00a2b6:	9abe                	add	s5,s5,a5
1c00a2b8:	45a2                	lw	a1,8(sp)
1c00a2ba:	4611                	li	a2,4
1c00a2bc:	8556                	mv	a0,s5
1c00a2be:	2d35                	jal	1c00a8fa <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00a2c0:	854a                	mv	a0,s2
1c00a2c2:	031000ef          	jal	ra,1c00aaf2 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>
1c00a2c6:	6e89                	lui	t4,0x2
1c00a2c8:	e30e8e93          	addi	t4,t4,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00a2cc:	9e8a                	add	t4,t4,sp
1c00a2ce:	40098493          	addi	s1,s3,1024
1c00a2d2:	6585                	lui	a1,0x1
1c00a2d4:	94f6                	add	s1,s1,t4
1c00a2d6:	63058593          	addi	a1,a1,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00a2da:	958a                	add	a1,a1,sp
1c00a2dc:	8526                	mv	a0,s1
1c00a2de:	864a                	mv	a2,s2
1c00a2e0:	03f000ef          	jal	ra,1c00ab1e <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00a2e4:	6789                	lui	a5,0x2
1c00a2e6:	a3078793          	addi	a5,a5,-1488 # 1a30 <__CTOR_LIST__-0x1bffe5d4>
1c00a2ea:	00f105b3          	add	a1,sp,a5
1c00a2ee:	864a                	mv	a2,s2
1c00a2f0:	20048513          	addi	a0,s1,512
1c00a2f4:	02b000ef          	jal	ra,1c00ab1e <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00a2f8:	6e89                	lui	t4,0x2
1c00a2fa:	e30e8e93          	addi	t4,t4,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00a2fe:	9e8a                	add	t4,t4,sp
1c00a300:	200a0413          	addi	s0,s4,512
1c00a304:	9476                	add	s0,s0,t4
1c00a306:	c0098593          	addi	a1,s3,-1024
1c00a30a:	95f6                	add	a1,a1,t4
1c00a30c:	864a                	mv	a2,s2
1c00a30e:	8522                	mv	a0,s0
1c00a310:	00f000ef          	jal	ra,1c00ab1e <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00a314:	8526                	mv	a0,s1
1c00a316:	7f2000ef          	jal	ra,1c00ab08 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont>
1c00a31a:	8522                	mv	a0,s0
1c00a31c:	2535                	jal	1c00a948 <PQCLEAN_KYBER512_CLEAN_poly_invntt_tomont>
1c00a31e:	6605                	lui	a2,0x1
1c00a320:	e3060613          	addi	a2,a2,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00a324:	960a                	add	a2,a2,sp
1c00a326:	85a6                	mv	a1,s1
1c00a328:	8526                	mv	a0,s1
1c00a32a:	055000ef          	jal	ra,1c00ab7e <PQCLEAN_KYBER512_CLEAN_polyvec_add>
1c00a32e:	8656                	mv	a2,s5
1c00a330:	85a2                	mv	a1,s0
1c00a332:	8522                	mv	a0,s0
1c00a334:	2575                	jal	1c00a9e0 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00a336:	6789                	lui	a5,0x2
1c00a338:	e3078793          	addi	a5,a5,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00a33c:	978a                	add	a5,a5,sp
1c00a33e:	400a0613          	addi	a2,s4,1024
1c00a342:	963e                	add	a2,a2,a5
1c00a344:	85a2                	mv	a1,s0
1c00a346:	8522                	mv	a0,s0
1c00a348:	2d61                	jal	1c00a9e0 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00a34a:	8526                	mv	a0,s1
1c00a34c:	01d000ef          	jal	ra,1c00ab68 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>
1c00a350:	8522                	mv	a0,s0
1c00a352:	259d                	jal	1c00a9b8 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00a354:	4532                	lw	a0,12(sp)
1c00a356:	85a6                	mv	a1,s1
1c00a358:	255d                	jal	1c00a9fe <PQCLEAN_KYBER512_CLEAN_polyvec_compress>
1c00a35a:	4eb2                	lw	t4,12(sp)
1c00a35c:	85a2                	mv	a1,s0
1c00a35e:	280e8513          	addi	a0,t4,640
1c00a362:	2e3d                	jal	1c00a6a0 <PQCLEAN_KYBER512_CLEAN_poly_compress>
1c00a364:	6305                	lui	t1,0x1
1c00a366:	68030313          	addi	t1,t1,1664 # 1680 <__CTOR_LIST__-0x1bffe984>
1c00a36a:	911a                	add	sp,sp,t1
1c00a36c:	7ec12083          	lw	ra,2028(sp)
1c00a370:	7e812403          	lw	s0,2024(sp)
1c00a374:	7e412483          	lw	s1,2020(sp)
1c00a378:	7e012903          	lw	s2,2016(sp)
1c00a37c:	7dc12983          	lw	s3,2012(sp)
1c00a380:	7d812a03          	lw	s4,2008(sp)
1c00a384:	7d412a83          	lw	s5,2004(sp)
1c00a388:	7d012b03          	lw	s6,2000(sp)
1c00a38c:	7cc12b83          	lw	s7,1996(sp)
1c00a390:	7c812c03          	lw	s8,1992(sp)
1c00a394:	7c412c83          	lw	s9,1988(sp)
1c00a398:	7c012d03          	lw	s10,1984(sp)
1c00a39c:	7bc12d83          	lw	s11,1980(sp)
1c00a3a0:	7f010113          	addi	sp,sp,2032
1c00a3a4:	8082                	ret
1c00a3a6:	00469793          	slli	a5,a3,0x4
1c00a3aa:	00465693          	srli	a3,a2,0x4
1c00a3ae:	8edd                	or	a3,a3,a5
1c00a3b0:	e0dd5be3          	ble	a3,s10,1c00a1c6 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x16e>
1c00a3b4:	b50d                	j	1c00a1d6 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x17e>

1c00a3b6 <PQCLEAN_KYBER512_CLEAN_crypto_kem_enc>:
1c00a3b6:	7175                	addi	sp,sp,-144
1c00a3b8:	c522                	sw	s0,136(sp)
1c00a3ba:	c14a                	sw	s2,128(sp)
1c00a3bc:	842a                	mv	s0,a0
1c00a3be:	892e                	mv	s2,a1
1c00a3c0:	850a                	mv	a0,sp
1c00a3c2:	02000593          	li	a1,32
1c00a3c6:	c706                	sw	ra,140(sp)
1c00a3c8:	c326                	sw	s1,132(sp)
1c00a3ca:	84b2                	mv	s1,a2
1c00a3cc:	7dc000ef          	jal	ra,1c00aba8 <randombytes>
1c00a3d0:	858a                	mv	a1,sp
1c00a3d2:	850a                	mv	a0,sp
1c00a3d4:	02000613          	li	a2,32
1c00a3d8:	946ff0ef          	jal	ra,1c00951e <sha3_256>
1c00a3dc:	85a6                	mv	a1,s1
1c00a3de:	1008                	addi	a0,sp,32
1c00a3e0:	32000613          	li	a2,800
1c00a3e4:	93aff0ef          	jal	ra,1c00951e <sha3_256>
1c00a3e8:	858a                	mv	a1,sp
1c00a3ea:	0088                	addi	a0,sp,64
1c00a3ec:	04000613          	li	a2,64
1c00a3f0:	b16ff0ef          	jal	ra,1c009706 <sha3_512>
1c00a3f4:	1094                	addi	a3,sp,96
1c00a3f6:	8626                	mv	a2,s1
1c00a3f8:	858a                	mv	a1,sp
1c00a3fa:	8522                	mv	a0,s0
1c00a3fc:	39b1                	jal	1c00a058 <PQCLEAN_KYBER512_CLEAN_indcpa_enc>
1c00a3fe:	85a2                	mv	a1,s0
1c00a400:	1088                	addi	a0,sp,96
1c00a402:	30000613          	li	a2,768
1c00a406:	918ff0ef          	jal	ra,1c00951e <sha3_256>
1c00a40a:	854a                	mv	a0,s2
1c00a40c:	0090                	addi	a2,sp,64
1c00a40e:	04000693          	li	a3,64
1c00a412:	02000593          	li	a1,32
1c00a416:	ecffe0ef          	jal	ra,1c0092e4 <shake256>
1c00a41a:	40ba                	lw	ra,140(sp)
1c00a41c:	442a                	lw	s0,136(sp)
1c00a41e:	449a                	lw	s1,132(sp)
1c00a420:	490a                	lw	s2,128(sp)
1c00a422:	4501                	li	a0,0
1c00a424:	6149                	addi	sp,sp,144
1c00a426:	8082                	ret

1c00a428 <PQCLEAN_KYBER512_CLEAN_ntt>:
1c00a428:	7139                	addi	sp,sp,-64
1c00a42a:	da26                	sw	s1,52(sp)
1c00a42c:	d256                	sw	s5,36(sp)
1c00a42e:	d05a                	sw	s6,32(sp)
1c00a430:	ce5e                	sw	s7,28(sp)
1c00a432:	cc62                	sw	s8,24(sp)
1c00a434:	ca66                	sw	s9,20(sp)
1c00a436:	de06                	sw	ra,60(sp)
1c00a438:	dc22                	sw	s0,56(sp)
1c00a43a:	d84a                	sw	s2,48(sp)
1c00a43c:	d64e                	sw	s3,44(sp)
1c00a43e:	d452                	sw	s4,40(sp)
1c00a440:	c86a                	sw	s10,16(sp)
1c00a442:	c66e                	sw	s11,12(sp)
1c00a444:	8b2a                	mv	s6,a0
1c00a446:	4c9d                	li	s9,7
1c00a448:	d0a00493          	li	s1,-758
1c00a44c:	4b85                	li	s7,1
1c00a44e:	08000a93          	li	s5,128
1c00a452:	0ff00c13          	li	s8,255
1c00a456:	001b8993          	addi	s3,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00a45a:	1c0007b7          	lui	a5,0x1c000
1c00a45e:	4401                	li	s0,0
1c00a460:	00199a13          	slli	s4,s3,0x1
1c00a464:	46c78793          	addi	a5,a5,1132 # 1c00046c <PQCLEAN_KYBER512_CLEAN_zetas>
1c00a468:	008a8933          	add	s2,s5,s0
1c00a46c:	9a3e                	add	s4,s4,a5
1c00a46e:	8bce                	mv	s7,s3
1c00a470:	05247c63          	bleu	s2,s0,1c00a4c8 <PQCLEAN_KYBER512_CLEAN_ntt+0xa0>
1c00a474:	00191793          	slli	a5,s2,0x1
1c00a478:	00fb0d33          	add	s10,s6,a5
1c00a47c:	0406                	slli	s0,s0,0x1
1c00a47e:	945a                	add	s0,s0,s6
1c00a480:	8dea                	mv	s11,s10
1c00a482:	000d1503          	lh	a0,0(s10)
1c00a486:	0409                	addi	s0,s0,2
1c00a488:	02950533          	mul	a0,a0,s1
1c00a48c:	199000ef          	jal	ra,1c00ae24 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a490:	ffe45703          	lhu	a4,-2(s0)
1c00a494:	0542                	slli	a0,a0,0x10
1c00a496:	8141                	srli	a0,a0,0x10
1c00a498:	8f09                	sub	a4,a4,a0
1c00a49a:	00ed1023          	sh	a4,0(s10)
1c00a49e:	ffe45703          	lhu	a4,-2(s0)
1c00a4a2:	0d09                	addi	s10,s10,2
1c00a4a4:	953a                	add	a0,a0,a4
1c00a4a6:	fea41f23          	sh	a0,-2(s0)
1c00a4aa:	fc8d9ce3          	bne	s11,s0,1c00a482 <PQCLEAN_KYBER512_CLEAN_ntt+0x5a>
1c00a4ae:	01590433          	add	s0,s2,s5
1c00a4b2:	008c6d63          	bltu	s8,s0,1c00a4cc <PQCLEAN_KYBER512_CLEAN_ntt+0xa4>
1c00a4b6:	0985                	addi	s3,s3,1
1c00a4b8:	008a8933          	add	s2,s5,s0
1c00a4bc:	000a1483          	lh	s1,0(s4)
1c00a4c0:	8bce                	mv	s7,s3
1c00a4c2:	0a09                	addi	s4,s4,2
1c00a4c4:	fb2468e3          	bltu	s0,s2,1c00a474 <PQCLEAN_KYBER512_CLEAN_ntt+0x4c>
1c00a4c8:	844a                	mv	s0,s2
1c00a4ca:	b7f5                	j	1c00a4b6 <PQCLEAN_KYBER512_CLEAN_ntt+0x8e>
1c00a4cc:	1cfd                	addi	s9,s9,-1
1c00a4ce:	001ada93          	srli	s5,s5,0x1
1c00a4d2:	000c8b63          	beqz	s9,1c00a4e8 <PQCLEAN_KYBER512_CLEAN_ntt+0xc0>
1c00a4d6:	1c0007b7          	lui	a5,0x1c000
1c00a4da:	0986                	slli	s3,s3,0x1
1c00a4dc:	46c78793          	addi	a5,a5,1132 # 1c00046c <PQCLEAN_KYBER512_CLEAN_zetas>
1c00a4e0:	99be                	add	s3,s3,a5
1c00a4e2:	00099483          	lh	s1,0(s3)
1c00a4e6:	bf85                	j	1c00a456 <PQCLEAN_KYBER512_CLEAN_ntt+0x2e>
1c00a4e8:	50f2                	lw	ra,60(sp)
1c00a4ea:	5462                	lw	s0,56(sp)
1c00a4ec:	54d2                	lw	s1,52(sp)
1c00a4ee:	5942                	lw	s2,48(sp)
1c00a4f0:	59b2                	lw	s3,44(sp)
1c00a4f2:	5a22                	lw	s4,40(sp)
1c00a4f4:	5a92                	lw	s5,36(sp)
1c00a4f6:	5b02                	lw	s6,32(sp)
1c00a4f8:	4bf2                	lw	s7,28(sp)
1c00a4fa:	4c62                	lw	s8,24(sp)
1c00a4fc:	4cd2                	lw	s9,20(sp)
1c00a4fe:	4d42                	lw	s10,16(sp)
1c00a500:	4db2                	lw	s11,12(sp)
1c00a502:	6121                	addi	sp,sp,64
1c00a504:	8082                	ret

1c00a506 <PQCLEAN_KYBER512_CLEAN_invntt>:
1c00a506:	7139                	addi	sp,sp,-64
1c00a508:	dc22                	sw	s0,56(sp)
1c00a50a:	da26                	sw	s1,52(sp)
1c00a50c:	d256                	sw	s5,36(sp)
1c00a50e:	d05a                	sw	s6,32(sp)
1c00a510:	ce5e                	sw	s7,28(sp)
1c00a512:	cc62                	sw	s8,24(sp)
1c00a514:	de06                	sw	ra,60(sp)
1c00a516:	d84a                	sw	s2,48(sp)
1c00a518:	d64e                	sw	s3,44(sp)
1c00a51a:	d452                	sw	s4,40(sp)
1c00a51c:	ca66                	sw	s9,20(sp)
1c00a51e:	c86a                	sw	s10,16(sp)
1c00a520:	c66e                	sw	s11,12(sp)
1c00a522:	842a                	mv	s0,a0
1c00a524:	4c1d                	li	s8,7
1c00a526:	65c00493          	li	s1,1628
1c00a52a:	07f00a93          	li	s5,127
1c00a52e:	4b09                	li	s6,2
1c00a530:	0ff00b93          	li	s7,255
1c00a534:	800007b7          	lui	a5,0x80000
1c00a538:	fff7c793          	not	a5,a5
1c00a53c:	00fa8a33          	add	s4,s5,a5
1c00a540:	1c000737          	lui	a4,0x1c000
1c00a544:	4781                	li	a5,0
1c00a546:	0a06                	slli	s4,s4,0x1
1c00a548:	46c70713          	addi	a4,a4,1132 # 1c00046c <PQCLEAN_KYBER512_CLEAN_zetas>
1c00a54c:	016789b3          	add	s3,a5,s6
1c00a550:	9a3a                	add	s4,s4,a4
1c00a552:	1afd                	addi	s5,s5,-1
1c00a554:	0737f263          	bleu	s3,a5,1c00a5b8 <PQCLEAN_KYBER512_CLEAN_invntt+0xb2>
1c00a558:	00199d93          	slli	s11,s3,0x1
1c00a55c:	0786                	slli	a5,a5,0x1
1c00a55e:	9da2                	add	s11,s11,s0
1c00a560:	00f40d33          	add	s10,s0,a5
1c00a564:	896e                	mv	s2,s11
1c00a566:	000d5c83          	lhu	s9,0(s10)
1c00a56a:	000dd503          	lhu	a0,0(s11)
1c00a56e:	0d09                	addi	s10,s10,2
1c00a570:	9566                	add	a0,a0,s9
1c00a572:	0542                	slli	a0,a0,0x10
1c00a574:	8541                	srai	a0,a0,0x10
1c00a576:	0cf000ef          	jal	ra,1c00ae44 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>
1c00a57a:	fead1f23          	sh	a0,-2(s10)
1c00a57e:	000dd503          	lhu	a0,0(s11)
1c00a582:	0d89                	addi	s11,s11,2
1c00a584:	41950533          	sub	a0,a0,s9
1c00a588:	0542                	slli	a0,a0,0x10
1c00a58a:	8541                	srai	a0,a0,0x10
1c00a58c:	fead9f23          	sh	a0,-2(s11)
1c00a590:	02950533          	mul	a0,a0,s1
1c00a594:	091000ef          	jal	ra,1c00ae24 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a598:	fead9f23          	sh	a0,-2(s11)
1c00a59c:	fda915e3          	bne	s2,s10,1c00a566 <PQCLEAN_KYBER512_CLEAN_invntt+0x60>
1c00a5a0:	016987b3          	add	a5,s3,s6
1c00a5a4:	00fbed63          	bltu	s7,a5,1c00a5be <PQCLEAN_KYBER512_CLEAN_invntt+0xb8>
1c00a5a8:	016789b3          	add	s3,a5,s6
1c00a5ac:	000a1483          	lh	s1,0(s4)
1c00a5b0:	1afd                	addi	s5,s5,-1
1c00a5b2:	1a79                	addi	s4,s4,-2
1c00a5b4:	fb37e2e3          	bltu	a5,s3,1c00a558 <PQCLEAN_KYBER512_CLEAN_invntt+0x52>
1c00a5b8:	87ce                	mv	a5,s3
1c00a5ba:	fefbf7e3          	bleu	a5,s7,1c00a5a8 <PQCLEAN_KYBER512_CLEAN_invntt+0xa2>
1c00a5be:	1c7d                	addi	s8,s8,-1
1c00a5c0:	0b06                	slli	s6,s6,0x1
1c00a5c2:	000c0c63          	beqz	s8,1c00a5da <PQCLEAN_KYBER512_CLEAN_invntt+0xd4>
1c00a5c6:	1c000737          	lui	a4,0x1c000
1c00a5ca:	001a9793          	slli	a5,s5,0x1
1c00a5ce:	46c70713          	addi	a4,a4,1132 # 1c00046c <PQCLEAN_KYBER512_CLEAN_zetas>
1c00a5d2:	97ba                	add	a5,a5,a4
1c00a5d4:	00079483          	lh	s1,0(a5) # 80000000 <pulp__FC+0x80000001>
1c00a5d8:	bfb1                	j	1c00a534 <PQCLEAN_KYBER512_CLEAN_invntt+0x2e>
1c00a5da:	20040913          	addi	s2,s0,512
1c00a5de:	5a100493          	li	s1,1441
1c00a5e2:	00041503          	lh	a0,0(s0)
1c00a5e6:	0409                	addi	s0,s0,2
1c00a5e8:	02950533          	mul	a0,a0,s1
1c00a5ec:	039000ef          	jal	ra,1c00ae24 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a5f0:	fea41f23          	sh	a0,-2(s0)
1c00a5f4:	fe8917e3          	bne	s2,s0,1c00a5e2 <PQCLEAN_KYBER512_CLEAN_invntt+0xdc>
1c00a5f8:	50f2                	lw	ra,60(sp)
1c00a5fa:	5462                	lw	s0,56(sp)
1c00a5fc:	54d2                	lw	s1,52(sp)
1c00a5fe:	5942                	lw	s2,48(sp)
1c00a600:	59b2                	lw	s3,44(sp)
1c00a602:	5a22                	lw	s4,40(sp)
1c00a604:	5a92                	lw	s5,36(sp)
1c00a606:	5b02                	lw	s6,32(sp)
1c00a608:	4bf2                	lw	s7,28(sp)
1c00a60a:	4c62                	lw	s8,24(sp)
1c00a60c:	4cd2                	lw	s9,20(sp)
1c00a60e:	4d42                	lw	s10,16(sp)
1c00a610:	4db2                	lw	s11,12(sp)
1c00a612:	6121                	addi	sp,sp,64
1c00a614:	8082                	ret

1c00a616 <PQCLEAN_KYBER512_CLEAN_basemul>:
1c00a616:	00261783          	lh	a5,2(a2)
1c00a61a:	00259703          	lh	a4,2(a1)
1c00a61e:	1101                	addi	sp,sp,-32
1c00a620:	cc22                	sw	s0,24(sp)
1c00a622:	842a                	mv	s0,a0
1c00a624:	02f70533          	mul	a0,a4,a5
1c00a628:	ce06                	sw	ra,28(sp)
1c00a62a:	ca26                	sw	s1,20(sp)
1c00a62c:	c84a                	sw	s2,16(sp)
1c00a62e:	c64e                	sw	s3,12(sp)
1c00a630:	892e                	mv	s2,a1
1c00a632:	84b2                	mv	s1,a2
1c00a634:	89b6                	mv	s3,a3
1c00a636:	7ee000ef          	jal	ra,1c00ae24 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a63a:	00a41023          	sh	a0,0(s0)
1c00a63e:	03350533          	mul	a0,a0,s3
1c00a642:	7e2000ef          	jal	ra,1c00ae24 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a646:	00a41023          	sh	a0,0(s0)
1c00a64a:	00049783          	lh	a5,0(s1)
1c00a64e:	00091503          	lh	a0,0(s2)
1c00a652:	02f50533          	mul	a0,a0,a5
1c00a656:	7ce000ef          	jal	ra,1c00ae24 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a65a:	00045783          	lhu	a5,0(s0)
1c00a65e:	953e                	add	a0,a0,a5
1c00a660:	00a41023          	sh	a0,0(s0)
1c00a664:	00249783          	lh	a5,2(s1)
1c00a668:	00091503          	lh	a0,0(s2)
1c00a66c:	02f50533          	mul	a0,a0,a5
1c00a670:	7b4000ef          	jal	ra,1c00ae24 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a674:	00a41123          	sh	a0,2(s0)
1c00a678:	00049783          	lh	a5,0(s1)
1c00a67c:	00291503          	lh	a0,2(s2)
1c00a680:	02f50533          	mul	a0,a0,a5
1c00a684:	7a0000ef          	jal	ra,1c00ae24 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a688:	00245783          	lhu	a5,2(s0)
1c00a68c:	40f2                	lw	ra,28(sp)
1c00a68e:	953e                	add	a0,a0,a5
1c00a690:	00a41123          	sh	a0,2(s0)
1c00a694:	4462                	lw	s0,24(sp)
1c00a696:	44d2                	lw	s1,20(sp)
1c00a698:	4942                	lw	s2,16(sp)
1c00a69a:	49b2                	lw	s3,12(sp)
1c00a69c:	6105                	addi	sp,sp,32
1c00a69e:	8082                	ret

1c00a6a0 <PQCLEAN_KYBER512_CLEAN_poly_compress>:
1c00a6a0:	1141                	addi	sp,sp,-16
1c00a6a2:	6685                	lui	a3,0x1
1c00a6a4:	78c1                	lui	a7,0xffff0
1c00a6a6:	ff010837          	lui	a6,0xff010
1c00a6aa:	01000637          	lui	a2,0x1000
1c00a6ae:	c622                	sw	s0,12(sp)
1c00a6b0:	c426                	sw	s1,8(sp)
1c00a6b2:	c24a                	sw	s2,4(sp)
1c00a6b4:	08050313          	addi	t1,a0,128
1c00a6b8:	d0168693          	addi	a3,a3,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a6bc:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00a6c0:	187d                	addi	a6,a6,-1
1c00a6c2:	167d                	addi	a2,a2,-1
1c00a6c4:	00259403          	lh	s0,2(a1)
1c00a6c8:	00659f03          	lh	t5,6(a1)
1c00a6cc:	00459e83          	lh	t4,4(a1)
1c00a6d0:	00059903          	lh	s2,0(a1)
1c00a6d4:	00a59783          	lh	a5,10(a1)
1c00a6d8:	40f45713          	srai	a4,s0,0xf
1c00a6dc:	40ff5f93          	srai	t6,t5,0xf
1c00a6e0:	00859e03          	lh	t3,8(a1)
1c00a6e4:	40fed293          	srai	t0,t4,0xf
1c00a6e8:	8f75                	and	a4,a4,a3
1c00a6ea:	40f95393          	srai	t2,s2,0xf
1c00a6ee:	00dfffb3          	and	t6,t6,a3
1c00a6f2:	00e59483          	lh	s1,14(a1)
1c00a6f6:	9722                	add	a4,a4,s0
1c00a6f8:	9ffa                	add	t6,t6,t5
1c00a6fa:	00d3f3b3          	and	t2,t2,a3
1c00a6fe:	40f7df13          	srai	t5,a5,0xf
1c00a702:	00d2f2b3          	and	t0,t0,a3
1c00a706:	00c59403          	lh	s0,12(a1)
1c00a70a:	92f6                	add	t0,t0,t4
1c00a70c:	0742                	slli	a4,a4,0x10
1c00a70e:	40fe5e93          	srai	t4,t3,0xf
1c00a712:	93ca                	add	t2,t2,s2
1c00a714:	0fc2                	slli	t6,t6,0x10
1c00a716:	00df7f33          	and	t5,t5,a3
1c00a71a:	9f3e                	add	t5,t5,a5
1c00a71c:	8341                	srli	a4,a4,0x10
1c00a71e:	010fdf93          	srli	t6,t6,0x10
1c00a722:	03c2                	slli	t2,t2,0x10
1c00a724:	02c2                	slli	t0,t0,0x10
1c00a726:	00defeb3          	and	t4,t4,a3
1c00a72a:	40f4d793          	srai	a5,s1,0xf
1c00a72e:	9ef2                	add	t4,t4,t3
1c00a730:	0712                	slli	a4,a4,0x4
1c00a732:	0103d393          	srli	t2,t2,0x10
1c00a736:	0f92                	slli	t6,t6,0x4
1c00a738:	0102d293          	srli	t0,t0,0x10
1c00a73c:	0f42                	slli	t5,t5,0x10
1c00a73e:	8ff5                	and	a5,a5,a3
1c00a740:	40f45e13          	srai	t3,s0,0xf
1c00a744:	68070713          	addi	a4,a4,1664
1c00a748:	0392                	slli	t2,t2,0x4
1c00a74a:	680f8f93          	addi	t6,t6,1664 # 1000680 <__CTOR_LIST__-0x1afff984>
1c00a74e:	0292                	slli	t0,t0,0x4
1c00a750:	010f5f13          	srli	t5,t5,0x10
1c00a754:	0ec2                	slli	t4,t4,0x10
1c00a756:	97a6                	add	a5,a5,s1
1c00a758:	00de7e33          	and	t3,t3,a3
1c00a75c:	02d74733          	div	a4,a4,a3
1c00a760:	68038393          	addi	t2,t2,1664
1c00a764:	02dfcfb3          	div	t6,t6,a3
1c00a768:	68028293          	addi	t0,t0,1664
1c00a76c:	0f12                	slli	t5,t5,0x4
1c00a76e:	010ede93          	srli	t4,t4,0x10
1c00a772:	07c2                	slli	a5,a5,0x10
1c00a774:	9e22                	add	t3,t3,s0
1c00a776:	02d3c3b3          	div	t2,t2,a3
1c00a77a:	02d2c2b3          	div	t0,t0,a3
1c00a77e:	680f0f13          	addi	t5,t5,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00a782:	0e92                	slli	t4,t4,0x4
1c00a784:	83c1                	srli	a5,a5,0x10
1c00a786:	0e42                	slli	t3,t3,0x10
1c00a788:	02df4f33          	div	t5,t5,a3
1c00a78c:	680e8e93          	addi	t4,t4,1664
1c00a790:	0792                	slli	a5,a5,0x4
1c00a792:	010e5e13          	srli	t3,t3,0x10
1c00a796:	8b3d                	andi	a4,a4,15
1c00a798:	00ffff93          	andi	t6,t6,15
1c00a79c:	02deceb3          	div	t4,t4,a3
1c00a7a0:	68078793          	addi	a5,a5,1664
1c00a7a4:	0e12                	slli	t3,t3,0x4
1c00a7a6:	0712                	slli	a4,a4,0x4
1c00a7a8:	00f3f393          	andi	t2,t2,15
1c00a7ac:	0f92                	slli	t6,t6,0x4
1c00a7ae:	00f2f293          	andi	t0,t0,15
1c00a7b2:	02d7c7b3          	div	a5,a5,a3
1c00a7b6:	680e0e13          	addi	t3,t3,1664
1c00a7ba:	00776733          	or	a4,a4,t2
1c00a7be:	005fe2b3          	or	t0,t6,t0
1c00a7c2:	00ff7f13          	andi	t5,t5,15
1c00a7c6:	02de4e33          	div	t3,t3,a3
1c00a7ca:	02a2                	slli	t0,t0,0x8
1c00a7cc:	01177733          	and	a4,a4,a7
1c00a7d0:	0f12                	slli	t5,t5,0x4
1c00a7d2:	00fefe93          	andi	t4,t4,15
1c00a7d6:	00576733          	or	a4,a4,t0
1c00a7da:	01df6eb3          	or	t4,t5,t4
1c00a7de:	8bbd                	andi	a5,a5,15
1c00a7e0:	0ec2                	slli	t4,t4,0x10
1c00a7e2:	01077733          	and	a4,a4,a6
1c00a7e6:	0792                	slli	a5,a5,0x4
1c00a7e8:	00fe7e13          	andi	t3,t3,15
1c00a7ec:	01d76733          	or	a4,a4,t4
1c00a7f0:	01c7e7b3          	or	a5,a5,t3
1c00a7f4:	07e2                	slli	a5,a5,0x18
1c00a7f6:	8f71                	and	a4,a4,a2
1c00a7f8:	8fd9                	or	a5,a5,a4
1c00a7fa:	c11c                	sw	a5,0(a0)
1c00a7fc:	0511                	addi	a0,a0,4
1c00a7fe:	05c1                	addi	a1,a1,16
1c00a800:	ec6512e3          	bne	a0,t1,1c00a6c4 <PQCLEAN_KYBER512_CLEAN_poly_compress+0x24>
1c00a804:	4432                	lw	s0,12(sp)
1c00a806:	44a2                	lw	s1,8(sp)
1c00a808:	4912                	lw	s2,4(sp)
1c00a80a:	0141                	addi	sp,sp,16
1c00a80c:	8082                	ret

1c00a80e <PQCLEAN_KYBER512_CLEAN_poly_frombytes>:
1c00a80e:	6685                	lui	a3,0x1
1c00a810:	18058613          	addi	a2,a1,384
1c00a814:	16fd                	addi	a3,a3,-1
1c00a816:	0015c783          	lbu	a5,1(a1)
1c00a81a:	0005c703          	lbu	a4,0(a1)
1c00a81e:	07a2                	slli	a5,a5,0x8
1c00a820:	8fd9                	or	a5,a5,a4
1c00a822:	8ff5                	and	a5,a5,a3
1c00a824:	00f51023          	sh	a5,0(a0)
1c00a828:	0015c703          	lbu	a4,1(a1)
1c00a82c:	0025c783          	lbu	a5,2(a1)
1c00a830:	8311                	srli	a4,a4,0x4
1c00a832:	0792                	slli	a5,a5,0x4
1c00a834:	8fd9                	or	a5,a5,a4
1c00a836:	00f51123          	sh	a5,2(a0)
1c00a83a:	058d                	addi	a1,a1,3
1c00a83c:	0511                	addi	a0,a0,4
1c00a83e:	fcb61ce3          	bne	a2,a1,1c00a816 <PQCLEAN_KYBER512_CLEAN_poly_frombytes+0x8>
1c00a842:	8082                	ret

1c00a844 <PQCLEAN_KYBER512_CLEAN_poly_frommsg>:
1c00a844:	20050713          	addi	a4,a0,512
1c00a848:	0005c783          	lbu	a5,0(a1)
1c00a84c:	0541                	addi	a0,a0,16
1c00a84e:	8b85                	andi	a5,a5,1
1c00a850:	40f007b3          	neg	a5,a5
1c00a854:	6817f793          	andi	a5,a5,1665
1c00a858:	fef51823          	sh	a5,-16(a0)
1c00a85c:	0005c783          	lbu	a5,0(a1)
1c00a860:	0585                	addi	a1,a1,1
1c00a862:	07fa                	slli	a5,a5,0x1e
1c00a864:	87fd                	srai	a5,a5,0x1f
1c00a866:	6817f793          	andi	a5,a5,1665
1c00a86a:	fef51923          	sh	a5,-14(a0)
1c00a86e:	fff5c783          	lbu	a5,-1(a1)
1c00a872:	07f6                	slli	a5,a5,0x1d
1c00a874:	87fd                	srai	a5,a5,0x1f
1c00a876:	6817f793          	andi	a5,a5,1665
1c00a87a:	fef51a23          	sh	a5,-12(a0)
1c00a87e:	fff5c783          	lbu	a5,-1(a1)
1c00a882:	07f2                	slli	a5,a5,0x1c
1c00a884:	87fd                	srai	a5,a5,0x1f
1c00a886:	6817f793          	andi	a5,a5,1665
1c00a88a:	fef51b23          	sh	a5,-10(a0)
1c00a88e:	fff5c783          	lbu	a5,-1(a1)
1c00a892:	07ee                	slli	a5,a5,0x1b
1c00a894:	87fd                	srai	a5,a5,0x1f
1c00a896:	6817f793          	andi	a5,a5,1665
1c00a89a:	fef51c23          	sh	a5,-8(a0)
1c00a89e:	fff5c783          	lbu	a5,-1(a1)
1c00a8a2:	07ea                	slli	a5,a5,0x1a
1c00a8a4:	87fd                	srai	a5,a5,0x1f
1c00a8a6:	6817f793          	andi	a5,a5,1665
1c00a8aa:	fef51d23          	sh	a5,-6(a0)
1c00a8ae:	fff5c783          	lbu	a5,-1(a1)
1c00a8b2:	07e6                	slli	a5,a5,0x19
1c00a8b4:	87fd                	srai	a5,a5,0x1f
1c00a8b6:	6817f793          	andi	a5,a5,1665
1c00a8ba:	fef51e23          	sh	a5,-4(a0)
1c00a8be:	fff5c783          	lbu	a5,-1(a1)
1c00a8c2:	879d                	srai	a5,a5,0x7
1c00a8c4:	40f007b3          	neg	a5,a5
1c00a8c8:	6817f793          	andi	a5,a5,1665
1c00a8cc:	fef51f23          	sh	a5,-2(a0)
1c00a8d0:	f6e51ce3          	bne	a0,a4,1c00a848 <PQCLEAN_KYBER512_CLEAN_poly_frommsg+0x4>
1c00a8d4:	8082                	ret

1c00a8d6 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>:
1c00a8d6:	7155                	addi	sp,sp,-208
1c00a8d8:	c5a2                	sw	s0,200(sp)
1c00a8da:	86b2                	mv	a3,a2
1c00a8dc:	842a                	mv	s0,a0
1c00a8de:	862e                	mv	a2,a1
1c00a8e0:	850a                	mv	a0,sp
1c00a8e2:	0c000593          	li	a1,192
1c00a8e6:	c786                	sw	ra,204(sp)
1c00a8e8:	2b65                	jal	1c00aea0 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>
1c00a8ea:	858a                	mv	a1,sp
1c00a8ec:	8522                	mv	a0,s0
1c00a8ee:	c1efe0ef          	jal	ra,1c008d0c <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>
1c00a8f2:	40be                	lw	ra,204(sp)
1c00a8f4:	442e                	lw	s0,200(sp)
1c00a8f6:	6169                	addi	sp,sp,208
1c00a8f8:	8082                	ret

1c00a8fa <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>:
1c00a8fa:	7175                	addi	sp,sp,-144
1c00a8fc:	c522                	sw	s0,136(sp)
1c00a8fe:	86b2                	mv	a3,a2
1c00a900:	842a                	mv	s0,a0
1c00a902:	862e                	mv	a2,a1
1c00a904:	850a                	mv	a0,sp
1c00a906:	08000593          	li	a1,128
1c00a90a:	c706                	sw	ra,140(sp)
1c00a90c:	2b51                	jal	1c00aea0 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>
1c00a90e:	858a                	mv	a1,sp
1c00a910:	8522                	mv	a0,s0
1c00a912:	c8cfe0ef          	jal	ra,1c008d9e <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2>
1c00a916:	40ba                	lw	ra,140(sp)
1c00a918:	442a                	lw	s0,136(sp)
1c00a91a:	6149                	addi	sp,sp,144
1c00a91c:	8082                	ret

1c00a91e <PQCLEAN_KYBER512_CLEAN_poly_ntt>:
1c00a91e:	1141                	addi	sp,sp,-16
1c00a920:	c422                	sw	s0,8(sp)
1c00a922:	842a                	mv	s0,a0
1c00a924:	c226                	sw	s1,4(sp)
1c00a926:	c606                	sw	ra,12(sp)
1c00a928:	20040493          	addi	s1,s0,512
1c00a92c:	3cf5                	jal	1c00a428 <PQCLEAN_KYBER512_CLEAN_ntt>
1c00a92e:	00041503          	lh	a0,0(s0)
1c00a932:	0409                	addi	s0,s0,2
1c00a934:	2b01                	jal	1c00ae44 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>
1c00a936:	fea41f23          	sh	a0,-2(s0)
1c00a93a:	fe941ae3          	bne	s0,s1,1c00a92e <PQCLEAN_KYBER512_CLEAN_poly_ntt+0x10>
1c00a93e:	40b2                	lw	ra,12(sp)
1c00a940:	4422                	lw	s0,8(sp)
1c00a942:	4492                	lw	s1,4(sp)
1c00a944:	0141                	addi	sp,sp,16
1c00a946:	8082                	ret

1c00a948 <PQCLEAN_KYBER512_CLEAN_poly_invntt_tomont>:
1c00a948:	be7d                	j	1c00a506 <PQCLEAN_KYBER512_CLEAN_invntt>

1c00a94a <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>:
1c00a94a:	1101                	addi	sp,sp,-32
1c00a94c:	ca26                	sw	s1,20(sp)
1c00a94e:	c256                	sw	s5,4(sp)
1c00a950:	1c0004b7          	lui	s1,0x1c000
1c00a954:	1c000ab7          	lui	s5,0x1c000
1c00a958:	c84a                	sw	s2,16(sp)
1c00a95a:	c64e                	sw	s3,12(sp)
1c00a95c:	c452                	sw	s4,8(sp)
1c00a95e:	ce06                	sw	ra,28(sp)
1c00a960:	cc22                	sw	s0,24(sp)
1c00a962:	4ec48493          	addi	s1,s1,1260 # 1c0004ec <PQCLEAN_KYBER512_CLEAN_zetas+0x80>
1c00a966:	00450a13          	addi	s4,a0,4
1c00a96a:	00458993          	addi	s3,a1,4
1c00a96e:	00460913          	addi	s2,a2,4 # 1000004 <__CTOR_LIST__-0x1b000000>
1c00a972:	56ca8a93          	addi	s5,s5,1388 # 1c00056c <PQCLEAN_KYBER512_CLEAN_zetas+0x100>
1c00a976:	00049403          	lh	s0,0(s1)
1c00a97a:	ffc90613          	addi	a2,s2,-4
1c00a97e:	ffc98593          	addi	a1,s3,-4
1c00a982:	ffca0513          	addi	a0,s4,-4
1c00a986:	86a2                	mv	a3,s0
1c00a988:	3179                	jal	1c00a616 <PQCLEAN_KYBER512_CLEAN_basemul>
1c00a98a:	408006b3          	neg	a3,s0
1c00a98e:	06c2                	slli	a3,a3,0x10
1c00a990:	864a                	mv	a2,s2
1c00a992:	85ce                	mv	a1,s3
1c00a994:	8552                	mv	a0,s4
1c00a996:	86c1                	srai	a3,a3,0x10
1c00a998:	0489                	addi	s1,s1,2
1c00a99a:	39b5                	jal	1c00a616 <PQCLEAN_KYBER512_CLEAN_basemul>
1c00a99c:	0a21                	addi	s4,s4,8
1c00a99e:	09a1                	addi	s3,s3,8
1c00a9a0:	0921                	addi	s2,s2,8
1c00a9a2:	fc9a9ae3          	bne	s5,s1,1c00a976 <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery+0x2c>
1c00a9a6:	40f2                	lw	ra,28(sp)
1c00a9a8:	4462                	lw	s0,24(sp)
1c00a9aa:	44d2                	lw	s1,20(sp)
1c00a9ac:	4942                	lw	s2,16(sp)
1c00a9ae:	49b2                	lw	s3,12(sp)
1c00a9b0:	4a22                	lw	s4,8(sp)
1c00a9b2:	4a92                	lw	s5,4(sp)
1c00a9b4:	6105                	addi	sp,sp,32
1c00a9b6:	8082                	ret

1c00a9b8 <PQCLEAN_KYBER512_CLEAN_poly_reduce>:
1c00a9b8:	1141                	addi	sp,sp,-16
1c00a9ba:	c422                	sw	s0,8(sp)
1c00a9bc:	c226                	sw	s1,4(sp)
1c00a9be:	c606                	sw	ra,12(sp)
1c00a9c0:	842a                	mv	s0,a0
1c00a9c2:	20050493          	addi	s1,a0,512
1c00a9c6:	00041503          	lh	a0,0(s0)
1c00a9ca:	0409                	addi	s0,s0,2
1c00a9cc:	29a5                	jal	1c00ae44 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>
1c00a9ce:	fea41f23          	sh	a0,-2(s0)
1c00a9d2:	fe941ae3          	bne	s0,s1,1c00a9c6 <PQCLEAN_KYBER512_CLEAN_poly_reduce+0xe>
1c00a9d6:	40b2                	lw	ra,12(sp)
1c00a9d8:	4422                	lw	s0,8(sp)
1c00a9da:	4492                	lw	s1,4(sp)
1c00a9dc:	0141                	addi	sp,sp,16
1c00a9de:	8082                	ret

1c00a9e0 <PQCLEAN_KYBER512_CLEAN_poly_add>:
1c00a9e0:	20058693          	addi	a3,a1,512
1c00a9e4:	0005d783          	lhu	a5,0(a1)
1c00a9e8:	00065703          	lhu	a4,0(a2)
1c00a9ec:	0589                	addi	a1,a1,2
1c00a9ee:	97ba                	add	a5,a5,a4
1c00a9f0:	00f51023          	sh	a5,0(a0)
1c00a9f4:	0609                	addi	a2,a2,2
1c00a9f6:	0509                	addi	a0,a0,2
1c00a9f8:	fed596e3          	bne	a1,a3,1c00a9e4 <PQCLEAN_KYBER512_CLEAN_poly_add+0x4>
1c00a9fc:	8082                	ret

1c00a9fe <PQCLEAN_KYBER512_CLEAN_polyvec_compress>:
1c00a9fe:	6605                	lui	a2,0x1
1c00aa00:	28050313          	addi	t1,a0,640
1c00aa04:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00aa08:	14050893          	addi	a7,a0,320
1c00aa0c:	882e                	mv	a6,a1
1c00aa0e:	00081283          	lh	t0,0(a6) # ff010000 <pulp__FC+0xff010001>
1c00aa12:	00281f83          	lh	t6,2(a6)
1c00aa16:	00481f03          	lh	t5,4(a6)
1c00aa1a:	00681e83          	lh	t4,6(a6)
1c00aa1e:	40f2de13          	srai	t3,t0,0xf
1c00aa22:	40ffd713          	srai	a4,t6,0xf
1c00aa26:	40ff5793          	srai	a5,t5,0xf
1c00aa2a:	40fed693          	srai	a3,t4,0xf
1c00aa2e:	00ce7e33          	and	t3,t3,a2
1c00aa32:	8f71                	and	a4,a4,a2
1c00aa34:	8ff1                	and	a5,a5,a2
1c00aa36:	8ef1                	and	a3,a3,a2
1c00aa38:	9e16                	add	t3,t3,t0
1c00aa3a:	977e                	add	a4,a4,t6
1c00aa3c:	97fa                	add	a5,a5,t5
1c00aa3e:	96f6                	add	a3,a3,t4
1c00aa40:	0e42                	slli	t3,t3,0x10
1c00aa42:	0742                	slli	a4,a4,0x10
1c00aa44:	07c2                	slli	a5,a5,0x10
1c00aa46:	06c2                	slli	a3,a3,0x10
1c00aa48:	010e5e13          	srli	t3,t3,0x10
1c00aa4c:	8341                	srli	a4,a4,0x10
1c00aa4e:	83c1                	srli	a5,a5,0x10
1c00aa50:	82c1                	srli	a3,a3,0x10
1c00aa52:	0e2a                	slli	t3,t3,0xa
1c00aa54:	072a                	slli	a4,a4,0xa
1c00aa56:	07aa                	slli	a5,a5,0xa
1c00aa58:	06aa                	slli	a3,a3,0xa
1c00aa5a:	680e0e13          	addi	t3,t3,1664
1c00aa5e:	68070713          	addi	a4,a4,1664
1c00aa62:	68078793          	addi	a5,a5,1664
1c00aa66:	68068693          	addi	a3,a3,1664 # 1680 <__CTOR_LIST__-0x1bffe984>
1c00aa6a:	02ce5e33          	divu	t3,t3,a2
1c00aa6e:	02c75733          	divu	a4,a4,a2
1c00aa72:	02c7d7b3          	divu	a5,a5,a2
1c00aa76:	02c6d6b3          	divu	a3,a3,a2
1c00aa7a:	3ffe7e13          	andi	t3,t3,1023
1c00aa7e:	3ff77713          	andi	a4,a4,1023
1c00aa82:	3ff7f793          	andi	a5,a5,1023
1c00aa86:	3ff6f693          	andi	a3,a3,1023
1c00aa8a:	00271293          	slli	t0,a4,0x2
1c00aa8e:	00479f93          	slli	t6,a5,0x4
1c00aa92:	00669f13          	slli	t5,a3,0x6
1c00aa96:	008e5e93          	srli	t4,t3,0x8
1c00aa9a:	8319                	srli	a4,a4,0x6
1c00aa9c:	8391                	srli	a5,a5,0x4
1c00aa9e:	005eeeb3          	or	t4,t4,t0
1c00aaa2:	01f76733          	or	a4,a4,t6
1c00aaa6:	01e7e7b3          	or	a5,a5,t5
1c00aaaa:	8289                	srli	a3,a3,0x2
1c00aaac:	01c50023          	sb	t3,0(a0)
1c00aab0:	01d500a3          	sb	t4,1(a0)
1c00aab4:	00e50123          	sb	a4,2(a0)
1c00aab8:	00f501a3          	sb	a5,3(a0)
1c00aabc:	00d50223          	sb	a3,4(a0)
1c00aac0:	0515                	addi	a0,a0,5
1c00aac2:	0821                	addi	a6,a6,8
1c00aac4:	f51515e3          	bne	a0,a7,1c00aa0e <PQCLEAN_KYBER512_CLEAN_polyvec_compress+0x10>
1c00aac8:	20058593          	addi	a1,a1,512
1c00aacc:	f2a31ee3          	bne	t1,a0,1c00aa08 <PQCLEAN_KYBER512_CLEAN_polyvec_compress+0xa>
1c00aad0:	8082                	ret

1c00aad2 <PQCLEAN_KYBER512_CLEAN_polyvec_frombytes>:
1c00aad2:	1141                	addi	sp,sp,-16
1c00aad4:	c422                	sw	s0,8(sp)
1c00aad6:	c226                	sw	s1,4(sp)
1c00aad8:	c606                	sw	ra,12(sp)
1c00aada:	842a                	mv	s0,a0
1c00aadc:	84ae                	mv	s1,a1
1c00aade:	3b05                	jal	1c00a80e <PQCLEAN_KYBER512_CLEAN_poly_frombytes>
1c00aae0:	20040513          	addi	a0,s0,512
1c00aae4:	4422                	lw	s0,8(sp)
1c00aae6:	40b2                	lw	ra,12(sp)
1c00aae8:	18048593          	addi	a1,s1,384
1c00aaec:	4492                	lw	s1,4(sp)
1c00aaee:	0141                	addi	sp,sp,16
1c00aaf0:	bb39                	j	1c00a80e <PQCLEAN_KYBER512_CLEAN_poly_frombytes>

1c00aaf2 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>:
1c00aaf2:	1141                	addi	sp,sp,-16
1c00aaf4:	c422                	sw	s0,8(sp)
1c00aaf6:	c606                	sw	ra,12(sp)
1c00aaf8:	842a                	mv	s0,a0
1c00aafa:	3515                	jal	1c00a91e <PQCLEAN_KYBER512_CLEAN_poly_ntt>
1c00aafc:	20040513          	addi	a0,s0,512
1c00ab00:	4422                	lw	s0,8(sp)
1c00ab02:	40b2                	lw	ra,12(sp)
1c00ab04:	0141                	addi	sp,sp,16
1c00ab06:	bd21                	j	1c00a91e <PQCLEAN_KYBER512_CLEAN_poly_ntt>

1c00ab08 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont>:
1c00ab08:	1141                	addi	sp,sp,-16
1c00ab0a:	c422                	sw	s0,8(sp)
1c00ab0c:	c606                	sw	ra,12(sp)
1c00ab0e:	842a                	mv	s0,a0
1c00ab10:	3d25                	jal	1c00a948 <PQCLEAN_KYBER512_CLEAN_poly_invntt_tomont>
1c00ab12:	20040513          	addi	a0,s0,512
1c00ab16:	4422                	lw	s0,8(sp)
1c00ab18:	40b2                	lw	ra,12(sp)
1c00ab1a:	0141                	addi	sp,sp,16
1c00ab1c:	b535                	j	1c00a948 <PQCLEAN_KYBER512_CLEAN_poly_invntt_tomont>

1c00ab1e <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>:
1c00ab1e:	df010113          	addi	sp,sp,-528
1c00ab22:	20112623          	sw	ra,524(sp)
1c00ab26:	20812423          	sw	s0,520(sp)
1c00ab2a:	20912223          	sw	s1,516(sp)
1c00ab2e:	21212023          	sw	s2,512(sp)
1c00ab32:	842a                	mv	s0,a0
1c00ab34:	84ae                	mv	s1,a1
1c00ab36:	8932                	mv	s2,a2
1c00ab38:	3d09                	jal	1c00a94a <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c00ab3a:	20090613          	addi	a2,s2,512
1c00ab3e:	20048593          	addi	a1,s1,512
1c00ab42:	850a                	mv	a0,sp
1c00ab44:	3519                	jal	1c00a94a <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c00ab46:	860a                	mv	a2,sp
1c00ab48:	85a2                	mv	a1,s0
1c00ab4a:	8522                	mv	a0,s0
1c00ab4c:	3d51                	jal	1c00a9e0 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00ab4e:	8522                	mv	a0,s0
1c00ab50:	35a5                	jal	1c00a9b8 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00ab52:	20c12083          	lw	ra,524(sp)
1c00ab56:	20812403          	lw	s0,520(sp)
1c00ab5a:	20412483          	lw	s1,516(sp)
1c00ab5e:	20012903          	lw	s2,512(sp)
1c00ab62:	21010113          	addi	sp,sp,528
1c00ab66:	8082                	ret

1c00ab68 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>:
1c00ab68:	1141                	addi	sp,sp,-16
1c00ab6a:	c422                	sw	s0,8(sp)
1c00ab6c:	c606                	sw	ra,12(sp)
1c00ab6e:	842a                	mv	s0,a0
1c00ab70:	35a1                	jal	1c00a9b8 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00ab72:	20040513          	addi	a0,s0,512
1c00ab76:	4422                	lw	s0,8(sp)
1c00ab78:	40b2                	lw	ra,12(sp)
1c00ab7a:	0141                	addi	sp,sp,16
1c00ab7c:	bd35                	j	1c00a9b8 <PQCLEAN_KYBER512_CLEAN_poly_reduce>

1c00ab7e <PQCLEAN_KYBER512_CLEAN_polyvec_add>:
1c00ab7e:	1141                	addi	sp,sp,-16
1c00ab80:	c422                	sw	s0,8(sp)
1c00ab82:	c226                	sw	s1,4(sp)
1c00ab84:	c04a                	sw	s2,0(sp)
1c00ab86:	c606                	sw	ra,12(sp)
1c00ab88:	842a                	mv	s0,a0
1c00ab8a:	84ae                	mv	s1,a1
1c00ab8c:	8932                	mv	s2,a2
1c00ab8e:	3d89                	jal	1c00a9e0 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00ab90:	20040513          	addi	a0,s0,512
1c00ab94:	4422                	lw	s0,8(sp)
1c00ab96:	40b2                	lw	ra,12(sp)
1c00ab98:	20090613          	addi	a2,s2,512
1c00ab9c:	20048593          	addi	a1,s1,512
1c00aba0:	4902                	lw	s2,0(sp)
1c00aba2:	4492                	lw	s1,4(sp)
1c00aba4:	0141                	addi	sp,sp,16
1c00aba6:	bd2d                	j	1c00a9e0 <PQCLEAN_KYBER512_CLEAN_poly_add>

1c00aba8 <randombytes>:
1c00aba8:	26058d63          	beqz	a1,1c00ae22 <randombytes+0x27a>
1c00abac:	1c0066b7          	lui	a3,0x1c006
1c00abb0:	7139                	addi	sp,sp,-64
1c00abb2:	5d468693          	addi	a3,a3,1492 # 1c0065d4 <outleft>
1c00abb6:	da4a                	sw	s2,52(sp)
1c00abb8:	d84e                	sw	s3,48(sp)
1c00abba:	95aa                	add	a1,a1,a0
1c00abbc:	1c006737          	lui	a4,0x1c006
1c00abc0:	1c0069b7          	lui	s3,0x1c006
1c00abc4:	9e378937          	lui	s2,0x9e378
1c00abc8:	429c                	lw	a5,0(a3)
1c00abca:	d652                	sw	s4,44(sp)
1c00abcc:	d456                	sw	s5,40(sp)
1c00abce:	de22                	sw	s0,60(sp)
1c00abd0:	dc26                	sw	s1,56(sp)
1c00abd2:	d25a                	sw	s6,36(sp)
1c00abd4:	d05e                	sw	s7,32(sp)
1c00abd6:	ce62                	sw	s8,28(sp)
1c00abd8:	cc66                	sw	s9,24(sp)
1c00abda:	ca6a                	sw	s10,20(sp)
1c00abdc:	c86e                	sw	s11,16(sp)
1c00abde:	8aaa                	mv	s5,a0
1c00abe0:	c62e                	sw	a1,12(sp)
1c00abe2:	5b070a13          	addi	s4,a4,1456 # 1c0065b0 <out>
1c00abe6:	58098993          	addi	s3,s3,1408 # 1c006580 <stack>
1c00abea:	9b990913          	addi	s2,s2,-1607 # 9e3779b9 <pulp__FC+0x9e3779ba>
1c00abee:	cf9d                	beqz	a5,1c00ac2c <randombytes+0x84>
1c00abf0:	17fd                	addi	a5,a5,-1
1c00abf2:	00279713          	slli	a4,a5,0x2
1c00abf6:	9752                	add	a4,a4,s4
1c00abf8:	4318                	lw	a4,0(a4)
1c00abfa:	1c0066b7          	lui	a3,0x1c006
1c00abfe:	00ea8023          	sb	a4,0(s5)
1c00ac02:	5d468693          	addi	a3,a3,1492 # 1c0065d4 <outleft>
1c00ac06:	4732                	lw	a4,12(sp)
1c00ac08:	c29c                	sw	a5,0(a3)
1c00ac0a:	0a85                	addi	s5,s5,1
1c00ac0c:	feea91e3          	bne	s5,a4,1c00abee <randombytes+0x46>
1c00ac10:	5472                	lw	s0,60(sp)
1c00ac12:	54e2                	lw	s1,56(sp)
1c00ac14:	5952                	lw	s2,52(sp)
1c00ac16:	59c2                	lw	s3,48(sp)
1c00ac18:	5a32                	lw	s4,44(sp)
1c00ac1a:	5aa2                	lw	s5,40(sp)
1c00ac1c:	5b12                	lw	s6,36(sp)
1c00ac1e:	5b82                	lw	s7,32(sp)
1c00ac20:	4c72                	lw	s8,28(sp)
1c00ac22:	4ce2                	lw	s9,24(sp)
1c00ac24:	4d52                	lw	s10,20(sp)
1c00ac26:	4dc2                	lw	s11,16(sp)
1c00ac28:	6121                	addi	sp,sp,64
1c00ac2a:	8082                	ret
1c00ac2c:	0009a583          	lw	a1,0(s3)
1c00ac30:	0049a283          	lw	t0,4(s3)
1c00ac34:	0585                	addi	a1,a1,1
1c00ac36:	00b9a023          	sw	a1,0(s3)
1c00ac3a:	0089a383          	lw	t2,8(s3)
1c00ac3e:	00c9a403          	lw	s0,12(s3)
1c00ac42:	e999                	bnez	a1,1c00ac58 <randombytes+0xb0>
1c00ac44:	0285                	addi	t0,t0,1
1c00ac46:	0059a223          	sw	t0,4(s3)
1c00ac4a:	00029763          	bnez	t0,1c00ac58 <randombytes+0xb0>
1c00ac4e:	0385                	addi	t2,t2,1
1c00ac50:	0079a423          	sw	t2,8(s3)
1c00ac54:	1c038363          	beqz	t2,1c00ae1a <randombytes+0x272>
1c00ac58:	0109af83          	lw	t6,16(s3)
1c00ac5c:	0149af03          	lw	t5,20(s3)
1c00ac60:	0189ae83          	lw	t4,24(s3)
1c00ac64:	01c9ae03          	lw	t3,28(s3)
1c00ac68:	0209a303          	lw	t1,32(s3)
1c00ac6c:	0249a883          	lw	a7,36(s3)
1c00ac70:	0289a803          	lw	a6,40(s3)
1c00ac74:	02c9a503          	lw	a0,44(s3)
1c00ac78:	478d                	li	a5,3
1c00ac7a:	470d                	li	a4,3
1c00ac7c:	c23e                	sw	a5,4(sp)
1c00ac7e:	0095c593          	xori	a1,a1,9
1c00ac82:	0072c293          	xori	t0,t0,7
1c00ac86:	0093c393          	xori	t2,t2,9
1c00ac8a:	00344413          	xori	s0,s0,3
1c00ac8e:	002fcf93          	xori	t6,t6,2
1c00ac92:	003f4f13          	xori	t5,t5,3
1c00ac96:	008ece93          	xori	t4,t4,8
1c00ac9a:	004e4e13          	xori	t3,t3,4
1c00ac9e:	00634313          	xori	t1,t1,6
1c00aca2:	0028c893          	xori	a7,a7,2
1c00aca6:	00684813          	xori	a6,a6,6
1c00acaa:	00454513          	xori	a0,a0,4
1c00acae:	4b15                	li	s6,5
1c00acb0:	4ba5                	li	s7,9
1c00acb2:	4c1d                	li	s8,7
1c00acb4:	4c89                	li	s9,2
1c00acb6:	4d0d                	li	s10,3
1c00acb8:	4da1                	li	s11,8
1c00acba:	c43a                	sw	a4,8(sp)
1c00acbc:	4781                	li	a5,0
1c00acbe:	e377a737          	lui	a4,0xe377a
1c00acc2:	b9070713          	addi	a4,a4,-1136 # e3779b90 <pulp__FC+0xe3779b91>
1c00acc6:	00e784b3          	add	s1,a5,a4
1c00acca:	97ca                	add	a5,a5,s2
1c00accc:	01b55613          	srli	a2,a0,0x1b
1c00acd0:	00354713          	xori	a4,a0,3
1c00acd4:	00551693          	slli	a3,a0,0x5
1c00acd8:	8ed1                	or	a3,a3,a2
1c00acda:	973e                	add	a4,a4,a5
1c00acdc:	8f35                	xor	a4,a4,a3
1c00acde:	95ba                	add	a1,a1,a4
1c00ace0:	0195d613          	srli	a2,a1,0x19
1c00ace4:	0015c713          	xori	a4,a1,1
1c00ace8:	00759693          	slli	a3,a1,0x7
1c00acec:	8ed1                	or	a3,a3,a2
1c00acee:	973e                	add	a4,a4,a5
1c00acf0:	8f35                	xor	a4,a4,a3
1c00acf2:	92ba                	add	t0,t0,a4
1c00acf4:	0172d613          	srli	a2,t0,0x17
1c00acf8:	0042c713          	xori	a4,t0,4
1c00acfc:	00929693          	slli	a3,t0,0x9
1c00ad00:	8ed1                	or	a3,a3,a2
1c00ad02:	973e                	add	a4,a4,a5
1c00ad04:	8f35                	xor	a4,a4,a3
1c00ad06:	93ba                	add	t2,t2,a4
1c00ad08:	0133d613          	srli	a2,t2,0x13
1c00ad0c:	0013c713          	xori	a4,t2,1
1c00ad10:	00d39693          	slli	a3,t2,0xd
1c00ad14:	8ed1                	or	a3,a3,a2
1c00ad16:	973e                	add	a4,a4,a5
1c00ad18:	8f35                	xor	a4,a4,a3
1c00ad1a:	943a                	add	s0,s0,a4
1c00ad1c:	01b45613          	srli	a2,s0,0x1b
1c00ad20:	00544713          	xori	a4,s0,5
1c00ad24:	00541693          	slli	a3,s0,0x5
1c00ad28:	8ed1                	or	a3,a3,a2
1c00ad2a:	973e                	add	a4,a4,a5
1c00ad2c:	8f35                	xor	a4,a4,a3
1c00ad2e:	9fba                	add	t6,t6,a4
1c00ad30:	019fd613          	srli	a2,t6,0x19
1c00ad34:	009fc713          	xori	a4,t6,9
1c00ad38:	007f9693          	slli	a3,t6,0x7
1c00ad3c:	8ed1                	or	a3,a3,a2
1c00ad3e:	973e                	add	a4,a4,a5
1c00ad40:	8f35                	xor	a4,a4,a3
1c00ad42:	9f3a                	add	t5,t5,a4
1c00ad44:	017f5613          	srli	a2,t5,0x17
1c00ad48:	002f4713          	xori	a4,t5,2
1c00ad4c:	009f1693          	slli	a3,t5,0x9
1c00ad50:	8ed1                	or	a3,a3,a2
1c00ad52:	973e                	add	a4,a4,a5
1c00ad54:	8f35                	xor	a4,a4,a3
1c00ad56:	9eba                	add	t4,t4,a4
1c00ad58:	013ed613          	srli	a2,t4,0x13
1c00ad5c:	006ec713          	xori	a4,t4,6
1c00ad60:	00de9693          	slli	a3,t4,0xd
1c00ad64:	8ed1                	or	a3,a3,a2
1c00ad66:	973e                	add	a4,a4,a5
1c00ad68:	8f35                	xor	a4,a4,a3
1c00ad6a:	9e3a                	add	t3,t3,a4
1c00ad6c:	01be5613          	srli	a2,t3,0x1b
1c00ad70:	005e4713          	xori	a4,t3,5
1c00ad74:	005e1693          	slli	a3,t3,0x5
1c00ad78:	8ed1                	or	a3,a3,a2
1c00ad7a:	973e                	add	a4,a4,a5
1c00ad7c:	8f35                	xor	a4,a4,a3
1c00ad7e:	933a                	add	t1,t1,a4
1c00ad80:	01935613          	srli	a2,t1,0x19
1c00ad84:	00334713          	xori	a4,t1,3
1c00ad88:	00731693          	slli	a3,t1,0x7
1c00ad8c:	8ed1                	or	a3,a3,a2
1c00ad8e:	973e                	add	a4,a4,a5
1c00ad90:	8f35                	xor	a4,a4,a3
1c00ad92:	98ba                	add	a7,a7,a4
1c00ad94:	0178d613          	srli	a2,a7,0x17
1c00ad98:	0058c713          	xori	a4,a7,5
1c00ad9c:	00989693          	slli	a3,a7,0x9
1c00ada0:	8ed1                	or	a3,a3,a2
1c00ada2:	973e                	add	a4,a4,a5
1c00ada4:	8f35                	xor	a4,a4,a3
1c00ada6:	983a                	add	a6,a6,a4
1c00ada8:	00884713          	xori	a4,a6,8
1c00adac:	00d81693          	slli	a3,a6,0xd
1c00adb0:	01385613          	srli	a2,a6,0x13
1c00adb4:	973e                	add	a4,a4,a5
1c00adb6:	8ed1                	or	a3,a3,a2
1c00adb8:	8f35                	xor	a4,a4,a3
1c00adba:	953a                	add	a0,a0,a4
1c00adbc:	f09797e3          	bne	a5,s1,1c00acca <randombytes+0x122>
1c00adc0:	4692                	lw	a3,4(sp)
1c00adc2:	4722                	lw	a4,8(sp)
1c00adc4:	01f6c6b3          	xor	a3,a3,t6
1c00adc8:	c236                	sw	a3,4(sp)
1c00adca:	01e74733          	xor	a4,a4,t5
1c00adce:	c6ef36b7          	lui	a3,0xc6ef3
1c00add2:	c43a                	sw	a4,8(sp)
1c00add4:	72068693          	addi	a3,a3,1824 # c6ef3720 <pulp__FC+0xc6ef3721>
1c00add8:	01ddcdb3          	xor	s11,s11,t4
1c00addc:	01cd4d33          	xor	s10,s10,t3
1c00ade0:	006cccb3          	xor	s9,s9,t1
1c00ade4:	011c4c33          	xor	s8,s8,a7
1c00ade8:	010bcbb3          	xor	s7,s7,a6
1c00adec:	00ab4b33          	xor	s6,s6,a0
1c00adf0:	ecd797e3          	bne	a5,a3,1c00acbe <randombytes+0x116>
1c00adf4:	4792                	lw	a5,4(sp)
1c00adf6:	00ea2223          	sw	a4,4(s4)
1c00adfa:	00fa2023          	sw	a5,0(s4)
1c00adfe:	01ba2423          	sw	s11,8(s4)
1c00ae02:	01aa2623          	sw	s10,12(s4)
1c00ae06:	019a2823          	sw	s9,16(s4)
1c00ae0a:	018a2a23          	sw	s8,20(s4)
1c00ae0e:	017a2c23          	sw	s7,24(s4)
1c00ae12:	016a2e23          	sw	s6,28(s4)
1c00ae16:	479d                	li	a5,7
1c00ae18:	bbe9                	j	1c00abf2 <randombytes+0x4a>
1c00ae1a:	0405                	addi	s0,s0,1
1c00ae1c:	0089a623          	sw	s0,12(s3)
1c00ae20:	bd25                	j	1c00ac58 <randombytes+0xb0>
1c00ae22:	8082                	ret

1c00ae24 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>:
1c00ae24:	777d                	lui	a4,0xfffff
1c00ae26:	30170793          	addi	a5,a4,769 # fffff301 <pulp__FC+0xfffff302>
1c00ae2a:	02f507b3          	mul	a5,a0,a5
1c00ae2e:	07c2                	slli	a5,a5,0x10
1c00ae30:	2ff70713          	addi	a4,a4,767
1c00ae34:	87c1                	srai	a5,a5,0x10
1c00ae36:	02e787b3          	mul	a5,a5,a4
1c00ae3a:	953e                	add	a0,a0,a5
1c00ae3c:	8541                	srai	a0,a0,0x10
1c00ae3e:	0542                	slli	a0,a0,0x10
1c00ae40:	8541                	srai	a0,a0,0x10
1c00ae42:	8082                	ret

1c00ae44 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>:
1c00ae44:	6795                	lui	a5,0x5
1c00ae46:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00ae4a:	02f507b3          	mul	a5,a0,a5
1c00ae4e:	02000737          	lui	a4,0x2000
1c00ae52:	97ba                	add	a5,a5,a4
1c00ae54:	6705                	lui	a4,0x1
1c00ae56:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00ae5a:	87e9                	srai	a5,a5,0x1a
1c00ae5c:	02e787b3          	mul	a5,a5,a4
1c00ae60:	8d1d                	sub	a0,a0,a5
1c00ae62:	0542                	slli	a0,a0,0x10
1c00ae64:	8541                	srai	a0,a0,0x10
1c00ae66:	8082                	ret

1c00ae68 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>:
1c00ae68:	7139                	addi	sp,sp,-64
1c00ae6a:	da26                	sw	s1,52(sp)
1c00ae6c:	d84a                	sw	s2,48(sp)
1c00ae6e:	84b2                	mv	s1,a2
1c00ae70:	892a                	mv	s2,a0
1c00ae72:	02000613          	li	a2,32
1c00ae76:	0068                	addi	a0,sp,12
1c00ae78:	de06                	sw	ra,60(sp)
1c00ae7a:	dc22                	sw	s0,56(sp)
1c00ae7c:	8436                	mv	s0,a3
1c00ae7e:	2049                	jal	1c00af00 <memcpy>
1c00ae80:	006c                	addi	a1,sp,12
1c00ae82:	854a                	mv	a0,s2
1c00ae84:	02200613          	li	a2,34
1c00ae88:	02910623          	sb	s1,44(sp)
1c00ae8c:	028106a3          	sb	s0,45(sp)
1c00ae90:	9b8fe0ef          	jal	ra,1c009048 <shake128_absorb>
1c00ae94:	50f2                	lw	ra,60(sp)
1c00ae96:	5462                	lw	s0,56(sp)
1c00ae98:	54d2                	lw	s1,52(sp)
1c00ae9a:	5942                	lw	s2,48(sp)
1c00ae9c:	6121                	addi	sp,sp,64
1c00ae9e:	8082                	ret

1c00aea0 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>:
1c00aea0:	7139                	addi	sp,sp,-64
1c00aea2:	87b2                	mv	a5,a2
1c00aea4:	da26                	sw	s1,52(sp)
1c00aea6:	d84a                	sw	s2,48(sp)
1c00aea8:	84aa                	mv	s1,a0
1c00aeaa:	892e                	mv	s2,a1
1c00aeac:	02000613          	li	a2,32
1c00aeb0:	85be                	mv	a1,a5
1c00aeb2:	0068                	addi	a0,sp,12
1c00aeb4:	de06                	sw	ra,60(sp)
1c00aeb6:	dc22                	sw	s0,56(sp)
1c00aeb8:	8436                	mv	s0,a3
1c00aeba:	2099                	jal	1c00af00 <memcpy>
1c00aebc:	0070                	addi	a2,sp,12
1c00aebe:	85ca                	mv	a1,s2
1c00aec0:	8526                	mv	a0,s1
1c00aec2:	02100693          	li	a3,33
1c00aec6:	02810623          	sb	s0,44(sp)
1c00aeca:	c1afe0ef          	jal	ra,1c0092e4 <shake256>
1c00aece:	50f2                	lw	ra,60(sp)
1c00aed0:	5462                	lw	s0,56(sp)
1c00aed2:	54d2                	lw	s1,52(sp)
1c00aed4:	5942                	lw	s2,48(sp)
1c00aed6:	6121                	addi	sp,sp,64
1c00aed8:	8082                	ret

1c00aeda <pos_wait_forever>:
1c00aeda:	f14027f3          	csrr	a5,mhartid
1c00aede:	8795                	srai	a5,a5,0x5
1c00aee0:	03f7f793          	andi	a5,a5,63
1c00aee4:	477d                	li	a4,31
1c00aee6:	00e78363          	beq	a5,a4,1c00aeec <pos_wait_forever+0x12>
1c00aeea:	a001                	j	1c00aeea <pos_wait_forever+0x10>
1c00aeec:	1a10a7b7          	lui	a5,0x1a10a
1c00aef0:	577d                	li	a4,-1
1c00aef2:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00aef6:	10500073          	wfi
1c00aefa:	10500073          	wfi
1c00aefe:	bfe5                	j	1c00aef6 <pos_wait_forever+0x1c>

1c00af00 <memcpy>:
1c00af00:	00b567b3          	or	a5,a0,a1
1c00af04:	8b8d                	andi	a5,a5,3
1c00af06:	10078f63          	beqz	a5,1c00b024 <memcpy+0x124>
1c00af0a:	14060063          	beqz	a2,1c00b04a <memcpy+0x14a>
1c00af0e:	00458793          	addi	a5,a1,4
1c00af12:	00450693          	addi	a3,a0,4
1c00af16:	00f537b3          	sltu	a5,a0,a5
1c00af1a:	00d5b6b3          	sltu	a3,a1,a3
1c00af1e:	0017c793          	xori	a5,a5,1
1c00af22:	0016c693          	xori	a3,a3,1
1c00af26:	873e                	mv	a4,a5
1c00af28:	87b6                	mv	a5,a3
1c00af2a:	8fd9                	or	a5,a5,a4
1c00af2c:	0ff7f793          	andi	a5,a5,255
1c00af30:	cff9                	beqz	a5,1c00b00e <memcpy+0x10e>
1c00af32:	00863793          	sltiu	a5,a2,8
1c00af36:	0017c793          	xori	a5,a5,1
1c00af3a:	0ff7f793          	andi	a5,a5,255
1c00af3e:	cbe1                	beqz	a5,1c00b00e <memcpy+0x10e>
1c00af40:	40b007b3          	neg	a5,a1
1c00af44:	8b8d                	andi	a5,a5,3
1c00af46:	fff60313          	addi	t1,a2,-1
1c00af4a:	cfe5                	beqz	a5,1c00b042 <memcpy+0x142>
1c00af4c:	0005c683          	lbu	a3,0(a1)
1c00af50:	4705                	li	a4,1
1c00af52:	00d50023          	sb	a3,0(a0)
1c00af56:	00158893          	addi	a7,a1,1
1c00af5a:	00150813          	addi	a6,a0,1
1c00af5e:	02e78963          	beq	a5,a4,1c00af90 <memcpy+0x90>
1c00af62:	0015c683          	lbu	a3,1(a1)
1c00af66:	470d                	li	a4,3
1c00af68:	00d500a3          	sb	a3,1(a0)
1c00af6c:	00258893          	addi	a7,a1,2
1c00af70:	00250813          	addi	a6,a0,2
1c00af74:	ffe60313          	addi	t1,a2,-2
1c00af78:	00e79c63          	bne	a5,a4,1c00af90 <memcpy+0x90>
1c00af7c:	0025c703          	lbu	a4,2(a1)
1c00af80:	00358893          	addi	a7,a1,3
1c00af84:	00350813          	addi	a6,a0,3
1c00af88:	00e50123          	sb	a4,2(a0)
1c00af8c:	ffd60313          	addi	t1,a2,-3
1c00af90:	8e1d                	sub	a2,a2,a5
1c00af92:	95be                	add	a1,a1,a5
1c00af94:	00265e13          	srli	t3,a2,0x2
1c00af98:	97aa                	add	a5,a5,a0
1c00af9a:	4701                	li	a4,0
1c00af9c:	4194                	lw	a3,0(a1)
1c00af9e:	0705                	addi	a4,a4,1
1c00afa0:	c394                	sw	a3,0(a5)
1c00afa2:	0591                	addi	a1,a1,4
1c00afa4:	0791                	addi	a5,a5,4
1c00afa6:	ffc76be3          	bltu	a4,t3,1c00af9c <memcpy+0x9c>
1c00afaa:	ffc67593          	andi	a1,a2,-4
1c00afae:	40b306b3          	sub	a3,t1,a1
1c00afb2:	00b807b3          	add	a5,a6,a1
1c00afb6:	00b88733          	add	a4,a7,a1
1c00afba:	06b60463          	beq	a2,a1,1c00b022 <memcpy+0x122>
1c00afbe:	00074583          	lbu	a1,0(a4)
1c00afc2:	fff68613          	addi	a2,a3,-1
1c00afc6:	00b78023          	sb	a1,0(a5)
1c00afca:	ce21                	beqz	a2,1c00b022 <memcpy+0x122>
1c00afcc:	00174583          	lbu	a1,1(a4)
1c00afd0:	ffe68613          	addi	a2,a3,-2
1c00afd4:	00b780a3          	sb	a1,1(a5)
1c00afd8:	c629                	beqz	a2,1c00b022 <memcpy+0x122>
1c00afda:	00274583          	lbu	a1,2(a4)
1c00afde:	ffd68613          	addi	a2,a3,-3
1c00afe2:	00b78123          	sb	a1,2(a5)
1c00afe6:	ce15                	beqz	a2,1c00b022 <memcpy+0x122>
1c00afe8:	00374583          	lbu	a1,3(a4)
1c00afec:	ffc68613          	addi	a2,a3,-4
1c00aff0:	00b781a3          	sb	a1,3(a5)
1c00aff4:	c61d                	beqz	a2,1c00b022 <memcpy+0x122>
1c00aff6:	00474583          	lbu	a1,4(a4)
1c00affa:	4615                	li	a2,5
1c00affc:	00b78223          	sb	a1,4(a5)
1c00b000:	02c68163          	beq	a3,a2,1c00b022 <memcpy+0x122>
1c00b004:	00574703          	lbu	a4,5(a4)
1c00b008:	00e782a3          	sb	a4,5(a5)
1c00b00c:	8082                	ret
1c00b00e:	962e                	add	a2,a2,a1
1c00b010:	87aa                	mv	a5,a0
1c00b012:	0585                	addi	a1,a1,1
1c00b014:	fff5c703          	lbu	a4,-1(a1)
1c00b018:	0785                	addi	a5,a5,1
1c00b01a:	fee78fa3          	sb	a4,-1(a5)
1c00b01e:	fec59ae3          	bne	a1,a2,1c00b012 <memcpy+0x112>
1c00b022:	8082                	ret
1c00b024:	00367793          	andi	a5,a2,3
1c00b028:	ee0793e3          	bnez	a5,1c00af0e <memcpy+0xe>
1c00b02c:	da7d                	beqz	a2,1c00b022 <memcpy+0x122>
1c00b02e:	87aa                	mv	a5,a0
1c00b030:	0591                	addi	a1,a1,4
1c00b032:	ffc5a703          	lw	a4,-4(a1)
1c00b036:	0791                	addi	a5,a5,4
1c00b038:	fee7ae23          	sw	a4,-4(a5)
1c00b03c:	1671                	addi	a2,a2,-4
1c00b03e:	fa6d                	bnez	a2,1c00b030 <memcpy+0x130>
1c00b040:	8082                	ret
1c00b042:	88ae                	mv	a7,a1
1c00b044:	882a                	mv	a6,a0
1c00b046:	8332                	mv	t1,a2
1c00b048:	b7a1                	j	1c00af90 <memcpy+0x90>
1c00b04a:	8082                	ret

1c00b04c <memmove>:
1c00b04c:	40b507b3          	sub	a5,a0,a1
1c00b050:	10c7e463          	bltu	a5,a2,1c00b158 <memmove+0x10c>
1c00b054:	12060b63          	beqz	a2,1c00b18a <memmove+0x13e>
1c00b058:	00458793          	addi	a5,a1,4
1c00b05c:	00450693          	addi	a3,a0,4
1c00b060:	00f537b3          	sltu	a5,a0,a5
1c00b064:	00d5b6b3          	sltu	a3,a1,a3
1c00b068:	0017c793          	xori	a5,a5,1
1c00b06c:	0016c693          	xori	a3,a3,1
1c00b070:	873e                	mv	a4,a5
1c00b072:	87b6                	mv	a5,a3
1c00b074:	8fd9                	or	a5,a5,a4
1c00b076:	0ff7f793          	andi	a5,a5,255
1c00b07a:	cfed                	beqz	a5,1c00b174 <memmove+0x128>
1c00b07c:	00863793          	sltiu	a5,a2,8
1c00b080:	0017c793          	xori	a5,a5,1
1c00b084:	0ff7f793          	andi	a5,a5,255
1c00b088:	c7f5                	beqz	a5,1c00b174 <memmove+0x128>
1c00b08a:	40b007b3          	neg	a5,a1
1c00b08e:	8b8d                	andi	a5,a5,3
1c00b090:	fff60313          	addi	t1,a2,-1
1c00b094:	cfe5                	beqz	a5,1c00b18c <memmove+0x140>
1c00b096:	0005c683          	lbu	a3,0(a1)
1c00b09a:	4705                	li	a4,1
1c00b09c:	00d50023          	sb	a3,0(a0)
1c00b0a0:	00150813          	addi	a6,a0,1
1c00b0a4:	00158893          	addi	a7,a1,1
1c00b0a8:	02e78963          	beq	a5,a4,1c00b0da <memmove+0x8e>
1c00b0ac:	0015c683          	lbu	a3,1(a1)
1c00b0b0:	470d                	li	a4,3
1c00b0b2:	00d500a3          	sb	a3,1(a0)
1c00b0b6:	00250813          	addi	a6,a0,2
1c00b0ba:	00258893          	addi	a7,a1,2
1c00b0be:	ffe60313          	addi	t1,a2,-2
1c00b0c2:	00e79c63          	bne	a5,a4,1c00b0da <memmove+0x8e>
1c00b0c6:	0025c703          	lbu	a4,2(a1)
1c00b0ca:	00350813          	addi	a6,a0,3
1c00b0ce:	00e50123          	sb	a4,2(a0)
1c00b0d2:	00358893          	addi	a7,a1,3
1c00b0d6:	ffd60313          	addi	t1,a2,-3
1c00b0da:	8e1d                	sub	a2,a2,a5
1c00b0dc:	95be                	add	a1,a1,a5
1c00b0de:	00265e13          	srli	t3,a2,0x2
1c00b0e2:	97aa                	add	a5,a5,a0
1c00b0e4:	4701                	li	a4,0
1c00b0e6:	4194                	lw	a3,0(a1)
1c00b0e8:	0705                	addi	a4,a4,1
1c00b0ea:	c394                	sw	a3,0(a5)
1c00b0ec:	0591                	addi	a1,a1,4
1c00b0ee:	0791                	addi	a5,a5,4
1c00b0f0:	ffc76be3          	bltu	a4,t3,1c00b0e6 <memmove+0x9a>
1c00b0f4:	ffc67593          	andi	a1,a2,-4
1c00b0f8:	40b306b3          	sub	a3,t1,a1
1c00b0fc:	00b807b3          	add	a5,a6,a1
1c00b100:	00b88733          	add	a4,a7,a1
1c00b104:	08b60263          	beq	a2,a1,1c00b188 <memmove+0x13c>
1c00b108:	00074583          	lbu	a1,0(a4)
1c00b10c:	fff68613          	addi	a2,a3,-1
1c00b110:	00b78023          	sb	a1,0(a5)
1c00b114:	ca35                	beqz	a2,1c00b188 <memmove+0x13c>
1c00b116:	00174583          	lbu	a1,1(a4)
1c00b11a:	ffe68613          	addi	a2,a3,-2
1c00b11e:	00b780a3          	sb	a1,1(a5)
1c00b122:	c23d                	beqz	a2,1c00b188 <memmove+0x13c>
1c00b124:	00274583          	lbu	a1,2(a4)
1c00b128:	ffd68613          	addi	a2,a3,-3
1c00b12c:	00b78123          	sb	a1,2(a5)
1c00b130:	ce21                	beqz	a2,1c00b188 <memmove+0x13c>
1c00b132:	00374583          	lbu	a1,3(a4)
1c00b136:	ffc68613          	addi	a2,a3,-4
1c00b13a:	00b781a3          	sb	a1,3(a5)
1c00b13e:	c629                	beqz	a2,1c00b188 <memmove+0x13c>
1c00b140:	00474583          	lbu	a1,4(a4)
1c00b144:	4615                	li	a2,5
1c00b146:	00b78223          	sb	a1,4(a5)
1c00b14a:	02c68f63          	beq	a3,a2,1c00b188 <memmove+0x13c>
1c00b14e:	00574703          	lbu	a4,5(a4)
1c00b152:	00e782a3          	sb	a4,5(a5)
1c00b156:	8082                	ret
1c00b158:	167d                	addi	a2,a2,-1
1c00b15a:	00c587b3          	add	a5,a1,a2
1c00b15e:	962a                	add	a2,a2,a0
1c00b160:	15fd                	addi	a1,a1,-1
1c00b162:	0007c703          	lbu	a4,0(a5)
1c00b166:	17fd                	addi	a5,a5,-1
1c00b168:	00e60023          	sb	a4,0(a2)
1c00b16c:	167d                	addi	a2,a2,-1
1c00b16e:	feb79ae3          	bne	a5,a1,1c00b162 <memmove+0x116>
1c00b172:	8082                	ret
1c00b174:	962a                	add	a2,a2,a0
1c00b176:	87aa                	mv	a5,a0
1c00b178:	0005c703          	lbu	a4,0(a1)
1c00b17c:	0785                	addi	a5,a5,1
1c00b17e:	fee78fa3          	sb	a4,-1(a5)
1c00b182:	0585                	addi	a1,a1,1
1c00b184:	fec79ae3          	bne	a5,a2,1c00b178 <memmove+0x12c>
1c00b188:	8082                	ret
1c00b18a:	8082                	ret
1c00b18c:	88ae                	mv	a7,a1
1c00b18e:	882a                	mv	a6,a0
1c00b190:	8332                	mv	t1,a2
1c00b192:	b7a1                	j	1c00b0da <memmove+0x8e>

1c00b194 <strchr>:
1c00b194:	00054783          	lbu	a5,0(a0)
1c00b198:	0ff5f593          	andi	a1,a1,255
1c00b19c:	00b78863          	beq	a5,a1,1c00b1ac <strchr+0x18>
1c00b1a0:	c799                	beqz	a5,1c00b1ae <strchr+0x1a>
1c00b1a2:	0505                	addi	a0,a0,1
1c00b1a4:	00054783          	lbu	a5,0(a0)
1c00b1a8:	feb79ce3          	bne	a5,a1,1c00b1a0 <strchr+0xc>
1c00b1ac:	8082                	ret
1c00b1ae:	0015b593          	seqz	a1,a1
1c00b1b2:	40b005b3          	neg	a1,a1
1c00b1b6:	8d6d                	and	a0,a0,a1
1c00b1b8:	8082                	ret

1c00b1ba <puts>:
1c00b1ba:	00054783          	lbu	a5,0(a0)
1c00b1be:	c78d                	beqz	a5,1c00b1e8 <puts+0x2e>
1c00b1c0:	f14026f3          	csrr	a3,mhartid
1c00b1c4:	00369713          	slli	a4,a3,0x3
1c00b1c8:	1a10f637          	lui	a2,0x1a10f
1c00b1cc:	0ff77713          	andi	a4,a4,255
1c00b1d0:	9732                	add	a4,a4,a2
1c00b1d2:	6609                	lui	a2,0x2
1c00b1d4:	068a                	slli	a3,a3,0x2
1c00b1d6:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b1da:	8ef1                	and	a3,a3,a2
1c00b1dc:	9736                	add	a4,a4,a3
1c00b1de:	c31c                	sw	a5,0(a4)
1c00b1e0:	0505                	addi	a0,a0,1
1c00b1e2:	00054783          	lbu	a5,0(a0)
1c00b1e6:	ffe5                	bnez	a5,1c00b1de <puts+0x24>
1c00b1e8:	f1402773          	csrr	a4,mhartid
1c00b1ec:	00371793          	slli	a5,a4,0x3
1c00b1f0:	1a10f6b7          	lui	a3,0x1a10f
1c00b1f4:	0ff7f793          	andi	a5,a5,255
1c00b1f8:	97b6                	add	a5,a5,a3
1c00b1fa:	6689                	lui	a3,0x2
1c00b1fc:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b200:	070a                	slli	a4,a4,0x2
1c00b202:	8f75                	and	a4,a4,a3
1c00b204:	97ba                	add	a5,a5,a4
1c00b206:	4729                	li	a4,10
1c00b208:	c398                	sw	a4,0(a5)
1c00b20a:	4501                	li	a0,0
1c00b20c:	8082                	ret

1c00b20e <pos_libc_fputc_locked>:
1c00b20e:	6689                	lui	a3,0x2
1c00b210:	f14027f3          	csrr	a5,mhartid
1c00b214:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b218:	00379713          	slli	a4,a5,0x3
1c00b21c:	078a                	slli	a5,a5,0x2
1c00b21e:	8ff5                	and	a5,a5,a3
1c00b220:	0ff77713          	andi	a4,a4,255
1c00b224:	1a10f6b7          	lui	a3,0x1a10f
1c00b228:	9736                	add	a4,a4,a3
1c00b22a:	0ff57513          	andi	a0,a0,255
1c00b22e:	97ba                	add	a5,a5,a4
1c00b230:	c388                	sw	a0,0(a5)
1c00b232:	4501                	li	a0,0
1c00b234:	8082                	ret

1c00b236 <putchar>:
1c00b236:	6689                	lui	a3,0x2
1c00b238:	f14027f3          	csrr	a5,mhartid
1c00b23c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b240:	00379713          	slli	a4,a5,0x3
1c00b244:	078a                	slli	a5,a5,0x2
1c00b246:	8ff5                	and	a5,a5,a3
1c00b248:	0ff77713          	andi	a4,a4,255
1c00b24c:	1a10f6b7          	lui	a3,0x1a10f
1c00b250:	9736                	add	a4,a4,a3
1c00b252:	0ff57513          	andi	a0,a0,255
1c00b256:	97ba                	add	a5,a5,a4
1c00b258:	c388                	sw	a0,0(a5)
1c00b25a:	4501                	li	a0,0
1c00b25c:	8082                	ret

1c00b25e <pos_libc_prf_locked>:
1c00b25e:	a0b1                	j	1c00b2aa <pos_libc_prf>

1c00b260 <exit>:
1c00b260:	800007b7          	lui	a5,0x80000
1c00b264:	1141                	addi	sp,sp,-16
1c00b266:	8d5d                	or	a0,a0,a5
1c00b268:	c606                	sw	ra,12(sp)
1c00b26a:	1a1047b7          	lui	a5,0x1a104
1c00b26e:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00b272:	31a5                	jal	1c00aeda <pos_wait_forever>

1c00b274 <pos_io_start>:
1c00b274:	4501                	li	a0,0
1c00b276:	8082                	ret

1c00b278 <pos_io_stop>:
1c00b278:	4501                	li	a0,0
1c00b27a:	8082                	ret

1c00b27c <printf>:
1c00b27c:	7139                	addi	sp,sp,-64
1c00b27e:	02410313          	addi	t1,sp,36
1c00b282:	d432                	sw	a2,40(sp)
1c00b284:	862a                	mv	a2,a0
1c00b286:	1c00b537          	lui	a0,0x1c00b
1c00b28a:	d22e                	sw	a1,36(sp)
1c00b28c:	d636                	sw	a3,44(sp)
1c00b28e:	4589                	li	a1,2
1c00b290:	869a                	mv	a3,t1
1c00b292:	20e50513          	addi	a0,a0,526 # 1c00b20e <pos_libc_fputc_locked>
1c00b296:	ce06                	sw	ra,28(sp)
1c00b298:	d83a                	sw	a4,48(sp)
1c00b29a:	da3e                	sw	a5,52(sp)
1c00b29c:	dc42                	sw	a6,56(sp)
1c00b29e:	de46                	sw	a7,60(sp)
1c00b2a0:	c61a                	sw	t1,12(sp)
1c00b2a2:	3f75                	jal	1c00b25e <pos_libc_prf_locked>
1c00b2a4:	40f2                	lw	ra,28(sp)
1c00b2a6:	6121                	addi	sp,sp,64
1c00b2a8:	8082                	ret

1c00b2aa <pos_libc_prf>:
1c00b2aa:	7169                	addi	sp,sp,-304
1c00b2ac:	12812423          	sw	s0,296(sp)
1c00b2b0:	12912223          	sw	s1,292(sp)
1c00b2b4:	11612823          	sw	s6,272(sp)
1c00b2b8:	11712623          	sw	s7,268(sp)
1c00b2bc:	11812423          	sw	s8,264(sp)
1c00b2c0:	11912223          	sw	s9,260(sp)
1c00b2c4:	11a12023          	sw	s10,256(sp)
1c00b2c8:	12112623          	sw	ra,300(sp)
1c00b2cc:	13212023          	sw	s2,288(sp)
1c00b2d0:	11312e23          	sw	s3,284(sp)
1c00b2d4:	11412c23          	sw	s4,280(sp)
1c00b2d8:	11512a23          	sw	s5,276(sp)
1c00b2dc:	dfee                	sw	s11,252(sp)
1c00b2de:	8b2a                	mv	s6,a0
1c00b2e0:	8d2e                	mv	s10,a1
1c00b2e2:	84b2                	mv	s1,a2
1c00b2e4:	8c36                	mv	s8,a3
1c00b2e6:	4401                	li	s0,0
1c00b2e8:	1c000bb7          	lui	s7,0x1c000
1c00b2ec:	02410c93          	addi	s9,sp,36
1c00b2f0:	0004c503          	lbu	a0,0(s1)
1c00b2f4:	0485                	addi	s1,s1,1
1c00b2f6:	cd19                	beqz	a0,1c00b314 <pos_libc_prf+0x6a>
1c00b2f8:	02500793          	li	a5,37
1c00b2fc:	04f50863          	beq	a0,a5,1c00b34c <pos_libc_prf+0xa2>
1c00b300:	85ea                	mv	a1,s10
1c00b302:	9b02                	jalr	s6
1c00b304:	57fd                	li	a5,-1
1c00b306:	24f50863          	beq	a0,a5,1c00b556 <pos_libc_prf+0x2ac>
1c00b30a:	0405                	addi	s0,s0,1
1c00b30c:	0004c503          	lbu	a0,0(s1)
1c00b310:	0485                	addi	s1,s1,1
1c00b312:	f17d                	bnez	a0,1c00b2f8 <pos_libc_prf+0x4e>
1c00b314:	8522                	mv	a0,s0
1c00b316:	12c12083          	lw	ra,300(sp)
1c00b31a:	12812403          	lw	s0,296(sp)
1c00b31e:	12412483          	lw	s1,292(sp)
1c00b322:	12012903          	lw	s2,288(sp)
1c00b326:	11c12983          	lw	s3,284(sp)
1c00b32a:	11812a03          	lw	s4,280(sp)
1c00b32e:	11412a83          	lw	s5,276(sp)
1c00b332:	11012b03          	lw	s6,272(sp)
1c00b336:	10c12b83          	lw	s7,268(sp)
1c00b33a:	10812c03          	lw	s8,264(sp)
1c00b33e:	10412c83          	lw	s9,260(sp)
1c00b342:	10012d03          	lw	s10,256(sp)
1c00b346:	5dfe                	lw	s11,252(sp)
1c00b348:	6155                	addi	sp,sp,304
1c00b34a:	8082                	ret
1c00b34c:	00148a93          	addi	s5,s1,1
1c00b350:	fffacd83          	lbu	s11,-1(s5)
1c00b354:	02000713          	li	a4,32
1c00b358:	570b8513          	addi	a0,s7,1392 # 1c000570 <PQCLEAN_KYBER512_CLEAN_zetas+0x104>
1c00b35c:	85ee                	mv	a1,s11
1c00b35e:	c83a                	sw	a4,16(sp)
1c00b360:	cc02                	sw	zero,24(sp)
1c00b362:	ca02                	sw	zero,20(sp)
1c00b364:	ce02                	sw	zero,28(sp)
1c00b366:	c602                	sw	zero,12(sp)
1c00b368:	02300913          	li	s2,35
1c00b36c:	02d00a13          	li	s4,45
1c00b370:	89d6                	mv	s3,s5
1c00b372:	350d                	jal	1c00b194 <strchr>
1c00b374:	c915                	beqz	a0,1c00b3a8 <pos_libc_prf+0xfe>
1c00b376:	212d8963          	beq	s11,s2,1c00b588 <pos_libc_prf+0x2de>
1c00b37a:	1fb97063          	bleu	s11,s2,1c00b55a <pos_libc_prf+0x2b0>
1c00b37e:	214d8163          	beq	s11,s4,1c00b580 <pos_libc_prf+0x2d6>
1c00b382:	03000613          	li	a2,48
1c00b386:	1ecd8863          	beq	s11,a2,1c00b576 <pos_libc_prf+0x2cc>
1c00b38a:	02b00693          	li	a3,43
1c00b38e:	1edd8063          	beq	s11,a3,1c00b56e <pos_libc_prf+0x2c4>
1c00b392:	84d6                	mv	s1,s5
1c00b394:	00148a93          	addi	s5,s1,1
1c00b398:	fffacd83          	lbu	s11,-1(s5)
1c00b39c:	570b8513          	addi	a0,s7,1392
1c00b3a0:	85ee                	mv	a1,s11
1c00b3a2:	89d6                	mv	s3,s5
1c00b3a4:	3bc5                	jal	1c00b194 <strchr>
1c00b3a6:	f961                	bnez	a0,1c00b376 <pos_libc_prf+0xcc>
1c00b3a8:	02a00613          	li	a2,42
1c00b3ac:	20cd8463          	beq	s11,a2,1c00b5b4 <pos_libc_prf+0x30a>
1c00b3b0:	fd0d8613          	addi	a2,s11,-48
1c00b3b4:	45a5                	li	a1,9
1c00b3b6:	4901                	li	s2,0
1c00b3b8:	1cc5fe63          	bleu	a2,a1,1c00b594 <pos_libc_prf+0x2ea>
1c00b3bc:	02e00713          	li	a4,46
1c00b3c0:	5a7d                	li	s4,-1
1c00b3c2:	24ed8463          	beq	s11,a4,1c00b60a <pos_libc_prf+0x360>
1c00b3c6:	1c000837          	lui	a6,0x1c000
1c00b3ca:	85ee                	mv	a1,s11
1c00b3cc:	57880513          	addi	a0,a6,1400 # 1c000578 <PQCLEAN_KYBER512_CLEAN_zetas+0x10c>
1c00b3d0:	33d1                	jal	1c00b194 <strchr>
1c00b3d2:	84ce                	mv	s1,s3
1c00b3d4:	c509                	beqz	a0,1c00b3de <pos_libc_prf+0x134>
1c00b3d6:	0009cd83          	lbu	s11,0(s3)
1c00b3da:	00198493          	addi	s1,s3,1
1c00b3de:	06700713          	li	a4,103
1c00b3e2:	1fb75963          	ble	s11,a4,1c00b5d4 <pos_libc_prf+0x32a>
1c00b3e6:	07000713          	li	a4,112
1c00b3ea:	12ed89e3          	beq	s11,a4,1c00bd1c <pos_libc_prf+0xa72>
1c00b3ee:	25b75263          	ble	s11,a4,1c00b632 <pos_libc_prf+0x388>
1c00b3f2:	07500713          	li	a4,117
1c00b3f6:	0aed89e3          	beq	s11,a4,1c00bca8 <pos_libc_prf+0x9fe>
1c00b3fa:	07800713          	li	a4,120
1c00b3fe:	72ed8b63          	beq	s11,a4,1c00bb34 <pos_libc_prf+0x88a>
1c00b402:	07300713          	li	a4,115
1c00b406:	1aed9ce3          	bne	s11,a4,1c00bdbe <pos_libc_prf+0xb14>
1c00b40a:	000c2583          	lw	a1,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00b40e:	004c0a93          	addi	s5,s8,4
1c00b412:	87ae                	mv	a5,a1
1c00b414:	4981                	li	s3,0
1c00b416:	0c800693          	li	a3,200
1c00b41a:	a021                	j	1c00b422 <pos_libc_prf+0x178>
1c00b41c:	0985                	addi	s3,s3,1
1c00b41e:	5ad98be3          	beq	s3,a3,1c00c1d4 <pos_libc_prf+0xf2a>
1c00b422:	0007c703          	lbu	a4,0(a5)
1c00b426:	0785                	addi	a5,a5,1
1c00b428:	fb75                	bnez	a4,1c00b41c <pos_libc_prf+0x172>
1c00b42a:	000a4563          	bltz	s4,1c00b434 <pos_libc_prf+0x18a>
1c00b42e:	013a5363          	ble	s3,s4,1c00b434 <pos_libc_prf+0x18a>
1c00b432:	89d2                	mv	s3,s4
1c00b434:	8c56                	mv	s8,s5
1c00b436:	ea098de3          	beqz	s3,1c00b2f0 <pos_libc_prf+0x46>
1c00b43a:	864e                	mv	a2,s3
1c00b43c:	8566                	mv	a0,s9
1c00b43e:	34c9                	jal	1c00af00 <memcpy>
1c00b440:	8c56                	mv	s8,s5
1c00b442:	0f29d963          	ble	s2,s3,1c00b534 <pos_libc_prf+0x28a>
1c00b446:	c602                	sw	zero,12(sp)
1c00b448:	48f2                	lw	a7,28(sp)
1c00b44a:	1a0885e3          	beqz	a7,1c00bdf4 <pos_libc_prf+0xb4a>
1c00b44e:	013c87b3          	add	a5,s9,s3
1c00b452:	40f007b3          	neg	a5,a5
1c00b456:	8b8d                	andi	a5,a5,3
1c00b458:	00378693          	addi	a3,a5,3
1c00b45c:	4715                	li	a4,5
1c00b45e:	413905b3          	sub	a1,s2,s3
1c00b462:	00e6f363          	bleu	a4,a3,1c00b468 <pos_libc_prf+0x1be>
1c00b466:	4695                	li	a3,5
1c00b468:	fff90713          	addi	a4,s2,-1
1c00b46c:	41370733          	sub	a4,a4,s3
1c00b470:	06d76663          	bltu	a4,a3,1c00b4dc <pos_libc_prf+0x232>
1c00b474:	86ce                	mv	a3,s3
1c00b476:	cb9d                	beqz	a5,1c00b4ac <pos_libc_prf+0x202>
1c00b478:	0f010813          	addi	a6,sp,240
1c00b47c:	013806b3          	add	a3,a6,s3
1c00b480:	02000713          	li	a4,32
1c00b484:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c00b488:	4605                	li	a2,1
1c00b48a:	00198693          	addi	a3,s3,1
1c00b48e:	00c78f63          	beq	a5,a2,1c00b4ac <pos_libc_prf+0x202>
1c00b492:	96c2                	add	a3,a3,a6
1c00b494:	f2e68a23          	sb	a4,-204(a3)
1c00b498:	460d                	li	a2,3
1c00b49a:	00298693          	addi	a3,s3,2
1c00b49e:	00c79763          	bne	a5,a2,1c00b4ac <pos_libc_prf+0x202>
1c00b4a2:	96c2                	add	a3,a3,a6
1c00b4a4:	f2e68a23          	sb	a4,-204(a3)
1c00b4a8:	00398693          	addi	a3,s3,3
1c00b4ac:	8d9d                	sub	a1,a1,a5
1c00b4ae:	97ce                	add	a5,a5,s3
1c00b4b0:	0025d613          	srli	a2,a1,0x2
1c00b4b4:	97e6                	add	a5,a5,s9
1c00b4b6:	4701                	li	a4,0
1c00b4b8:	1c0008b7          	lui	a7,0x1c000
1c00b4bc:	56c88893          	addi	a7,a7,1388 # 1c00056c <PQCLEAN_KYBER512_CLEAN_zetas+0x100>
1c00b4c0:	0008a883          	lw	a7,0(a7)
1c00b4c4:	0705                	addi	a4,a4,1
1c00b4c6:	0117a023          	sw	a7,0(a5)
1c00b4ca:	0791                	addi	a5,a5,4
1c00b4cc:	fec766e3          	bltu	a4,a2,1c00b4b8 <pos_libc_prf+0x20e>
1c00b4d0:	ffc5f793          	andi	a5,a1,-4
1c00b4d4:	00d789b3          	add	s3,a5,a3
1c00b4d8:	04b78b63          	beq	a5,a1,1c00b52e <pos_libc_prf+0x284>
1c00b4dc:	1988                	addi	a0,sp,240
1c00b4de:	01350733          	add	a4,a0,s3
1c00b4e2:	02000793          	li	a5,32
1c00b4e6:	f2f70a23          	sb	a5,-204(a4)
1c00b4ea:	00198713          	addi	a4,s3,1
1c00b4ee:	05275063          	ble	s2,a4,1c00b52e <pos_libc_prf+0x284>
1c00b4f2:	972a                	add	a4,a4,a0
1c00b4f4:	f2f70a23          	sb	a5,-204(a4)
1c00b4f8:	00298713          	addi	a4,s3,2
1c00b4fc:	03275963          	ble	s2,a4,1c00b52e <pos_libc_prf+0x284>
1c00b500:	972a                	add	a4,a4,a0
1c00b502:	f2f70a23          	sb	a5,-204(a4)
1c00b506:	00398713          	addi	a4,s3,3
1c00b50a:	03275263          	ble	s2,a4,1c00b52e <pos_libc_prf+0x284>
1c00b50e:	972a                	add	a4,a4,a0
1c00b510:	f2f70a23          	sb	a5,-204(a4)
1c00b514:	00498713          	addi	a4,s3,4
1c00b518:	01275b63          	ble	s2,a4,1c00b52e <pos_libc_prf+0x284>
1c00b51c:	972a                	add	a4,a4,a0
1c00b51e:	f2f70a23          	sb	a5,-204(a4)
1c00b522:	0995                	addi	s3,s3,5
1c00b524:	0129d563          	ble	s2,s3,1c00b52e <pos_libc_prf+0x284>
1c00b528:	99aa                	add	s3,s3,a0
1c00b52a:	f2f98a23          	sb	a5,-204(s3)
1c00b52e:	89ca                	mv	s3,s2
1c00b530:	dc0980e3          	beqz	s3,1c00b2f0 <pos_libc_prf+0x46>
1c00b534:	8966                	mv	s2,s9
1c00b536:	5a7d                	li	s4,-1
1c00b538:	41940ab3          	sub	s5,s0,s9
1c00b53c:	a029                	j	1c00b546 <pos_libc_prf+0x29c>
1c00b53e:	01590433          	add	s0,s2,s5
1c00b542:	da0987e3          	beqz	s3,1c00b2f0 <pos_libc_prf+0x46>
1c00b546:	00094503          	lbu	a0,0(s2)
1c00b54a:	85ea                	mv	a1,s10
1c00b54c:	9b02                	jalr	s6
1c00b54e:	0905                	addi	s2,s2,1
1c00b550:	19fd                	addi	s3,s3,-1
1c00b552:	ff4516e3          	bne	a0,s4,1c00b53e <pos_libc_prf+0x294>
1c00b556:	547d                	li	s0,-1
1c00b558:	bb75                	j	1c00b314 <pos_libc_prf+0x6a>
1c00b55a:	da0d8de3          	beqz	s11,1c00b314 <pos_libc_prf+0x6a>
1c00b55e:	02000513          	li	a0,32
1c00b562:	e2ad98e3          	bne	s11,a0,1c00b392 <pos_libc_prf+0xe8>
1c00b566:	4785                	li	a5,1
1c00b568:	cc3e                	sw	a5,24(sp)
1c00b56a:	84d6                	mv	s1,s5
1c00b56c:	b525                	j	1c00b394 <pos_libc_prf+0xea>
1c00b56e:	4705                	li	a4,1
1c00b570:	ca3a                	sw	a4,20(sp)
1c00b572:	84d6                	mv	s1,s5
1c00b574:	b505                	j	1c00b394 <pos_libc_prf+0xea>
1c00b576:	03000893          	li	a7,48
1c00b57a:	c846                	sw	a7,16(sp)
1c00b57c:	84d6                	mv	s1,s5
1c00b57e:	bd19                	j	1c00b394 <pos_libc_prf+0xea>
1c00b580:	4685                	li	a3,1
1c00b582:	ce36                	sw	a3,28(sp)
1c00b584:	84d6                	mv	s1,s5
1c00b586:	b539                	j	1c00b394 <pos_libc_prf+0xea>
1c00b588:	4805                	li	a6,1
1c00b58a:	c642                	sw	a6,12(sp)
1c00b58c:	84d6                	mv	s1,s5
1c00b58e:	b519                	j	1c00b394 <pos_libc_prf+0xea>
1c00b590:	84d6                	mv	s1,s5
1c00b592:	0a85                	addi	s5,s5,1
1c00b594:	00291793          	slli	a5,s2,0x2
1c00b598:	97ca                	add	a5,a5,s2
1c00b59a:	0786                	slli	a5,a5,0x1
1c00b59c:	97ee                	add	a5,a5,s11
1c00b59e:	000acd83          	lbu	s11,0(s5)
1c00b5a2:	fd078913          	addi	s2,a5,-48
1c00b5a6:	fd0d8793          	addi	a5,s11,-48
1c00b5aa:	fef5f3e3          	bleu	a5,a1,1c00b590 <pos_libc_prf+0x2e6>
1c00b5ae:	00248993          	addi	s3,s1,2
1c00b5b2:	a811                	j	1c00b5c6 <pos_libc_prf+0x31c>
1c00b5b4:	000c2903          	lw	s2,0(s8)
1c00b5b8:	0c11                	addi	s8,s8,4
1c00b5ba:	14094663          	bltz	s2,1c00b706 <pos_libc_prf+0x45c>
1c00b5be:	000acd83          	lbu	s11,0(s5)
1c00b5c2:	00248993          	addi	s3,s1,2
1c00b5c6:	0c800713          	li	a4,200
1c00b5ca:	df2779e3          	bleu	s2,a4,1c00b3bc <pos_libc_prf+0x112>
1c00b5ce:	0c800913          	li	s2,200
1c00b5d2:	b3ed                	j	1c00b3bc <pos_libc_prf+0x112>
1c00b5d4:	06500713          	li	a4,101
1c00b5d8:	12eddc63          	ble	a4,s11,1c00b710 <pos_libc_prf+0x466>
1c00b5dc:	04700713          	li	a4,71
1c00b5e0:	55b74063          	blt	a4,s11,1c00bb20 <pos_libc_prf+0x876>
1c00b5e4:	04500713          	li	a4,69
1c00b5e8:	12edd463          	ble	a4,s11,1c00b710 <pos_libc_prf+0x466>
1c00b5ec:	d20d84e3          	beqz	s11,1c00b314 <pos_libc_prf+0x6a>
1c00b5f0:	02500713          	li	a4,37
1c00b5f4:	7ced9563          	bne	s11,a4,1c00bdbe <pos_libc_prf+0xb14>
1c00b5f8:	85ea                	mv	a1,s10
1c00b5fa:	02500513          	li	a0,37
1c00b5fe:	9b02                	jalr	s6
1c00b600:	57fd                	li	a5,-1
1c00b602:	f4f50ae3          	beq	a0,a5,1c00b556 <pos_libc_prf+0x2ac>
1c00b606:	0405                	addi	s0,s0,1
1c00b608:	b311                	j	1c00b30c <pos_libc_prf+0x62>
1c00b60a:	0009c783          	lbu	a5,0(s3)
1c00b60e:	02a00713          	li	a4,42
1c00b612:	00198693          	addi	a3,s3,1
1c00b616:	0ae79d63          	bne	a5,a4,1c00b6d0 <pos_libc_prf+0x426>
1c00b61a:	000c2a03          	lw	s4,0(s8)
1c00b61e:	0019cd83          	lbu	s11,1(s3)
1c00b622:	0c11                	addi	s8,s8,4
1c00b624:	0989                	addi	s3,s3,2
1c00b626:	0c800713          	li	a4,200
1c00b62a:	d9475ee3          	ble	s4,a4,1c00b3c6 <pos_libc_prf+0x11c>
1c00b62e:	5a7d                	li	s4,-1
1c00b630:	bb59                	j	1c00b3c6 <pos_libc_prf+0x11c>
1c00b632:	06e00713          	li	a4,110
1c00b636:	76ed8e63          	beq	s11,a4,1c00bdb2 <pos_libc_prf+0xb08>
1c00b63a:	5bb75663          	ble	s11,a4,1c00bbe6 <pos_libc_prf+0x93c>
1c00b63e:	4732                	lw	a4,12(sp)
1c00b640:	004c0513          	addi	a0,s8,4
1c00b644:	000c2683          	lw	a3,0(s8)
1c00b648:	1c070de3          	beqz	a4,1c00c022 <pos_libc_prf+0xd78>
1c00b64c:	03000793          	li	a5,48
1c00b650:	02f10223          	sb	a5,36(sp)
1c00b654:	16068de3          	beqz	a3,1c00bfce <pos_libc_prf+0xd24>
1c00b658:	02510593          	addi	a1,sp,37
1c00b65c:	872e                	mv	a4,a1
1c00b65e:	87ba                	mv	a5,a4
1c00b660:	0076f613          	andi	a2,a3,7
1c00b664:	0785                	addi	a5,a5,1
1c00b666:	03060613          	addi	a2,a2,48
1c00b66a:	828d                	srli	a3,a3,0x3
1c00b66c:	fec78fa3          	sb	a2,-1(a5)
1c00b670:	fae5                	bnez	a3,1c00b660 <pos_libc_prf+0x3b6>
1c00b672:	40b789b3          	sub	s3,a5,a1
1c00b676:	0149db63          	ble	s4,s3,1c00b68c <pos_libc_prf+0x3e2>
1c00b67a:	03000693          	li	a3,48
1c00b67e:	0785                	addi	a5,a5,1
1c00b680:	fed78fa3          	sb	a3,-1(a5)
1c00b684:	40b789b3          	sub	s3,a5,a1
1c00b688:	ff49cbe3          	blt	s3,s4,1c00b67e <pos_libc_prf+0x3d4>
1c00b68c:	00078023          	sb	zero,0(a5)
1c00b690:	17fd                	addi	a5,a5,-1
1c00b692:	00f77e63          	bleu	a5,a4,1c00b6ae <pos_libc_prf+0x404>
1c00b696:	00074603          	lbu	a2,0(a4)
1c00b69a:	0007c683          	lbu	a3,0(a5)
1c00b69e:	00c78023          	sb	a2,0(a5)
1c00b6a2:	00d70023          	sb	a3,0(a4)
1c00b6a6:	17fd                	addi	a5,a5,-1
1c00b6a8:	0705                	addi	a4,a4,1
1c00b6aa:	fef766e3          	bltu	a4,a5,1c00b696 <pos_libc_prf+0x3ec>
1c00b6ae:	4832                	lw	a6,12(sp)
1c00b6b0:	57fd                	li	a5,-1
1c00b6b2:	99c2                	add	s3,s3,a6
1c00b6b4:	22fa0ee3          	beq	s4,a5,1c00c0f0 <pos_libc_prf+0xe46>
1c00b6b8:	0c800793          	li	a5,200
1c00b6bc:	e937cde3          	blt	a5,s3,1c00b556 <pos_libc_prf+0x2ac>
1c00b6c0:	02000693          	li	a3,32
1c00b6c4:	8c2a                	mv	s8,a0
1c00b6c6:	c602                	sw	zero,12(sp)
1c00b6c8:	c836                	sw	a3,16(sp)
1c00b6ca:	d729cfe3          	blt	s3,s2,1c00b448 <pos_libc_prf+0x19e>
1c00b6ce:	b58d                	j	1c00b530 <pos_libc_prf+0x286>
1c00b6d0:	fd078593          	addi	a1,a5,-48
1c00b6d4:	4725                	li	a4,9
1c00b6d6:	8dbe                	mv	s11,a5
1c00b6d8:	4a01                	li	s4,0
1c00b6da:	4625                	li	a2,9
1c00b6dc:	00b77663          	bleu	a1,a4,1c00b6e8 <pos_libc_prf+0x43e>
1c00b6e0:	1070006f          	j	1c00bfe6 <pos_libc_prf+0xd3c>
1c00b6e4:	89b6                	mv	s3,a3
1c00b6e6:	0685                	addi	a3,a3,1
1c00b6e8:	002a1793          	slli	a5,s4,0x2
1c00b6ec:	97d2                	add	a5,a5,s4
1c00b6ee:	0786                	slli	a5,a5,0x1
1c00b6f0:	97ee                	add	a5,a5,s11
1c00b6f2:	0006cd83          	lbu	s11,0(a3)
1c00b6f6:	fd078a13          	addi	s4,a5,-48
1c00b6fa:	fd0d8793          	addi	a5,s11,-48
1c00b6fe:	fef673e3          	bleu	a5,a2,1c00b6e4 <pos_libc_prf+0x43a>
1c00b702:	0989                	addi	s3,s3,2
1c00b704:	b70d                	j	1c00b626 <pos_libc_prf+0x37c>
1c00b706:	4785                	li	a5,1
1c00b708:	41200933          	neg	s2,s2
1c00b70c:	ce3e                	sw	a5,28(sp)
1c00b70e:	bd45                	j	1c00b5be <pos_libc_prf+0x314>
1c00b710:	0c1d                	addi	s8,s8,7
1c00b712:	ff8c7c13          	andi	s8,s8,-8
1c00b716:	000c2703          	lw	a4,0(s8)
1c00b71a:	004c2803          	lw	a6,4(s8)
1c00b71e:	01575693          	srli	a3,a4,0x15
1c00b722:	00b81613          	slli	a2,a6,0xb
1c00b726:	8e55                	or	a2,a2,a3
1c00b728:	01485513          	srli	a0,a6,0x14
1c00b72c:	00b71693          	slli	a3,a4,0xb
1c00b730:	80000737          	lui	a4,0x80000
1c00b734:	fff74713          	not	a4,a4
1c00b738:	7ff57513          	andi	a0,a0,2047
1c00b73c:	7ff00593          	li	a1,2047
1c00b740:	0c21                	addi	s8,s8,8
1c00b742:	8e79                	and	a2,a2,a4
1c00b744:	0ab504e3          	beq	a0,a1,1c00bfec <pos_libc_prf+0xd42>
1c00b748:	04600593          	li	a1,70
1c00b74c:	00bd9463          	bne	s11,a1,1c00b754 <pos_libc_prf+0x4aa>
1c00b750:	06600d93          	li	s11,102
1c00b754:	00d56733          	or	a4,a0,a3
1c00b758:	8f51                	or	a4,a4,a2
1c00b75a:	7e070963          	beqz	a4,1c00bf4c <pos_libc_prf+0xca2>
1c00b75e:	800005b7          	lui	a1,0x80000
1c00b762:	c0250513          	addi	a0,a0,-1022
1c00b766:	8dd1                	or	a1,a1,a2
1c00b768:	26084ae3          	bltz	a6,1c00c1dc <pos_libc_prf+0xf32>
1c00b76c:	4852                	lw	a6,20(sp)
1c00b76e:	220808e3          	beqz	a6,1c00c19e <pos_libc_prf+0xef4>
1c00b772:	02b00713          	li	a4,43
1c00b776:	02e10223          	sb	a4,36(sp)
1c00b77a:	02510e93          	addi	t4,sp,37
1c00b77e:	5779                	li	a4,-2
1c00b780:	4301                	li	t1,0
1c00b782:	06e55763          	ble	a4,a0,1c00b7f0 <pos_libc_prf+0x546>
1c00b786:	33333837          	lui	a6,0x33333
1c00b78a:	800008b7          	lui	a7,0x80000
1c00b78e:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c00b792:	fff8c893          	not	a7,a7
1c00b796:	5e79                	li	t3,-2
1c00b798:	a011                	j	1c00b79c <pos_libc_prf+0x4f2>
1c00b79a:	853e                	mv	a0,a5
1c00b79c:	01f59613          	slli	a2,a1,0x1f
1c00b7a0:	0016d713          	srli	a4,a3,0x1
1c00b7a4:	0016f793          	andi	a5,a3,1
1c00b7a8:	8f51                	or	a4,a4,a2
1c00b7aa:	00e786b3          	add	a3,a5,a4
1c00b7ae:	00f6b7b3          	sltu	a5,a3,a5
1c00b7b2:	8185                	srli	a1,a1,0x1
1c00b7b4:	95be                	add	a1,a1,a5
1c00b7b6:	00150793          	addi	a5,a0,1
1c00b7ba:	feb860e3          	bltu	a6,a1,1c00b79a <pos_libc_prf+0x4f0>
1c00b7be:	00269613          	slli	a2,a3,0x2
1c00b7c2:	01e6df13          	srli	t5,a3,0x1e
1c00b7c6:	00259713          	slli	a4,a1,0x2
1c00b7ca:	96b2                	add	a3,a3,a2
1c00b7cc:	00ef6733          	or	a4,t5,a4
1c00b7d0:	95ba                	add	a1,a1,a4
1c00b7d2:	00c6b633          	sltu	a2,a3,a2
1c00b7d6:	95b2                	add	a1,a1,a2
1c00b7d8:	01f6d713          	srli	a4,a3,0x1f
1c00b7dc:	0509                	addi	a0,a0,2
1c00b7de:	137d                	addi	t1,t1,-1
1c00b7e0:	01159663          	bne	a1,a7,1c00b7ec <pos_libc_prf+0x542>
1c00b7e4:	0686                	slli	a3,a3,0x1
1c00b7e6:	ffe76593          	ori	a1,a4,-2
1c00b7ea:	853e                	mv	a0,a5
1c00b7ec:	fbc548e3          	blt	a0,t3,1c00b79c <pos_libc_prf+0x4f2>
1c00b7f0:	06a05563          	blez	a0,1c00b85a <pos_libc_prf+0x5b0>
1c00b7f4:	800008b7          	lui	a7,0x80000
1c00b7f8:	4e15                	li	t3,5
1c00b7fa:	fff8c893          	not	a7,a7
1c00b7fe:	00268613          	addi	a2,a3,2
1c00b802:	00d636b3          	sltu	a3,a2,a3
1c00b806:	95b6                	add	a1,a1,a3
1c00b808:	03c5d7b3          	divu	a5,a1,t3
1c00b80c:	00279713          	slli	a4,a5,0x2
1c00b810:	973e                	add	a4,a4,a5
1c00b812:	8d99                	sub	a1,a1,a4
1c00b814:	01d59713          	slli	a4,a1,0x1d
1c00b818:	00365593          	srli	a1,a2,0x3
1c00b81c:	8dd9                	or	a1,a1,a4
1c00b81e:	03c5d5b3          	divu	a1,a1,t3
1c00b822:	00359693          	slli	a3,a1,0x3
1c00b826:	00559713          	slli	a4,a1,0x5
1c00b82a:	9736                	add	a4,a4,a3
1c00b82c:	40e60733          	sub	a4,a2,a4
1c00b830:	03c75733          	divu	a4,a4,t3
1c00b834:	81f5                	srli	a1,a1,0x1d
1c00b836:	96ba                	add	a3,a3,a4
1c00b838:	97ae                	add	a5,a5,a1
1c00b83a:	00e6b733          	sltu	a4,a3,a4
1c00b83e:	00f705b3          	add	a1,a4,a5
1c00b842:	157d                	addi	a0,a0,-1
1c00b844:	0305                	addi	t1,t1,1
1c00b846:	01f6d793          	srli	a5,a3,0x1f
1c00b84a:	0586                	slli	a1,a1,0x1
1c00b84c:	8ddd                	or	a1,a1,a5
1c00b84e:	0686                	slli	a3,a3,0x1
1c00b850:	157d                	addi	a0,a0,-1
1c00b852:	feb8fae3          	bleu	a1,a7,1c00b846 <pos_libc_prf+0x59c>
1c00b856:	faa044e3          	bgtz	a0,1c00b7fe <pos_libc_prf+0x554>
1c00b85a:	4611                	li	a2,4
1c00b85c:	01f59713          	slli	a4,a1,0x1f
1c00b860:	0016d793          	srli	a5,a3,0x1
1c00b864:	8fd9                	or	a5,a5,a4
1c00b866:	8a85                	andi	a3,a3,1
1c00b868:	00f688b3          	add	a7,a3,a5
1c00b86c:	8185                	srli	a1,a1,0x1
1c00b86e:	00d8b6b3          	sltu	a3,a7,a3
1c00b872:	00b68733          	add	a4,a3,a1
1c00b876:	0505                	addi	a0,a0,1
1c00b878:	86c6                	mv	a3,a7
1c00b87a:	85ba                	mv	a1,a4
1c00b87c:	fec510e3          	bne	a0,a2,1c00b85c <pos_libc_prf+0x5b2>
1c00b880:	06700693          	li	a3,103
1c00b884:	040a48e3          	bltz	s4,1c00c0d4 <pos_libc_prf+0xe2a>
1c00b888:	70dd8b63          	beq	s11,a3,1c00bf9e <pos_libc_prf+0xcf4>
1c00b88c:	04700693          	li	a3,71
1c00b890:	70dd8763          	beq	s11,a3,1c00bf9e <pos_libc_prf+0xcf4>
1c00b894:	06600693          	li	a3,102
1c00b898:	08dd89e3          	beq	s11,a3,1c00c12a <pos_libc_prf+0xe80>
1c00b89c:	001a0e13          	addi	t3,s4,1
1c00b8a0:	46c1                	li	a3,16
1c00b8a2:	01c6d363          	ble	t3,a3,1c00b8a8 <pos_libc_prf+0x5fe>
1c00b8a6:	4e41                	li	t3,16
1c00b8a8:	1e7d                	addi	t3,t3,-1
1c00b8aa:	4f81                	li	t6,0
1c00b8ac:	4681                	li	a3,0
1c00b8ae:	08000637          	lui	a2,0x8000
1c00b8b2:	4f15                	li	t5,5
1c00b8b4:	52fd                	li	t0,-1
1c00b8b6:	00268593          	addi	a1,a3,2
1c00b8ba:	00d5b7b3          	sltu	a5,a1,a3
1c00b8be:	97b2                	add	a5,a5,a2
1c00b8c0:	03e7d633          	divu	a2,a5,t5
1c00b8c4:	00261693          	slli	a3,a2,0x2
1c00b8c8:	96b2                	add	a3,a3,a2
1c00b8ca:	8f95                	sub	a5,a5,a3
1c00b8cc:	07f6                	slli	a5,a5,0x1d
1c00b8ce:	0035d513          	srli	a0,a1,0x3
1c00b8d2:	8d5d                	or	a0,a0,a5
1c00b8d4:	03e55533          	divu	a0,a0,t5
1c00b8d8:	00351693          	slli	a3,a0,0x3
1c00b8dc:	00551793          	slli	a5,a0,0x5
1c00b8e0:	97b6                	add	a5,a5,a3
1c00b8e2:	40f587b3          	sub	a5,a1,a5
1c00b8e6:	03e7d7b3          	divu	a5,a5,t5
1c00b8ea:	8175                	srli	a0,a0,0x1d
1c00b8ec:	96be                	add	a3,a3,a5
1c00b8ee:	00f6b7b3          	sltu	a5,a3,a5
1c00b8f2:	962a                	add	a2,a2,a0
1c00b8f4:	963e                	add	a2,a2,a5
1c00b8f6:	01f61513          	slli	a0,a2,0x1f
1c00b8fa:	0016d793          	srli	a5,a3,0x1
1c00b8fe:	0016f593          	andi	a1,a3,1
1c00b902:	8fc9                	or	a5,a5,a0
1c00b904:	00f586b3          	add	a3,a1,a5
1c00b908:	8205                	srli	a2,a2,0x1
1c00b90a:	00b6b7b3          	sltu	a5,a3,a1
1c00b90e:	1e7d                	addi	t3,t3,-1
1c00b910:	963e                	add	a2,a2,a5
1c00b912:	fa5e12e3          	bne	t3,t0,1c00b8b6 <pos_libc_prf+0x60c>
1c00b916:	96c6                	add	a3,a3,a7
1c00b918:	963a                	add	a2,a2,a4
1c00b91a:	0116b8b3          	sltu	a7,a3,a7
1c00b91e:	9646                	add	a2,a2,a7
1c00b920:	f00005b7          	lui	a1,0xf0000
1c00b924:	8df1                	and	a1,a1,a2
1c00b926:	8736                	mv	a4,a3
1c00b928:	cdb9                	beqz	a1,1c00b986 <pos_libc_prf+0x6dc>
1c00b92a:	0689                	addi	a3,a3,2
1c00b92c:	00e6b733          	sltu	a4,a3,a4
1c00b930:	963a                	add	a2,a2,a4
1c00b932:	4815                	li	a6,5
1c00b934:	03065533          	divu	a0,a2,a6
1c00b938:	00251713          	slli	a4,a0,0x2
1c00b93c:	972a                	add	a4,a4,a0
1c00b93e:	8e19                	sub	a2,a2,a4
1c00b940:	01d61713          	slli	a4,a2,0x1d
1c00b944:	0036d593          	srli	a1,a3,0x3
1c00b948:	8dd9                	or	a1,a1,a4
1c00b94a:	0305d5b3          	divu	a1,a1,a6
1c00b94e:	00359613          	slli	a2,a1,0x3
1c00b952:	00559713          	slli	a4,a1,0x5
1c00b956:	9732                	add	a4,a4,a2
1c00b958:	40e68733          	sub	a4,a3,a4
1c00b95c:	03075733          	divu	a4,a4,a6
1c00b960:	81f5                	srli	a1,a1,0x1d
1c00b962:	963a                	add	a2,a2,a4
1c00b964:	00e63733          	sltu	a4,a2,a4
1c00b968:	95aa                	add	a1,a1,a0
1c00b96a:	00b706b3          	add	a3,a4,a1
1c00b96e:	01f69593          	slli	a1,a3,0x1f
1c00b972:	00165713          	srli	a4,a2,0x1
1c00b976:	8f4d                	or	a4,a4,a1
1c00b978:	8a05                	andi	a2,a2,1
1c00b97a:	9732                	add	a4,a4,a2
1c00b97c:	8285                	srli	a3,a3,0x1
1c00b97e:	00c73633          	sltu	a2,a4,a2
1c00b982:	9636                	add	a2,a2,a3
1c00b984:	0305                	addi	t1,t1,1
1c00b986:	001e8993          	addi	s3,t4,1
1c00b98a:	06600693          	li	a3,102
1c00b98e:	85ce                	mv	a1,s3
1c00b990:	6add8663          	beq	s11,a3,1c00c03c <pos_libc_prf+0xd92>
1c00b994:	00271693          	slli	a3,a4,0x2
1c00b998:	01e75593          	srli	a1,a4,0x1e
1c00b99c:	00261513          	slli	a0,a2,0x2
1c00b9a0:	9736                	add	a4,a4,a3
1c00b9a2:	8d4d                	or	a0,a0,a1
1c00b9a4:	962a                	add	a2,a2,a0
1c00b9a6:	00d735b3          	sltu	a1,a4,a3
1c00b9aa:	95b2                	add	a1,a1,a2
1c00b9ac:	01f75693          	srli	a3,a4,0x1f
1c00b9b0:	0586                	slli	a1,a1,0x1
1c00b9b2:	8dd5                	or	a1,a1,a3
1c00b9b4:	01c5d693          	srli	a3,a1,0x1c
1c00b9b8:	03068613          	addi	a2,a3,48
1c00b9bc:	00d036b3          	snez	a3,a3
1c00b9c0:	10000537          	lui	a0,0x10000
1c00b9c4:	40d30333          	sub	t1,t1,a3
1c00b9c8:	46b2                	lw	a3,12(sp)
1c00b9ca:	157d                	addi	a0,a0,-1
1c00b9cc:	00ce8023          	sb	a2,0(t4)
1c00b9d0:	0706                	slli	a4,a4,0x1
1c00b9d2:	8de9                	and	a1,a1,a0
1c00b9d4:	64068b63          	beqz	a3,1c00c02a <pos_libc_prf+0xd80>
1c00b9d8:	02e00693          	li	a3,46
1c00b9dc:	00de80a3          	sb	a3,1(t4)
1c00b9e0:	002e8513          	addi	a0,t4,2
1c00b9e4:	020a00e3          	beqz	s4,1c00c204 <pos_libc_prf+0xf5a>
1c00b9e8:	014509b3          	add	s3,a0,s4
1c00b9ec:	48bd                	li	a7,15
1c00b9ee:	03000e13          	li	t3,48
1c00b9f2:	00271793          	slli	a5,a4,0x2
1c00b9f6:	01e75813          	srli	a6,a4,0x1e
1c00b9fa:	00259693          	slli	a3,a1,0x2
1c00b9fe:	00e78633          	add	a2,a5,a4
1c00ba02:	00d866b3          	or	a3,a6,a3
1c00ba06:	96ae                	add	a3,a3,a1
1c00ba08:	00f637b3          	sltu	a5,a2,a5
1c00ba0c:	97b6                	add	a5,a5,a3
1c00ba0e:	0786                	slli	a5,a5,0x1
1c00ba10:	01f65693          	srli	a3,a2,0x1f
1c00ba14:	8fd5                	or	a5,a5,a3
1c00ba16:	01c7d693          	srli	a3,a5,0x1c
1c00ba1a:	03068693          	addi	a3,a3,48
1c00ba1e:	0505                	addi	a0,a0,1
1c00ba20:	3b105663          	blez	a7,1c00bdcc <pos_libc_prf+0xb22>
1c00ba24:	10000837          	lui	a6,0x10000
1c00ba28:	187d                	addi	a6,a6,-1
1c00ba2a:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c00ba2e:	18fd                	addi	a7,a7,-1
1c00ba30:	00161713          	slli	a4,a2,0x1
1c00ba34:	0107f5b3          	and	a1,a5,a6
1c00ba38:	faa99de3          	bne	s3,a0,1c00b9f2 <pos_libc_prf+0x748>
1c00ba3c:	0c0f9263          	bnez	t6,1c00bb00 <pos_libc_prf+0x856>
1c00ba40:	fdfdf713          	andi	a4,s11,-33
1c00ba44:	04500693          	li	a3,69
1c00ba48:	02d71963          	bne	a4,a3,1c00ba7a <pos_libc_prf+0x7d0>
1c00ba4c:	87ee                	mv	a5,s11
1c00ba4e:	00f98023          	sb	a5,0(s3)
1c00ba52:	6a034763          	bltz	t1,1c00c100 <pos_libc_prf+0xe56>
1c00ba56:	02b00793          	li	a5,43
1c00ba5a:	00f980a3          	sb	a5,1(s3)
1c00ba5e:	47a9                	li	a5,10
1c00ba60:	02f34733          	div	a4,t1,a5
1c00ba64:	02f367b3          	rem	a5,t1,a5
1c00ba68:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c00ba6c:	03078793          	addi	a5,a5,48
1c00ba70:	00e98123          	sb	a4,2(s3)
1c00ba74:	00f981a3          	sb	a5,3(s3)
1c00ba78:	0991                	addi	s3,s3,4
1c00ba7a:	00098023          	sb	zero,0(s3)
1c00ba7e:	419989b3          	sub	s3,s3,s9
1c00ba82:	48d2                	lw	a7,20(sp)
1c00ba84:	4662                	lw	a2,24(sp)
1c00ba86:	00c8e8b3          	or	a7,a7,a2
1c00ba8a:	c646                	sw	a7,12(sp)
1c00ba8c:	34089d63          	bnez	a7,1c00bde6 <pos_libc_prf+0xb3c>
1c00ba90:	02414703          	lbu	a4,36(sp)
1c00ba94:	02d00793          	li	a5,45
1c00ba98:	34f70763          	beq	a4,a5,1c00bde6 <pos_libc_prf+0xb3c>
1c00ba9c:	0c800793          	li	a5,200
1c00baa0:	ab37cbe3          	blt	a5,s3,1c00b556 <pos_libc_prf+0x2ac>
1c00baa4:	9b29c2e3          	blt	s3,s2,1c00b448 <pos_libc_prf+0x19e>
1c00baa8:	b461                	j	1c00b530 <pos_libc_prf+0x286>
1c00baaa:	0585                	addi	a1,a1,1
1c00baac:	00271793          	slli	a5,a4,0x2
1c00bab0:	01e75e13          	srli	t3,a4,0x1e
1c00bab4:	00261693          	slli	a3,a2,0x2
1c00bab8:	00e788b3          	add	a7,a5,a4
1c00babc:	00de66b3          	or	a3,t3,a3
1c00bac0:	96b2                	add	a3,a3,a2
1c00bac2:	00f8b7b3          	sltu	a5,a7,a5
1c00bac6:	97b6                	add	a5,a5,a3
1c00bac8:	0786                	slli	a5,a5,0x1
1c00baca:	01f8d693          	srli	a3,a7,0x1f
1c00bace:	8fd5                	or	a5,a5,a3
1c00bad0:	01c7de13          	srli	t3,a5,0x1c
1c00bad4:	03000693          	li	a3,48
1c00bad8:	00a05c63          	blez	a0,1c00baf0 <pos_libc_prf+0x846>
1c00badc:	00189713          	slli	a4,a7,0x1
1c00bae0:	100008b7          	lui	a7,0x10000
1c00bae4:	18fd                	addi	a7,a7,-1
1c00bae6:	030e0693          	addi	a3,t3,48
1c00baea:	157d                	addi	a0,a0,-1
1c00baec:	0117f633          	and	a2,a5,a7
1c00baf0:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c00baf4:	fab99be3          	bne	s3,a1,1c00baaa <pos_libc_prf+0x800>
1c00baf8:	014809b3          	add	s3,a6,s4
1c00bafc:	f60f8fe3          	beqz	t6,1c00ba7a <pos_libc_prf+0x7d0>
1c00bb00:	03000613          	li	a2,48
1c00bb04:	a011                	j	1c00bb08 <pos_libc_prf+0x85e>
1c00bb06:	89ba                	mv	s3,a4
1c00bb08:	fff9c683          	lbu	a3,-1(s3)
1c00bb0c:	fff98713          	addi	a4,s3,-1
1c00bb10:	fec68be3          	beq	a3,a2,1c00bb06 <pos_libc_prf+0x85c>
1c00bb14:	02e00613          	li	a2,46
1c00bb18:	f2c694e3          	bne	a3,a2,1c00ba40 <pos_libc_prf+0x796>
1c00bb1c:	89ba                	mv	s3,a4
1c00bb1e:	b70d                	j	1c00ba40 <pos_libc_prf+0x796>
1c00bb20:	06300713          	li	a4,99
1c00bb24:	16ed8863          	beq	s11,a4,1c00bc94 <pos_libc_prf+0x9ea>
1c00bb28:	0db74363          	blt	a4,s11,1c00bbee <pos_libc_prf+0x944>
1c00bb2c:	05800713          	li	a4,88
1c00bb30:	28ed9763          	bne	s11,a4,1c00bdbe <pos_libc_prf+0xb14>
1c00bb34:	48b2                	lw	a7,12(sp)
1c00bb36:	004c0813          	addi	a6,s8,4
1c00bb3a:	000c2583          	lw	a1,0(s8)
1c00bb3e:	3c088a63          	beqz	a7,1c00bf12 <pos_libc_prf+0xc68>
1c00bb42:	7761                	lui	a4,0xffff8
1c00bb44:	83074713          	xori	a4,a4,-2000
1c00bb48:	02e11223          	sh	a4,36(sp)
1c00bb4c:	4889                	li	a7,2
1c00bb4e:	02610693          	addi	a3,sp,38
1c00bb52:	8736                	mv	a4,a3
1c00bb54:	4e25                	li	t3,9
1c00bb56:	00f5f613          	andi	a2,a1,15
1c00bb5a:	0ff67793          	andi	a5,a2,255
1c00bb5e:	03078513          	addi	a0,a5,48
1c00bb62:	8191                	srli	a1,a1,0x4
1c00bb64:	05778793          	addi	a5,a5,87
1c00bb68:	0705                	addi	a4,a4,1
1c00bb6a:	06ce6a63          	bltu	t3,a2,1c00bbde <pos_libc_prf+0x934>
1c00bb6e:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00bb72:	f1f5                	bnez	a1,1c00bb56 <pos_libc_prf+0x8ac>
1c00bb74:	40d709b3          	sub	s3,a4,a3
1c00bb78:	0149db63          	ble	s4,s3,1c00bb8e <pos_libc_prf+0x8e4>
1c00bb7c:	03000613          	li	a2,48
1c00bb80:	0705                	addi	a4,a4,1
1c00bb82:	fec70fa3          	sb	a2,-1(a4)
1c00bb86:	40d709b3          	sub	s3,a4,a3
1c00bb8a:	ff49cbe3          	blt	s3,s4,1c00bb80 <pos_libc_prf+0x8d6>
1c00bb8e:	00070023          	sb	zero,0(a4)
1c00bb92:	177d                	addi	a4,a4,-1
1c00bb94:	00e6fe63          	bleu	a4,a3,1c00bbb0 <pos_libc_prf+0x906>
1c00bb98:	0006c603          	lbu	a2,0(a3)
1c00bb9c:	00074783          	lbu	a5,0(a4)
1c00bba0:	00c70023          	sb	a2,0(a4)
1c00bba4:	00f68023          	sb	a5,0(a3)
1c00bba8:	177d                	addi	a4,a4,-1
1c00bbaa:	0685                	addi	a3,a3,1
1c00bbac:	fee6e6e3          	bltu	a3,a4,1c00bb98 <pos_libc_prf+0x8ee>
1c00bbb0:	05800713          	li	a4,88
1c00bbb4:	36ed8263          	beq	s11,a4,1c00bf18 <pos_libc_prf+0xc6e>
1c00bbb8:	46b2                	lw	a3,12(sp)
1c00bbba:	99c6                	add	s3,s3,a7
1c00bbbc:	c299                	beqz	a3,1c00bbc2 <pos_libc_prf+0x918>
1c00bbbe:	4709                	li	a4,2
1c00bbc0:	c63a                	sw	a4,12(sp)
1c00bbc2:	57fd                	li	a5,-1
1c00bbc4:	3afa0263          	beq	s4,a5,1c00bf68 <pos_libc_prf+0xcbe>
1c00bbc8:	0c800793          	li	a5,200
1c00bbcc:	9937c5e3          	blt	a5,s3,1c00b556 <pos_libc_prf+0x2ac>
1c00bbd0:	02000793          	li	a5,32
1c00bbd4:	c83e                	sw	a5,16(sp)
1c00bbd6:	8c42                	mv	s8,a6
1c00bbd8:	8729c8e3          	blt	s3,s2,1c00b448 <pos_libc_prf+0x19e>
1c00bbdc:	ba91                	j	1c00b530 <pos_libc_prf+0x286>
1c00bbde:	fef70fa3          	sb	a5,-1(a4)
1c00bbe2:	f9b5                	bnez	a1,1c00bb56 <pos_libc_prf+0x8ac>
1c00bbe4:	bf41                	j	1c00bb74 <pos_libc_prf+0x8ca>
1c00bbe6:	06900713          	li	a4,105
1c00bbea:	1ced9a63          	bne	s11,a4,1c00bdbe <pos_libc_prf+0xb14>
1c00bbee:	000c2583          	lw	a1,0(s8)
1c00bbf2:	0c11                	addi	s8,s8,4
1c00bbf4:	3805c863          	bltz	a1,1c00bf84 <pos_libc_prf+0xcda>
1c00bbf8:	48d2                	lw	a7,20(sp)
1c00bbfa:	872e                	mv	a4,a1
1c00bbfc:	36089d63          	bnez	a7,1c00bf76 <pos_libc_prf+0xccc>
1c00bc00:	4662                	lw	a2,24(sp)
1c00bc02:	87e6                	mv	a5,s9
1c00bc04:	c619                	beqz	a2,1c00bc12 <pos_libc_prf+0x968>
1c00bc06:	02000793          	li	a5,32
1c00bc0a:	02f10223          	sb	a5,36(sp)
1c00bc0e:	02510793          	addi	a5,sp,37
1c00bc12:	89be                	mv	s3,a5
1c00bc14:	4629                	li	a2,10
1c00bc16:	02c776b3          	remu	a3,a4,a2
1c00bc1a:	02c75733          	divu	a4,a4,a2
1c00bc1e:	0985                	addi	s3,s3,1
1c00bc20:	03068693          	addi	a3,a3,48
1c00bc24:	fed98fa3          	sb	a3,-1(s3)
1c00bc28:	f77d                	bnez	a4,1c00bc16 <pos_libc_prf+0x96c>
1c00bc2a:	40f98733          	sub	a4,s3,a5
1c00bc2e:	01475b63          	ble	s4,a4,1c00bc44 <pos_libc_prf+0x99a>
1c00bc32:	03000693          	li	a3,48
1c00bc36:	0985                	addi	s3,s3,1
1c00bc38:	fed98fa3          	sb	a3,-1(s3)
1c00bc3c:	40f98733          	sub	a4,s3,a5
1c00bc40:	ff474be3          	blt	a4,s4,1c00bc36 <pos_libc_prf+0x98c>
1c00bc44:	00098023          	sb	zero,0(s3)
1c00bc48:	fff98713          	addi	a4,s3,-1
1c00bc4c:	00e7fe63          	bleu	a4,a5,1c00bc68 <pos_libc_prf+0x9be>
1c00bc50:	0007c603          	lbu	a2,0(a5)
1c00bc54:	00074683          	lbu	a3,0(a4)
1c00bc58:	00c70023          	sb	a2,0(a4)
1c00bc5c:	00d78023          	sb	a3,0(a5)
1c00bc60:	177d                	addi	a4,a4,-1
1c00bc62:	0785                	addi	a5,a5,1
1c00bc64:	fee7e6e3          	bltu	a5,a4,1c00bc50 <pos_libc_prf+0x9a6>
1c00bc68:	46d2                	lw	a3,20(sp)
1c00bc6a:	4762                	lw	a4,24(sp)
1c00bc6c:	419989b3          	sub	s3,s3,s9
1c00bc70:	8ed9                	or	a3,a3,a4
1c00bc72:	c636                	sw	a3,12(sp)
1c00bc74:	e299                	bnez	a3,1c00bc7a <pos_libc_prf+0x9d0>
1c00bc76:	81fd                	srli	a1,a1,0x1f
1c00bc78:	c62e                	sw	a1,12(sp)
1c00bc7a:	57fd                	li	a5,-1
1c00bc7c:	e2fa00e3          	beq	s4,a5,1c00ba9c <pos_libc_prf+0x7f2>
1c00bc80:	0c800793          	li	a5,200
1c00bc84:	8d37c9e3          	blt	a5,s3,1c00b556 <pos_libc_prf+0x2ac>
1c00bc88:	02000793          	li	a5,32
1c00bc8c:	c83e                	sw	a5,16(sp)
1c00bc8e:	fb29cd63          	blt	s3,s2,1c00b448 <pos_libc_prf+0x19e>
1c00bc92:	b879                	j	1c00b530 <pos_libc_prf+0x286>
1c00bc94:	000c2783          	lw	a5,0(s8)
1c00bc98:	020102a3          	sb	zero,37(sp)
1c00bc9c:	02f10223          	sb	a5,36(sp)
1c00bca0:	0c11                	addi	s8,s8,4
1c00bca2:	4985                	li	s3,1
1c00bca4:	f9eff06f          	j	1c00b442 <pos_libc_prf+0x198>
1c00bca8:	000c2703          	lw	a4,0(s8)
1c00bcac:	87e6                	mv	a5,s9
1c00bcae:	0c11                	addi	s8,s8,4
1c00bcb0:	4629                	li	a2,10
1c00bcb2:	02c776b3          	remu	a3,a4,a2
1c00bcb6:	02c75733          	divu	a4,a4,a2
1c00bcba:	0785                	addi	a5,a5,1
1c00bcbc:	03068693          	addi	a3,a3,48
1c00bcc0:	fed78fa3          	sb	a3,-1(a5)
1c00bcc4:	f77d                	bnez	a4,1c00bcb2 <pos_libc_prf+0xa08>
1c00bcc6:	419789b3          	sub	s3,a5,s9
1c00bcca:	0149db63          	ble	s4,s3,1c00bce0 <pos_libc_prf+0xa36>
1c00bcce:	03000713          	li	a4,48
1c00bcd2:	0785                	addi	a5,a5,1
1c00bcd4:	fee78fa3          	sb	a4,-1(a5)
1c00bcd8:	419789b3          	sub	s3,a5,s9
1c00bcdc:	ff49cbe3          	blt	s3,s4,1c00bcd2 <pos_libc_prf+0xa28>
1c00bce0:	00078023          	sb	zero,0(a5)
1c00bce4:	17fd                	addi	a5,a5,-1
1c00bce6:	00fcff63          	bleu	a5,s9,1c00bd04 <pos_libc_prf+0xa5a>
1c00bcea:	8766                	mv	a4,s9
1c00bcec:	00074603          	lbu	a2,0(a4)
1c00bcf0:	0007c683          	lbu	a3,0(a5)
1c00bcf4:	00c78023          	sb	a2,0(a5)
1c00bcf8:	00d70023          	sb	a3,0(a4)
1c00bcfc:	17fd                	addi	a5,a5,-1
1c00bcfe:	0705                	addi	a4,a4,1
1c00bd00:	fef766e3          	bltu	a4,a5,1c00bcec <pos_libc_prf+0xa42>
1c00bd04:	57fd                	li	a5,-1
1c00bd06:	0cfa0a63          	beq	s4,a5,1c00bdda <pos_libc_prf+0xb30>
1c00bd0a:	0c800793          	li	a5,200
1c00bd0e:	8537c4e3          	blt	a5,s3,1c00b556 <pos_libc_prf+0x2ac>
1c00bd12:	02000813          	li	a6,32
1c00bd16:	c602                	sw	zero,12(sp)
1c00bd18:	c842                	sw	a6,16(sp)
1c00bd1a:	ba45                	j	1c00b6ca <pos_libc_prf+0x420>
1c00bd1c:	77e1                	lui	a5,0xffff8
1c00bd1e:	8307c793          	xori	a5,a5,-2000
1c00bd22:	02610713          	addi	a4,sp,38
1c00bd26:	000c2603          	lw	a2,0(s8)
1c00bd2a:	02f11223          	sh	a5,36(sp)
1c00bd2e:	0c11                	addi	s8,s8,4
1c00bd30:	87ba                	mv	a5,a4
1c00bd32:	4825                	li	a6,9
1c00bd34:	00f67593          	andi	a1,a2,15
1c00bd38:	0ff5f693          	andi	a3,a1,255
1c00bd3c:	03068513          	addi	a0,a3,48
1c00bd40:	8211                	srli	a2,a2,0x4
1c00bd42:	05768693          	addi	a3,a3,87
1c00bd46:	0785                	addi	a5,a5,1
1c00bd48:	06b86163          	bltu	a6,a1,1c00bdaa <pos_libc_prf+0xb00>
1c00bd4c:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c00bd50:	f275                	bnez	a2,1c00bd34 <pos_libc_prf+0xa8a>
1c00bd52:	40e789b3          	sub	s3,a5,a4
1c00bd56:	469d                	li	a3,7
1c00bd58:	0136cb63          	blt	a3,s3,1c00bd6e <pos_libc_prf+0xac4>
1c00bd5c:	03000613          	li	a2,48
1c00bd60:	0785                	addi	a5,a5,1
1c00bd62:	fec78fa3          	sb	a2,-1(a5)
1c00bd66:	40e789b3          	sub	s3,a5,a4
1c00bd6a:	ff36dbe3          	ble	s3,a3,1c00bd60 <pos_libc_prf+0xab6>
1c00bd6e:	00078023          	sb	zero,0(a5)
1c00bd72:	17fd                	addi	a5,a5,-1
1c00bd74:	00f77e63          	bleu	a5,a4,1c00bd90 <pos_libc_prf+0xae6>
1c00bd78:	00074603          	lbu	a2,0(a4)
1c00bd7c:	0007c683          	lbu	a3,0(a5)
1c00bd80:	00c78023          	sb	a2,0(a5)
1c00bd84:	00d70023          	sb	a3,0(a4)
1c00bd88:	17fd                	addi	a5,a5,-1
1c00bd8a:	0705                	addi	a4,a4,1
1c00bd8c:	fef766e3          	bltu	a4,a5,1c00bd78 <pos_libc_prf+0xace>
1c00bd90:	57fd                	li	a5,-1
1c00bd92:	0989                	addi	s3,s3,2
1c00bd94:	04fa0363          	beq	s4,a5,1c00bdda <pos_libc_prf+0xb30>
1c00bd98:	0c800793          	li	a5,200
1c00bd9c:	fb37cd63          	blt	a5,s3,1c00b556 <pos_libc_prf+0x2ac>
1c00bda0:	02000893          	li	a7,32
1c00bda4:	c602                	sw	zero,12(sp)
1c00bda6:	c846                	sw	a7,16(sp)
1c00bda8:	b20d                	j	1c00b6ca <pos_libc_prf+0x420>
1c00bdaa:	fed78fa3          	sb	a3,-1(a5)
1c00bdae:	f259                	bnez	a2,1c00bd34 <pos_libc_prf+0xa8a>
1c00bdb0:	b74d                	j	1c00bd52 <pos_libc_prf+0xaa8>
1c00bdb2:	000c2783          	lw	a5,0(s8)
1c00bdb6:	0c11                	addi	s8,s8,4
1c00bdb8:	c380                	sw	s0,0(a5)
1c00bdba:	d36ff06f          	j	1c00b2f0 <pos_libc_prf+0x46>
1c00bdbe:	0c800713          	li	a4,200
1c00bdc2:	d3b75763          	ble	s11,a4,1c00b2f0 <pos_libc_prf+0x46>
1c00bdc6:	547d                	li	s0,-1
1c00bdc8:	d4cff06f          	j	1c00b314 <pos_libc_prf+0x6a>
1c00bdcc:	ffc50fa3          	sb	t3,-1(a0)
1c00bdd0:	c2a991e3          	bne	s3,a0,1c00b9f2 <pos_libc_prf+0x748>
1c00bdd4:	c60f86e3          	beqz	t6,1c00ba40 <pos_libc_prf+0x796>
1c00bdd8:	b325                	j	1c00bb00 <pos_libc_prf+0x856>
1c00bdda:	0c800793          	li	a5,200
1c00bdde:	f737cc63          	blt	a5,s3,1c00b556 <pos_libc_prf+0x2ac>
1c00bde2:	c602                	sw	zero,12(sp)
1c00bde4:	b0dd                	j	1c00b6ca <pos_libc_prf+0x420>
1c00bde6:	0c800793          	li	a5,200
1c00bdea:	f737c663          	blt	a5,s3,1c00b556 <pos_libc_prf+0x2ac>
1c00bdee:	4705                	li	a4,1
1c00bdf0:	c63a                	sw	a4,12(sp)
1c00bdf2:	b8e1                	j	1c00b6ca <pos_libc_prf+0x420>
1c00bdf4:	41390a33          	sub	s4,s2,s3
1c00bdf8:	00198613          	addi	a2,s3,1
1c00bdfc:	85e6                	mv	a1,s9
1c00bdfe:	014c8533          	add	a0,s9,s4
1c00be02:	a4aff0ef          	jal	ra,1c00b04c <memmove>
1c00be06:	46c2                	lw	a3,16(sp)
1c00be08:	02000793          	li	a5,32
1c00be0c:	30f68163          	beq	a3,a5,1c00c10e <pos_libc_prf+0xe64>
1c00be10:	4732                	lw	a4,12(sp)
1c00be12:	89ca                	mv	s3,s2
1c00be14:	9a3a                	add	s4,s4,a4
1c00be16:	f1475d63          	ble	s4,a4,1c00b530 <pos_libc_prf+0x286>
1c00be1a:	4832                	lw	a6,12(sp)
1c00be1c:	4715                	li	a4,5
1c00be1e:	010c87b3          	add	a5,s9,a6
1c00be22:	40f007b3          	neg	a5,a5
1c00be26:	8b8d                	andi	a5,a5,3
1c00be28:	00378693          	addi	a3,a5,3
1c00be2c:	410a05b3          	sub	a1,s4,a6
1c00be30:	00e6f363          	bleu	a4,a3,1c00be36 <pos_libc_prf+0xb8c>
1c00be34:	4695                	li	a3,5
1c00be36:	48b2                	lw	a7,12(sp)
1c00be38:	fffa0713          	addi	a4,s4,-1
1c00be3c:	41170733          	sub	a4,a4,a7
1c00be40:	06d76b63          	bltu	a4,a3,1c00beb6 <pos_libc_prf+0xc0c>
1c00be44:	86c6                	mv	a3,a7
1c00be46:	cb9d                	beqz	a5,1c00be7c <pos_libc_prf+0xbd2>
1c00be48:	46c2                	lw	a3,16(sp)
1c00be4a:	1988                	addi	a0,sp,240
1c00be4c:	01150733          	add	a4,a0,a7
1c00be50:	f2d70a23          	sb	a3,-204(a4)
1c00be54:	4705                	li	a4,1
1c00be56:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c00be5a:	02e78163          	beq	a5,a4,1c00be7c <pos_libc_prf+0xbd2>
1c00be5e:	4742                	lw	a4,16(sp)
1c00be60:	96aa                	add	a3,a3,a0
1c00be62:	f2e68a23          	sb	a4,-204(a3)
1c00be66:	470d                	li	a4,3
1c00be68:	00288693          	addi	a3,a7,2
1c00be6c:	00e79863          	bne	a5,a4,1c00be7c <pos_libc_prf+0xbd2>
1c00be70:	4842                	lw	a6,16(sp)
1c00be72:	96aa                	add	a3,a3,a0
1c00be74:	f3068a23          	sb	a6,-204(a3)
1c00be78:	00388693          	addi	a3,a7,3
1c00be7c:	48c2                	lw	a7,16(sp)
1c00be7e:	4832                	lw	a6,12(sp)
1c00be80:	00889713          	slli	a4,a7,0x8
1c00be84:	01089513          	slli	a0,a7,0x10
1c00be88:	00e8e733          	or	a4,a7,a4
1c00be8c:	8d9d                	sub	a1,a1,a5
1c00be8e:	01889613          	slli	a2,a7,0x18
1c00be92:	8f49                	or	a4,a4,a0
1c00be94:	97c2                	add	a5,a5,a6
1c00be96:	8f51                	or	a4,a4,a2
1c00be98:	0025d513          	srli	a0,a1,0x2
1c00be9c:	97e6                	add	a5,a5,s9
1c00be9e:	4601                	li	a2,0
1c00bea0:	c398                	sw	a4,0(a5)
1c00bea2:	0605                	addi	a2,a2,1
1c00bea4:	0791                	addi	a5,a5,4
1c00bea6:	fea66de3          	bltu	a2,a0,1c00bea0 <pos_libc_prf+0xbf6>
1c00beaa:	ffc5f793          	andi	a5,a1,-4
1c00beae:	96be                	add	a3,a3,a5
1c00beb0:	c636                	sw	a3,12(sp)
1c00beb2:	e6b78e63          	beq	a5,a1,1c00b52e <pos_libc_prf+0x284>
1c00beb6:	46b2                	lw	a3,12(sp)
1c00beb8:	0f010893          	addi	a7,sp,240
1c00bebc:	4742                	lw	a4,16(sp)
1c00bebe:	00d887b3          	add	a5,a7,a3
1c00bec2:	f2e78a23          	sb	a4,-204(a5)
1c00bec6:	00168793          	addi	a5,a3,1
1c00beca:	e747d263          	ble	s4,a5,1c00b52e <pos_libc_prf+0x284>
1c00bece:	97c6                	add	a5,a5,a7
1c00bed0:	f2e78a23          	sb	a4,-204(a5)
1c00bed4:	00268793          	addi	a5,a3,2
1c00bed8:	e547db63          	ble	s4,a5,1c00b52e <pos_libc_prf+0x284>
1c00bedc:	97c6                	add	a5,a5,a7
1c00bede:	f2e78a23          	sb	a4,-204(a5)
1c00bee2:	00368793          	addi	a5,a3,3
1c00bee6:	e547d463          	ble	s4,a5,1c00b52e <pos_libc_prf+0x284>
1c00beea:	97c6                	add	a5,a5,a7
1c00beec:	f2e78a23          	sb	a4,-204(a5)
1c00bef0:	00468793          	addi	a5,a3,4
1c00bef4:	e347dd63          	ble	s4,a5,1c00b52e <pos_libc_prf+0x284>
1c00bef8:	97c6                	add	a5,a5,a7
1c00befa:	f2e78a23          	sb	a4,-204(a5)
1c00befe:	00568a93          	addi	s5,a3,5
1c00bf02:	e34ad663          	ble	s4,s5,1c00b52e <pos_libc_prf+0x284>
1c00bf06:	9ac6                	add	s5,s5,a7
1c00bf08:	f2ea8a23          	sb	a4,-204(s5)
1c00bf0c:	89ca                	mv	s3,s2
1c00bf0e:	e22ff06f          	j	1c00b530 <pos_libc_prf+0x286>
1c00bf12:	4881                	li	a7,0
1c00bf14:	1054                	addi	a3,sp,36
1c00bf16:	b935                	j	1c00bb52 <pos_libc_prf+0x8a8>
1c00bf18:	02414783          	lbu	a5,36(sp)
1c00bf1c:	1058                	addi	a4,sp,36
1c00bf1e:	46e5                	li	a3,25
1c00bf20:	c8078ce3          	beqz	a5,1c00bbb8 <pos_libc_prf+0x90e>
1c00bf24:	fe078613          	addi	a2,a5,-32
1c00bf28:	f9f78793          	addi	a5,a5,-97
1c00bf2c:	0ff7f793          	andi	a5,a5,255
1c00bf30:	00f6e963          	bltu	a3,a5,1c00bf42 <pos_libc_prf+0xc98>
1c00bf34:	00c70023          	sb	a2,0(a4)
1c00bf38:	0705                	addi	a4,a4,1
1c00bf3a:	00074783          	lbu	a5,0(a4)
1c00bf3e:	f3fd                	bnez	a5,1c00bf24 <pos_libc_prf+0xc7a>
1c00bf40:	b9a5                	j	1c00bbb8 <pos_libc_prf+0x90e>
1c00bf42:	0705                	addi	a4,a4,1
1c00bf44:	00074783          	lbu	a5,0(a4)
1c00bf48:	fff1                	bnez	a5,1c00bf24 <pos_libc_prf+0xc7a>
1c00bf4a:	b1bd                	j	1c00bbb8 <pos_libc_prf+0x90e>
1c00bf4c:	47d2                	lw	a5,20(sp)
1c00bf4e:	20078263          	beqz	a5,1c00c152 <pos_libc_prf+0xea8>
1c00bf52:	02b00713          	li	a4,43
1c00bf56:	02e10223          	sb	a4,36(sp)
1c00bf5a:	02510e93          	addi	t4,sp,37
1c00bf5e:	4301                	li	t1,0
1c00bf60:	4501                	li	a0,0
1c00bf62:	4681                	li	a3,0
1c00bf64:	4581                	li	a1,0
1c00bf66:	b8d5                	j	1c00b85a <pos_libc_prf+0x5b0>
1c00bf68:	0c800793          	li	a5,200
1c00bf6c:	df37c563          	blt	a5,s3,1c00b556 <pos_libc_prf+0x2ac>
1c00bf70:	8c42                	mv	s8,a6
1c00bf72:	f58ff06f          	j	1c00b6ca <pos_libc_prf+0x420>
1c00bf76:	02b00793          	li	a5,43
1c00bf7a:	02f10223          	sb	a5,36(sp)
1c00bf7e:	02510793          	addi	a5,sp,37
1c00bf82:	b941                	j	1c00bc12 <pos_libc_prf+0x968>
1c00bf84:	02d00793          	li	a5,45
1c00bf88:	02f10223          	sb	a5,36(sp)
1c00bf8c:	800007b7          	lui	a5,0x80000
1c00bf90:	22f58363          	beq	a1,a5,1c00c1b6 <pos_libc_prf+0xf0c>
1c00bf94:	40b00733          	neg	a4,a1
1c00bf98:	02510793          	addi	a5,sp,37
1c00bf9c:	b99d                	j	1c00bc12 <pos_libc_prf+0x968>
1c00bf9e:	47b2                	lw	a5,12(sp)
1c00bfa0:	4f81                	li	t6,0
1c00bfa2:	e399                	bnez	a5,1c00bfa8 <pos_libc_prf+0xcfe>
1c00bfa4:	01403fb3          	snez	t6,s4
1c00bfa8:	56f5                	li	a3,-3
1c00bfaa:	001a0e13          	addi	t3,s4,1
1c00bfae:	00d34463          	blt	t1,a3,1c00bfb6 <pos_libc_prf+0xd0c>
1c00bfb2:	166e5d63          	ble	t1,t3,1c00c12c <pos_libc_prf+0xe82>
1c00bfb6:	46c1                	li	a3,16
1c00bfb8:	01c6d363          	ble	t3,a3,1c00bfbe <pos_libc_prf+0xd14>
1c00bfbc:	4e41                	li	t3,16
1c00bfbe:	06700693          	li	a3,103
1c00bfc2:	1e7d                	addi	t3,t3,-1
1c00bfc4:	1add8963          	beq	s11,a3,1c00c176 <pos_libc_prf+0xecc>
1c00bfc8:	04500d93          	li	s11,69
1c00bfcc:	b0c5                	j	1c00b8ac <pos_libc_prf+0x602>
1c00bfce:	020102a3          	sb	zero,37(sp)
1c00bfd2:	57fd                	li	a5,-1
1c00bfd4:	89ba                	mv	s3,a4
1c00bfd6:	8c2a                	mv	s8,a0
1c00bfd8:	c6fa0563          	beq	s4,a5,1c00b442 <pos_libc_prf+0x198>
1c00bfdc:	02000813          	li	a6,32
1c00bfe0:	c842                	sw	a6,16(sp)
1c00bfe2:	c60ff06f          	j	1c00b442 <pos_libc_prf+0x198>
1c00bfe6:	89b6                	mv	s3,a3
1c00bfe8:	bdeff06f          	j	1c00b3c6 <pos_libc_prf+0x11c>
1c00bfec:	8766                	mv	a4,s9
1c00bfee:	1c084c63          	bltz	a6,1c00c1c6 <pos_libc_prf+0xf1c>
1c00bff2:	8e55                	or	a2,a2,a3
1c00bff4:	fbfd8793          	addi	a5,s11,-65
1c00bff8:	00370993          	addi	s3,a4,3
1c00bffc:	46e5                	li	a3,25
1c00bffe:	10061a63          	bnez	a2,1c00c112 <pos_libc_prf+0xe68>
1c00c002:	16f6ee63          	bltu	a3,a5,1c00c17e <pos_libc_prf+0xed4>
1c00c006:	6795                	lui	a5,0x5
1c00c008:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c00c00c:	00f71023          	sh	a5,0(a4)
1c00c010:	04600793          	li	a5,70
1c00c014:	00f70123          	sb	a5,2(a4)
1c00c018:	000701a3          	sb	zero,3(a4)
1c00c01c:	419989b3          	sub	s3,s3,s9
1c00c020:	b48d                	j	1c00ba82 <pos_libc_prf+0x7d8>
1c00c022:	85e6                	mv	a1,s9
1c00c024:	8766                	mv	a4,s9
1c00c026:	e38ff06f          	j	1c00b65e <pos_libc_prf+0x3b4>
1c00c02a:	a00a09e3          	beqz	s4,1c00ba3c <pos_libc_prf+0x792>
1c00c02e:	02e00693          	li	a3,46
1c00c032:	002e8513          	addi	a0,t4,2
1c00c036:	00de80a3          	sb	a3,1(t4)
1c00c03a:	b27d                	j	1c00b9e8 <pos_libc_prf+0x73e>
1c00c03c:	14605b63          	blez	t1,1c00c192 <pos_libc_prf+0xee8>
1c00c040:	006e89b3          	add	s3,t4,t1
1c00c044:	4541                	li	a0,16
1c00c046:	03000893          	li	a7,48
1c00c04a:	00271793          	slli	a5,a4,0x2
1c00c04e:	01e75313          	srli	t1,a4,0x1e
1c00c052:	00261693          	slli	a3,a2,0x2
1c00c056:	00e78833          	add	a6,a5,a4
1c00c05a:	00d366b3          	or	a3,t1,a3
1c00c05e:	96b2                	add	a3,a3,a2
1c00c060:	00f837b3          	sltu	a5,a6,a5
1c00c064:	97b6                	add	a5,a5,a3
1c00c066:	0786                	slli	a5,a5,0x1
1c00c068:	01f85693          	srli	a3,a6,0x1f
1c00c06c:	8fd5                	or	a5,a5,a3
1c00c06e:	01c7d693          	srli	a3,a5,0x1c
1c00c072:	03068693          	addi	a3,a3,48
1c00c076:	02a05063          	blez	a0,1c00c096 <pos_libc_prf+0xdec>
1c00c07a:	00181713          	slli	a4,a6,0x1
1c00c07e:	10000837          	lui	a6,0x10000
1c00c082:	187d                	addi	a6,a6,-1
1c00c084:	fed58fa3          	sb	a3,-1(a1)
1c00c088:	157d                	addi	a0,a0,-1
1c00c08a:	0107f633          	and	a2,a5,a6
1c00c08e:	00b98863          	beq	s3,a1,1c00c09e <pos_libc_prf+0xdf4>
1c00c092:	0585                	addi	a1,a1,1
1c00c094:	bf5d                	j	1c00c04a <pos_libc_prf+0xda0>
1c00c096:	ff158fa3          	sb	a7,-1(a1)
1c00c09a:	feb99ce3          	bne	s3,a1,1c00c092 <pos_libc_prf+0xde8>
1c00c09e:	4301                	li	t1,0
1c00c0a0:	48b2                	lw	a7,12(sp)
1c00c0a2:	00089463          	bnez	a7,1c00c0aa <pos_libc_prf+0xe00>
1c00c0a6:	a40a0be3          	beqz	s4,1c00bafc <pos_libc_prf+0x852>
1c00c0aa:	00198813          	addi	a6,s3,1
1c00c0ae:	001a0693          	addi	a3,s4,1
1c00c0b2:	02e00593          	li	a1,46
1c00c0b6:	00b98023          	sb	a1,0(s3)
1c00c0ba:	99b6                	add	s3,s3,a3
1c00c0bc:	85c2                	mv	a1,a6
1c00c0be:	03000693          	li	a3,48
1c00c0c2:	a2b98be3          	beq	s3,a1,1c00baf8 <pos_libc_prf+0x84e>
1c00c0c6:	0585                	addi	a1,a1,1
1c00c0c8:	9e0302e3          	beqz	t1,1c00baac <pos_libc_prf+0x802>
1c00c0cc:	fed58fa3          	sb	a3,-1(a1)
1c00c0d0:	0305                	addi	t1,t1,1
1c00c0d2:	bfc5                	j	1c00c0c2 <pos_libc_prf+0xe18>
1c00c0d4:	4a19                	li	s4,6
1c00c0d6:	fadd9b63          	bne	s11,a3,1c00b88c <pos_libc_prf+0x5e2>
1c00c0da:	46b2                	lw	a3,12(sp)
1c00c0dc:	57f5                	li	a5,-3
1c00c0de:	0016cf93          	xori	t6,a3,1
1c00c0e2:	08f35663          	ble	a5,t1,1c00c16e <pos_libc_prf+0xec4>
1c00c0e6:	06500d93          	li	s11,101
1c00c0ea:	4e19                	li	t3,6
1c00c0ec:	fc0ff06f          	j	1c00b8ac <pos_libc_prf+0x602>
1c00c0f0:	0c800793          	li	a5,200
1c00c0f4:	c737c163          	blt	a5,s3,1c00b556 <pos_libc_prf+0x2ac>
1c00c0f8:	8c2a                	mv	s8,a0
1c00c0fa:	c602                	sw	zero,12(sp)
1c00c0fc:	dceff06f          	j	1c00b6ca <pos_libc_prf+0x420>
1c00c100:	02d00793          	li	a5,45
1c00c104:	40600333          	neg	t1,t1
1c00c108:	00f980a3          	sb	a5,1(s3)
1c00c10c:	ba89                	j	1c00ba5e <pos_libc_prf+0x7b4>
1c00c10e:	c602                	sw	zero,12(sp)
1c00c110:	b329                	j	1c00be1a <pos_libc_prf+0xb70>
1c00c112:	0cf6ed63          	bltu	a3,a5,1c00c1ec <pos_libc_prf+0xf42>
1c00c116:	6791                	lui	a5,0x4
1c00c118:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c00c11c:	00f71023          	sh	a5,0(a4)
1c00c120:	04e00793          	li	a5,78
1c00c124:	00f70123          	sb	a5,2(a4)
1c00c128:	bdc5                	j	1c00c018 <pos_libc_prf+0xd6e>
1c00c12a:	4f81                	li	t6,0
1c00c12c:	014307b3          	add	a5,t1,s4
1c00c130:	0807c863          	bltz	a5,1c00c1c0 <pos_libc_prf+0xf16>
1c00c134:	46c1                	li	a3,16
1c00c136:	8e3e                	mv	t3,a5
1c00c138:	00f6d363          	ble	a5,a3,1c00c13e <pos_libc_prf+0xe94>
1c00c13c:	4e41                	li	t3,16
1c00c13e:	1e7d                	addi	t3,t3,-1
1c00c140:	06600d93          	li	s11,102
1c00c144:	f6079463          	bnez	a5,1c00b8ac <pos_libc_prf+0x602>
1c00c148:	4681                	li	a3,0
1c00c14a:	08000637          	lui	a2,0x8000
1c00c14e:	fc8ff06f          	j	1c00b916 <pos_libc_prf+0x66c>
1c00c152:	47e2                	lw	a5,24(sp)
1c00c154:	c7d5                	beqz	a5,1c00c200 <pos_libc_prf+0xf56>
1c00c156:	02000713          	li	a4,32
1c00c15a:	02e10223          	sb	a4,36(sp)
1c00c15e:	02510e93          	addi	t4,sp,37
1c00c162:	4301                	li	t1,0
1c00c164:	4501                	li	a0,0
1c00c166:	4681                	li	a3,0
1c00c168:	4581                	li	a1,0
1c00c16a:	ef0ff06f          	j	1c00b85a <pos_libc_prf+0x5b0>
1c00c16e:	479d                	li	a5,7
1c00c170:	fa67dee3          	ble	t1,a5,1c00c12c <pos_libc_prf+0xe82>
1c00c174:	4e19                	li	t3,6
1c00c176:	06500d93          	li	s11,101
1c00c17a:	f32ff06f          	j	1c00b8ac <pos_libc_prf+0x602>
1c00c17e:	679d                	lui	a5,0x7
1c00c180:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c00c184:	00f71023          	sh	a5,0(a4)
1c00c188:	06600793          	li	a5,102
1c00c18c:	00f70123          	sb	a5,2(a4)
1c00c190:	b561                	j	1c00c018 <pos_libc_prf+0xd6e>
1c00c192:	03000693          	li	a3,48
1c00c196:	00de8023          	sb	a3,0(t4)
1c00c19a:	4541                	li	a0,16
1c00c19c:	b711                	j	1c00c0a0 <pos_libc_prf+0xdf6>
1c00c19e:	48e2                	lw	a7,24(sp)
1c00c1a0:	8ee6                	mv	t4,s9
1c00c1a2:	dc088e63          	beqz	a7,1c00b77e <pos_libc_prf+0x4d4>
1c00c1a6:	02000713          	li	a4,32
1c00c1aa:	02e10223          	sb	a4,36(sp)
1c00c1ae:	02510e93          	addi	t4,sp,37
1c00c1b2:	dccff06f          	j	1c00b77e <pos_libc_prf+0x4d4>
1c00c1b6:	80000737          	lui	a4,0x80000
1c00c1ba:	02510793          	addi	a5,sp,37
1c00c1be:	bc91                	j	1c00bc12 <pos_libc_prf+0x968>
1c00c1c0:	06600d93          	li	s11,102
1c00c1c4:	b751                	j	1c00c148 <pos_libc_prf+0xe9e>
1c00c1c6:	02d00713          	li	a4,45
1c00c1ca:	02e10223          	sb	a4,36(sp)
1c00c1ce:	02510713          	addi	a4,sp,37
1c00c1d2:	b505                	j	1c00bff2 <pos_libc_prf+0xd48>
1c00c1d4:	a40a5d63          	bgez	s4,1c00b42e <pos_libc_prf+0x184>
1c00c1d8:	a62ff06f          	j	1c00b43a <pos_libc_prf+0x190>
1c00c1dc:	02d00713          	li	a4,45
1c00c1e0:	02e10223          	sb	a4,36(sp)
1c00c1e4:	02510e93          	addi	t4,sp,37
1c00c1e8:	d96ff06f          	j	1c00b77e <pos_libc_prf+0x4d4>
1c00c1ec:	6799                	lui	a5,0x6
1c00c1ee:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c00c1f2:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00c1f6:	06e00793          	li	a5,110
1c00c1fa:	00f70123          	sb	a5,2(a4)
1c00c1fe:	bd29                	j	1c00c018 <pos_libc_prf+0xd6e>
1c00c200:	8ee6                	mv	t4,s9
1c00c202:	b785                	j	1c00c162 <pos_libc_prf+0xeb8>
1c00c204:	89aa                	mv	s3,a0
1c00c206:	820f8de3          	beqz	t6,1c00ba40 <pos_libc_prf+0x796>
1c00c20a:	b8dd                	j	1c00bb00 <pos_libc_prf+0x856>

1c00c20c <pos_init_start>:
1c00c20c:	1141                	addi	sp,sp,-16
1c00c20e:	c422                	sw	s0,8(sp)
1c00c210:	1c000437          	lui	s0,0x1c000
1c00c214:	c606                	sw	ra,12(sp)
1c00c216:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00c21a:	a67fc0ef          	jal	ra,1c008c80 <pos_soc_init>
1c00c21e:	2275                	jal	1c00c3ca <pos_irq_init>
1c00c220:	2ae1                	jal	1c00c3f8 <pos_soc_event_init>
1c00c222:	2a31                	jal	1c00c33e <pos_allocs_init>
1c00c224:	405c                	lw	a5,4(s0)
1c00c226:	c791                	beqz	a5,1c00c232 <pos_init_start+0x26>
1c00c228:	0411                	addi	s0,s0,4
1c00c22a:	0411                	addi	s0,s0,4
1c00c22c:	9782                	jalr	a5
1c00c22e:	401c                	lw	a5,0(s0)
1c00c230:	ffed                	bnez	a5,1c00c22a <pos_init_start+0x1e>
1c00c232:	842ff0ef          	jal	ra,1c00b274 <pos_io_start>
1c00c236:	300467f3          	csrrsi	a5,mstatus,8
1c00c23a:	40b2                	lw	ra,12(sp)
1c00c23c:	4422                	lw	s0,8(sp)
1c00c23e:	0141                	addi	sp,sp,16
1c00c240:	8082                	ret

1c00c242 <pos_init_stop>:
1c00c242:	1141                	addi	sp,sp,-16
1c00c244:	c422                	sw	s0,8(sp)
1c00c246:	1c000437          	lui	s0,0x1c000
1c00c24a:	c606                	sw	ra,12(sp)
1c00c24c:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00c250:	828ff0ef          	jal	ra,1c00b278 <pos_io_stop>
1c00c254:	405c                	lw	a5,4(s0)
1c00c256:	c791                	beqz	a5,1c00c262 <pos_init_stop+0x20>
1c00c258:	0411                	addi	s0,s0,4
1c00c25a:	0411                	addi	s0,s0,4
1c00c25c:	9782                	jalr	a5
1c00c25e:	401c                	lw	a5,0(s0)
1c00c260:	ffed                	bnez	a5,1c00c25a <pos_init_stop+0x18>
1c00c262:	40b2                	lw	ra,12(sp)
1c00c264:	4422                	lw	s0,8(sp)
1c00c266:	0141                	addi	sp,sp,16
1c00c268:	8082                	ret

1c00c26a <pos_alloc_init>:
1c00c26a:	00758793          	addi	a5,a1,7
1c00c26e:	9be1                	andi	a5,a5,-8
1c00c270:	40b785b3          	sub	a1,a5,a1
1c00c274:	c11c                	sw	a5,0(a0)
1c00c276:	8e0d                	sub	a2,a2,a1
1c00c278:	00c05663          	blez	a2,1c00c284 <pos_alloc_init+0x1a>
1c00c27c:	9a61                	andi	a2,a2,-8
1c00c27e:	c390                	sw	a2,0(a5)
1c00c280:	0007a223          	sw	zero,4(a5)
1c00c284:	8082                	ret

1c00c286 <pos_alloc>:
1c00c286:	4110                	lw	a2,0(a0)
1c00c288:	059d                	addi	a1,a1,7
1c00c28a:	99e1                	andi	a1,a1,-8
1c00c28c:	ca31                	beqz	a2,1c00c2e0 <pos_alloc+0x5a>
1c00c28e:	4218                	lw	a4,0(a2)
1c00c290:	425c                	lw	a5,4(a2)
1c00c292:	02b75963          	ble	a1,a4,1c00c2c4 <pos_alloc+0x3e>
1c00c296:	cb81                	beqz	a5,1c00c2a6 <pos_alloc+0x20>
1c00c298:	4398                	lw	a4,0(a5)
1c00c29a:	43d4                	lw	a3,4(a5)
1c00c29c:	00b75763          	ble	a1,a4,1c00c2aa <pos_alloc+0x24>
1c00c2a0:	863e                	mv	a2,a5
1c00c2a2:	87b6                	mv	a5,a3
1c00c2a4:	fbf5                	bnez	a5,1c00c298 <pos_alloc+0x12>
1c00c2a6:	853e                	mv	a0,a5
1c00c2a8:	8082                	ret
1c00c2aa:	00b70a63          	beq	a4,a1,1c00c2be <pos_alloc+0x38>
1c00c2ae:	00b78533          	add	a0,a5,a1
1c00c2b2:	8f0d                	sub	a4,a4,a1
1c00c2b4:	c118                	sw	a4,0(a0)
1c00c2b6:	c154                	sw	a3,4(a0)
1c00c2b8:	c248                	sw	a0,4(a2)
1c00c2ba:	853e                	mv	a0,a5
1c00c2bc:	8082                	ret
1c00c2be:	c254                	sw	a3,4(a2)
1c00c2c0:	853e                	mv	a0,a5
1c00c2c2:	8082                	ret
1c00c2c4:	00e58b63          	beq	a1,a4,1c00c2da <pos_alloc+0x54>
1c00c2c8:	00b606b3          	add	a3,a2,a1
1c00c2cc:	8f0d                	sub	a4,a4,a1
1c00c2ce:	c2dc                	sw	a5,4(a3)
1c00c2d0:	c298                	sw	a4,0(a3)
1c00c2d2:	87b2                	mv	a5,a2
1c00c2d4:	c114                	sw	a3,0(a0)
1c00c2d6:	853e                	mv	a0,a5
1c00c2d8:	8082                	ret
1c00c2da:	c11c                	sw	a5,0(a0)
1c00c2dc:	87b2                	mv	a5,a2
1c00c2de:	b7e1                	j	1c00c2a6 <pos_alloc+0x20>
1c00c2e0:	4781                	li	a5,0
1c00c2e2:	b7d1                	j	1c00c2a6 <pos_alloc+0x20>

1c00c2e4 <pos_free>:
1c00c2e4:	4118                	lw	a4,0(a0)
1c00c2e6:	061d                	addi	a2,a2,7
1c00c2e8:	9a61                	andi	a2,a2,-8
1c00c2ea:	c729                	beqz	a4,1c00c334 <pos_free+0x50>
1c00c2ec:	00b76663          	bltu	a4,a1,1c00c2f8 <pos_free+0x14>
1c00c2f0:	a0a1                	j	1c00c338 <pos_free+0x54>
1c00c2f2:	00b7f563          	bleu	a1,a5,1c00c2fc <pos_free+0x18>
1c00c2f6:	873e                	mv	a4,a5
1c00c2f8:	435c                	lw	a5,4(a4)
1c00c2fa:	ffe5                	bnez	a5,1c00c2f2 <pos_free+0xe>
1c00c2fc:	00c586b3          	add	a3,a1,a2
1c00c300:	02d78463          	beq	a5,a3,1c00c328 <pos_free+0x44>
1c00c304:	c190                	sw	a2,0(a1)
1c00c306:	c1dc                	sw	a5,4(a1)
1c00c308:	cf11                	beqz	a4,1c00c324 <pos_free+0x40>
1c00c30a:	431c                	lw	a5,0(a4)
1c00c30c:	00f706b3          	add	a3,a4,a5
1c00c310:	00d58463          	beq	a1,a3,1c00c318 <pos_free+0x34>
1c00c314:	c34c                	sw	a1,4(a4)
1c00c316:	8082                	ret
1c00c318:	4194                	lw	a3,0(a1)
1c00c31a:	41d0                	lw	a2,4(a1)
1c00c31c:	97b6                	add	a5,a5,a3
1c00c31e:	c31c                	sw	a5,0(a4)
1c00c320:	c350                	sw	a2,4(a4)
1c00c322:	8082                	ret
1c00c324:	c10c                	sw	a1,0(a0)
1c00c326:	8082                	ret
1c00c328:	4394                	lw	a3,0(a5)
1c00c32a:	43dc                	lw	a5,4(a5)
1c00c32c:	9636                	add	a2,a2,a3
1c00c32e:	c190                	sw	a2,0(a1)
1c00c330:	c1dc                	sw	a5,4(a1)
1c00c332:	bfd9                	j	1c00c308 <pos_free+0x24>
1c00c334:	4781                	li	a5,0
1c00c336:	b7d9                	j	1c00c2fc <pos_free+0x18>
1c00c338:	87ba                	mv	a5,a4
1c00c33a:	4701                	li	a4,0
1c00c33c:	b7c1                	j	1c00c2fc <pos_free+0x18>

1c00c33e <pos_allocs_init>:
1c00c33e:	1141                	addi	sp,sp,-16
1c00c340:	1c0065b7          	lui	a1,0x1c006
1c00c344:	c606                	sw	ra,12(sp)
1c00c346:	5f858793          	addi	a5,a1,1528 # 1c0065f8 <__l2_priv0_end>
1c00c34a:	1c008637          	lui	a2,0x1c008
1c00c34e:	04c7cc63          	blt	a5,a2,1c00c3a6 <pos_allocs_init+0x68>
1c00c352:	4581                	li	a1,0
1c00c354:	4601                	li	a2,0
1c00c356:	1c006537          	lui	a0,0x1c006
1c00c35a:	5ec50513          	addi	a0,a0,1516 # 1c0065ec <pos_alloc_l2>
1c00c35e:	3731                	jal	1c00c26a <pos_alloc_init>
1c00c360:	1c00c5b7          	lui	a1,0x1c00c
1c00c364:	41058793          	addi	a5,a1,1040 # 1c00c410 <__l2_priv1_end>
1c00c368:	1c010637          	lui	a2,0x1c010
1c00c36c:	02c7c963          	blt	a5,a2,1c00c39e <pos_allocs_init+0x60>
1c00c370:	4581                	li	a1,0
1c00c372:	4601                	li	a2,0
1c00c374:	1c006537          	lui	a0,0x1c006
1c00c378:	5f050513          	addi	a0,a0,1520 # 1c0065f0 <pos_alloc_l2+0x4>
1c00c37c:	35fd                	jal	1c00c26a <pos_alloc_init>
1c00c37e:	1c0105b7          	lui	a1,0x1c010
1c00c382:	00058793          	mv	a5,a1
1c00c386:	40b2                	lw	ra,12(sp)
1c00c388:	1c080637          	lui	a2,0x1c080
1c00c38c:	1c006537          	lui	a0,0x1c006
1c00c390:	8e1d                	sub	a2,a2,a5
1c00c392:	00058593          	mv	a1,a1
1c00c396:	5f450513          	addi	a0,a0,1524 # 1c0065f4 <pos_alloc_l2+0x8>
1c00c39a:	0141                	addi	sp,sp,16
1c00c39c:	b5f9                	j	1c00c26a <pos_alloc_init>
1c00c39e:	8e1d                	sub	a2,a2,a5
1c00c3a0:	41058593          	addi	a1,a1,1040 # 1c010410 <__l2_shared_end+0x410>
1c00c3a4:	bfc1                	j	1c00c374 <pos_allocs_init+0x36>
1c00c3a6:	8e1d                	sub	a2,a2,a5
1c00c3a8:	5f858593          	addi	a1,a1,1528
1c00c3ac:	b76d                	j	1c00c356 <pos_allocs_init+0x18>

1c00c3ae <pi_l2_malloc>:
1c00c3ae:	85aa                	mv	a1,a0
1c00c3b0:	1c006537          	lui	a0,0x1c006
1c00c3b4:	5ec50513          	addi	a0,a0,1516 # 1c0065ec <pos_alloc_l2>
1c00c3b8:	b5f9                	j	1c00c286 <pos_alloc>

1c00c3ba <pi_l2_free>:
1c00c3ba:	862e                	mv	a2,a1
1c00c3bc:	85aa                	mv	a1,a0
1c00c3be:	1c006537          	lui	a0,0x1c006
1c00c3c2:	5ec50513          	addi	a0,a0,1516 # 1c0065ec <pos_alloc_l2>
1c00c3c6:	bf39                	j	1c00c2e4 <pos_free>

1c00c3c8 <__rt_handle_illegal_instr>:
1c00c3c8:	8082                	ret

1c00c3ca <pos_irq_init>:
1c00c3ca:	1a10a737          	lui	a4,0x1a10a
1c00c3ce:	f14027f3          	csrr	a5,mhartid
1c00c3d2:	56fd                	li	a3,-1
1c00c3d4:	8795                	srai	a5,a5,0x5
1c00c3d6:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00c3da:	03f7f793          	andi	a5,a5,63
1c00c3de:	477d                	li	a4,31
1c00c3e0:	00e78363          	beq	a5,a4,1c00c3e6 <pos_irq_init+0x1c>
1c00c3e4:	8082                	ret
1c00c3e6:	1c0087b7          	lui	a5,0x1c008
1c00c3ea:	00078793          	mv	a5,a5
1c00c3ee:	0017e793          	ori	a5,a5,1
1c00c3f2:	30579073          	csrw	mtvec,a5
1c00c3f6:	8082                	ret

1c00c3f8 <pos_soc_event_init>:
1c00c3f8:	1a1067b7          	lui	a5,0x1a106
1c00c3fc:	577d                	li	a4,-1
1c00c3fe:	c3d8                	sw	a4,4(a5)
1c00c400:	c798                	sw	a4,8(a5)
1c00c402:	c7d8                	sw	a4,12(a5)
1c00c404:	cb98                	sw	a4,16(a5)
1c00c406:	cbd8                	sw	a4,20(a5)
1c00c408:	cf98                	sw	a4,24(a5)
1c00c40a:	cfd8                	sw	a4,28(a5)
1c00c40c:	d398                	sw	a4,32(a5)
1c00c40e:	8082                	ret
