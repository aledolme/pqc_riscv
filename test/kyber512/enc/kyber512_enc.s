riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber512/enc/build/enc/enc

/home/alessandra.dolmeta/pqc_riscv/test/kyber512/enc/build/enc/enc:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	5500406f          	j	1c00c550 <__rt_handle_illegal_instr>
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
1c008084:	4cc0406f          	j	1c00c550 <__rt_handle_illegal_instr>

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
1c0080c4:	1a028293          	addi	t0,t0,416 # 1c006260 <in>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	21030313          	addi	t1,t1,528 # 1c0062d8 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	18610113          	addi	sp,sp,390 # 1c006260 <in>
1c0080e2:	2a2040ef          	jal	ra,1c00c384 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	2be040ef          	jal	ra,1c00c3ba <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	300030ef          	jal	ra,1c00b402 <exit>
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

1c008154 <printbytes>:
1c008154:	1141                	addi	sp,sp,-16
1c008156:	c422                	sw	s0,8(sp)
1c008158:	c226                	sw	s1,4(sp)
1c00815a:	c04a                	sw	s2,0(sp)
1c00815c:	c606                	sw	ra,12(sp)
1c00815e:	842a                	mv	s0,a0
1c008160:	00b504b3          	add	s1,a0,a1
1c008164:	1c000937          	lui	s2,0x1c000
1c008168:	00044583          	lbu	a1,0(s0)
1c00816c:	11c90513          	addi	a0,s2,284 # 1c00011c <__clz_tab+0x100>
1c008170:	0405                	addi	s0,s0,1
1c008172:	2ac030ef          	jal	ra,1c00b41e <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	2520306f          	j	1c00b3d8 <putchar>

1c00818a <main>:
1c00818a:	994bc7b7          	lui	a5,0x994bc
1c00818e:	9b010113          	addi	sp,sp,-1616
1c008192:	45f78793          	addi	a5,a5,1119 # 994bc45f <__l2_shared_end+0x7d4ac45f>
1c008196:	32f12023          	sw	a5,800(sp)
1c00819a:	384f67b7          	lui	a5,0x384f6
1c00819e:	8d778793          	addi	a5,a5,-1833 # 384f58d7 <__l2_shared_end+0x1c4e58d7>
1c0081a2:	32f12223          	sw	a5,804(sp)
1c0081a6:	0c3637b7          	lui	a5,0xc363
1c0081aa:	8cd78793          	addi	a5,a5,-1843 # c3628cd <__CTOR_LIST__-0xfc9d737>
1c0081ae:	32f12423          	sw	a5,808(sp)
1c0081b2:	905a67b7          	lui	a5,0x905a6
1c0081b6:	2c578793          	addi	a5,a5,709 # 905a62c5 <__l2_shared_end+0x745962c5>
1c0081ba:	32f12623          	sw	a5,812(sp)
1c0081be:	12af97b7          	lui	a5,0x12af9
1c0081c2:	65b78793          	addi	a5,a5,1627 # 12af965b <__CTOR_LIST__-0x95069a9>
1c0081c6:	32f12823          	sw	a5,816(sp)
1c0081ca:	b5d517b7          	lui	a5,0xb5d51
1c0081ce:	e9378793          	addi	a5,a5,-365 # b5d50e93 <__l2_shared_end+0x99d40e93>
1c0081d2:	32f12a23          	sw	a5,820(sp)
1c0081d6:	fc8237b7          	lui	a5,0xfc823
1c0081da:	afe78793          	addi	a5,a5,-1282 # fc822afe <__l2_shared_end+0xe0812afe>
1c0081de:	32f12c23          	sw	a5,824(sp)
1c0081e2:	4bdca7b7          	lui	a5,0x4bdca
1c0081e6:	75a78793          	addi	a5,a5,1882 # 4bdca75a <__l2_shared_end+0x2fdba75a>
1c0081ea:	32f12e23          	sw	a5,828(sp)
1c0081ee:	76e3a7b7          	lui	a5,0x76e3a
1c0081f2:	f8278793          	addi	a5,a5,-126 # 76e39f82 <__l2_shared_end+0x5ae29f82>
1c0081f6:	34f12023          	sw	a5,832(sp)
1c0081fa:	5a3ff7b7          	lui	a5,0x5a3ff
1c0081fe:	13578793          	addi	a5,a5,309 # 5a3ff135 <__l2_shared_end+0x3e3ef135>
1c008202:	34f12223          	sw	a5,836(sp)
1c008206:	08d3a7b7          	lui	a5,0x8d3a
1c00820a:	6f278793          	addi	a5,a5,1778 # 8d3a6f2 <__CTOR_LIST__-0x132c5912>
1c00820e:	34f12423          	sw	a5,840(sp)
1c008212:	8787b7b7          	lui	a5,0x8787b
1c008216:	d1d78793          	addi	a5,a5,-739 # 8787ad1d <__l2_shared_end+0x6b86ad1d>
1c00821a:	34f12623          	sw	a5,844(sp)
1c00821e:	0a8a77b7          	lui	a5,0xa8a7
1c008222:	98578793          	addi	a5,a5,-1659 # a8a6985 <__CTOR_LIST__-0x1175967f>
1c008226:	34f12823          	sw	a5,848(sp)
1c00822a:	4c3717b7          	lui	a5,0x4c371
1c00822e:	4a978793          	addi	a5,a5,1193 # 4c3714a9 <__l2_shared_end+0x303614a9>
1c008232:	34f12a23          	sw	a5,852(sp)
1c008236:	9fb847b7          	lui	a5,0x9fb84
1c00823a:	34e78793          	addi	a5,a5,846 # 9fb8434e <__l2_shared_end+0x83b7434e>
1c00823e:	34f12c23          	sw	a5,856(sp)
1c008242:	927857b7          	lui	a5,0x92785
1c008246:	a0978793          	addi	a5,a5,-1527 # 92784a09 <__l2_shared_end+0x76774a09>
1c00824a:	34f12e23          	sw	a5,860(sp)
1c00824e:	389a17b7          	lui	a5,0x389a1
1c008252:	4aa78793          	addi	a5,a5,1194 # 389a14aa <__l2_shared_end+0x1c9914aa>
1c008256:	36f12023          	sw	a5,864(sp)
1c00825a:	a006a7b7          	lui	a5,0xa006a
1c00825e:	cb478793          	addi	a5,a5,-844 # a0069cb4 <__l2_shared_end+0x84059cb4>
1c008262:	36f12223          	sw	a5,868(sp)
1c008266:	a829e7b7          	lui	a5,0xa829e
1c00826a:	86878793          	addi	a5,a5,-1944 # a829d868 <__l2_shared_end+0x8c28d868>
1c00826e:	36f12423          	sw	a5,872(sp)
1c008272:	53e757b7          	lui	a5,0x53e75
1c008276:	9d278793          	addi	a5,a5,-1582 # 53e749d2 <__l2_shared_end+0x37e649d2>
1c00827a:	36f12623          	sw	a5,876(sp)
1c00827e:	97d077b7          	lui	a5,0x97d07
1c008282:	5a378793          	addi	a5,a5,1443 # 97d075a3 <__l2_shared_end+0x7bcf75a3>
1c008286:	36f12823          	sw	a5,880(sp)
1c00828a:	e662f7b7          	lui	a5,0xe662f
1c00828e:	1a078793          	addi	a5,a5,416 # e662f1a0 <__l2_shared_end+0xca61f1a0>
1c008292:	36f12a23          	sw	a5,884(sp)
1c008296:	e8dfa7b7          	lui	a5,0xe8dfa
1c00829a:	4c378793          	addi	a5,a5,1219 # e8dfa4c3 <__l2_shared_end+0xccdea4c3>
1c00829e:	36f12c23          	sw	a5,888(sp)
1c0082a2:	416197b7          	lui	a5,0x41619
1c0082a6:	7c778793          	addi	a5,a5,1991 # 416197c7 <__l2_shared_end+0x256097c7>
1c0082aa:	36f12e23          	sw	a5,892(sp)
1c0082ae:	d35e67b7          	lui	a5,0xd35e6
1c0082b2:	07b1                	addi	a5,a5,12
1c0082b4:	38f12023          	sw	a5,896(sp)
1c0082b8:	c43fa7b7          	lui	a5,0xc43fa
1c0082bc:	a8978793          	addi	a5,a5,-1399 # c43f9a89 <__l2_shared_end+0xa83e9a89>
1c0082c0:	38f12223          	sw	a5,900(sp)
1c0082c4:	4fe187b7          	lui	a5,0x4fe18
1c0082c8:	84378793          	addi	a5,a5,-1981 # 4fe17843 <__l2_shared_end+0x33e07843>
1c0082cc:	38f12423          	sw	a5,904(sp)
1c0082d0:	8f9e87b7          	lui	a5,0x8f9e8
1c0082d4:	72878793          	addi	a5,a5,1832 # 8f9e8728 <__l2_shared_end+0x739d8728>
1c0082d8:	38f12623          	sw	a5,908(sp)
1c0082dc:	e67787b7          	lui	a5,0xe6778
1c0082e0:	07d1                	addi	a5,a5,20
1c0082e2:	38f12823          	sw	a5,912(sp)
1c0082e6:	aeb247b7          	lui	a5,0xaeb24
1c0082ea:	bbc78793          	addi	a5,a5,-1092 # aeb23bbc <__l2_shared_end+0x92b13bbc>
1c0082ee:	38f12a23          	sw	a5,916(sp)
1c0082f2:	498c17b7          	lui	a5,0x498c1
1c0082f6:	75678793          	addi	a5,a5,1878 # 498c1756 <__l2_shared_end+0x2d8b1756>
1c0082fa:	38f12c23          	sw	a5,920(sp)
1c0082fe:	6abf17b7          	lui	a5,0x6abf1
1c008302:	64112623          	sw	ra,1612(sp)
1c008306:	11678793          	addi	a5,a5,278 # 6abf1116 <__l2_shared_end+0x4ebe1116>
1c00830a:	38f12e23          	sw	a5,924(sp)
1c00830e:	9c9a67b7          	lui	a5,0x9c9a6
1c008312:	faf78793          	addi	a5,a5,-81 # 9c9a5faf <__l2_shared_end+0x80995faf>
1c008316:	3af12023          	sw	a5,928(sp)
1c00831a:	9265b7b7          	lui	a5,0x9265b
1c00831e:	5b978793          	addi	a5,a5,1465 # 9265b5b9 <__l2_shared_end+0x7664b5b9>
1c008322:	3af12223          	sw	a5,932(sp)
1c008326:	407907b7          	lui	a5,0x40790
1c00832a:	02378793          	addi	a5,a5,35 # 40790023 <__l2_shared_end+0x24780023>
1c00832e:	3af12423          	sw	a5,936(sp)
1c008332:	a2f8d7b7          	lui	a5,0xa2f8d
1c008336:	6bc78793          	addi	a5,a5,1724 # a2f8d6bc <__l2_shared_end+0x86f7d6bc>
1c00833a:	3af12623          	sw	a5,940(sp)
1c00833e:	60a587b7          	lui	a5,0x60a58
1c008342:	03278793          	addi	a5,a5,50 # 60a58032 <__l2_shared_end+0x44a48032>
1c008346:	3af12823          	sw	a5,944(sp)
1c00834a:	850e37b7          	lui	a5,0x850e3
1c00834e:	31578793          	addi	a5,a5,789 # 850e3315 <__l2_shared_end+0x690d3315>
1c008352:	3af12a23          	sw	a5,948(sp)
1c008356:	879527b7          	lui	a5,0x87952
1c00835a:	57778793          	addi	a5,a5,1399 # 87952577 <__l2_shared_end+0x6b942577>
1c00835e:	3af12c23          	sw	a5,952(sp)
1c008362:	f40627b7          	lui	a5,0xf4062
1c008366:	6b178793          	addi	a5,a5,1713 # f40626b1 <__l2_shared_end+0xd80526b1>
1c00836a:	3af12e23          	sw	a5,956(sp)
1c00836e:	13ea37b7          	lui	a5,0x13ea3
1c008372:	7c978793          	addi	a5,a5,1993 # 13ea37c9 <__CTOR_LIST__-0x815c83b>
1c008376:	3cf12023          	sw	a5,960(sp)
1c00837a:	bbb377b7          	lui	a5,0xbbb37
1c00837e:	c6078793          	addi	a5,a5,-928 # bbb36c60 <__l2_shared_end+0x9fb26c60>
1c008382:	3cf12223          	sw	a5,964(sp)
1c008386:	ad6667b7          	lui	a5,0xad666
1c00838a:	0791                	addi	a5,a5,4
1c00838c:	3cf12423          	sw	a5,968(sp)
1c008390:	e26147b7          	lui	a5,0xe2614
1c008394:	22978793          	addi	a5,a5,553 # e2614229 <__l2_shared_end+0xc6604229>
1c008398:	3cf12623          	sw	a5,972(sp)
1c00839c:	bc2227b7          	lui	a5,0xbc222
1c0083a0:	0b278793          	addi	a5,a5,178 # bc2220b2 <__l2_shared_end+0xa02120b2>
1c0083a4:	3cf12823          	sw	a5,976(sp)
1c0083a8:	a57847b7          	lui	a5,0xa5784
1c0083ac:	6c778793          	addi	a5,a5,1735 # a57846c7 <__l2_shared_end+0x897746c7>
1c0083b0:	3cf12a23          	sw	a5,980(sp)
1c0083b4:	d87007b7          	lui	a5,0xd8700
1c0083b8:	55278793          	addi	a5,a5,1362 # d8700552 <__l2_shared_end+0xbc6f0552>
1c0083bc:	3cf12c23          	sw	a5,984(sp)
1c0083c0:	42eb57b7          	lui	a5,0x42eb5
1c0083c4:	c8e78793          	addi	a5,a5,-882 # 42eb4c8e <__l2_shared_end+0x26ea4c8e>
1c0083c8:	3cf12e23          	sw	a5,988(sp)
1c0083cc:	e73127b7          	lui	a5,0xe7312
1c0083d0:	66978793          	addi	a5,a5,1641 # e7312669 <__l2_shared_end+0xcb302669>
1c0083d4:	3ef12023          	sw	a5,992(sp)
1c0083d8:	4b1c77b7          	lui	a5,0x4b1c7
1c0083dc:	1e378793          	addi	a5,a5,483 # 4b1c71e3 <__l2_shared_end+0x2f1b71e3>
1c0083e0:	3ef12223          	sw	a5,996(sp)
1c0083e4:	7f34d7b7          	lui	a5,0x7f34d
1c0083e8:	52f78793          	addi	a5,a5,1327 # 7f34d52f <__l2_shared_end+0x6333d52f>
1c0083ec:	3ef12423          	sw	a5,1000(sp)
1c0083f0:	835937b7          	lui	a5,0x83593
1c0083f4:	80378793          	addi	a5,a5,-2045 # 83592803 <__l2_shared_end+0x67582803>
1c0083f8:	3ef12623          	sw	a5,1004(sp)
1c0083fc:	653cd7b7          	lui	a5,0x653cd
1c008400:	b4078793          	addi	a5,a5,-1216 # 653ccb40 <__l2_shared_end+0x493bcb40>
1c008404:	3ef12823          	sw	a5,1008(sp)
1c008408:	c05af7b7          	lui	a5,0xc05af
1c00840c:	5c878793          	addi	a5,a5,1480 # c05af5c8 <__l2_shared_end+0xa459f5c8>
1c008410:	3ef12a23          	sw	a5,1012(sp)
1c008414:	108317b7          	lui	a5,0x10831
1c008418:	62778793          	addi	a5,a5,1575 # 10831627 <__CTOR_LIST__-0xb7ce9dd>
1c00841c:	3ef12c23          	sw	a5,1016(sp)
1c008420:	b96ed7b7          	lui	a5,0xb96ed
1c008424:	b9478793          	addi	a5,a5,-1132 # b96ecb94 <__l2_shared_end+0x9d6dcb94>
1c008428:	3ef12e23          	sw	a5,1020(sp)
1c00842c:	175b17b7          	lui	a5,0x175b1
1c008430:	70f78793          	addi	a5,a5,1807 # 175b170f <__CTOR_LIST__-0x4a4e8f5>
1c008434:	40f12023          	sw	a5,1024(sp)
1c008438:	0365a7b7          	lui	a5,0x365a
1c00843c:	c3d78793          	addi	a5,a5,-963 # 3659c3d <__CTOR_LIST__-0x189a63c7>
1c008440:	40f12223          	sw	a5,1028(sp)
1c008444:	13f5b7b7          	lui	a5,0x13f5b
1c008448:	a2978793          	addi	a5,a5,-1495 # 13f5aa29 <__CTOR_LIST__-0x80a55db>
1c00844c:	40f12423          	sw	a5,1032(sp)
1c008450:	bb3337b7          	lui	a5,0xbb333
1c008454:	66378793          	addi	a5,a5,1635 # bb333663 <__l2_shared_end+0x9f323663>
1c008458:	40f12623          	sw	a5,1036(sp)
1c00845c:	8e85e7b7          	lui	a5,0x8e85e
1c008460:	62c78793          	addi	a5,a5,1580 # 8e85e62c <__l2_shared_end+0x7284e62c>
1c008464:	40f12823          	sw	a5,1040(sp)
1c008468:	c4ab47b7          	lui	a5,0xc4ab4
1c00846c:	77478793          	addi	a5,a5,1908 # c4ab4774 <__l2_shared_end+0xa8aa4774>
1c008470:	40f12a23          	sw	a5,1044(sp)
1c008474:	6db077b7          	lui	a5,0x6db07
1c008478:	f1b78793          	addi	a5,a5,-229 # 6db06f1b <__l2_shared_end+0x51af6f1b>
1c00847c:	40f12c23          	sw	a5,1048(sp)
1c008480:	722587b7          	lui	a5,0x72258
1c008484:	8a878793          	addi	a5,a5,-1880 # 722578a8 <__l2_shared_end+0x562478a8>
1c008488:	40f12e23          	sw	a5,1052(sp)
1c00848c:	96b037b7          	lui	a5,0x96b03
1c008490:	2c378793          	addi	a5,a5,707 # 96b032c3 <__l2_shared_end+0x7aaf32c3>
1c008494:	42f12023          	sw	a5,1056(sp)
1c008498:	266937b7          	lui	a5,0x26693
1c00849c:	66078793          	addi	a5,a5,1632 # 26693660 <__l2_shared_end+0xa683660>
1c0084a0:	42f12223          	sw	a5,1060(sp)
1c0084a4:	d89e57b7          	lui	a5,0xd89e5
1c0084a8:	2bf78793          	addi	a5,a5,703 # d89e52bf <__l2_shared_end+0xbc9d52bf>
1c0084ac:	42f12423          	sw	a5,1064(sp)
1c0084b0:	4362b7b7          	lui	a5,0x4362b
1c0084b4:	aca78793          	addi	a5,a5,-1334 # 4362aaca <__l2_shared_end+0x2761aaca>
1c0084b8:	42f12623          	sw	a5,1068(sp)
1c0084bc:	2b15e7b7          	lui	a5,0x2b15e
1c0084c0:	bcc78793          	addi	a5,a5,-1076 # 2b15dbcc <__l2_shared_end+0xf14dbcc>
1c0084c4:	42f12823          	sw	a5,1072(sp)
1c0084c8:	476ec7b7          	lui	a5,0x476ec
1c0084cc:	a3678793          	addi	a5,a5,-1482 # 476eba36 <__l2_shared_end+0x2b6dba36>
1c0084d0:	42f12a23          	sw	a5,1076(sp)
1c0084d4:	5c1417b7          	lui	a5,0x5c141
1c0084d8:	4c778793          	addi	a5,a5,1223 # 5c1414c7 <__l2_shared_end+0x401314c7>
1c0084dc:	42f12c23          	sw	a5,1080(sp)
1c0084e0:	b6b3f7b7          	lui	a5,0xb6b3f
1c0084e4:	58678793          	addi	a5,a5,1414 # b6b3f586 <__l2_shared_end+0x9ab2f586>
1c0084e8:	42f12e23          	sw	a5,1084(sp)
1c0084ec:	f14ef7b7          	lui	a5,0xf14ef
1c0084f0:	81d78793          	addi	a5,a5,-2019 # f14ee81d <__l2_shared_end+0xd54de81d>
1c0084f4:	44f12023          	sw	a5,1088(sp)
1c0084f8:	fa0317b7          	lui	a5,0xfa031
1c0084fc:	d4778793          	addi	a5,a5,-697 # fa030d47 <__l2_shared_end+0xde020d47>
1c008500:	44f12223          	sw	a5,1092(sp)
1c008504:	51e337b7          	lui	a5,0x51e33
1c008508:	50178793          	addi	a5,a5,1281 # 51e33501 <__l2_shared_end+0x35e23501>
1c00850c:	44f12423          	sw	a5,1096(sp)
1c008510:	b32007b7          	lui	a5,0xb3200
1c008514:	a9478793          	addi	a5,a5,-1388 # b31ffa94 <__l2_shared_end+0x971efa94>
1c008518:	44f12623          	sw	a5,1100(sp)
1c00851c:	a50f87b7          	lui	a5,0xa50f8
1c008520:	6bc78793          	addi	a5,a5,1724 # a50f86bc <__l2_shared_end+0x890e86bc>
1c008524:	44f12823          	sw	a5,1104(sp)
1c008528:	9a29d7b7          	lui	a5,0x9a29d
1c00852c:	10078793          	addi	a5,a5,256 # 9a29d100 <__l2_shared_end+0x7e28d100>
1c008530:	44f12a23          	sw	a5,1108(sp)
1c008534:	56ce97b7          	lui	a5,0x56ce9
1c008538:	8ee78793          	addi	a5,a5,-1810 # 56ce88ee <__l2_shared_end+0x3acd88ee>
1c00853c:	44f12c23          	sw	a5,1112(sp)
1c008540:	c17647b7          	lui	a5,0xc1764
1c008544:	30578793          	addi	a5,a5,773 # c1764305 <__l2_shared_end+0xa5754305>
1c008548:	44f12e23          	sw	a5,1116(sp)
1c00854c:	3d55a7b7          	lui	a5,0x3d55a
1c008550:	c1978793          	addi	a5,a5,-999 # 3d559c19 <__l2_shared_end+0x21549c19>
1c008554:	46f12023          	sw	a5,1120(sp)
1c008558:	6f8d17b7          	lui	a5,0x6f8d1
1c00855c:	ad978793          	addi	a5,a5,-1319 # 6f8d0ad9 <__l2_shared_end+0x538c0ad9>
1c008560:	46f12223          	sw	a5,1124(sp)
1c008564:	c863c7b7          	lui	a5,0xc863c
1c008568:	79c78793          	addi	a5,a5,1948 # c863c79c <__l2_shared_end+0xac62c79c>
1c00856c:	46f12423          	sw	a5,1128(sp)
1c008570:	6dc6d7b7          	lui	a5,0x6dc6d
1c008574:	07c5                	addi	a5,a5,17
1c008576:	46f12623          	sw	a5,1132(sp)
1c00857a:	ab5207b7          	lui	a5,0xab520
1c00857e:	8a678793          	addi	a5,a5,-1882 # ab51f8a6 <__l2_shared_end+0x8f50f8a6>
1c008582:	46f12823          	sw	a5,1136(sp)
1c008586:	356607b7          	lui	a5,0x35660
1c00858a:	5f178793          	addi	a5,a5,1521 # 356605f1 <__l2_shared_end+0x196505f1>
1c00858e:	46f12a23          	sw	a5,1140(sp)
1c008592:	aa6857b7          	lui	a5,0xaa685
1c008596:	aa378793          	addi	a5,a5,-1373 # aa684aa3 <__l2_shared_end+0x8e674aa3>
1c00859a:	46f12c23          	sw	a5,1144(sp)
1c00859e:	8f8617b7          	lui	a5,0x8f861
1c0085a2:	57878793          	addi	a5,a5,1400 # 8f861578 <__l2_shared_end+0x73851578>
1c0085a6:	46f12e23          	sw	a5,1148(sp)
1c0085aa:	5c3a47b7          	lui	a5,0x5c3a4
1c0085ae:	a1578793          	addi	a5,a5,-1515 # 5c3a3a15 <__l2_shared_end+0x40393a15>
1c0085b2:	48f12023          	sw	a5,1152(sp)
1c0085b6:	b1c907b7          	lui	a5,0xb1c90
1c0085ba:	c7778793          	addi	a5,a5,-905 # b1c8fc77 <__l2_shared_end+0x95c7fc77>
1c0085be:	48f12223          	sw	a5,1156(sp)
1c0085c2:	fb0727b7          	lui	a5,0xfb072
1c0085c6:	8eb78793          	addi	a5,a5,-1813 # fb0718eb <__l2_shared_end+0xdf0618eb>
1c0085ca:	48f12423          	sw	a5,1160(sp)
1c0085ce:	b46f37b7          	lui	a5,0xb46f3
1c0085d2:	af678793          	addi	a5,a5,-1290 # b46f2af6 <__l2_shared_end+0x986e2af6>
1c0085d6:	48f12623          	sw	a5,1164(sp)
1c0085da:	005737b7          	lui	a5,0x573
1c0085de:	53b78793          	addi	a5,a5,1339 # 57353b <__CTOR_LIST__-0x1ba8cac9>
1c0085e2:	48f12823          	sw	a5,1168(sp)
1c0085e6:	943087b7          	lui	a5,0x94308
1c0085ea:	2e778793          	addi	a5,a5,743 # 943082e7 <__l2_shared_end+0x782f82e7>
1c0085ee:	48f12a23          	sw	a5,1172(sp)
1c0085f2:	e1a137b7          	lui	a5,0xe1a13
1c0085f6:	b3a78793          	addi	a5,a5,-1222 # e1a12b3a <__l2_shared_end+0xc5a02b3a>
1c0085fa:	48f12c23          	sw	a5,1176(sp)
1c0085fe:	451327b7          	lui	a5,0x45132
1c008602:	81b78793          	addi	a5,a5,-2021 # 4513181b <__l2_shared_end+0x2912181b>
1c008606:	48f12e23          	sw	a5,1180(sp)
1c00860a:	464d27b7          	lui	a5,0x464d2
1c00860e:	bb178793          	addi	a5,a5,-1103 # 464d1bb1 <__l2_shared_end+0x2a4c1bb1>
1c008612:	4af12023          	sw	a5,1184(sp)
1c008616:	357b77b7          	lui	a5,0x357b7
1c00861a:	e2678793          	addi	a5,a5,-474 # 357b6e26 <__l2_shared_end+0x197a6e26>
1c00861e:	4af12223          	sw	a5,1188(sp)
1c008622:	504a07b7          	lui	a5,0x504a0
1c008626:	79f78793          	addi	a5,a5,1951 # 504a079f <__l2_shared_end+0x3449079f>
1c00862a:	4af12423          	sw	a5,1192(sp)
1c00862e:	d75797b7          	lui	a5,0xd7579
1c008632:	80c78793          	addi	a5,a5,-2036 # d757880c <__l2_shared_end+0xbb56880c>
1c008636:	4af12623          	sw	a5,1196(sp)
1c00863a:	640fa7b7          	lui	a5,0x640fa
1c00863e:	69b78793          	addi	a5,a5,1691 # 640fa69b <__l2_shared_end+0x480ea69b>
1c008642:	4af12823          	sw	a5,1200(sp)
1c008646:	2c6637b7          	lui	a5,0x2c663
1c00864a:	d2678793          	addi	a5,a5,-730 # 2c662d26 <__l2_shared_end+0x10652d26>
1c00864e:	4af12a23          	sw	a5,1204(sp)
1c008652:	8984a7b7          	lui	a5,0x8984a
1c008656:	ccd78793          	addi	a5,a5,-819 # 89849ccd <__l2_shared_end+0x6d839ccd>
1c00865a:	4af12c23          	sw	a5,1208(sp)
1c00865e:	f69dc7b7          	lui	a5,0xf69dc
1c008662:	1a478793          	addi	a5,a5,420 # f69dc1a4 <__l2_shared_end+0xda9cc1a4>
1c008666:	4af12e23          	sw	a5,1212(sp)
1c00866a:	19db37b7          	lui	a5,0x19db3
1c00866e:	77478793          	addi	a5,a5,1908 # 19db3774 <__CTOR_LIST__-0x224c890>
1c008672:	4cf12023          	sw	a5,1216(sp)
1c008676:	76b997b7          	lui	a5,0x76b99
1c00867a:	53f78793          	addi	a5,a5,1343 # 76b9953f <__l2_shared_end+0x5ab8953f>
1c00867e:	4cf12223          	sw	a5,1220(sp)
1c008682:	15d987b7          	lui	a5,0x15d98
1c008686:	15178793          	addi	a5,a5,337 # 15d98151 <__CTOR_LIST__-0x6267eb3>
1c00868a:	4cf12423          	sw	a5,1224(sp)
1c00868e:	16b167b7          	lui	a5,0x16b16
1c008692:	22278793          	addi	a5,a5,546 # 16b16222 <__CTOR_LIST__-0x54e9de2>
1c008696:	4cf12623          	sw	a5,1228(sp)
1c00869a:	53be97b7          	lui	a5,0x53be9
1c00869e:	76f78793          	addi	a5,a5,1903 # 53be976f <__l2_shared_end+0x37bd976f>
1c0086a2:	4cf12823          	sw	a5,1232(sp)
1c0086a6:	1c0087b7          	lui	a5,0x1c008
1c0086aa:	f4978793          	addi	a5,a5,-183 # 1c007f49 <__l2_priv0_end+0x1c71>
1c0086ae:	4cf12a23          	sw	a5,1236(sp)
1c0086b2:	0279c7b7          	lui	a5,0x279c
1c0086b6:	eb178793          	addi	a5,a5,-335 # 279beb1 <__CTOR_LIST__-0x19864153>
1c0086ba:	4cf12c23          	sw	a5,1240(sp)
1c0086be:	892277b7          	lui	a5,0x89227
1c0086c2:	a4d78793          	addi	a5,a5,-1459 # 89226a4d <__l2_shared_end+0x6d216a4d>
1c0086c6:	4cf12e23          	sw	a5,1244(sp)
1c0086ca:	e104c7b7          	lui	a5,0xe104c
1c0086ce:	7bc78793          	addi	a5,a5,1980 # e104c7bc <__l2_shared_end+0xc503c7bc>
1c0086d2:	4ef12023          	sw	a5,1248(sp)
1c0086d6:	0121e7b7          	lui	a5,0x121e
1c0086da:	8b178793          	addi	a5,a5,-1871 # 121d8b1 <__CTOR_LIST__-0x1ade2753>
1c0086de:	4ef12223          	sw	a5,1252(sp)
1c0086e2:	cca367b7          	lui	a5,0xcca36
1c0086e6:	65378793          	addi	a5,a5,1619 # cca36653 <__l2_shared_end+0xb0a26653>
1c0086ea:	4ef12423          	sw	a5,1256(sp)
1c0086ee:	6b4e57b7          	lui	a5,0x6b4e5
1c0086f2:	88a78793          	addi	a5,a5,-1910 # 6b4e488a <__l2_shared_end+0x4f4d488a>
1c0086f6:	4ef12623          	sw	a5,1260(sp)
1c0086fa:	b8f1e7b7          	lui	a5,0xb8f1e
1c0086fe:	1c278793          	addi	a5,a5,450 # b8f1e1c2 <__l2_shared_end+0x9cf0e1c2>
1c008702:	4ef12823          	sw	a5,1264(sp)
1c008706:	2393f7b7          	lui	a5,0x2393f
1c00870a:	18978793          	addi	a5,a5,393 # 2393f189 <__l2_shared_end+0x792f189>
1c00870e:	4ef12a23          	sw	a5,1268(sp)
1c008712:	a01a17b7          	lui	a5,0xa01a1
1c008716:	0e378793          	addi	a5,a5,227 # a01a10e3 <__l2_shared_end+0x841910e3>
1c00871a:	4ef12c23          	sw	a5,1272(sp)
1c00871e:	62eae7b7          	lui	a5,0x62eae
1c008722:	99a78793          	addi	a5,a5,-1638 # 62ead99a <__l2_shared_end+0x46e9d99a>
1c008726:	4ef12e23          	sw	a5,1276(sp)
1c00872a:	030547b7          	lui	a5,0x3054
1c00872e:	0ba78793          	addi	a5,a5,186 # 30540ba <__CTOR_LIST__-0x18fabf4a>
1c008732:	50f12023          	sw	a5,1280(sp)
1c008736:	99b5c7b7          	lui	a5,0x99b5c
1c00873a:	f9b78793          	addi	a5,a5,-101 # 99b5bf9b <__l2_shared_end+0x7db4bf9b>
1c00873e:	50f12223          	sw	a5,1284(sp)
1c008742:	3ff957b7          	lui	a5,0x3ff95
1c008746:	58078793          	addi	a5,a5,1408 # 3ff95580 <__l2_shared_end+0x23f85580>
1c00874a:	50f12423          	sw	a5,1288(sp)
1c00874e:	44b177b7          	lui	a5,0x44b17
1c008752:	7bf78793          	addi	a5,a5,1983 # 44b177bf <__l2_shared_end+0x28b077bf>
1c008756:	50f12623          	sw	a5,1292(sp)
1c00875a:	596d17b7          	lui	a5,0x596d1
1c00875e:	13378793          	addi	a5,a5,307 # 596d1133 <__l2_shared_end+0x3d6c1133>
1c008762:	50f12823          	sw	a5,1296(sp)
1c008766:	542647b7          	lui	a5,0x54264
1c00876a:	25878793          	addi	a5,a5,600 # 54264258 <__l2_shared_end+0x38254258>
1c00876e:	50f12a23          	sw	a5,1300(sp)
1c008772:	2711e7b7          	lui	a5,0x2711e
1c008776:	ada78793          	addi	a5,a5,-1318 # 2711dada <__l2_shared_end+0xb10dada>
1c00877a:	50f12c23          	sw	a5,1304(sp)
1c00877e:	b70247b7          	lui	a5,0xb7024
1c008782:	f2178793          	addi	a5,a5,-223 # b7023f21 <__l2_shared_end+0x9b013f21>
1c008786:	50f12e23          	sw	a5,1308(sp)
1c00878a:	a0a517b7          	lui	a5,0xa0a51
1c00878e:	78778793          	addi	a5,a5,1927 # a0a51787 <__l2_shared_end+0x84a41787>
1c008792:	52f12023          	sw	a5,1312(sp)
1c008796:	d57147b7          	lui	a5,0xd5714
1c00879a:	24578793          	addi	a5,a5,581 # d5714245 <__l2_shared_end+0xb9704245>
1c00879e:	52f12223          	sw	a5,1316(sp)
1c0087a2:	1725c7b7          	lui	a5,0x1725c
1c0087a6:	0b078793          	addi	a5,a5,176 # 1725c0b0 <__CTOR_LIST__-0x4da3f54>
1c0087aa:	52f12423          	sw	a5,1320(sp)
1c0087ae:	3c7ac7b7          	lui	a5,0x3c7ac
1c0087b2:	2a678793          	addi	a5,a5,678 # 3c7ac2a6 <__l2_shared_end+0x2079c2a6>
1c0087b6:	52f12623          	sw	a5,1324(sp)
1c0087ba:	1d1017b7          	lui	a5,0x1d101
1c0087be:	03678793          	addi	a5,a5,54 # 1d101036 <__l2_shared_end+0x10f1036>
1c0087c2:	52f12823          	sw	a5,1328(sp)
1c0087c6:	a20947b7          	lui	a5,0xa2094
1c0087ca:	c7578793          	addi	a5,a5,-907 # a2093c75 <__l2_shared_end+0x86083c75>
1c0087ce:	52f12a23          	sw	a5,1332(sp)
1c0087d2:	547777b7          	lui	a5,0x54777
1c0087d6:	15578793          	addi	a5,a5,341 # 54777155 <__l2_shared_end+0x38767155>
1c0087da:	52f12c23          	sw	a5,1336(sp)
1c0087de:	b213e7b7          	lui	a5,0xb213e
1c0087e2:	c7778793          	addi	a5,a5,-905 # b213dc77 <__l2_shared_end+0x9612dc77>
1c0087e6:	52f12e23          	sw	a5,1340(sp)
1c0087ea:	49db07b7          	lui	a5,0x49db0
1c0087ee:	4e478793          	addi	a5,a5,1252 # 49db04e4 <__l2_shared_end+0x2dda04e4>
1c0087f2:	54f12023          	sw	a5,1344(sp)
1c0087f6:	35a9c7b7          	lui	a5,0x35a9c
1c0087fa:	96578793          	addi	a5,a5,-1691 # 35a9b965 <__l2_shared_end+0x19a8b965>
1c0087fe:	54f12223          	sw	a5,1348(sp)
1c008802:	3ac737b7          	lui	a5,0x3ac73
1c008806:	078d                	addi	a5,a5,3
1c008808:	54f12423          	sw	a5,1352(sp)
1c00880c:	d34237b7          	lui	a5,0xd3423
1c008810:	68a78793          	addi	a5,a5,1674 # d342368a <__l2_shared_end+0xb741368a>
1c008814:	54f12623          	sw	a5,1356(sp)
1c008818:	38a307b7          	lui	a5,0x38a30
1c00881c:	89a78793          	addi	a5,a5,-1894 # 38a2f89a <__l2_shared_end+0x1ca1f89a>
1c008820:	54f12823          	sw	a5,1360(sp)
1c008824:	c685b7b7          	lui	a5,0xc685b
1c008828:	b3978793          	addi	a5,a5,-1223 # c685ab39 <__l2_shared_end+0xaa84ab39>
1c00882c:	54f12a23          	sw	a5,1364(sp)
1c008830:	f21267b7          	lui	a5,0xf2126
1c008834:	b3578793          	addi	a5,a5,-1227 # f2125b35 <__l2_shared_end+0xd6115b35>
1c008838:	54f12c23          	sw	a5,1368(sp)
1c00883c:	814a07b7          	lui	a5,0x814a0
1c008840:	87978793          	addi	a5,a5,-1927 # 8149f879 <__l2_shared_end+0x6548f879>
1c008844:	54f12e23          	sw	a5,1372(sp)
1c008848:	540d37b7          	lui	a5,0x540d3
1c00884c:	83c78793          	addi	a5,a5,-1988 # 540d283c <__l2_shared_end+0x380c283c>
1c008850:	56f12023          	sw	a5,1376(sp)
1c008854:	993e97b7          	lui	a5,0x993e9
1c008858:	1c578793          	addi	a5,a5,453 # 993e91c5 <__l2_shared_end+0x7d3d91c5>
1c00885c:	56f12223          	sw	a5,1380(sp)
1c008860:	0a6a97b7          	lui	a5,0xa6a9
1c008864:	4b678793          	addi	a5,a5,1206 # a6a94b6 <__CTOR_LIST__-0x11956b4e>
1c008868:	56f12423          	sw	a5,1384(sp)
1c00886c:	8c2c07b7          	lui	a5,0x8c2c0
1c008870:	1af78793          	addi	a5,a5,431 # 8c2c01af <__l2_shared_end+0x702b01af>
1c008874:	56f12623          	sw	a5,1388(sp)
1c008878:	965307b7          	lui	a5,0x96530
1c00887c:	2ab78793          	addi	a5,a5,683 # 965302ab <__l2_shared_end+0x7a5202ab>
1c008880:	56f12823          	sw	a5,1392(sp)
1c008884:	02f057b7          	lui	a5,0x2f05
1c008888:	5b278793          	addi	a5,a5,1458 # 2f055b2 <__CTOR_LIST__-0x190faa52>
1c00888c:	56f12a23          	sw	a5,1396(sp)
1c008890:	61c737b7          	lui	a5,0x61c73
1c008894:	7d878793          	addi	a5,a5,2008 # 61c737d8 <__l2_shared_end+0x45c637d8>
1c008898:	56f12c23          	sw	a5,1400(sp)
1c00889c:	eb4a37b7          	lui	a5,0xeb4a3
1c0088a0:	ad478793          	addi	a5,a5,-1324 # eb4a2ad4 <__l2_shared_end+0xcf492ad4>
1c0088a4:	56f12e23          	sw	a5,1404(sp)
1c0088a8:	56f4c7b7          	lui	a5,0x56f4c
1c0088ac:	53878793          	addi	a5,a5,1336 # 56f4c538 <__l2_shared_end+0x3af3c538>
1c0088b0:	58f12023          	sw	a5,1408(sp)
1c0088b4:	169ef7b7          	lui	a5,0x169ef
1c0088b8:	7aa78793          	addi	a5,a5,1962 # 169ef7aa <__CTOR_LIST__-0x561085a>
1c0088bc:	58f12223          	sw	a5,1412(sp)
1c0088c0:	b4c607b7          	lui	a5,0xb4c60
1c0088c4:	02778793          	addi	a5,a5,39 # b4c60027 <__l2_shared_end+0x98c50027>
1c0088c8:	58f12423          	sw	a5,1416(sp)
1c0088cc:	6fca97b7          	lui	a5,0x6fca9
1c0088d0:	e0478793          	addi	a5,a5,-508 # 6fca8e04 <__l2_shared_end+0x53c98e04>
1c0088d4:	58f12623          	sw	a5,1420(sp)
1c0088d8:	f96777b7          	lui	a5,0xf9677
1c0088dc:	39a78793          	addi	a5,a5,922 # f967739a <__l2_shared_end+0xdd66739a>
1c0088e0:	58f12823          	sw	a5,1424(sp)
1c0088e4:	7bd647b7          	lui	a5,0x7bd64
1c0088e8:	80278793          	addi	a5,a5,-2046 # 7bd63802 <__l2_shared_end+0x5fd53802>
1c0088ec:	58f12a23          	sw	a5,1428(sp)
1c0088f0:	0d6a97b7          	lui	a5,0xd6a9
1c0088f4:	ecf78793          	addi	a5,a5,-305 # d6a8ecf <__CTOR_LIST__-0xe957135>
1c0088f8:	58f12c23          	sw	a5,1432(sp)
1c0088fc:	073c57b7          	lui	a5,0x73c5
1c008900:	58a78793          	addi	a5,a5,1418 # 73c558a <__CTOR_LIST__-0x14c3aa7a>
1c008904:	58f12e23          	sw	a5,1436(sp)
1c008908:	d2f927b7          	lui	a5,0xd2f92
1c00890c:	21578793          	addi	a5,a5,533 # d2f92215 <__l2_shared_end+0xb6f82215>
1c008910:	5af12023          	sw	a5,1440(sp)
1c008914:	482857b7          	lui	a5,0x48285
1c008918:	e3978793          	addi	a5,a5,-455 # 48284e39 <__l2_shared_end+0x2c274e39>
1c00891c:	5af12223          	sw	a5,1444(sp)
1c008920:	be4827b7          	lui	a5,0xbe482
1c008924:	03d78793          	addi	a5,a5,61 # be48203d <__l2_shared_end+0xa247203d>
1c008928:	5af12423          	sw	a5,1448(sp)
1c00892c:	8c9c97b7          	lui	a5,0x8c9c9
1c008930:	f2a78793          	addi	a5,a5,-214 # 8c9c8f2a <__l2_shared_end+0x709b8f2a>
1c008934:	5af12623          	sw	a5,1452(sp)
1c008938:	1a9947b7          	lui	a5,0x1a994
1c00893c:	98e78793          	addi	a5,a5,-1650 # 1a99398e <__CTOR_LIST__-0x166c676>
1c008940:	5af12823          	sw	a5,1456(sp)
1c008944:	7e3c27b7          	lui	a5,0x7e3c2
1c008948:	74178793          	addi	a5,a5,1857 # 7e3c2741 <__l2_shared_end+0x623b2741>
1c00894c:	5af12a23          	sw	a5,1460(sp)
1c008950:	6afcb7b7          	lui	a5,0x6afcb
1c008954:	eac78793          	addi	a5,a5,-340 # 6afcaeac <__l2_shared_end+0x4efbaeac>
1c008958:	5af12c23          	sw	a5,1464(sp)
1c00895c:	70e897b7          	lui	a5,0x70e89
1c008960:	b3078793          	addi	a5,a5,-1232 # 70e88b30 <__l2_shared_end+0x54e78b30>
1c008964:	5af12e23          	sw	a5,1468(sp)
1c008968:	174167b7          	lui	a5,0x17416
1c00896c:	bb478793          	addi	a5,a5,-1100 # 17415bb4 <__CTOR_LIST__-0x4bea450>
1c008970:	5cf12023          	sw	a5,1472(sp)
1c008974:	4a9517b7          	lui	a5,0x4a951
1c008978:	26478793          	addi	a5,a5,612 # 4a951264 <__l2_shared_end+0x2e941264>
1c00897c:	5cf12223          	sw	a5,1476(sp)
1c008980:	3dd817b7          	lui	a5,0x3dd81
1c008984:	f1a78793          	addi	a5,a5,-230 # 3dd80f1a <__l2_shared_end+0x21d70f1a>
1c008988:	5cf12423          	sw	a5,1480(sp)
1c00898c:	b25a37b7          	lui	a5,0xb25a3
1c008990:	a3678793          	addi	a5,a5,-1482 # b25a2a36 <__l2_shared_end+0x96592a36>
1c008994:	5cf12623          	sw	a5,1484(sp)
1c008998:	ec3d67b7          	lui	a5,0xec3d6
1c00899c:	68878793          	addi	a5,a5,1672 # ec3d6688 <__l2_shared_end+0xd03c6688>
1c0089a0:	5cf12823          	sw	a5,1488(sp)
1c0089a4:	28b657b7          	lui	a5,0x28b65
1c0089a8:	65478793          	addi	a5,a5,1620 # 28b65654 <__l2_shared_end+0xcb55654>
1c0089ac:	5cf12a23          	sw	a5,1492(sp)
1c0089b0:	ec2c17b7          	lui	a5,0xec2c1
1c0089b4:	b6d78793          	addi	a5,a5,-1171 # ec2c0b6d <__l2_shared_end+0xd02b0b6d>
1c0089b8:	5cf12c23          	sw	a5,1496(sp)
1c0089bc:	fb2227b7          	lui	a5,0xfb222
1c0089c0:	9b078793          	addi	a5,a5,-1616 # fb2219b0 <__l2_shared_end+0xdf2119b0>
1c0089c4:	5cf12e23          	sw	a5,1500(sp)
1c0089c8:	023847b7          	lui	a5,0x2384
1c0089cc:	73d78793          	addi	a5,a5,1853 # 238473d <__CTOR_LIST__-0x19c7b8c7>
1c0089d0:	5ef12023          	sw	a5,1504(sp)
1c0089d4:	638637b7          	lui	a5,0x63863
1c0089d8:	bea78793          	addi	a5,a5,-1046 # 63862bea <__l2_shared_end+0x47852bea>
1c0089dc:	5ef12223          	sw	a5,1508(sp)
1c0089e0:	4502d7b7          	lui	a5,0x4502d
1c0089e4:	e9b78793          	addi	a5,a5,-357 # 4502ce9b <__l2_shared_end+0x2901ce9b>
1c0089e8:	5ef12423          	sw	a5,1512(sp)
1c0089ec:	1c2647b7          	lui	a5,0x1c264
1c0089f0:	90378793          	addi	a5,a5,-1789 # 1c263903 <__l2_shared_end+0x253903>
1c0089f4:	5ef12623          	sw	a5,1516(sp)
1c0089f8:	e114b7b7          	lui	a5,0xe114b
1c0089fc:	1ff78793          	addi	a5,a5,511 # e114b1ff <__l2_shared_end+0xc513b1ff>
1c008a00:	5ef12823          	sw	a5,1520(sp)
1c008a04:	06e927b7          	lui	a5,0x6e92
1c008a08:	5e778793          	addi	a5,a5,1511 # 6e925e7 <__CTOR_LIST__-0x1516da1d>
1c008a0c:	5ef12a23          	sw	a5,1524(sp)
1c008a10:	166a87b7          	lui	a5,0x166a8
1c008a14:	27778793          	addi	a5,a5,631 # 166a8277 <__CTOR_LIST__-0x5957d8d>
1c008a18:	5ef12c23          	sw	a5,1528(sp)
1c008a1c:	b286f7b7          	lui	a5,0xb286f
1c008a20:	68878793          	addi	a5,a5,1672 # b286f688 <__l2_shared_end+0x9685f688>
1c008a24:	5ef12e23          	sw	a5,1532(sp)
1c008a28:	9c7787b7          	lui	a5,0x9c778
1c008a2c:	89a78793          	addi	a5,a5,-1894 # 9c77789a <__l2_shared_end+0x8076789a>
1c008a30:	60f12023          	sw	a5,1536(sp)
1c008a34:	5d3127b7          	lui	a5,0x5d312
1c008a38:	29878793          	addi	a5,a5,664 # 5d312298 <__l2_shared_end+0x41302298>
1c008a3c:	60f12223          	sw	a5,1540(sp)
1c008a40:	5357c7b7          	lui	a5,0x5357c
1c008a44:	5af78793          	addi	a5,a5,1455 # 5357c5af <__l2_shared_end+0x3756c5af>
1c008a48:	60f12423          	sw	a5,1544(sp)
1c008a4c:	d38e97b7          	lui	a5,0xd38e9
1c008a50:	ce978793          	addi	a5,a5,-791 # d38e8ce9 <__l2_shared_end+0xb78d8ce9>
1c008a54:	60f12623          	sw	a5,1548(sp)
1c008a58:	322b27b7          	lui	a5,0x322b2
1c008a5c:	f2278793          	addi	a5,a5,-222 # 322b1f22 <__l2_shared_end+0x162a1f22>
1c008a60:	60f12823          	sw	a5,1552(sp)
1c008a64:	8a5c87b7          	lui	a5,0x8a5c8
1c008a68:	02078793          	addi	a5,a5,32 # 8a5c8020 <__l2_shared_end+0x6e5b8020>
1c008a6c:	60f12a23          	sw	a5,1556(sp)
1c008a70:	5533a7b7          	lui	a5,0x5533a
1c008a74:	82878793          	addi	a5,a5,-2008 # 55339828 <__l2_shared_end+0x39329828>
1c008a78:	60f12c23          	sw	a5,1560(sp)
1c008a7c:	6fa387b7          	lui	a5,0x6fa38
1c008a80:	d2078793          	addi	a5,a5,-736 # 6fa37d20 <__l2_shared_end+0x53a27d20>
1c008a84:	60f12e23          	sw	a5,1564(sp)
1c008a88:	c89b37b7          	lui	a5,0xc89b3
1c008a8c:	fb778793          	addi	a5,a5,-73 # c89b2fb7 <__l2_shared_end+0xac9a2fb7>
1c008a90:	62f12023          	sw	a5,1568(sp)
1c008a94:	b91317b7          	lui	a5,0xb9131
1c008a98:	a5c78793          	addi	a5,a5,-1444 # b9130a5c <__l2_shared_end+0x9d120a5c>
1c008a9c:	62f12223          	sw	a5,1572(sp)
1c008aa0:	6f5847b7          	lui	a5,0x6f584
1c008aa4:	1d078793          	addi	a5,a5,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c008aa8:	62f12423          	sw	a5,1576(sp)
1c008aac:	b1fe87b7          	lui	a5,0xb1fe8
1c008ab0:	3d578793          	addi	a5,a5,981 # b1fe83d5 <__l2_shared_end+0x95fd83d5>
1c008ab4:	62f12623          	sw	a5,1580(sp)
1c008ab8:	405b07b7          	lui	a5,0x405b0
1c008abc:	d2a78793          	addi	a5,a5,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c008ac0:	62f12823          	sw	a5,1584(sp)
1c008ac4:	433bd7b7          	lui	a5,0x433bd
1c008ac8:	32d78793          	addi	a5,a5,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c008acc:	62f12a23          	sw	a5,1588(sp)
1c008ad0:	a45f47b7          	lui	a5,0xa45f4
1c008ad4:	f5478793          	addi	a5,a5,-172 # a45f3f54 <__l2_shared_end+0x885e3f54>
1c008ad8:	62f12c23          	sw	a5,1592(sp)
1c008adc:	1c000537          	lui	a0,0x1c000
1c008ae0:	8d6c47b7          	lui	a5,0x8d6c4
1c008ae4:	3eb78793          	addi	a5,a5,1003 # 8d6c43eb <__l2_shared_end+0x716b43eb>
1c008ae8:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c008aec:	62f12e23          	sw	a5,1596(sp)
1c008af0:	06d020ef          	jal	ra,1c00b35c <puts>
1c008af4:	1608                	addi	a0,sp,800
1c008af6:	32000593          	li	a1,800
1c008afa:	e5aff0ef          	jal	ra,1c008154 <printbytes>
1c008afe:	1610                	addi	a2,sp,800
1c008b00:	858a                	mv	a1,sp
1c008b02:	1008                	addi	a0,sp,32
1c008b04:	3df010ef          	jal	ra,1c00a6e2 <PQCLEAN_KYBER512_CLEAN_crypto_kem_enc>
1c008b08:	1c000537          	lui	a0,0x1c000
1c008b0c:	12850513          	addi	a0,a0,296 # 1c000128 <__clz_tab+0x10c>
1c008b10:	04d020ef          	jal	ra,1c00b35c <puts>
1c008b14:	1c000537          	lui	a0,0x1c000
1c008b18:	13c50513          	addi	a0,a0,316 # 1c00013c <__clz_tab+0x120>
1c008b1c:	041020ef          	jal	ra,1c00b35c <puts>
1c008b20:	30000593          	li	a1,768
1c008b24:	1008                	addi	a0,sp,32
1c008b26:	e2eff0ef          	jal	ra,1c008154 <printbytes>
1c008b2a:	1c000537          	lui	a0,0x1c000
1c008b2e:	14450513          	addi	a0,a0,324 # 1c000144 <__clz_tab+0x128>
1c008b32:	02b020ef          	jal	ra,1c00b35c <puts>
1c008b36:	850a                	mv	a0,sp
1c008b38:	02000593          	li	a1,32
1c008b3c:	e18ff0ef          	jal	ra,1c008154 <printbytes>
1c008b40:	64c12083          	lw	ra,1612(sp)
1c008b44:	4501                	li	a0,0
1c008b46:	65010113          	addi	sp,sp,1616
1c008b4a:	8082                	ret

1c008b4c <pos_fll_init>:
1c008b4c:	1101                	addi	sp,sp,-32
1c008b4e:	1a1005b7          	lui	a1,0x1a100
1c008b52:	c64e                	sw	s3,12(sp)
1c008b54:	00451613          	slli	a2,a0,0x4
1c008b58:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c008b5c:	99b2                	add	s3,s3,a2
1c008b5e:	0009a703          	lw	a4,0(s3)
1c008b62:	ca26                	sw	s1,20(sp)
1c008b64:	ce06                	sw	ra,28(sp)
1c008b66:	cc22                	sw	s0,24(sp)
1c008b68:	c84a                	sw	s2,16(sp)
1c008b6a:	c452                	sw	s4,8(sp)
1c008b6c:	84aa                	mv	s1,a0
1c008b6e:	87ba                	mv	a5,a4
1c008b70:	04074763          	bltz	a4,1c008bbe <pos_fll_init+0x72>
1c008b74:	00858693          	addi	a3,a1,8
1c008b78:	96b2                	add	a3,a3,a2
1c008b7a:	429c                	lw	a5,0(a3)
1c008b7c:	f0000537          	lui	a0,0xf0000
1c008b80:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c008b84:	8fe9                	and	a5,a5,a0
1c008b86:	00502537          	lui	a0,0x502
1c008b8a:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c008b8e:	8fc9                	or	a5,a5,a0
1c008b90:	05b1                	addi	a1,a1,12
1c008b92:	c29c                	sw	a5,0(a3)
1c008b94:	962e                	add	a2,a2,a1
1c008b96:	4214                	lw	a3,0(a2)
1c008b98:	fc0107b7          	lui	a5,0xfc010
1c008b9c:	17fd                	addi	a5,a5,-1
1c008b9e:	01875593          	srli	a1,a4,0x18
1c008ba2:	8efd                	and	a3,a3,a5
1c008ba4:	0c05e593          	ori	a1,a1,192
1c008ba8:	00871793          	slli	a5,a4,0x8
1c008bac:	014c0537          	lui	a0,0x14c0
1c008bb0:	8ec9                	or	a3,a3,a0
1c008bb2:	05e2                	slli	a1,a1,0x18
1c008bb4:	83a1                	srli	a5,a5,0x8
1c008bb6:	c214                	sw	a3,0(a2)
1c008bb8:	8fcd                	or	a5,a5,a1
1c008bba:	00f9a023          	sw	a5,0(s3)
1c008bbe:	1c006437          	lui	s0,0x1c006
1c008bc2:	2b840413          	addi	s0,s0,696 # 1c0062b8 <pos_fll_freq>
1c008bc6:	00249a13          	slli	s4,s1,0x2
1c008bca:	014406b3          	add	a3,s0,s4
1c008bce:	0006a903          	lw	s2,0(a3)
1c008bd2:	02091d63          	bnez	s2,1c008c0c <pos_fll_init+0xc0>
1c008bd6:	83e9                	srli	a5,a5,0x1a
1c008bd8:	0742                	slli	a4,a4,0x10
1c008bda:	8341                	srli	a4,a4,0x10
1c008bdc:	8bbd                	andi	a5,a5,15
1c008bde:	073e                	slli	a4,a4,0xf
1c008be0:	17fd                	addi	a5,a5,-1
1c008be2:	00f75933          	srl	s2,a4,a5
1c008be6:	0126a023          	sw	s2,0(a3)
1c008bea:	1c0066b7          	lui	a3,0x1c006
1c008bee:	2b068693          	addi	a3,a3,688 # 1c0062b0 <pos_fll_is_on>
1c008bf2:	96a6                	add	a3,a3,s1
1c008bf4:	4785                	li	a5,1
1c008bf6:	00f68023          	sb	a5,0(a3)
1c008bfa:	40f2                	lw	ra,28(sp)
1c008bfc:	4462                	lw	s0,24(sp)
1c008bfe:	44d2                	lw	s1,20(sp)
1c008c00:	49b2                	lw	s3,12(sp)
1c008c02:	4a22                	lw	s4,8(sp)
1c008c04:	854a                	mv	a0,s2
1c008c06:	4942                	lw	s2,16(sp)
1c008c08:	6105                	addi	sp,sp,32
1c008c0a:	8082                	ret
1c008c0c:	854a                	mv	a0,s2
1c008c0e:	cfaff0ef          	jal	ra,1c008108 <__clzsi2>
1c008c12:	1579                	addi	a0,a0,-2
1c008c14:	8105                	srli	a0,a0,0x1
1c008c16:	c939                	beqz	a0,1c008c6c <pos_fll_init+0x120>
1c008c18:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c008c1c:	1c0066b7          	lui	a3,0x1c006
1c008c20:	4785                	li	a5,1
1c008c22:	00c797b3          	sll	a5,a5,a2
1c008c26:	00a91733          	sll	a4,s2,a0
1c008c2a:	2b068693          	addi	a3,a3,688 # 1c0062b0 <pos_fll_is_on>
1c008c2e:	7661                	lui	a2,0xffff8
1c008c30:	8e79                	and	a2,a2,a4
1c008c32:	009685b3          	add	a1,a3,s1
1c008c36:	97b2                	add	a5,a5,a2
1c008c38:	0005c603          	lbu	a2,0(a1)
1c008c3c:	9452                	add	s0,s0,s4
1c008c3e:	00a7d7b3          	srl	a5,a5,a0
1c008c42:	c01c                	sw	a5,0(s0)
1c008c44:	d65d                	beqz	a2,1c008bf2 <pos_fll_init+0xa6>
1c008c46:	0009a783          	lw	a5,0(s3)
1c008c4a:	833d                	srli	a4,a4,0xf
1c008c4c:	0742                	slli	a4,a4,0x10
1c008c4e:	7641                	lui	a2,0xffff0
1c008c50:	8341                	srli	a4,a4,0x10
1c008c52:	8ff1                	and	a5,a5,a2
1c008c54:	8fd9                	or	a5,a5,a4
1c008c56:	0505                	addi	a0,a0,1
1c008c58:	c4000737          	lui	a4,0xc4000
1c008c5c:	893d                	andi	a0,a0,15
1c008c5e:	177d                	addi	a4,a4,-1
1c008c60:	056a                	slli	a0,a0,0x1a
1c008c62:	8ff9                	and	a5,a5,a4
1c008c64:	8d5d                	or	a0,a0,a5
1c008c66:	00a9a023          	sw	a0,0(s3)
1c008c6a:	b761                	j	1c008bf2 <pos_fll_init+0xa6>
1c008c6c:	4505                	li	a0,1
1c008c6e:	b76d                	j	1c008c18 <pos_fll_init+0xcc>

1c008c70 <pos_fll_constructor>:
1c008c70:	1c0067b7          	lui	a5,0x1c006
1c008c74:	2b878793          	addi	a5,a5,696 # 1c0062b8 <pos_fll_freq>
1c008c78:	0007a023          	sw	zero,0(a5)
1c008c7c:	0007a223          	sw	zero,4(a5)
1c008c80:	1c0067b7          	lui	a5,0x1c006
1c008c84:	2a079823          	sh	zero,688(a5) # 1c0062b0 <pos_fll_is_on>
1c008c88:	8082                	ret

1c008c8a <pos_soc_init>:
1c008c8a:	1141                	addi	sp,sp,-16
1c008c8c:	c606                	sw	ra,12(sp)
1c008c8e:	c422                	sw	s0,8(sp)
1c008c90:	37c5                	jal	1c008c70 <pos_fll_constructor>
1c008c92:	4501                	li	a0,0
1c008c94:	3d65                	jal	1c008b4c <pos_fll_init>
1c008c96:	1c006437          	lui	s0,0x1c006
1c008c9a:	87aa                	mv	a5,a0
1c008c9c:	2c040413          	addi	s0,s0,704 # 1c0062c0 <pos_freq_domains>
1c008ca0:	4505                	li	a0,1
1c008ca2:	c01c                	sw	a5,0(s0)
1c008ca4:	3565                	jal	1c008b4c <pos_fll_init>
1c008ca6:	40b2                	lw	ra,12(sp)
1c008ca8:	c408                	sw	a0,8(s0)
1c008caa:	4422                	lw	s0,8(sp)
1c008cac:	0141                	addi	sp,sp,16
1c008cae:	8082                	ret

1c008cb0 <KeccakF1600_StatePermute>:
1c008cb0:	1a400837          	lui	a6,0x1a400
1c008cb4:	87aa                	mv	a5,a0
1c008cb6:	0c850613          	addi	a2,a0,200
1c008cba:	1141                	addi	sp,sp,-16
1c008cbc:	40a80533          	sub	a0,a6,a0
1c008cc0:	4394                	lw	a3,0(a5)
1c008cc2:	00f50733          	add	a4,a0,a5
1c008cc6:	0791                	addi	a5,a5,4
1c008cc8:	c314                	sw	a3,0(a4)
1c008cca:	fec79be3          	bne	a5,a2,1c008cc0 <KeccakF1600_StatePermute+0x10>
1c008cce:	4785                	li	a5,1
1c008cd0:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c008cd4:	1a400737          	lui	a4,0x1a400
1c008cd8:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c008cdc:	8b85                	andi	a5,a5,1
1c008cde:	dfed                	beqz	a5,1c008cd8 <KeccakF1600_StatePermute+0x28>
1c008ce0:	c602                	sw	zero,12(sp)
1c008ce2:	4732                	lw	a4,12(sp)
1c008ce4:	03100793          	li	a5,49
1c008ce8:	02e7c663          	blt	a5,a4,1c008d14 <KeccakF1600_StatePermute+0x64>
1c008cec:	1a400637          	lui	a2,0x1a400
1c008cf0:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c008cf4:	03100513          	li	a0,49
1c008cf8:	4732                	lw	a4,12(sp)
1c008cfa:	47b2                	lw	a5,12(sp)
1c008cfc:	070a                	slli	a4,a4,0x2
1c008cfe:	9732                	add	a4,a4,a2
1c008d00:	4314                	lw	a3,0(a4)
1c008d02:	4732                	lw	a4,12(sp)
1c008d04:	078a                	slli	a5,a5,0x2
1c008d06:	97ae                	add	a5,a5,a1
1c008d08:	0705                	addi	a4,a4,1
1c008d0a:	c63a                	sw	a4,12(sp)
1c008d0c:	4732                	lw	a4,12(sp)
1c008d0e:	c394                	sw	a3,0(a5)
1c008d10:	fee554e3          	bge	a0,a4,1c008cf8 <KeccakF1600_StatePermute+0x48>
1c008d14:	0141                	addi	sp,sp,16
1c008d16:	8082                	ret

1c008d18 <KYBER_poly_ntt>:
1c008d18:	1a4007b7          	lui	a5,0x1a400
1c008d1c:	4705                	li	a4,1
1c008d1e:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c008d22:	3007a423          	sw	zero,776(a5)
1c008d26:	20050693          	addi	a3,a0,512
1c008d2a:	1a400737          	lui	a4,0x1a400
1c008d2e:	411c                	lw	a5,0(a0)
1c008d30:	0511                	addi	a0,a0,4
1c008d32:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008d36:	fed51ce3          	bne	a0,a3,1c008d2e <KYBER_poly_ntt+0x16>
1c008d3a:	08000793          	li	a5,128
1c008d3e:	30f72423          	sw	a5,776(a4)
1c008d42:	30072423          	sw	zero,776(a4)
1c008d46:	1a400737          	lui	a4,0x1a400
1c008d4a:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c008d4e:	8b85                	andi	a5,a5,1
1c008d50:	dfed                	beqz	a5,1c008d4a <KYBER_poly_ntt+0x32>
1c008d52:	47c1                	li	a5,16
1c008d54:	30f72423          	sw	a5,776(a4)
1c008d58:	30072423          	sw	zero,776(a4)
1c008d5c:	20058693          	addi	a3,a1,512
1c008d60:	1a400737          	lui	a4,0x1a400
1c008d64:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c008d68:	0591                	addi	a1,a1,4
1c008d6a:	fef5ae23          	sw	a5,-4(a1)
1c008d6e:	fed59be3          	bne	a1,a3,1c008d64 <KYBER_poly_ntt+0x4c>
1c008d72:	8082                	ret

1c008d74 <KYBER_poly_intt>:
1c008d74:	1a4007b7          	lui	a5,0x1a400
1c008d78:	4709                	li	a4,2
1c008d7a:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c008d7e:	3007a423          	sw	zero,776(a5)
1c008d82:	20050693          	addi	a3,a0,512
1c008d86:	1a400737          	lui	a4,0x1a400
1c008d8a:	411c                	lw	a5,0(a0)
1c008d8c:	0511                	addi	a0,a0,4
1c008d8e:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008d92:	fed51ce3          	bne	a0,a3,1c008d8a <KYBER_poly_intt+0x16>
1c008d96:	20000793          	li	a5,512
1c008d9a:	30f72423          	sw	a5,776(a4)
1c008d9e:	30072423          	sw	zero,776(a4)
1c008da2:	1a400737          	lui	a4,0x1a400
1c008da6:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c008daa:	8b85                	andi	a5,a5,1
1c008dac:	dfed                	beqz	a5,1c008da6 <KYBER_poly_intt+0x32>
1c008dae:	47c1                	li	a5,16
1c008db0:	30f72423          	sw	a5,776(a4)
1c008db4:	30072423          	sw	zero,776(a4)
1c008db8:	20058693          	addi	a3,a1,512
1c008dbc:	1a400737          	lui	a4,0x1a400
1c008dc0:	0001                	nop
1c008dc2:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c008dc6:	0591                	addi	a1,a1,4
1c008dc8:	fef5ae23          	sw	a5,-4(a1)
1c008dcc:	fed59ae3          	bne	a1,a3,1c008dc0 <KYBER_poly_intt+0x4c>
1c008dd0:	8082                	ret

1c008dd2 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>:
1c008dd2:	002496b7          	lui	a3,0x249
1c008dd6:	0c058e13          	addi	t3,a1,192
1c008dda:	24968693          	addi	a3,a3,585 # 249249 <__CTOR_LIST__-0x1bdb6dbb>
1c008dde:	0015c703          	lbu	a4,1(a1)
1c008de2:	0025c783          	lbu	a5,2(a1)
1c008de6:	0005c603          	lbu	a2,0(a1)
1c008dea:	0722                	slli	a4,a4,0x8
1c008dec:	07c2                	slli	a5,a5,0x10
1c008dee:	8f5d                	or	a4,a4,a5
1c008df0:	8f51                	or	a4,a4,a2
1c008df2:	00175793          	srli	a5,a4,0x1
1c008df6:	00275613          	srli	a2,a4,0x2
1c008dfa:	8e75                	and	a2,a2,a3
1c008dfc:	8ff5                	and	a5,a5,a3
1c008dfe:	8f75                	and	a4,a4,a3
1c008e00:	97b2                	add	a5,a5,a2
1c008e02:	97ba                	add	a5,a5,a4
1c008e04:	0037df13          	srli	t5,a5,0x3
1c008e08:	0067d813          	srli	a6,a5,0x6
1c008e0c:	0097de93          	srli	t4,a5,0x9
1c008e10:	00c7d613          	srli	a2,a5,0xc
1c008e14:	00f7d313          	srli	t1,a5,0xf
1c008e18:	0127d713          	srli	a4,a5,0x12
1c008e1c:	0077f893          	andi	a7,a5,7
1c008e20:	007f7f13          	andi	t5,t5,7
1c008e24:	00787813          	andi	a6,a6,7
1c008e28:	007efe93          	andi	t4,t4,7
1c008e2c:	8a1d                	andi	a2,a2,7
1c008e2e:	00737313          	andi	t1,t1,7
1c008e32:	8b1d                	andi	a4,a4,7
1c008e34:	83d5                	srli	a5,a5,0x15
1c008e36:	41e888b3          	sub	a7,a7,t5
1c008e3a:	41d80833          	sub	a6,a6,t4
1c008e3e:	40660633          	sub	a2,a2,t1
1c008e42:	40f707b3          	sub	a5,a4,a5
1c008e46:	01151023          	sh	a7,0(a0)
1c008e4a:	01051123          	sh	a6,2(a0)
1c008e4e:	00c51223          	sh	a2,4(a0)
1c008e52:	00f51323          	sh	a5,6(a0)
1c008e56:	058d                	addi	a1,a1,3
1c008e58:	0521                	addi	a0,a0,8
1c008e5a:	f8be12e3          	bne	t3,a1,1c008dde <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1+0xc>
1c008e5e:	8082                	ret

1c008e60 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2>:
1c008e60:	1101                	addi	sp,sp,-32
1c008e62:	55555f37          	lui	t5,0x55555
1c008e66:	ce22                	sw	s0,28(sp)
1c008e68:	cc26                	sw	s1,24(sp)
1c008e6a:	ca4a                	sw	s2,20(sp)
1c008e6c:	c84e                	sw	s3,16(sp)
1c008e6e:	c652                	sw	s4,12(sp)
1c008e70:	20050f93          	addi	t6,a0,512
1c008e74:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c008e78:	0015c683          	lbu	a3,1(a1)
1c008e7c:	0005c603          	lbu	a2,0(a1)
1c008e80:	0025c783          	lbu	a5,2(a1)
1c008e84:	0035c703          	lbu	a4,3(a1)
1c008e88:	06a2                	slli	a3,a3,0x8
1c008e8a:	8ed1                	or	a3,a3,a2
1c008e8c:	07c2                	slli	a5,a5,0x10
1c008e8e:	8fd5                	or	a5,a5,a3
1c008e90:	0762                	slli	a4,a4,0x18
1c008e92:	8f5d                	or	a4,a4,a5
1c008e94:	00175793          	srli	a5,a4,0x1
1c008e98:	01e7f7b3          	and	a5,a5,t5
1c008e9c:	01e77733          	and	a4,a4,t5
1c008ea0:	97ba                	add	a5,a5,a4
1c008ea2:	0027da13          	srli	s4,a5,0x2
1c008ea6:	0047d313          	srli	t1,a5,0x4
1c008eaa:	0067d993          	srli	s3,a5,0x6
1c008eae:	0087d893          	srli	a7,a5,0x8
1c008eb2:	00a7d913          	srli	s2,a5,0xa
1c008eb6:	00c7d813          	srli	a6,a5,0xc
1c008eba:	00e7d493          	srli	s1,a5,0xe
1c008ebe:	0107d613          	srli	a2,a5,0x10
1c008ec2:	0127d413          	srli	s0,a5,0x12
1c008ec6:	0147d693          	srli	a3,a5,0x14
1c008eca:	0167d393          	srli	t2,a5,0x16
1c008ece:	0187d713          	srli	a4,a5,0x18
1c008ed2:	01a7d293          	srli	t0,a5,0x1a
1c008ed6:	01c7de93          	srli	t4,a5,0x1c
1c008eda:	0037fe13          	andi	t3,a5,3
1c008ede:	003a7a13          	andi	s4,s4,3
1c008ee2:	00337313          	andi	t1,t1,3
1c008ee6:	0039f993          	andi	s3,s3,3
1c008eea:	0038f893          	andi	a7,a7,3
1c008eee:	00397913          	andi	s2,s2,3
1c008ef2:	00387813          	andi	a6,a6,3
1c008ef6:	888d                	andi	s1,s1,3
1c008ef8:	8a0d                	andi	a2,a2,3
1c008efa:	880d                	andi	s0,s0,3
1c008efc:	8a8d                	andi	a3,a3,3
1c008efe:	0033f393          	andi	t2,t2,3
1c008f02:	8b0d                	andi	a4,a4,3
1c008f04:	0032f293          	andi	t0,t0,3
1c008f08:	003efe93          	andi	t4,t4,3
1c008f0c:	83f9                	srli	a5,a5,0x1e
1c008f0e:	414e0e33          	sub	t3,t3,s4
1c008f12:	41330333          	sub	t1,t1,s3
1c008f16:	412888b3          	sub	a7,a7,s2
1c008f1a:	40980833          	sub	a6,a6,s1
1c008f1e:	8e01                	sub	a2,a2,s0
1c008f20:	407686b3          	sub	a3,a3,t2
1c008f24:	40570733          	sub	a4,a4,t0
1c008f28:	40fe87b3          	sub	a5,t4,a5
1c008f2c:	01c51023          	sh	t3,0(a0)
1c008f30:	00651123          	sh	t1,2(a0)
1c008f34:	01151223          	sh	a7,4(a0)
1c008f38:	01051323          	sh	a6,6(a0)
1c008f3c:	00c51423          	sh	a2,8(a0)
1c008f40:	00d51523          	sh	a3,10(a0)
1c008f44:	00e51623          	sh	a4,12(a0)
1c008f48:	00f51723          	sh	a5,14(a0)
1c008f4c:	0541                	addi	a0,a0,16
1c008f4e:	0591                	addi	a1,a1,4
1c008f50:	f3f514e3          	bne	a0,t6,1c008e78 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2+0x18>
1c008f54:	4472                	lw	s0,28(sp)
1c008f56:	44e2                	lw	s1,24(sp)
1c008f58:	4952                	lw	s2,20(sp)
1c008f5a:	49c2                	lw	s3,16(sp)
1c008f5c:	4a32                	lw	s4,12(sp)
1c008f5e:	6105                	addi	sp,sp,32
1c008f60:	8082                	ret

1c008f62 <keccak_absorb.constprop.1>:
1c008f62:	7151                	addi	sp,sp,-240
1c008f64:	d3a6                	sw	s1,228(sp)
1c008f66:	cfce                	sw	s3,220(sp)
1c008f68:	cdd2                	sw	s4,216(sp)
1c008f6a:	cbd6                	sw	s5,212(sp)
1c008f6c:	84b6                	mv	s1,a3
1c008f6e:	d786                	sw	ra,236(sp)
1c008f70:	d5a2                	sw	s0,232(sp)
1c008f72:	d1ca                	sw	s2,224(sp)
1c008f74:	c9da                	sw	s6,208(sp)
1c008f76:	8a2a                	mv	s4,a0
1c008f78:	87ae                	mv	a5,a1
1c008f7a:	8ab2                	mv	s5,a2
1c008f7c:	89aa                	mv	s3,a0
1c008f7e:	0c850693          	addi	a3,a0,200
1c008f82:	872a                	mv	a4,a0
1c008f84:	4581                	li	a1,0
1c008f86:	4601                	li	a2,0
1c008f88:	c30c                	sw	a1,0(a4)
1c008f8a:	c350                	sw	a2,4(a4)
1c008f8c:	0721                	addi	a4,a4,8
1c008f8e:	fee69be3          	bne	a3,a4,1c008f84 <keccak_absorb.constprop.1+0x22>
1c008f92:	08700713          	li	a4,135
1c008f96:	09577363          	bgeu	a4,s5,1c00901c <keccak_absorb.constprop.1+0xba>
1c008f9a:	08878b13          	addi	s6,a5,136
1c008f9e:	895a                	mv	s2,s6
1c008fa0:	08700413          	li	s0,135
1c008fa4:	86d2                	mv	a3,s4
1c008fa6:	0017c703          	lbu	a4,1(a5)
1c008faa:	0027ce03          	lbu	t3,2(a5)
1c008fae:	0057c803          	lbu	a6,5(a5)
1c008fb2:	0047cf03          	lbu	t5,4(a5)
1c008fb6:	0067c503          	lbu	a0,6(a5)
1c008fba:	0007ce83          	lbu	t4,0(a5)
1c008fbe:	0037c583          	lbu	a1,3(a5)
1c008fc2:	0077c603          	lbu	a2,7(a5)
1c008fc6:	0722                	slli	a4,a4,0x8
1c008fc8:	0e42                	slli	t3,t3,0x10
1c008fca:	0822                	slli	a6,a6,0x8
1c008fcc:	0006a303          	lw	t1,0(a3)
1c008fd0:	0046a883          	lw	a7,4(a3)
1c008fd4:	01c76733          	or	a4,a4,t3
1c008fd8:	01e86833          	or	a6,a6,t5
1c008fdc:	0542                	slli	a0,a0,0x10
1c008fde:	01d76733          	or	a4,a4,t4
1c008fe2:	05e2                	slli	a1,a1,0x18
1c008fe4:	01056533          	or	a0,a0,a6
1c008fe8:	0662                	slli	a2,a2,0x18
1c008fea:	8f4d                	or	a4,a4,a1
1c008fec:	8e49                	or	a2,a2,a0
1c008fee:	00e34733          	xor	a4,t1,a4
1c008ff2:	00c8c633          	xor	a2,a7,a2
1c008ff6:	c298                	sw	a4,0(a3)
1c008ff8:	c2d0                	sw	a2,4(a3)
1c008ffa:	07a1                	addi	a5,a5,8
1c008ffc:	06a1                	addi	a3,a3,8
1c008ffe:	faf914e3          	bne	s2,a5,1c008fa6 <keccak_absorb.constprop.1+0x44>
1c009002:	85d2                	mv	a1,s4
1c009004:	8552                	mv	a0,s4
1c009006:	316d                	jal	1c008cb0 <KeccakF1600_StatePermute>
1c009008:	f78a8a93          	addi	s5,s5,-136
1c00900c:	08890913          	addi	s2,s2,136
1c009010:	87da                	mv	a5,s6
1c009012:	01547563          	bgeu	s0,s5,1c00901c <keccak_absorb.constprop.1+0xba>
1c009016:	088b0b13          	addi	s6,s6,136
1c00901a:	b769                	j	1c008fa4 <keccak_absorb.constprop.1+0x42>
1c00901c:	0038                	addi	a4,sp,8
1c00901e:	09010e13          	addi	t3,sp,144
1c009022:	86ba                	mv	a3,a4
1c009024:	0006a023          	sw	zero,0(a3)
1c009028:	0691                	addi	a3,a3,4
1c00902a:	fede1de3          	bne	t3,a3,1c009024 <keccak_absorb.constprop.1+0xc2>
1c00902e:	080a8263          	beqz	s5,1c0090b2 <keccak_absorb.constprop.1+0x150>
1c009032:	fffa8693          	addi	a3,s5,-1
1c009036:	4609                	li	a2,2
1c009038:	10d67163          	bgeu	a2,a3,1c00913a <keccak_absorb.constprop.1+0x1d8>
1c00903c:	ffcaf313          	andi	t1,s5,-4
1c009040:	86be                	mv	a3,a5
1c009042:	933e                	add	t1,t1,a5
1c009044:	883a                	mv	a6,a4
1c009046:	0016c503          	lbu	a0,1(a3)
1c00904a:	0006c883          	lbu	a7,0(a3)
1c00904e:	0026c583          	lbu	a1,2(a3)
1c009052:	0036c603          	lbu	a2,3(a3)
1c009056:	0522                	slli	a0,a0,0x8
1c009058:	01156533          	or	a0,a0,a7
1c00905c:	05c2                	slli	a1,a1,0x10
1c00905e:	8dc9                	or	a1,a1,a0
1c009060:	0662                	slli	a2,a2,0x18
1c009062:	8e4d                	or	a2,a2,a1
1c009064:	00c82023          	sw	a2,0(a6)
1c009068:	0691                	addi	a3,a3,4
1c00906a:	0811                	addi	a6,a6,4
1c00906c:	fcd31de3          	bne	t1,a3,1c009046 <keccak_absorb.constprop.1+0xe4>
1c009070:	ffcaf693          	andi	a3,s5,-4
1c009074:	02da8f63          	beq	s5,a3,1c0090b2 <keccak_absorb.constprop.1+0x150>
1c009078:	00d78633          	add	a2,a5,a3
1c00907c:	00064503          	lbu	a0,0(a2)
1c009080:	098c                	addi	a1,sp,208
1c009082:	95b6                	add	a1,a1,a3
1c009084:	00168613          	addi	a2,a3,1
1c009088:	f2a58c23          	sb	a0,-200(a1)
1c00908c:	03567363          	bgeu	a2,s5,1c0090b2 <keccak_absorb.constprop.1+0x150>
1c009090:	00c785b3          	add	a1,a5,a2
1c009094:	0005c583          	lbu	a1,0(a1)
1c009098:	0988                	addi	a0,sp,208
1c00909a:	962a                	add	a2,a2,a0
1c00909c:	0689                	addi	a3,a3,2
1c00909e:	f2b60c23          	sb	a1,-200(a2)
1c0090a2:	0156f863          	bgeu	a3,s5,1c0090b2 <keccak_absorb.constprop.1+0x150>
1c0090a6:	97b6                	add	a5,a5,a3
1c0090a8:	0007c783          	lbu	a5,0(a5)
1c0090ac:	96aa                	add	a3,a3,a0
1c0090ae:	f2f68c23          	sb	a5,-200(a3)
1c0090b2:	099c                	addi	a5,sp,208
1c0090b4:	9abe                	add	s5,s5,a5
1c0090b6:	f29a8c23          	sb	s1,-200(s5)
1c0090ba:	08f14783          	lbu	a5,143(sp)
1c0090be:	f807e793          	ori	a5,a5,-128
1c0090c2:	08f107a3          	sb	a5,143(sp)
1c0090c6:	00174783          	lbu	a5,1(a4)
1c0090ca:	00274303          	lbu	t1,2(a4)
1c0090ce:	00574503          	lbu	a0,5(a4)
1c0090d2:	00474f03          	lbu	t5,4(a4)
1c0090d6:	00674583          	lbu	a1,6(a4)
1c0090da:	00074e83          	lbu	t4,0(a4)
1c0090de:	00374603          	lbu	a2,3(a4)
1c0090e2:	00774683          	lbu	a3,7(a4)
1c0090e6:	07a2                	slli	a5,a5,0x8
1c0090e8:	0342                	slli	t1,t1,0x10
1c0090ea:	0522                	slli	a0,a0,0x8
1c0090ec:	0009a883          	lw	a7,0(s3)
1c0090f0:	0049a803          	lw	a6,4(s3)
1c0090f4:	0067e7b3          	or	a5,a5,t1
1c0090f8:	01e56533          	or	a0,a0,t5
1c0090fc:	05c2                	slli	a1,a1,0x10
1c0090fe:	01d7e7b3          	or	a5,a5,t4
1c009102:	0662                	slli	a2,a2,0x18
1c009104:	8dc9                	or	a1,a1,a0
1c009106:	06e2                	slli	a3,a3,0x18
1c009108:	8e5d                	or	a2,a2,a5
1c00910a:	00b6e7b3          	or	a5,a3,a1
1c00910e:	00c8c633          	xor	a2,a7,a2
1c009112:	00f847b3          	xor	a5,a6,a5
1c009116:	00c9a023          	sw	a2,0(s3)
1c00911a:	00f9a223          	sw	a5,4(s3)
1c00911e:	0721                	addi	a4,a4,8
1c009120:	09a1                	addi	s3,s3,8
1c009122:	faee12e3          	bne	t3,a4,1c0090c6 <keccak_absorb.constprop.1+0x164>
1c009126:	50be                	lw	ra,236(sp)
1c009128:	542e                	lw	s0,232(sp)
1c00912a:	549e                	lw	s1,228(sp)
1c00912c:	590e                	lw	s2,224(sp)
1c00912e:	49fe                	lw	s3,220(sp)
1c009130:	4a6e                	lw	s4,216(sp)
1c009132:	4ade                	lw	s5,212(sp)
1c009134:	4b4e                	lw	s6,208(sp)
1c009136:	616d                	addi	sp,sp,240
1c009138:	8082                	ret
1c00913a:	4681                	li	a3,0
1c00913c:	bf35                	j	1c009078 <keccak_absorb.constprop.1+0x116>

1c00913e <shake128_absorb>:
1c00913e:	7151                	addi	sp,sp,-240
1c009140:	cfce                	sw	s3,220(sp)
1c009142:	89aa                	mv	s3,a0
1c009144:	0c800513          	li	a0,200
1c009148:	d5a2                	sw	s0,232(sp)
1c00914a:	d3a6                	sw	s1,228(sp)
1c00914c:	d786                	sw	ra,236(sp)
1c00914e:	d1ca                	sw	s2,224(sp)
1c009150:	842e                	mv	s0,a1
1c009152:	84b2                	mv	s1,a2
1c009154:	3e2030ef          	jal	ra,1c00c536 <pi_l2_malloc>
1c009158:	00a9a023          	sw	a0,0(s3)
1c00915c:	1c050363          	beqz	a0,1c009322 <shake128_absorb+0x1e4>
1c009160:	892a                	mv	s2,a0
1c009162:	0c850713          	addi	a4,a0,200
1c009166:	87aa                	mv	a5,a0
1c009168:	4601                	li	a2,0
1c00916a:	4681                	li	a3,0
1c00916c:	c390                	sw	a2,0(a5)
1c00916e:	c3d4                	sw	a3,4(a5)
1c009170:	07a1                	addi	a5,a5,8
1c009172:	fef71be3          	bne	a4,a5,1c009168 <shake128_absorb+0x2a>
1c009176:	0a700793          	li	a5,167
1c00917a:	0897f063          	bgeu	a5,s1,1c0091fa <shake128_absorb+0xbc>
1c00917e:	0a700993          	li	s3,167
1c009182:	87a2                	mv	a5,s0
1c009184:	40890eb3          	sub	t4,s2,s0
1c009188:	0a840413          	addi	s0,s0,168
1c00918c:	0017c703          	lbu	a4,1(a5)
1c009190:	0027ce03          	lbu	t3,2(a5)
1c009194:	0057c503          	lbu	a0,5(a5)
1c009198:	0047cf83          	lbu	t6,4(a5)
1c00919c:	0067c583          	lbu	a1,6(a5)
1c0091a0:	0007cf03          	lbu	t5,0(a5)
1c0091a4:	0037c603          	lbu	a2,3(a5)
1c0091a8:	0077c683          	lbu	a3,7(a5)
1c0091ac:	00fe8833          	add	a6,t4,a5
1c0091b0:	0722                	slli	a4,a4,0x8
1c0091b2:	0e42                	slli	t3,t3,0x10
1c0091b4:	0522                	slli	a0,a0,0x8
1c0091b6:	00082303          	lw	t1,0(a6)
1c0091ba:	00482883          	lw	a7,4(a6)
1c0091be:	01c76733          	or	a4,a4,t3
1c0091c2:	01f56533          	or	a0,a0,t6
1c0091c6:	05c2                	slli	a1,a1,0x10
1c0091c8:	01e76733          	or	a4,a4,t5
1c0091cc:	0662                	slli	a2,a2,0x18
1c0091ce:	8dc9                	or	a1,a1,a0
1c0091d0:	06e2                	slli	a3,a3,0x18
1c0091d2:	8f51                	or	a4,a4,a2
1c0091d4:	8ecd                	or	a3,a3,a1
1c0091d6:	00e34733          	xor	a4,t1,a4
1c0091da:	00d8c6b3          	xor	a3,a7,a3
1c0091de:	00e82023          	sw	a4,0(a6)
1c0091e2:	00d82223          	sw	a3,4(a6)
1c0091e6:	07a1                	addi	a5,a5,8
1c0091e8:	faf412e3          	bne	s0,a5,1c00918c <shake128_absorb+0x4e>
1c0091ec:	f5848493          	addi	s1,s1,-168
1c0091f0:	85ca                	mv	a1,s2
1c0091f2:	854a                	mv	a0,s2
1c0091f4:	3c75                	jal	1c008cb0 <KeccakF1600_StatePermute>
1c0091f6:	f899e6e3          	bltu	s3,s1,1c009182 <shake128_absorb+0x44>
1c0091fa:	0b010313          	addi	t1,sp,176
1c0091fe:	003c                	addi	a5,sp,8
1c009200:	0007a023          	sw	zero,0(a5)
1c009204:	0791                	addi	a5,a5,4
1c009206:	fef31de3          	bne	t1,a5,1c009200 <shake128_absorb+0xc2>
1c00920a:	c0d9                	beqz	s1,1c009290 <shake128_absorb+0x152>
1c00920c:	fff48793          	addi	a5,s1,-1
1c009210:	4709                	li	a4,2
1c009212:	10f77663          	bgeu	a4,a5,1c00931e <shake128_absorb+0x1e0>
1c009216:	ffc4f593          	andi	a1,s1,-4
1c00921a:	87a2                	mv	a5,s0
1c00921c:	95a2                	add	a1,a1,s0
1c00921e:	0028                	addi	a0,sp,8
1c009220:	0017c603          	lbu	a2,1(a5)
1c009224:	0007c803          	lbu	a6,0(a5)
1c009228:	0027c683          	lbu	a3,2(a5)
1c00922c:	0037c703          	lbu	a4,3(a5)
1c009230:	0622                	slli	a2,a2,0x8
1c009232:	01066633          	or	a2,a2,a6
1c009236:	06c2                	slli	a3,a3,0x10
1c009238:	8ed1                	or	a3,a3,a2
1c00923a:	0762                	slli	a4,a4,0x18
1c00923c:	8f55                	or	a4,a4,a3
1c00923e:	c118                	sw	a4,0(a0)
1c009240:	0791                	addi	a5,a5,4
1c009242:	0511                	addi	a0,a0,4
1c009244:	fcf59ee3          	bne	a1,a5,1c009220 <shake128_absorb+0xe2>
1c009248:	ffc4f793          	andi	a5,s1,-4
1c00924c:	04f48263          	beq	s1,a5,1c009290 <shake128_absorb+0x152>
1c009250:	00f40733          	add	a4,s0,a5
1c009254:	00074603          	lbu	a2,0(a4)
1c009258:	0994                	addi	a3,sp,208
1c00925a:	96be                	add	a3,a3,a5
1c00925c:	00178713          	addi	a4,a5,1
1c009260:	f2c68c23          	sb	a2,-200(a3)
1c009264:	02977663          	bgeu	a4,s1,1c009290 <shake128_absorb+0x152>
1c009268:	00e406b3          	add	a3,s0,a4
1c00926c:	0006c603          	lbu	a2,0(a3)
1c009270:	0994                	addi	a3,sp,208
1c009272:	96ba                	add	a3,a3,a4
1c009274:	f2c68c23          	sb	a2,-200(a3)
1c009278:	00278713          	addi	a4,a5,2
1c00927c:	00977a63          	bgeu	a4,s1,1c009290 <shake128_absorb+0x152>
1c009280:	00e407b3          	add	a5,s0,a4
1c009284:	0007c683          	lbu	a3,0(a5)
1c009288:	099c                	addi	a5,sp,208
1c00928a:	97ba                	add	a5,a5,a4
1c00928c:	f2d78c23          	sb	a3,-200(a5)
1c009290:	099c                	addi	a5,sp,208
1c009292:	00978633          	add	a2,a5,s1
1c009296:	47fd                	li	a5,31
1c009298:	f2f60c23          	sb	a5,-200(a2)
1c00929c:	0af14703          	lbu	a4,175(sp)
1c0092a0:	003c                	addi	a5,sp,8
1c0092a2:	40f90933          	sub	s2,s2,a5
1c0092a6:	f8076713          	ori	a4,a4,-128
1c0092aa:	0ae107a3          	sb	a4,175(sp)
1c0092ae:	0017c703          	lbu	a4,1(a5)
1c0092b2:	0027cf83          	lbu	t6,2(a5)
1c0092b6:	0057c883          	lbu	a7,5(a5)
1c0092ba:	0047c503          	lbu	a0,4(a5)
1c0092be:	0067c803          	lbu	a6,6(a5)
1c0092c2:	0007c583          	lbu	a1,0(a5)
1c0092c6:	0037c603          	lbu	a2,3(a5)
1c0092ca:	0077c683          	lbu	a3,7(a5)
1c0092ce:	00f90e33          	add	t3,s2,a5
1c0092d2:	0722                	slli	a4,a4,0x8
1c0092d4:	0fc2                	slli	t6,t6,0x10
1c0092d6:	08a2                	slli	a7,a7,0x8
1c0092d8:	000e2f03          	lw	t5,0(t3)
1c0092dc:	004e2e83          	lw	t4,4(t3)
1c0092e0:	01f76733          	or	a4,a4,t6
1c0092e4:	00a8e8b3          	or	a7,a7,a0
1c0092e8:	0842                	slli	a6,a6,0x10
1c0092ea:	8f4d                	or	a4,a4,a1
1c0092ec:	0662                	slli	a2,a2,0x18
1c0092ee:	01186833          	or	a6,a6,a7
1c0092f2:	06e2                	slli	a3,a3,0x18
1c0092f4:	8f51                	or	a4,a4,a2
1c0092f6:	0106e6b3          	or	a3,a3,a6
1c0092fa:	00ef4733          	xor	a4,t5,a4
1c0092fe:	00dec6b3          	xor	a3,t4,a3
1c009302:	00ee2023          	sw	a4,0(t3)
1c009306:	00de2223          	sw	a3,4(t3)
1c00930a:	07a1                	addi	a5,a5,8
1c00930c:	faf311e3          	bne	t1,a5,1c0092ae <shake128_absorb+0x170>
1c009310:	50be                	lw	ra,236(sp)
1c009312:	542e                	lw	s0,232(sp)
1c009314:	549e                	lw	s1,228(sp)
1c009316:	590e                	lw	s2,224(sp)
1c009318:	49fe                	lw	s3,220(sp)
1c00931a:	616d                	addi	sp,sp,240
1c00931c:	8082                	ret
1c00931e:	4781                	li	a5,0
1c009320:	bf05                	j	1c009250 <shake128_absorb+0x112>
1c009322:	06f00513          	li	a0,111
1c009326:	0dc020ef          	jal	ra,1c00b402 <exit>

1c00932a <shake128_squeezeblocks>:
1c00932a:	1101                	addi	sp,sp,-32
1c00932c:	c05a                	sw	s6,0(sp)
1c00932e:	ce06                	sw	ra,28(sp)
1c009330:	cc22                	sw	s0,24(sp)
1c009332:	ca26                	sw	s1,20(sp)
1c009334:	c84a                	sw	s2,16(sp)
1c009336:	c64e                	sw	s3,12(sp)
1c009338:	c452                	sw	s4,8(sp)
1c00933a:	c256                	sw	s5,4(sp)
1c00933c:	00062b03          	lw	s6,0(a2)
1c009340:	c5e9                	beqz	a1,1c00940a <shake128_squeezeblocks+0xe0>
1c009342:	7ac1                	lui	s5,0xffff0
1c009344:	ff010a37          	lui	s4,0xff010
1c009348:	010009b7          	lui	s3,0x1000
1c00934c:	84ae                	mv	s1,a1
1c00934e:	892a                	mv	s2,a0
1c009350:	0a8b0413          	addi	s0,s6,168
1c009354:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009358:	1a7d                	addi	s4,s4,-1
1c00935a:	19fd                	addi	s3,s3,-1
1c00935c:	85da                	mv	a1,s6
1c00935e:	855a                	mv	a0,s6
1c009360:	3a81                	jal	1c008cb0 <KeccakF1600_StatePermute>
1c009362:	85da                	mv	a1,s6
1c009364:	00490813          	addi	a6,s2,4
1c009368:	4198                	lw	a4,0(a1)
1c00936a:	41dc                	lw	a5,4(a1)
1c00936c:	05a1                	addi	a1,a1,8
1c00936e:	00875893          	srli	a7,a4,0x8
1c009372:	0087d513          	srli	a0,a5,0x8
1c009376:	0ff77613          	andi	a2,a4,255
1c00937a:	0ff7f693          	andi	a3,a5,255
1c00937e:	0ff8f893          	andi	a7,a7,255
1c009382:	0ff57513          	andi	a0,a0,255
1c009386:	08a2                	slli	a7,a7,0x8
1c009388:	0522                	slli	a0,a0,0x8
1c00938a:	01567633          	and	a2,a2,s5
1c00938e:	0156f6b3          	and	a3,a3,s5
1c009392:	01166633          	or	a2,a2,a7
1c009396:	8ec9                	or	a3,a3,a0
1c009398:	00ff08b7          	lui	a7,0xff0
1c00939c:	00ff0537          	lui	a0,0xff0
1c0093a0:	011778b3          	and	a7,a4,a7
1c0093a4:	8d7d                	and	a0,a0,a5
1c0093a6:	01467633          	and	a2,a2,s4
1c0093aa:	0146f6b3          	and	a3,a3,s4
1c0093ae:	01166633          	or	a2,a2,a7
1c0093b2:	8ec9                	or	a3,a3,a0
1c0093b4:	8361                	srli	a4,a4,0x18
1c0093b6:	83e1                	srli	a5,a5,0x18
1c0093b8:	01367633          	and	a2,a2,s3
1c0093bc:	0136f6b3          	and	a3,a3,s3
1c0093c0:	0762                	slli	a4,a4,0x18
1c0093c2:	07e2                	slli	a5,a5,0x18
1c0093c4:	8f51                	or	a4,a4,a2
1c0093c6:	8fd5                	or	a5,a5,a3
1c0093c8:	00875e13          	srli	t3,a4,0x8
1c0093cc:	01075313          	srli	t1,a4,0x10
1c0093d0:	0087d893          	srli	a7,a5,0x8
1c0093d4:	0107d513          	srli	a0,a5,0x10
1c0093d8:	8361                	srli	a4,a4,0x18
1c0093da:	83e1                	srli	a5,a5,0x18
1c0093dc:	fec80e23          	sb	a2,-4(a6)
1c0093e0:	ffc80ea3          	sb	t3,-3(a6)
1c0093e4:	fe680f23          	sb	t1,-2(a6)
1c0093e8:	fee80fa3          	sb	a4,-1(a6)
1c0093ec:	00d80023          	sb	a3,0(a6)
1c0093f0:	011800a3          	sb	a7,1(a6)
1c0093f4:	00a80123          	sb	a0,2(a6)
1c0093f8:	00f801a3          	sb	a5,3(a6)
1c0093fc:	0821                	addi	a6,a6,8
1c0093fe:	f6b415e3          	bne	s0,a1,1c009368 <shake128_squeezeblocks+0x3e>
1c009402:	14fd                	addi	s1,s1,-1
1c009404:	0a890913          	addi	s2,s2,168
1c009408:	f8b1                	bnez	s1,1c00935c <shake128_squeezeblocks+0x32>
1c00940a:	40f2                	lw	ra,28(sp)
1c00940c:	4462                	lw	s0,24(sp)
1c00940e:	44d2                	lw	s1,20(sp)
1c009410:	4942                	lw	s2,16(sp)
1c009412:	49b2                	lw	s3,12(sp)
1c009414:	4a22                	lw	s4,8(sp)
1c009416:	4a92                	lw	s5,4(sp)
1c009418:	4b02                	lw	s6,0(sp)
1c00941a:	6105                	addi	sp,sp,32
1c00941c:	8082                	ret

1c00941e <shake128_ctx_release>:
1c00941e:	4108                	lw	a0,0(a0)
1c009420:	0c800593          	li	a1,200
1c009424:	11e0306f          	j	1c00c542 <pi_l2_free>

1c009428 <shake256>:
1c009428:	7131                	addi	sp,sp,-192
1c00942a:	db26                	sw	s1,180(sp)
1c00942c:	d74e                	sw	s3,172(sp)
1c00942e:	84aa                	mv	s1,a0
1c009430:	08800993          	li	s3,136
1c009434:	0c800513          	li	a0,200
1c009438:	dd22                	sw	s0,184(sp)
1c00943a:	d94a                	sw	s2,176(sp)
1c00943c:	d356                	sw	s5,164(sp)
1c00943e:	df06                	sw	ra,188(sp)
1c009440:	d552                	sw	s4,168(sp)
1c009442:	d15a                	sw	s6,160(sp)
1c009444:	cf5e                	sw	s7,156(sp)
1c009446:	cd62                	sw	s8,152(sp)
1c009448:	0335d9b3          	divu	s3,a1,s3
1c00944c:	892e                	mv	s2,a1
1c00944e:	8432                	mv	s0,a2
1c009450:	8ab6                	mv	s5,a3
1c009452:	0e4030ef          	jal	ra,1c00c536 <pi_l2_malloc>
1c009456:	24050763          	beqz	a0,1c0096a4 <shake256+0x27c>
1c00945a:	46fd                	li	a3,31
1c00945c:	8656                	mv	a2,s5
1c00945e:	85a2                	mv	a1,s0
1c009460:	8a2a                	mv	s4,a0
1c009462:	3601                	jal	1c008f62 <keccak_absorb.constprop.1>
1c009464:	08700793          	li	a5,135
1c009468:	0d27ff63          	bgeu	a5,s2,1c009546 <shake256+0x11e>
1c00946c:	00499413          	slli	s0,s3,0x4
1c009470:	944e                	add	s0,s0,s3
1c009472:	040e                	slli	s0,s0,0x3
1c009474:	7bc1                	lui	s7,0xffff0
1c009476:	ff010b37          	lui	s6,0xff010
1c00947a:	01000ab7          	lui	s5,0x1000
1c00947e:	9426                	add	s0,s0,s1
1c009480:	8c26                	mv	s8,s1
1c009482:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009486:	1b7d                	addi	s6,s6,-1
1c009488:	1afd                	addi	s5,s5,-1
1c00948a:	85d2                	mv	a1,s4
1c00948c:	8552                	mv	a0,s4
1c00948e:	823ff0ef          	jal	ra,1c008cb0 <KeccakF1600_StatePermute>
1c009492:	87e2                	mv	a5,s8
1c009494:	418a0533          	sub	a0,s4,s8
1c009498:	088c0593          	addi	a1,s8,136
1c00949c:	00f50733          	add	a4,a0,a5
1c0094a0:	4314                	lw	a3,0(a4)
1c0094a2:	4358                	lw	a4,4(a4)
1c0094a4:	07a1                	addi	a5,a5,8
1c0094a6:	0086d313          	srli	t1,a3,0x8
1c0094aa:	00875893          	srli	a7,a4,0x8
1c0094ae:	0ff6f813          	andi	a6,a3,255
1c0094b2:	0ff77613          	andi	a2,a4,255
1c0094b6:	0ff37313          	andi	t1,t1,255
1c0094ba:	0ff8f893          	andi	a7,a7,255
1c0094be:	0322                	slli	t1,t1,0x8
1c0094c0:	08a2                	slli	a7,a7,0x8
1c0094c2:	01787833          	and	a6,a6,s7
1c0094c6:	01767633          	and	a2,a2,s7
1c0094ca:	00686833          	or	a6,a6,t1
1c0094ce:	01166633          	or	a2,a2,a7
1c0094d2:	00ff0337          	lui	t1,0xff0
1c0094d6:	00ff08b7          	lui	a7,0xff0
1c0094da:	0066f333          	and	t1,a3,t1
1c0094de:	011778b3          	and	a7,a4,a7
1c0094e2:	01687833          	and	a6,a6,s6
1c0094e6:	01667633          	and	a2,a2,s6
1c0094ea:	00686833          	or	a6,a6,t1
1c0094ee:	01166633          	or	a2,a2,a7
1c0094f2:	82e1                	srli	a3,a3,0x18
1c0094f4:	8361                	srli	a4,a4,0x18
1c0094f6:	01587833          	and	a6,a6,s5
1c0094fa:	01567633          	and	a2,a2,s5
1c0094fe:	06e2                	slli	a3,a3,0x18
1c009500:	0762                	slli	a4,a4,0x18
1c009502:	00d866b3          	or	a3,a6,a3
1c009506:	8f51                	or	a4,a4,a2
1c009508:	0086de93          	srli	t4,a3,0x8
1c00950c:	0106de13          	srli	t3,a3,0x10
1c009510:	00875313          	srli	t1,a4,0x8
1c009514:	01075893          	srli	a7,a4,0x10
1c009518:	82e1                	srli	a3,a3,0x18
1c00951a:	8361                	srli	a4,a4,0x18
1c00951c:	ff078c23          	sb	a6,-8(a5)
1c009520:	ffd78ca3          	sb	t4,-7(a5)
1c009524:	ffc78d23          	sb	t3,-6(a5)
1c009528:	fed78da3          	sb	a3,-5(a5)
1c00952c:	fec78e23          	sb	a2,-4(a5)
1c009530:	fe678ea3          	sb	t1,-3(a5)
1c009534:	ff178f23          	sb	a7,-2(a5)
1c009538:	fee78fa3          	sb	a4,-1(a5)
1c00953c:	f6f590e3          	bne	a1,a5,1c00949c <shake256+0x74>
1c009540:	8c2e                	mv	s8,a1
1c009542:	f48594e3          	bne	a1,s0,1c00948a <shake256+0x62>
1c009546:	08800593          	li	a1,136
1c00954a:	02b97933          	remu	s2,s2,a1
1c00954e:	02091263          	bnez	s2,1c009572 <shake256+0x14a>
1c009552:	546a                	lw	s0,184(sp)
1c009554:	50fa                	lw	ra,188(sp)
1c009556:	54da                	lw	s1,180(sp)
1c009558:	594a                	lw	s2,176(sp)
1c00955a:	59ba                	lw	s3,172(sp)
1c00955c:	5a9a                	lw	s5,164(sp)
1c00955e:	5b0a                	lw	s6,160(sp)
1c009560:	4bfa                	lw	s7,156(sp)
1c009562:	4c6a                	lw	s8,152(sp)
1c009564:	8552                	mv	a0,s4
1c009566:	5a2a                	lw	s4,168(sp)
1c009568:	0c800593          	li	a1,200
1c00956c:	6129                	addi	sp,sp,192
1c00956e:	7d50206f          	j	1c00c542 <pi_l2_free>
1c009572:	85d2                	mv	a1,s4
1c009574:	8552                	mv	a0,s4
1c009576:	f3aff0ef          	jal	ra,1c008cb0 <KeccakF1600_StatePermute>
1c00957a:	002c                	addi	a1,sp,8
1c00957c:	78c1                	lui	a7,0xffff0
1c00957e:	ff010837          	lui	a6,0xff010
1c009582:	01000537          	lui	a0,0x1000
1c009586:	09010e13          	addi	t3,sp,144
1c00958a:	862e                	mv	a2,a1
1c00958c:	40ba0333          	sub	t1,s4,a1
1c009590:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009594:	187d                	addi	a6,a6,-1
1c009596:	157d                	addi	a0,a0,-1
1c009598:	00c307b3          	add	a5,t1,a2
1c00959c:	0007ae83          	lw	t4,0(a5)
1c0095a0:	43d4                	lw	a3,4(a5)
1c0095a2:	0621                	addi	a2,a2,8
1c0095a4:	008edf93          	srli	t6,t4,0x8
1c0095a8:	0086df13          	srli	t5,a3,0x8
1c0095ac:	0ffef713          	andi	a4,t4,255
1c0095b0:	0ff6f793          	andi	a5,a3,255
1c0095b4:	0fffff93          	andi	t6,t6,255
1c0095b8:	0fff7f13          	andi	t5,t5,255
1c0095bc:	0fa2                	slli	t6,t6,0x8
1c0095be:	0f22                	slli	t5,t5,0x8
1c0095c0:	01177733          	and	a4,a4,a7
1c0095c4:	0117f7b3          	and	a5,a5,a7
1c0095c8:	01f76733          	or	a4,a4,t6
1c0095cc:	01e7e7b3          	or	a5,a5,t5
1c0095d0:	00ff0fb7          	lui	t6,0xff0
1c0095d4:	00ff0f37          	lui	t5,0xff0
1c0095d8:	01feffb3          	and	t6,t4,t6
1c0095dc:	01e6ff33          	and	t5,a3,t5
1c0095e0:	01077733          	and	a4,a4,a6
1c0095e4:	0107f7b3          	and	a5,a5,a6
1c0095e8:	01f76733          	or	a4,a4,t6
1c0095ec:	018ede93          	srli	t4,t4,0x18
1c0095f0:	01e7e7b3          	or	a5,a5,t5
1c0095f4:	82e1                	srli	a3,a3,0x18
1c0095f6:	0ee2                	slli	t4,t4,0x18
1c0095f8:	8f69                	and	a4,a4,a0
1c0095fa:	06e2                	slli	a3,a3,0x18
1c0095fc:	8fe9                	and	a5,a5,a0
1c0095fe:	01d76733          	or	a4,a4,t4
1c009602:	8fd5                	or	a5,a5,a3
1c009604:	fee62c23          	sw	a4,-8(a2)
1c009608:	fef62e23          	sw	a5,-4(a2)
1c00960c:	f8ce16e3          	bne	t3,a2,1c009598 <shake256+0x170>
1c009610:	fff90793          	addi	a5,s2,-1
1c009614:	4709                	li	a4,2
1c009616:	08f77363          	bgeu	a4,a5,1c00969c <shake256+0x274>
1c00961a:	00499413          	slli	s0,s3,0x4
1c00961e:	013407b3          	add	a5,s0,s3
1c009622:	078e                	slli	a5,a5,0x3
1c009624:	97a6                	add	a5,a5,s1
1c009626:	0fc97813          	andi	a6,s2,252
1c00962a:	983e                	add	a6,a6,a5
1c00962c:	4198                	lw	a4,0(a1)
1c00962e:	0791                	addi	a5,a5,4
1c009630:	0591                	addi	a1,a1,4
1c009632:	00875513          	srli	a0,a4,0x8
1c009636:	01075613          	srli	a2,a4,0x10
1c00963a:	01875693          	srli	a3,a4,0x18
1c00963e:	fea78ea3          	sb	a0,-3(a5)
1c009642:	fec78f23          	sb	a2,-2(a5)
1c009646:	fed78fa3          	sb	a3,-1(a5)
1c00964a:	fee78e23          	sb	a4,-4(a5)
1c00964e:	fcf81fe3          	bne	a6,a5,1c00962c <shake256+0x204>
1c009652:	ffc97793          	andi	a5,s2,-4
1c009656:	eef90ee3          	beq	s2,a5,1c009552 <shake256+0x12a>
1c00965a:	0918                	addi	a4,sp,144
1c00965c:	973e                	add	a4,a4,a5
1c00965e:	99a2                	add	s3,s3,s0
1c009660:	f7874683          	lbu	a3,-136(a4)
1c009664:	098e                	slli	s3,s3,0x3
1c009666:	99a6                	add	s3,s3,s1
1c009668:	00f98733          	add	a4,s3,a5
1c00966c:	00d70023          	sb	a3,0(a4)
1c009670:	00178713          	addi	a4,a5,1
1c009674:	ed277fe3          	bgeu	a4,s2,1c009552 <shake256+0x12a>
1c009678:	0914                	addi	a3,sp,144
1c00967a:	96ba                	add	a3,a3,a4
1c00967c:	f786c683          	lbu	a3,-136(a3)
1c009680:	974e                	add	a4,a4,s3
1c009682:	0789                	addi	a5,a5,2
1c009684:	00d70023          	sb	a3,0(a4)
1c009688:	ed27f5e3          	bgeu	a5,s2,1c009552 <shake256+0x12a>
1c00968c:	0918                	addi	a4,sp,144
1c00968e:	973e                	add	a4,a4,a5
1c009690:	f7874703          	lbu	a4,-136(a4)
1c009694:	99be                	add	s3,s3,a5
1c009696:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00969a:	bd65                	j	1c009552 <shake256+0x12a>
1c00969c:	4781                	li	a5,0
1c00969e:	00499413          	slli	s0,s3,0x4
1c0096a2:	bf65                	j	1c00965a <shake256+0x232>
1c0096a4:	06f00513          	li	a0,111
1c0096a8:	55b010ef          	jal	ra,1c00b402 <exit>

1c0096ac <sha3_256>:
1c0096ac:	712d                	addi	sp,sp,-288
1c0096ae:	10812c23          	sw	s0,280(sp)
1c0096b2:	4699                	li	a3,6
1c0096b4:	842a                	mv	s0,a0
1c0096b6:	0828                	addi	a0,sp,24
1c0096b8:	10112e23          	sw	ra,284(sp)
1c0096bc:	10912a23          	sw	s1,276(sp)
1c0096c0:	11212823          	sw	s2,272(sp)
1c0096c4:	11312623          	sw	s3,268(sp)
1c0096c8:	11412423          	sw	s4,264(sp)
1c0096cc:	11512223          	sw	s5,260(sp)
1c0096d0:	11612023          	sw	s6,256(sp)
1c0096d4:	dfde                	sw	s7,252(sp)
1c0096d6:	dde2                	sw	s8,248(sp)
1c0096d8:	dbe6                	sw	s9,244(sp)
1c0096da:	d9ea                	sw	s10,240(sp)
1c0096dc:	d7ee                	sw	s11,236(sp)
1c0096de:	3051                	jal	1c008f62 <keccak_absorb.constprop.1>
1c0096e0:	082c                	addi	a1,sp,24
1c0096e2:	852e                	mv	a0,a1
1c0096e4:	dccff0ef          	jal	ra,1c008cb0 <KeccakF1600_StatePermute>
1c0096e8:	4372                	lw	t1,28(sp)
1c0096ea:	5612                	lw	a2,36(sp)
1c0096ec:	5732                	lw	a4,44(sp)
1c0096ee:	5582                	lw	a1,32(sp)
1c0096f0:	56a2                	lw	a3,40(sp)
1c0096f2:	59d2                	lw	s3,52(sp)
1c0096f4:	4ae2                	lw	s5,24(sp)
1c0096f6:	00835293          	srli	t0,t1,0x8
1c0096fa:	00865f13          	srli	t5,a2,0x8
1c0096fe:	00875893          	srli	a7,a4,0x8
1c009702:	5a42                	lw	s4,48(sp)
1c009704:	0085df93          	srli	t6,a1,0x8
1c009708:	0086de93          	srli	t4,a3,0x8
1c00970c:	0ff2f293          	andi	t0,t0,255
1c009710:	0fff7f13          	andi	t5,t5,255
1c009714:	0ff8f893          	andi	a7,a7,255
1c009718:	0ff37b93          	andi	s7,t1,255
1c00971c:	0ff67913          	andi	s2,a2,255
1c009720:	0ff77e13          	andi	t3,a4,255
1c009724:	008ad393          	srli	t2,s5,0x8
1c009728:	0089d513          	srli	a0,s3,0x8
1c00972c:	0fffff93          	andi	t6,t6,255
1c009730:	0ffefe93          	andi	t4,t4,255
1c009734:	02a2                	slli	t0,t0,0x8
1c009736:	0f22                	slli	t5,t5,0x8
1c009738:	08a2                	slli	a7,a7,0x8
1c00973a:	ff0107b7          	lui	a5,0xff010
1c00973e:	17fd                	addi	a5,a5,-1
1c009740:	0ff5fb13          	andi	s6,a1,255
1c009744:	0ff6f493          	andi	s1,a3,255
1c009748:	005be2b3          	or	t0,s7,t0
1c00974c:	01e96f33          	or	t5,s2,t5
1c009750:	011e68b3          	or	a7,t3,a7
1c009754:	0ff3f393          	andi	t2,t2,255
1c009758:	0fa2                	slli	t6,t6,0x8
1c00975a:	0ea2                	slli	t4,t4,0x8
1c00975c:	0ff57513          	andi	a0,a0,255
1c009760:	00ff0bb7          	lui	s7,0xff0
1c009764:	0ffafc13          	andi	s8,s5,255
1c009768:	0ff9f913          	andi	s2,s3,255
1c00976c:	01767bb3          	and	s7,a2,s7
1c009770:	00f8fe33          	and	t3,a7,a5
1c009774:	008a5813          	srli	a6,s4,0x8
1c009778:	01fb6fb3          	or	t6,s6,t6
1c00977c:	01d4eeb3          	or	t4,s1,t4
1c009780:	00ff7f33          	and	t5,t5,a5
1c009784:	010008b7          	lui	a7,0x1000
1c009788:	03a2                	slli	t2,t2,0x8
1c00978a:	0522                	slli	a0,a0,0x8
1c00978c:	00ff04b7          	lui	s1,0xff0
1c009790:	00ff0b37          	lui	s6,0xff0
1c009794:	8cf5                	and	s1,s1,a3
1c009796:	01677b33          	and	s6,a4,s6
1c00979a:	00a96533          	or	a0,s2,a0
1c00979e:	007c63b3          	or	t2,s8,t2
1c0097a2:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c0097a6:	00fefeb3          	and	t4,t4,a5
1c0097aa:	017f6f33          	or	t5,t5,s7
1c0097ae:	0ff87813          	andi	a6,a6,255
1c0097b2:	00ff0c37          	lui	s8,0xff0
1c0097b6:	8261                	srli	a2,a2,0x18
1c0097b8:	0ffa7d93          	andi	s11,s4,255
1c0097bc:	0185fc33          	and	s8,a1,s8
1c0097c0:	012f7f33          	and	t5,t5,s2
1c0097c4:	00ffffb3          	and	t6,t6,a5
1c0097c8:	009eeeb3          	or	t4,t4,s1
1c0097cc:	016e6e33          	or	t3,t3,s6
1c0097d0:	8361                	srli	a4,a4,0x18
1c0097d2:	0822                	slli	a6,a6,0x8
1c0097d4:	00ff0d37          	lui	s10,0xff0
1c0097d8:	82e1                	srli	a3,a3,0x18
1c0097da:	0662                	slli	a2,a2,0x18
1c0097dc:	01aafd33          	and	s10,s5,s10
1c0097e0:	010de833          	or	a6,s11,a6
1c0097e4:	012efeb3          	and	t4,t4,s2
1c0097e8:	012e7e33          	and	t3,t3,s2
1c0097ec:	00cf6633          	or	a2,t5,a2
1c0097f0:	018ada93          	srli	s5,s5,0x18
1c0097f4:	018fefb3          	or	t6,t6,s8
1c0097f8:	06e2                	slli	a3,a3,0x18
1c0097fa:	01871c13          	slli	s8,a4,0x18
1c0097fe:	00ff0bb7          	lui	s7,0xff0
1c009802:	00f87b33          	and	s6,a6,a5
1c009806:	00dee4b3          	or	s1,t4,a3
1c00980a:	017a7bb3          	and	s7,s4,s7
1c00980e:	018e66b3          	or	a3,t3,s8
1c009812:	018a9813          	slli	a6,s5,0x18
1c009816:	018a5713          	srli	a4,s4,0x18
1c00981a:	00865a93          	srli	s5,a2,0x8
1c00981e:	01065a13          	srli	s4,a2,0x10
1c009822:	00ff0cb7          	lui	s9,0xff0
1c009826:	8261                	srli	a2,a2,0x18
1c009828:	c232                	sw	a2,4(sp)
1c00982a:	01937cb3          	and	s9,t1,s9
1c00982e:	0086d613          	srli	a2,a3,0x8
1c009832:	00f3f3b3          	and	t2,t2,a5
1c009836:	00f2f2b3          	and	t0,t0,a5
1c00983a:	c432                	sw	a2,8(sp)
1c00983c:	01a3e3b3          	or	t2,t2,s10
1c009840:	0106d613          	srli	a2,a3,0x10
1c009844:	0192e2b3          	or	t0,t0,s9
1c009848:	01835313          	srli	t1,t1,0x18
1c00984c:	81e1                	srli	a1,a1,0x18
1c00984e:	00ff08b7          	lui	a7,0xff0
1c009852:	8fe9                	and	a5,a5,a0
1c009854:	0123f3b3          	and	t2,t2,s2
1c009858:	0122f2b3          	and	t0,t0,s2
1c00985c:	012fffb3          	and	t6,t6,s2
1c009860:	c632                	sw	a2,12(sp)
1c009862:	0119f8b3          	and	a7,s3,a7
1c009866:	4612                	lw	a2,4(sp)
1c009868:	01831513          	slli	a0,t1,0x18
1c00986c:	05e2                	slli	a1,a1,0x18
1c00986e:	017b6333          	or	t1,s6,s7
1c009872:	0103e833          	or	a6,t2,a6
1c009876:	00a2e533          	or	a0,t0,a0
1c00987a:	00bfe5b3          	or	a1,t6,a1
1c00987e:	0117e8b3          	or	a7,a5,a7
1c009882:	01237333          	and	t1,t1,s2
1c009886:	0128f8b3          	and	a7,a7,s2
1c00988a:	00885d93          	srli	s11,a6,0x8
1c00988e:	01085d13          	srli	s10,a6,0x10
1c009892:	00855c93          	srli	s9,a0,0x8
1c009896:	01055c13          	srli	s8,a0,0x10
1c00989a:	0085db93          	srli	s7,a1,0x8
1c00989e:	0105db13          	srli	s6,a1,0x10
1c0098a2:	0104d913          	srli	s2,s1,0x10
1c0098a6:	0189d793          	srli	a5,s3,0x18
1c0098aa:	8161                	srli	a0,a0,0x18
1c0098ac:	0084d993          	srli	s3,s1,0x8
1c0098b0:	81e1                	srli	a1,a1,0x18
1c0098b2:	80e1                	srli	s1,s1,0x18
1c0098b4:	01885813          	srli	a6,a6,0x18
1c0098b8:	01b400a3          	sb	s11,1(s0)
1c0098bc:	01a40123          	sb	s10,2(s0)
1c0098c0:	019402a3          	sb	s9,5(s0)
1c0098c4:	01840323          	sb	s8,6(s0)
1c0098c8:	00a403a3          	sb	a0,7(s0)
1c0098cc:	017404a3          	sb	s7,9(s0)
1c0098d0:	01640523          	sb	s6,10(s0)
1c0098d4:	00b405a3          	sb	a1,11(s0)
1c0098d8:	015406a3          	sb	s5,13(s0)
1c0098dc:	01440723          	sb	s4,14(s0)
1c0098e0:	00c407a3          	sb	a2,15(s0)
1c0098e4:	013408a3          	sb	s3,17(s0)
1c0098e8:	01240923          	sb	s2,18(s0)
1c0098ec:	009409a3          	sb	s1,19(s0)
1c0098f0:	00740023          	sb	t2,0(s0)
1c0098f4:	010401a3          	sb	a6,3(s0)
1c0098f8:	00540223          	sb	t0,4(s0)
1c0098fc:	01f40423          	sb	t6,8(s0)
1c009900:	01e40623          	sb	t5,12(s0)
1c009904:	01d40823          	sb	t4,16(s0)
1c009908:	01c40a23          	sb	t3,20(s0)
1c00990c:	4622                	lw	a2,8(sp)
1c00990e:	0762                	slli	a4,a4,0x18
1c009910:	07e2                	slli	a5,a5,0x18
1c009912:	00c40aa3          	sb	a2,21(s0)
1c009916:	4632                	lw	a2,12(sp)
1c009918:	00e36733          	or	a4,t1,a4
1c00991c:	00f8e7b3          	or	a5,a7,a5
1c009920:	82e1                	srli	a3,a3,0x18
1c009922:	00c40b23          	sb	a2,22(s0)
1c009926:	00d40ba3          	sb	a3,23(s0)
1c00992a:	00875513          	srli	a0,a4,0x8
1c00992e:	01075593          	srli	a1,a4,0x10
1c009932:	0087d613          	srli	a2,a5,0x8
1c009936:	0107d693          	srli	a3,a5,0x10
1c00993a:	8361                	srli	a4,a4,0x18
1c00993c:	83e1                	srli	a5,a5,0x18
1c00993e:	00640c23          	sb	t1,24(s0)
1c009942:	00a40ca3          	sb	a0,25(s0)
1c009946:	00b40d23          	sb	a1,26(s0)
1c00994a:	00e40da3          	sb	a4,27(s0)
1c00994e:	01140e23          	sb	a7,28(s0)
1c009952:	00c40ea3          	sb	a2,29(s0)
1c009956:	00d40f23          	sb	a3,30(s0)
1c00995a:	00f40fa3          	sb	a5,31(s0)
1c00995e:	11c12083          	lw	ra,284(sp)
1c009962:	11812403          	lw	s0,280(sp)
1c009966:	11412483          	lw	s1,276(sp)
1c00996a:	11012903          	lw	s2,272(sp)
1c00996e:	10c12983          	lw	s3,268(sp)
1c009972:	10812a03          	lw	s4,264(sp)
1c009976:	10412a83          	lw	s5,260(sp)
1c00997a:	10012b03          	lw	s6,256(sp)
1c00997e:	5bfe                	lw	s7,252(sp)
1c009980:	5c6e                	lw	s8,248(sp)
1c009982:	5cde                	lw	s9,244(sp)
1c009984:	5d4e                	lw	s10,240(sp)
1c009986:	5dbe                	lw	s11,236(sp)
1c009988:	6115                	addi	sp,sp,288
1c00998a:	8082                	ret

1c00998c <sha3_512>:
1c00998c:	7105                	addi	sp,sp,-480
1c00998e:	1c812c23          	sw	s0,472(sp)
1c009992:	1d312623          	sw	s3,460(sp)
1c009996:	1d412423          	sw	s4,456(sp)
1c00999a:	1c112e23          	sw	ra,476(sp)
1c00999e:	1c912a23          	sw	s1,468(sp)
1c0099a2:	1d212823          	sw	s2,464(sp)
1c0099a6:	1d512223          	sw	s5,452(sp)
1c0099aa:	1d612023          	sw	s6,448(sp)
1c0099ae:	1b712e23          	sw	s7,444(sp)
1c0099b2:	1b812c23          	sw	s8,440(sp)
1c0099b6:	1b912a23          	sw	s9,436(sp)
1c0099ba:	1ba12823          	sw	s10,432(sp)
1c0099be:	1bb12623          	sw	s11,428(sp)
1c0099c2:	842a                	mv	s0,a0
1c0099c4:	8a32                	mv	s4,a2
1c0099c6:	0d810993          	addi	s3,sp,216
1c0099ca:	081c                	addi	a5,sp,16
1c0099cc:	4681                	li	a3,0
1c0099ce:	4701                	li	a4,0
1c0099d0:	c394                	sw	a3,0(a5)
1c0099d2:	c3d8                	sw	a4,4(a5)
1c0099d4:	07a1                	addi	a5,a5,8
1c0099d6:	ff379be3          	bne	a5,s3,1c0099cc <sha3_512+0x40>
1c0099da:	04700793          	li	a5,71
1c0099de:	0947f463          	bgeu	a5,s4,1c009a66 <sha3_512+0xda>
1c0099e2:	04858a93          	addi	s5,a1,72
1c0099e6:	8956                	mv	s2,s5
1c0099e8:	04700493          	li	s1,71
1c0099ec:	0818                	addi	a4,sp,16
1c0099ee:	0015c783          	lbu	a5,1(a1)
1c0099f2:	0025ce03          	lbu	t3,2(a1)
1c0099f6:	0055c803          	lbu	a6,5(a1)
1c0099fa:	0045cf03          	lbu	t5,4(a1)
1c0099fe:	0065c503          	lbu	a0,6(a1)
1c009a02:	0005ce83          	lbu	t4,0(a1)
1c009a06:	0035c603          	lbu	a2,3(a1)
1c009a0a:	0075c683          	lbu	a3,7(a1)
1c009a0e:	07a2                	slli	a5,a5,0x8
1c009a10:	0e42                	slli	t3,t3,0x10
1c009a12:	0822                	slli	a6,a6,0x8
1c009a14:	00072303          	lw	t1,0(a4)
1c009a18:	00472883          	lw	a7,4(a4)
1c009a1c:	01c7e7b3          	or	a5,a5,t3
1c009a20:	01e86833          	or	a6,a6,t5
1c009a24:	0542                	slli	a0,a0,0x10
1c009a26:	01d7e7b3          	or	a5,a5,t4
1c009a2a:	0662                	slli	a2,a2,0x18
1c009a2c:	01056533          	or	a0,a0,a6
1c009a30:	06e2                	slli	a3,a3,0x18
1c009a32:	8fd1                	or	a5,a5,a2
1c009a34:	8ec9                	or	a3,a3,a0
1c009a36:	00f347b3          	xor	a5,t1,a5
1c009a3a:	00d8c6b3          	xor	a3,a7,a3
1c009a3e:	c31c                	sw	a5,0(a4)
1c009a40:	c354                	sw	a3,4(a4)
1c009a42:	05a1                	addi	a1,a1,8
1c009a44:	0721                	addi	a4,a4,8
1c009a46:	fb2594e3          	bne	a1,s2,1c0099ee <sha3_512+0x62>
1c009a4a:	080c                	addi	a1,sp,16
1c009a4c:	852e                	mv	a0,a1
1c009a4e:	a62ff0ef          	jal	ra,1c008cb0 <KeccakF1600_StatePermute>
1c009a52:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c009a56:	04890913          	addi	s2,s2,72
1c009a5a:	85d6                	mv	a1,s5
1c009a5c:	0144f563          	bgeu	s1,s4,1c009a66 <sha3_512+0xda>
1c009a60:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c009a64:	b761                	j	1c0099ec <sha3_512+0x60>
1c009a66:	1218                	addi	a4,sp,288
1c009a68:	87ce                	mv	a5,s3
1c009a6a:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c009a6e:	0791                	addi	a5,a5,4
1c009a70:	fee79de3          	bne	a5,a4,1c009a6a <sha3_512+0xde>
1c009a74:	080a0063          	beqz	s4,1c009af4 <sha3_512+0x168>
1c009a78:	fffa0793          	addi	a5,s4,-1
1c009a7c:	4709                	li	a4,2
1c009a7e:	68f77563          	bgeu	a4,a5,1c00a108 <sha3_512+0x77c>
1c009a82:	ffca7813          	andi	a6,s4,-4
1c009a86:	87ae                	mv	a5,a1
1c009a88:	982e                	add	a6,a6,a1
1c009a8a:	0017c603          	lbu	a2,1(a5)
1c009a8e:	0007c503          	lbu	a0,0(a5)
1c009a92:	0027c683          	lbu	a3,2(a5)
1c009a96:	0037c703          	lbu	a4,3(a5)
1c009a9a:	0622                	slli	a2,a2,0x8
1c009a9c:	8e49                	or	a2,a2,a0
1c009a9e:	06c2                	slli	a3,a3,0x10
1c009aa0:	8ed1                	or	a3,a3,a2
1c009aa2:	0762                	slli	a4,a4,0x18
1c009aa4:	8f55                	or	a4,a4,a3
1c009aa6:	00e9a023          	sw	a4,0(s3)
1c009aaa:	0791                	addi	a5,a5,4
1c009aac:	0991                	addi	s3,s3,4
1c009aae:	fd079ee3          	bne	a5,a6,1c009a8a <sha3_512+0xfe>
1c009ab2:	ffca7793          	andi	a5,s4,-4
1c009ab6:	03478f63          	beq	a5,s4,1c009af4 <sha3_512+0x168>
1c009aba:	00f58733          	add	a4,a1,a5
1c009abe:	00074603          	lbu	a2,0(a4)
1c009ac2:	1314                	addi	a3,sp,416
1c009ac4:	96be                	add	a3,a3,a5
1c009ac6:	00178713          	addi	a4,a5,1
1c009aca:	f2c68c23          	sb	a2,-200(a3)
1c009ace:	03477363          	bgeu	a4,s4,1c009af4 <sha3_512+0x168>
1c009ad2:	00e586b3          	add	a3,a1,a4
1c009ad6:	0006c683          	lbu	a3,0(a3)
1c009ada:	1310                	addi	a2,sp,416
1c009adc:	9732                	add	a4,a4,a2
1c009ade:	0789                	addi	a5,a5,2
1c009ae0:	f2d70c23          	sb	a3,-200(a4)
1c009ae4:	0147f863          	bgeu	a5,s4,1c009af4 <sha3_512+0x168>
1c009ae8:	95be                	add	a1,a1,a5
1c009aea:	0005c703          	lbu	a4,0(a1)
1c009aee:	97b2                	add	a5,a5,a2
1c009af0:	f2e78c23          	sb	a4,-200(a5)
1c009af4:	131c                	addi	a5,sp,416
1c009af6:	9a3e                	add	s4,s4,a5
1c009af8:	4799                	li	a5,6
1c009afa:	f2fa0c23          	sb	a5,-200(s4)
1c009afe:	0da14703          	lbu	a4,218(sp)
1c009b02:	0d914f83          	lbu	t6,217(sp)
1c009b06:	0e214783          	lbu	a5,226(sp)
1c009b0a:	0e114e83          	lbu	t4,225(sp)
1c009b0e:	0e514303          	lbu	t1,229(sp)
1c009b12:	0e414383          	lbu	t2,228(sp)
1c009b16:	0e614803          	lbu	a6,230(sp)
1c009b1a:	0d814283          	lbu	t0,216(sp)
1c009b1e:	0e014f03          	lbu	t5,224(sp)
1c009b22:	0db14503          	lbu	a0,219(sp)
1c009b26:	0e314603          	lbu	a2,227(sp)
1c009b2a:	0e714683          	lbu	a3,231(sp)
1c009b2e:	0fa2                	slli	t6,t6,0x8
1c009b30:	0ea2                	slli	t4,t4,0x8
1c009b32:	0742                	slli	a4,a4,0x10
1c009b34:	07c2                	slli	a5,a5,0x10
1c009b36:	0322                	slli	t1,t1,0x8
1c009b38:	00736333          	or	t1,t1,t2
1c009b3c:	01f76733          	or	a4,a4,t6
1c009b40:	01d7e7b3          	or	a5,a5,t4
1c009b44:	0842                	slli	a6,a6,0x10
1c009b46:	0dd14e03          	lbu	t3,221(sp)
1c009b4a:	00576733          	or	a4,a4,t0
1c009b4e:	01e7e7b3          	or	a5,a5,t5
1c009b52:	00686833          	or	a6,a6,t1
1c009b56:	0662                	slli	a2,a2,0x18
1c009b58:	06e2                	slli	a3,a3,0x18
1c009b5a:	0562                	slli	a0,a0,0x18
1c009b5c:	0dc14483          	lbu	s1,220(sp)
1c009b60:	0de14883          	lbu	a7,222(sp)
1c009b64:	8d59                	or	a0,a0,a4
1c009b66:	00f66733          	or	a4,a2,a5
1c009b6a:	0106e7b3          	or	a5,a3,a6
1c009b6e:	46c2                	lw	a3,16(sp)
1c009b70:	0df14583          	lbu	a1,223(sp)
1c009b74:	0e22                	slli	t3,t3,0x8
1c009b76:	009e6e33          	or	t3,t3,s1
1c009b7a:	8d35                	xor	a0,a0,a3
1c009b7c:	08c2                	slli	a7,a7,0x10
1c009b7e:	46d2                	lw	a3,20(sp)
1c009b80:	01c8e8b3          	or	a7,a7,t3
1c009b84:	05e2                	slli	a1,a1,0x18
1c009b86:	0115e5b3          	or	a1,a1,a7
1c009b8a:	8db5                	xor	a1,a1,a3
1c009b8c:	46e2                	lw	a3,24(sp)
1c009b8e:	0ea14803          	lbu	a6,234(sp)
1c009b92:	0e914483          	lbu	s1,233(sp)
1c009b96:	8eb9                	xor	a3,a3,a4
1c009b98:	4772                	lw	a4,28(sp)
1c009b9a:	0e814a83          	lbu	s5,232(sp)
1c009b9e:	0eb14a03          	lbu	s4,235(sp)
1c009ba2:	8f3d                	xor	a4,a4,a5
1c009ba4:	0ec14d03          	lbu	s10,236(sp)
1c009ba8:	11f14783          	lbu	a5,287(sp)
1c009bac:	0ed14903          	lbu	s2,237(sp)
1c009bb0:	c82a                	sw	a0,16(sp)
1c009bb2:	ca2e                	sw	a1,20(sp)
1c009bb4:	cc36                	sw	a3,24(sp)
1c009bb6:	ce3a                	sw	a4,28(sp)
1c009bb8:	0ee14f83          	lbu	t6,238(sp)
1c009bbc:	0f214283          	lbu	t0,242(sp)
1c009bc0:	0f114f03          	lbu	t5,241(sp)
1c009bc4:	0fd14883          	lbu	a7,253(sp)
1c009bc8:	0fc14b83          	lbu	s7,252(sp)
1c009bcc:	04a2                	slli	s1,s1,0x8
1c009bce:	0842                	slli	a6,a6,0x10
1c009bd0:	02c2                	slli	t0,t0,0x10
1c009bd2:	08a2                	slli	a7,a7,0x8
1c009bd4:	00986833          	or	a6,a6,s1
1c009bd8:	0f22                	slli	t5,t5,0x8
1c009bda:	01e2ef33          	or	t5,t0,t5
1c009bde:	01586833          	or	a6,a6,s5
1c009be2:	0178e2b3          	or	t0,a7,s7
1c009be6:	018a1893          	slli	a7,s4,0x18
1c009bea:	0108e833          	or	a6,a7,a6
1c009bee:	5882                	lw	a7,32(sp)
1c009bf0:	0ef14503          	lbu	a0,239(sp)
1c009bf4:	0922                	slli	s2,s2,0x8
1c009bf6:	01a96933          	or	s2,s2,s10
1c009bfa:	0108c8b3          	xor	a7,a7,a6
1c009bfe:	0fc2                	slli	t6,t6,0x10
1c009c00:	5812                	lw	a6,36(sp)
1c009c02:	0f014983          	lbu	s3,240(sp)
1c009c06:	0f314583          	lbu	a1,243(sp)
1c009c0a:	012fefb3          	or	t6,t6,s2
1c009c0e:	0562                	slli	a0,a0,0x18
1c009c10:	0f514e83          	lbu	t4,245(sp)
1c009c14:	01f56533          	or	a0,a0,t6
1c009c18:	0f414c83          	lbu	s9,244(sp)
1c009c1c:	0f614c03          	lbu	s8,246(sp)
1c009c20:	00a84833          	xor	a6,a6,a0
1c009c24:	5522                	lw	a0,40(sp)
1c009c26:	0f714603          	lbu	a2,247(sp)
1c009c2a:	013f6f33          	or	t5,t5,s3
1c009c2e:	05e2                	slli	a1,a1,0x18
1c009c30:	0f914e03          	lbu	t3,249(sp)
1c009c34:	0fa14303          	lbu	t1,250(sp)
1c009c38:	01e5e5b3          	or	a1,a1,t5
1c009c3c:	0ea2                	slli	t4,t4,0x8
1c009c3e:	019ee4b3          	or	s1,t4,s9
1c009c42:	8d2d                	xor	a0,a0,a1
1c009c44:	010c1e93          	slli	t4,s8,0x10
1c009c48:	55b2                	lw	a1,44(sp)
1c009c4a:	0f814383          	lbu	t2,248(sp)
1c009c4e:	0fb14683          	lbu	a3,251(sp)
1c009c52:	009eeeb3          	or	t4,t4,s1
1c009c56:	0662                	slli	a2,a2,0x18
1c009c58:	01d66633          	or	a2,a2,t4
1c009c5c:	0342                	slli	t1,t1,0x10
1c009c5e:	0e22                	slli	t3,t3,0x8
1c009c60:	0fe14b03          	lbu	s6,254(sp)
1c009c64:	8db1                	xor	a1,a1,a2
1c009c66:	006e6e33          	or	t3,t3,t1
1c009c6a:	5642                	lw	a2,48(sp)
1c009c6c:	0ff14703          	lbu	a4,255(sp)
1c009c70:	007e6e33          	or	t3,t3,t2
1c009c74:	06e2                	slli	a3,a3,0x18
1c009c76:	01c6e6b3          	or	a3,a3,t3
1c009c7a:	8e35                	xor	a2,a2,a3
1c009c7c:	010b1313          	slli	t1,s6,0x10
1c009c80:	56d2                	lw	a3,52(sp)
1c009c82:	00536333          	or	t1,t1,t0
1c009c86:	0762                	slli	a4,a4,0x18
1c009c88:	00676733          	or	a4,a4,t1
1c009c8c:	8f35                	xor	a4,a4,a3
1c009c8e:	10114e83          	lbu	t4,257(sp)
1c009c92:	10214a83          	lbu	s5,258(sp)
1c009c96:	d046                	sw	a7,32(sp)
1c009c98:	d242                	sw	a6,36(sp)
1c009c9a:	d42a                	sw	a0,40(sp)
1c009c9c:	d62e                	sw	a1,44(sp)
1c009c9e:	d832                	sw	a2,48(sp)
1c009ca0:	da3a                	sw	a4,52(sp)
1c009ca2:	10014903          	lbu	s2,256(sp)
1c009ca6:	10914303          	lbu	t1,265(sp)
1c009caa:	10a14983          	lbu	s3,266(sp)
1c009cae:	10814383          	lbu	t2,264(sp)
1c009cb2:	10514f83          	lbu	t6,261(sp)
1c009cb6:	10b14603          	lbu	a2,267(sp)
1c009cba:	10414b03          	lbu	s6,260(sp)
1c009cbe:	10614e03          	lbu	t3,262(sp)
1c009cc2:	09c2                	slli	s3,s3,0x10
1c009cc4:	0322                	slli	t1,t1,0x8
1c009cc6:	10714583          	lbu	a1,263(sp)
1c009cca:	01336333          	or	t1,t1,s3
1c009cce:	00736333          	or	t1,t1,t2
1c009cd2:	10d14f03          	lbu	t5,269(sp)
1c009cd6:	0fa2                	slli	t6,t6,0x8
1c009cd8:	0662                	slli	a2,a2,0x18
1c009cda:	10c14a03          	lbu	s4,268(sp)
1c009cde:	016fefb3          	or	t6,t6,s6
1c009ce2:	11114803          	lbu	a6,273(sp)
1c009ce6:	11214483          	lbu	s1,274(sp)
1c009cea:	10e14883          	lbu	a7,270(sp)
1c009cee:	00666633          	or	a2,a2,t1
1c009cf2:	0e42                	slli	t3,t3,0x10
1c009cf4:	5372                	lw	t1,60(sp)
1c009cf6:	01fe6e33          	or	t3,t3,t6
1c009cfa:	10f14683          	lbu	a3,271(sp)
1c009cfe:	05e2                	slli	a1,a1,0x18
1c009d00:	11014283          	lbu	t0,272(sp)
1c009d04:	11314703          	lbu	a4,275(sp)
1c009d08:	01c5e5b3          	or	a1,a1,t3
1c009d0c:	0f22                	slli	t5,t5,0x8
1c009d0e:	014f6f33          	or	t5,t5,s4
1c009d12:	00b34333          	xor	t1,t1,a1
1c009d16:	04c2                	slli	s1,s1,0x10
1c009d18:	4596                	lw	a1,68(sp)
1c009d1a:	0822                	slli	a6,a6,0x8
1c009d1c:	08c2                	slli	a7,a7,0x10
1c009d1e:	10314503          	lbu	a0,259(sp)
1c009d22:	01e8e8b3          	or	a7,a7,t5
1c009d26:	00986833          	or	a6,a6,s1
1c009d2a:	06e2                	slli	a3,a3,0x18
1c009d2c:	00586833          	or	a6,a6,t0
1c009d30:	0116e6b3          	or	a3,a3,a7
1c009d34:	0ac2                	slli	s5,s5,0x10
1c009d36:	0ea2                	slli	t4,t4,0x8
1c009d38:	0762                	slli	a4,a4,0x18
1c009d3a:	5e62                	lw	t3,56(sp)
1c009d3c:	8db5                	xor	a1,a1,a3
1c009d3e:	015eeeb3          	or	t4,t4,s5
1c009d42:	46a6                	lw	a3,72(sp)
1c009d44:	01076733          	or	a4,a4,a6
1c009d48:	4806                	lw	a6,64(sp)
1c009d4a:	012eeeb3          	or	t4,t4,s2
1c009d4e:	0562                	slli	a0,a0,0x18
1c009d50:	01d56533          	or	a0,a0,t4
1c009d54:	00ae4e33          	xor	t3,t3,a0
1c009d58:	00c84833          	xor	a6,a6,a2
1c009d5c:	8f35                	xor	a4,a4,a3
1c009d5e:	11414f03          	lbu	t5,276(sp)
1c009d62:	11514883          	lbu	a7,277(sp)
1c009d66:	11614503          	lbu	a0,278(sp)
1c009d6a:	11714603          	lbu	a2,279(sp)
1c009d6e:	dc72                	sw	t3,56(sp)
1c009d70:	de1a                	sw	t1,60(sp)
1c009d72:	c0c2                	sw	a6,64(sp)
1c009d74:	c2ae                	sw	a1,68(sp)
1c009d76:	c4ba                	sw	a4,72(sp)
1c009d78:	11914703          	lbu	a4,281(sp)
1c009d7c:	11a14303          	lbu	t1,282(sp)
1c009d80:	11814e03          	lbu	t3,280(sp)
1c009d84:	11b14683          	lbu	a3,283(sp)
1c009d88:	0342                	slli	t1,t1,0x10
1c009d8a:	0722                	slli	a4,a4,0x8
1c009d8c:	00676733          	or	a4,a4,t1
1c009d90:	01c76733          	or	a4,a4,t3
1c009d94:	06e2                	slli	a3,a3,0x18
1c009d96:	08a2                	slli	a7,a7,0x8
1c009d98:	01e8e8b3          	or	a7,a7,t5
1c009d9c:	8f55                	or	a4,a4,a3
1c009d9e:	0542                	slli	a0,a0,0x10
1c009da0:	46b6                	lw	a3,76(sp)
1c009da2:	01156533          	or	a0,a0,a7
1c009da6:	0662                	slli	a2,a2,0x18
1c009da8:	11d14803          	lbu	a6,285(sp)
1c009dac:	8e49                	or	a2,a2,a0
1c009dae:	11c14e83          	lbu	t4,284(sp)
1c009db2:	8e35                	xor	a2,a2,a3
1c009db4:	11e14583          	lbu	a1,286(sp)
1c009db8:	46c6                	lw	a3,80(sp)
1c009dba:	0822                	slli	a6,a6,0x8
1c009dbc:	01d86833          	or	a6,a6,t4
1c009dc0:	8eb9                	xor	a3,a3,a4
1c009dc2:	0807e793          	ori	a5,a5,128
1c009dc6:	4756                	lw	a4,84(sp)
1c009dc8:	05c2                	slli	a1,a1,0x10
1c009dca:	0105e5b3          	or	a1,a1,a6
1c009dce:	07e2                	slli	a5,a5,0x18
1c009dd0:	8fcd                	or	a5,a5,a1
1c009dd2:	080c                	addi	a1,sp,16
1c009dd4:	8fb9                	xor	a5,a5,a4
1c009dd6:	852e                	mv	a0,a1
1c009dd8:	c6b2                	sw	a2,76(sp)
1c009dda:	c8b6                	sw	a3,80(sp)
1c009ddc:	cabe                	sw	a5,84(sp)
1c009dde:	ed3fe0ef          	jal	ra,1c008cb0 <KeccakF1600_StatePermute>
1c009de2:	4552                	lw	a0,20(sp)
1c009de4:	45f2                	lw	a1,28(sp)
1c009de6:	5612                	lw	a2,36(sp)
1c009de8:	56b2                	lw	a3,44(sp)
1c009dea:	57d2                	lw	a5,52(sp)
1c009dec:	5772                	lw	a4,60(sp)
1c009dee:	00855b13          	srli	s6,a0,0x8
1c009df2:	01055a93          	srli	s5,a0,0x10
1c009df6:	01855a13          	srli	s4,a0,0x18
1c009dfa:	0085d993          	srli	s3,a1,0x8
1c009dfe:	0105d913          	srli	s2,a1,0x10
1c009e02:	0185d493          	srli	s1,a1,0x18
1c009e06:	0ca10e23          	sb	a0,220(sp)
1c009e0a:	0d610ea3          	sb	s6,221(sp)
1c009e0e:	0d510f23          	sb	s5,222(sp)
1c009e12:	0d410fa3          	sb	s4,223(sp)
1c009e16:	00865393          	srli	t2,a2,0x8
1c009e1a:	01065293          	srli	t0,a2,0x10
1c009e1e:	01865f93          	srli	t6,a2,0x18
1c009e22:	0086df13          	srli	t5,a3,0x8
1c009e26:	0106de93          	srli	t4,a3,0x10
1c009e2a:	0186de13          	srli	t3,a3,0x18
1c009e2e:	0087d313          	srli	t1,a5,0x8
1c009e32:	0107d893          	srli	a7,a5,0x10
1c009e36:	0187d813          	srli	a6,a5,0x18
1c009e3a:	0eb10223          	sb	a1,228(sp)
1c009e3e:	0f3102a3          	sb	s3,229(sp)
1c009e42:	0f210323          	sb	s2,230(sp)
1c009e46:	0e9103a3          	sb	s1,231(sp)
1c009e4a:	45c2                	lw	a1,16(sp)
1c009e4c:	4536                	lw	a0,76(sp)
1c009e4e:	0ec10623          	sb	a2,236(sp)
1c009e52:	0e7106a3          	sb	t2,237(sp)
1c009e56:	467e                	lw	a2,220(sp)
1c009e58:	0e510723          	sb	t0,238(sp)
1c009e5c:	0ff107a3          	sb	t6,239(sp)
1c009e60:	0ed10a23          	sb	a3,244(sp)
1c009e64:	0fe10aa3          	sb	t5,245(sp)
1c009e68:	46e2                	lw	a3,24(sp)
1c009e6a:	0fd10b23          	sb	t4,246(sp)
1c009e6e:	0fc10ba3          	sb	t3,247(sp)
1c009e72:	0e610ea3          	sb	t1,253(sp)
1c009e76:	0f110f23          	sb	a7,254(sp)
1c009e7a:	0f010fa3          	sb	a6,255(sp)
1c009e7e:	10e10223          	sb	a4,260(sp)
1c009e82:	4816                	lw	a6,68(sp)
1c009e84:	0ef10e23          	sb	a5,252(sp)
1c009e88:	579e                	lw	a5,228(sp)
1c009e8a:	00875d93          	srli	s11,a4,0x8
1c009e8e:	01075d13          	srli	s10,a4,0x10
1c009e92:	00885c93          	srli	s9,a6,0x8
1c009e96:	01085c13          	srli	s8,a6,0x10
1c009e9a:	01885b93          	srli	s7,a6,0x18
1c009e9e:	00855b13          	srli	s6,a0,0x8
1c009ea2:	01055a93          	srli	s5,a0,0x10
1c009ea6:	01855a13          	srli	s4,a0,0x18
1c009eaa:	0085d993          	srli	s3,a1,0x8
1c009eae:	0105d913          	srli	s2,a1,0x10
1c009eb2:	0185d493          	srli	s1,a1,0x18
1c009eb6:	00865393          	srli	t2,a2,0x8
1c009eba:	01065293          	srli	t0,a2,0x10
1c009ebe:	01865f93          	srli	t6,a2,0x18
1c009ec2:	0086df13          	srli	t5,a3,0x8
1c009ec6:	0106de93          	srli	t4,a3,0x10
1c009eca:	0186de13          	srli	t3,a3,0x18
1c009ece:	0087d313          	srli	t1,a5,0x8
1c009ed2:	0107d893          	srli	a7,a5,0x10
1c009ed6:	00f40623          	sb	a5,12(s0)
1c009eda:	8361                	srli	a4,a4,0x18
1c009edc:	83e1                	srli	a5,a5,0x18
1c009ede:	11b102a3          	sb	s11,261(sp)
1c009ee2:	11a10323          	sb	s10,262(sp)
1c009ee6:	10e103a3          	sb	a4,263(sp)
1c009eea:	11010623          	sb	a6,268(sp)
1c009eee:	4706                	lw	a4,64(sp)
1c009ef0:	119106a3          	sb	s9,269(sp)
1c009ef4:	11810723          	sb	s8,270(sp)
1c009ef8:	117107a3          	sb	s7,271(sp)
1c009efc:	10a10a23          	sb	a0,276(sp)
1c009f00:	11610aa3          	sb	s6,277(sp)
1c009f04:	11510b23          	sb	s5,278(sp)
1c009f08:	11410ba3          	sb	s4,279(sp)
1c009f0c:	00b40023          	sb	a1,0(s0)
1c009f10:	4a26                	lw	s4,72(sp)
1c009f12:	55be                	lw	a1,236(sp)
1c009f14:	013400a3          	sb	s3,1(s0)
1c009f18:	01240123          	sb	s2,2(s0)
1c009f1c:	009401a3          	sb	s1,3(s0)
1c009f20:	00c40223          	sb	a2,4(s0)
1c009f24:	007402a3          	sb	t2,5(s0)
1c009f28:	565e                	lw	a2,244(sp)
1c009f2a:	00540323          	sb	t0,6(s0)
1c009f2e:	01f403a3          	sb	t6,7(s0)
1c009f32:	01e404a3          	sb	t5,9(s0)
1c009f36:	01d40523          	sb	t4,10(s0)
1c009f3a:	01c405a3          	sb	t3,11(s0)
1c009f3e:	006406a3          	sb	t1,13(s0)
1c009f42:	01140723          	sb	a7,14(s0)
1c009f46:	00f407a3          	sb	a5,15(s0)
1c009f4a:	00d40423          	sb	a3,8(s0)
1c009f4e:	56fe                	lw	a3,252(sp)
1c009f50:	5502                	lw	a0,32(sp)
1c009f52:	54a2                	lw	s1,40(sp)
1c009f54:	0185db13          	srli	s6,a1,0x18
1c009f58:	00855d93          	srli	s11,a0,0x8
1c009f5c:	01055d13          	srli	s10,a0,0x10
1c009f60:	01855c93          	srli	s9,a0,0x18
1c009f64:	5522                	lw	a0,40(sp)
1c009f66:	5842                	lw	a6,48(sp)
1c009f68:	0085dc13          	srli	s8,a1,0x8
1c009f6c:	00855a93          	srli	s5,a0,0x8
1c009f70:	8141                	srli	a0,a0,0x10
1c009f72:	c42a                	sw	a0,8(sp)
1c009f74:	5562                	lw	a0,56(sp)
1c009f76:	0105db93          	srli	s7,a1,0x10
1c009f7a:	00b40a23          	sb	a1,20(s0)
1c009f7e:	8161                	srli	a0,a0,0x18
1c009f80:	c22a                	sw	a0,4(sp)
1c009f82:	5502                	lw	a0,32(sp)
1c009f84:	45a2                	lw	a1,8(sp)
1c009f86:	01640ba3          	sb	s6,23(s0)
1c009f8a:	c62a                	sw	a0,12(sp)
1c009f8c:	00c14503          	lbu	a0,12(sp)
1c009f90:	5b22                	lw	s6,40(sp)
1c009f92:	0184d993          	srli	s3,s1,0x18
1c009f96:	00865913          	srli	s2,a2,0x8
1c009f9a:	01065493          	srli	s1,a2,0x10
1c009f9e:	01865393          	srli	t2,a2,0x18
1c009fa2:	00a10623          	sb	a0,12(sp)
1c009fa6:	0ff57513          	andi	a0,a0,255
1c009faa:	10412783          	lw	a5,260(sp)
1c009fae:	00885293          	srli	t0,a6,0x8
1c009fb2:	01085f93          	srli	t6,a6,0x10
1c009fb6:	01885f13          	srli	t5,a6,0x18
1c009fba:	0086de93          	srli	t4,a3,0x8
1c009fbe:	5862                	lw	a6,56(sp)
1c009fc0:	0106de13          	srli	t3,a3,0x10
1c009fc4:	0186d313          	srli	t1,a3,0x18
1c009fc8:	00a40823          	sb	a0,16(s0)
1c009fcc:	01b408a3          	sb	s11,17(s0)
1c009fd0:	01a40923          	sb	s10,18(s0)
1c009fd4:	019409a3          	sb	s9,19(s0)
1c009fd8:	01840aa3          	sb	s8,21(s0)
1c009fdc:	01740b23          	sb	s7,22(s0)
1c009fe0:	01640c23          	sb	s6,24(s0)
1c009fe4:	01540ca3          	sb	s5,25(s0)
1c009fe8:	00b40d23          	sb	a1,26(s0)
1c009fec:	01340da3          	sb	s3,27(s0)
1c009ff0:	01240ea3          	sb	s2,29(s0)
1c009ff4:	00940f23          	sb	s1,30(s0)
1c009ff8:	00740fa3          	sb	t2,31(s0)
1c009ffc:	00c40e23          	sb	a2,28(s0)
1c00a000:	5642                	lw	a2,48(sp)
1c00a002:	02d40223          	sb	a3,36(s0)
1c00a006:	56e2                	lw	a3,56(sp)
1c00a008:	02c40023          	sb	a2,32(s0)
1c00a00c:	10c12603          	lw	a2,268(sp)
1c00a010:	02d40423          	sb	a3,40(s0)
1c00a014:	4692                	lw	a3,4(sp)
1c00a016:	00885893          	srli	a7,a6,0x8
1c00a01a:	025400a3          	sb	t0,33(s0)
1c00a01e:	02d405a3          	sb	a3,43(s0)
1c00a022:	11412683          	lw	a3,276(sp)
1c00a026:	03f40123          	sb	t6,34(s0)
1c00a02a:	03e401a3          	sb	t5,35(s0)
1c00a02e:	03d402a3          	sb	t4,37(s0)
1c00a032:	03c40323          	sb	t3,38(s0)
1c00a036:	026403a3          	sb	t1,39(s0)
1c00a03a:	02f40623          	sb	a5,44(s0)
1c00a03e:	0087d993          	srli	s3,a5,0x8
1c00a042:	0107d913          	srli	s2,a5,0x10
1c00a046:	01085813          	srli	a6,a6,0x10
1c00a04a:	00875493          	srli	s1,a4,0x8
1c00a04e:	008a5e13          	srli	t3,s4,0x8
1c00a052:	010a5313          	srli	t1,s4,0x10
1c00a056:	83e1                	srli	a5,a5,0x18
1c00a058:	01075393          	srli	t2,a4,0x10
1c00a05c:	01875293          	srli	t0,a4,0x18
1c00a060:	00865f93          	srli	t6,a2,0x8
1c00a064:	01065f13          	srli	t5,a2,0x10
1c00a068:	01865e93          	srli	t4,a2,0x18
1c00a06c:	031404a3          	sb	a7,41(s0)
1c00a070:	03040523          	sb	a6,42(s0)
1c00a074:	033406a3          	sb	s3,45(s0)
1c00a078:	03240723          	sb	s2,46(s0)
1c00a07c:	029408a3          	sb	s1,49(s0)
1c00a080:	03440c23          	sb	s4,56(s0)
1c00a084:	018a5893          	srli	a7,s4,0x18
1c00a088:	02f407a3          	sb	a5,47(s0)
1c00a08c:	02e40823          	sb	a4,48(s0)
1c00a090:	02740923          	sb	t2,50(s0)
1c00a094:	025409a3          	sb	t0,51(s0)
1c00a098:	02c40a23          	sb	a2,52(s0)
1c00a09c:	03f40aa3          	sb	t6,53(s0)
1c00a0a0:	03e40b23          	sb	t5,54(s0)
1c00a0a4:	03d40ba3          	sb	t4,55(s0)
1c00a0a8:	03c40ca3          	sb	t3,57(s0)
1c00a0ac:	02640d23          	sb	t1,58(s0)
1c00a0b0:	0086d813          	srli	a6,a3,0x8
1c00a0b4:	0106d513          	srli	a0,a3,0x10
1c00a0b8:	0186d593          	srli	a1,a3,0x18
1c00a0bc:	03140da3          	sb	a7,59(s0)
1c00a0c0:	02d40e23          	sb	a3,60(s0)
1c00a0c4:	03040ea3          	sb	a6,61(s0)
1c00a0c8:	02a40f23          	sb	a0,62(s0)
1c00a0cc:	02b40fa3          	sb	a1,63(s0)
1c00a0d0:	1dc12083          	lw	ra,476(sp)
1c00a0d4:	1d812403          	lw	s0,472(sp)
1c00a0d8:	1d412483          	lw	s1,468(sp)
1c00a0dc:	1d012903          	lw	s2,464(sp)
1c00a0e0:	1cc12983          	lw	s3,460(sp)
1c00a0e4:	1c812a03          	lw	s4,456(sp)
1c00a0e8:	1c412a83          	lw	s5,452(sp)
1c00a0ec:	1c012b03          	lw	s6,448(sp)
1c00a0f0:	1bc12b83          	lw	s7,444(sp)
1c00a0f4:	1b812c03          	lw	s8,440(sp)
1c00a0f8:	1b412c83          	lw	s9,436(sp)
1c00a0fc:	1b012d03          	lw	s10,432(sp)
1c00a100:	1ac12d83          	lw	s11,428(sp)
1c00a104:	613d                	addi	sp,sp,480
1c00a106:	8082                	ret
1c00a108:	4781                	li	a5,0
1c00a10a:	ba45                	j	1c009aba <sha3_512+0x12e>

1c00a10c <PQCLEAN_KYBER512_CLEAN_gen_matrix>:
1c00a10c:	db010113          	addi	sp,sp,-592
1c00a110:	c62a                	sw	a0,12(sp)
1c00a112:	47b2                	lw	a5,12(sp)
1c00a114:	23612823          	sw	s6,560(sp)
1c00a118:	4b01                	li	s6,0
1c00a11a:	23512a23          	sw	s5,564(sp)
1c00a11e:	00ab1a93          	slli	s5,s6,0xa
1c00a122:	6805                	lui	a6,0x1
1c00a124:	97d6                	add	a5,a5,s5
1c00a126:	24812423          	sw	s0,584(sp)
1c00a12a:	24912223          	sw	s1,580(sp)
1c00a12e:	25212023          	sw	s2,576(sp)
1c00a132:	23412c23          	sw	s4,568(sp)
1c00a136:	23712623          	sw	s7,556(sp)
1c00a13a:	23812423          	sw	s8,552(sp)
1c00a13e:	23912223          	sw	s9,548(sp)
1c00a142:	23a12023          	sw	s10,544(sp)
1c00a146:	24112623          	sw	ra,588(sp)
1c00a14a:	23312e23          	sw	s3,572(sp)
1c00a14e:	21b12e23          	sw	s11,540(sp)
1c00a152:	8c2e                	mv	s8,a1
1c00a154:	c432                	sw	a2,8(sp)
1c00a156:	20c10a13          	addi	s4,sp,524
1c00a15a:	fff80b93          	addi	s7,a6,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00a15e:	d0080d13          	addi	s10,a6,-768
1c00a162:	1960                	addi	s0,sp,188
1c00a164:	0ffb7c93          	andi	s9,s6,255
1c00a168:	c23e                	sw	a5,4(sp)
1c00a16a:	4901                	li	s2,0
1c00a16c:	10000493          	li	s1,256
1c00a170:	47a2                	lw	a5,8(sp)
1c00a172:	0ff97613          	andi	a2,s2,255
1c00a176:	c3d9                	beqz	a5,1c00a1fc <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xf0>
1c00a178:	86b2                	mv	a3,a2
1c00a17a:	85e2                	mv	a1,s8
1c00a17c:	8666                	mv	a2,s9
1c00a17e:	0808                	addi	a0,sp,16
1c00a180:	779000ef          	jal	ra,1c00b0f8 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>
1c00a184:	0810                	addi	a2,sp,16
1c00a186:	458d                	li	a1,3
1c00a188:	0848                	addi	a0,sp,20
1c00a18a:	9a0ff0ef          	jal	ra,1c00932a <shake128_squeezeblocks>
1c00a18e:	4792                	lw	a5,4(sp)
1c00a190:	00991313          	slli	t1,s2,0x9
1c00a194:	0858                	addi	a4,sp,20
1c00a196:	00f30ab3          	add	s5,t1,a5
1c00a19a:	4d81                	li	s11,0
1c00a19c:	00174583          	lbu	a1,1(a4)
1c00a1a0:	00074603          	lbu	a2,0(a4)
1c00a1a4:	001d9693          	slli	a3,s11,0x1
1c00a1a8:	00859793          	slli	a5,a1,0x8
1c00a1ac:	8fd1                	or	a5,a5,a2
1c00a1ae:	0177f7b3          	and	a5,a5,s7
1c00a1b2:	07c2                	slli	a5,a5,0x10
1c00a1b4:	83c1                	srli	a5,a5,0x10
1c00a1b6:	00274603          	lbu	a2,2(a4)
1c00a1ba:	96d6                	add	a3,a3,s5
1c00a1bc:	0045de13          	srli	t3,a1,0x4
1c00a1c0:	001d8513          	addi	a0,s11,1
1c00a1c4:	04fd6263          	bltu	s10,a5,1c00a208 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xfc>
1c00a1c8:	00f69023          	sh	a5,0(a3)
1c00a1cc:	10951863          	bne	a0,s1,1c00a2dc <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x1d0>
1c00a1d0:	0808                	addi	a0,sp,16
1c00a1d2:	a4cff0ef          	jal	ra,1c00941e <shake128_ctx_release>
1c00a1d6:	0c090463          	beqz	s2,1c00a29e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x192>
1c00a1da:	0d2b0463          	beq	s6,s2,1c00a2a2 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x196>
1c00a1de:	47b2                	lw	a5,12(sp)
1c00a1e0:	4b05                	li	s6,1
1c00a1e2:	00ab1a93          	slli	s5,s6,0xa
1c00a1e6:	97d6                	add	a5,a5,s5
1c00a1e8:	c23e                	sw	a5,4(sp)
1c00a1ea:	47a2                	lw	a5,8(sp)
1c00a1ec:	4901                	li	s2,0
1c00a1ee:	0ffb7c93          	andi	s9,s6,255
1c00a1f2:	10000493          	li	s1,256
1c00a1f6:	0ff97613          	andi	a2,s2,255
1c00a1fa:	ffbd                	bnez	a5,1c00a178 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x6c>
1c00a1fc:	86e6                	mv	a3,s9
1c00a1fe:	85e2                	mv	a1,s8
1c00a200:	0808                	addi	a0,sp,16
1c00a202:	6f7000ef          	jal	ra,1c00b0f8 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>
1c00a206:	bfbd                	j	1c00a184 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x78>
1c00a208:	0612                	slli	a2,a2,0x4
1c00a20a:	01c66633          	or	a2,a2,t3
1c00a20e:	00cd4863          	blt	s10,a2,1c00a21e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x112>
1c00a212:	001d9793          	slli	a5,s11,0x1
1c00a216:	97d6                	add	a5,a5,s5
1c00a218:	00c79023          	sh	a2,0(a5)
1c00a21c:	0d85                	addi	s11,s11,1
1c00a21e:	fa9d89e3          	beq	s11,s1,1c00a1d0 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xc4>
1c00a222:	070d                	addi	a4,a4,3
1c00a224:	f6ea1ce3          	bne	s4,a4,1c00a19c <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x90>
1c00a228:	0ff00993          	li	s3,255
1c00a22c:	a821                	j	1c00a244 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x138>
1c00a22e:	00171593          	slli	a1,a4,0x1
1c00a232:	95aa                	add	a1,a1,a0
1c00a234:	0705                	addi	a4,a4,1
1c00a236:	00f59023          	sh	a5,0(a1)
1c00a23a:	0bc76863          	bltu	a4,t3,1c00a2ea <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x1de>
1c00a23e:	9dba                	add	s11,s11,a4
1c00a240:	f9b9e8e3          	bltu	s3,s11,1c00a1d0 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xc4>
1c00a244:	0810                	addi	a2,sp,16
1c00a246:	0848                	addi	a0,sp,20
1c00a248:	4585                	li	a1,1
1c00a24a:	8e0ff0ef          	jal	ra,1c00932a <shake128_squeezeblocks>
1c00a24e:	001d9513          	slli	a0,s11,0x1
1c00a252:	9556                	add	a0,a0,s5
1c00a254:	41b48e33          	sub	t3,s1,s11
1c00a258:	0850                	addi	a2,sp,20
1c00a25a:	4701                	li	a4,0
1c00a25c:	00164583          	lbu	a1,1(a2)
1c00a260:	00064e83          	lbu	t4,0(a2)
1c00a264:	00264683          	lbu	a3,2(a2)
1c00a268:	00859793          	slli	a5,a1,0x8
1c00a26c:	01d7e7b3          	or	a5,a5,t4
1c00a270:	0177f7b3          	and	a5,a5,s7
1c00a274:	07c2                	slli	a5,a5,0x10
1c00a276:	0692                	slli	a3,a3,0x4
1c00a278:	8191                	srli	a1,a1,0x4
1c00a27a:	83c1                	srli	a5,a5,0x10
1c00a27c:	8ecd                	or	a3,a3,a1
1c00a27e:	fafd78e3          	bgeu	s10,a5,1c00a22e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x122>
1c00a282:	00dd4863          	blt	s10,a3,1c00a292 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x186>
1c00a286:	00171793          	slli	a5,a4,0x1
1c00a28a:	97aa                	add	a5,a5,a0
1c00a28c:	00d79023          	sh	a3,0(a5)
1c00a290:	0705                	addi	a4,a4,1
1c00a292:	fbc776e3          	bgeu	a4,t3,1c00a23e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x132>
1c00a296:	060d                	addi	a2,a2,3
1c00a298:	fcc412e3          	bne	s0,a2,1c00a25c <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x150>
1c00a29c:	b74d                	j	1c00a23e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x132>
1c00a29e:	4905                	li	s2,1
1c00a2a0:	bdc1                	j	1c00a170 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x64>
1c00a2a2:	24c12083          	lw	ra,588(sp)
1c00a2a6:	24812403          	lw	s0,584(sp)
1c00a2aa:	24412483          	lw	s1,580(sp)
1c00a2ae:	24012903          	lw	s2,576(sp)
1c00a2b2:	23c12983          	lw	s3,572(sp)
1c00a2b6:	23812a03          	lw	s4,568(sp)
1c00a2ba:	23412a83          	lw	s5,564(sp)
1c00a2be:	23012b03          	lw	s6,560(sp)
1c00a2c2:	22c12b83          	lw	s7,556(sp)
1c00a2c6:	22812c03          	lw	s8,552(sp)
1c00a2ca:	22412c83          	lw	s9,548(sp)
1c00a2ce:	22012d03          	lw	s10,544(sp)
1c00a2d2:	21c12d83          	lw	s11,540(sp)
1c00a2d6:	25010113          	addi	sp,sp,592
1c00a2da:	8082                	ret
1c00a2dc:	8191                	srli	a1,a1,0x4
1c00a2de:	0612                	slli	a2,a2,0x4
1c00a2e0:	8e4d                	or	a2,a2,a1
1c00a2e2:	8daa                	mv	s11,a0
1c00a2e4:	f2cd57e3          	bge	s10,a2,1c00a212 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x106>
1c00a2e8:	bf2d                	j	1c00a222 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x116>
1c00a2ea:	f8dd5ee3          	bge	s10,a3,1c00a286 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x17a>
1c00a2ee:	b765                	j	1c00a296 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x18a>

1c00a2f0 <PQCLEAN_KYBER512_CLEAN_indcpa_enc>:
1c00a2f0:	b7010113          	addi	sp,sp,-1168
1c00a2f4:	7379                	lui	t1,0xffffe
1c00a2f6:	48112623          	sw	ra,1164(sp)
1c00a2fa:	48812423          	sw	s0,1160(sp)
1c00a2fe:	48912223          	sw	s1,1156(sp)
1c00a302:	49212023          	sw	s2,1152(sp)
1c00a306:	47312e23          	sw	s3,1148(sp)
1c00a30a:	47412c23          	sw	s4,1144(sp)
1c00a30e:	47512a23          	sw	s5,1140(sp)
1c00a312:	47612823          	sw	s6,1136(sp)
1c00a316:	47712623          	sw	s7,1132(sp)
1c00a31a:	47812423          	sw	s8,1128(sp)
1c00a31e:	47912223          	sw	s9,1124(sp)
1c00a322:	47a12023          	sw	s10,1120(sp)
1c00a326:	45b12e23          	sw	s11,1116(sp)
1c00a32a:	6b09                	lui	s6,0x2
1c00a32c:	911a                	add	sp,sp,t1
1c00a32e:	74fd                	lui	s1,0xfffff
1c00a330:	1818                	addi	a4,sp,48
1c00a332:	420b0793          	addi	a5,s6,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00a336:	97ba                	add	a5,a5,a4
1c00a338:	c0048a13          	addi	s4,s1,-1024 # ffffec00 <__l2_shared_end+0xe3feec00>
1c00a33c:	9a3e                	add	s4,s4,a5
1c00a33e:	8aae                	mv	s5,a1
1c00a340:	89aa                	mv	s3,a0
1c00a342:	85b2                	mv	a1,a2
1c00a344:	8552                	mv	a0,s4
1c00a346:	8432                	mv	s0,a2
1c00a348:	8936                	mv	s2,a3
1c00a34a:	097000ef          	jal	ra,1c00abe0 <PQCLEAN_KYBER512_CLEAN_polyvec_frombytes>
1c00a34e:	30044083          	lbu	ra,768(s0)
1c00a352:	30b44b03          	lbu	s6,779(s0)
1c00a356:	31444783          	lbu	a5,788(s0)
1c00a35a:	31844703          	lbu	a4,792(s0)
1c00a35e:	d406                	sw	ra,40(sp)
1c00a360:	30244083          	lbu	ra,770(s0)
1c00a364:	c45a                	sw	s6,8(sp)
1c00a366:	30f44b03          	lbu	s6,783(s0)
1c00a36a:	ca3e                	sw	a5,20(sp)
1c00a36c:	ce3a                	sw	a4,28(sp)
1c00a36e:	d606                	sw	ra,44(sp)
1c00a370:	31044b83          	lbu	s7,784(s0)
1c00a374:	30544d83          	lbu	s11,773(s0)
1c00a378:	30944383          	lbu	t2,777(s0)
1c00a37c:	30d44283          	lbu	t0,781(s0)
1c00a380:	31144f83          	lbu	t6,785(s0)
1c00a384:	31544f03          	lbu	t5,789(s0)
1c00a388:	31944e83          	lbu	t4,793(s0)
1c00a38c:	31d44e03          	lbu	t3,797(s0)
1c00a390:	30144503          	lbu	a0,769(s0)
1c00a394:	30444d03          	lbu	s10,772(s0)
1c00a398:	30644303          	lbu	t1,774(s0)
1c00a39c:	30844c83          	lbu	s9,776(s0)
1c00a3a0:	30a44883          	lbu	a7,778(s0)
1c00a3a4:	30c44c03          	lbu	s8,780(s0)
1c00a3a8:	30e44803          	lbu	a6,782(s0)
1c00a3ac:	31244603          	lbu	a2,786(s0)
1c00a3b0:	31644683          	lbu	a3,790(s0)
1c00a3b4:	31a44703          	lbu	a4,794(s0)
1c00a3b8:	31c44583          	lbu	a1,796(s0)
1c00a3bc:	31e44783          	lbu	a5,798(s0)
1c00a3c0:	30744083          	lbu	ra,775(s0)
1c00a3c4:	c65a                	sw	s6,12(sp)
1c00a3c6:	31344b03          	lbu	s6,787(s0)
1c00a3ca:	0fa2                	slli	t6,t6,0x8
1c00a3cc:	017fefb3          	or	t6,t6,s7
1c00a3d0:	c85a                	sw	s6,16(sp)
1c00a3d2:	31744b03          	lbu	s6,791(s0)
1c00a3d6:	4bd2                	lw	s7,20(sp)
1c00a3d8:	0e22                	slli	t3,t3,0x8
1c00a3da:	cc5a                	sw	s6,24(sp)
1c00a3dc:	31b44b03          	lbu	s6,795(s0)
1c00a3e0:	00be65b3          	or	a1,t3,a1
1c00a3e4:	0f22                	slli	t5,t5,0x8
1c00a3e6:	5e22                	lw	t3,40(sp)
1c00a3e8:	d05a                	sw	s6,32(sp)
1c00a3ea:	017f6f33          	or	t5,t5,s7
1c00a3ee:	31f44b03          	lbu	s6,799(s0)
1c00a3f2:	4bf2                	lw	s7,28(sp)
1c00a3f4:	0522                	slli	a0,a0,0x8
1c00a3f6:	01c56533          	or	a0,a0,t3
1c00a3fa:	0ea2                	slli	t4,t4,0x8
1c00a3fc:	5e32                	lw	t3,44(sp)
1c00a3fe:	d25a                	sw	s6,36(sp)
1c00a400:	017eeeb3          	or	t4,t4,s7
1c00a404:	30344b03          	lbu	s6,771(s0)
1c00a408:	06c2                	slli	a3,a3,0x10
1c00a40a:	0742                	slli	a4,a4,0x10
1c00a40c:	01e6e6b3          	or	a3,a3,t5
1c00a410:	01d76733          	or	a4,a4,t4
1c00a414:	4f62                	lw	t5,24(sp)
1c00a416:	5e82                	lw	t4,32(sp)
1c00a418:	03a2                	slli	t2,t2,0x8
1c00a41a:	02a2                	slli	t0,t0,0x8
1c00a41c:	0193e3b3          	or	t2,t2,s9
1c00a420:	0182e2b3          	or	t0,t0,s8
1c00a424:	08c2                	slli	a7,a7,0x10
1c00a426:	0842                	slli	a6,a6,0x10
1c00a428:	0642                	slli	a2,a2,0x10
1c00a42a:	07c2                	slli	a5,a5,0x10
1c00a42c:	0e42                	slli	t3,t3,0x10
1c00a42e:	0078e8b3          	or	a7,a7,t2
1c00a432:	00586833          	or	a6,a6,t0
1c00a436:	43a2                	lw	t2,8(sp)
1c00a438:	42b2                	lw	t0,12(sp)
1c00a43a:	01f66633          	or	a2,a2,t6
1c00a43e:	8fcd                	or	a5,a5,a1
1c00a440:	4fc2                	lw	t6,16(sp)
1c00a442:	5592                	lw	a1,36(sp)
1c00a444:	00ae6e33          	or	t3,t3,a0
1c00a448:	0b62                	slli	s6,s6,0x18
1c00a44a:	01cb6e33          	or	t3,s6,t3
1c00a44e:	0f62                	slli	t5,t5,0x18
1c00a450:	6b09                	lui	s6,0x2
1c00a452:	0ee2                	slli	t4,t4,0x18
1c00a454:	0da2                	slli	s11,s11,0x8
1c00a456:	00df66b3          	or	a3,t5,a3
1c00a45a:	00eee733          	or	a4,t4,a4
1c00a45e:	03010f13          	addi	t5,sp,48
1c00a462:	7479                	lui	s0,0xffffe
1c00a464:	01aded33          	or	s10,s11,s10
1c00a468:	0342                	slli	t1,t1,0x10
1c00a46a:	420b0e93          	addi	t4,s6,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00a46e:	00e2                	slli	ra,ra,0x18
1c00a470:	03e2                	slli	t2,t2,0x18
1c00a472:	02e2                	slli	t0,t0,0x18
1c00a474:	0fe2                	slli	t6,t6,0x18
1c00a476:	9efa                	add	t4,t4,t5
1c00a478:	05e2                	slli	a1,a1,0x18
1c00a47a:	01a36333          	or	t1,t1,s10
1c00a47e:	e0040513          	addi	a0,s0,-512 # ffffde00 <__l2_shared_end+0xe3fede00>
1c00a482:	00cfe633          	or	a2,t6,a2
1c00a486:	0060e333          	or	t1,ra,t1
1c00a48a:	0113e8b3          	or	a7,t2,a7
1c00a48e:	0102e833          	or	a6,t0,a6
1c00a492:	9576                	add	a0,a0,t4
1c00a494:	8fcd                	or	a5,a5,a1
1c00a496:	85d6                	mv	a1,s5
1c00a498:	c2b6                	sw	a3,68(sp)
1c00a49a:	d872                	sw	t3,48(sp)
1c00a49c:	da1a                	sw	t1,52(sp)
1c00a49e:	dc46                	sw	a7,56(sp)
1c00a4a0:	de42                	sw	a6,60(sp)
1c00a4a2:	c0b2                	sw	a2,64(sp)
1c00a4a4:	c4ba                	sw	a4,72(sp)
1c00a4a6:	c6be                	sw	a5,76(sp)
1c00a4a8:	2975                	jal	1c00a964 <PQCLEAN_KYBER512_CLEAN_poly_frommsg>
1c00a4aa:	1818                	addi	a4,sp,48
1c00a4ac:	420b0793          	addi	a5,s6,1056
1c00a4b0:	97ba                	add	a5,a5,a4
1c00a4b2:	be040593          	addi	a1,s0,-1056
1c00a4b6:	c20b0513          	addi	a0,s6,-992
1c00a4ba:	95be                	add	a1,a1,a5
1c00a4bc:	953a                	add	a0,a0,a4
1c00a4be:	4605                	li	a2,1
1c00a4c0:	31b1                	jal	1c00a10c <PQCLEAN_KYBER512_CLEAN_gen_matrix>
1c00a4c2:	1818                	addi	a4,sp,48
1c00a4c4:	420b0793          	addi	a5,s6,1056
1c00a4c8:	97ba                	add	a5,a5,a4
1c00a4ca:	80048a93          	addi	s5,s1,-2048
1c00a4ce:	9abe                	add	s5,s5,a5
1c00a4d0:	4601                	li	a2,0
1c00a4d2:	85ca                	mv	a1,s2
1c00a4d4:	8556                	mv	a0,s5
1c00a4d6:	2305                	jal	1c00a9f6 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c00a4d8:	4605                	li	a2,1
1c00a4da:	85ca                	mv	a1,s2
1c00a4dc:	200a8513          	addi	a0,s5,512
1c00a4e0:	2b19                	jal	1c00a9f6 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c00a4e2:	6b85                	lui	s7,0x1
1c00a4e4:	181c                	addi	a5,sp,48
1c00a4e6:	420b8513          	addi	a0,s7,1056 # 1420 <__CTOR_LIST__-0x1bffebe4>
1c00a4ea:	953e                	add	a0,a0,a5
1c00a4ec:	4609                	li	a2,2
1c00a4ee:	85ca                	mv	a1,s2
1c00a4f0:	232d                	jal	1c00aa1a <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00a4f2:	1818                	addi	a4,sp,48
1c00a4f4:	420b8793          	addi	a5,s7,1056
1c00a4f8:	97ba                	add	a5,a5,a4
1c00a4fa:	20078513          	addi	a0,a5,512
1c00a4fe:	460d                	li	a2,3
1c00a500:	85ca                	mv	a1,s2
1c00a502:	2b21                	jal	1c00aa1a <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00a504:	4611                	li	a2,4
1c00a506:	85ca                	mv	a1,s2
1c00a508:	45010513          	addi	a0,sp,1104
1c00a50c:	2339                	jal	1c00aa1a <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00a50e:	8556                	mv	a0,s5
1c00a510:	2dc5                	jal	1c00ac00 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>
1c00a512:	1818                	addi	a4,sp,48
1c00a514:	420b0793          	addi	a5,s6,1056
1c00a518:	97ba                	add	a5,a5,a4
1c00a51a:	40048493          	addi	s1,s1,1024
1c00a51e:	94be                	add	s1,s1,a5
1c00a520:	c20b0593          	addi	a1,s6,-992
1c00a524:	95ba                	add	a1,a1,a4
1c00a526:	8526                	mv	a0,s1
1c00a528:	8656                	mv	a2,s5
1c00a52a:	05f000ef          	jal	ra,1c00ad88 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00a52e:	020b0793          	addi	a5,s6,32
1c00a532:	1818                	addi	a4,sp,48
1c00a534:	00f705b3          	add	a1,a4,a5
1c00a538:	8656                	mv	a2,s5
1c00a53a:	20048513          	addi	a0,s1,512
1c00a53e:	04b000ef          	jal	ra,1c00ad88 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00a542:	1818                	addi	a4,sp,48
1c00a544:	420b0793          	addi	a5,s6,1056
1c00a548:	97ba                	add	a5,a5,a4
1c00a54a:	c0040513          	addi	a0,s0,-1024
1c00a54e:	953e                	add	a0,a0,a5
1c00a550:	8656                	mv	a2,s5
1c00a552:	85d2                	mv	a1,s4
1c00a554:	035000ef          	jal	ra,1c00ad88 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00a558:	8526                	mv	a0,s1
1c00a55a:	75e000ef          	jal	ra,1c00acb8 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont>
1c00a55e:	089c                	addi	a5,sp,80
1c00a560:	65010713          	addi	a4,sp,1616
1c00a564:	0c94                	addi	a3,sp,592
1c00a566:	0007a803          	lw	a6,0(a5)
1c00a56a:	43c8                	lw	a0,4(a5)
1c00a56c:	478c                	lw	a1,8(a5)
1c00a56e:	47d0                	lw	a2,12(a5)
1c00a570:	01072023          	sw	a6,0(a4)
1c00a574:	c348                	sw	a0,4(a4)
1c00a576:	c70c                	sw	a1,8(a4)
1c00a578:	c750                	sw	a2,12(a4)
1c00a57a:	07c1                	addi	a5,a5,16
1c00a57c:	0741                	addi	a4,a4,16
1c00a57e:	fed794e3          	bne	a5,a3,1c00a566 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x276>
1c00a582:	6789                	lui	a5,0x2
1c00a584:	7779                	lui	a4,0xffffe
1c00a586:	42078793          	addi	a5,a5,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00a58a:	1814                	addi	a3,sp,48
1c00a58c:	20070713          	addi	a4,a4,512 # ffffe200 <__l2_shared_end+0xe3fee200>
1c00a590:	97b6                	add	a5,a5,a3
1c00a592:	6341                	lui	t1,0x10
1c00a594:	7479                	lui	s0,0xffffe
1c00a596:	973e                	add	a4,a4,a5
1c00a598:	4581                	li	a1,0
1c00a59a:	137d                	addi	t1,t1,-1
1c00a59c:	10000e13          	li	t3,256
1c00a5a0:	00071603          	lh	a2,0(a4)
1c00a5a4:	00471883          	lh	a7,4(a4)
1c00a5a8:	00271683          	lh	a3,2(a4)
1c00a5ac:	00671803          	lh	a6,6(a4)
1c00a5b0:	4015d793          	srai	a5,a1,0x1
1c00a5b4:	00279513          	slli	a0,a5,0x2
1c00a5b8:	45010493          	addi	s1,sp,1104
1c00a5bc:	0642                	slli	a2,a2,0x10
1c00a5be:	0068f8b3          	and	a7,a7,t1
1c00a5c2:	0785                	addi	a5,a5,1
1c00a5c4:	06c2                	slli	a3,a3,0x10
1c00a5c6:	00687833          	and	a6,a6,t1
1c00a5ca:	9526                	add	a0,a0,s1
1c00a5cc:	01166633          	or	a2,a2,a7
1c00a5d0:	078a                	slli	a5,a5,0x2
1c00a5d2:	0106e6b3          	or	a3,a3,a6
1c00a5d6:	40c52023          	sw	a2,1024(a0) # 1000400 <__CTOR_LIST__-0x1afffc04>
1c00a5da:	97a6                	add	a5,a5,s1
1c00a5dc:	40d7a023          	sw	a3,1024(a5)
1c00a5e0:	0591                	addi	a1,a1,4
1c00a5e2:	0721                	addi	a4,a4,8
1c00a5e4:	fbc59ee3          	bne	a1,t3,1c00a5a0 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x2b0>
1c00a5e8:	6909                	lui	s2,0x2
1c00a5ea:	1818                	addi	a4,sp,48
1c00a5ec:	42090793          	addi	a5,s2,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00a5f0:	97ba                	add	a5,a5,a4
1c00a5f2:	60040593          	addi	a1,s0,1536 # ffffe600 <__l2_shared_end+0xe3fee600>
1c00a5f6:	00b784b3          	add	s1,a5,a1
1c00a5fa:	42090793          	addi	a5,s2,1056
1c00a5fe:	97ba                	add	a5,a5,a4
1c00a600:	40040513          	addi	a0,s0,1024
1c00a604:	85a6                	mv	a1,s1
1c00a606:	953e                	add	a0,a0,a5
1c00a608:	f6cfe0ef          	jal	ra,1c008d74 <KYBER_poly_intt>
1c00a60c:	42090713          	addi	a4,s2,1056
1c00a610:	1814                	addi	a3,sp,48
1c00a612:	c0040793          	addi	a5,s0,-1024
1c00a616:	9736                	add	a4,a4,a3
1c00a618:	97ba                	add	a5,a5,a4
1c00a61a:	85a6                	mv	a1,s1
1c00a61c:	10078613          	addi	a2,a5,256
1c00a620:	4198                	lw	a4,0(a1)
1c00a622:	0789                	addi	a5,a5,2
1c00a624:	0591                	addi	a1,a1,4
1c00a626:	01075693          	srli	a3,a4,0x10
1c00a62a:	fed79f23          	sh	a3,-2(a5)
1c00a62e:	0ee79f23          	sh	a4,254(a5)
1c00a632:	fef617e3          	bne	a2,a5,1c00a620 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x330>
1c00a636:	6a09                	lui	s4,0x2
1c00a638:	1818                	addi	a4,sp,48
1c00a63a:	767d                	lui	a2,0xfffff
1c00a63c:	420a0793          	addi	a5,s4,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00a640:	97ba                	add	a5,a5,a4
1c00a642:	40060493          	addi	s1,a2,1024 # fffff400 <__l2_shared_end+0xe3fef400>
1c00a646:	94be                	add	s1,s1,a5
1c00a648:	420a0793          	addi	a5,s4,1056
1c00a64c:	97ba                	add	a5,a5,a4
1c00a64e:	963e                	add	a2,a2,a5
1c00a650:	85a6                	mv	a1,s1
1c00a652:	8526                	mv	a0,s1
1c00a654:	794000ef          	jal	ra,1c00ade8 <PQCLEAN_KYBER512_CLEAN_polyvec_add>
1c00a658:	1818                	addi	a4,sp,48
1c00a65a:	7979                	lui	s2,0xffffe
1c00a65c:	420a0793          	addi	a5,s4,1056
1c00a660:	97ba                	add	a5,a5,a4
1c00a662:	c0090413          	addi	s0,s2,-1024 # ffffdc00 <__l2_shared_end+0xe3fedc00>
1c00a666:	943e                	add	s0,s0,a5
1c00a668:	420a0793          	addi	a5,s4,1056
1c00a66c:	97ba                	add	a5,a5,a4
1c00a66e:	01278633          	add	a2,a5,s2
1c00a672:	85a2                	mv	a1,s0
1c00a674:	8522                	mv	a0,s0
1c00a676:	29b9                	jal	1c00aad4 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00a678:	1818                	addi	a4,sp,48
1c00a67a:	420a0793          	addi	a5,s4,1056
1c00a67e:	97ba                	add	a5,a5,a4
1c00a680:	e0090613          	addi	a2,s2,-512
1c00a684:	963e                	add	a2,a2,a5
1c00a686:	85a2                	mv	a1,s0
1c00a688:	8522                	mv	a0,s0
1c00a68a:	21a9                	jal	1c00aad4 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00a68c:	8526                	mv	a0,s1
1c00a68e:	744000ef          	jal	ra,1c00add2 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>
1c00a692:	8522                	mv	a0,s0
1c00a694:	2921                	jal	1c00aaac <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00a696:	85a6                	mv	a1,s1
1c00a698:	854e                	mv	a0,s3
1c00a69a:	218d                	jal	1c00aafc <PQCLEAN_KYBER512_CLEAN_polyvec_compress>
1c00a69c:	85a2                	mv	a1,s0
1c00a69e:	28098513          	addi	a0,s3,640
1c00a6a2:	2a35                	jal	1c00a7de <PQCLEAN_KYBER512_CLEAN_poly_compress>
1c00a6a4:	6309                	lui	t1,0x2
1c00a6a6:	911a                	add	sp,sp,t1
1c00a6a8:	48c12083          	lw	ra,1164(sp)
1c00a6ac:	48812403          	lw	s0,1160(sp)
1c00a6b0:	48412483          	lw	s1,1156(sp)
1c00a6b4:	48012903          	lw	s2,1152(sp)
1c00a6b8:	47c12983          	lw	s3,1148(sp)
1c00a6bc:	47812a03          	lw	s4,1144(sp)
1c00a6c0:	47412a83          	lw	s5,1140(sp)
1c00a6c4:	47012b03          	lw	s6,1136(sp)
1c00a6c8:	46c12b83          	lw	s7,1132(sp)
1c00a6cc:	46812c03          	lw	s8,1128(sp)
1c00a6d0:	46412c83          	lw	s9,1124(sp)
1c00a6d4:	46012d03          	lw	s10,1120(sp)
1c00a6d8:	45c12d83          	lw	s11,1116(sp)
1c00a6dc:	49010113          	addi	sp,sp,1168
1c00a6e0:	8082                	ret

1c00a6e2 <PQCLEAN_KYBER512_CLEAN_crypto_kem_enc>:
1c00a6e2:	7175                	addi	sp,sp,-144
1c00a6e4:	c522                	sw	s0,136(sp)
1c00a6e6:	c14a                	sw	s2,128(sp)
1c00a6e8:	842a                	mv	s0,a0
1c00a6ea:	892e                	mv	s2,a1
1c00a6ec:	850a                	mv	a0,sp
1c00a6ee:	02000593          	li	a1,32
1c00a6f2:	c706                	sw	ra,140(sp)
1c00a6f4:	c326                	sw	s1,132(sp)
1c00a6f6:	84b2                	mv	s1,a2
1c00a6f8:	2f29                	jal	1c00ae12 <randombytes>
1c00a6fa:	858a                	mv	a1,sp
1c00a6fc:	850a                	mv	a0,sp
1c00a6fe:	02000613          	li	a2,32
1c00a702:	fabfe0ef          	jal	ra,1c0096ac <sha3_256>
1c00a706:	85a6                	mv	a1,s1
1c00a708:	1008                	addi	a0,sp,32
1c00a70a:	32000613          	li	a2,800
1c00a70e:	f9ffe0ef          	jal	ra,1c0096ac <sha3_256>
1c00a712:	858a                	mv	a1,sp
1c00a714:	0088                	addi	a0,sp,64
1c00a716:	04000613          	li	a2,64
1c00a71a:	a72ff0ef          	jal	ra,1c00998c <sha3_512>
1c00a71e:	1094                	addi	a3,sp,96
1c00a720:	8626                	mv	a2,s1
1c00a722:	858a                	mv	a1,sp
1c00a724:	8522                	mv	a0,s0
1c00a726:	36e9                	jal	1c00a2f0 <PQCLEAN_KYBER512_CLEAN_indcpa_enc>
1c00a728:	85a2                	mv	a1,s0
1c00a72a:	1088                	addi	a0,sp,96
1c00a72c:	30000613          	li	a2,768
1c00a730:	f7dfe0ef          	jal	ra,1c0096ac <sha3_256>
1c00a734:	854a                	mv	a0,s2
1c00a736:	0090                	addi	a2,sp,64
1c00a738:	04000693          	li	a3,64
1c00a73c:	02000593          	li	a1,32
1c00a740:	ce9fe0ef          	jal	ra,1c009428 <shake256>
1c00a744:	40ba                	lw	ra,140(sp)
1c00a746:	442a                	lw	s0,136(sp)
1c00a748:	449a                	lw	s1,132(sp)
1c00a74a:	490a                	lw	s2,128(sp)
1c00a74c:	4501                	li	a0,0
1c00a74e:	6149                	addi	sp,sp,144
1c00a750:	8082                	ret

1c00a752 <PQCLEAN_KYBER512_CLEAN_basemul>:
1c00a752:	00261783          	lh	a5,2(a2)
1c00a756:	00259703          	lh	a4,2(a1)
1c00a75a:	1101                	addi	sp,sp,-32
1c00a75c:	cc22                	sw	s0,24(sp)
1c00a75e:	842a                	mv	s0,a0
1c00a760:	02f70533          	mul	a0,a4,a5
1c00a764:	ce06                	sw	ra,28(sp)
1c00a766:	ca26                	sw	s1,20(sp)
1c00a768:	c84a                	sw	s2,16(sp)
1c00a76a:	c64e                	sw	s3,12(sp)
1c00a76c:	892e                	mv	s2,a1
1c00a76e:	84b2                	mv	s1,a2
1c00a770:	89b6                	mv	s3,a3
1c00a772:	147000ef          	jal	ra,1c00b0b8 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a776:	87aa                	mv	a5,a0
1c00a778:	03350533          	mul	a0,a0,s3
1c00a77c:	00f41023          	sh	a5,0(s0)
1c00a780:	139000ef          	jal	ra,1c00b0b8 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a784:	00a41023          	sh	a0,0(s0)
1c00a788:	00049783          	lh	a5,0(s1)
1c00a78c:	00091503          	lh	a0,0(s2)
1c00a790:	02f50533          	mul	a0,a0,a5
1c00a794:	125000ef          	jal	ra,1c00b0b8 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a798:	00045783          	lhu	a5,0(s0)
1c00a79c:	953e                	add	a0,a0,a5
1c00a79e:	00a41023          	sh	a0,0(s0)
1c00a7a2:	00249783          	lh	a5,2(s1)
1c00a7a6:	00091503          	lh	a0,0(s2)
1c00a7aa:	02f50533          	mul	a0,a0,a5
1c00a7ae:	10b000ef          	jal	ra,1c00b0b8 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a7b2:	00a41123          	sh	a0,2(s0)
1c00a7b6:	00049783          	lh	a5,0(s1)
1c00a7ba:	00291503          	lh	a0,2(s2)
1c00a7be:	02f50533          	mul	a0,a0,a5
1c00a7c2:	0f7000ef          	jal	ra,1c00b0b8 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00a7c6:	00245783          	lhu	a5,2(s0)
1c00a7ca:	40f2                	lw	ra,28(sp)
1c00a7cc:	44d2                	lw	s1,20(sp)
1c00a7ce:	953e                	add	a0,a0,a5
1c00a7d0:	00a41123          	sh	a0,2(s0)
1c00a7d4:	4462                	lw	s0,24(sp)
1c00a7d6:	4942                	lw	s2,16(sp)
1c00a7d8:	49b2                	lw	s3,12(sp)
1c00a7da:	6105                	addi	sp,sp,32
1c00a7dc:	8082                	ret

1c00a7de <PQCLEAN_KYBER512_CLEAN_poly_compress>:
1c00a7de:	1101                	addi	sp,sp,-32
1c00a7e0:	6605                	lui	a2,0x1
1c00a7e2:	ce22                	sw	s0,28(sp)
1c00a7e4:	cc26                	sw	s1,24(sp)
1c00a7e6:	ca4a                	sw	s2,20(sp)
1c00a7e8:	c84e                	sw	s3,16(sp)
1c00a7ea:	c652                	sw	s4,12(sp)
1c00a7ec:	08050813          	addi	a6,a0,128
1c00a7f0:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a7f4:	00259a03          	lh	s4,2(a1)
1c00a7f8:	00059383          	lh	t2,0(a1)
1c00a7fc:	00659983          	lh	s3,6(a1)
1c00a800:	00a59903          	lh	s2,10(a1)
1c00a804:	00e59483          	lh	s1,14(a1)
1c00a808:	00459283          	lh	t0,4(a1)
1c00a80c:	00859e03          	lh	t3,8(a1)
1c00a810:	00c59f83          	lh	t6,12(a1)
1c00a814:	40fa5893          	srai	a7,s4,0xf
1c00a818:	00c8f8b3          	and	a7,a7,a2
1c00a81c:	40f3df13          	srai	t5,t2,0xf
1c00a820:	40f9d693          	srai	a3,s3,0xf
1c00a824:	40f95713          	srai	a4,s2,0xf
1c00a828:	40f4d793          	srai	a5,s1,0xf
1c00a82c:	98d2                	add	a7,a7,s4
1c00a82e:	00cf7f33          	and	t5,t5,a2
1c00a832:	40fe5413          	srai	s0,t3,0xf
1c00a836:	8ef1                	and	a3,a3,a2
1c00a838:	40f2de93          	srai	t4,t0,0xf
1c00a83c:	8f71                	and	a4,a4,a2
1c00a83e:	8ff1                	and	a5,a5,a2
1c00a840:	40ffd313          	srai	t1,t6,0xf
1c00a844:	08c2                	slli	a7,a7,0x10
1c00a846:	9f1e                	add	t5,t5,t2
1c00a848:	96ce                	add	a3,a3,s3
1c00a84a:	00cefeb3          	and	t4,t4,a2
1c00a84e:	974a                	add	a4,a4,s2
1c00a850:	8c71                	and	s0,s0,a2
1c00a852:	97a6                	add	a5,a5,s1
1c00a854:	00c37333          	and	t1,t1,a2
1c00a858:	0108d893          	srli	a7,a7,0x10
1c00a85c:	0f42                	slli	t5,t5,0x10
1c00a85e:	06c2                	slli	a3,a3,0x10
1c00a860:	9e96                	add	t4,t4,t0
1c00a862:	0742                	slli	a4,a4,0x10
1c00a864:	9e22                	add	t3,t3,s0
1c00a866:	07c2                	slli	a5,a5,0x10
1c00a868:	937e                	add	t1,t1,t6
1c00a86a:	0892                	slli	a7,a7,0x4
1c00a86c:	010f5f13          	srli	t5,t5,0x10
1c00a870:	82c1                	srli	a3,a3,0x10
1c00a872:	8341                	srli	a4,a4,0x10
1c00a874:	83c1                	srli	a5,a5,0x10
1c00a876:	0ec2                	slli	t4,t4,0x10
1c00a878:	0e42                	slli	t3,t3,0x10
1c00a87a:	0342                	slli	t1,t1,0x10
1c00a87c:	68088893          	addi	a7,a7,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00a880:	0f12                	slli	t5,t5,0x4
1c00a882:	02c8c8b3          	div	a7,a7,a2
1c00a886:	0692                	slli	a3,a3,0x4
1c00a888:	010ede93          	srli	t4,t4,0x10
1c00a88c:	0712                	slli	a4,a4,0x4
1c00a88e:	010e5e13          	srli	t3,t3,0x10
1c00a892:	0792                	slli	a5,a5,0x4
1c00a894:	01035313          	srli	t1,t1,0x10
1c00a898:	680f0f13          	addi	t5,t5,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00a89c:	68068693          	addi	a3,a3,1664
1c00a8a0:	0e92                	slli	t4,t4,0x4
1c00a8a2:	68070713          	addi	a4,a4,1664
1c00a8a6:	0e12                	slli	t3,t3,0x4
1c00a8a8:	68078793          	addi	a5,a5,1664
1c00a8ac:	0312                	slli	t1,t1,0x4
1c00a8ae:	680e8e93          	addi	t4,t4,1664
1c00a8b2:	680e0e13          	addi	t3,t3,1664
1c00a8b6:	68030313          	addi	t1,t1,1664 # 2680 <__CTOR_LIST__-0x1bffd984>
1c00a8ba:	0511                	addi	a0,a0,4
1c00a8bc:	05c1                	addi	a1,a1,16
1c00a8be:	02cf4f33          	div	t5,t5,a2
1c00a8c2:	00f8f893          	andi	a7,a7,15
1c00a8c6:	0892                	slli	a7,a7,0x4
1c00a8c8:	02c6c6b3          	div	a3,a3,a2
1c00a8cc:	00ff7f13          	andi	t5,t5,15
1c00a8d0:	01e8e8b3          	or	a7,a7,t5
1c00a8d4:	ff150e23          	sb	a7,-4(a0)
1c00a8d8:	02c74733          	div	a4,a4,a2
1c00a8dc:	8abd                	andi	a3,a3,15
1c00a8de:	0692                	slli	a3,a3,0x4
1c00a8e0:	02c7c7b3          	div	a5,a5,a2
1c00a8e4:	8b3d                	andi	a4,a4,15
1c00a8e6:	0712                	slli	a4,a4,0x4
1c00a8e8:	02ceceb3          	div	t4,t4,a2
1c00a8ec:	8bbd                	andi	a5,a5,15
1c00a8ee:	0792                	slli	a5,a5,0x4
1c00a8f0:	02ce4e33          	div	t3,t3,a2
1c00a8f4:	00fef893          	andi	a7,t4,15
1c00a8f8:	0116e6b3          	or	a3,a3,a7
1c00a8fc:	fed50ea3          	sb	a3,-3(a0)
1c00a900:	02c34333          	div	t1,t1,a2
1c00a904:	00fe7e13          	andi	t3,t3,15
1c00a908:	01c76733          	or	a4,a4,t3
1c00a90c:	fee50f23          	sb	a4,-2(a0)
1c00a910:	00f37313          	andi	t1,t1,15
1c00a914:	0067e7b3          	or	a5,a5,t1
1c00a918:	fef50fa3          	sb	a5,-1(a0)
1c00a91c:	ed051ce3          	bne	a0,a6,1c00a7f4 <PQCLEAN_KYBER512_CLEAN_poly_compress+0x16>
1c00a920:	4472                	lw	s0,28(sp)
1c00a922:	44e2                	lw	s1,24(sp)
1c00a924:	4952                	lw	s2,20(sp)
1c00a926:	49c2                	lw	s3,16(sp)
1c00a928:	4a32                	lw	s4,12(sp)
1c00a92a:	6105                	addi	sp,sp,32
1c00a92c:	8082                	ret

1c00a92e <PQCLEAN_KYBER512_CLEAN_poly_frombytes>:
1c00a92e:	6685                	lui	a3,0x1
1c00a930:	18058613          	addi	a2,a1,384
1c00a934:	16fd                	addi	a3,a3,-1
1c00a936:	0015c783          	lbu	a5,1(a1)
1c00a93a:	0005c703          	lbu	a4,0(a1)
1c00a93e:	058d                	addi	a1,a1,3
1c00a940:	07a2                	slli	a5,a5,0x8
1c00a942:	8fd9                	or	a5,a5,a4
1c00a944:	8ff5                	and	a5,a5,a3
1c00a946:	00f51023          	sh	a5,0(a0)
1c00a94a:	ffe5c703          	lbu	a4,-2(a1)
1c00a94e:	fff5c783          	lbu	a5,-1(a1)
1c00a952:	0511                	addi	a0,a0,4
1c00a954:	8311                	srli	a4,a4,0x4
1c00a956:	0792                	slli	a5,a5,0x4
1c00a958:	8fd9                	or	a5,a5,a4
1c00a95a:	fef51f23          	sh	a5,-2(a0)
1c00a95e:	fcb61ce3          	bne	a2,a1,1c00a936 <PQCLEAN_KYBER512_CLEAN_poly_frombytes+0x8>
1c00a962:	8082                	ret

1c00a964 <PQCLEAN_KYBER512_CLEAN_poly_frommsg>:
1c00a964:	20050713          	addi	a4,a0,512
1c00a968:	0005c783          	lbu	a5,0(a1)
1c00a96c:	0541                	addi	a0,a0,16
1c00a96e:	0585                	addi	a1,a1,1
1c00a970:	8b85                	andi	a5,a5,1
1c00a972:	40f007b3          	neg	a5,a5
1c00a976:	6817f793          	andi	a5,a5,1665
1c00a97a:	fef51823          	sh	a5,-16(a0)
1c00a97e:	fff5c783          	lbu	a5,-1(a1)
1c00a982:	07fa                	slli	a5,a5,0x1e
1c00a984:	87fd                	srai	a5,a5,0x1f
1c00a986:	6817f793          	andi	a5,a5,1665
1c00a98a:	fef51923          	sh	a5,-14(a0)
1c00a98e:	fff5c783          	lbu	a5,-1(a1)
1c00a992:	07f6                	slli	a5,a5,0x1d
1c00a994:	87fd                	srai	a5,a5,0x1f
1c00a996:	6817f793          	andi	a5,a5,1665
1c00a99a:	fef51a23          	sh	a5,-12(a0)
1c00a99e:	fff5c783          	lbu	a5,-1(a1)
1c00a9a2:	07f2                	slli	a5,a5,0x1c
1c00a9a4:	87fd                	srai	a5,a5,0x1f
1c00a9a6:	6817f793          	andi	a5,a5,1665
1c00a9aa:	fef51b23          	sh	a5,-10(a0)
1c00a9ae:	fff5c783          	lbu	a5,-1(a1)
1c00a9b2:	07ee                	slli	a5,a5,0x1b
1c00a9b4:	87fd                	srai	a5,a5,0x1f
1c00a9b6:	6817f793          	andi	a5,a5,1665
1c00a9ba:	fef51c23          	sh	a5,-8(a0)
1c00a9be:	fff5c783          	lbu	a5,-1(a1)
1c00a9c2:	07ea                	slli	a5,a5,0x1a
1c00a9c4:	87fd                	srai	a5,a5,0x1f
1c00a9c6:	6817f793          	andi	a5,a5,1665
1c00a9ca:	fef51d23          	sh	a5,-6(a0)
1c00a9ce:	fff5c783          	lbu	a5,-1(a1)
1c00a9d2:	07e6                	slli	a5,a5,0x19
1c00a9d4:	87fd                	srai	a5,a5,0x1f
1c00a9d6:	6817f793          	andi	a5,a5,1665
1c00a9da:	fef51e23          	sh	a5,-4(a0)
1c00a9de:	fff5c783          	lbu	a5,-1(a1)
1c00a9e2:	879d                	srai	a5,a5,0x7
1c00a9e4:	40f007b3          	neg	a5,a5
1c00a9e8:	6817f793          	andi	a5,a5,1665
1c00a9ec:	fef51f23          	sh	a5,-2(a0)
1c00a9f0:	f6a71ce3          	bne	a4,a0,1c00a968 <PQCLEAN_KYBER512_CLEAN_poly_frommsg+0x4>
1c00a9f4:	8082                	ret

1c00a9f6 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>:
1c00a9f6:	7155                	addi	sp,sp,-208
1c00a9f8:	c5a2                	sw	s0,200(sp)
1c00a9fa:	86b2                	mv	a3,a2
1c00a9fc:	842a                	mv	s0,a0
1c00a9fe:	862e                	mv	a2,a1
1c00aa00:	850a                	mv	a0,sp
1c00aa02:	0c000593          	li	a1,192
1c00aa06:	c786                	sw	ra,204(sp)
1c00aa08:	2725                	jal	1c00b130 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>
1c00aa0a:	858a                	mv	a1,sp
1c00aa0c:	8522                	mv	a0,s0
1c00aa0e:	bc4fe0ef          	jal	ra,1c008dd2 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>
1c00aa12:	40be                	lw	ra,204(sp)
1c00aa14:	442e                	lw	s0,200(sp)
1c00aa16:	6169                	addi	sp,sp,208
1c00aa18:	8082                	ret

1c00aa1a <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>:
1c00aa1a:	7175                	addi	sp,sp,-144
1c00aa1c:	c522                	sw	s0,136(sp)
1c00aa1e:	86b2                	mv	a3,a2
1c00aa20:	842a                	mv	s0,a0
1c00aa22:	862e                	mv	a2,a1
1c00aa24:	850a                	mv	a0,sp
1c00aa26:	08000593          	li	a1,128
1c00aa2a:	c706                	sw	ra,140(sp)
1c00aa2c:	2711                	jal	1c00b130 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>
1c00aa2e:	858a                	mv	a1,sp
1c00aa30:	8522                	mv	a0,s0
1c00aa32:	c2efe0ef          	jal	ra,1c008e60 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2>
1c00aa36:	40ba                	lw	ra,140(sp)
1c00aa38:	442a                	lw	s0,136(sp)
1c00aa3a:	6149                	addi	sp,sp,144
1c00aa3c:	8082                	ret

1c00aa3e <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>:
1c00aa3e:	1101                	addi	sp,sp,-32
1c00aa40:	c452                	sw	s4,8(sp)
1c00aa42:	c256                	sw	s5,4(sp)
1c00aa44:	1c000a37          	lui	s4,0x1c000
1c00aa48:	1c000ab7          	lui	s5,0x1c000
1c00aa4c:	ca26                	sw	s1,20(sp)
1c00aa4e:	c84a                	sw	s2,16(sp)
1c00aa50:	c64e                	sw	s3,12(sp)
1c00aa52:	ce06                	sw	ra,28(sp)
1c00aa54:	cc22                	sw	s0,24(sp)
1c00aa56:	1cca0a13          	addi	s4,s4,460 # 1c0001cc <PQCLEAN_KYBER512_CLEAN_zetas+0x80>
1c00aa5a:	00450993          	addi	s3,a0,4
1c00aa5e:	00458913          	addi	s2,a1,4
1c00aa62:	00460493          	addi	s1,a2,4
1c00aa66:	24ca8a93          	addi	s5,s5,588 # 1c00024c <PQCLEAN_KYBER512_CLEAN_zetas+0x100>
1c00aa6a:	000a1403          	lh	s0,0(s4)
1c00aa6e:	ffc48613          	addi	a2,s1,-4
1c00aa72:	ffc90593          	addi	a1,s2,-4
1c00aa76:	ffc98513          	addi	a0,s3,-4
1c00aa7a:	86a2                	mv	a3,s0
1c00aa7c:	39d9                	jal	1c00a752 <PQCLEAN_KYBER512_CLEAN_basemul>
1c00aa7e:	408006b3          	neg	a3,s0
1c00aa82:	06c2                	slli	a3,a3,0x10
1c00aa84:	8626                	mv	a2,s1
1c00aa86:	85ca                	mv	a1,s2
1c00aa88:	854e                	mv	a0,s3
1c00aa8a:	86c1                	srai	a3,a3,0x10
1c00aa8c:	0a09                	addi	s4,s4,2
1c00aa8e:	31d1                	jal	1c00a752 <PQCLEAN_KYBER512_CLEAN_basemul>
1c00aa90:	09a1                	addi	s3,s3,8
1c00aa92:	0921                	addi	s2,s2,8
1c00aa94:	04a1                	addi	s1,s1,8
1c00aa96:	fd4a9ae3          	bne	s5,s4,1c00aa6a <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery+0x2c>
1c00aa9a:	40f2                	lw	ra,28(sp)
1c00aa9c:	4462                	lw	s0,24(sp)
1c00aa9e:	44d2                	lw	s1,20(sp)
1c00aaa0:	4942                	lw	s2,16(sp)
1c00aaa2:	49b2                	lw	s3,12(sp)
1c00aaa4:	4a22                	lw	s4,8(sp)
1c00aaa6:	4a92                	lw	s5,4(sp)
1c00aaa8:	6105                	addi	sp,sp,32
1c00aaaa:	8082                	ret

1c00aaac <PQCLEAN_KYBER512_CLEAN_poly_reduce>:
1c00aaac:	1141                	addi	sp,sp,-16
1c00aaae:	c422                	sw	s0,8(sp)
1c00aab0:	c226                	sw	s1,4(sp)
1c00aab2:	c606                	sw	ra,12(sp)
1c00aab4:	842a                	mv	s0,a0
1c00aab6:	20050493          	addi	s1,a0,512
1c00aaba:	00041503          	lh	a0,0(s0)
1c00aabe:	0409                	addi	s0,s0,2
1c00aac0:	2d11                	jal	1c00b0d4 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>
1c00aac2:	fea41f23          	sh	a0,-2(s0)
1c00aac6:	fe941ae3          	bne	s0,s1,1c00aaba <PQCLEAN_KYBER512_CLEAN_poly_reduce+0xe>
1c00aaca:	40b2                	lw	ra,12(sp)
1c00aacc:	4422                	lw	s0,8(sp)
1c00aace:	4492                	lw	s1,4(sp)
1c00aad0:	0141                	addi	sp,sp,16
1c00aad2:	8082                	ret

1c00aad4 <PQCLEAN_KYBER512_CLEAN_poly_add>:
1c00aad4:	4781                	li	a5,0
1c00aad6:	20000893          	li	a7,512
1c00aada:	00f606b3          	add	a3,a2,a5
1c00aade:	00f58733          	add	a4,a1,a5
1c00aae2:	0006d803          	lhu	a6,0(a3) # 1000 <__CTOR_LIST__-0x1bfff004>
1c00aae6:	00075703          	lhu	a4,0(a4)
1c00aaea:	00f506b3          	add	a3,a0,a5
1c00aaee:	0789                	addi	a5,a5,2
1c00aaf0:	9742                	add	a4,a4,a6
1c00aaf2:	00e69023          	sh	a4,0(a3)
1c00aaf6:	ff1792e3          	bne	a5,a7,1c00aada <PQCLEAN_KYBER512_CLEAN_poly_add+0x6>
1c00aafa:	8082                	ret

1c00aafc <PQCLEAN_KYBER512_CLEAN_polyvec_compress>:
1c00aafc:	88aa                	mv	a7,a0
1c00aafe:	6605                	lui	a2,0x1
1c00ab00:	14050513          	addi	a0,a0,320
1c00ab04:	882e                	mv	a6,a1
1c00ab06:	3c088893          	addi	a7,a7,960
1c00ab0a:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00ab0e:	ec050693          	addi	a3,a0,-320
1c00ab12:	85c2                	mv	a1,a6
1c00ab14:	00059283          	lh	t0,0(a1)
1c00ab18:	00259f83          	lh	t6,2(a1)
1c00ab1c:	00459f03          	lh	t5,4(a1)
1c00ab20:	40f2de13          	srai	t3,t0,0xf
1c00ab24:	40ffd713          	srai	a4,t6,0xf
1c00ab28:	00ce7e33          	and	t3,t3,a2
1c00ab2c:	8f71                	and	a4,a4,a2
1c00ab2e:	00659e83          	lh	t4,6(a1)
1c00ab32:	40ff5793          	srai	a5,t5,0xf
1c00ab36:	9e16                	add	t3,t3,t0
1c00ab38:	977e                	add	a4,a4,t6
1c00ab3a:	8ff1                	and	a5,a5,a2
1c00ab3c:	0e42                	slli	t3,t3,0x10
1c00ab3e:	0742                	slli	a4,a4,0x10
1c00ab40:	97fa                	add	a5,a5,t5
1c00ab42:	010e5e13          	srli	t3,t3,0x10
1c00ab46:	8341                	srli	a4,a4,0x10
1c00ab48:	40fed313          	srai	t1,t4,0xf
1c00ab4c:	07c2                	slli	a5,a5,0x10
1c00ab4e:	0e2a                	slli	t3,t3,0xa
1c00ab50:	072a                	slli	a4,a4,0xa
1c00ab52:	00c37333          	and	t1,t1,a2
1c00ab56:	83c1                	srli	a5,a5,0x10
1c00ab58:	680e0e13          	addi	t3,t3,1664
1c00ab5c:	68070713          	addi	a4,a4,1664
1c00ab60:	9376                	add	t1,t1,t4
1c00ab62:	02ce5e33          	divu	t3,t3,a2
1c00ab66:	07aa                	slli	a5,a5,0xa
1c00ab68:	0342                	slli	t1,t1,0x10
1c00ab6a:	68078793          	addi	a5,a5,1664
1c00ab6e:	01035313          	srli	t1,t1,0x10
1c00ab72:	032a                	slli	t1,t1,0xa
1c00ab74:	68030313          	addi	t1,t1,1664
1c00ab78:	0695                	addi	a3,a3,5
1c00ab7a:	05a1                	addi	a1,a1,8
1c00ab7c:	02c75733          	divu	a4,a4,a2
1c00ab80:	3ffe7e13          	andi	t3,t3,1023
1c00ab84:	008e5e93          	srli	t4,t3,0x8
1c00ab88:	ffc68da3          	sb	t3,-5(a3)
1c00ab8c:	02c7d7b3          	divu	a5,a5,a2
1c00ab90:	3ff77713          	andi	a4,a4,1023
1c00ab94:	00271e13          	slli	t3,a4,0x2
1c00ab98:	01ceee33          	or	t3,t4,t3
1c00ab9c:	8319                	srli	a4,a4,0x6
1c00ab9e:	ffc68e23          	sb	t3,-4(a3)
1c00aba2:	02c35333          	divu	t1,t1,a2
1c00aba6:	3ff7f793          	andi	a5,a5,1023
1c00abaa:	00479e13          	slli	t3,a5,0x4
1c00abae:	01c76733          	or	a4,a4,t3
1c00abb2:	fee68ea3          	sb	a4,-3(a3)
1c00abb6:	8391                	srli	a5,a5,0x4
1c00abb8:	3ff37713          	andi	a4,t1,1023
1c00abbc:	00671313          	slli	t1,a4,0x6
1c00abc0:	0067e7b3          	or	a5,a5,t1
1c00abc4:	8309                	srli	a4,a4,0x2
1c00abc6:	fef68f23          	sb	a5,-2(a3)
1c00abca:	fee68fa3          	sb	a4,-1(a3)
1c00abce:	f4a693e3          	bne	a3,a0,1c00ab14 <PQCLEAN_KYBER512_CLEAN_polyvec_compress+0x18>
1c00abd2:	14068513          	addi	a0,a3,320
1c00abd6:	20080813          	addi	a6,a6,512
1c00abda:	f2a89ae3          	bne	a7,a0,1c00ab0e <PQCLEAN_KYBER512_CLEAN_polyvec_compress+0x12>
1c00abde:	8082                	ret

1c00abe0 <PQCLEAN_KYBER512_CLEAN_polyvec_frombytes>:
1c00abe0:	1141                	addi	sp,sp,-16
1c00abe2:	c422                	sw	s0,8(sp)
1c00abe4:	c226                	sw	s1,4(sp)
1c00abe6:	c606                	sw	ra,12(sp)
1c00abe8:	842a                	mv	s0,a0
1c00abea:	84ae                	mv	s1,a1
1c00abec:	3389                	jal	1c00a92e <PQCLEAN_KYBER512_CLEAN_poly_frombytes>
1c00abee:	20040513          	addi	a0,s0,512
1c00abf2:	4422                	lw	s0,8(sp)
1c00abf4:	40b2                	lw	ra,12(sp)
1c00abf6:	18048593          	addi	a1,s1,384
1c00abfa:	4492                	lw	s1,4(sp)
1c00abfc:	0141                	addi	sp,sp,16
1c00abfe:	bb05                	j	1c00a92e <PQCLEAN_KYBER512_CLEAN_poly_frombytes>

1c00ac00 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>:
1c00ac00:	9e010113          	addi	sp,sp,-1568
1c00ac04:	60912a23          	sw	s1,1556(sp)
1c00ac08:	64c1                	lui	s1,0x10
1c00ac0a:	60812c23          	sw	s0,1560(sp)
1c00ac0e:	61212823          	sw	s2,1552(sp)
1c00ac12:	61312623          	sw	s3,1548(sp)
1c00ac16:	61412423          	sw	s4,1544(sp)
1c00ac1a:	60112e23          	sw	ra,1564(sp)
1c00ac1e:	8a2a                	mv	s4,a0
1c00ac20:	40050413          	addi	s0,a0,1024
1c00ac24:	40010993          	addi	s3,sp,1024
1c00ac28:	14fd                	addi	s1,s1,-1
1c00ac2a:	10000913          	li	s2,256
1c00ac2e:	20000613          	li	a2,512
1c00ac32:	85d2                	mv	a1,s4
1c00ac34:	854e                	mv	a0,s3
1c00ac36:	2ba9                	jal	1c00b190 <memcpy>
1c00ac38:	864e                	mv	a2,s3
1c00ac3a:	4681                	li	a3,0
1c00ac3c:	00061703          	lh	a4,0(a2)
1c00ac40:	00261583          	lh	a1,2(a2)
1c00ac44:	4016d793          	srai	a5,a3,0x1
1c00ac48:	078a                	slli	a5,a5,0x2
1c00ac4a:	0742                	slli	a4,a4,0x10
1c00ac4c:	8de5                	and	a1,a1,s1
1c00ac4e:	60010513          	addi	a0,sp,1536
1c00ac52:	97aa                	add	a5,a5,a0
1c00ac54:	8f4d                	or	a4,a4,a1
1c00ac56:	a0e7a023          	sw	a4,-1536(a5)
1c00ac5a:	0689                	addi	a3,a3,2
1c00ac5c:	0611                	addi	a2,a2,4
1c00ac5e:	fd269fe3          	bne	a3,s2,1c00ac3c <PQCLEAN_KYBER512_CLEAN_polyvec_ntt+0x3c>
1c00ac62:	040c                	addi	a1,sp,512
1c00ac64:	850a                	mv	a0,sp
1c00ac66:	8b2fe0ef          	jal	ra,1c008d18 <KYBER_poly_ntt>
1c00ac6a:	0418                	addi	a4,sp,512
1c00ac6c:	87d2                	mv	a5,s4
1c00ac6e:	4310                	lw	a2,0(a4)
1c00ac70:	4354                	lw	a3,4(a4)
1c00ac72:	0721                	addi	a4,a4,8
1c00ac74:	01065813          	srli	a6,a2,0x10
1c00ac78:	0106d593          	srli	a1,a3,0x10
1c00ac7c:	01079023          	sh	a6,0(a5)
1c00ac80:	00b79123          	sh	a1,2(a5)
1c00ac84:	00c79223          	sh	a2,4(a5)
1c00ac88:	00d79323          	sh	a3,6(a5)
1c00ac8c:	07a1                	addi	a5,a5,8
1c00ac8e:	fee990e3          	bne	s3,a4,1c00ac6e <PQCLEAN_KYBER512_CLEAN_polyvec_ntt+0x6e>
1c00ac92:	200a0a13          	addi	s4,s4,512
1c00ac96:	f9441ce3          	bne	s0,s4,1c00ac2e <PQCLEAN_KYBER512_CLEAN_polyvec_ntt+0x2e>
1c00ac9a:	61c12083          	lw	ra,1564(sp)
1c00ac9e:	61812403          	lw	s0,1560(sp)
1c00aca2:	61412483          	lw	s1,1556(sp)
1c00aca6:	61012903          	lw	s2,1552(sp)
1c00acaa:	60c12983          	lw	s3,1548(sp)
1c00acae:	60812a03          	lw	s4,1544(sp)
1c00acb2:	62010113          	addi	sp,sp,1568
1c00acb6:	8082                	ret

1c00acb8 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont>:
1c00acb8:	9e010113          	addi	sp,sp,-1568
1c00acbc:	60912a23          	sw	s1,1556(sp)
1c00acc0:	64c1                	lui	s1,0x10
1c00acc2:	60812c23          	sw	s0,1560(sp)
1c00acc6:	61212823          	sw	s2,1552(sp)
1c00acca:	61312623          	sw	s3,1548(sp)
1c00acce:	61412423          	sw	s4,1544(sp)
1c00acd2:	60112e23          	sw	ra,1564(sp)
1c00acd6:	10050a13          	addi	s4,a0,256
1c00acda:	50050413          	addi	s0,a0,1280
1c00acde:	40010913          	addi	s2,sp,1024
1c00ace2:	14fd                	addi	s1,s1,-1
1c00ace4:	10000993          	li	s3,256
1c00ace8:	f00a0593          	addi	a1,s4,-256
1c00acec:	20000613          	li	a2,512
1c00acf0:	854a                	mv	a0,s2
1c00acf2:	2979                	jal	1c00b190 <memcpy>
1c00acf4:	874a                	mv	a4,s2
1c00acf6:	4581                	li	a1,0
1c00acf8:	00071603          	lh	a2,0(a4)
1c00acfc:	00471883          	lh	a7,4(a4)
1c00ad00:	00271683          	lh	a3,2(a4)
1c00ad04:	00671803          	lh	a6,6(a4)
1c00ad08:	4015d793          	srai	a5,a1,0x1
1c00ad0c:	00279513          	slli	a0,a5,0x2
1c00ad10:	60010313          	addi	t1,sp,1536
1c00ad14:	0642                	slli	a2,a2,0x10
1c00ad16:	0098f8b3          	and	a7,a7,s1
1c00ad1a:	0785                	addi	a5,a5,1
1c00ad1c:	06c2                	slli	a3,a3,0x10
1c00ad1e:	00987833          	and	a6,a6,s1
1c00ad22:	951a                	add	a0,a0,t1
1c00ad24:	01166633          	or	a2,a2,a7
1c00ad28:	078a                	slli	a5,a5,0x2
1c00ad2a:	0106e6b3          	or	a3,a3,a6
1c00ad2e:	a0c52023          	sw	a2,-1536(a0)
1c00ad32:	979a                	add	a5,a5,t1
1c00ad34:	a0d7a023          	sw	a3,-1536(a5)
1c00ad38:	0591                	addi	a1,a1,4
1c00ad3a:	0721                	addi	a4,a4,8
1c00ad3c:	fb359ee3          	bne	a1,s3,1c00acf8 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont+0x40>
1c00ad40:	040c                	addi	a1,sp,512
1c00ad42:	850a                	mv	a0,sp
1c00ad44:	830fe0ef          	jal	ra,1c008d74 <KYBER_poly_intt>
1c00ad48:	0418                	addi	a4,sp,512
1c00ad4a:	87d2                	mv	a5,s4
1c00ad4c:	4314                	lw	a3,0(a4)
1c00ad4e:	0711                	addi	a4,a4,4
1c00ad50:	0789                	addi	a5,a5,2
1c00ad52:	0106d613          	srli	a2,a3,0x10
1c00ad56:	eec79f23          	sh	a2,-258(a5)
1c00ad5a:	fed79f23          	sh	a3,-2(a5)
1c00ad5e:	fee917e3          	bne	s2,a4,1c00ad4c <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont+0x94>
1c00ad62:	200a0a13          	addi	s4,s4,512
1c00ad66:	f94411e3          	bne	s0,s4,1c00ace8 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont+0x30>
1c00ad6a:	61c12083          	lw	ra,1564(sp)
1c00ad6e:	61812403          	lw	s0,1560(sp)
1c00ad72:	61412483          	lw	s1,1556(sp)
1c00ad76:	61012903          	lw	s2,1552(sp)
1c00ad7a:	60c12983          	lw	s3,1548(sp)
1c00ad7e:	60812a03          	lw	s4,1544(sp)
1c00ad82:	62010113          	addi	sp,sp,1568
1c00ad86:	8082                	ret

1c00ad88 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>:
1c00ad88:	df010113          	addi	sp,sp,-528
1c00ad8c:	20112623          	sw	ra,524(sp)
1c00ad90:	20812423          	sw	s0,520(sp)
1c00ad94:	20912223          	sw	s1,516(sp)
1c00ad98:	21212023          	sw	s2,512(sp)
1c00ad9c:	842a                	mv	s0,a0
1c00ad9e:	84ae                	mv	s1,a1
1c00ada0:	8932                	mv	s2,a2
1c00ada2:	3971                	jal	1c00aa3e <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c00ada4:	20090613          	addi	a2,s2,512
1c00ada8:	20048593          	addi	a1,s1,512 # 10200 <__CTOR_LIST__-0x1bfefe04>
1c00adac:	850a                	mv	a0,sp
1c00adae:	3941                	jal	1c00aa3e <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c00adb0:	860a                	mv	a2,sp
1c00adb2:	85a2                	mv	a1,s0
1c00adb4:	8522                	mv	a0,s0
1c00adb6:	3b39                	jal	1c00aad4 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00adb8:	8522                	mv	a0,s0
1c00adba:	39cd                	jal	1c00aaac <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00adbc:	20c12083          	lw	ra,524(sp)
1c00adc0:	20812403          	lw	s0,520(sp)
1c00adc4:	20412483          	lw	s1,516(sp)
1c00adc8:	20012903          	lw	s2,512(sp)
1c00adcc:	21010113          	addi	sp,sp,528
1c00add0:	8082                	ret

1c00add2 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>:
1c00add2:	1141                	addi	sp,sp,-16
1c00add4:	c422                	sw	s0,8(sp)
1c00add6:	c606                	sw	ra,12(sp)
1c00add8:	842a                	mv	s0,a0
1c00adda:	39c9                	jal	1c00aaac <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00addc:	20040513          	addi	a0,s0,512
1c00ade0:	4422                	lw	s0,8(sp)
1c00ade2:	40b2                	lw	ra,12(sp)
1c00ade4:	0141                	addi	sp,sp,16
1c00ade6:	b1d9                	j	1c00aaac <PQCLEAN_KYBER512_CLEAN_poly_reduce>

1c00ade8 <PQCLEAN_KYBER512_CLEAN_polyvec_add>:
1c00ade8:	1141                	addi	sp,sp,-16
1c00adea:	c422                	sw	s0,8(sp)
1c00adec:	c226                	sw	s1,4(sp)
1c00adee:	c04a                	sw	s2,0(sp)
1c00adf0:	c606                	sw	ra,12(sp)
1c00adf2:	842a                	mv	s0,a0
1c00adf4:	84ae                	mv	s1,a1
1c00adf6:	8932                	mv	s2,a2
1c00adf8:	39f1                	jal	1c00aad4 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00adfa:	20040513          	addi	a0,s0,512
1c00adfe:	4422                	lw	s0,8(sp)
1c00ae00:	40b2                	lw	ra,12(sp)
1c00ae02:	20090613          	addi	a2,s2,512
1c00ae06:	20048593          	addi	a1,s1,512
1c00ae0a:	4902                	lw	s2,0(sp)
1c00ae0c:	4492                	lw	s1,4(sp)
1c00ae0e:	0141                	addi	sp,sp,16
1c00ae10:	b1d1                	j	1c00aad4 <PQCLEAN_KYBER512_CLEAN_poly_add>

1c00ae12 <randombytes>:
1c00ae12:	2a058263          	beqz	a1,1c00b0b6 <randombytes+0x2a4>
1c00ae16:	715d                	addi	sp,sp,-80
1c00ae18:	00b50733          	add	a4,a0,a1
1c00ae1c:	c63a                	sw	a4,12(sp)
1c00ae1e:	9e378737          	lui	a4,0x9e378
1c00ae22:	9b970713          	addi	a4,a4,-1607 # 9e3779b9 <__l2_shared_end+0x823679b9>
1c00ae26:	1c0067b7          	lui	a5,0x1c006
1c00ae2a:	c43a                	sw	a4,8(sp)
1c00ae2c:	e377a737          	lui	a4,0xe377a
1c00ae30:	2b478793          	addi	a5,a5,692 # 1c0062b4 <outleft>
1c00ae34:	b9070713          	addi	a4,a4,-1136 # e3779b90 <__l2_shared_end+0xc7769b90>
1c00ae38:	c83e                	sw	a5,16(sp)
1c00ae3a:	ca3a                	sw	a4,20(sp)
1c00ae3c:	439c                	lw	a5,0(a5)
1c00ae3e:	c6ef3737          	lui	a4,0xc6ef3
1c00ae42:	c6a2                	sw	s0,76(sp)
1c00ae44:	1c0062b7          	lui	t0,0x1c006
1c00ae48:	1c006437          	lui	s0,0x1c006
1c00ae4c:	72070713          	addi	a4,a4,1824 # c6ef3720 <__l2_shared_end+0xaaee3720>
1c00ae50:	d06e                	sw	s11,32(sp)
1c00ae52:	c4a6                	sw	s1,72(sp)
1c00ae54:	c2ca                	sw	s2,68(sp)
1c00ae56:	c0ce                	sw	s3,64(sp)
1c00ae58:	de52                	sw	s4,60(sp)
1c00ae5a:	dc56                	sw	s5,56(sp)
1c00ae5c:	da5a                	sw	s6,52(sp)
1c00ae5e:	d85e                	sw	s7,48(sp)
1c00ae60:	d662                	sw	s8,44(sp)
1c00ae62:	d466                	sw	s9,40(sp)
1c00ae64:	d26a                	sw	s10,36(sp)
1c00ae66:	8daa                	mv	s11,a0
1c00ae68:	29040413          	addi	s0,s0,656 # 1c006290 <out>
1c00ae6c:	26028293          	addi	t0,t0,608 # 1c006260 <in>
1c00ae70:	cc3a                	sw	a4,24(sp)
1c00ae72:	cf85                	beqz	a5,1c00aeaa <randombytes+0x98>
1c00ae74:	17fd                	addi	a5,a5,-1
1c00ae76:	00279713          	slli	a4,a5,0x2
1c00ae7a:	9722                	add	a4,a4,s0
1c00ae7c:	4304                	lw	s1,0(a4)
1c00ae7e:	4742                	lw	a4,16(sp)
1c00ae80:	009d8023          	sb	s1,0(s11)
1c00ae84:	0d85                	addi	s11,s11,1
1c00ae86:	c31c                	sw	a5,0(a4)
1c00ae88:	4732                	lw	a4,12(sp)
1c00ae8a:	feed94e3          	bne	s11,a4,1c00ae72 <randombytes+0x60>
1c00ae8e:	4436                	lw	s0,76(sp)
1c00ae90:	44a6                	lw	s1,72(sp)
1c00ae92:	4916                	lw	s2,68(sp)
1c00ae94:	4986                	lw	s3,64(sp)
1c00ae96:	5a72                	lw	s4,60(sp)
1c00ae98:	5ae2                	lw	s5,56(sp)
1c00ae9a:	5b52                	lw	s6,52(sp)
1c00ae9c:	5bc2                	lw	s7,48(sp)
1c00ae9e:	5c32                	lw	s8,44(sp)
1c00aea0:	5ca2                	lw	s9,40(sp)
1c00aea2:	5d12                	lw	s10,36(sp)
1c00aea4:	5d82                	lw	s11,32(sp)
1c00aea6:	6161                	addi	sp,sp,80
1c00aea8:	8082                	ret
1c00aeaa:	0002a703          	lw	a4,0(t0)
1c00aeae:	0042ae83          	lw	t4,4(t0)
1c00aeb2:	0082af03          	lw	t5,8(t0)
1c00aeb6:	0705                	addi	a4,a4,1
1c00aeb8:	00e2a023          	sw	a4,0(t0)
1c00aebc:	00c2af83          	lw	t6,12(t0)
1c00aec0:	ef11                	bnez	a4,1c00aedc <randombytes+0xca>
1c00aec2:	0e85                	addi	t4,t4,1
1c00aec4:	01d2a223          	sw	t4,4(t0)
1c00aec8:	000e9a63          	bnez	t4,1c00aedc <randombytes+0xca>
1c00aecc:	0f05                	addi	t5,t5,1
1c00aece:	01e2a423          	sw	t5,8(t0)
1c00aed2:	000f1563          	bnez	t5,1c00aedc <randombytes+0xca>
1c00aed6:	0f85                	addi	t6,t6,1
1c00aed8:	01f2a623          	sw	t6,12(t0)
1c00aedc:	0102ae03          	lw	t3,16(t0)
1c00aee0:	0142a303          	lw	t1,20(t0)
1c00aee4:	0182a883          	lw	a7,24(t0)
1c00aee8:	01c2a803          	lw	a6,28(t0)
1c00aeec:	0202a503          	lw	a0,32(t0)
1c00aef0:	0242a583          	lw	a1,36(t0)
1c00aef4:	0282a603          	lw	a2,40(t0)
1c00aef8:	02c2a683          	lw	a3,44(t0)
1c00aefc:	00974713          	xori	a4,a4,9
1c00af00:	007ece93          	xori	t4,t4,7
1c00af04:	009f4f13          	xori	t5,t5,9
1c00af08:	003fcf93          	xori	t6,t6,3
1c00af0c:	002e4e13          	xori	t3,t3,2
1c00af10:	00334313          	xori	t1,t1,3
1c00af14:	0088c893          	xori	a7,a7,8
1c00af18:	00484813          	xori	a6,a6,4
1c00af1c:	00654513          	xori	a0,a0,6
1c00af20:	0025c593          	xori	a1,a1,2
1c00af24:	00664613          	xori	a2,a2,6
1c00af28:	0046c693          	xori	a3,a3,4
1c00af2c:	4495                	li	s1,5
1c00af2e:	49a5                	li	s3,9
1c00af30:	4a1d                	li	s4,7
1c00af32:	4a89                	li	s5,2
1c00af34:	4b0d                	li	s6,3
1c00af36:	4ba1                	li	s7,8
1c00af38:	4d0d                	li	s10,3
1c00af3a:	4c0d                	li	s8,3
1c00af3c:	4781                	li	a5,0
1c00af3e:	ce6e                	sw	s11,28(sp)
1c00af40:	43d2                	lw	t2,20(sp)
1c00af42:	00778db3          	add	s11,a5,t2
1c00af46:	43a2                	lw	t2,8(sp)
1c00af48:	01b6dc93          	srli	s9,a3,0x1b
1c00af4c:	00569913          	slli	s2,a3,0x5
1c00af50:	979e                	add	a5,a5,t2
1c00af52:	0036c393          	xori	t2,a3,3
1c00af56:	01996933          	or	s2,s2,s9
1c00af5a:	93be                	add	t2,t2,a5
1c00af5c:	0123c3b3          	xor	t2,t2,s2
1c00af60:	971e                	add	a4,a4,t2
1c00af62:	01975c93          	srli	s9,a4,0x19
1c00af66:	00174393          	xori	t2,a4,1
1c00af6a:	00771913          	slli	s2,a4,0x7
1c00af6e:	01996933          	or	s2,s2,s9
1c00af72:	93be                	add	t2,t2,a5
1c00af74:	0123c3b3          	xor	t2,t2,s2
1c00af78:	9e9e                	add	t4,t4,t2
1c00af7a:	017edc93          	srli	s9,t4,0x17
1c00af7e:	004ec393          	xori	t2,t4,4
1c00af82:	009e9913          	slli	s2,t4,0x9
1c00af86:	01996933          	or	s2,s2,s9
1c00af8a:	93be                	add	t2,t2,a5
1c00af8c:	0123c3b3          	xor	t2,t2,s2
1c00af90:	9f1e                	add	t5,t5,t2
1c00af92:	013f5c93          	srli	s9,t5,0x13
1c00af96:	001f4393          	xori	t2,t5,1
1c00af9a:	00df1913          	slli	s2,t5,0xd
1c00af9e:	01996933          	or	s2,s2,s9
1c00afa2:	93be                	add	t2,t2,a5
1c00afa4:	0123c3b3          	xor	t2,t2,s2
1c00afa8:	9f9e                	add	t6,t6,t2
1c00afaa:	01bfdc93          	srli	s9,t6,0x1b
1c00afae:	005fc393          	xori	t2,t6,5
1c00afb2:	005f9913          	slli	s2,t6,0x5
1c00afb6:	01996933          	or	s2,s2,s9
1c00afba:	93be                	add	t2,t2,a5
1c00afbc:	0123c3b3          	xor	t2,t2,s2
1c00afc0:	9e1e                	add	t3,t3,t2
1c00afc2:	019e5c93          	srli	s9,t3,0x19
1c00afc6:	009e4393          	xori	t2,t3,9
1c00afca:	007e1913          	slli	s2,t3,0x7
1c00afce:	01996933          	or	s2,s2,s9
1c00afd2:	93be                	add	t2,t2,a5
1c00afd4:	0123c3b3          	xor	t2,t2,s2
1c00afd8:	931e                	add	t1,t1,t2
1c00afda:	01735c93          	srli	s9,t1,0x17
1c00afde:	00234393          	xori	t2,t1,2
1c00afe2:	00931913          	slli	s2,t1,0x9
1c00afe6:	01996933          	or	s2,s2,s9
1c00afea:	93be                	add	t2,t2,a5
1c00afec:	0123c3b3          	xor	t2,t2,s2
1c00aff0:	989e                	add	a7,a7,t2
1c00aff2:	0138dc93          	srli	s9,a7,0x13
1c00aff6:	0068c393          	xori	t2,a7,6
1c00affa:	00d89913          	slli	s2,a7,0xd
1c00affe:	01996933          	or	s2,s2,s9
1c00b002:	93be                	add	t2,t2,a5
1c00b004:	0123c3b3          	xor	t2,t2,s2
1c00b008:	981e                	add	a6,a6,t2
1c00b00a:	01b85c93          	srli	s9,a6,0x1b
1c00b00e:	00584393          	xori	t2,a6,5
1c00b012:	00581913          	slli	s2,a6,0x5
1c00b016:	01996933          	or	s2,s2,s9
1c00b01a:	93be                	add	t2,t2,a5
1c00b01c:	0123c3b3          	xor	t2,t2,s2
1c00b020:	951e                	add	a0,a0,t2
1c00b022:	01955c93          	srli	s9,a0,0x19
1c00b026:	00354393          	xori	t2,a0,3
1c00b02a:	00751913          	slli	s2,a0,0x7
1c00b02e:	01996933          	or	s2,s2,s9
1c00b032:	93be                	add	t2,t2,a5
1c00b034:	0123c3b3          	xor	t2,t2,s2
1c00b038:	959e                	add	a1,a1,t2
1c00b03a:	0175dc93          	srli	s9,a1,0x17
1c00b03e:	0055c393          	xori	t2,a1,5
1c00b042:	00959913          	slli	s2,a1,0x9
1c00b046:	01996933          	or	s2,s2,s9
1c00b04a:	93be                	add	t2,t2,a5
1c00b04c:	0123c3b3          	xor	t2,t2,s2
1c00b050:	961e                	add	a2,a2,t2
1c00b052:	00864393          	xori	t2,a2,8
1c00b056:	00d61913          	slli	s2,a2,0xd
1c00b05a:	01365c93          	srli	s9,a2,0x13
1c00b05e:	93be                	add	t2,t2,a5
1c00b060:	01996933          	or	s2,s2,s9
1c00b064:	0123c3b3          	xor	t2,t2,s2
1c00b068:	969e                	add	a3,a3,t2
1c00b06a:	edb79ee3          	bne	a5,s11,1c00af46 <randombytes+0x134>
1c00b06e:	43e2                	lw	t2,24(sp)
1c00b070:	01cc4c33          	xor	s8,s8,t3
1c00b074:	006d4d33          	xor	s10,s10,t1
1c00b078:	011bcbb3          	xor	s7,s7,a7
1c00b07c:	010b4b33          	xor	s6,s6,a6
1c00b080:	00aacab3          	xor	s5,s5,a0
1c00b084:	00ba4a33          	xor	s4,s4,a1
1c00b088:	00c9c9b3          	xor	s3,s3,a2
1c00b08c:	8cb5                	xor	s1,s1,a3
1c00b08e:	ea7799e3          	bne	a5,t2,1c00af40 <randombytes+0x12e>
1c00b092:	4df2                	lw	s11,28(sp)
1c00b094:	01842023          	sw	s8,0(s0)
1c00b098:	01a42223          	sw	s10,4(s0)
1c00b09c:	01742423          	sw	s7,8(s0)
1c00b0a0:	01642623          	sw	s6,12(s0)
1c00b0a4:	01542823          	sw	s5,16(s0)
1c00b0a8:	01442a23          	sw	s4,20(s0)
1c00b0ac:	01342c23          	sw	s3,24(s0)
1c00b0b0:	cc44                	sw	s1,28(s0)
1c00b0b2:	479d                	li	a5,7
1c00b0b4:	b3e9                	j	1c00ae7e <randombytes+0x6c>
1c00b0b6:	8082                	ret

1c00b0b8 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>:
1c00b0b8:	777d                	lui	a4,0xfffff
1c00b0ba:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00b0be:	02f507b3          	mul	a5,a0,a5
1c00b0c2:	2ff70713          	addi	a4,a4,767
1c00b0c6:	07c2                	slli	a5,a5,0x10
1c00b0c8:	87c1                	srai	a5,a5,0x10
1c00b0ca:	02e787b3          	mul	a5,a5,a4
1c00b0ce:	953e                	add	a0,a0,a5
1c00b0d0:	8541                	srai	a0,a0,0x10
1c00b0d2:	8082                	ret

1c00b0d4 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>:
1c00b0d4:	6795                	lui	a5,0x5
1c00b0d6:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00b0da:	02f507b3          	mul	a5,a0,a5
1c00b0de:	02000737          	lui	a4,0x2000
1c00b0e2:	97ba                	add	a5,a5,a4
1c00b0e4:	6705                	lui	a4,0x1
1c00b0e6:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b0ea:	87e9                	srai	a5,a5,0x1a
1c00b0ec:	02e787b3          	mul	a5,a5,a4
1c00b0f0:	8d1d                	sub	a0,a0,a5
1c00b0f2:	0542                	slli	a0,a0,0x10
1c00b0f4:	8541                	srai	a0,a0,0x10
1c00b0f6:	8082                	ret

1c00b0f8 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>:
1c00b0f8:	7139                	addi	sp,sp,-64
1c00b0fa:	da26                	sw	s1,52(sp)
1c00b0fc:	d84a                	sw	s2,48(sp)
1c00b0fe:	84b2                	mv	s1,a2
1c00b100:	892a                	mv	s2,a0
1c00b102:	02000613          	li	a2,32
1c00b106:	0068                	addi	a0,sp,12
1c00b108:	de06                	sw	ra,60(sp)
1c00b10a:	dc22                	sw	s0,56(sp)
1c00b10c:	8436                	mv	s0,a3
1c00b10e:	2049                	jal	1c00b190 <memcpy>
1c00b110:	006c                	addi	a1,sp,12
1c00b112:	854a                	mv	a0,s2
1c00b114:	02200613          	li	a2,34
1c00b118:	02910623          	sb	s1,44(sp)
1c00b11c:	028106a3          	sb	s0,45(sp)
1c00b120:	81efe0ef          	jal	ra,1c00913e <shake128_absorb>
1c00b124:	50f2                	lw	ra,60(sp)
1c00b126:	5462                	lw	s0,56(sp)
1c00b128:	54d2                	lw	s1,52(sp)
1c00b12a:	5942                	lw	s2,48(sp)
1c00b12c:	6121                	addi	sp,sp,64
1c00b12e:	8082                	ret

1c00b130 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>:
1c00b130:	7139                	addi	sp,sp,-64
1c00b132:	87b2                	mv	a5,a2
1c00b134:	da26                	sw	s1,52(sp)
1c00b136:	d84a                	sw	s2,48(sp)
1c00b138:	84aa                	mv	s1,a0
1c00b13a:	892e                	mv	s2,a1
1c00b13c:	02000613          	li	a2,32
1c00b140:	85be                	mv	a1,a5
1c00b142:	0068                	addi	a0,sp,12
1c00b144:	de06                	sw	ra,60(sp)
1c00b146:	dc22                	sw	s0,56(sp)
1c00b148:	8436                	mv	s0,a3
1c00b14a:	2099                	jal	1c00b190 <memcpy>
1c00b14c:	0070                	addi	a2,sp,12
1c00b14e:	85ca                	mv	a1,s2
1c00b150:	8526                	mv	a0,s1
1c00b152:	02100693          	li	a3,33
1c00b156:	02810623          	sb	s0,44(sp)
1c00b15a:	acefe0ef          	jal	ra,1c009428 <shake256>
1c00b15e:	50f2                	lw	ra,60(sp)
1c00b160:	5462                	lw	s0,56(sp)
1c00b162:	54d2                	lw	s1,52(sp)
1c00b164:	5942                	lw	s2,48(sp)
1c00b166:	6121                	addi	sp,sp,64
1c00b168:	8082                	ret

1c00b16a <pos_wait_forever>:
1c00b16a:	f14027f3          	csrr	a5,mhartid
1c00b16e:	8795                	srai	a5,a5,0x5
1c00b170:	03f7f793          	andi	a5,a5,63
1c00b174:	477d                	li	a4,31
1c00b176:	00e78363          	beq	a5,a4,1c00b17c <pos_wait_forever+0x12>
1c00b17a:	a001                	j	1c00b17a <pos_wait_forever+0x10>
1c00b17c:	1a10a7b7          	lui	a5,0x1a10a
1c00b180:	577d                	li	a4,-1
1c00b182:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b186:	10500073          	wfi
1c00b18a:	10500073          	wfi
1c00b18e:	bfe5                	j	1c00b186 <pos_wait_forever+0x1c>

1c00b190 <memcpy>:
1c00b190:	00c5e7b3          	or	a5,a1,a2
1c00b194:	8fc9                	or	a5,a5,a0
1c00b196:	8b8d                	andi	a5,a5,3
1c00b198:	872e                	mv	a4,a1
1c00b19a:	882a                	mv	a6,a0
1c00b19c:	cbc5                	beqz	a5,1c00b24c <memcpy+0xbc>
1c00b19e:	c279                	beqz	a2,1c00b264 <memcpy+0xd4>
1c00b1a0:	00350793          	addi	a5,a0,3
1c00b1a4:	8f8d                	sub	a5,a5,a1
1c00b1a6:	0077b793          	sltiu	a5,a5,7
1c00b1aa:	e7d1                	bnez	a5,1c00b236 <memcpy+0xa6>
1c00b1ac:	fff60793          	addi	a5,a2,-1
1c00b1b0:	0047b793          	sltiu	a5,a5,4
1c00b1b4:	e3c9                	bnez	a5,1c00b236 <memcpy+0xa6>
1c00b1b6:	ffc67e13          	andi	t3,a2,-4
1c00b1ba:	9e2e                	add	t3,t3,a1
1c00b1bc:	00174883          	lbu	a7,1(a4)
1c00b1c0:	00074303          	lbu	t1,0(a4)
1c00b1c4:	00274683          	lbu	a3,2(a4)
1c00b1c8:	00374783          	lbu	a5,3(a4)
1c00b1cc:	08a2                	slli	a7,a7,0x8
1c00b1ce:	0068e8b3          	or	a7,a7,t1
1c00b1d2:	06c2                	slli	a3,a3,0x10
1c00b1d4:	0116e6b3          	or	a3,a3,a7
1c00b1d8:	07e2                	slli	a5,a5,0x18
1c00b1da:	8fd5                	or	a5,a5,a3
1c00b1dc:	0087d313          	srli	t1,a5,0x8
1c00b1e0:	0107d893          	srli	a7,a5,0x10
1c00b1e4:	83e1                	srli	a5,a5,0x18
1c00b1e6:	00d80023          	sb	a3,0(a6)
1c00b1ea:	006800a3          	sb	t1,1(a6)
1c00b1ee:	01180123          	sb	a7,2(a6)
1c00b1f2:	00f801a3          	sb	a5,3(a6)
1c00b1f6:	0711                	addi	a4,a4,4
1c00b1f8:	0811                	addi	a6,a6,4
1c00b1fa:	fdc711e3          	bne	a4,t3,1c00b1bc <memcpy+0x2c>
1c00b1fe:	ffc67793          	andi	a5,a2,-4
1c00b202:	00367693          	andi	a3,a2,3
1c00b206:	00f50733          	add	a4,a0,a5
1c00b20a:	95be                	add	a1,a1,a5
1c00b20c:	02f60f63          	beq	a2,a5,1c00b24a <memcpy+0xba>
1c00b210:	0005c603          	lbu	a2,0(a1)
1c00b214:	fff68793          	addi	a5,a3,-1
1c00b218:	00c70023          	sb	a2,0(a4)
1c00b21c:	c79d                	beqz	a5,1c00b24a <memcpy+0xba>
1c00b21e:	0015c603          	lbu	a2,1(a1)
1c00b222:	4789                	li	a5,2
1c00b224:	00c700a3          	sb	a2,1(a4)
1c00b228:	02f68163          	beq	a3,a5,1c00b24a <memcpy+0xba>
1c00b22c:	0025c783          	lbu	a5,2(a1)
1c00b230:	00f70123          	sb	a5,2(a4)
1c00b234:	8082                	ret
1c00b236:	962e                	add	a2,a2,a1
1c00b238:	87aa                	mv	a5,a0
1c00b23a:	0005c703          	lbu	a4,0(a1)
1c00b23e:	0585                	addi	a1,a1,1
1c00b240:	0785                	addi	a5,a5,1
1c00b242:	fee78fa3          	sb	a4,-1(a5)
1c00b246:	fec59ae3          	bne	a1,a2,1c00b23a <memcpy+0xaa>
1c00b24a:	8082                	ret
1c00b24c:	de7d                	beqz	a2,1c00b24a <memcpy+0xba>
1c00b24e:	87aa                	mv	a5,a0
1c00b250:	4194                	lw	a3,0(a1)
1c00b252:	0791                	addi	a5,a5,4
1c00b254:	40c78733          	sub	a4,a5,a2
1c00b258:	fed7ae23          	sw	a3,-4(a5)
1c00b25c:	0591                	addi	a1,a1,4
1c00b25e:	fea719e3          	bne	a4,a0,1c00b250 <memcpy+0xc0>
1c00b262:	8082                	ret
1c00b264:	8082                	ret

1c00b266 <memmove>:
1c00b266:	40b507b3          	sub	a5,a0,a1
1c00b26a:	0ac7e063          	bltu	a5,a2,1c00b30a <memmove+0xa4>
1c00b26e:	c661                	beqz	a2,1c00b336 <memmove+0xd0>
1c00b270:	00350793          	addi	a5,a0,3
1c00b274:	8f8d                	sub	a5,a5,a1
1c00b276:	0077b793          	sltiu	a5,a5,7
1c00b27a:	e3dd                	bnez	a5,1c00b320 <memmove+0xba>
1c00b27c:	fff60793          	addi	a5,a2,-1
1c00b280:	0047b793          	sltiu	a5,a5,4
1c00b284:	efd1                	bnez	a5,1c00b320 <memmove+0xba>
1c00b286:	ffc67e13          	andi	t3,a2,-4
1c00b28a:	872e                	mv	a4,a1
1c00b28c:	882a                	mv	a6,a0
1c00b28e:	9e2e                	add	t3,t3,a1
1c00b290:	00174883          	lbu	a7,1(a4)
1c00b294:	00074303          	lbu	t1,0(a4)
1c00b298:	00274683          	lbu	a3,2(a4)
1c00b29c:	00374783          	lbu	a5,3(a4)
1c00b2a0:	08a2                	slli	a7,a7,0x8
1c00b2a2:	0068e8b3          	or	a7,a7,t1
1c00b2a6:	06c2                	slli	a3,a3,0x10
1c00b2a8:	0116e6b3          	or	a3,a3,a7
1c00b2ac:	07e2                	slli	a5,a5,0x18
1c00b2ae:	8fd5                	or	a5,a5,a3
1c00b2b0:	0087d313          	srli	t1,a5,0x8
1c00b2b4:	0107d893          	srli	a7,a5,0x10
1c00b2b8:	83e1                	srli	a5,a5,0x18
1c00b2ba:	00d80023          	sb	a3,0(a6)
1c00b2be:	006800a3          	sb	t1,1(a6)
1c00b2c2:	01180123          	sb	a7,2(a6)
1c00b2c6:	00f801a3          	sb	a5,3(a6)
1c00b2ca:	0711                	addi	a4,a4,4
1c00b2cc:	0811                	addi	a6,a6,4
1c00b2ce:	fdc711e3          	bne	a4,t3,1c00b290 <memmove+0x2a>
1c00b2d2:	ffc67793          	andi	a5,a2,-4
1c00b2d6:	00367693          	andi	a3,a2,3
1c00b2da:	00f50733          	add	a4,a0,a5
1c00b2de:	95be                	add	a1,a1,a5
1c00b2e0:	04f60a63          	beq	a2,a5,1c00b334 <memmove+0xce>
1c00b2e4:	0005c603          	lbu	a2,0(a1)
1c00b2e8:	fff68793          	addi	a5,a3,-1
1c00b2ec:	00c70023          	sb	a2,0(a4)
1c00b2f0:	c3b1                	beqz	a5,1c00b334 <memmove+0xce>
1c00b2f2:	0015c603          	lbu	a2,1(a1)
1c00b2f6:	4789                	li	a5,2
1c00b2f8:	00c700a3          	sb	a2,1(a4)
1c00b2fc:	02f68c63          	beq	a3,a5,1c00b334 <memmove+0xce>
1c00b300:	0025c783          	lbu	a5,2(a1)
1c00b304:	00f70123          	sb	a5,2(a4)
1c00b308:	8082                	ret
1c00b30a:	167d                	addi	a2,a2,-1
1c00b30c:	00c587b3          	add	a5,a1,a2
1c00b310:	0007c703          	lbu	a4,0(a5)
1c00b314:	00c507b3          	add	a5,a0,a2
1c00b318:	00e78023          	sb	a4,0(a5)
1c00b31c:	f67d                	bnez	a2,1c00b30a <memmove+0xa4>
1c00b31e:	8082                	ret
1c00b320:	962a                	add	a2,a2,a0
1c00b322:	87aa                	mv	a5,a0
1c00b324:	0005c703          	lbu	a4,0(a1)
1c00b328:	0785                	addi	a5,a5,1
1c00b32a:	0585                	addi	a1,a1,1
1c00b32c:	fee78fa3          	sb	a4,-1(a5)
1c00b330:	fec79ae3          	bne	a5,a2,1c00b324 <memmove+0xbe>
1c00b334:	8082                	ret
1c00b336:	8082                	ret

1c00b338 <strchr>:
1c00b338:	00054703          	lbu	a4,0(a0)
1c00b33c:	0ff5f593          	andi	a1,a1,255
1c00b340:	87aa                	mv	a5,a0
1c00b342:	00b70863          	beq	a4,a1,1c00b352 <strchr+0x1a>
1c00b346:	cb01                	beqz	a4,1c00b356 <strchr+0x1e>
1c00b348:	0017c703          	lbu	a4,1(a5)
1c00b34c:	0785                	addi	a5,a5,1
1c00b34e:	feb71ce3          	bne	a4,a1,1c00b346 <strchr+0xe>
1c00b352:	853e                	mv	a0,a5
1c00b354:	8082                	ret
1c00b356:	4501                	li	a0,0
1c00b358:	dded                	beqz	a1,1c00b352 <strchr+0x1a>
1c00b35a:	8082                	ret

1c00b35c <puts>:
1c00b35c:	00054783          	lbu	a5,0(a0)
1c00b360:	c78d                	beqz	a5,1c00b38a <puts+0x2e>
1c00b362:	f14026f3          	csrr	a3,mhartid
1c00b366:	00369713          	slli	a4,a3,0x3
1c00b36a:	1a10f637          	lui	a2,0x1a10f
1c00b36e:	0ff77713          	andi	a4,a4,255
1c00b372:	9732                	add	a4,a4,a2
1c00b374:	6609                	lui	a2,0x2
1c00b376:	068a                	slli	a3,a3,0x2
1c00b378:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b37c:	8ef1                	and	a3,a3,a2
1c00b37e:	9736                	add	a4,a4,a3
1c00b380:	c31c                	sw	a5,0(a4)
1c00b382:	00154783          	lbu	a5,1(a0)
1c00b386:	0505                	addi	a0,a0,1
1c00b388:	ffe5                	bnez	a5,1c00b380 <puts+0x24>
1c00b38a:	f1402773          	csrr	a4,mhartid
1c00b38e:	00371793          	slli	a5,a4,0x3
1c00b392:	1a10f6b7          	lui	a3,0x1a10f
1c00b396:	0ff7f793          	andi	a5,a5,255
1c00b39a:	97b6                	add	a5,a5,a3
1c00b39c:	6689                	lui	a3,0x2
1c00b39e:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b3a2:	070a                	slli	a4,a4,0x2
1c00b3a4:	8f75                	and	a4,a4,a3
1c00b3a6:	97ba                	add	a5,a5,a4
1c00b3a8:	4729                	li	a4,10
1c00b3aa:	c398                	sw	a4,0(a5)
1c00b3ac:	4501                	li	a0,0
1c00b3ae:	8082                	ret

1c00b3b0 <pos_libc_fputc_locked>:
1c00b3b0:	6689                	lui	a3,0x2
1c00b3b2:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b3b6:	f14027f3          	csrr	a5,mhartid
1c00b3ba:	00379713          	slli	a4,a5,0x3
1c00b3be:	078a                	slli	a5,a5,0x2
1c00b3c0:	8ff5                	and	a5,a5,a3
1c00b3c2:	0ff77713          	andi	a4,a4,255
1c00b3c6:	1a10f6b7          	lui	a3,0x1a10f
1c00b3ca:	9736                	add	a4,a4,a3
1c00b3cc:	97ba                	add	a5,a5,a4
1c00b3ce:	0ff57513          	andi	a0,a0,255
1c00b3d2:	c388                	sw	a0,0(a5)
1c00b3d4:	4501                	li	a0,0
1c00b3d6:	8082                	ret

1c00b3d8 <putchar>:
1c00b3d8:	6689                	lui	a3,0x2
1c00b3da:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b3de:	f14027f3          	csrr	a5,mhartid
1c00b3e2:	00379713          	slli	a4,a5,0x3
1c00b3e6:	078a                	slli	a5,a5,0x2
1c00b3e8:	8ff5                	and	a5,a5,a3
1c00b3ea:	0ff77713          	andi	a4,a4,255
1c00b3ee:	1a10f6b7          	lui	a3,0x1a10f
1c00b3f2:	9736                	add	a4,a4,a3
1c00b3f4:	97ba                	add	a5,a5,a4
1c00b3f6:	0ff57513          	andi	a0,a0,255
1c00b3fa:	c388                	sw	a0,0(a5)
1c00b3fc:	4501                	li	a0,0
1c00b3fe:	8082                	ret

1c00b400 <pos_libc_prf_locked>:
1c00b400:	a0b1                	j	1c00b44c <pos_libc_prf>

1c00b402 <exit>:
1c00b402:	800007b7          	lui	a5,0x80000
1c00b406:	1141                	addi	sp,sp,-16
1c00b408:	8d5d                	or	a0,a0,a5
1c00b40a:	c606                	sw	ra,12(sp)
1c00b40c:	1a1047b7          	lui	a5,0x1a104
1c00b410:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00b414:	3b99                	jal	1c00b16a <pos_wait_forever>

1c00b416 <pos_io_start>:
1c00b416:	4501                	li	a0,0
1c00b418:	8082                	ret

1c00b41a <pos_io_stop>:
1c00b41a:	4501                	li	a0,0
1c00b41c:	8082                	ret

1c00b41e <printf>:
1c00b41e:	7139                	addi	sp,sp,-64
1c00b420:	02410313          	addi	t1,sp,36
1c00b424:	d432                	sw	a2,40(sp)
1c00b426:	862a                	mv	a2,a0
1c00b428:	1c00b537          	lui	a0,0x1c00b
1c00b42c:	d22e                	sw	a1,36(sp)
1c00b42e:	d636                	sw	a3,44(sp)
1c00b430:	4589                	li	a1,2
1c00b432:	869a                	mv	a3,t1
1c00b434:	3b050513          	addi	a0,a0,944 # 1c00b3b0 <pos_libc_fputc_locked>
1c00b438:	ce06                	sw	ra,28(sp)
1c00b43a:	d83a                	sw	a4,48(sp)
1c00b43c:	da3e                	sw	a5,52(sp)
1c00b43e:	dc42                	sw	a6,56(sp)
1c00b440:	de46                	sw	a7,60(sp)
1c00b442:	c61a                	sw	t1,12(sp)
1c00b444:	3f75                	jal	1c00b400 <pos_libc_prf_locked>
1c00b446:	40f2                	lw	ra,28(sp)
1c00b448:	6121                	addi	sp,sp,64
1c00b44a:	8082                	ret

1c00b44c <pos_libc_prf>:
1c00b44c:	7169                	addi	sp,sp,-304
1c00b44e:	12112623          	sw	ra,300(sp)
1c00b452:	12812423          	sw	s0,296(sp)
1c00b456:	12912223          	sw	s1,292(sp)
1c00b45a:	13212023          	sw	s2,288(sp)
1c00b45e:	11312e23          	sw	s3,284(sp)
1c00b462:	11412c23          	sw	s4,280(sp)
1c00b466:	11512a23          	sw	s5,276(sp)
1c00b46a:	11612823          	sw	s6,272(sp)
1c00b46e:	11712623          	sw	s7,268(sp)
1c00b472:	11812423          	sw	s8,264(sp)
1c00b476:	11912223          	sw	s9,260(sp)
1c00b47a:	11a12023          	sw	s10,256(sp)
1c00b47e:	dfee                	sw	s11,252(sp)
1c00b480:	00064783          	lbu	a5,0(a2)
1c00b484:	c636                	sw	a3,12(sp)
1c00b486:	3c0781e3          	beqz	a5,1c00c048 <pos_libc_prf+0xbfc>
1c00b48a:	7741                	lui	a4,0xffff0
1c00b48c:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00b490:	cc3a                	sw	a4,24(sp)
1c00b492:	10000737          	lui	a4,0x10000
1c00b496:	177d                	addi	a4,a4,-1
1c00b498:	8caa                	mv	s9,a0
1c00b49a:	84ae                	mv	s1,a1
1c00b49c:	00160c13          	addi	s8,a2,1
1c00b4a0:	4401                	li	s0,0
1c00b4a2:	1c000d37          	lui	s10,0x1c000
1c00b4a6:	ca3a                	sw	a4,20(sp)
1c00b4a8:	853e                	mv	a0,a5
1c00b4aa:	02500793          	li	a5,37
1c00b4ae:	04f50863          	beq	a0,a5,1c00b4fe <pos_libc_prf+0xb2>
1c00b4b2:	85a6                	mv	a1,s1
1c00b4b4:	9c82                	jalr	s9
1c00b4b6:	57fd                	li	a5,-1
1c00b4b8:	4cf50b63          	beq	a0,a5,1c00b98e <pos_libc_prf+0x542>
1c00b4bc:	0405                	addi	s0,s0,1
1c00b4be:	000c4503          	lbu	a0,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00b4c2:	0c05                	addi	s8,s8,1
1c00b4c4:	f17d                	bnez	a0,1c00b4aa <pos_libc_prf+0x5e>
1c00b4c6:	12c12083          	lw	ra,300(sp)
1c00b4ca:	8522                	mv	a0,s0
1c00b4cc:	12812403          	lw	s0,296(sp)
1c00b4d0:	12412483          	lw	s1,292(sp)
1c00b4d4:	12012903          	lw	s2,288(sp)
1c00b4d8:	11c12983          	lw	s3,284(sp)
1c00b4dc:	11812a03          	lw	s4,280(sp)
1c00b4e0:	11412a83          	lw	s5,276(sp)
1c00b4e4:	11012b03          	lw	s6,272(sp)
1c00b4e8:	10c12b83          	lw	s7,268(sp)
1c00b4ec:	10812c03          	lw	s8,264(sp)
1c00b4f0:	10412c83          	lw	s9,260(sp)
1c00b4f4:	10012d03          	lw	s10,256(sp)
1c00b4f8:	5dfe                	lw	s11,252(sp)
1c00b4fa:	6155                	addi	sp,sp,304
1c00b4fc:	8082                	ret
1c00b4fe:	8de2                	mv	s11,s8
1c00b500:	000dcc03          	lbu	s8,0(s11)
1c00b504:	24cd0513          	addi	a0,s10,588 # 1c00024c <PQCLEAN_KYBER512_CLEAN_zetas+0x100>
1c00b508:	c826                	sw	s1,16(sp)
1c00b50a:	85e2                	mv	a1,s8
1c00b50c:	c202                	sw	zero,4(sp)
1c00b50e:	c402                	sw	zero,8(sp)
1c00b510:	c002                	sw	zero,0(sp)
1c00b512:	001d8493          	addi	s1,s11,1
1c00b516:	350d                	jal	1c00b338 <strchr>
1c00b518:	02000913          	li	s2,32
1c00b51c:	4b81                	li	s7,0
1c00b51e:	02b00993          	li	s3,43
1c00b522:	02d00b13          	li	s6,45
1c00b526:	03000a93          	li	s5,48
1c00b52a:	02000a13          	li	s4,32
1c00b52e:	8626                	mv	a2,s1
1c00b530:	c51d                	beqz	a0,1c00b55e <pos_libc_prf+0x112>
1c00b532:	413c0e63          	beq	s8,s3,1c00b94e <pos_libc_prf+0x502>
1c00b536:	3f89ec63          	bltu	s3,s8,1c00b92e <pos_libc_prf+0x4e2>
1c00b53a:	414c0663          	beq	s8,s4,1c00b946 <pos_libc_prf+0x4fa>
1c00b53e:	02300793          	li	a5,35
1c00b542:	3efc1363          	bne	s8,a5,1c00b928 <pos_libc_prf+0x4dc>
1c00b546:	4b85                	li	s7,1
1c00b548:	8da6                	mv	s11,s1
1c00b54a:	000dcc03          	lbu	s8,0(s11)
1c00b54e:	24cd0513          	addi	a0,s10,588
1c00b552:	001d8493          	addi	s1,s11,1
1c00b556:	85e2                	mv	a1,s8
1c00b558:	33c5                	jal	1c00b338 <strchr>
1c00b55a:	8626                	mv	a2,s1
1c00b55c:	f979                	bnez	a0,1c00b532 <pos_libc_prf+0xe6>
1c00b55e:	87e2                	mv	a5,s8
1c00b560:	ce5e                	sw	s7,28(sp)
1c00b562:	02a00693          	li	a3,42
1c00b566:	8c6e                	mv	s8,s11
1c00b568:	8ba6                	mv	s7,s1
1c00b56a:	8dbe                	mv	s11,a5
1c00b56c:	44c2                	lw	s1,16(sp)
1c00b56e:	42d78263          	beq	a5,a3,1c00b992 <pos_libc_prf+0x546>
1c00b572:	fd078693          	addi	a3,a5,-48
1c00b576:	4525                	li	a0,9
1c00b578:	4a01                	li	s4,0
1c00b57a:	3cd57f63          	bgeu	a0,a3,1c00b958 <pos_libc_prf+0x50c>
1c00b57e:	02e00793          	li	a5,46
1c00b582:	5afd                	li	s5,-1
1c00b584:	74fd8363          	beq	s11,a5,1c00bcca <pos_libc_prf+0x87e>
1c00b588:	1c0007b7          	lui	a5,0x1c000
1c00b58c:	85ee                	mv	a1,s11
1c00b58e:	25478513          	addi	a0,a5,596 # 1c000254 <PQCLEAN_KYBER512_CLEAN_zetas+0x108>
1c00b592:	c832                	sw	a2,16(sp)
1c00b594:	3355                	jal	1c00b338 <strchr>
1c00b596:	4642                	lw	a2,16(sp)
1c00b598:	8c32                	mv	s8,a2
1c00b59a:	c509                	beqz	a0,1c00b5a4 <pos_libc_prf+0x158>
1c00b59c:	00064d83          	lbu	s11,0(a2)
1c00b5a0:	00160c13          	addi	s8,a2,1
1c00b5a4:	06900793          	li	a5,105
1c00b5a8:	0afd8ee3          	beq	s11,a5,1c00be64 <pos_libc_prf+0xa18>
1c00b5ac:	4db7c763          	blt	a5,s11,1c00ba7a <pos_libc_prf+0x62e>
1c00b5b0:	05800793          	li	a5,88
1c00b5b4:	4efd8163          	beq	s11,a5,1c00ba96 <pos_libc_prf+0x64a>
1c00b5b8:	41b7c163          	blt	a5,s11,1c00b9ba <pos_libc_prf+0x56e>
1c00b5bc:	02500793          	li	a5,37
1c00b5c0:	26fd8ae3          	beq	s11,a5,1c00c034 <pos_libc_prf+0xbe8>
1c00b5c4:	3fb7d863          	bge	a5,s11,1c00b9b4 <pos_libc_prf+0x568>
1c00b5c8:	fbbd8793          	addi	a5,s11,-69
1c00b5cc:	4689                	li	a3,2
1c00b5ce:	eef6e8e3          	bltu	a3,a5,1c00b4be <pos_libc_prf+0x72>
1c00b5d2:	47b2                	lw	a5,12(sp)
1c00b5d4:	7ff00893          	li	a7,2047
1c00b5d8:	00778b13          	addi	s6,a5,7
1c00b5dc:	ff8b7b13          	andi	s6,s6,-8
1c00b5e0:	004b2783          	lw	a5,4(s6)
1c00b5e4:	000b2603          	lw	a2,0(s6)
1c00b5e8:	0b21                	addi	s6,s6,8
1c00b5ea:	00b79693          	slli	a3,a5,0xb
1c00b5ee:	01565513          	srli	a0,a2,0x15
1c00b5f2:	8ec9                	or	a3,a3,a0
1c00b5f4:	0147d813          	srli	a6,a5,0x14
1c00b5f8:	0686                	slli	a3,a3,0x1
1c00b5fa:	7ff87813          	andi	a6,a6,2047
1c00b5fe:	0016d513          	srli	a0,a3,0x1
1c00b602:	00b61313          	slli	t1,a2,0xb
1c00b606:	86be                	mv	a3,a5
1c00b608:	41180263          	beq	a6,a7,1c00ba0c <pos_libc_prf+0x5c0>
1c00b60c:	04600793          	li	a5,70
1c00b610:	00fd9463          	bne	s11,a5,1c00b618 <pos_libc_prf+0x1cc>
1c00b614:	06600d93          	li	s11,102
1c00b618:	006867b3          	or	a5,a6,t1
1c00b61c:	00a7e8b3          	or	a7,a5,a0
1c00b620:	862a                	mv	a2,a0
1c00b622:	340885e3          	beqz	a7,1c00c16c <pos_libc_prf+0xd20>
1c00b626:	80000637          	lui	a2,0x80000
1c00b62a:	c0280813          	addi	a6,a6,-1022
1c00b62e:	879a                	mv	a5,t1
1c00b630:	8e49                	or	a2,a2,a0
1c00b632:	4606c7e3          	bltz	a3,1c00c2a0 <pos_libc_prf+0xe54>
1c00b636:	4722                	lw	a4,8(sp)
1c00b638:	480708e3          	beqz	a4,1c00c2c8 <pos_libc_prf+0xe7c>
1c00b63c:	02b00693          	li	a3,43
1c00b640:	02d10223          	sb	a3,36(sp)
1c00b644:	02510f13          	addi	t5,sp,37
1c00b648:	56f9                	li	a3,-2
1c00b64a:	4301                	li	t1,0
1c00b64c:	06d85663          	bge	a6,a3,1c00b6b8 <pos_libc_prf+0x26c>
1c00b650:	333338b7          	lui	a7,0x33333
1c00b654:	80000e37          	lui	t3,0x80000
1c00b658:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00b65c:	fffe4e13          	not	t3,t3
1c00b660:	5ef9                	li	t4,-2
1c00b662:	01f61593          	slli	a1,a2,0x1f
1c00b666:	0017d693          	srli	a3,a5,0x1
1c00b66a:	0017f713          	andi	a4,a5,1
1c00b66e:	8ecd                	or	a3,a3,a1
1c00b670:	00d707b3          	add	a5,a4,a3
1c00b674:	00e7b733          	sltu	a4,a5,a4
1c00b678:	8205                	srli	a2,a2,0x1
1c00b67a:	963a                	add	a2,a2,a4
1c00b67c:	8742                	mv	a4,a6
1c00b67e:	0805                	addi	a6,a6,1
1c00b680:	fec8e1e3          	bltu	a7,a2,1c00b662 <pos_libc_prf+0x216>
1c00b684:	00279593          	slli	a1,a5,0x2
1c00b688:	01e7d513          	srli	a0,a5,0x1e
1c00b68c:	00261693          	slli	a3,a2,0x2
1c00b690:	97ae                	add	a5,a5,a1
1c00b692:	8ec9                	or	a3,a3,a0
1c00b694:	9636                	add	a2,a2,a3
1c00b696:	00b7b5b3          	sltu	a1,a5,a1
1c00b69a:	962e                	add	a2,a2,a1
1c00b69c:	01f7d693          	srli	a3,a5,0x1f
1c00b6a0:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00b6a4:	137d                	addi	t1,t1,-1
1c00b6a6:	01c61763          	bne	a2,t3,1c00b6b4 <pos_libc_prf+0x268>
1c00b6aa:	00170813          	addi	a6,a4,1
1c00b6ae:	0786                	slli	a5,a5,0x1
1c00b6b0:	ffe6e613          	ori	a2,a3,-2
1c00b6b4:	fbd847e3          	blt	a6,t4,1c00b662 <pos_libc_prf+0x216>
1c00b6b8:	07005363          	blez	a6,1c00b71e <pos_libc_prf+0x2d2>
1c00b6bc:	800008b7          	lui	a7,0x80000
1c00b6c0:	4e15                	li	t3,5
1c00b6c2:	fff8c893          	not	a7,a7
1c00b6c6:	00278693          	addi	a3,a5,2
1c00b6ca:	00f6b7b3          	sltu	a5,a3,a5
1c00b6ce:	963e                	add	a2,a2,a5
1c00b6d0:	03c657b3          	divu	a5,a2,t3
1c00b6d4:	0036d713          	srli	a4,a3,0x3
1c00b6d8:	187d                	addi	a6,a6,-1
1c00b6da:	0305                	addi	t1,t1,1
1c00b6dc:	00279593          	slli	a1,a5,0x2
1c00b6e0:	95be                	add	a1,a1,a5
1c00b6e2:	8e0d                	sub	a2,a2,a1
1c00b6e4:	0676                	slli	a2,a2,0x1d
1c00b6e6:	8f51                	or	a4,a4,a2
1c00b6e8:	03c75633          	divu	a2,a4,t3
1c00b6ec:	00361713          	slli	a4,a2,0x3
1c00b6f0:	00561593          	slli	a1,a2,0x5
1c00b6f4:	95ba                	add	a1,a1,a4
1c00b6f6:	8e8d                	sub	a3,a3,a1
1c00b6f8:	03c6d6b3          	divu	a3,a3,t3
1c00b6fc:	8275                	srli	a2,a2,0x1d
1c00b6fe:	963e                	add	a2,a2,a5
1c00b700:	00e687b3          	add	a5,a3,a4
1c00b704:	00d7b6b3          	sltu	a3,a5,a3
1c00b708:	9636                	add	a2,a2,a3
1c00b70a:	01f7d713          	srli	a4,a5,0x1f
1c00b70e:	0606                	slli	a2,a2,0x1
1c00b710:	8e59                	or	a2,a2,a4
1c00b712:	0786                	slli	a5,a5,0x1
1c00b714:	187d                	addi	a6,a6,-1
1c00b716:	fec8fae3          	bgeu	a7,a2,1c00b70a <pos_libc_prf+0x2be>
1c00b71a:	fb0046e3          	bgtz	a6,1c00b6c6 <pos_libc_prf+0x27a>
1c00b71e:	4e11                	li	t3,4
1c00b720:	01f61693          	slli	a3,a2,0x1f
1c00b724:	0017d713          	srli	a4,a5,0x1
1c00b728:	8f55                	or	a4,a4,a3
1c00b72a:	8b85                	andi	a5,a5,1
1c00b72c:	00e78533          	add	a0,a5,a4
1c00b730:	8205                	srli	a2,a2,0x1
1c00b732:	00f537b3          	sltu	a5,a0,a5
1c00b736:	00c788b3          	add	a7,a5,a2
1c00b73a:	0805                	addi	a6,a6,1
1c00b73c:	87aa                	mv	a5,a0
1c00b73e:	8646                	mv	a2,a7
1c00b740:	ffc810e3          	bne	a6,t3,1c00b720 <pos_libc_prf+0x2d4>
1c00b744:	06700793          	li	a5,103
1c00b748:	2a0acee3          	bltz	s5,1c00c204 <pos_libc_prf+0xdb8>
1c00b74c:	28fd83e3          	beq	s11,a5,1c00c1d2 <pos_libc_prf+0xd86>
1c00b750:	04700793          	li	a5,71
1c00b754:	26fd8fe3          	beq	s11,a5,1c00c1d2 <pos_libc_prf+0xd86>
1c00b758:	06600793          	li	a5,102
1c00b75c:	2cfd85e3          	beq	s11,a5,1c00c226 <pos_libc_prf+0xdda>
1c00b760:	001a8813          	addi	a6,s5,1
1c00b764:	47c1                	li	a5,16
1c00b766:	0107d363          	bge	a5,a6,1c00b76c <pos_libc_prf+0x320>
1c00b76a:	4841                	li	a6,16
1c00b76c:	187d                	addi	a6,a6,-1
1c00b76e:	4601                	li	a2,0
1c00b770:	4781                	li	a5,0
1c00b772:	080006b7          	lui	a3,0x8000
1c00b776:	4e15                	li	t3,5
1c00b778:	5efd                	li	t4,-1
1c00b77a:	00278713          	addi	a4,a5,2
1c00b77e:	00f737b3          	sltu	a5,a4,a5
1c00b782:	97b6                	add	a5,a5,a3
1c00b784:	03c7dfb3          	divu	t6,a5,t3
1c00b788:	00375593          	srli	a1,a4,0x3
1c00b78c:	187d                	addi	a6,a6,-1
1c00b78e:	002f9693          	slli	a3,t6,0x2
1c00b792:	96fe                	add	a3,a3,t6
1c00b794:	8f95                	sub	a5,a5,a3
1c00b796:	07f6                	slli	a5,a5,0x1d
1c00b798:	8ddd                	or	a1,a1,a5
1c00b79a:	03c5d5b3          	divu	a1,a1,t3
1c00b79e:	00359693          	slli	a3,a1,0x3
1c00b7a2:	00559793          	slli	a5,a1,0x5
1c00b7a6:	97b6                	add	a5,a5,a3
1c00b7a8:	8f1d                	sub	a4,a4,a5
1c00b7aa:	03c757b3          	divu	a5,a4,t3
1c00b7ae:	81f5                	srli	a1,a1,0x1d
1c00b7b0:	95fe                	add	a1,a1,t6
1c00b7b2:	96be                	add	a3,a3,a5
1c00b7b4:	00f6b733          	sltu	a4,a3,a5
1c00b7b8:	972e                	add	a4,a4,a1
1c00b7ba:	01f71593          	slli	a1,a4,0x1f
1c00b7be:	0016d793          	srli	a5,a3,0x1
1c00b7c2:	8fcd                	or	a5,a5,a1
1c00b7c4:	8a85                	andi	a3,a3,1
1c00b7c6:	97b6                	add	a5,a5,a3
1c00b7c8:	8305                	srli	a4,a4,0x1
1c00b7ca:	00d7b6b3          	sltu	a3,a5,a3
1c00b7ce:	96ba                	add	a3,a3,a4
1c00b7d0:	fbd815e3          	bne	a6,t4,1c00b77a <pos_libc_prf+0x32e>
1c00b7d4:	97aa                	add	a5,a5,a0
1c00b7d6:	96c6                	add	a3,a3,a7
1c00b7d8:	00a7b533          	sltu	a0,a5,a0
1c00b7dc:	00d508b3          	add	a7,a0,a3
1c00b7e0:	f00006b7          	lui	a3,0xf0000
1c00b7e4:	0116f6b3          	and	a3,a3,a7
1c00b7e8:	c2b5                	beqz	a3,1c00b84c <pos_libc_prf+0x400>
1c00b7ea:	00278813          	addi	a6,a5,2
1c00b7ee:	00f836b3          	sltu	a3,a6,a5
1c00b7f2:	98b6                	add	a7,a7,a3
1c00b7f4:	4e95                	li	t4,5
1c00b7f6:	03d8de33          	divu	t3,a7,t4
1c00b7fa:	00385693          	srli	a3,a6,0x3
1c00b7fe:	0305                	addi	t1,t1,1
1c00b800:	002e1513          	slli	a0,t3,0x2
1c00b804:	9572                	add	a0,a0,t3
1c00b806:	40a888b3          	sub	a7,a7,a0
1c00b80a:	01d89513          	slli	a0,a7,0x1d
1c00b80e:	8ec9                	or	a3,a3,a0
1c00b810:	03d6d6b3          	divu	a3,a3,t4
1c00b814:	00369513          	slli	a0,a3,0x3
1c00b818:	00569793          	slli	a5,a3,0x5
1c00b81c:	97aa                	add	a5,a5,a0
1c00b81e:	40f807b3          	sub	a5,a6,a5
1c00b822:	03d7d7b3          	divu	a5,a5,t4
1c00b826:	82f5                	srli	a3,a3,0x1d
1c00b828:	96f2                	add	a3,a3,t3
1c00b82a:	953e                	add	a0,a0,a5
1c00b82c:	00f537b3          	sltu	a5,a0,a5
1c00b830:	96be                	add	a3,a3,a5
1c00b832:	01f69813          	slli	a6,a3,0x1f
1c00b836:	00155793          	srli	a5,a0,0x1
1c00b83a:	00f867b3          	or	a5,a6,a5
1c00b83e:	8905                	andi	a0,a0,1
1c00b840:	97aa                	add	a5,a5,a0
1c00b842:	8285                	srli	a3,a3,0x1
1c00b844:	00a7b533          	sltu	a0,a5,a0
1c00b848:	00d508b3          	add	a7,a0,a3
1c00b84c:	001f0993          	addi	s3,t5,1
1c00b850:	06600693          	li	a3,102
1c00b854:	884e                	mv	a6,s3
1c00b856:	4edd8163          	beq	s11,a3,1c00bd38 <pos_libc_prf+0x8ec>
1c00b85a:	00279693          	slli	a3,a5,0x2
1c00b85e:	01e7d513          	srli	a0,a5,0x1e
1c00b862:	00289e13          	slli	t3,a7,0x2
1c00b866:	97b6                	add	a5,a5,a3
1c00b868:	01c56e33          	or	t3,a0,t3
1c00b86c:	00d7b833          	sltu	a6,a5,a3
1c00b870:	011e06b3          	add	a3,t3,a7
1c00b874:	9836                	add	a6,a6,a3
1c00b876:	0806                	slli	a6,a6,0x1
1c00b878:	01f7d693          	srli	a3,a5,0x1f
1c00b87c:	0106e833          	or	a6,a3,a6
1c00b880:	01c85693          	srli	a3,a6,0x1c
1c00b884:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00b888:	4772                	lw	a4,28(sp)
1c00b88a:	00af0023          	sb	a0,0(t5)
1c00b88e:	00179513          	slli	a0,a5,0x1
1c00b892:	47d2                	lw	a5,20(sp)
1c00b894:	00d036b3          	snez	a3,a3
1c00b898:	01576bb3          	or	s7,a4,s5
1c00b89c:	00f87833          	and	a6,a6,a5
1c00b8a0:	40d30333          	sub	t1,t1,a3
1c00b8a4:	060b8463          	beqz	s7,1c00b90c <pos_libc_prf+0x4c0>
1c00b8a8:	02e00793          	li	a5,46
1c00b8ac:	00ff00a3          	sb	a5,1(t5)
1c00b8b0:	002f0993          	addi	s3,t5,2
1c00b8b4:	040a8c63          	beqz	s5,1c00b90c <pos_libc_prf+0x4c0>
1c00b8b8:	002a8793          	addi	a5,s5,2
1c00b8bc:	9f3e                	add	t5,t5,a5
1c00b8be:	88ce                	mv	a7,s3
1c00b8c0:	4ebd                	li	t4,15
1c00b8c2:	03000f93          	li	t6,48
1c00b8c6:	00251793          	slli	a5,a0,0x2
1c00b8ca:	01e55693          	srli	a3,a0,0x1e
1c00b8ce:	00281713          	slli	a4,a6,0x2
1c00b8d2:	00a785b3          	add	a1,a5,a0
1c00b8d6:	8f55                	or	a4,a4,a3
1c00b8d8:	9742                	add	a4,a4,a6
1c00b8da:	00f5b7b3          	sltu	a5,a1,a5
1c00b8de:	97ba                	add	a5,a5,a4
1c00b8e0:	0786                	slli	a5,a5,0x1
1c00b8e2:	01f5d713          	srli	a4,a1,0x1f
1c00b8e6:	8fd9                	or	a5,a5,a4
1c00b8e8:	01c7d713          	srli	a4,a5,0x1c
1c00b8ec:	03070713          	addi	a4,a4,48
1c00b8f0:	0885                	addi	a7,a7,1
1c00b8f2:	53d05763          	blez	t4,1c00be20 <pos_libc_prf+0x9d4>
1c00b8f6:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00b8fa:	4752                	lw	a4,20(sp)
1c00b8fc:	1efd                	addi	t4,t4,-1
1c00b8fe:	00159513          	slli	a0,a1,0x1
1c00b902:	00e7f833          	and	a6,a5,a4
1c00b906:	fd1f10e3          	bne	t5,a7,1c00b8c6 <pos_libc_prf+0x47a>
1c00b90a:	99d6                	add	s3,s3,s5
1c00b90c:	4e061c63          	bnez	a2,1c00be04 <pos_libc_prf+0x9b8>
1c00b910:	fdfdf793          	andi	a5,s11,-33
1c00b914:	04500693          	li	a3,69
1c00b918:	00d781e3          	beq	a5,a3,1c00c11a <pos_libc_prf+0xcce>
1c00b91c:	105c                	addi	a5,sp,36
1c00b91e:	00098023          	sb	zero,0(s3)
1c00b922:	40f989b3          	sub	s3,s3,a5
1c00b926:	aa05                	j	1c00ba56 <pos_libc_prf+0x60a>
1c00b928:	b80c0fe3          	beqz	s8,1c00b4c6 <pos_libc_prf+0x7a>
1c00b92c:	b931                	j	1c00b548 <pos_libc_prf+0xfc>
1c00b92e:	016c0863          	beq	s8,s6,1c00b93e <pos_libc_prf+0x4f2>
1c00b932:	c15c1be3          	bne	s8,s5,1c00b548 <pos_libc_prf+0xfc>
1c00b936:	03000913          	li	s2,48
1c00b93a:	8da6                	mv	s11,s1
1c00b93c:	b139                	j	1c00b54a <pos_libc_prf+0xfe>
1c00b93e:	4785                	li	a5,1
1c00b940:	c03e                	sw	a5,0(sp)
1c00b942:	8da6                	mv	s11,s1
1c00b944:	b119                	j	1c00b54a <pos_libc_prf+0xfe>
1c00b946:	4785                	li	a5,1
1c00b948:	c23e                	sw	a5,4(sp)
1c00b94a:	8da6                	mv	s11,s1
1c00b94c:	befd                	j	1c00b54a <pos_libc_prf+0xfe>
1c00b94e:	4785                	li	a5,1
1c00b950:	c43e                	sw	a5,8(sp)
1c00b952:	8da6                	mv	s11,s1
1c00b954:	bedd                	j	1c00b54a <pos_libc_prf+0xfe>
1c00b956:	0b85                	addi	s7,s7,1
1c00b958:	002a1793          	slli	a5,s4,0x2
1c00b95c:	97d2                	add	a5,a5,s4
1c00b95e:	0786                	slli	a5,a5,0x1
1c00b960:	97ee                	add	a5,a5,s11
1c00b962:	000bcd83          	lbu	s11,0(s7)
1c00b966:	fd078a13          	addi	s4,a5,-48
1c00b96a:	8662                	mv	a2,s8
1c00b96c:	fd0d8793          	addi	a5,s11,-48
1c00b970:	8c5e                	mv	s8,s7
1c00b972:	fef572e3          	bgeu	a0,a5,1c00b956 <pos_libc_prf+0x50a>
1c00b976:	0609                	addi	a2,a2,2
1c00b978:	0c800793          	li	a5,200
1c00b97c:	c147f1e3          	bgeu	a5,s4,1c00b57e <pos_libc_prf+0x132>
1c00b980:	0c800a13          	li	s4,200
1c00b984:	beed                	j	1c00b57e <pos_libc_prf+0x132>
1c00b986:	0c800793          	li	a5,200
1c00b98a:	b3b7dae3          	bge	a5,s11,1c00b4be <pos_libc_prf+0x72>
1c00b98e:	547d                	li	s0,-1
1c00b990:	be1d                	j	1c00b4c6 <pos_libc_prf+0x7a>
1c00b992:	47b2                	lw	a5,12(sp)
1c00b994:	0007aa03          	lw	s4,0(a5)
1c00b998:	00478693          	addi	a3,a5,4
1c00b99c:	000a5663          	bgez	s4,1c00b9a8 <pos_libc_prf+0x55c>
1c00b9a0:	4785                	li	a5,1
1c00b9a2:	41400a33          	neg	s4,s4
1c00b9a6:	c03e                	sw	a5,0(sp)
1c00b9a8:	000bcd83          	lbu	s11,0(s7)
1c00b9ac:	c636                	sw	a3,12(sp)
1c00b9ae:	002c0613          	addi	a2,s8,2
1c00b9b2:	b7d9                	j	1c00b978 <pos_libc_prf+0x52c>
1c00b9b4:	b00d89e3          	beqz	s11,1c00b4c6 <pos_libc_prf+0x7a>
1c00b9b8:	b619                	j	1c00b4be <pos_libc_prf+0x72>
1c00b9ba:	06400793          	li	a5,100
1c00b9be:	4afd8363          	beq	s11,a5,1c00be64 <pos_libc_prf+0xa18>
1c00b9c2:	19b7d963          	bge	a5,s11,1c00bb54 <pos_libc_prf+0x708>
1c00b9c6:	f9bd8793          	addi	a5,s11,-101
1c00b9ca:	4689                	li	a3,2
1c00b9cc:	aef6e9e3          	bltu	a3,a5,1c00b4be <pos_libc_prf+0x72>
1c00b9d0:	47b2                	lw	a5,12(sp)
1c00b9d2:	7ff00893          	li	a7,2047
1c00b9d6:	00778b13          	addi	s6,a5,7
1c00b9da:	ff8b7b13          	andi	s6,s6,-8
1c00b9de:	004b2783          	lw	a5,4(s6)
1c00b9e2:	000b2603          	lw	a2,0(s6)
1c00b9e6:	0b21                	addi	s6,s6,8
1c00b9e8:	00b79693          	slli	a3,a5,0xb
1c00b9ec:	01565813          	srli	a6,a2,0x15
1c00b9f0:	0147d513          	srli	a0,a5,0x14
1c00b9f4:	00d866b3          	or	a3,a6,a3
1c00b9f8:	0686                	slli	a3,a3,0x1
1c00b9fa:	7ff57813          	andi	a6,a0,2047
1c00b9fe:	00b61313          	slli	t1,a2,0xb
1c00ba02:	0016d513          	srli	a0,a3,0x1
1c00ba06:	86be                	mv	a3,a5
1c00ba08:	c11818e3          	bne	a6,a7,1c00b618 <pos_libc_prf+0x1cc>
1c00ba0c:	105c                	addi	a5,sp,36
1c00ba0e:	0006d863          	bgez	a3,1c00ba1e <pos_libc_prf+0x5d2>
1c00ba12:	02d00793          	li	a5,45
1c00ba16:	02f10223          	sb	a5,36(sp)
1c00ba1a:	02510793          	addi	a5,sp,37
1c00ba1e:	00a36633          	or	a2,t1,a0
1c00ba22:	fbfd8593          	addi	a1,s11,-65
1c00ba26:	00378993          	addi	s3,a5,3
1c00ba2a:	46e5                	li	a3,25
1c00ba2c:	0c0612e3          	bnez	a2,1c00c2f0 <pos_libc_prf+0xea4>
1c00ba30:	10b6e5e3          	bltu	a3,a1,1c00c33a <pos_libc_prf+0xeee>
1c00ba34:	04900693          	li	a3,73
1c00ba38:	00d78023          	sb	a3,0(a5)
1c00ba3c:	04e00693          	li	a3,78
1c00ba40:	00d780a3          	sb	a3,1(a5)
1c00ba44:	04600693          	li	a3,70
1c00ba48:	00d78123          	sb	a3,2(a5)
1c00ba4c:	000781a3          	sb	zero,3(a5)
1c00ba50:	105c                	addi	a5,sp,36
1c00ba52:	40f989b3          	sub	s3,s3,a5
1c00ba56:	47a2                	lw	a5,8(sp)
1c00ba58:	4712                	lw	a4,4(sp)
1c00ba5a:	8fd9                	or	a5,a5,a4
1c00ba5c:	ce3e                	sw	a5,28(sp)
1c00ba5e:	5e079b63          	bnez	a5,1c00c054 <pos_libc_prf+0xc08>
1c00ba62:	02414683          	lbu	a3,36(sp)
1c00ba66:	02d00793          	li	a5,45
1c00ba6a:	5ef68563          	beq	a3,a5,1c00c054 <pos_libc_prf+0xc08>
1c00ba6e:	0c800793          	li	a5,200
1c00ba72:	0d37d863          	bge	a5,s3,1c00bb42 <pos_libc_prf+0x6f6>
1c00ba76:	547d                	li	s0,-1
1c00ba78:	b4b9                	j	1c00b4c6 <pos_libc_prf+0x7a>
1c00ba7a:	07000793          	li	a5,112
1c00ba7e:	46fd8f63          	beq	s11,a5,1c00befc <pos_libc_prf+0xab0>
1c00ba82:	1bb7d663          	bge	a5,s11,1c00bc2e <pos_libc_prf+0x7e2>
1c00ba86:	07500793          	li	a5,117
1c00ba8a:	52fd8763          	beq	s11,a5,1c00bfb8 <pos_libc_prf+0xb6c>
1c00ba8e:	07800793          	li	a5,120
1c00ba92:	16fd9163          	bne	s11,a5,1c00bbf4 <pos_libc_prf+0x7a8>
1c00ba96:	47b2                	lw	a5,12(sp)
1c00ba98:	1054                	addi	a3,sp,36
1c00ba9a:	4390                	lw	a2,0(a5)
1c00ba9c:	00478b13          	addi	s6,a5,4
1c00baa0:	47f2                	lw	a5,28(sp)
1c00baa2:	28079163          	bnez	a5,1c00bd24 <pos_libc_prf+0x8d8>
1c00baa6:	87b6                	mv	a5,a3
1c00baa8:	4ea5                	li	t4,9
1c00baaa:	4e3d                	li	t3,15
1c00baac:	a039                	j	1c00baba <pos_libc_prf+0x66e>
1c00baae:	ff098fa3          	sb	a6,-1(s3)
1c00bab2:	02ce7663          	bgeu	t3,a2,1c00bade <pos_libc_prf+0x692>
1c00bab6:	862a                	mv	a2,a0
1c00bab8:	87ce                	mv	a5,s3
1c00baba:	00f67593          	andi	a1,a2,15
1c00babe:	00178993          	addi	s3,a5,1
1c00bac2:	05758813          	addi	a6,a1,87
1c00bac6:	03058713          	addi	a4,a1,48
1c00baca:	00465513          	srli	a0,a2,0x4
1c00bace:	febee0e3          	bltu	t4,a1,1c00baae <pos_libc_prf+0x662>
1c00bad2:	00e78023          	sb	a4,0(a5)
1c00bad6:	00178993          	addi	s3,a5,1
1c00bada:	fcce6ee3          	bltu	t3,a2,1c00bab6 <pos_libc_prf+0x66a>
1c00bade:	40d98633          	sub	a2,s3,a3
1c00bae2:	01565c63          	bge	a2,s5,1c00bafa <pos_libc_prf+0x6ae>
1c00bae6:	03000513          	li	a0,48
1c00baea:	87ce                	mv	a5,s3
1c00baec:	0985                	addi	s3,s3,1
1c00baee:	40d98733          	sub	a4,s3,a3
1c00baf2:	fea98fa3          	sb	a0,-1(s3)
1c00baf6:	ff574ae3          	blt	a4,s5,1c00baea <pos_libc_prf+0x69e>
1c00bafa:	00098023          	sb	zero,0(s3)
1c00bafe:	00f6fe63          	bgeu	a3,a5,1c00bb1a <pos_libc_prf+0x6ce>
1c00bb02:	0006c603          	lbu	a2,0(a3)
1c00bb06:	0007c703          	lbu	a4,0(a5)
1c00bb0a:	0685                	addi	a3,a3,1
1c00bb0c:	00c78023          	sb	a2,0(a5)
1c00bb10:	fee68fa3          	sb	a4,-1(a3)
1c00bb14:	17fd                	addi	a5,a5,-1
1c00bb16:	fef6e6e3          	bltu	a3,a5,1c00bb02 <pos_libc_prf+0x6b6>
1c00bb1a:	05800793          	li	a5,88
1c00bb1e:	66fd8463          	beq	s11,a5,1c00c186 <pos_libc_prf+0xd3a>
1c00bb22:	105c                	addi	a5,sp,36
1c00bb24:	40f989b3          	sub	s3,s3,a5
1c00bb28:	47f2                	lw	a5,28(sp)
1c00bb2a:	c399                	beqz	a5,1c00bb30 <pos_libc_prf+0x6e4>
1c00bb2c:	4789                	li	a5,2
1c00bb2e:	ce3e                	sw	a5,28(sp)
1c00bb30:	57fd                	li	a5,-1
1c00bb32:	f2fa8ee3          	beq	s5,a5,1c00ba6e <pos_libc_prf+0x622>
1c00bb36:	0c800793          	li	a5,200
1c00bb3a:	e537cae3          	blt	a5,s3,1c00b98e <pos_libc_prf+0x542>
1c00bb3e:	02000913          	li	s2,32
1c00bb42:	00198613          	addi	a2,s3,1
1c00bb46:	0349c963          	blt	s3,s4,1c00bb78 <pos_libc_prf+0x72c>
1c00bb4a:	c65a                	sw	s6,12(sp)
1c00bb4c:	8a4e                	mv	s4,s3
1c00bb4e:	1a0a1663          	bnez	s4,1c00bcfa <pos_libc_prf+0x8ae>
1c00bb52:	b2b5                	j	1c00b4be <pos_libc_prf+0x72>
1c00bb54:	06300793          	li	a5,99
1c00bb58:	96fd93e3          	bne	s11,a5,1c00b4be <pos_libc_prf+0x72>
1c00bb5c:	4732                	lw	a4,12(sp)
1c00bb5e:	020102a3          	sb	zero,37(sp)
1c00bb62:	4785                	li	a5,1
1c00bb64:	4314                	lw	a3,0(a4)
1c00bb66:	00470b13          	addi	s6,a4,4
1c00bb6a:	02d10223          	sb	a3,36(sp)
1c00bb6e:	1947d463          	bge	a5,s4,1c00bcf6 <pos_libc_prf+0x8aa>
1c00bb72:	4609                	li	a2,2
1c00bb74:	4985                	li	s3,1
1c00bb76:	ce02                	sw	zero,28(sp)
1c00bb78:	4782                	lw	a5,0(sp)
1c00bb7a:	4e078463          	beqz	a5,1c00c062 <pos_libc_prf+0xc16>
1c00bb7e:	413a07b3          	sub	a5,s4,s3
1c00bb82:	4585                	li	a1,1
1c00bb84:	0149d363          	bge	s3,s4,1c00bb8a <pos_libc_prf+0x73e>
1c00bb88:	85be                	mv	a1,a5
1c00bb8a:	17fd                	addi	a5,a5,-1
1c00bb8c:	0037b793          	sltiu	a5,a5,3
1c00bb90:	eb95                	bnez	a5,1c00bbc4 <pos_libc_prf+0x778>
1c00bb92:	0349d963          	bge	s3,s4,1c00bbc4 <pos_libc_prf+0x778>
1c00bb96:	105c                	addi	a5,sp,36
1c00bb98:	97ce                	add	a5,a5,s3
1c00bb9a:	ffc5f613          	andi	a2,a1,-4
1c00bb9e:	963e                	add	a2,a2,a5
1c00bba0:	02000693          	li	a3,32
1c00bba4:	00d78023          	sb	a3,0(a5)
1c00bba8:	00d780a3          	sb	a3,1(a5)
1c00bbac:	00d78123          	sb	a3,2(a5)
1c00bbb0:	00d781a3          	sb	a3,3(a5)
1c00bbb4:	0791                	addi	a5,a5,4
1c00bbb6:	fef617e3          	bne	a2,a5,1c00bba4 <pos_libc_prf+0x758>
1c00bbba:	ffc5f793          	andi	a5,a1,-4
1c00bbbe:	99be                	add	s3,s3,a5
1c00bbc0:	02b78663          	beq	a5,a1,1c00bbec <pos_libc_prf+0x7a0>
1c00bbc4:	199c                	addi	a5,sp,240
1c00bbc6:	97ce                	add	a5,a5,s3
1c00bbc8:	02000693          	li	a3,32
1c00bbcc:	f2d78a23          	sb	a3,-204(a5)
1c00bbd0:	00198793          	addi	a5,s3,1
1c00bbd4:	0147dc63          	bge	a5,s4,1c00bbec <pos_libc_prf+0x7a0>
1c00bbd8:	1998                	addi	a4,sp,240
1c00bbda:	97ba                	add	a5,a5,a4
1c00bbdc:	f2d78a23          	sb	a3,-204(a5)
1c00bbe0:	0989                	addi	s3,s3,2
1c00bbe2:	0149d563          	bge	s3,s4,1c00bbec <pos_libc_prf+0x7a0>
1c00bbe6:	99ba                	add	s3,s3,a4
1c00bbe8:	f2d98a23          	sb	a3,-204(s3)
1c00bbec:	c65a                	sw	s6,12(sp)
1c00bbee:	100a1663          	bnez	s4,1c00bcfa <pos_libc_prf+0x8ae>
1c00bbf2:	b0f1                	j	1c00b4be <pos_libc_prf+0x72>
1c00bbf4:	07300793          	li	a5,115
1c00bbf8:	d8fd97e3          	bne	s11,a5,1c00b986 <pos_libc_prf+0x53a>
1c00bbfc:	47b2                	lw	a5,12(sp)
1c00bbfe:	4981                	li	s3,0
1c00bc00:	0c800693          	li	a3,200
1c00bc04:	438c                	lw	a1,0(a5)
1c00bc06:	00478b13          	addi	s6,a5,4
1c00bc0a:	a021                	j	1c00bc12 <pos_libc_prf+0x7c6>
1c00bc0c:	0985                	addi	s3,s3,1
1c00bc0e:	6ad98163          	beq	s3,a3,1c00c2b0 <pos_libc_prf+0xe64>
1c00bc12:	013587b3          	add	a5,a1,s3
1c00bc16:	0007c783          	lbu	a5,0(a5)
1c00bc1a:	fbed                	bnez	a5,1c00bc0c <pos_libc_prf+0x7c0>
1c00bc1c:	000ac563          	bltz	s5,1c00bc26 <pos_libc_prf+0x7da>
1c00bc20:	013ad363          	bge	s5,s3,1c00bc26 <pos_libc_prf+0x7da>
1c00bc24:	89d6                	mv	s3,s5
1c00bc26:	5a099163          	bnez	s3,1c00c1c8 <pos_libc_prf+0xd7c>
1c00bc2a:	c65a                	sw	s6,12(sp)
1c00bc2c:	b849                	j	1c00b4be <pos_libc_prf+0x72>
1c00bc2e:	06e00793          	li	a5,110
1c00bc32:	36fd8c63          	beq	s11,a5,1c00bfaa <pos_libc_prf+0xb5e>
1c00bc36:	06f00793          	li	a5,111
1c00bc3a:	88fd92e3          	bne	s11,a5,1c00b4be <pos_libc_prf+0x72>
1c00bc3e:	47b2                	lw	a5,12(sp)
1c00bc40:	4390                	lw	a2,0(a5)
1c00bc42:	00478b13          	addi	s6,a5,4
1c00bc46:	47f2                	lw	a5,28(sp)
1c00bc48:	c7f5                	beqz	a5,1c00bd34 <pos_libc_prf+0x8e8>
1c00bc4a:	03000793          	li	a5,48
1c00bc4e:	02f10223          	sb	a5,36(sp)
1c00bc52:	02510693          	addi	a3,sp,37
1c00bc56:	60060b63          	beqz	a2,1c00c26c <pos_libc_prf+0xe20>
1c00bc5a:	89b6                	mv	s3,a3
1c00bc5c:	481d                	li	a6,7
1c00bc5e:	00767713          	andi	a4,a2,7
1c00bc62:	03070713          	addi	a4,a4,48
1c00bc66:	85b2                	mv	a1,a2
1c00bc68:	00e98023          	sb	a4,0(s3)
1c00bc6c:	87ce                	mv	a5,s3
1c00bc6e:	820d                	srli	a2,a2,0x3
1c00bc70:	0985                	addi	s3,s3,1
1c00bc72:	feb866e3          	bltu	a6,a1,1c00bc5e <pos_libc_prf+0x812>
1c00bc76:	40d98633          	sub	a2,s3,a3
1c00bc7a:	01565c63          	bge	a2,s5,1c00bc92 <pos_libc_prf+0x846>
1c00bc7e:	03000593          	li	a1,48
1c00bc82:	87ce                	mv	a5,s3
1c00bc84:	0985                	addi	s3,s3,1
1c00bc86:	40d98733          	sub	a4,s3,a3
1c00bc8a:	feb98fa3          	sb	a1,-1(s3)
1c00bc8e:	ff574ae3          	blt	a4,s5,1c00bc82 <pos_libc_prf+0x836>
1c00bc92:	00098023          	sb	zero,0(s3)
1c00bc96:	00f6fe63          	bgeu	a3,a5,1c00bcb2 <pos_libc_prf+0x866>
1c00bc9a:	0006c603          	lbu	a2,0(a3)
1c00bc9e:	0007c703          	lbu	a4,0(a5)
1c00bca2:	0685                	addi	a3,a3,1
1c00bca4:	00c78023          	sb	a2,0(a5)
1c00bca8:	fee68fa3          	sb	a4,-1(a3)
1c00bcac:	17fd                	addi	a5,a5,-1
1c00bcae:	fef6e6e3          	bltu	a3,a5,1c00bc9a <pos_libc_prf+0x84e>
1c00bcb2:	1058                	addi	a4,sp,36
1c00bcb4:	57fd                	li	a5,-1
1c00bcb6:	40e989b3          	sub	s3,s3,a4
1c00bcba:	36fa8763          	beq	s5,a5,1c00c028 <pos_libc_prf+0xbdc>
1c00bcbe:	0c800793          	li	a5,200
1c00bcc2:	cd37c6e3          	blt	a5,s3,1c00b98e <pos_libc_prf+0x542>
1c00bcc6:	ce02                	sw	zero,28(sp)
1c00bcc8:	bd9d                	j	1c00bb3e <pos_libc_prf+0x6f2>
1c00bcca:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00bcce:	02a00793          	li	a5,42
1c00bcd2:	00160693          	addi	a3,a2,1
1c00bcd6:	14f59b63          	bne	a1,a5,1c00be2c <pos_libc_prf+0x9e0>
1c00bcda:	47b2                	lw	a5,12(sp)
1c00bcdc:	00164d83          	lbu	s11,1(a2)
1c00bce0:	0609                	addi	a2,a2,2
1c00bce2:	0007aa83          	lw	s5,0(a5)
1c00bce6:	0791                	addi	a5,a5,4
1c00bce8:	c63e                	sw	a5,12(sp)
1c00bcea:	0c800793          	li	a5,200
1c00bcee:	8957dde3          	bge	a5,s5,1c00b588 <pos_libc_prf+0x13c>
1c00bcf2:	5afd                	li	s5,-1
1c00bcf4:	b851                	j	1c00b588 <pos_libc_prf+0x13c>
1c00bcf6:	c65a                	sw	s6,12(sp)
1c00bcf8:	4a05                	li	s4,1
1c00bcfa:	02410913          	addi	s2,sp,36
1c00bcfe:	59fd                	li	s3,-1
1c00bd00:	41240ab3          	sub	s5,s0,s2
1c00bd04:	9a4a                	add	s4,s4,s2
1c00bd06:	a029                	j	1c00bd10 <pos_libc_prf+0x8c4>
1c00bd08:	012a8433          	add	s0,s5,s2
1c00bd0c:	fb490963          	beq	s2,s4,1c00b4be <pos_libc_prf+0x72>
1c00bd10:	00094503          	lbu	a0,0(s2)
1c00bd14:	85a6                	mv	a1,s1
1c00bd16:	0905                	addi	s2,s2,1
1c00bd18:	9c82                	jalr	s9
1c00bd1a:	ff3517e3          	bne	a0,s3,1c00bd08 <pos_libc_prf+0x8bc>
1c00bd1e:	547d                	li	s0,-1
1c00bd20:	fa6ff06f          	j	1c00b4c6 <pos_libc_prf+0x7a>
1c00bd24:	77e1                	lui	a5,0xffff8
1c00bd26:	8307c793          	xori	a5,a5,-2000
1c00bd2a:	02f11223          	sh	a5,36(sp)
1c00bd2e:	02610693          	addi	a3,sp,38
1c00bd32:	bb95                	j	1c00baa6 <pos_libc_prf+0x65a>
1c00bd34:	1054                	addi	a3,sp,36
1c00bd36:	b715                	j	1c00bc5a <pos_libc_prf+0x80e>
1c00bd38:	5c605a63          	blez	t1,1c00c30c <pos_libc_prf+0xec0>
1c00bd3c:	006f09b3          	add	s3,t5,t1
1c00bd40:	4541                	li	a0,16
1c00bd42:	03000e13          	li	t3,48
1c00bd46:	00279713          	slli	a4,a5,0x2
1c00bd4a:	01e7d593          	srli	a1,a5,0x1e
1c00bd4e:	00289693          	slli	a3,a7,0x2
1c00bd52:	00f70333          	add	t1,a4,a5
1c00bd56:	8ecd                	or	a3,a3,a1
1c00bd58:	96c6                	add	a3,a3,a7
1c00bd5a:	00e33733          	sltu	a4,t1,a4
1c00bd5e:	9736                	add	a4,a4,a3
1c00bd60:	0706                	slli	a4,a4,0x1
1c00bd62:	01f35693          	srli	a3,t1,0x1f
1c00bd66:	8f55                	or	a4,a4,a3
1c00bd68:	01c75693          	srli	a3,a4,0x1c
1c00bd6c:	03068693          	addi	a3,a3,48
1c00bd70:	4ea05463          	blez	a0,1c00c258 <pos_libc_prf+0xe0c>
1c00bd74:	fed80fa3          	sb	a3,-1(a6)
1c00bd78:	46d2                	lw	a3,20(sp)
1c00bd7a:	157d                	addi	a0,a0,-1
1c00bd7c:	00131793          	slli	a5,t1,0x1
1c00bd80:	00d778b3          	and	a7,a4,a3
1c00bd84:	4d099e63          	bne	s3,a6,1c00c260 <pos_libc_prf+0xe14>
1c00bd88:	4301                	li	t1,0
1c00bd8a:	4772                	lw	a4,28(sp)
1c00bd8c:	01576bb3          	or	s7,a4,s5
1c00bd90:	060b8863          	beqz	s7,1c00be00 <pos_libc_prf+0x9b4>
1c00bd94:	02e00693          	li	a3,46
1c00bd98:	00d98023          	sb	a3,0(s3)
1c00bd9c:	00198e93          	addi	t4,s3,1
1c00bda0:	5c0a8763          	beqz	s5,1c00c36e <pos_libc_prf+0xf22>
1c00bda4:	001a8693          	addi	a3,s5,1
1c00bda8:	99b6                	add	s3,s3,a3
1c00bdaa:	8876                	mv	a6,t4
1c00bdac:	03000f13          	li	t5,48
1c00bdb0:	0805                	addi	a6,a6,1
1c00bdb2:	4a031963          	bnez	t1,1c00c264 <pos_libc_prf+0xe18>
1c00bdb6:	00279713          	slli	a4,a5,0x2
1c00bdba:	01e7d593          	srli	a1,a5,0x1e
1c00bdbe:	00289693          	slli	a3,a7,0x2
1c00bdc2:	00f70e33          	add	t3,a4,a5
1c00bdc6:	8ecd                	or	a3,a3,a1
1c00bdc8:	96c6                	add	a3,a3,a7
1c00bdca:	00ee3733          	sltu	a4,t3,a4
1c00bdce:	9736                	add	a4,a4,a3
1c00bdd0:	0706                	slli	a4,a4,0x1
1c00bdd2:	01fe5693          	srli	a3,t3,0x1f
1c00bdd6:	8f55                	or	a4,a4,a3
1c00bdd8:	01c75593          	srli	a1,a4,0x1c
1c00bddc:	03000693          	li	a3,48
1c00bde0:	00a05a63          	blez	a0,1c00bdf4 <pos_libc_prf+0x9a8>
1c00bde4:	03058693          	addi	a3,a1,48
1c00bde8:	45d2                	lw	a1,20(sp)
1c00bdea:	157d                	addi	a0,a0,-1
1c00bdec:	001e1793          	slli	a5,t3,0x1
1c00bdf0:	00b778b3          	and	a7,a4,a1
1c00bdf4:	fed80fa3          	sb	a3,-1(a6)
1c00bdf8:	fb099ce3          	bne	s3,a6,1c00bdb0 <pos_libc_prf+0x964>
1c00bdfc:	015e89b3          	add	s3,t4,s5
1c00be00:	b0060ee3          	beqz	a2,1c00b91c <pos_libc_prf+0x4d0>
1c00be04:	03000613          	li	a2,48
1c00be08:	fff9c783          	lbu	a5,-1(s3)
1c00be0c:	86ce                	mv	a3,s3
1c00be0e:	19fd                	addi	s3,s3,-1
1c00be10:	fec78ce3          	beq	a5,a2,1c00be08 <pos_libc_prf+0x9bc>
1c00be14:	02e00613          	li	a2,46
1c00be18:	aec78ce3          	beq	a5,a2,1c00b910 <pos_libc_prf+0x4c4>
1c00be1c:	89b6                	mv	s3,a3
1c00be1e:	bccd                	j	1c00b910 <pos_libc_prf+0x4c4>
1c00be20:	fff88fa3          	sb	t6,-1(a7)
1c00be24:	ab1f11e3          	bne	t5,a7,1c00b8c6 <pos_libc_prf+0x47a>
1c00be28:	99d6                	add	s3,s3,s5
1c00be2a:	b4cd                	j	1c00b90c <pos_libc_prf+0x4c0>
1c00be2c:	fd058713          	addi	a4,a1,-48
1c00be30:	47a5                	li	a5,9
1c00be32:	8dae                	mv	s11,a1
1c00be34:	4a81                	li	s5,0
1c00be36:	4525                	li	a0,9
1c00be38:	00e7f463          	bgeu	a5,a4,1c00be40 <pos_libc_prf+0x9f4>
1c00be3c:	a199                	j	1c00c282 <pos_libc_prf+0xe36>
1c00be3e:	0685                	addi	a3,a3,1
1c00be40:	002a9793          	slli	a5,s5,0x2
1c00be44:	97d6                	add	a5,a5,s5
1c00be46:	0786                	slli	a5,a5,0x1
1c00be48:	97ee                	add	a5,a5,s11
1c00be4a:	0006cd83          	lbu	s11,0(a3)
1c00be4e:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00be52:	8732                	mv	a4,a2
1c00be54:	fd0d8793          	addi	a5,s11,-48
1c00be58:	8636                	mv	a2,a3
1c00be5a:	fef572e3          	bgeu	a0,a5,1c00be3e <pos_libc_prf+0x9f2>
1c00be5e:	00270613          	addi	a2,a4,2
1c00be62:	b561                	j	1c00bcea <pos_libc_prf+0x89e>
1c00be64:	47b2                	lw	a5,12(sp)
1c00be66:	0007a303          	lw	t1,0(a5)
1c00be6a:	00478b13          	addi	s6,a5,4
1c00be6e:	2e034263          	bltz	t1,1c00c152 <pos_libc_prf+0xd06>
1c00be72:	47a2                	lw	a5,8(sp)
1c00be74:	861a                	mv	a2,t1
1c00be76:	3c078663          	beqz	a5,1c00c242 <pos_libc_prf+0xdf6>
1c00be7a:	02b00793          	li	a5,43
1c00be7e:	02f10223          	sb	a5,36(sp)
1c00be82:	02510693          	addi	a3,sp,37
1c00be86:	89b6                	mv	s3,a3
1c00be88:	4529                	li	a0,10
1c00be8a:	48a5                	li	a7,9
1c00be8c:	02a67733          	remu	a4,a2,a0
1c00be90:	87ce                	mv	a5,s3
1c00be92:	0985                	addi	s3,s3,1
1c00be94:	85b2                	mv	a1,a2
1c00be96:	03070713          	addi	a4,a4,48
1c00be9a:	fee98fa3          	sb	a4,-1(s3)
1c00be9e:	02a65633          	divu	a2,a2,a0
1c00bea2:	feb8e5e3          	bltu	a7,a1,1c00be8c <pos_libc_prf+0xa40>
1c00bea6:	40d98633          	sub	a2,s3,a3
1c00beaa:	01565c63          	bge	a2,s5,1c00bec2 <pos_libc_prf+0xa76>
1c00beae:	03000593          	li	a1,48
1c00beb2:	87ce                	mv	a5,s3
1c00beb4:	0985                	addi	s3,s3,1
1c00beb6:	40d98733          	sub	a4,s3,a3
1c00beba:	feb98fa3          	sb	a1,-1(s3)
1c00bebe:	ff574ae3          	blt	a4,s5,1c00beb2 <pos_libc_prf+0xa66>
1c00bec2:	00098023          	sb	zero,0(s3)
1c00bec6:	00f6fe63          	bgeu	a3,a5,1c00bee2 <pos_libc_prf+0xa96>
1c00beca:	0006c603          	lbu	a2,0(a3)
1c00bece:	0007c703          	lbu	a4,0(a5)
1c00bed2:	0685                	addi	a3,a3,1
1c00bed4:	00c78023          	sb	a2,0(a5)
1c00bed8:	fee68fa3          	sb	a4,-1(a3)
1c00bedc:	17fd                	addi	a5,a5,-1
1c00bede:	fef6e6e3          	bltu	a3,a5,1c00beca <pos_libc_prf+0xa7e>
1c00bee2:	4712                	lw	a4,4(sp)
1c00bee4:	47a2                	lw	a5,8(sp)
1c00bee6:	8fd9                	or	a5,a5,a4
1c00bee8:	ce3e                	sw	a5,28(sp)
1c00beea:	1058                	addi	a4,sp,36
1c00beec:	40e989b3          	sub	s3,s3,a4
1c00bef0:	c40790e3          	bnez	a5,1c00bb30 <pos_libc_prf+0x6e4>
1c00bef4:	01f35793          	srli	a5,t1,0x1f
1c00bef8:	ce3e                	sw	a5,28(sp)
1c00befa:	b91d                	j	1c00bb30 <pos_libc_prf+0x6e4>
1c00befc:	47b2                	lw	a5,12(sp)
1c00befe:	02610613          	addi	a2,sp,38
1c00bf02:	4ea5                	li	t4,9
1c00bf04:	438c                	lw	a1,0(a5)
1c00bf06:	00478b13          	addi	s6,a5,4
1c00bf0a:	77e1                	lui	a5,0xffff8
1c00bf0c:	8307c793          	xori	a5,a5,-2000
1c00bf10:	02f11223          	sh	a5,36(sp)
1c00bf14:	4e3d                	li	t3,15
1c00bf16:	87b2                	mv	a5,a2
1c00bf18:	a039                	j	1c00bf26 <pos_libc_prf+0xada>
1c00bf1a:	ff168fa3          	sb	a7,-1(a3)
1c00bf1e:	02be7663          	bgeu	t3,a1,1c00bf4a <pos_libc_prf+0xafe>
1c00bf22:	85c2                	mv	a1,a6
1c00bf24:	87b6                	mv	a5,a3
1c00bf26:	00f5f513          	andi	a0,a1,15
1c00bf2a:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00bf2e:	05750893          	addi	a7,a0,87
1c00bf32:	03050713          	addi	a4,a0,48
1c00bf36:	0045d813          	srli	a6,a1,0x4
1c00bf3a:	feaee0e3          	bltu	t4,a0,1c00bf1a <pos_libc_prf+0xace>
1c00bf3e:	00e78023          	sb	a4,0(a5)
1c00bf42:	00178693          	addi	a3,a5,1
1c00bf46:	fcbe6ee3          	bltu	t3,a1,1c00bf22 <pos_libc_prf+0xad6>
1c00bf4a:	40c689b3          	sub	s3,a3,a2
1c00bf4e:	459d                	li	a1,7
1c00bf50:	0135cc63          	blt	a1,s3,1c00bf68 <pos_libc_prf+0xb1c>
1c00bf54:	03000513          	li	a0,48
1c00bf58:	87b6                	mv	a5,a3
1c00bf5a:	0685                	addi	a3,a3,1
1c00bf5c:	40c689b3          	sub	s3,a3,a2
1c00bf60:	fea68fa3          	sb	a0,-1(a3)
1c00bf64:	ff35dae3          	bge	a1,s3,1c00bf58 <pos_libc_prf+0xb0c>
1c00bf68:	00068023          	sb	zero,0(a3)
1c00bf6c:	86b2                	mv	a3,a2
1c00bf6e:	00f67e63          	bgeu	a2,a5,1c00bf8a <pos_libc_prf+0xb3e>
1c00bf72:	0006c603          	lbu	a2,0(a3)
1c00bf76:	0007c703          	lbu	a4,0(a5)
1c00bf7a:	0685                	addi	a3,a3,1
1c00bf7c:	00c78023          	sb	a2,0(a5)
1c00bf80:	fee68fa3          	sb	a4,-1(a3)
1c00bf84:	17fd                	addi	a5,a5,-1
1c00bf86:	fef6e6e3          	bltu	a3,a5,1c00bf72 <pos_libc_prf+0xb26>
1c00bf8a:	57fd                	li	a5,-1
1c00bf8c:	0989                	addi	s3,s3,2
1c00bf8e:	22fa8663          	beq	s5,a5,1c00c1ba <pos_libc_prf+0xd6e>
1c00bf92:	0c800793          	li	a5,200
1c00bf96:	9f37cce3          	blt	a5,s3,1c00b98e <pos_libc_prf+0x542>
1c00bf9a:	02000913          	li	s2,32
1c00bf9e:	0b49d863          	bge	s3,s4,1c00c04e <pos_libc_prf+0xc02>
1c00bfa2:	00198613          	addi	a2,s3,1
1c00bfa6:	ce02                	sw	zero,28(sp)
1c00bfa8:	bec1                	j	1c00bb78 <pos_libc_prf+0x72c>
1c00bfaa:	4732                	lw	a4,12(sp)
1c00bfac:	431c                	lw	a5,0(a4)
1c00bfae:	0711                	addi	a4,a4,4
1c00bfb0:	c63a                	sw	a4,12(sp)
1c00bfb2:	c380                	sw	s0,0(a5)
1c00bfb4:	d0aff06f          	j	1c00b4be <pos_libc_prf+0x72>
1c00bfb8:	47b2                	lw	a5,12(sp)
1c00bfba:	4529                	li	a0,10
1c00bfbc:	48a5                	li	a7,9
1c00bfbe:	4390                	lw	a2,0(a5)
1c00bfc0:	00478b13          	addi	s6,a5,4
1c00bfc4:	105c                	addi	a5,sp,36
1c00bfc6:	02a67733          	remu	a4,a2,a0
1c00bfca:	86be                	mv	a3,a5
1c00bfcc:	0785                	addi	a5,a5,1
1c00bfce:	85b2                	mv	a1,a2
1c00bfd0:	03070713          	addi	a4,a4,48
1c00bfd4:	fee78fa3          	sb	a4,-1(a5)
1c00bfd8:	02a65633          	divu	a2,a2,a0
1c00bfdc:	feb8e5e3          	bltu	a7,a1,1c00bfc6 <pos_libc_prf+0xb7a>
1c00bfe0:	1058                	addi	a4,sp,36
1c00bfe2:	40e789b3          	sub	s3,a5,a4
1c00bfe6:	0159dd63          	bge	s3,s5,1c00c000 <pos_libc_prf+0xbb4>
1c00bfea:	03000613          	li	a2,48
1c00bfee:	86be                	mv	a3,a5
1c00bff0:	1058                	addi	a4,sp,36
1c00bff2:	0785                	addi	a5,a5,1
1c00bff4:	40e789b3          	sub	s3,a5,a4
1c00bff8:	fec78fa3          	sb	a2,-1(a5)
1c00bffc:	ff59c9e3          	blt	s3,s5,1c00bfee <pos_libc_prf+0xba2>
1c00c000:	00078023          	sb	zero,0(a5)
1c00c004:	105c                	addi	a5,sp,36
1c00c006:	00d7fe63          	bgeu	a5,a3,1c00c022 <pos_libc_prf+0xbd6>
1c00c00a:	0007c603          	lbu	a2,0(a5)
1c00c00e:	0006c703          	lbu	a4,0(a3)
1c00c012:	0785                	addi	a5,a5,1
1c00c014:	00c68023          	sb	a2,0(a3)
1c00c018:	fee78fa3          	sb	a4,-1(a5)
1c00c01c:	16fd                	addi	a3,a3,-1
1c00c01e:	fed7e6e3          	bltu	a5,a3,1c00c00a <pos_libc_prf+0xbbe>
1c00c022:	57fd                	li	a5,-1
1c00c024:	c8fa9de3          	bne	s5,a5,1c00bcbe <pos_libc_prf+0x872>
1c00c028:	0c800793          	li	a5,200
1c00c02c:	9737c1e3          	blt	a5,s3,1c00b98e <pos_libc_prf+0x542>
1c00c030:	ce02                	sw	zero,28(sp)
1c00c032:	be01                	j	1c00bb42 <pos_libc_prf+0x6f6>
1c00c034:	85a6                	mv	a1,s1
1c00c036:	02500513          	li	a0,37
1c00c03a:	9c82                	jalr	s9
1c00c03c:	57fd                	li	a5,-1
1c00c03e:	c6f51f63          	bne	a0,a5,1c00b4bc <pos_libc_prf+0x70>
1c00c042:	547d                	li	s0,-1
1c00c044:	c82ff06f          	j	1c00b4c6 <pos_libc_prf+0x7a>
1c00c048:	4401                	li	s0,0
1c00c04a:	c7cff06f          	j	1c00b4c6 <pos_libc_prf+0x7a>
1c00c04e:	8a4e                	mv	s4,s3
1c00c050:	c65a                	sw	s6,12(sp)
1c00c052:	b165                	j	1c00bcfa <pos_libc_prf+0x8ae>
1c00c054:	0c800793          	li	a5,200
1c00c058:	9337cbe3          	blt	a5,s3,1c00b98e <pos_libc_prf+0x542>
1c00c05c:	4785                	li	a5,1
1c00c05e:	ce3e                	sw	a5,28(sp)
1c00c060:	b4cd                	j	1c00bb42 <pos_libc_prf+0x6f6>
1c00c062:	104c                	addi	a1,sp,36
1c00c064:	413a09b3          	sub	s3,s4,s3
1c00c068:	01358533          	add	a0,a1,s3
1c00c06c:	9faff0ef          	jal	ra,1c00b266 <memmove>
1c00c070:	02000793          	li	a5,32
1c00c074:	24f90863          	beq	s2,a5,1c00c2c4 <pos_libc_prf+0xe78>
1c00c078:	47f2                	lw	a5,28(sp)
1c00c07a:	99be                	add	s3,s3,a5
1c00c07c:	47f2                	lw	a5,28(sp)
1c00c07e:	b737d7e3          	bge	a5,s3,1c00bbec <pos_libc_prf+0x7a0>
1c00c082:	4772                	lw	a4,28(sp)
1c00c084:	4789                	li	a5,2
1c00c086:	40e988b3          	sub	a7,s3,a4
1c00c08a:	fff88693          	addi	a3,a7,-1
1c00c08e:	06d7f063          	bgeu	a5,a3,1c00c0ee <pos_libc_prf+0xca2>
1c00c092:	47e2                	lw	a5,24(sp)
1c00c094:	00891613          	slli	a2,s2,0x8
1c00c098:	ffc8f593          	andi	a1,a7,-4
1c00c09c:	00f976b3          	and	a3,s2,a5
1c00c0a0:	8ed1                	or	a3,a3,a2
1c00c0a2:	01091793          	slli	a5,s2,0x10
1c00c0a6:	8edd                	or	a3,a3,a5
1c00c0a8:	01891613          	slli	a2,s2,0x18
1c00c0ac:	8e55                	or	a2,a2,a3
1c00c0ae:	105c                	addi	a5,sp,36
1c00c0b0:	00865813          	srli	a6,a2,0x8
1c00c0b4:	01065513          	srli	a0,a2,0x10
1c00c0b8:	97ba                	add	a5,a5,a4
1c00c0ba:	95be                	add	a1,a1,a5
1c00c0bc:	0306f693          	andi	a3,a3,48
1c00c0c0:	8261                	srli	a2,a2,0x18
1c00c0c2:	0ff87813          	andi	a6,a6,255
1c00c0c6:	0ff57513          	andi	a0,a0,255
1c00c0ca:	00d78023          	sb	a3,0(a5)
1c00c0ce:	010780a3          	sb	a6,1(a5)
1c00c0d2:	00a78123          	sb	a0,2(a5)
1c00c0d6:	00c781a3          	sb	a2,3(a5)
1c00c0da:	0791                	addi	a5,a5,4
1c00c0dc:	fef597e3          	bne	a1,a5,1c00c0ca <pos_libc_prf+0xc7e>
1c00c0e0:	4772                	lw	a4,28(sp)
1c00c0e2:	ffc8f793          	andi	a5,a7,-4
1c00c0e6:	973e                	add	a4,a4,a5
1c00c0e8:	ce3a                	sw	a4,28(sp)
1c00c0ea:	b11781e3          	beq	a5,a7,1c00bbec <pos_libc_prf+0x7a0>
1c00c0ee:	4772                	lw	a4,28(sp)
1c00c0f0:	199c                	addi	a5,sp,240
1c00c0f2:	97ba                	add	a5,a5,a4
1c00c0f4:	f3278a23          	sb	s2,-204(a5)
1c00c0f8:	00170793          	addi	a5,a4,1
1c00c0fc:	af37d8e3          	bge	a5,s3,1c00bbec <pos_libc_prf+0x7a0>
1c00c100:	1994                	addi	a3,sp,240
1c00c102:	97b6                	add	a5,a5,a3
1c00c104:	f3278a23          	sb	s2,-204(a5)
1c00c108:	00270b93          	addi	s7,a4,2
1c00c10c:	af3bd0e3          	bge	s7,s3,1c00bbec <pos_libc_prf+0x7a0>
1c00c110:	9bb6                	add	s7,s7,a3
1c00c112:	f32b8a23          	sb	s2,-204(s7)
1c00c116:	c65a                	sw	s6,12(sp)
1c00c118:	bcd9                	j	1c00bbee <pos_libc_prf+0x7a2>
1c00c11a:	01b98023          	sb	s11,0(s3)
1c00c11e:	02b00613          	li	a2,43
1c00c122:	00035663          	bgez	t1,1c00c12e <pos_libc_prf+0xce2>
1c00c126:	40600333          	neg	t1,t1
1c00c12a:	02d00613          	li	a2,45
1c00c12e:	47a9                	li	a5,10
1c00c130:	02f346b3          	div	a3,t1,a5
1c00c134:	00c980a3          	sb	a2,1(s3)
1c00c138:	0991                	addi	s3,s3,4
1c00c13a:	02f367b3          	rem	a5,t1,a5
1c00c13e:	03068693          	addi	a3,a3,48
1c00c142:	fed98f23          	sb	a3,-2(s3)
1c00c146:	03078793          	addi	a5,a5,48
1c00c14a:	fef98fa3          	sb	a5,-1(s3)
1c00c14e:	fceff06f          	j	1c00b91c <pos_libc_prf+0x4d0>
1c00c152:	02d00793          	li	a5,45
1c00c156:	02f10223          	sb	a5,36(sp)
1c00c15a:	800007b7          	lui	a5,0x80000
1c00c15e:	14f30e63          	beq	t1,a5,1c00c2ba <pos_libc_prf+0xe6e>
1c00c162:	40600633          	neg	a2,t1
1c00c166:	02510693          	addi	a3,sp,37
1c00c16a:	bb31                	j	1c00be86 <pos_libc_prf+0xa3a>
1c00c16c:	4722                	lw	a4,8(sp)
1c00c16e:	10070d63          	beqz	a4,1c00c288 <pos_libc_prf+0xe3c>
1c00c172:	02b00693          	li	a3,43
1c00c176:	02d10223          	sb	a3,36(sp)
1c00c17a:	02510f13          	addi	t5,sp,37
1c00c17e:	4301                	li	t1,0
1c00c180:	4801                	li	a6,0
1c00c182:	d9cff06f          	j	1c00b71e <pos_libc_prf+0x2d2>
1c00c186:	02414783          	lbu	a5,36(sp)
1c00c18a:	98078ce3          	beqz	a5,1c00bb22 <pos_libc_prf+0x6d6>
1c00c18e:	1054                	addi	a3,sp,36
1c00c190:	45e5                	li	a1,25
1c00c192:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00c196:	f9f78793          	addi	a5,a5,-97
1c00c19a:	0ff7f793          	andi	a5,a5,255
1c00c19e:	00f5e963          	bltu	a1,a5,1c00c1b0 <pos_libc_prf+0xd64>
1c00c1a2:	0016c783          	lbu	a5,1(a3)
1c00c1a6:	00e68023          	sb	a4,0(a3)
1c00c1aa:	0685                	addi	a3,a3,1
1c00c1ac:	f3fd                	bnez	a5,1c00c192 <pos_libc_prf+0xd46>
1c00c1ae:	ba95                	j	1c00bb22 <pos_libc_prf+0x6d6>
1c00c1b0:	0016c783          	lbu	a5,1(a3)
1c00c1b4:	0685                	addi	a3,a3,1
1c00c1b6:	fff1                	bnez	a5,1c00c192 <pos_libc_prf+0xd46>
1c00c1b8:	b2ad                	j	1c00bb22 <pos_libc_prf+0x6d6>
1c00c1ba:	0c800793          	li	a5,200
1c00c1be:	df37d0e3          	bge	a5,s3,1c00bf9e <pos_libc_prf+0xb52>
1c00c1c2:	547d                	li	s0,-1
1c00c1c4:	b02ff06f          	j	1c00b4c6 <pos_libc_prf+0x7a>
1c00c1c8:	864e                	mv	a2,s3
1c00c1ca:	1048                	addi	a0,sp,36
1c00c1cc:	fc5fe0ef          	jal	ra,1c00b190 <memcpy>
1c00c1d0:	b3f9                	j	1c00bf9e <pos_libc_prf+0xb52>
1c00c1d2:	47f2                	lw	a5,28(sp)
1c00c1d4:	4601                	li	a2,0
1c00c1d6:	e399                	bnez	a5,1c00c1dc <pos_libc_prf+0xd90>
1c00c1d8:	01503633          	snez	a2,s5
1c00c1dc:	57f5                	li	a5,-3
1c00c1de:	001a8813          	addi	a6,s5,1
1c00c1e2:	00f34463          	blt	t1,a5,1c00c1ea <pos_libc_prf+0xd9e>
1c00c1e6:	04685163          	bge	a6,t1,1c00c228 <pos_libc_prf+0xddc>
1c00c1ea:	47c1                	li	a5,16
1c00c1ec:	0107d363          	bge	a5,a6,1c00c1f2 <pos_libc_prf+0xda6>
1c00c1f0:	4841                	li	a6,16
1c00c1f2:	06700793          	li	a5,103
1c00c1f6:	187d                	addi	a6,a6,-1
1c00c1f8:	02fd8363          	beq	s11,a5,1c00c21e <pos_libc_prf+0xdd2>
1c00c1fc:	04500d93          	li	s11,69
1c00c200:	d70ff06f          	j	1c00b770 <pos_libc_prf+0x324>
1c00c204:	4a99                	li	s5,6
1c00c206:	d4fd9563          	bne	s11,a5,1c00b750 <pos_libc_prf+0x304>
1c00c20a:	4772                	lw	a4,28(sp)
1c00c20c:	4605                	li	a2,1
1c00c20e:	57f5                	li	a5,-3
1c00c210:	8e19                	sub	a2,a2,a4
1c00c212:	00f34563          	blt	t1,a5,1c00c21c <pos_libc_prf+0xdd0>
1c00c216:	479d                	li	a5,7
1c00c218:	0067d863          	bge	a5,t1,1c00c228 <pos_libc_prf+0xddc>
1c00c21c:	4819                	li	a6,6
1c00c21e:	06500d93          	li	s11,101
1c00c222:	d4eff06f          	j	1c00b770 <pos_libc_prf+0x324>
1c00c226:	4601                	li	a2,0
1c00c228:	006a8833          	add	a6,s5,t1
1c00c22c:	0b005b63          	blez	a6,1c00c2e2 <pos_libc_prf+0xe96>
1c00c230:	47c1                	li	a5,16
1c00c232:	0107d363          	bge	a5,a6,1c00c238 <pos_libc_prf+0xdec>
1c00c236:	4841                	li	a6,16
1c00c238:	187d                	addi	a6,a6,-1
1c00c23a:	06600d93          	li	s11,102
1c00c23e:	d32ff06f          	j	1c00b770 <pos_libc_prf+0x324>
1c00c242:	4792                	lw	a5,4(sp)
1c00c244:	1054                	addi	a3,sp,36
1c00c246:	c40780e3          	beqz	a5,1c00be86 <pos_libc_prf+0xa3a>
1c00c24a:	02000793          	li	a5,32
1c00c24e:	02f10223          	sb	a5,36(sp)
1c00c252:	02510693          	addi	a3,sp,37
1c00c256:	b905                	j	1c00be86 <pos_libc_prf+0xa3a>
1c00c258:	ffc80fa3          	sb	t3,-1(a6)
1c00c25c:	b30986e3          	beq	s3,a6,1c00bd88 <pos_libc_prf+0x93c>
1c00c260:	0805                	addi	a6,a6,1
1c00c262:	b4d5                	j	1c00bd46 <pos_libc_prf+0x8fa>
1c00c264:	ffe80fa3          	sb	t5,-1(a6)
1c00c268:	0305                	addi	t1,t1,1
1c00c26a:	b679                	j	1c00bdf8 <pos_libc_prf+0x9ac>
1c00c26c:	020102a3          	sb	zero,37(sp)
1c00c270:	57fd                	li	a5,-1
1c00c272:	0cfa8263          	beq	s5,a5,1c00c336 <pos_libc_prf+0xeea>
1c00c276:	4785                	li	a5,1
1c00c278:	0b47c063          	blt	a5,s4,1c00c318 <pos_libc_prf+0xecc>
1c00c27c:	4a72                	lw	s4,28(sp)
1c00c27e:	c65a                	sw	s6,12(sp)
1c00c280:	bcad                	j	1c00bcfa <pos_libc_prf+0x8ae>
1c00c282:	8636                	mv	a2,a3
1c00c284:	b04ff06f          	j	1c00b588 <pos_libc_prf+0x13c>
1c00c288:	4712                	lw	a4,4(sp)
1c00c28a:	c77d                	beqz	a4,1c00c378 <pos_libc_prf+0xf2c>
1c00c28c:	02000693          	li	a3,32
1c00c290:	02d10223          	sb	a3,36(sp)
1c00c294:	4301                	li	t1,0
1c00c296:	4801                	li	a6,0
1c00c298:	02510f13          	addi	t5,sp,37
1c00c29c:	c82ff06f          	j	1c00b71e <pos_libc_prf+0x2d2>
1c00c2a0:	02d00693          	li	a3,45
1c00c2a4:	02d10223          	sb	a3,36(sp)
1c00c2a8:	02510f13          	addi	t5,sp,37
1c00c2ac:	b9cff06f          	j	1c00b648 <pos_libc_prf+0x1fc>
1c00c2b0:	0c800613          	li	a2,200
1c00c2b4:	960ad6e3          	bgez	s5,1c00bc20 <pos_libc_prf+0x7d4>
1c00c2b8:	bf09                	j	1c00c1ca <pos_libc_prf+0xd7e>
1c00c2ba:	80000637          	lui	a2,0x80000
1c00c2be:	02510693          	addi	a3,sp,37
1c00c2c2:	b6d1                	j	1c00be86 <pos_libc_prf+0xa3a>
1c00c2c4:	ce02                	sw	zero,28(sp)
1c00c2c6:	bb5d                	j	1c00c07c <pos_libc_prf+0xc30>
1c00c2c8:	4712                	lw	a4,4(sp)
1c00c2ca:	02410f13          	addi	t5,sp,36
1c00c2ce:	b6070d63          	beqz	a4,1c00b648 <pos_libc_prf+0x1fc>
1c00c2d2:	02000693          	li	a3,32
1c00c2d6:	02d10223          	sb	a3,36(sp)
1c00c2da:	02510f13          	addi	t5,sp,37
1c00c2de:	b6aff06f          	j	1c00b648 <pos_libc_prf+0x1fc>
1c00c2e2:	06600d93          	li	s11,102
1c00c2e6:	4781                	li	a5,0
1c00c2e8:	080006b7          	lui	a3,0x8000
1c00c2ec:	ce8ff06f          	j	1c00b7d4 <pos_libc_prf+0x388>
1c00c2f0:	06b6e363          	bltu	a3,a1,1c00c356 <pos_libc_prf+0xf0a>
1c00c2f4:	04e00693          	li	a3,78
1c00c2f8:	04100613          	li	a2,65
1c00c2fc:	00d78023          	sb	a3,0(a5)
1c00c300:	00c780a3          	sb	a2,1(a5)
1c00c304:	00d78123          	sb	a3,2(a5)
1c00c308:	f44ff06f          	j	1c00ba4c <pos_libc_prf+0x600>
1c00c30c:	03000693          	li	a3,48
1c00c310:	00df0023          	sb	a3,0(t5)
1c00c314:	4541                	li	a0,16
1c00c316:	bc95                	j	1c00bd8a <pos_libc_prf+0x93e>
1c00c318:	4982                	lw	s3,0(sp)
1c00c31a:	860992e3          	bnez	s3,1c00bb7e <pos_libc_prf+0x732>
1c00c31e:	104c                	addi	a1,sp,36
1c00c320:	fffa0993          	addi	s3,s4,-1
1c00c324:	4609                	li	a2,2
1c00c326:	01358533          	add	a0,a1,s3
1c00c32a:	f3dfe0ef          	jal	ra,1c00b266 <memmove>
1c00c32e:	02000913          	li	s2,32
1c00c332:	ce02                	sw	zero,28(sp)
1c00c334:	b3b9                	j	1c00c082 <pos_libc_prf+0xc36>
1c00c336:	49f2                	lw	s3,28(sp)
1c00c338:	b19d                	j	1c00bf9e <pos_libc_prf+0xb52>
1c00c33a:	06900693          	li	a3,105
1c00c33e:	00d78023          	sb	a3,0(a5)
1c00c342:	06e00693          	li	a3,110
1c00c346:	00d780a3          	sb	a3,1(a5)
1c00c34a:	06600693          	li	a3,102
1c00c34e:	00d78123          	sb	a3,2(a5)
1c00c352:	efaff06f          	j	1c00ba4c <pos_libc_prf+0x600>
1c00c356:	06e00693          	li	a3,110
1c00c35a:	06100613          	li	a2,97
1c00c35e:	00d78023          	sb	a3,0(a5)
1c00c362:	00c780a3          	sb	a2,1(a5)
1c00c366:	00d78123          	sb	a3,2(a5)
1c00c36a:	ee2ff06f          	j	1c00ba4c <pos_libc_prf+0x600>
1c00c36e:	89f6                	mv	s3,t4
1c00c370:	a8061ae3          	bnez	a2,1c00be04 <pos_libc_prf+0x9b8>
1c00c374:	da8ff06f          	j	1c00b91c <pos_libc_prf+0x4d0>
1c00c378:	4301                	li	t1,0
1c00c37a:	4801                	li	a6,0
1c00c37c:	02410f13          	addi	t5,sp,36
1c00c380:	b9eff06f          	j	1c00b71e <pos_libc_prf+0x2d2>

1c00c384 <pos_init_start>:
1c00c384:	1141                	addi	sp,sp,-16
1c00c386:	c422                	sw	s0,8(sp)
1c00c388:	1c000437          	lui	s0,0x1c000
1c00c38c:	c606                	sw	ra,12(sp)
1c00c38e:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00c392:	8f9fc0ef          	jal	ra,1c008c8a <pos_soc_init>
1c00c396:	2a75                	jal	1c00c552 <pos_irq_init>
1c00c398:	22e5                	jal	1c00c580 <pos_soc_event_init>
1c00c39a:	2225                	jal	1c00c4c2 <pos_allocs_init>
1c00c39c:	405c                	lw	a5,4(s0)
1c00c39e:	c791                	beqz	a5,1c00c3aa <pos_init_start+0x26>
1c00c3a0:	0411                	addi	s0,s0,4
1c00c3a2:	0411                	addi	s0,s0,4
1c00c3a4:	9782                	jalr	a5
1c00c3a6:	401c                	lw	a5,0(s0)
1c00c3a8:	ffed                	bnez	a5,1c00c3a2 <pos_init_start+0x1e>
1c00c3aa:	86cff0ef          	jal	ra,1c00b416 <pos_io_start>
1c00c3ae:	300467f3          	csrrsi	a5,mstatus,8
1c00c3b2:	40b2                	lw	ra,12(sp)
1c00c3b4:	4422                	lw	s0,8(sp)
1c00c3b6:	0141                	addi	sp,sp,16
1c00c3b8:	8082                	ret

1c00c3ba <pos_init_stop>:
1c00c3ba:	1141                	addi	sp,sp,-16
1c00c3bc:	c422                	sw	s0,8(sp)
1c00c3be:	1c000437          	lui	s0,0x1c000
1c00c3c2:	c606                	sw	ra,12(sp)
1c00c3c4:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00c3c8:	852ff0ef          	jal	ra,1c00b41a <pos_io_stop>
1c00c3cc:	405c                	lw	a5,4(s0)
1c00c3ce:	c791                	beqz	a5,1c00c3da <pos_init_stop+0x20>
1c00c3d0:	0411                	addi	s0,s0,4
1c00c3d2:	0411                	addi	s0,s0,4
1c00c3d4:	9782                	jalr	a5
1c00c3d6:	401c                	lw	a5,0(s0)
1c00c3d8:	ffed                	bnez	a5,1c00c3d2 <pos_init_stop+0x18>
1c00c3da:	40b2                	lw	ra,12(sp)
1c00c3dc:	4422                	lw	s0,8(sp)
1c00c3de:	0141                	addi	sp,sp,16
1c00c3e0:	8082                	ret

1c00c3e2 <pos_alloc_init>:
1c00c3e2:	00758793          	addi	a5,a1,7
1c00c3e6:	9be1                	andi	a5,a5,-8
1c00c3e8:	40b785b3          	sub	a1,a5,a1
1c00c3ec:	c11c                	sw	a5,0(a0)
1c00c3ee:	40b605b3          	sub	a1,a2,a1
1c00c3f2:	00b05663          	blez	a1,1c00c3fe <pos_alloc_init+0x1c>
1c00c3f6:	99e1                	andi	a1,a1,-8
1c00c3f8:	c38c                	sw	a1,0(a5)
1c00c3fa:	0007a223          	sw	zero,4(a5)
1c00c3fe:	8082                	ret

1c00c400 <pos_alloc>:
1c00c400:	411c                	lw	a5,0(a0)
1c00c402:	00758713          	addi	a4,a1,7
1c00c406:	862a                	mv	a2,a0
1c00c408:	ff877593          	andi	a1,a4,-8
1c00c40c:	4681                	li	a3,0
1c00c40e:	e789                	bnez	a5,1c00c418 <pos_alloc+0x18>
1c00c410:	a091                	j	1c00c454 <pos_alloc+0x54>
1c00c412:	86be                	mv	a3,a5
1c00c414:	c505                	beqz	a0,1c00c43c <pos_alloc+0x3c>
1c00c416:	87aa                	mv	a5,a0
1c00c418:	4398                	lw	a4,0(a5)
1c00c41a:	43c8                	lw	a0,4(a5)
1c00c41c:	feb74be3          	blt	a4,a1,1c00c412 <pos_alloc+0x12>
1c00c420:	00b70f63          	beq	a4,a1,1c00c43e <pos_alloc+0x3e>
1c00c424:	00b78833          	add	a6,a5,a1
1c00c428:	8f0d                	sub	a4,a4,a1
1c00c42a:	00e82023          	sw	a4,0(a6)
1c00c42e:	00a82223          	sw	a0,4(a6)
1c00c432:	ca91                	beqz	a3,1c00c446 <pos_alloc+0x46>
1c00c434:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00c438:	853e                	mv	a0,a5
1c00c43a:	8082                	ret
1c00c43c:	8082                	ret
1c00c43e:	ca81                	beqz	a3,1c00c44e <pos_alloc+0x4e>
1c00c440:	c2c8                	sw	a0,4(a3)
1c00c442:	853e                	mv	a0,a5
1c00c444:	8082                	ret
1c00c446:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00c44a:	853e                	mv	a0,a5
1c00c44c:	8082                	ret
1c00c44e:	c208                	sw	a0,0(a2)
1c00c450:	853e                	mv	a0,a5
1c00c452:	8082                	ret
1c00c454:	4501                	li	a0,0
1c00c456:	8082                	ret

1c00c458 <pos_free>:
1c00c458:	411c                	lw	a5,0(a0)
1c00c45a:	061d                	addi	a2,a2,7
1c00c45c:	9a61                	andi	a2,a2,-8
1c00c45e:	c7a1                	beqz	a5,1c00c4a6 <pos_free+0x4e>
1c00c460:	00b7e563          	bltu	a5,a1,1c00c46a <pos_free+0x12>
1c00c464:	a089                	j	1c00c4a6 <pos_free+0x4e>
1c00c466:	00b7f563          	bgeu	a5,a1,1c00c470 <pos_free+0x18>
1c00c46a:	873e                	mv	a4,a5
1c00c46c:	43dc                	lw	a5,4(a5)
1c00c46e:	ffe5                	bnez	a5,1c00c466 <pos_free+0xe>
1c00c470:	00c586b3          	add	a3,a1,a2
1c00c474:	00d78b63          	beq	a5,a3,1c00c48a <pos_free+0x32>
1c00c478:	c190                	sw	a2,0(a1)
1c00c47a:	4314                	lw	a3,0(a4)
1c00c47c:	c1dc                	sw	a5,4(a1)
1c00c47e:	00d70533          	add	a0,a4,a3
1c00c482:	00a58e63          	beq	a1,a0,1c00c49e <pos_free+0x46>
1c00c486:	c34c                	sw	a1,4(a4)
1c00c488:	8082                	ret
1c00c48a:	4394                	lw	a3,0(a5)
1c00c48c:	43dc                	lw	a5,4(a5)
1c00c48e:	9636                	add	a2,a2,a3
1c00c490:	c190                	sw	a2,0(a1)
1c00c492:	4314                	lw	a3,0(a4)
1c00c494:	c1dc                	sw	a5,4(a1)
1c00c496:	00d70533          	add	a0,a4,a3
1c00c49a:	fea596e3          	bne	a1,a0,1c00c486 <pos_free+0x2e>
1c00c49e:	9636                	add	a2,a2,a3
1c00c4a0:	c310                	sw	a2,0(a4)
1c00c4a2:	c35c                	sw	a5,4(a4)
1c00c4a4:	8082                	ret
1c00c4a6:	00c58733          	add	a4,a1,a2
1c00c4aa:	00e78663          	beq	a5,a4,1c00c4b6 <pos_free+0x5e>
1c00c4ae:	c1dc                	sw	a5,4(a1)
1c00c4b0:	c190                	sw	a2,0(a1)
1c00c4b2:	c10c                	sw	a1,0(a0)
1c00c4b4:	8082                	ret
1c00c4b6:	4398                	lw	a4,0(a5)
1c00c4b8:	43dc                	lw	a5,4(a5)
1c00c4ba:	963a                	add	a2,a2,a4
1c00c4bc:	c1dc                	sw	a5,4(a1)
1c00c4be:	c190                	sw	a2,0(a1)
1c00c4c0:	bfcd                	j	1c00c4b2 <pos_free+0x5a>

1c00c4c2 <pos_allocs_init>:
1c00c4c2:	1c0065b7          	lui	a1,0x1c006
1c00c4c6:	1141                	addi	sp,sp,-16
1c00c4c8:	2d858613          	addi	a2,a1,728 # 1c0062d8 <__l2_priv0_end>
1c00c4cc:	1c0087b7          	lui	a5,0x1c008
1c00c4d0:	c606                	sw	ra,12(sp)
1c00c4d2:	2d858593          	addi	a1,a1,728
1c00c4d6:	40c78633          	sub	a2,a5,a2
1c00c4da:	04f5d863          	bge	a1,a5,1c00c52a <pos_allocs_init+0x68>
1c00c4de:	1c006537          	lui	a0,0x1c006
1c00c4e2:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00c4e6:	3df5                	jal	1c00c3e2 <pos_alloc_init>
1c00c4e8:	1c00c5b7          	lui	a1,0x1c00c
1c00c4ec:	59858613          	addi	a2,a1,1432 # 1c00c598 <__l2_priv1_end>
1c00c4f0:	1c0107b7          	lui	a5,0x1c010
1c00c4f4:	59858593          	addi	a1,a1,1432
1c00c4f8:	40c78633          	sub	a2,a5,a2
1c00c4fc:	02f5da63          	bge	a1,a5,1c00c530 <pos_allocs_init+0x6e>
1c00c500:	1c006537          	lui	a0,0x1c006
1c00c504:	2d050513          	addi	a0,a0,720 # 1c0062d0 <pos_alloc_l2+0x4>
1c00c508:	3de9                	jal	1c00c3e2 <pos_alloc_init>
1c00c50a:	40b2                	lw	ra,12(sp)
1c00c50c:	1c0105b7          	lui	a1,0x1c010
1c00c510:	00058793          	mv	a5,a1
1c00c514:	1c080637          	lui	a2,0x1c080
1c00c518:	1c006537          	lui	a0,0x1c006
1c00c51c:	8e1d                	sub	a2,a2,a5
1c00c51e:	00058593          	mv	a1,a1
1c00c522:	2d450513          	addi	a0,a0,724 # 1c0062d4 <pos_alloc_l2+0x8>
1c00c526:	0141                	addi	sp,sp,16
1c00c528:	bd6d                	j	1c00c3e2 <pos_alloc_init>
1c00c52a:	4581                	li	a1,0
1c00c52c:	4601                	li	a2,0
1c00c52e:	bf45                	j	1c00c4de <pos_allocs_init+0x1c>
1c00c530:	4581                	li	a1,0
1c00c532:	4601                	li	a2,0
1c00c534:	b7f1                	j	1c00c500 <pos_allocs_init+0x3e>

1c00c536 <pi_l2_malloc>:
1c00c536:	85aa                	mv	a1,a0
1c00c538:	1c006537          	lui	a0,0x1c006
1c00c53c:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00c540:	b5c1                	j	1c00c400 <pos_alloc>

1c00c542 <pi_l2_free>:
1c00c542:	862e                	mv	a2,a1
1c00c544:	85aa                	mv	a1,a0
1c00c546:	1c006537          	lui	a0,0x1c006
1c00c54a:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00c54e:	b729                	j	1c00c458 <pos_free>

1c00c550 <__rt_handle_illegal_instr>:
1c00c550:	8082                	ret

1c00c552 <pos_irq_init>:
1c00c552:	1a10a737          	lui	a4,0x1a10a
1c00c556:	56fd                	li	a3,-1
1c00c558:	f14027f3          	csrr	a5,mhartid
1c00c55c:	8795                	srai	a5,a5,0x5
1c00c55e:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00c562:	03f7f793          	andi	a5,a5,63
1c00c566:	477d                	li	a4,31
1c00c568:	00e78363          	beq	a5,a4,1c00c56e <pos_irq_init+0x1c>
1c00c56c:	8082                	ret
1c00c56e:	1c0087b7          	lui	a5,0x1c008
1c00c572:	00078793          	mv	a5,a5
1c00c576:	0017e793          	ori	a5,a5,1
1c00c57a:	30579073          	csrw	mtvec,a5
1c00c57e:	8082                	ret

1c00c580 <pos_soc_event_init>:
1c00c580:	1a1067b7          	lui	a5,0x1a106
1c00c584:	577d                	li	a4,-1
1c00c586:	c3d8                	sw	a4,4(a5)
1c00c588:	c798                	sw	a4,8(a5)
1c00c58a:	c7d8                	sw	a4,12(a5)
1c00c58c:	cb98                	sw	a4,16(a5)
1c00c58e:	cbd8                	sw	a4,20(a5)
1c00c590:	cf98                	sw	a4,24(a5)
1c00c592:	cfd8                	sw	a4,28(a5)
1c00c594:	d398                	sw	a4,32(a5)
1c00c596:	8082                	ret
