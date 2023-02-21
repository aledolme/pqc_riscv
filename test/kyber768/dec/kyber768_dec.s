riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber768/dec/build/dec/dec

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber768/dec/build/dec/dec:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	4e90606f          	j	1c00ece8 <__rt_handle_illegal_instr>
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
1c008084:	4650606f          	j	1c00ece8 <__rt_handle_illegal_instr>

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
1c0080c4:	1a028293          	addi	t0,t0,416 # 1c006260 <stack>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	1bc30313          	addi	t1,t1,444 # 1c006284 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	18610113          	addi	sp,sp,390 # 1c006260 <stack>
1c0080e2:	24b060ef          	jal	ra,1c00eb2c <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	267060ef          	jal	ra,1c00eb62 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	27f050ef          	jal	ra,1c00db80 <exit>

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
1c008146:	b465d7b7          	lui	a5,0xb465d
1c00814a:	7e112623          	sw	ra,2028(sp)
1c00814e:	7e812423          	sw	s0,2024(sp)
1c008152:	7e912223          	sw	s1,2020(sp)
1c008156:	7f212023          	sw	s2,2016(sp)
1c00815a:	7d312e23          	sw	s3,2012(sp)
1c00815e:	7ee78793          	addi	a5,a5,2030 # b465d7ee <pulp__FC+0xb465d7ef>
1c008162:	9f010113          	addi	sp,sp,-1552
1c008166:	d03e                	sw	a5,32(sp)
1c008168:	94b167b7          	lui	a5,0x94b16
1c00816c:	ced78793          	addi	a5,a5,-787 # 94b15ced <pulp__FC+0x94b15cee>
1c008170:	d23e                	sw	a5,36(sp)
1c008172:	70b8d7b7          	lui	a5,0x70b8d
1c008176:	ed878793          	addi	a5,a5,-296 # 70b8ced8 <__l2_shared_end+0x54b7ced8>
1c00817a:	d43e                	sw	a5,40(sp)
1c00817c:	f13e57b7          	lui	a5,0xf13e5
1c008180:	02578793          	addi	a5,a5,37 # f13e5025 <pulp__FC+0xf13e5026>
1c008184:	d63e                	sw	a5,44(sp)
1c008186:	19e717b7          	lui	a5,0x19e71
1c00818a:	f6a78793          	addi	a5,a5,-150 # 19e70f6a <__CTOR_LIST__-0x218f09a>
1c00818e:	d83e                	sw	a5,48(sp)
1c008190:	846dd7b7          	lui	a5,0x846dd
1c008194:	acb78793          	addi	a5,a5,-1333 # 846dcacb <pulp__FC+0x846dcacc>
1c008198:	da3e                	sw	a5,52(sp)
1c00819a:	c2e1c7b7          	lui	a5,0xc2e1c
1c00819e:	29d78793          	addi	a5,a5,669 # c2e1c29d <pulp__FC+0xc2e1c29e>
1c0081a2:	dc3e                	sw	a5,56(sp)
1c0081a4:	0d9c47b7          	lui	a5,0xd9c4
1c0081a8:	61678793          	addi	a5,a5,1558 # d9c4616 <__CTOR_LIST__-0xe63b9ee>
1c0081ac:	de3e                	sw	a5,60(sp)
1c0081ae:	d61367b7          	lui	a5,0xd6136
1c0081b2:	9ac78793          	addi	a5,a5,-1620 # d61359ac <pulp__FC+0xd61359ad>
1c0081b6:	c0be                	sw	a5,64(sp)
1c0081b8:	319b87b7          	lui	a5,0x319b8
1c0081bc:	cb378793          	addi	a5,a5,-845 # 319b7cb3 <__l2_shared_end+0x159a7cb3>
1c0081c0:	c2be                	sw	a5,68(sp)
1c0081c2:	b93db7b7          	lui	a5,0xb93db
1c0081c6:	d6878793          	addi	a5,a5,-664 # b93dad68 <pulp__FC+0xb93dad69>
1c0081ca:	c4be                	sw	a5,72(sp)
1c0081cc:	3b0547b7          	lui	a5,0x3b054
1c0081d0:	9c878793          	addi	a5,a5,-1592 # 3b0539c8 <__l2_shared_end+0x1f0439c8>
1c0081d4:	c6be                	sw	a5,76(sp)
1c0081d6:	a491f7b7          	lui	a5,0xa491f
1c0081da:	45b78793          	addi	a5,a5,1115 # a491f45b <pulp__FC+0xa491f45c>
1c0081de:	c8be                	sw	a5,80(sp)
1c0081e0:	d61787b7          	lui	a5,0xd6178
1c0081e4:	da178793          	addi	a5,a5,-607 # d6177da1 <pulp__FC+0xd6177da2>
1c0081e8:	cabe                	sw	a5,84(sp)
1c0081ea:	ac4b47b7          	lui	a5,0xac4b4
1c0081ee:	88578793          	addi	a5,a5,-1915 # ac4b3885 <pulp__FC+0xac4b3886>
1c0081f2:	ccbe                	sw	a5,88(sp)
1c0081f4:	ef11e7b7          	lui	a5,0xef11e
1c0081f8:	eee78793          	addi	a5,a5,-274 # ef11deee <pulp__FC+0xef11deef>
1c0081fc:	cebe                	sw	a5,92(sp)
1c0081fe:	c058e7b7          	lui	a5,0xc058e
1c008202:	ec078793          	addi	a5,a5,-320 # c058dec0 <pulp__FC+0xc058dec1>
1c008206:	d0be                	sw	a5,96(sp)
1c008208:	a5e4c7b7          	lui	a5,0xa5e4c
1c00820c:	5a678793          	addi	a5,a5,1446 # a5e4c5a6 <pulp__FC+0xa5e4c5a7>
1c008210:	d2be                	sw	a5,100(sp)
1c008212:	ea30e7b7          	lui	a5,0xea30e
1c008216:	98b78793          	addi	a5,a5,-1653 # ea30d98b <pulp__FC+0xea30d98c>
1c00821a:	d4be                	sw	a5,104(sp)
1c00821c:	4d2a17b7          	lui	a5,0x4d2a1
1c008220:	87178793          	addi	a5,a5,-1935 # 4d2a0871 <__l2_shared_end+0x31290871>
1c008224:	d6be                	sw	a5,108(sp)
1c008226:	a91537b7          	lui	a5,0xa9153
1c00822a:	fb778793          	addi	a5,a5,-73 # a9152fb7 <pulp__FC+0xa9152fb8>
1c00822e:	d8be                	sw	a5,112(sp)
1c008230:	7bd7c7b7          	lui	a5,0x7bd7c
1c008234:	f3178793          	addi	a5,a5,-207 # 7bd7bf31 <__l2_shared_end+0x5fd6bf31>
1c008238:	dabe                	sw	a5,116(sp)
1c00823a:	3d9b57b7          	lui	a5,0x3d9b5
1c00823e:	cbf78793          	addi	a5,a5,-833 # 3d9b4cbf <__l2_shared_end+0x219a4cbf>
1c008242:	dcbe                	sw	a5,120(sp)
1c008244:	d780d7b7          	lui	a5,0xd780d
1c008248:	5eb78793          	addi	a5,a5,1515 # d780d5eb <pulp__FC+0xd780d5ec>
1c00824c:	debe                	sw	a5,124(sp)
1c00824e:	f0c217b7          	lui	a5,0xf0c21
1c008252:	09078793          	addi	a5,a5,144 # f0c21090 <pulp__FC+0xf0c21091>
1c008256:	c13e                	sw	a5,128(sp)
1c008258:	b97337b7          	lui	a5,0xb9733
1c00825c:	e9f78793          	addi	a5,a5,-353 # b9732e9f <pulp__FC+0xb9732ea0>
1c008260:	c33e                	sw	a5,132(sp)
1c008262:	8f4057b7          	lui	a5,0x8f405
1c008266:	12078793          	addi	a5,a5,288 # 8f405120 <pulp__FC+0x8f405121>
1c00826a:	c53e                	sw	a5,136(sp)
1c00826c:	341d77b7          	lui	a5,0x341d7
1c008270:	b0778793          	addi	a5,a5,-1273 # 341d6b07 <__l2_shared_end+0x181c6b07>
1c008274:	c73e                	sw	a5,140(sp)
1c008276:	f2f527b7          	lui	a5,0xf2f52
1c00827a:	1c578793          	addi	a5,a5,453 # f2f521c5 <pulp__FC+0xf2f521c6>
1c00827e:	c93e                	sw	a5,144(sp)
1c008280:	c78ec7b7          	lui	a5,0xc78ec
1c008284:	e5f78793          	addi	a5,a5,-417 # c78ebe5f <pulp__FC+0xc78ebe60>
1c008288:	cb3e                	sw	a5,148(sp)
1c00828a:	fa07a7b7          	lui	a5,0xfa07a
1c00828e:	d5178793          	addi	a5,a5,-687 # fa079d51 <pulp__FC+0xfa079d52>
1c008292:	cd3e                	sw	a5,152(sp)
1c008294:	5e3ee7b7          	lui	a5,0x5e3ee
1c008298:	f8378793          	addi	a5,a5,-125 # 5e3edf83 <__l2_shared_end+0x423ddf83>
1c00829c:	cf3e                	sw	a5,156(sp)
1c00829e:	d6c8a7b7          	lui	a5,0xd6c8a
1c0082a2:	59078793          	addi	a5,a5,1424 # d6c8a590 <pulp__FC+0xd6c8a591>
1c0082a6:	d13e                	sw	a5,160(sp)
1c0082a8:	94d597b7          	lui	a5,0x94d59
1c0082ac:	0c178793          	addi	a5,a5,193 # 94d590c1 <pulp__FC+0x94d590c2>
1c0082b0:	d33e                	sw	a5,164(sp)
1c0082b2:	8471b7b7          	lui	a5,0x8471b
1c0082b6:	db378793          	addi	a5,a5,-589 # 8471adb3 <pulp__FC+0x8471adb4>
1c0082ba:	d53e                	sw	a5,168(sp)
1c0082bc:	a4adc7b7          	lui	a5,0xa4adc
1c0082c0:	8c278793          	addi	a5,a5,-1854 # a4adb8c2 <pulp__FC+0xa4adb8c3>
1c0082c4:	d73e                	sw	a5,172(sp)
1c0082c6:	e58b37b7          	lui	a5,0xe58b3
1c0082ca:	2c878793          	addi	a5,a5,712 # e58b32c8 <pulp__FC+0xe58b32c9>
1c0082ce:	d93e                	sw	a5,176(sp)
1c0082d0:	be3f67b7          	lui	a5,0xbe3f6
1c0082d4:	03478793          	addi	a5,a5,52 # be3f6034 <pulp__FC+0xbe3f6035>
1c0082d8:	db3e                	sw	a5,180(sp)
1c0082da:	7b0c07b7          	lui	a5,0x7b0c0
1c0082de:	d9978793          	addi	a5,a5,-615 # 7b0bfd99 <__l2_shared_end+0x5f0afd99>
1c0082e2:	dd3e                	sw	a5,184(sp)
1c0082e4:	d02457b7          	lui	a5,0xd0245
1c0082e8:	b6e78793          	addi	a5,a5,-1170 # d0244b6e <pulp__FC+0xd0244b6f>
1c0082ec:	df3e                	sw	a5,188(sp)
1c0082ee:	0abb97b7          	lui	a5,0xabb9
1c0082f2:	18d78793          	addi	a5,a5,397 # abb918d <__CTOR_LIST__-0x11446e77>
1c0082f6:	c1be                	sw	a5,192(sp)
1c0082f8:	ec1767b7          	lui	a5,0xec176
1c0082fc:	3ae78793          	addi	a5,a5,942 # ec1763ae <pulp__FC+0xec1763af>
1c008300:	c3be                	sw	a5,196(sp)
1c008302:	6c70b7b7          	lui	a5,0x6c70b
1c008306:	1e178793          	addi	a5,a5,481 # 6c70b1e1 <__l2_shared_end+0x506fb1e1>
1c00830a:	c5be                	sw	a5,200(sp)
1c00830c:	f54157b7          	lui	a5,0xf5415
1c008310:	65678793          	addi	a5,a5,1622 # f5415656 <pulp__FC+0xf5415657>
1c008314:	c7be                	sw	a5,204(sp)
1c008316:	619dd7b7          	lui	a5,0x619dd
1c00831a:	23d78793          	addi	a5,a5,573 # 619dd23d <__l2_shared_end+0x459cd23d>
1c00831e:	c9be                	sw	a5,208(sp)
1c008320:	9539a7b7          	lui	a5,0x9539a
1c008324:	51178793          	addi	a5,a5,1297 # 9539a511 <pulp__FC+0x9539a512>
1c008328:	cbbe                	sw	a5,212(sp)
1c00832a:	06d567b7          	lui	a5,0x6d56
1c00832e:	7fe78793          	addi	a5,a5,2046 # 6d567fe <__CTOR_LIST__-0x152a9806>
1c008332:	cdbe                	sw	a5,216(sp)
1c008334:	d91887b7          	lui	a5,0xd9188
1c008338:	b4c78793          	addi	a5,a5,-1204 # d9187b4c <pulp__FC+0xd9187b4d>
1c00833c:	cfbe                	sw	a5,220(sp)
1c00833e:	25aad7b7          	lui	a5,0x25aad
1c008342:	32c78793          	addi	a5,a5,812 # 25aad32c <__l2_shared_end+0x9a9d32c>
1c008346:	d1be                	sw	a5,224(sp)
1c008348:	b3b147b7          	lui	a5,0xb3b14
1c00834c:	a2278793          	addi	a5,a5,-1502 # b3b13a22 <pulp__FC+0xb3b13a23>
1c008350:	d3be                	sw	a5,228(sp)
1c008352:	24a8f7b7          	lui	a5,0x24a8f
1c008356:	8c978793          	addi	a5,a5,-1847 # 24a8e8c9 <__l2_shared_end+0x8a7e8c9>
1c00835a:	d5be                	sw	a5,232(sp)
1c00835c:	2c1667b7          	lui	a5,0x2c166
1c008360:	18678793          	addi	a5,a5,390 # 2c166186 <__l2_shared_end+0x10156186>
1c008364:	d7be                	sw	a5,236(sp)
1c008366:	c5c277b7          	lui	a5,0xc5c27
1c00836a:	bf578793          	addi	a5,a5,-1035 # c5c26bf5 <pulp__FC+0xc5c26bf6>
1c00836e:	d9be                	sw	a5,240(sp)
1c008370:	120fa7b7          	lui	a5,0x120fa
1c008374:	4e178793          	addi	a5,a5,1249 # 120fa4e1 <__CTOR_LIST__-0x9f05b23>
1c008378:	dbbe                	sw	a5,244(sp)
1c00837a:	fe1887b7          	lui	a5,0xfe188
1c00837e:	56d78793          	addi	a5,a5,1389 # fe18856d <pulp__FC+0xfe18856e>
1c008382:	ddbe                	sw	a5,248(sp)
1c008384:	94e2e7b7          	lui	a5,0x94e2e
1c008388:	55f78793          	addi	a5,a5,1375 # 94e2e55f <pulp__FC+0x94e2e560>
1c00838c:	dfbe                	sw	a5,252(sp)
1c00838e:	70e077b7          	lui	a5,0x70e07
1c008392:	61578793          	addi	a5,a5,1557 # 70e07615 <__l2_shared_end+0x54df7615>
1c008396:	10f12023          	sw	a5,256(sp)
1c00839a:	2f3de7b7          	lui	a5,0x2f3de
1c00839e:	bbb78793          	addi	a5,a5,-1093 # 2f3ddbbb <__l2_shared_end+0x133cdbbb>
1c0083a2:	10f12223          	sw	a5,260(sp)
1c0083a6:	4c09e7b7          	lui	a5,0x4c09e
1c0083aa:	17cd                	addi	a5,a5,-13
1c0083ac:	10f12423          	sw	a5,264(sp)
1c0083b0:	18c3d7b7          	lui	a5,0x18c3d
1c0083b4:	c2f78793          	addi	a5,a5,-977 # 18c3cc2f <__CTOR_LIST__-0x33c33d5>
1c0083b8:	10f12623          	sw	a5,268(sp)
1c0083bc:	85efd7b7          	lui	a5,0x85efd
1c0083c0:	21f78793          	addi	a5,a5,543 # 85efd21f <pulp__FC+0x85efd220>
1c0083c4:	10f12823          	sw	a5,272(sp)
1c0083c8:	8aa987b7          	lui	a5,0x8aa98
1c0083cc:	b8878793          	addi	a5,a5,-1144 # 8aa97b88 <pulp__FC+0x8aa97b89>
1c0083d0:	10f12a23          	sw	a5,276(sp)
1c0083d4:	bb9f47b7          	lui	a5,0xbb9f4
1c0083d8:	17a78793          	addi	a5,a5,378 # bb9f417a <pulp__FC+0xbb9f417b>
1c0083dc:	10f12c23          	sw	a5,280(sp)
1c0083e0:	4bd657b7          	lui	a5,0x4bd65
1c0083e4:	e7078793          	addi	a5,a5,-400 # 4bd64e70 <__l2_shared_end+0x2fd54e70>
1c0083e8:	10f12e23          	sw	a5,284(sp)
1c0083ec:	74a837b7          	lui	a5,0x74a83
1c0083f0:	61278793          	addi	a5,a5,1554 # 74a83612 <__l2_shared_end+0x58a73612>
1c0083f4:	12f12023          	sw	a5,288(sp)
1c0083f8:	6145e7b7          	lui	a5,0x6145e
1c0083fc:	3e478793          	addi	a5,a5,996 # 6145e3e4 <__l2_shared_end+0x4544e3e4>
1c008400:	12f12223          	sw	a5,292(sp)
1c008404:	360457b7          	lui	a5,0x36045
1c008408:	9ff78793          	addi	a5,a5,-1537 # 360449ff <__l2_shared_end+0x1a0349ff>
1c00840c:	12f12423          	sw	a5,296(sp)
1c008410:	652a27b7          	lui	a5,0x652a2
1c008414:	2a878793          	addi	a5,a5,680 # 652a22a8 <__l2_shared_end+0x492922a8>
1c008418:	12f12623          	sw	a5,300(sp)
1c00841c:	9c34d7b7          	lui	a5,0x9c34d
1c008420:	30878793          	addi	a5,a5,776 # 9c34d308 <pulp__FC+0x9c34d309>
1c008424:	12f12823          	sw	a5,304(sp)
1c008428:	5fa927b7          	lui	a5,0x5fa92
1c00842c:	4b178793          	addi	a5,a5,1201 # 5fa924b1 <__l2_shared_end+0x43a824b1>
1c008430:	12f12a23          	sw	a5,308(sp)
1c008434:	87900793          	li	a5,-1927
1c008438:	12f11c23          	sh	a5,312(sp)
1c00843c:	57d1                	li	a5,-12
1c00843e:	12f10d23          	sb	a5,314(sp)
1c008442:	47a667b7          	lui	a5,0x47a66
1c008446:	fdc78793          	addi	a5,a5,-36 # 47a65fdc <__l2_shared_end+0x2ba55fdc>
1c00844a:	12f12da3          	sw	a5,315(sp)
1c00844e:	388dc7b7          	lui	a5,0x388dc
1c008452:	a0378793          	addi	a5,a5,-1533 # 388dba03 <__l2_shared_end+0x1c8cba03>
1c008456:	12f12fa3          	sw	a5,319(sp)
1c00845a:	424a27b7          	lui	a5,0x424a2
1c00845e:	87678793          	addi	a5,a5,-1930 # 424a1876 <__l2_shared_end+0x26491876>
1c008462:	14f121a3          	sw	a5,323(sp)
1c008466:	4ed927b7          	lui	a5,0x4ed92
1c00846a:	f4378793          	addi	a5,a5,-189 # 4ed91f43 <__l2_shared_end+0x32d81f43>
1c00846e:	14f123a3          	sw	a5,327(sp)
1c008472:	f4c617b7          	lui	a5,0xf4c61
1c008476:	4e178793          	addi	a5,a5,1249 # f4c614e1 <pulp__FC+0xf4c614e2>
1c00847a:	14f125a3          	sw	a5,331(sp)
1c00847e:	4c0c97b7          	lui	a5,0x4c0c9
1c008482:	b1078793          	addi	a5,a5,-1264 # 4c0c8b10 <__l2_shared_end+0x300b8b10>
1c008486:	14f127a3          	sw	a5,335(sp)
1c00848a:	405d77b7          	lui	a5,0x405d7
1c00848e:	3cd78793          	addi	a5,a5,973 # 405d73cd <__l2_shared_end+0x245c73cd>
1c008492:	14f129a3          	sw	a5,339(sp)
1c008496:	61e677b7          	lui	a5,0x61e67
1c00849a:	b9378793          	addi	a5,a5,-1133 # 61e66b93 <__l2_shared_end+0x45e56b93>
1c00849e:	14f12ba3          	sw	a5,343(sp)
1c0084a2:	460fa7b7          	lui	a5,0x460fa
1c0084a6:	69878793          	addi	a5,a5,1688 # 460fa698 <__l2_shared_end+0x2a0ea698>
1c0084aa:	14f12da3          	sw	a5,347(sp)
1c0084ae:	b57677b7          	lui	a5,0xb5767
1c0084b2:	28178793          	addi	a5,a5,641 # b5767281 <pulp__FC+0xb5767282>
1c0084b6:	14f12fa3          	sw	a5,351(sp)
1c0084ba:	470767b7          	lui	a5,0x47076
1c0084be:	66d78793          	addi	a5,a5,1645 # 4707666d <__l2_shared_end+0x2b06666d>
1c0084c2:	16f121a3          	sw	a5,355(sp)
1c0084c6:	11d967b7          	lui	a5,0x11d96
1c0084ca:	83a78793          	addi	a5,a5,-1990 # 11d9583a <__CTOR_LIST__-0xa26a7ca>
1c0084ce:	16f123a3          	sw	a5,359(sp)
1c0084d2:	e47fd7b7          	lui	a5,0xe47fd
1c0084d6:	84878793          	addi	a5,a5,-1976 # e47fc848 <pulp__FC+0xe47fc849>
1c0084da:	16f125a3          	sw	a5,363(sp)
1c0084de:	971307b7          	lui	a5,0x97130
1c0084e2:	7da78793          	addi	a5,a5,2010 # 971307da <pulp__FC+0x971307db>
1c0084e6:	16f127a3          	sw	a5,367(sp)
1c0084ea:	481567b7          	lui	a5,0x48156
1c0084ee:	2a178793          	addi	a5,a5,673 # 481562a1 <__l2_shared_end+0x2c1462a1>
1c0084f2:	16f129a3          	sw	a5,371(sp)
1c0084f6:	50d017b7          	lui	a5,0x50d01
1c0084fa:	3d278793          	addi	a5,a5,978 # 50d013d2 <__l2_shared_end+0x34cf13d2>
1c0084fe:	16f12ba3          	sw	a5,375(sp)
1c008502:	990a27b7          	lui	a5,0x990a2
1c008506:	53378793          	addi	a5,a5,1331 # 990a2533 <pulp__FC+0x990a2534>
1c00850a:	16f12da3          	sw	a5,379(sp)
1c00850e:	062347b7          	lui	a5,0x6234
1c008512:	09278793          	addi	a5,a5,146 # 6234092 <__CTOR_LIST__-0x15dcbf72>
1c008516:	16f12fa3          	sw	a5,383(sp)
1c00851a:	ab8557b7          	lui	a5,0xab855
1c00851e:	79b78793          	addi	a5,a5,1947 # ab85579b <pulp__FC+0xab85579c>
1c008522:	18f121a3          	sw	a5,387(sp)
1c008526:	4d4457b7          	lui	a5,0x4d445
1c00852a:	ea278793          	addi	a5,a5,-350 # 4d444ea2 <__l2_shared_end+0x31434ea2>
1c00852e:	18f123a3          	sw	a5,391(sp)
1c008532:	2cfac7b7          	lui	a5,0x2cfac
1c008536:	e8278793          	addi	a5,a5,-382 # 2cfabe82 <__l2_shared_end+0x10f9be82>
1c00853a:	18f125a3          	sw	a5,395(sp)
1c00853e:	cbd1e7b7          	lui	a5,0xcbd1e
1c008542:	cdb78793          	addi	a5,a5,-805 # cbd1dcdb <pulp__FC+0xcbd1dcdc>
1c008546:	18f127a3          	sw	a5,399(sp)
1c00854a:	64cc07b7          	lui	a5,0x64cc0
1c00854e:	8ae78793          	addi	a5,a5,-1874 # 64cbf8ae <__l2_shared_end+0x48caf8ae>
1c008552:	18f129a3          	sw	a5,403(sp)
1c008556:	95d717b7          	lui	a5,0x95d71
1c00855a:	6d478793          	addi	a5,a5,1748 # 95d716d4 <pulp__FC+0x95d716d5>
1c00855e:	18f12ba3          	sw	a5,407(sp)
1c008562:	c3d157b7          	lui	a5,0xc3d15
1c008566:	8de78793          	addi	a5,a5,-1826 # c3d148de <pulp__FC+0xc3d148df>
1c00856a:	18f12da3          	sw	a5,411(sp)
1c00856e:	dcc587b7          	lui	a5,0xdcc58
1c008572:	a5078793          	addi	a5,a5,-1456 # dcc57a50 <pulp__FC+0xdcc57a51>
1c008576:	18f12fa3          	sw	a5,415(sp)
1c00857a:	4a98f7b7          	lui	a5,0x4a98f
1c00857e:	ef578793          	addi	a5,a5,-267 # 4a98eef5 <__l2_shared_end+0x2e97eef5>
1c008582:	1af121a3          	sw	a5,419(sp)
1c008586:	9169e7b7          	lui	a5,0x9169e
1c00858a:	47e78793          	addi	a5,a5,1150 # 9169e47e <pulp__FC+0x9169e47f>
1c00858e:	1af123a3          	sw	a5,423(sp)
1c008592:	be5d17b7          	lui	a5,0xbe5d1
1c008596:	4dd78793          	addi	a5,a5,1245 # be5d14dd <pulp__FC+0xbe5d14de>
1c00859a:	1af125a3          	sw	a5,427(sp)
1c00859e:	7d7c47b7          	lui	a5,0x7d7c4
1c0085a2:	b5078793          	addi	a5,a5,-1200 # 7d7c3b50 <__l2_shared_end+0x617b3b50>
1c0085a6:	1af127a3          	sw	a5,431(sp)
1c0085aa:	ebccb7b7          	lui	a5,0xebccb
1c0085ae:	66f78793          	addi	a5,a5,1647 # ebccb66f <pulp__FC+0xebccb670>
1c0085b2:	1af129a3          	sw	a5,435(sp)
1c0085b6:	c0b137b7          	lui	a5,0xc0b13
1c0085ba:	bd078793          	addi	a5,a5,-1072 # c0b12bd0 <pulp__FC+0xc0b12bd1>
1c0085be:	1af12ba3          	sw	a5,439(sp)
1c0085c2:	585167b7          	lui	a5,0x58516
1c0085c6:	a0c78793          	addi	a5,a5,-1524 # 58515a0c <__l2_shared_end+0x3c505a0c>
1c0085ca:	1af12da3          	sw	a5,443(sp)
1c0085ce:	1ad897b7          	lui	a5,0x1ad89
1c0085d2:	dd978793          	addi	a5,a5,-551 # 1ad88dd9 <__CTOR_LIST__-0x127722b>
1c0085d6:	1af12fa3          	sw	a5,447(sp)
1c0085da:	0bac97b7          	lui	a5,0xbac9
1c0085de:	2d478793          	addi	a5,a5,724 # bac92d4 <__CTOR_LIST__-0x10536d30>
1c0085e2:	1cf121a3          	sw	a5,451(sp)
1c0085e6:	5f5ed7b7          	lui	a5,0x5f5ed
1c0085ea:	69a78793          	addi	a5,a5,1690 # 5f5ed69a <__l2_shared_end+0x435dd69a>
1c0085ee:	1cf123a3          	sw	a5,455(sp)
1c0085f2:	0942b7b7          	lui	a5,0x942b
1c0085f6:	7f378793          	addi	a5,a5,2035 # 942b7f3 <__CTOR_LIST__-0x12bd4811>
1c0085fa:	1cf125a3          	sw	a5,459(sp)
1c0085fe:	7143f7b7          	lui	a5,0x7143f
1c008602:	0cc78793          	addi	a5,a5,204 # 7143f0cc <__l2_shared_end+0x5542f0cc>
1c008606:	1cf127a3          	sw	a5,463(sp)
1c00860a:	fd6fb7b7          	lui	a5,0xfd6fb
1c00860e:	06978793          	addi	a5,a5,105 # fd6fb069 <pulp__FC+0xfd6fb06a>
1c008612:	1cf129a3          	sw	a5,467(sp)
1c008616:	f79ad7b7          	lui	a5,0xf79ad
1c00861a:	98078793          	addi	a5,a5,-1664 # f79ac980 <pulp__FC+0xf79ac981>
1c00861e:	1cf12ba3          	sw	a5,471(sp)
1c008622:	344e17b7          	lui	a5,0x344e1
1c008626:	c8278793          	addi	a5,a5,-894 # 344e0c82 <__l2_shared_end+0x184d0c82>
1c00862a:	1cf12da3          	sw	a5,475(sp)
1c00862e:	716277b7          	lui	a5,0x71627
1c008632:	c7978793          	addi	a5,a5,-903 # 71626c79 <__l2_shared_end+0x55616c79>
1c008636:	1cf12fa3          	sw	a5,479(sp)
1c00863a:	3525a7b7          	lui	a5,0x3525a
1c00863e:	31078793          	addi	a5,a5,784 # 3525a310 <__l2_shared_end+0x1924a310>
1c008642:	1ef121a3          	sw	a5,483(sp)
1c008646:	a97317b7          	lui	a5,0xa9731
1c00864a:	7b178793          	addi	a5,a5,1969 # a97317b1 <pulp__FC+0xa97317b2>
1c00864e:	1ef123a3          	sw	a5,487(sp)
1c008652:	df8817b7          	lui	a5,0xdf881
1c008656:	17d1                	addi	a5,a5,-12
1c008658:	1ef125a3          	sw	a5,491(sp)
1c00865c:	e15bb7b7          	lui	a5,0xe15bb
1c008660:	32078793          	addi	a5,a5,800 # e15bb320 <pulp__FC+0xe15bb321>
1c008664:	1ef127a3          	sw	a5,495(sp)
1c008668:	c2c8a7b7          	lui	a5,0xc2c8a
1c00866c:	21d78793          	addi	a5,a5,541 # c2c8a21d <pulp__FC+0xc2c8a21e>
1c008670:	1ef129a3          	sw	a5,499(sp)
1c008674:	db36a7b7          	lui	a5,0xdb36a
1c008678:	be778793          	addi	a5,a5,-1049 # db369be7 <pulp__FC+0xdb369be8>
1c00867c:	1ef12ba3          	sw	a5,503(sp)
1c008680:	5497f7b7          	lui	a5,0x5497f
1c008684:	38c78793          	addi	a5,a5,908 # 5497f38c <__l2_shared_end+0x3896f38c>
1c008688:	1ef12da3          	sw	a5,507(sp)
1c00868c:	e39777b7          	lui	a5,0xe3977
1c008690:	f8478793          	addi	a5,a5,-124 # e3976f84 <pulp__FC+0xe3976f85>
1c008694:	1ef12fa3          	sw	a5,511(sp)
1c008698:	683bc7b7          	lui	a5,0x683bc
1c00869c:	96978793          	addi	a5,a5,-1687 # 683bb969 <__l2_shared_end+0x4c3ab969>
1c0086a0:	20f121a3          	sw	a5,515(sp)
1c0086a4:	edf937b7          	lui	a5,0xedf93
1c0086a8:	faf78793          	addi	a5,a5,-81 # edf92faf <pulp__FC+0xedf92fb0>
1c0086ac:	20f123a3          	sw	a5,519(sp)
1c0086b0:	a015b7b7          	lui	a5,0xa015b
1c0086b4:	e1e78793          	addi	a5,a5,-482 # a015ae1e <pulp__FC+0xa015ae1f>
1c0086b8:	20f125a3          	sw	a5,523(sp)
1c0086bc:	c6b1e7b7          	lui	a5,0xc6b1e
1c0086c0:	c9b78793          	addi	a5,a5,-869 # c6b1dc9b <pulp__FC+0xc6b1dc9c>
1c0086c4:	20f127a3          	sw	a5,527(sp)
1c0086c8:	055ce7b7          	lui	a5,0x55ce
1c0086cc:	c3378793          	addi	a5,a5,-973 # 55cdc33 <__CTOR_LIST__-0x16a323d1>
1c0086d0:	20f129a3          	sw	a5,531(sp)
1c0086d4:	f9e8b7b7          	lui	a5,0xf9e8b
1c0086d8:	3a178793          	addi	a5,a5,929 # f9e8b3a1 <pulp__FC+0xf9e8b3a2>
1c0086dc:	20f12ba3          	sw	a5,535(sp)
1c0086e0:	7e43a7b7          	lui	a5,0x7e43a
1c0086e4:	cf278793          	addi	a5,a5,-782 # 7e439cf2 <__l2_shared_end+0x62429cf2>
1c0086e8:	20f12da3          	sw	a5,539(sp)
1c0086ec:	9c6b27b7          	lui	a5,0x9c6b2
1c0086f0:	e4378793          	addi	a5,a5,-445 # 9c6b1e43 <pulp__FC+0x9c6b1e44>
1c0086f4:	20f12fa3          	sw	a5,543(sp)
1c0086f8:	4b0d77b7          	lui	a5,0x4b0d7
1c0086fc:	c4f78793          	addi	a5,a5,-945 # 4b0d6c4f <__l2_shared_end+0x2f0c6c4f>
1c008700:	22f121a3          	sw	a5,547(sp)
1c008704:	5e5857b7          	lui	a5,0x5e585
1c008708:	d2878793          	addi	a5,a5,-728 # 5e584d28 <__l2_shared_end+0x42574d28>
1c00870c:	22f123a3          	sw	a5,551(sp)
1c008710:	7a78e7b7          	lui	a5,0x7a78e
1c008714:	5e778793          	addi	a5,a5,1511 # 7a78e5e7 <__l2_shared_end+0x5e77e5e7>
1c008718:	22f125a3          	sw	a5,555(sp)
1c00871c:	ec66d7b7          	lui	a5,0xec66d
1c008720:	90c78793          	addi	a5,a5,-1780 # ec66c90c <pulp__FC+0xec66c90d>
1c008724:	22f127a3          	sw	a5,559(sp)
1c008728:	263fd7b7          	lui	a5,0x263fd
1c00872c:	36e78793          	addi	a5,a5,878 # 263fd36e <__l2_shared_end+0xa3ed36e>
1c008730:	22f12b23          	sw	a5,566(sp)
1c008734:	2b5b67b7          	lui	a5,0x2b5b6
1c008738:	13278793          	addi	a5,a5,306 # 2b5b6132 <__l2_shared_end+0xf5a6132>
1c00873c:	22f12d23          	sw	a5,570(sp)
1c008740:	e04577b7          	lui	a5,0xe0457
1c008744:	7a578793          	addi	a5,a5,1957 # e04577a5 <pulp__FC+0xe04577a6>
1c008748:	22f12f23          	sw	a5,574(sp)
1c00874c:	4a4107b7          	lui	a5,0x4a410
1c008750:	8d178793          	addi	a5,a5,-1839 # 4a40f8d1 <__l2_shared_end+0x2e3ff8d1>
1c008754:	24f12123          	sw	a5,578(sp)
1c008758:	40e2d7b7          	lui	a5,0x40e2d
1c00875c:	32b78793          	addi	a5,a5,811 # 40e2d32b <__l2_shared_end+0x24e1d32b>
1c008760:	24f12323          	sw	a5,582(sp)
1c008764:	77fc27b7          	lui	a5,0x77fc2
1c008768:	f5978793          	addi	a5,a5,-167 # 77fc1f59 <__l2_shared_end+0x5bfb1f59>
1c00876c:	24f12523          	sw	a5,586(sp)
1c008770:	9f5d07b7          	lui	a5,0x9f5d0
1c008774:	c5d78793          	addi	a5,a5,-931 # 9f5cfc5d <pulp__FC+0x9f5cfc5e>
1c008778:	24f12723          	sw	a5,590(sp)
1c00877c:	7107b7b7          	lui	a5,0x7107b
1c008780:	26078793          	addi	a5,a5,608 # 7107b260 <__l2_shared_end+0x5506b260>
1c008784:	24f12923          	sw	a5,594(sp)
1c008788:	c80987b7          	lui	a5,0xc8098
1c00878c:	c3b78793          	addi	a5,a5,-965 # c8097c3b <pulp__FC+0xc8097c3c>
1c008790:	24f12b23          	sw	a5,598(sp)
1c008794:	3d0257b7          	lui	a5,0x3d025
1c008798:	79e78793          	addi	a5,a5,1950 # 3d02579e <__l2_shared_end+0x2101579e>
1c00879c:	24f12d23          	sw	a5,602(sp)
1c0087a0:	51d5b7b7          	lui	a5,0x51d5b
1c0087a4:	b4878793          	addi	a5,a5,-1208 # 51d5ab48 <__l2_shared_end+0x35d4ab48>
1c0087a8:	24f12f23          	sw	a5,606(sp)
1c0087ac:	941c47b7          	lui	a5,0x941c4
1c0087b0:	a0878793          	addi	a5,a5,-1528 # 941c3a08 <pulp__FC+0x941c3a09>
1c0087b4:	26f12123          	sw	a5,610(sp)
1c0087b8:	2912b7b7          	lui	a5,0x2912b
1c0087bc:	72178793          	addi	a5,a5,1825 # 2912b721 <__l2_shared_end+0xd11b721>
1c0087c0:	26f12323          	sw	a5,614(sp)
1c0087c4:	83e657b7          	lui	a5,0x83e65
1c0087c8:	22478793          	addi	a5,a5,548 # 83e65224 <pulp__FC+0x83e65225>
1c0087cc:	26f12523          	sw	a5,618(sp)
1c0087d0:	233e47b7          	lui	a5,0x233e4
1c0087d4:	a7d78793          	addi	a5,a5,-1411 # 233e3a7d <__l2_shared_end+0x73d3a7d>
1c0087d8:	26f12723          	sw	a5,622(sp)
1c0087dc:	cd7737b7          	lui	a5,0xcd773
1c0087e0:	22e78793          	addi	a5,a5,558 # cd77322e <pulp__FC+0xcd77322f>
1c0087e4:	26f12923          	sw	a5,626(sp)
1c0087e8:	891ff7b7          	lui	a5,0x891ff
1c0087ec:	4e878793          	addi	a5,a5,1256 # 891ff4e8 <pulp__FC+0x891ff4e9>
1c0087f0:	26f12b23          	sw	a5,630(sp)
1c0087f4:	6cc9e7b7          	lui	a5,0x6cc9e
1c0087f8:	f1578793          	addi	a5,a5,-235 # 6cc9df15 <__l2_shared_end+0x50c8df15>
1c0087fc:	26f12d23          	sw	a5,634(sp)
1c008800:	583e67b7          	lui	a5,0x583e6
1c008804:	04878793          	addi	a5,a5,72 # 583e6048 <__l2_shared_end+0x3c3d6048>
1c008808:	26f12f23          	sw	a5,638(sp)
1c00880c:	4925c7b7          	lui	a5,0x4925c
1c008810:	b6278793          	addi	a5,a5,-1182 # 4925bb62 <__l2_shared_end+0x2d24bb62>
1c008814:	28f12123          	sw	a5,642(sp)
1c008818:	228a27b7          	lui	a5,0x228a2
1c00881c:	2e078793          	addi	a5,a5,736 # 228a22e0 <__l2_shared_end+0x68922e0>
1c008820:	28f12323          	sw	a5,646(sp)
1c008824:	9783e7b7          	lui	a5,0x9783e
1c008828:	55678793          	addi	a5,a5,1366 # 9783e556 <pulp__FC+0x9783e557>
1c00882c:	28f12523          	sw	a5,650(sp)
1c008830:	a99527b7          	lui	a5,0xa9952
1c008834:	1dd78793          	addi	a5,a5,477 # a99521dd <pulp__FC+0xa99521de>
1c008838:	28f12723          	sw	a5,654(sp)
1c00883c:	05d317b7          	lui	a5,0x5d31
1c008840:	669d                	lui	a3,0x7
1c008842:	35278793          	addi	a5,a5,850 # 5d31352 <__CTOR_LIST__-0x162cecb2>
1c008846:	58668713          	addi	a4,a3,1414 # 7586 <__CTOR_LIST__-0x1bff8a7e>
1c00884a:	28f12923          	sw	a5,658(sp)
1c00884e:	dc4357b7          	lui	a5,0xdc435
1c008852:	22e119a3          	sh	a4,563(sp)
1c008856:	f0f78793          	addi	a5,a5,-241 # dc434f0f <pulp__FC+0xdc434f10>
1c00885a:	f8f00893          	li	a7,-113
1c00885e:	28f12b23          	sw	a5,662(sp)
1c008862:	23110aa3          	sb	a7,565(sp)
1c008866:	e77158b7          	lui	a7,0xe7715
1c00886a:	71888893          	addi	a7,a7,1816 # e7715718 <pulp__FC+0xe7715719>
1c00886e:	2b112123          	sw	a7,674(sp)
1c008872:	a0c578b7          	lui	a7,0xa0c57
1c008876:	50b88893          	addi	a7,a7,1291 # a0c5750b <pulp__FC+0xa0c5750c>
1c00887a:	29112f23          	sw	a7,670(sp)
1c00887e:	42c3a8b7          	lui	a7,0x42c3a
1c008882:	fba88893          	addi	a7,a7,-70 # 42c39fba <__l2_shared_end+0x26c29fba>
1c008886:	2b112323          	sw	a7,678(sp)
1c00888a:	7dc1c8b7          	lui	a7,0x7dc1c
1c00888e:	fdd88893          	addi	a7,a7,-35 # 7dc1bfdd <__l2_shared_end+0x61c0bfdd>
1c008892:	2b112523          	sw	a7,682(sp)
1c008896:	525548b7          	lui	a7,0x52554
1c00889a:	b0a88893          	addi	a7,a7,-1270 # 52553b0a <__l2_shared_end+0x36543b0a>
1c00889e:	2b112723          	sw	a7,686(sp)
1c0088a2:	a3f8f8b7          	lui	a7,0xa3f8f
1c0088a6:	ac888893          	addi	a7,a7,-1336 # a3f8eac8 <pulp__FC+0xa3f8eac9>
1c0088aa:	2b112923          	sw	a7,690(sp)
1c0088ae:	dc0d88b7          	lui	a7,0xdc0d8
1c0088b2:	88688893          	addi	a7,a7,-1914 # dc0d7886 <pulp__FC+0xdc0d7887>
1c0088b6:	2b112b23          	sw	a7,694(sp)
1c0088ba:	3d9ba8b7          	lui	a7,0x3d9ba
1c0088be:	74888893          	addi	a7,a7,1864 # 3d9ba748 <__l2_shared_end+0x219aa748>
1c0088c2:	2b112d23          	sw	a7,698(sp)
1c0088c6:	481fd8b7          	lui	a7,0x481fd
1c0088ca:	7a888893          	addi	a7,a7,1960 # 481fd7a8 <__l2_shared_end+0x2c1ed7a8>
1c0088ce:	2b112f23          	sw	a7,702(sp)
1c0088d2:	993788b7          	lui	a7,0x99378
1c0088d6:	17d88893          	addi	a7,a7,381 # 9937817d <pulp__FC+0x9937817e>
1c0088da:	2d112123          	sw	a7,706(sp)
1c0088de:	13f0a8b7          	lui	a7,0x13f0a
1c0088e2:	cc488893          	addi	a7,a7,-828 # 13f09cc4 <__CTOR_LIST__-0x80f6340>
1c0088e6:	2d112323          	sw	a7,710(sp)
1c0088ea:	43c3b8b7          	lui	a7,0x43c3b
1c0088ee:	b6788893          	addi	a7,a7,-1177 # 43c3ab67 <__l2_shared_end+0x27c2ab67>
1c0088f2:	2d112523          	sw	a7,714(sp)
1c0088f6:	cc1c48b7          	lui	a7,0xcc1c4
1c0088fa:	18fd                	addi	a7,a7,-1
1c0088fc:	2d112723          	sw	a7,718(sp)
1c008900:	4fd1e8b7          	lui	a7,0x4fd1e
1c008904:	8bc88893          	addi	a7,a7,-1860 # 4fd1d8bc <__l2_shared_end+0x33d0d8bc>
1c008908:	2d112923          	sw	a7,722(sp)
1c00890c:	3c6a18b7          	lui	a7,0x3c6a1
1c008910:	9fd88893          	addi	a7,a7,-1539 # 3c6a09fd <__l2_shared_end+0x206909fd>
1c008914:	2d112b23          	sw	a7,726(sp)
1c008918:	cdda58b7          	lui	a7,0xcdda5
1c00891c:	39b88893          	addi	a7,a7,923 # cdda539b <pulp__FC+0xcdda539c>
1c008920:	2d112d23          	sw	a7,730(sp)
1c008924:	481b28b7          	lui	a7,0x481b2
1c008928:	ca488893          	addi	a7,a7,-860 # 481b1ca4 <__l2_shared_end+0x2c1a1ca4>
1c00892c:	2d112f23          	sw	a7,734(sp)
1c008930:	347708b7          	lui	a7,0x34770
1c008934:	d2488893          	addi	a7,a7,-732 # 3476fd24 <__l2_shared_end+0x1875fd24>
1c008938:	2f112123          	sw	a7,738(sp)
1c00893c:	afff38b7          	lui	a7,0xafff3
1c008940:	ad088893          	addi	a7,a7,-1328 # afff2ad0 <pulp__FC+0xafff2ad1>
1c008944:	2f112323          	sw	a7,742(sp)
1c008948:	91c9f8b7          	lui	a7,0x91c9f
1c00894c:	5c888893          	addi	a7,a7,1480 # 91c9f5c8 <pulp__FC+0x91c9f5c9>
1c008950:	2f112523          	sw	a7,746(sp)
1c008954:	978278b7          	lui	a7,0x97827
1c008958:	f9c88893          	addi	a7,a7,-100 # 97826f9c <pulp__FC+0x97826f9d>
1c00895c:	2f112723          	sw	a7,750(sp)
1c008960:	8e3a38b7          	lui	a7,0x8e3a3
1c008964:	4fe88893          	addi	a7,a7,1278 # 8e3a34fe <pulp__FC+0x8e3a34ff>
1c008968:	2f112923          	sw	a7,754(sp)
1c00896c:	67b1a8b7          	lui	a7,0x67b1a
1c008970:	ee088893          	addi	a7,a7,-288 # 67b19ee0 <__l2_shared_end+0x4bb09ee0>
1c008974:	2f112b23          	sw	a7,758(sp)
1c008978:	3e1db8b7          	lui	a7,0x3e1db
1c00897c:	48588893          	addi	a7,a7,1157 # 3e1db485 <__l2_shared_end+0x221cb485>
1c008980:	2f112d23          	sw	a7,762(sp)
1c008984:	e977f8b7          	lui	a7,0xe977f
1c008988:	61988893          	addi	a7,a7,1561 # e977f619 <pulp__FC+0xe977f61a>
1c00898c:	2f112f23          	sw	a7,766(sp)
1c008990:	1dec68b7          	lui	a7,0x1dec6
1c008994:	9b488893          	addi	a7,a7,-1612 # 1dec59b4 <__l2_shared_end+0x1eb59b4>
1c008998:	31112123          	sw	a7,770(sp)
1c00899c:	9fdee8b7          	lui	a7,0x9fdee
1c0089a0:	b9088893          	addi	a7,a7,-1136 # 9fdedb90 <pulp__FC+0x9fdedb91>
1c0089a4:	31112323          	sw	a7,774(sp)
1c0089a8:	4c3268b7          	lui	a7,0x4c326
1c0089ac:	b1988893          	addi	a7,a7,-1255 # 4c325b19 <__l2_shared_end+0x30315b19>
1c0089b0:	31112523          	sw	a7,778(sp)
1c0089b4:	fad578b7          	lui	a7,0xfad57
1c0089b8:	2e888893          	addi	a7,a7,744 # fad572e8 <pulp__FC+0xfad572e9>
1c0089bc:	31112723          	sw	a7,782(sp)
1c0089c0:	5d6b48b7          	lui	a7,0x5d6b4
1c0089c4:	a2688893          	addi	a7,a7,-1498 # 5d6b3a26 <__l2_shared_end+0x416a3a26>
1c0089c8:	a1c0b7b7          	lui	a5,0xa1c0b
1c0089cc:	87278793          	addi	a5,a5,-1934 # a1c0a872 <pulp__FC+0xa1c0a873>
1c0089d0:	31112923          	sw	a7,786(sp)
1c0089d4:	43ba88b7          	lui	a7,0x43ba8
1c0089d8:	28f12d23          	sw	a5,666(sp)
1c0089dc:	dcd88893          	addi	a7,a7,-563 # 43ba7dcd <__l2_shared_end+0x27b97dcd>
1c0089e0:	31112b23          	sw	a7,790(sp)
1c0089e4:	fdca88b7          	lui	a7,0xfdca8
1c0089e8:	cca88893          	addi	a7,a7,-822 # fdca7cca <pulp__FC+0xfdca7ccb>
1c0089ec:	31112d23          	sw	a7,794(sp)
1c0089f0:	e2c1a8b7          	lui	a7,0xe2c1a
1c0089f4:	0b888893          	addi	a7,a7,184 # e2c1a0b8 <pulp__FC+0xe2c1a0b9>
1c0089f8:	31112f23          	sw	a7,798(sp)
1c0089fc:	4ed588b7          	lui	a7,0x4ed58
1c008a00:	9cc88893          	addi	a7,a7,-1588 # 4ed579cc <__l2_shared_end+0x32d479cc>
1c008a04:	33112123          	sw	a7,802(sp)
1c008a08:	b64978b7          	lui	a7,0xb6497
1c008a0c:	0b888893          	addi	a7,a7,184 # b64970b8 <pulp__FC+0xb64970b9>
1c008a10:	33112323          	sw	a7,806(sp)
1c008a14:	ffae28b7          	lui	a7,0xffae2
1c008a18:	09988893          	addi	a7,a7,153 # ffae2099 <pulp__FC+0xffae209a>
1c008a1c:	33112523          	sw	a7,810(sp)
1c008a20:	f8100893          	li	a7,-127
1c008a24:	33110823          	sb	a7,816(sp)
1c008a28:	bc2d58b7          	lui	a7,0xbc2d5
1c008a2c:	13588893          	addi	a7,a7,309 # bc2d5135 <pulp__FC+0xbc2d5136>
1c008a30:	331128a3          	sw	a7,817(sp)
1c008a34:	86c678b7          	lui	a7,0x86c67
1c008a38:	dfc88893          	addi	a7,a7,-516 # 86c66dfc <pulp__FC+0x86c66dfd>
1c008a3c:	33112aa3          	sw	a7,821(sp)
1c008a40:	9f7c78b7          	lui	a7,0x9f7c7
1c008a44:	ce988893          	addi	a7,a7,-791 # 9f7c6ce9 <pulp__FC+0x9f7c6cea>
1c008a48:	33112ca3          	sw	a7,825(sp)
1c008a4c:	aa7758b7          	lui	a7,0xaa775
1c008a50:	11088893          	addi	a7,a7,272 # aa775110 <pulp__FC+0xaa775111>
1c008a54:	33112ea3          	sw	a7,829(sp)
1c008a58:	d31568b7          	lui	a7,0xd3156
1c008a5c:	5ec88893          	addi	a7,a7,1516 # d31565ec <pulp__FC+0xd31565ed>
1c008a60:	351120a3          	sw	a7,833(sp)
1c008a64:	ec32f8b7          	lui	a7,0xec32f
1c008a68:	b4888893          	addi	a7,a7,-1208 # ec32eb48 <pulp__FC+0xec32eb49>
1c008a6c:	351122a3          	sw	a7,837(sp)
1c008a70:	7332a8b7          	lui	a7,0x7332a
1c008a74:	f5788893          	addi	a7,a7,-169 # 73329f57 <__l2_shared_end+0x57319f57>
1c008a78:	351124a3          	sw	a7,841(sp)
1c008a7c:	56cb18b7          	lui	a7,0x56cb1
1c008a80:	21e88893          	addi	a7,a7,542 # 56cb121e <__l2_shared_end+0x3aca121e>
1c008a84:	351126a3          	sw	a7,845(sp)
1c008a88:	f2cf28b7          	lui	a7,0xf2cf2
1c008a8c:	b9388893          	addi	a7,a7,-1133 # f2cf1b93 <pulp__FC+0xf2cf1b94>
1c008a90:	351128a3          	sw	a7,849(sp)
1c008a94:	768898b7          	lui	a7,0x76889
1c008a98:	8dd88893          	addi	a7,a7,-1827 # 768888dd <__l2_shared_end+0x5a8788dd>
1c008a9c:	35112aa3          	sw	a7,853(sp)
1c008aa0:	b798a8b7          	lui	a7,0xb798a
1c008aa4:	b6288893          	addi	a7,a7,-1182 # b7989b62 <pulp__FC+0xb7989b63>
1c008aa8:	35112ca3          	sw	a7,857(sp)
1c008aac:	55e818b7          	lui	a7,0x55e81
1c008ab0:	25b88893          	addi	a7,a7,603 # 55e8125b <__l2_shared_end+0x39e7125b>
1c008ab4:	35112ea3          	sw	a7,861(sp)
1c008ab8:	8647f8b7          	lui	a7,0x8647f
1c008abc:	ecd88893          	addi	a7,a7,-307 # 8647eecd <pulp__FC+0x8647eece>
1c008ac0:	371120a3          	sw	a7,865(sp)
1c008ac4:	f1c868b7          	lui	a7,0xf1c86
1c008ac8:	b0b88893          	addi	a7,a7,-1269 # f1c85b0b <pulp__FC+0xf1c85b0c>
1c008acc:	371122a3          	sw	a7,869(sp)
1c008ad0:	c90018b7          	lui	a7,0xc9001
1c008ad4:	cfb88893          	addi	a7,a7,-773 # c9000cfb <pulp__FC+0xc9000cfc>
1c008ad8:	371124a3          	sw	a7,873(sp)
1c008adc:	91d078b7          	lui	a7,0x91d07
1c008ae0:	fcb88893          	addi	a7,a7,-53 # 91d06fcb <pulp__FC+0x91d06fcc>
1c008ae4:	371126a3          	sw	a7,877(sp)
1c008ae8:	bfdd88b7          	lui	a7,0xbfdd8
1c008aec:	cfb88893          	addi	a7,a7,-773 # bfdd7cfb <pulp__FC+0xbfdd7cfc>
1c008af0:	371128a3          	sw	a7,881(sp)
1c008af4:	94d7e8b7          	lui	a7,0x94d7e
1c008af8:	dea88893          	addi	a7,a7,-534 # 94d7ddea <pulp__FC+0x94d7ddeb>
1c008afc:	37112aa3          	sw	a7,885(sp)
1c008b00:	aba808b7          	lui	a7,0xaba80
1c008b04:	40388893          	addi	a7,a7,1027 # aba80403 <pulp__FC+0xaba80404>
1c008b08:	37112ca3          	sw	a7,889(sp)
1c008b0c:	8f3bb8b7          	lui	a7,0x8f3bb
1c008b10:	a1b88893          	addi	a7,a7,-1509 # 8f3baa1b <pulp__FC+0x8f3baa1c>
1c008b14:	37112ea3          	sw	a7,893(sp)
1c008b18:	ee66b8b7          	lui	a7,0xee66b
1c008b1c:	cc188893          	addi	a7,a7,-831 # ee66acc1 <pulp__FC+0xee66acc2>
1c008b20:	391120a3          	sw	a7,897(sp)
1c008b24:	88ac48b7          	lui	a7,0x88ac4
1c008b28:	8a188893          	addi	a7,a7,-1887 # 88ac38a1 <pulp__FC+0x88ac38a2>
1c008b2c:	391122a3          	sw	a7,901(sp)
1c008b30:	11bae8b7          	lui	a7,0x11bae
1c008b34:	b8488893          	addi	a7,a7,-1148 # 11badb84 <__CTOR_LIST__-0xa452480>
1c008b38:	391124a3          	sw	a7,905(sp)
1c008b3c:	5ede88b7          	lui	a7,0x5ede8
1c008b40:	52888893          	addi	a7,a7,1320 # 5ede8528 <__l2_shared_end+0x42dd8528>
1c008b44:	de010713          	addi	a4,sp,-544
1c008b48:	391126a3          	sw	a7,909(sp)
1c008b4c:	6505                	lui	a0,0x1
1c008b4e:	ee1a08b7          	lui	a7,0xee1a0
1c008b52:	953a                	add	a0,a0,a4
1c008b54:	b3988893          	addi	a7,a7,-1223 # ee19fb39 <pulp__FC+0xee19fb3a>
1c008b58:	777d                	lui	a4,0xfffff
1c008b5a:	be270f13          	addi	t5,a4,-1054 # ffffebe2 <pulp__FC+0xffffebe3>
1c008b5e:	391128a3          	sw	a7,913(sp)
1c008b62:	445508b7          	lui	a7,0x44550
1c008b66:	33e11723          	sh	t5,814(sp)
1c008b6a:	ea888893          	addi	a7,a7,-344 # 4454fea8 <__l2_shared_end+0x2853fea8>
1c008b6e:	39112aa3          	sw	a7,917(sp)
1c008b72:	cd4848b7          	lui	a7,0xcd484
1c008b76:	2d388893          	addi	a7,a7,723 # cd4842d3 <pulp__FC+0xcd4842d4>
1c008b7a:	39112ca3          	sw	a7,921(sp)
1c008b7e:	bb2cb8b7          	lui	a7,0xbb2cb
1c008b82:	0f688893          	addi	a7,a7,246 # bb2cb0f6 <pulp__FC+0xbb2cb0f7>
1c008b86:	39112ea3          	sw	a7,925(sp)
1c008b8a:	d1a668b7          	lui	a7,0xd1a66
1c008b8e:	8e488893          	addi	a7,a7,-1820 # d1a658e4 <pulp__FC+0xd1a658e5>
1c008b92:	3b1120a3          	sw	a7,929(sp)
1c008b96:	2f9bd8b7          	lui	a7,0x2f9bd
1c008b9a:	0c688893          	addi	a7,a7,198 # 2f9bd0c6 <__l2_shared_end+0x139ad0c6>
1c008b9e:	3b1122a3          	sw	a7,933(sp)
1c008ba2:	2f0558b7          	lui	a7,0x2f055
1c008ba6:	13a88893          	addi	a7,a7,314 # 2f05513a <__l2_shared_end+0x1304513a>
1c008baa:	3b1124a3          	sw	a7,937(sp)
1c008bae:	2882d8b7          	lui	a7,0x2882d
1c008bb2:	25788893          	addi	a7,a7,599 # 2882d257 <__l2_shared_end+0xc81d257>
1c008bb6:	3b1126a3          	sw	a7,941(sp)
1c008bba:	d48dd8b7          	lui	a7,0xd48dd
1c008bbe:	29088893          	addi	a7,a7,656 # d48dd290 <pulp__FC+0xd48dd291>
1c008bc2:	3b1128a3          	sw	a7,945(sp)
1c008bc6:	0b4c28b7          	lui	a7,0xb4c2
1c008bca:	f3988893          	addi	a7,a7,-199 # b4c1f39 <__CTOR_LIST__-0x10b3e0cb>
1c008bce:	3b112aa3          	sw	a7,949(sp)
1c008bd2:	89a128b7          	lui	a7,0x89a12
1c008bd6:	e3f88893          	addi	a7,a7,-449 # 89a11e3f <pulp__FC+0x89a11e40>
1c008bda:	3b112ca3          	sw	a7,953(sp)
1c008bde:	642498b7          	lui	a7,0x64249
1c008be2:	1a088893          	addi	a7,a7,416 # 642491a0 <__l2_shared_end+0x482391a0>
1c008be6:	3b112ea3          	sw	a7,957(sp)
1c008bea:	d51fd8b7          	lui	a7,0xd51fd
1c008bee:	4cb88893          	addi	a7,a7,1227 # d51fd4cb <pulp__FC+0xd51fd4cc>
1c008bf2:	3d1120a3          	sw	a7,961(sp)
1c008bf6:	9a8ac8b7          	lui	a7,0x9a8ac
1c008bfa:	46688893          	addi	a7,a7,1126 # 9a8ac466 <pulp__FC+0x9a8ac467>
1c008bfe:	3d1122a3          	sw	a7,965(sp)
1c008c02:	dcc258b7          	lui	a7,0xdcc25
1c008c06:	46488893          	addi	a7,a7,1124 # dcc25464 <pulp__FC+0xdcc25465>
1c008c0a:	3d1124a3          	sw	a7,969(sp)
1c008c0e:	c22888b7          	lui	a7,0xc2288
1c008c12:	fa588893          	addi	a7,a7,-91 # c2287fa5 <pulp__FC+0xc2287fa6>
1c008c16:	3d1126a3          	sw	a7,973(sp)
1c008c1a:	56fe78b7          	lui	a7,0x56fe7
1c008c1e:	08f9                	addi	a7,a7,30
1c008c20:	3d1128a3          	sw	a7,977(sp)
1c008c24:	7e3118b7          	lui	a7,0x7e311
1c008c28:	8de88893          	addi	a7,a7,-1826 # 7e3108de <__l2_shared_end+0x623008de>
1c008c2c:	3d112aa3          	sw	a7,981(sp)
1c008c30:	f18f58b7          	lui	a7,0xf18f5
1c008c34:	c6788893          	addi	a7,a7,-921 # f18f4c67 <pulp__FC+0xf18f4c68>
1c008c38:	3d112ca3          	sw	a7,985(sp)
1c008c3c:	25e2f8b7          	lui	a7,0x25e2f
1c008c40:	3d988893          	addi	a7,a7,985 # 25e2f3d9 <__l2_shared_end+0x9e1f3d9>
1c008c44:	3d112ea3          	sw	a7,989(sp)
1c008c48:	1fbdc8b7          	lui	a7,0x1fbdc
1c008c4c:	5cc88893          	addi	a7,a7,1484 # 1fbdc5cc <__l2_shared_end+0x3bcc5cc>
1c008c50:	3f1120a3          	sw	a7,993(sp)
1c008c54:	8ca608b7          	lui	a7,0x8ca60
1c008c58:	ac988893          	addi	a7,a7,-1335 # 8ca5fac9 <pulp__FC+0x8ca5faca>
1c008c5c:	3f1122a3          	sw	a7,997(sp)
1c008c60:	549db8b7          	lui	a7,0x549db
1c008c64:	b9b88893          	addi	a7,a7,-1125 # 549dab9b <__l2_shared_end+0x389cab9b>
1c008c68:	3f1124a3          	sw	a7,1001(sp)
1c008c6c:	716d18b7          	lui	a7,0x716d1
1c008c70:	e9088893          	addi	a7,a7,-368 # 716d0e90 <__l2_shared_end+0x556c0e90>
1c008c74:	3f1126a3          	sw	a7,1005(sp)
1c008c78:	6542d8b7          	lui	a7,0x6542d
1c008c7c:	1cb88893          	addi	a7,a7,459 # 6542d1cb <__l2_shared_end+0x4941d1cb>
1c008c80:	3f1128a3          	sw	a7,1009(sp)
1c008c84:	9a7768b7          	lui	a7,0x9a776
1c008c88:	a6488893          	addi	a7,a7,-1436 # 9a775a64 <pulp__FC+0x9a775a65>
1c008c8c:	3f112aa3          	sw	a7,1013(sp)
1c008c90:	c2c958b7          	lui	a7,0xc2c95
1c008c94:	64888893          	addi	a7,a7,1608 # c2c95648 <pulp__FC+0xc2c95649>
1c008c98:	3f112ca3          	sw	a7,1017(sp)
1c008c9c:	7f3508b7          	lui	a7,0x7f350
1c008ca0:	36988893          	addi	a7,a7,873 # 7f350369 <__l2_shared_end+0x63340369>
1c008ca4:	3f112ea3          	sw	a7,1021(sp)
1c008ca8:	2c63f8b7          	lui	a7,0x2c63f
1c008cac:	c9588893          	addi	a7,a7,-875 # 2c63ec95 <__l2_shared_end+0x1062ec95>
1c008cb0:	411120a3          	sw	a7,1025(sp)
1c008cb4:	b288e8b7          	lui	a7,0xb288e
1c008cb8:	04d88893          	addi	a7,a7,77 # b288e04d <pulp__FC+0xb288e04e>
1c008cbc:	411122a3          	sw	a7,1029(sp)
1c008cc0:	1a82d8b7          	lui	a7,0x1a82d
1c008cc4:	d4788893          	addi	a7,a7,-697 # 1a82cd47 <__CTOR_LIST__-0x17d32bd>
1c008cc8:	411124a3          	sw	a7,1033(sp)
1c008ccc:	9abd48b7          	lui	a7,0x9abd4
1c008cd0:	af688893          	addi	a7,a7,-1290 # 9abd3af6 <pulp__FC+0x9abd3af7>
1c008cd4:	411126a3          	sw	a7,1037(sp)
1c008cd8:	e09178b7          	lui	a7,0xe0917
1c008cdc:	52488893          	addi	a7,a7,1316 # e0917524 <pulp__FC+0xe0917525>
1c008ce0:	411128a3          	sw	a7,1041(sp)
1c008ce4:	2310d8b7          	lui	a7,0x2310d
1c008ce8:	7d088893          	addi	a7,a7,2000 # 2310d7d0 <__l2_shared_end+0x70fd7d0>
1c008cec:	41112aa3          	sw	a7,1045(sp)
1c008cf0:	a669b8b7          	lui	a7,0xa669b
1c008cf4:	24d88893          	addi	a7,a7,589 # a669b24d <pulp__FC+0xa669b24e>
1c008cf8:	41112ca3          	sw	a7,1049(sp)
1c008cfc:	f976c8b7          	lui	a7,0xf976c
1c008d00:	36588893          	addi	a7,a7,869 # f976c365 <pulp__FC+0xf976c366>
1c008d04:	41112ea3          	sw	a7,1053(sp)
1c008d08:	5ebdf8b7          	lui	a7,0x5ebdf
1c008d0c:	d7488893          	addi	a7,a7,-652 # 5ebded74 <__l2_shared_end+0x42bced74>
1c008d10:	431120a3          	sw	a7,1057(sp)
1c008d14:	a75bb8b7          	lui	a7,0xa75bb
1c008d18:	c6c88893          	addi	a7,a7,-916 # a75bac6c <pulp__FC+0xa75bac6d>
1c008d1c:	431122a3          	sw	a7,1061(sp)
1c008d20:	f9e00893          	li	a7,-98
1c008d24:	431105a3          	sb	a7,1067(sp)
1c008d28:	aa6c58b7          	lui	a7,0xaa6c5
1c008d2c:	d2e88893          	addi	a7,a7,-722 # aa6c4d2e <pulp__FC+0xaa6c4d2f>
1c008d30:	43112623          	sw	a7,1068(sp)
1c008d34:	d34dc8b7          	lui	a7,0xd34dc
1c008d38:	d3f88893          	addi	a7,a7,-705 # d34dbd3f <pulp__FC+0xd34dbd40>
1c008d3c:	43112823          	sw	a7,1072(sp)
1c008d40:	c80278b7          	lui	a7,0xc8027
1c008d44:	7c388893          	addi	a7,a7,1987 # c80277c3 <pulp__FC+0xc80277c4>
1c008d48:	43112a23          	sw	a7,1076(sp)
1c008d4c:	050008b7          	lui	a7,0x5000
1c008d50:	3d088893          	addi	a7,a7,976 # 50003d0 <__CTOR_LIST__-0x16fffc34>
1c008d54:	43112c23          	sw	a7,1080(sp)
1c008d58:	0bbf18b7          	lui	a7,0xbbf1
1c008d5c:	61c88893          	addi	a7,a7,1564 # bbf161c <__CTOR_LIST__-0x1040e9e8>
1c008d60:	43112e23          	sw	a7,1084(sp)
1c008d64:	d09e08b7          	lui	a7,0xd09e0
1c008d68:	aa088893          	addi	a7,a7,-1376 # d09dfaa0 <pulp__FC+0xd09dfaa1>
1c008d6c:	45112023          	sw	a7,1088(sp)
1c008d70:	2e9238b7          	lui	a7,0x2e923
1c008d74:	0a788893          	addi	a7,a7,167 # 2e9230a7 <__l2_shared_end+0x129130a7>
1c008d78:	45112223          	sw	a7,1092(sp)
1c008d7c:	e3f718b7          	lui	a7,0xe3f71
1c008d80:	18b9                	addi	a7,a7,-18
1c008d82:	45112423          	sw	a7,1096(sp)
1c008d86:	5c7f88b7          	lui	a7,0x5c7f8
1c008d8a:	1ae88893          	addi	a7,a7,430 # 5c7f81ae <__l2_shared_end+0x407e81ae>
1c008d8e:	45112623          	sw	a7,1100(sp)
1c008d92:	2a4f78b7          	lui	a7,0x2a4f7
1c008d96:	3ba88893          	addi	a7,a7,954 # 2a4f73ba <__l2_shared_end+0xe4e73ba>
1c008d9a:	45112823          	sw	a7,1104(sp)
1c008d9e:	905718b7          	lui	a7,0x90571
1c008da2:	02888893          	addi	a7,a7,40 # 90571028 <pulp__FC+0x90571029>
1c008da6:	45112a23          	sw	a7,1108(sp)
1c008daa:	b01a48b7          	lui	a7,0xb01a4
1c008dae:	ddb88893          	addi	a7,a7,-549 # b01a3ddb <pulp__FC+0xb01a3ddc>
1c008db2:	45112c23          	sw	a7,1112(sp)
1c008db6:	76cca8b7          	lui	a7,0x76cca
1c008dba:	a2e88893          	addi	a7,a7,-1490 # 76cc9a2e <__l2_shared_end+0x5acb9a2e>
1c008dbe:	45112e23          	sw	a7,1116(sp)
1c008dc2:	bcd268b7          	lui	a7,0xbcd26
1c008dc6:	f3e88893          	addi	a7,a7,-194 # bcd25f3e <pulp__FC+0xbcd25f3f>
1c008dca:	47112023          	sw	a7,1120(sp)
1c008dce:	32ac48b7          	lui	a7,0x32ac4
1c008dd2:	70488893          	addi	a7,a7,1796 # 32ac4704 <__l2_shared_end+0x16ab4704>
1c008dd6:	47112223          	sw	a7,1124(sp)
1c008dda:	26a028b7          	lui	a7,0x26a02
1c008dde:	1885                	addi	a7,a7,-31
1c008de0:	47112423          	sw	a7,1128(sp)
1c008de4:	87f9e8b7          	lui	a7,0x87f9e
1c008de8:	61288893          	addi	a7,a7,1554 # 87f9e612 <pulp__FC+0x87f9e613>
1c008dec:	47112623          	sw	a7,1132(sp)
1c008df0:	ca77f8b7          	lui	a7,0xca77f
1c008df4:	7e588893          	addi	a7,a7,2021 # ca77f7e5 <pulp__FC+0xca77f7e6>
1c008df8:	47112823          	sw	a7,1136(sp)
1c008dfc:	65c388b7          	lui	a7,0x65c38
1c008e00:	a2e88893          	addi	a7,a7,-1490 # 65c37a2e <__l2_shared_end+0x49c27a2e>
1c008e04:	47112a23          	sw	a7,1140(sp)
1c008e08:	6462d8b7          	lui	a7,0x6462d
1c008e0c:	f5188893          	addi	a7,a7,-175 # 6462cf51 <__l2_shared_end+0x4861cf51>
1c008e10:	47112c23          	sw	a7,1144(sp)
1c008e14:	3c4838b7          	lui	a7,0x3c483
1c008e18:	99c88893          	addi	a7,a7,-1636 # 3c48299c <__l2_shared_end+0x2047299c>
1c008e1c:	47112e23          	sw	a7,1148(sp)
1c008e20:	f69628b7          	lui	a7,0xf6962
1c008e24:	34688893          	addi	a7,a7,838 # f6962346 <pulp__FC+0xf6962347>
1c008e28:	49112023          	sw	a7,1152(sp)
1c008e2c:	25f628b7          	lui	a7,0x25f62
1c008e30:	fb288893          	addi	a7,a7,-78 # 25f61fb2 <__l2_shared_end+0x9f51fb2>
1c008e34:	49112223          	sw	a7,1156(sp)
1c008e38:	1f4b78b7          	lui	a7,0x1f4b7
1c008e3c:	bb988893          	addi	a7,a7,-1095 # 1f4b6bb9 <__l2_shared_end+0x34a6bb9>
1c008e40:	49112423          	sw	a7,1160(sp)
1c008e44:	b33848b7          	lui	a7,0xb3384
1c008e48:	a5c88893          	addi	a7,a7,-1444 # b3383a5c <pulp__FC+0xb3383a5d>
1c008e4c:	49112623          	sw	a7,1164(sp)
1c008e50:	f30808b7          	lui	a7,0xf3080
1c008e54:	7c888893          	addi	a7,a7,1992 # f30807c8 <pulp__FC+0xf30807c9>
1c008e58:	49112823          	sw	a7,1168(sp)
1c008e5c:	8417d8b7          	lui	a7,0x8417d
1c008e60:	c3b88893          	addi	a7,a7,-965 # 8417cc3b <pulp__FC+0x8417cc3c>
1c008e64:	1d170e93          	addi	t4,a4,465
1c008e68:	49112a23          	sw	a7,1172(sp)
1c008e6c:	be48e8b7          	lui	a7,0xbe48e
1c008e70:	43d114a3          	sh	t4,1065(sp)
1c008e74:	bbe88893          	addi	a7,a7,-1090 # be48dbbe <pulp__FC+0xbe48dbbf>
1c008e78:	49112c23          	sw	a7,1176(sp)
1c008e7c:	423b28b7          	lui	a7,0x423b2
1c008e80:	5e088893          	addi	a7,a7,1504 # 423b25e0 <__l2_shared_end+0x263a25e0>
1c008e84:	49112e23          	sw	a7,1180(sp)
1c008e88:	619608b7          	lui	a7,0x61960
1c008e8c:	b6c88893          	addi	a7,a7,-1172 # 6195fb6c <__l2_shared_end+0x4594fb6c>
1c008e90:	4b112023          	sw	a7,1184(sp)
1c008e94:	98ce18b7          	lui	a7,0x98ce1
1c008e98:	28788893          	addi	a7,a7,647 # 98ce1287 <pulp__FC+0x98ce1288>
1c008e9c:	4b112223          	sw	a7,1188(sp)
1c008ea0:	5c3ba8b7          	lui	a7,0x5c3ba
1c008ea4:	52588893          	addi	a7,a7,1317 # 5c3ba525 <__l2_shared_end+0x403aa525>
1c008ea8:	4b112423          	sw	a7,1192(sp)
1c008eac:	438188b7          	lui	a7,0x43818
1c008eb0:	cc888893          	addi	a7,a7,-824 # 43817cc8 <__l2_shared_end+0x27807cc8>
1c008eb4:	4b112623          	sw	a7,1196(sp)
1c008eb8:	406bc8b7          	lui	a7,0x406bc
1c008ebc:	4af88893          	addi	a7,a7,1199 # 406bc4af <__l2_shared_end+0x246ac4af>
1c008ec0:	4b112823          	sw	a7,1200(sp)
1c008ec4:	4b4c88b7          	lui	a7,0x4b4c8
1c008ec8:	b6288893          	addi	a7,a7,-1182 # 4b4c7b62 <__l2_shared_end+0x2f4b7b62>
1c008ecc:	4b112a23          	sw	a7,1204(sp)
1c008ed0:	2c3838b7          	lui	a7,0x2c383
1c008ed4:	ebd88893          	addi	a7,a7,-323 # 2c382ebd <__l2_shared_end+0x10372ebd>
1c008ed8:	4b112c23          	sw	a7,1208(sp)
1c008edc:	487e48b7          	lui	a7,0x487e4
1c008ee0:	5ec88893          	addi	a7,a7,1516 # 487e45ec <__l2_shared_end+0x2c7d45ec>
1c008ee4:	4b112e23          	sw	a7,1212(sp)
1c008ee8:	840c18b7          	lui	a7,0x840c1
1c008eec:	3a788893          	addi	a7,a7,935 # 840c13a7 <pulp__FC+0x840c13a8>
1c008ef0:	4d112023          	sw	a7,1216(sp)
1c008ef4:	5c60c8b7          	lui	a7,0x5c60c
1c008ef8:	21288893          	addi	a7,a7,530 # 5c60c212 <__l2_shared_end+0x405fc212>
1c008efc:	4d112223          	sw	a7,1220(sp)
1c008f00:	bf1568b7          	lui	a7,0xbf156
1c008f04:	94788893          	addi	a7,a7,-1721 # bf155947 <pulp__FC+0xbf155948>
1c008f08:	4d112423          	sw	a7,1224(sp)
1c008f0c:	e46d48b7          	lui	a7,0xe46d4
1c008f10:	70888893          	addi	a7,a7,1800 # e46d4708 <pulp__FC+0xe46d4709>
1c008f14:	4d112623          	sw	a7,1228(sp)
1c008f18:	2970b8b7          	lui	a7,0x2970b
1c008f1c:	ab888893          	addi	a7,a7,-1352 # 2970aab8 <__l2_shared_end+0xd6faab8>
1c008f20:	4d112823          	sw	a7,1232(sp)
1c008f24:	ef9dc8b7          	lui	a7,0xef9dc
1c008f28:	98a88893          	addi	a7,a7,-1654 # ef9db98a <pulp__FC+0xef9db98b>
1c008f2c:	4d112a23          	sw	a7,1236(sp)
1c008f30:	f1c188b7          	lui	a7,0xf1c18
1c008f34:	69388893          	addi	a7,a7,1683 # f1c18693 <pulp__FC+0xf1c18694>
1c008f38:	4d112c23          	sw	a7,1240(sp)
1c008f3c:	98c358b7          	lui	a7,0x98c35
1c008f40:	31288893          	addi	a7,a7,786 # 98c35312 <pulp__FC+0x98c35313>
1c008f44:	4d112e23          	sw	a7,1244(sp)
1c008f48:	f9add8b7          	lui	a7,0xf9add
1c008f4c:	0c688893          	addi	a7,a7,198 # f9add0c6 <pulp__FC+0xf9add0c7>
1c008f50:	4f112023          	sw	a7,1248(sp)
1c008f54:	642288b7          	lui	a7,0x64228
1c008f58:	ed988893          	addi	a7,a7,-295 # 64227ed9 <__l2_shared_end+0x48217ed9>
1c008f5c:	4f112223          	sw	a7,1252(sp)
1c008f60:	02e428b7          	lui	a7,0x2e42
1c008f64:	6a088893          	addi	a7,a7,1696 # 2e426a0 <__CTOR_LIST__-0x191bd964>
1c008f68:	4f112423          	sw	a7,1256(sp)
1c008f6c:	269ab8b7          	lui	a7,0x269ab
1c008f70:	51188893          	addi	a7,a7,1297 # 269ab511 <__l2_shared_end+0xa99b511>
1c008f74:	4f112623          	sw	a7,1260(sp)
1c008f78:	101648b7          	lui	a7,0x10164
1c008f7c:	fa288893          	addi	a7,a7,-94 # 10163fa2 <__CTOR_LIST__-0xbe9c062>
1c008f80:	4f112823          	sw	a7,1264(sp)
1c008f84:	6f0a28b7          	lui	a7,0x6f0a2
1c008f88:	22a88893          	addi	a7,a7,554 # 6f0a222a <__l2_shared_end+0x5309222a>
1c008f8c:	4f112a23          	sw	a7,1268(sp)
1c008f90:	147af8b7          	lui	a7,0x147af
1c008f94:	22b88893          	addi	a7,a7,555 # 147af22b <__CTOR_LIST__-0x7850dd9>
1c008f98:	4f112c23          	sw	a7,1272(sp)
1c008f9c:	326f68b7          	lui	a7,0x326f6
1c008fa0:	f0188893          	addi	a7,a7,-255 # 326f5f01 <__l2_shared_end+0x166e5f01>
1c008fa4:	4f112e23          	sw	a7,1276(sp)
1c008fa8:	7574e8b7          	lui	a7,0x7574e
1c008fac:	26188893          	addi	a7,a7,609 # 7574e261 <__l2_shared_end+0x5973e261>
1c008fb0:	51112023          	sw	a7,1280(sp)
1c008fb4:	57b7d8b7          	lui	a7,0x57b7d
1c008fb8:	c8c88893          	addi	a7,a7,-884 # 57b7cc8c <__l2_shared_end+0x3bb6cc8c>
1c008fbc:	51112223          	sw	a7,1284(sp)
1c008fc0:	530008b7          	lui	a7,0x53000
1c008fc4:	6a488893          	addi	a7,a7,1700 # 530006a4 <__l2_shared_end+0x36ff06a4>
1c008fc8:	51112423          	sw	a7,1288(sp)
1c008fcc:	c250a8b7          	lui	a7,0xc250a
1c008fd0:	08dd                	addi	a7,a7,23
1c008fd2:	51112623          	sw	a7,1292(sp)
1c008fd6:	999f48b7          	lui	a7,0x999f4
1c008fda:	92d88893          	addi	a7,a7,-1747 # 999f392d <pulp__FC+0x999f392e>
1c008fde:	51112823          	sw	a7,1296(sp)
1c008fe2:	73aa78b7          	lui	a7,0x73aa7
1c008fe6:	44988893          	addi	a7,a7,1097 # 73aa7449 <__l2_shared_end+0x57a97449>
1c008fea:	51112a23          	sw	a7,1300(sp)
1c008fee:	bafbf8b7          	lui	a7,0xbafbf
1c008ff2:	d1388893          	addi	a7,a7,-749 # bafbed13 <pulp__FC+0xbafbed14>
1c008ff6:	51112c23          	sw	a7,1304(sp)
1c008ffa:	163718b7          	lui	a7,0x16371
1c008ffe:	84688893          	addi	a7,a7,-1978 # 16370846 <__CTOR_LIST__-0x5c8f7be>
1c009002:	51112e23          	sw	a7,1308(sp)
1c009006:	8154a8b7          	lui	a7,0x8154a
1c00900a:	81388893          	addi	a7,a7,-2029 # 81549813 <pulp__FC+0x81549814>
1c00900e:	53112023          	sw	a7,1312(sp)
1c009012:	9ec8b8b7          	lui	a7,0x9ec8b
1c009016:	eb088893          	addi	a7,a7,-336 # 9ec8aeb0 <pulp__FC+0x9ec8aeb1>
1c00901a:	53112223          	sw	a7,1316(sp)
1c00901e:	750268b7          	lui	a7,0x75026
1c009022:	0dd88893          	addi	a7,a7,221 # 750260dd <__l2_shared_end+0x590160dd>
1c009026:	53112423          	sw	a7,1320(sp)
1c00902a:	75e228b7          	lui	a7,0x75e22
1c00902e:	84b88893          	addi	a7,a7,-1973 # 75e2184b <__l2_shared_end+0x59e1184b>
1c009032:	53112623          	sw	a7,1324(sp)
1c009036:	b4f888b7          	lui	a7,0xb4f88
1c00903a:	ab988893          	addi	a7,a7,-1351 # b4f87ab9 <pulp__FC+0xb4f87aba>
1c00903e:	53112823          	sw	a7,1328(sp)
1c009042:	b582c8b7          	lui	a7,0xb582c
1c009046:	6ad88893          	addi	a7,a7,1709 # b582c6ad <pulp__FC+0xb582c6ae>
1c00904a:	53112a23          	sw	a7,1332(sp)
1c00904e:	68a5c8b7          	lui	a7,0x68a5c
1c009052:	97388893          	addi	a7,a7,-1677 # 68a5b973 <__l2_shared_end+0x4ca4b973>
1c009056:	53112c23          	sw	a7,1336(sp)
1c00905a:	b22328b7          	lui	a7,0xb2232
1c00905e:	47388893          	addi	a7,a7,1139 # b2232473 <pulp__FC+0xb2232474>
1c009062:	53112e23          	sw	a7,1340(sp)
1c009066:	da18f8b7          	lui	a7,0xda18f
1c00906a:	40d88893          	addi	a7,a7,1037 # da18f40d <pulp__FC+0xda18f40e>
1c00906e:	55112023          	sw	a7,1344(sp)
1c009072:	086918b7          	lui	a7,0x8691
1c009076:	f0a88893          	addi	a7,a7,-246 # 8690f0a <__CTOR_LIST__-0x1396f0fa>
1c00907a:	55112223          	sw	a7,1348(sp)
1c00907e:	83e948b7          	lui	a7,0x83e94
1c009082:	b6688893          	addi	a7,a7,-1178 # 83e93b66 <pulp__FC+0x83e93b67>
1c009086:	55112423          	sw	a7,1352(sp)
1c00908a:	6912e8b7          	lui	a7,0x6912e
1c00908e:	a3e88893          	addi	a7,a7,-1474 # 6912da3e <__l2_shared_end+0x4d11da3e>
1c009092:	55112623          	sw	a7,1356(sp)
1c009096:	e90278b7          	lui	a7,0xe9027
1c00909a:	71288893          	addi	a7,a7,1810 # e9027712 <pulp__FC+0xe9027713>
1c00909e:	55112823          	sw	a7,1360(sp)
1c0090a2:	b12bc8b7          	lui	a7,0xb12bc
1c0090a6:	87d88893          	addi	a7,a7,-1923 # b12bb87d <pulp__FC+0xb12bb87e>
1c0090aa:	55112a23          	sw	a7,1364(sp)
1c0090ae:	c02ce8b7          	lui	a7,0xc02ce
1c0090b2:	21d88893          	addi	a7,a7,541 # c02ce21d <pulp__FC+0xc02ce21e>
1c0090b6:	55112c23          	sw	a7,1368(sp)
1c0090ba:	ca2668b7          	lui	a7,0xca266
1c0090be:	e7688893          	addi	a7,a7,-394 # ca265e76 <pulp__FC+0xca265e77>
1c0090c2:	55112e23          	sw	a7,1372(sp)
1c0090c6:	6c2518b7          	lui	a7,0x6c251
1c0090ca:	db688893          	addi	a7,a7,-586 # 6c250db6 <__l2_shared_end+0x50240db6>
1c0090ce:	57112023          	sw	a7,1376(sp)
1c0090d2:	132228b7          	lui	a7,0x13222
1c0090d6:	7bb88893          	addi	a7,a7,1979 # 132227bb <__CTOR_LIST__-0x8ddd849>
1c0090da:	57112223          	sw	a7,1380(sp)
1c0090de:	d7c1c8b7          	lui	a7,0xd7c1c
1c0090e2:	21588893          	addi	a7,a7,533 # d7c1c215 <pulp__FC+0xd7c1c216>
1c0090e6:	57112423          	sw	a7,1384(sp)
1c0090ea:	aae658b7          	lui	a7,0xaae65
1c0090ee:	65f88893          	addi	a7,a7,1631 # aae6565f <pulp__FC+0xaae65660>
1c0090f2:	57112623          	sw	a7,1388(sp)
1c0090f6:	83cc18b7          	lui	a7,0x83cc1
1c0090fa:	84c88893          	addi	a7,a7,-1972 # 83cc084c <pulp__FC+0x83cc084d>
1c0090fe:	57112823          	sw	a7,1392(sp)
1c009102:	686ba8b7          	lui	a7,0x686ba
1c009106:	14588893          	addi	a7,a7,325 # 686ba145 <__l2_shared_end+0x4c6aa145>
1c00910a:	57112a23          	sw	a7,1396(sp)
1c00910e:	03000893          	li	a7,48
1c009112:	57110d23          	sb	a7,1402(sp)
1c009116:	02ec78b7          	lui	a7,0x2ec7
1c00911a:	c7588893          	addi	a7,a7,-907 # 2ec6c75 <__CTOR_LIST__-0x1913938f>
1c00911e:	57112da3          	sw	a7,1403(sp)
1c009122:	1d2dc8b7          	lui	a7,0x1d2dc
1c009126:	06788893          	addi	a7,a7,103 # 1d2dc067 <__l2_shared_end+0x12cc067>
1c00912a:	57112fa3          	sw	a7,1407(sp)
1c00912e:	a83cd8b7          	lui	a7,0xa83cd
1c009132:	ae188893          	addi	a7,a7,-1311 # a83ccae1 <pulp__FC+0xa83ccae2>
1c009136:	591121a3          	sw	a7,1411(sp)
1c00913a:	c85688b7          	lui	a7,0xc8568
1c00913e:	17388893          	addi	a7,a7,371 # c8568173 <pulp__FC+0xc8568174>
1c009142:	591123a3          	sw	a7,1415(sp)
1c009146:	90aed8b7          	lui	a7,0x90aed
1c00914a:	68e88893          	addi	a7,a7,1678 # 90aed68e <pulp__FC+0x90aed68f>
1c00914e:	591125a3          	sw	a7,1419(sp)
1c009152:	5a9b48b7          	lui	a7,0x5a9b4
1c009156:	2f888893          	addi	a7,a7,760 # 5a9b42f8 <__l2_shared_end+0x3e9a42f8>
1c00915a:	591127a3          	sw	a7,1423(sp)
1c00915e:	535a98b7          	lui	a7,0x535a9
1c009162:	cad88893          	addi	a7,a7,-851 # 535a8cad <__l2_shared_end+0x37598cad>
1c009166:	591129a3          	sw	a7,1427(sp)
1c00916a:	d28728b7          	lui	a7,0xd2872
1c00916e:	7879                	lui	a6,0xffffe
1c009170:	6fe88893          	addi	a7,a7,1790 # d28726fe <pulp__FC+0xd28726ff>
1c009174:	30080e13          	addi	t3,a6,768 # ffffe300 <pulp__FC+0xffffe301>
1c009178:	59112ba3          	sw	a7,1431(sp)
1c00917c:	18db58b7          	lui	a7,0x18db5
1c009180:	57c11c23          	sh	t3,1400(sp)
1c009184:	f0788893          	addi	a7,a7,-249 # 18db4f07 <__CTOR_LIST__-0x324b0fd>
1c009188:	59112da3          	sw	a7,1435(sp)
1c00918c:	481a28b7          	lui	a7,0x481a2
1c009190:	4b188893          	addi	a7,a7,1201 # 481a24b1 <__l2_shared_end+0x2c1924b1>
1c009194:	59112fa3          	sw	a7,1439(sp)
1c009198:	ab5088b7          	lui	a7,0xab508
1c00919c:	59e88893          	addi	a7,a7,1438 # ab50859e <pulp__FC+0xab50859f>
1c0091a0:	5b1121a3          	sw	a7,1443(sp)
1c0091a4:	9a5588b7          	lui	a7,0x9a558
1c0091a8:	baa88893          	addi	a7,a7,-1110 # 9a557baa <pulp__FC+0x9a557bab>
1c0091ac:	5b1123a3          	sw	a7,1447(sp)
1c0091b0:	b5b478b7          	lui	a7,0xb5b47
1c0091b4:	acc88893          	addi	a7,a7,-1332 # b5b46acc <pulp__FC+0xb5b46acd>
1c0091b8:	5b1125a3          	sw	a7,1451(sp)
1c0091bc:	1b8278b7          	lui	a7,0x1b827
1c0091c0:	c3988893          	addi	a7,a7,-967 # 1b826c39 <__CTOR_LIST__-0x7d93cb>
1c0091c4:	5b1127a3          	sw	a7,1455(sp)
1c0091c8:	ca0548b7          	lui	a7,0xca054
1c0091cc:	38588893          	addi	a7,a7,901 # ca054385 <pulp__FC+0xca054386>
1c0091d0:	5b1129a3          	sw	a7,1459(sp)
1c0091d4:	804778b7          	lui	a7,0x80477
1c0091d8:	aa688893          	addi	a7,a7,-1370 # 80476aa6 <pulp__FC+0x80476aa7>
1c0091dc:	5b112ba3          	sw	a7,1463(sp)
1c0091e0:	f72cd8b7          	lui	a7,0xf72cd
1c0091e4:	c3988893          	addi	a7,a7,-967 # f72ccc39 <pulp__FC+0xf72ccc3a>
1c0091e8:	5b112da3          	sw	a7,1467(sp)
1c0091ec:	a35668b7          	lui	a7,0xa3566
1c0091f0:	f3688893          	addi	a7,a7,-202 # a3565f36 <pulp__FC+0xa3565f37>
1c0091f4:	5b112fa3          	sw	a7,1471(sp)
1c0091f8:	9af0d8b7          	lui	a7,0x9af0d
1c0091fc:	14488893          	addi	a7,a7,324 # 9af0d144 <pulp__FC+0x9af0d145>
1c009200:	5d1121a3          	sw	a7,1475(sp)
1c009204:	7a6648b7          	lui	a7,0x7a664
1c009208:	aa788893          	addi	a7,a7,-1369 # 7a663aa7 <__l2_shared_end+0x5e653aa7>
1c00920c:	5d1123a3          	sw	a7,1479(sp)
1c009210:	b271d8b7          	lui	a7,0xb271d
1c009214:	e1588893          	addi	a7,a7,-491 # b271ce15 <pulp__FC+0xb271ce16>
1c009218:	5d1125a3          	sw	a7,1483(sp)
1c00921c:	30b9e8b7          	lui	a7,0x30b9e
1c009220:	91088893          	addi	a7,a7,-1776 # 30b9d910 <__l2_shared_end+0x14b8d910>
1c009224:	5d1127a3          	sw	a7,1487(sp)
1c009228:	a23848b7          	lui	a7,0xa2384
1c00922c:	a4088893          	addi	a7,a7,-1472 # a2383a40 <pulp__FC+0xa2383a41>
1c009230:	5d1129a3          	sw	a7,1491(sp)
1c009234:	f3de18b7          	lui	a7,0xf3de1
1c009238:	ca188893          	addi	a7,a7,-863 # f3de0ca1 <pulp__FC+0xf3de0ca2>
1c00923c:	5d112ba3          	sw	a7,1495(sp)
1c009240:	6089a8b7          	lui	a7,0x6089a
1c009244:	e9b88893          	addi	a7,a7,-357 # 60899e9b <__l2_shared_end+0x44889e9b>
1c009248:	5d112da3          	sw	a7,1499(sp)
1c00924c:	133348b7          	lui	a7,0x13334
1c009250:	6ad88893          	addi	a7,a7,1709 # 133346ad <__CTOR_LIST__-0x8ccb957>
1c009254:	5d112fa3          	sw	a7,1503(sp)
1c009258:	723db8b7          	lui	a7,0x723db
1c00925c:	bb788893          	addi	a7,a7,-1097 # 723dabb7 <__l2_shared_end+0x563cabb7>
1c009260:	5f1121a3          	sw	a7,1507(sp)
1c009264:	1d5c78b7          	lui	a7,0x1d5c7
1c009268:	13a88893          	addi	a7,a7,314 # 1d5c713a <__l2_shared_end+0x15b713a>
1c00926c:	5f1123a3          	sw	a7,1511(sp)
1c009270:	b479a8b7          	lui	a7,0xb479a
1c009274:	b7288893          	addi	a7,a7,-1166 # b4799b72 <pulp__FC+0xb4799b73>
1c009278:	5f1125a3          	sw	a7,1515(sp)
1c00927c:	dbce88b7          	lui	a7,0xdbce8
1c009280:	b6b88893          	addi	a7,a7,-1173 # dbce7b6b <pulp__FC+0xdbce7b6c>
1c009284:	5f1127a3          	sw	a7,1519(sp)
1c009288:	772bc8b7          	lui	a7,0x772bc
1c00928c:	93188893          	addi	a7,a7,-1743 # 772bb931 <__l2_shared_end+0x5b2ab931>
1c009290:	5f1129a3          	sw	a7,1523(sp)
1c009294:	14c958b7          	lui	a7,0x14c95
1c009298:	a8688893          	addi	a7,a7,-1402 # 14c94a86 <__CTOR_LIST__-0x736b57e>
1c00929c:	5f112ba3          	sw	a7,1527(sp)
1c0092a0:	9ba818b7          	lui	a7,0x9ba81
1c0092a4:	56c88893          	addi	a7,a7,1388 # 9ba8156c <pulp__FC+0x9ba8156d>
1c0092a8:	5f112da3          	sw	a7,1531(sp)
1c0092ac:	1f60e8b7          	lui	a7,0x1f60e
1c0092b0:	1af88893          	addi	a7,a7,431 # 1f60e1af <__l2_shared_end+0x35fe1af>
1c0092b4:	5f112fa3          	sw	a7,1535(sp)
1c0092b8:	e62888b7          	lui	a7,0xe6288
1c0092bc:	3cc88893          	addi	a7,a7,972 # e62883cc <pulp__FC+0xe62883cd>
1c0092c0:	611121a3          	sw	a7,1539(sp)
1c0092c4:	baeba8b7          	lui	a7,0xbaeba
1c0092c8:	65788893          	addi	a7,a7,1623 # baeba657 <pulp__FC+0xbaeba658>
1c0092cc:	611123a3          	sw	a7,1543(sp)
1c0092d0:	591208b7          	lui	a7,0x59120
1c0092d4:	8be88893          	addi	a7,a7,-1858 # 5911f8be <__l2_shared_end+0x3d10f8be>
1c0092d8:	611125a3          	sw	a7,1547(sp)
1c0092dc:	f187e8b7          	lui	a7,0xf187e
1c0092e0:	c8688893          	addi	a7,a7,-890 # f187dc86 <pulp__FC+0xf187dc87>
1c0092e4:	611127a3          	sw	a7,1551(sp)
1c0092e8:	a3ba38b7          	lui	a7,0xa3ba3
1c0092ec:	47288893          	addi	a7,a7,1138 # a3ba3472 <pulp__FC+0xa3ba3473>
1c0092f0:	611129a3          	sw	a7,1555(sp)
1c0092f4:	a13368b7          	lui	a7,0xa1336
1c0092f8:	e8888893          	addi	a7,a7,-376 # a1335e88 <pulp__FC+0xa1335e89>
1c0092fc:	61112ba3          	sw	a7,1559(sp)
1c009300:	918b78b7          	lui	a7,0x918b7
1c009304:	88588893          	addi	a7,a7,-1915 # 918b6885 <pulp__FC+0x918b6886>
1c009308:	61112da3          	sw	a7,1563(sp)
1c00930c:	48ec88b7          	lui	a7,0x48ec8
1c009310:	35888893          	addi	a7,a7,856 # 48ec8358 <__l2_shared_end+0x2ceb8358>
1c009314:	61112fa3          	sw	a7,1567(sp)
1c009318:	69c9c8b7          	lui	a7,0x69c9c
1c00931c:	50988893          	addi	a7,a7,1289 # 69c9c509 <__l2_shared_end+0x4dc8c509>
1c009320:	631121a3          	sw	a7,1571(sp)
1c009324:	81a098b7          	lui	a7,0x81a09
1c009328:	51b88893          	addi	a7,a7,1307 # 81a0951b <pulp__FC+0x81a0951c>
1c00932c:	631123a3          	sw	a7,1575(sp)
1c009330:	7785a8b7          	lui	a7,0x7785a
1c009334:	47988893          	addi	a7,a7,1145 # 7785a479 <__l2_shared_end+0x5b84a479>
1c009338:	631125a3          	sw	a7,1579(sp)
1c00933c:	a14a78b7          	lui	a7,0xa14a7
1c009340:	2c188893          	addi	a7,a7,705 # a14a72c1 <pulp__FC+0xa14a72c2>
1c009344:	851527a3          	sw	a7,-1969(a0) # 84f <__CTOR_LIST__-0x1bfff7b5>
1c009348:	d564f8b7          	lui	a7,0xd564f
1c00934c:	6bc88893          	addi	a7,a7,1724 # d564f6bc <pulp__FC+0xd564f6bd>
1c009350:	631129a3          	sw	a7,1587(sp)
1c009354:	9ac658b7          	lui	a7,0x9ac65
1c009358:	9ea88893          	addi	a7,a7,-1558 # 9ac649ea <pulp__FC+0x9ac649eb>
1c00935c:	63112ba3          	sw	a7,1591(sp)
1c009360:	3eda88b7          	lui	a7,0x3eda8
1c009364:	c7288893          	addi	a7,a7,-910 # 3eda7c72 <__l2_shared_end+0x22d97c72>
1c009368:	63112da3          	sw	a7,1595(sp)
1c00936c:	671ee8b7          	lui	a7,0x671ee
1c009370:	73188893          	addi	a7,a7,1841 # 671ee731 <__l2_shared_end+0x4b1de731>
1c009374:	63112fa3          	sw	a7,1599(sp)
1c009378:	e86588b7          	lui	a7,0xe8658
1c00937c:	e2588893          	addi	a7,a7,-475 # e8657e25 <pulp__FC+0xe8657e26>
1c009380:	651121a3          	sw	a7,1603(sp)
1c009384:	4759e8b7          	lui	a7,0x4759e
1c009388:	f4788893          	addi	a7,a7,-185 # 4759df47 <__l2_shared_end+0x2b58df47>
1c00938c:	651123a3          	sw	a7,1607(sp)
1c009390:	7596e8b7          	lui	a7,0x7596e
1c009394:	2ab88893          	addi	a7,a7,683 # 7596e2ab <__l2_shared_end+0x5995e2ab>
1c009398:	651125a3          	sw	a7,1611(sp)
1c00939c:	612db8b7          	lui	a7,0x612db
1c0093a0:	c7388893          	addi	a7,a7,-909 # 612dac73 <__l2_shared_end+0x452cac73>
1c0093a4:	651127a3          	sw	a7,1615(sp)
1c0093a8:	996708b7          	lui	a7,0x99670
1c0093ac:	95988893          	addi	a7,a7,-1703 # 9966f959 <pulp__FC+0x9966f95a>
1c0093b0:	651129a3          	sw	a7,1619(sp)
1c0093b4:	5fa518b7          	lui	a7,0x5fa51
1c0093b8:	6ae88893          	addi	a7,a7,1710 # 5fa516ae <__l2_shared_end+0x43a416ae>
1c0093bc:	65112ba3          	sw	a7,1623(sp)
1c0093c0:	e08f58b7          	lui	a7,0xe08f5
1c0093c4:	e6588893          	addi	a7,a7,-411 # e08f4e65 <pulp__FC+0xe08f4e66>
1c0093c8:	65112da3          	sw	a7,1627(sp)
1c0093cc:	9167f8b7          	lui	a7,0x9167f
1c0093d0:	a0b88893          	addi	a7,a7,-1525 # 9167ea0b <pulp__FC+0x9167ea0c>
1c0093d4:	65112fa3          	sw	a7,1631(sp)
1c0093d8:	45a068b7          	lui	a7,0x45a06
1c0093dc:	a1388893          	addi	a7,a7,-1517 # 45a05a13 <__l2_shared_end+0x299f5a13>
1c0093e0:	671121a3          	sw	a7,1635(sp)
1c0093e4:	d7d058b7          	lui	a7,0xd7d05
1c0093e8:	1d888893          	addi	a7,a7,472 # d7d051d8 <pulp__FC+0xd7d051d9>
1c0093ec:	671123a3          	sw	a7,1639(sp)
1c0093f0:	be59d8b7          	lui	a7,0xbe59d
1c0093f4:	13c88893          	addi	a7,a7,316 # be59d13c <pulp__FC+0xbe59d13d>
1c0093f8:	671125a3          	sw	a7,1643(sp)
1c0093fc:	1b0408b7          	lui	a7,0x1b040
1c009400:	05c88893          	addi	a7,a7,92 # 1b04005c <__CTOR_LIST__-0xfbffa8>
1c009404:	671127a3          	sw	a7,1647(sp)
1c009408:	688d                	lui	a7,0x3
1c00940a:	31088893          	addi	a7,a7,784 # 3310 <__CTOR_LIST__-0x1bffccf4>
1c00940e:	671119a3          	sh	a7,1651(sp)
1c009412:	faf00893          	li	a7,-81
1c009416:	67110aa3          	sb	a7,1653(sp)
1c00941a:	c60c58b7          	lui	a7,0xc60c5
1c00941e:	08e1                	addi	a7,a7,24
1c009420:	67112b23          	sw	a7,1654(sp)
1c009424:	36c698b7          	lui	a7,0x36c69
1c009428:	d2b88893          	addi	a7,a7,-725 # 36c68d2b <__l2_shared_end+0x1ac58d2b>
1c00942c:	67112d23          	sw	a7,1658(sp)
1c009430:	4d0ed8b7          	lui	a7,0x4d0ed
1c009434:	7be88893          	addi	a7,a7,1982 # 4d0ed7be <__l2_shared_end+0x310dd7be>
1c009438:	67112f23          	sw	a7,1662(sp)
1c00943c:	371ea8b7          	lui	a7,0x371ea
1c009440:	8d488893          	addi	a7,a7,-1836 # 371e98d4 <__l2_shared_end+0x1b1d98d4>
1c009444:	69112123          	sw	a7,1666(sp)
1c009448:	73eb28b7          	lui	a7,0x73eb2
1c00944c:	08888893          	addi	a7,a7,136 # 73eb2088 <__l2_shared_end+0x57ea2088>
1c009450:	69112323          	sw	a7,1670(sp)
1c009454:	69bcd8b7          	lui	a7,0x69bcd
1c009458:	3a788893          	addi	a7,a7,935 # 69bcd3a7 <__l2_shared_end+0x4dbbd3a7>
1c00945c:	69112523          	sw	a7,1674(sp)
1c009460:	91cb38b7          	lui	a7,0x91cb3
1c009464:	da488893          	addi	a7,a7,-604 # 91cb2da4 <pulp__FC+0x91cb2da5>
1c009468:	69112723          	sw	a7,1678(sp)
1c00946c:	b88bf8b7          	lui	a7,0xb88bf
1c009470:	c0388893          	addi	a7,a7,-1021 # b88bec03 <pulp__FC+0xb88bec04>
1c009474:	69112923          	sw	a7,1682(sp)
1c009478:	ba6308b7          	lui	a7,0xba630
1c00947c:	70288893          	addi	a7,a7,1794 # ba630702 <pulp__FC+0xba630703>
1c009480:	69112b23          	sw	a7,1686(sp)
1c009484:	1182b8b7          	lui	a7,0x1182b
1c009488:	47688893          	addi	a7,a7,1142 # 1182b476 <__CTOR_LIST__-0xa7d4b8e>
1c00948c:	69112d23          	sw	a7,1690(sp)
1c009490:	552968b7          	lui	a7,0x55296
1c009494:	58088893          	addi	a7,a7,1408 # 55296580 <__l2_shared_end+0x39286580>
1c009498:	69112f23          	sw	a7,1694(sp)
1c00949c:	7548a8b7          	lui	a7,0x7548a
1c0094a0:	63d88893          	addi	a7,a7,1597 # 7548a63d <__l2_shared_end+0x5947a63d>
1c0094a4:	6b112123          	sw	a7,1698(sp)
1c0094a8:	224798b7          	lui	a7,0x22479
1c0094ac:	93988893          	addi	a7,a7,-1735 # 22478939 <__l2_shared_end+0x6468939>
1c0094b0:	6b112323          	sw	a7,1702(sp)
1c0094b4:	bc7238b7          	lui	a7,0xbc723
1c0094b8:	64488893          	addi	a7,a7,1604 # bc723644 <pulp__FC+0xbc723645>
1c0094bc:	6b112523          	sw	a7,1706(sp)
1c0094c0:	4616c8b7          	lui	a7,0x4616c
1c0094c4:	37e88893          	addi	a7,a7,894 # 4616c37e <__l2_shared_end+0x2a15c37e>
1c0094c8:	6b112723          	sw	a7,1710(sp)
1c0094cc:	63a698b7          	lui	a7,0x63a69
1c0094d0:	c1588893          	addi	a7,a7,-1003 # 63a68c15 <__l2_shared_end+0x47a58c15>
1c0094d4:	6b112923          	sw	a7,1714(sp)
1c0094d8:	9be6e8b7          	lui	a7,0x9be6e
1c0094dc:	24388893          	addi	a7,a7,579 # 9be6e243 <pulp__FC+0x9be6e244>
1c0094e0:	6b112b23          	sw	a7,1718(sp)
1c0094e4:	4acc48b7          	lui	a7,0x4acc4
1c0094e8:	8d688893          	addi	a7,a7,-1834 # 4acc38d6 <__l2_shared_end+0x2ecb38d6>
1c0094ec:	6b112d23          	sw	a7,1722(sp)
1c0094f0:	371e78b7          	lui	a7,0x371e7
1c0094f4:	13c88893          	addi	a7,a7,316 # 371e713c <__l2_shared_end+0x1b1d713c>
1c0094f8:	6b112f23          	sw	a7,1726(sp)
1c0094fc:	b488d8b7          	lui	a7,0xb488d
1c009500:	e7588893          	addi	a7,a7,-395 # b488ce75 <pulp__FC+0xb488ce76>
1c009504:	6d112123          	sw	a7,1730(sp)
1c009508:	db2c98b7          	lui	a7,0xdb2c9
1c00950c:	a9688893          	addi	a7,a7,-1386 # db2c8a96 <pulp__FC+0xdb2c8a97>
1c009510:	6d112323          	sw	a7,1734(sp)
1c009514:	d9a078b7          	lui	a7,0xd9a07
1c009518:	2b788893          	addi	a7,a7,695 # d9a072b7 <pulp__FC+0xd9a072b8>
1c00951c:	6d112523          	sw	a7,1738(sp)
1c009520:	91a378b7          	lui	a7,0x91a37
1c009524:	aaf88893          	addi	a7,a7,-1361 # 91a36aaf <pulp__FC+0x91a36ab0>
1c009528:	6d112723          	sw	a7,1742(sp)
1c00952c:	740058b7          	lui	a7,0x74005
1c009530:	56888893          	addi	a7,a7,1384 # 74005568 <__l2_shared_end+0x57ff5568>
1c009534:	6d112923          	sw	a7,1746(sp)
1c009538:	a12d68b7          	lui	a7,0xa12d6
1c00953c:	8a688893          	addi	a7,a7,-1882 # a12d58a6 <pulp__FC+0xa12d58a7>
1c009540:	6d112b23          	sw	a7,1750(sp)
1c009544:	1bf668b7          	lui	a7,0x1bf66
1c009548:	69388893          	addi	a7,a7,1683 # 1bf66693 <__CTOR_LIST__-0x99971>
1c00954c:	6d112d23          	sw	a7,1754(sp)
1c009550:	440378b7          	lui	a7,0x44037
1c009554:	4e188893          	addi	a7,a7,1249 # 440374e1 <__l2_shared_end+0x280274e1>
1c009558:	6d112f23          	sw	a7,1758(sp)
1c00955c:	902d28b7          	lui	a7,0x902d2
1c009560:	87288893          	addi	a7,a7,-1934 # 902d1872 <pulp__FC+0x902d1873>
1c009564:	6f112123          	sw	a7,1762(sp)
1c009568:	369808b7          	lui	a7,0x36980
1c00956c:	50c88893          	addi	a7,a7,1292 # 3698050c <__l2_shared_end+0x1a97050c>
1c009570:	6f112323          	sw	a7,1766(sp)
1c009574:	6d6578b7          	lui	a7,0x6d657
1c009578:	c9a88893          	addi	a7,a7,-870 # 6d656c9a <__l2_shared_end+0x51646c9a>
1c00957c:	6f112523          	sw	a7,1770(sp)
1c009580:	5795d8b7          	lui	a7,0x5795d
1c009584:	93088893          	addi	a7,a7,-1744 # 5795c930 <__l2_shared_end+0x3b94c930>
1c009588:	6f112723          	sw	a7,1774(sp)
1c00958c:	30e4f8b7          	lui	a7,0x30e4f
1c009590:	6aa88893          	addi	a7,a7,1706 # 30e4f6aa <__l2_shared_end+0x14e3f6aa>
1c009594:	6f112923          	sw	a7,1778(sp)
1c009598:	bc17f8b7          	lui	a7,0xbc17f
1c00959c:	42388893          	addi	a7,a7,1059 # bc17f423 <pulp__FC+0xbc17f424>
1c0095a0:	6f112b23          	sw	a7,1782(sp)
1c0095a4:	298e38b7          	lui	a7,0x298e3
1c0095a8:	d4a88893          	addi	a7,a7,-694 # 298e2d4a <__l2_shared_end+0xd8d2d4a>
1c0095ac:	6f112d23          	sw	a7,1786(sp)
1c0095b0:	01e6c8b7          	lui	a7,0x1e6c
1c0095b4:	44488893          	addi	a7,a7,1092 # 1e6c444 <__CTOR_LIST__-0x1a193bc0>
1c0095b8:	6f112f23          	sw	a7,1790(sp)
1c0095bc:	28bf58b7          	lui	a7,0x28bf5
1c0095c0:	20188893          	addi	a7,a7,513 # 28bf5201 <__l2_shared_end+0xcbe5201>
1c0095c4:	71112123          	sw	a7,1794(sp)
1c0095c8:	a91928b7          	lui	a7,0xa9192
1c0095cc:	1eb88893          	addi	a7,a7,491 # a91921eb <pulp__FC+0xa91921ec>
1c0095d0:	71112323          	sw	a7,1798(sp)
1c0095d4:	18aa68b7          	lui	a7,0x18aa6
1c0095d8:	70488893          	addi	a7,a7,1796 # 18aa6704 <__CTOR_LIST__-0x3559900>
1c0095dc:	71112523          	sw	a7,1802(sp)
1c0095e0:	6f3908b7          	lui	a7,0x6f390
1c0095e4:	65788893          	addi	a7,a7,1623 # 6f390657 <__l2_shared_end+0x53380657>
1c0095e8:	71112723          	sw	a7,1806(sp)
1c0095ec:	f12238b7          	lui	a7,0xf1223
1c0095f0:	79388893          	addi	a7,a7,1939 # f1223793 <pulp__FC+0xf1223794>
1c0095f4:	71112923          	sw	a7,1810(sp)
1c0095f8:	43d378b7          	lui	a7,0x43d37
1c0095fc:	39388893          	addi	a7,a7,915 # 43d37393 <__l2_shared_end+0x27d27393>
1c009600:	71112b23          	sw	a7,1814(sp)
1c009604:	797b08b7          	lui	a7,0x797b0
1c009608:	11b88893          	addi	a7,a7,283 # 797b011b <__l2_shared_end+0x5d7a011b>
1c00960c:	71112d23          	sw	a7,1818(sp)
1c009610:	8bb928b7          	lui	a7,0x8bb92
1c009614:	94a88893          	addi	a7,a7,-1718 # 8bb9194a <pulp__FC+0x8bb9194b>
1c009618:	71112f23          	sw	a7,1822(sp)
1c00961c:	8b1898b7          	lui	a7,0x8b189
1c009620:	03988893          	addi	a7,a7,57 # 8b189039 <pulp__FC+0x8b18903a>
1c009624:	73112123          	sw	a7,1826(sp)
1c009628:	cd4278b7          	lui	a7,0xcd427
1c00962c:	1cc88893          	addi	a7,a7,460 # cd4271cc <pulp__FC+0xcd4271cd>
1c009630:	73112323          	sw	a7,1830(sp)
1c009634:	285aa8b7          	lui	a7,0x285aa
1c009638:	72388893          	addi	a7,a7,1827 # 285aa723 <__l2_shared_end+0xc59a723>
1c00963c:	73112523          	sw	a7,1834(sp)
1c009640:	252c68b7          	lui	a7,0x252c6
1c009644:	da988893          	addi	a7,a7,-599 # 252c5da9 <__l2_shared_end+0x92b5da9>
1c009648:	73112723          	sw	a7,1838(sp)
1c00964c:	dfc2f8b7          	lui	a7,0xdfc2f
1c009650:	7aa88893          	addi	a7,a7,1962 # dfc2f7aa <pulp__FC+0xdfc2f7ab>
1c009654:	73112923          	sw	a7,1842(sp)
1c009658:	e406c8b7          	lui	a7,0xe406c
1c00965c:	ad888893          	addi	a7,a7,-1320 # e406bad8 <pulp__FC+0xe406bad9>
1c009660:	73112b23          	sw	a7,1846(sp)
1c009664:	0c9468b7          	lui	a7,0xc946
1c009668:	67088893          	addi	a7,a7,1648 # c946670 <__CTOR_LIST__-0xf6b9994>
1c00966c:	73112d23          	sw	a7,1850(sp)
1c009670:	5556a8b7          	lui	a7,0x5556a
1c009674:	51f88893          	addi	a7,a7,1311 # 5556a51f <__l2_shared_end+0x3955a51f>
1c009678:	73112f23          	sw	a7,1854(sp)
1c00967c:	b6bec8b7          	lui	a7,0xb6bec
1c009680:	9da88893          	addi	a7,a7,-1574 # b6beb9da <pulp__FC+0xb6beb9db>
1c009684:	75112123          	sw	a7,1858(sp)
1c009688:	728c48b7          	lui	a7,0x728c4
1c00968c:	28688893          	addi	a7,a7,646 # 728c4286 <__l2_shared_end+0x568b4286>
1c009690:	75112323          	sw	a7,1862(sp)
1c009694:	f87008b7          	lui	a7,0xf8700
1c009698:	0e988893          	addi	a7,a7,233 # f87000e9 <pulp__FC+0xf87000ea>
1c00969c:	75112523          	sw	a7,1866(sp)
1c0096a0:	63fb78b7          	lui	a7,0x63fb7
1c0096a4:	b1a88893          	addi	a7,a7,-1254 # 63fb6b1a <__l2_shared_end+0x47fa6b1a>
1c0096a8:	75112723          	sw	a7,1870(sp)
1c0096ac:	516178b7          	lui	a7,0x51617
1c0096b0:	64588893          	addi	a7,a7,1605 # 51617645 <__l2_shared_end+0x35607645>
1c0096b4:	75112923          	sw	a7,1874(sp)
1c0096b8:	ea59c8b7          	lui	a7,0xea59c
1c0096bc:	0ff88893          	addi	a7,a7,255 # ea59c0ff <pulp__FC+0xea59c100>
1c0096c0:	75112b23          	sw	a7,1878(sp)
1c0096c4:	b25f28b7          	lui	a7,0xb25f2
1c0096c8:	56488893          	addi	a7,a7,1380 # b25f2564 <pulp__FC+0xb25f2565>
1c0096cc:	75112d23          	sw	a7,1882(sp)
1c0096d0:	7ce4a8b7          	lui	a7,0x7ce4a
1c0096d4:	34a88893          	addi	a7,a7,842 # 7ce4a34a <__l2_shared_end+0x60e3a34a>
1c0096d8:	75112f23          	sw	a7,1886(sp)
1c0096dc:	0f3008b7          	lui	a7,0xf300
1c0096e0:	1fc88893          	addi	a7,a7,508 # f3001fc <__CTOR_LIST__-0xccffe08>
1c0096e4:	77112123          	sw	a7,1890(sp)
1c0096e8:	e31a98b7          	lui	a7,0xe31a9
1c0096ec:	14388893          	addi	a7,a7,323 # e31a9143 <pulp__FC+0xe31a9144>
1c0096f0:	77112323          	sw	a7,1894(sp)
1c0096f4:	a8d7e8b7          	lui	a7,0xa8d7e
1c0096f8:	69388893          	addi	a7,a7,1683 # a8d7e693 <pulp__FC+0xa8d7e694>
1c0096fc:	77112523          	sw	a7,1898(sp)
1c009700:	6889                	lui	a7,0x2
1c009702:	c9e88893          	addi	a7,a7,-866 # 1c9e <__CTOR_LIST__-0x1bffe366>
1c009706:	77111723          	sh	a7,1902(sp)
1c00970a:	02200893          	li	a7,34
1c00970e:	77110823          	sb	a7,1904(sp)
1c009712:	d75548b7          	lui	a7,0xd7554
1c009716:	b8f88893          	addi	a7,a7,-1137 # d7553b8f <pulp__FC+0xd7553b90>
1c00971a:	771128a3          	sw	a7,1905(sp)
1c00971e:	4b9da8b7          	lui	a7,0x4b9da
1c009722:	d0b88893          	addi	a7,a7,-757 # 4b9d9d0b <__l2_shared_end+0x2f9c9d0b>
1c009726:	77112aa3          	sw	a7,1909(sp)
1c00972a:	7106c8b7          	lui	a7,0x7106c
1c00972e:	05c88893          	addi	a7,a7,92 # 7106c05c <__l2_shared_end+0x5505c05c>
1c009732:	77112ca3          	sw	a7,1913(sp)
1c009736:	486918b7          	lui	a7,0x48691
1c00973a:	bad88893          	addi	a7,a7,-1107 # 48690bad <__l2_shared_end+0x2c680bad>
1c00973e:	77112ea3          	sw	a7,1917(sp)
1c009742:	692958b7          	lui	a7,0x69295
1c009746:	a6788893          	addi	a7,a7,-1433 # 69294a67 <__l2_shared_end+0x4d284a67>
1c00974a:	791120a3          	sw	a7,1921(sp)
1c00974e:	655808b7          	lui	a7,0x65580
1c009752:	f5288893          	addi	a7,a7,-174 # 6557ff52 <__l2_shared_end+0x4956ff52>
1c009756:	791122a3          	sw	a7,1925(sp)
1c00975a:	932c78b7          	lui	a7,0x932c7
1c00975e:	5a388893          	addi	a7,a7,1443 # 932c75a3 <pulp__FC+0x932c75a4>
1c009762:	791124a3          	sw	a7,1929(sp)
1c009766:	15e688b7          	lui	a7,0x15e68
1c00976a:	ec888893          	addi	a7,a7,-312 # 15e67ec8 <__CTOR_LIST__-0x619813c>
1c00976e:	791126a3          	sw	a7,1933(sp)
1c009772:	a1e388b7          	lui	a7,0xa1e38
1c009776:	3c688893          	addi	a7,a7,966 # a1e383c6 <pulp__FC+0xa1e383c7>
1c00977a:	791128a3          	sw	a7,1937(sp)
1c00977e:	2c4d98b7          	lui	a7,0x2c4d9
1c009782:	1f788893          	addi	a7,a7,503 # 2c4d91f7 <__l2_shared_end+0x104c91f7>
1c009786:	79112aa3          	sw	a7,1941(sp)
1c00978a:	6b4e58b7          	lui	a7,0x6b4e5
1c00978e:	37288893          	addi	a7,a7,882 # 6b4e5372 <__l2_shared_end+0x4f4d5372>
1c009792:	79112ca3          	sw	a7,1945(sp)
1c009796:	10bb38b7          	lui	a7,0x10bb3
1c00979a:	1b288893          	addi	a7,a7,434 # 10bb31b2 <__CTOR_LIST__-0xb44ce52>
1c00979e:	79112ea3          	sw	a7,1949(sp)
1c0097a2:	e760f8b7          	lui	a7,0xe760f
1c0097a6:	a1688893          	addi	a7,a7,-1514 # e760ea16 <pulp__FC+0xe760ea17>
1c0097aa:	7b1120a3          	sw	a7,1953(sp)
1c0097ae:	e397c8b7          	lui	a7,0xe397c
1c0097b2:	8a588893          	addi	a7,a7,-1883 # e397b8a5 <pulp__FC+0xe397b8a6>
1c0097b6:	7b1122a3          	sw	a7,1957(sp)
1c0097ba:	a36258b7          	lui	a7,0xa3625
1c0097be:	d2e88893          	addi	a7,a7,-722 # a3624d2e <pulp__FC+0xa3624d2f>
1c0097c2:	7b1124a3          	sw	a7,1961(sp)
1c0097c6:	d95f98b7          	lui	a7,0xd95f9
1c0097ca:	48388893          	addi	a7,a7,1155 # d95f9483 <pulp__FC+0xd95f9484>
1c0097ce:	7b1126a3          	sw	a7,1965(sp)
1c0097d2:	e7bf38b7          	lui	a7,0xe7bf3
1c0097d6:	69188893          	addi	a7,a7,1681 # e7bf3691 <pulp__FC+0xe7bf3692>
1c0097da:	7b1128a3          	sw	a7,1969(sp)
1c0097de:	494818b7          	lui	a7,0x49481
1c0097e2:	4cf88893          	addi	a7,a7,1231 # 494814cf <__l2_shared_end+0x2d4714cf>
1c0097e6:	7b112aa3          	sw	a7,1973(sp)
1c0097ea:	054ab8b7          	lui	a7,0x54ab
1c0097ee:	aec88893          	addi	a7,a7,-1300 # 54aaaec <__CTOR_LIST__-0x16b55518>
1c0097f2:	7b112ca3          	sw	a7,1977(sp)
1c0097f6:	9940c8b7          	lui	a7,0x9940c
1c0097fa:	04788893          	addi	a7,a7,71 # 9940c047 <pulp__FC+0x9940c048>
1c0097fe:	7b112ea3          	sw	a7,1981(sp)
1c009802:	49f258b7          	lui	a7,0x49f25
1c009806:	59a88893          	addi	a7,a7,1434 # 49f2559a <__l2_shared_end+0x2df1559a>
1c00980a:	7d1120a3          	sw	a7,1985(sp)
1c00980e:	72c528b7          	lui	a7,0x72c52
1c009812:	77588893          	addi	a7,a7,1909 # 72c52775 <__l2_shared_end+0x56c42775>
1c009816:	7d1122a3          	sw	a7,1989(sp)
1c00981a:	ec2fd8b7          	lui	a7,0xec2fd
1c00981e:	beb88893          	addi	a7,a7,-1045 # ec2fcbeb <pulp__FC+0xec2fcbec>
1c009822:	7d1124a3          	sw	a7,1993(sp)
1c009826:	4129f8b7          	lui	a7,0x4129f
1c00982a:	b4688893          	addi	a7,a7,-1210 # 4129eb46 <__l2_shared_end+0x2528eb46>
1c00982e:	7d1126a3          	sw	a7,1997(sp)
1c009832:	64bff8b7          	lui	a7,0x64bff
1c009836:	40788893          	addi	a7,a7,1031 # 64bff407 <__l2_shared_end+0x48bef407>
1c00983a:	7d1128a3          	sw	a7,2001(sp)
1c00983e:	bce478b7          	lui	a7,0xbce47
1c009842:	b7988893          	addi	a7,a7,-1159 # bce46b79 <pulp__FC+0xbce46b7a>
1c009846:	7d112aa3          	sw	a7,2005(sp)
1c00984a:	866bc8b7          	lui	a7,0x866bc
1c00984e:	c9988893          	addi	a7,a7,-871 # 866bbc99 <pulp__FC+0x866bbc9a>
1c009852:	7d112ca3          	sw	a7,2009(sp)
1c009856:	5160a8b7          	lui	a7,0x5160a
1c00985a:	8b288893          	addi	a7,a7,-1870 # 516098b2 <__l2_shared_end+0x355f98b2>
1c00985e:	7d112ea3          	sw	a7,2013(sp)
1c009862:	b4f548b7          	lui	a7,0xb4f54
1c009866:	55788893          	addi	a7,a7,1367 # b4f54557 <pulp__FC+0xb4f54558>
1c00986a:	7f1120a3          	sw	a7,2017(sp)
1c00986e:	0979f8b7          	lui	a7,0x979f
1c009872:	c0488893          	addi	a7,a7,-1020 # 979ec04 <__CTOR_LIST__-0x12861400>
1c009876:	7f1122a3          	sw	a7,2021(sp)
1c00987a:	c76fb8b7          	lui	a7,0xc76fb
1c00987e:	33b88893          	addi	a7,a7,827 # c76fb33b <pulp__FC+0xc76fb33c>
1c009882:	7f1124a3          	sw	a7,2025(sp)
1c009886:	b679b8b7          	lui	a7,0xb679b
1c00988a:	dbb88893          	addi	a7,a7,-581 # b679adbb <pulp__FC+0xb679adbc>
1c00988e:	7f1126a3          	sw	a7,2029(sp)
1c009892:	baa3d8b7          	lui	a7,0xbaa3d
1c009896:	8c088893          	addi	a7,a7,-1856 # baa3c8c0 <pulp__FC+0xbaa3c8c1>
1c00989a:	7f1128a3          	sw	a7,2033(sp)
1c00989e:	a456e8b7          	lui	a7,0xa456e
1c0098a2:	b4e88893          	addi	a7,a7,-1202 # a456db4e <pulp__FC+0xa456db4f>
1c0098a6:	7f112aa3          	sw	a7,2037(sp)
1c0098aa:	47f998b7          	lui	a7,0x47f99
1c0098ae:	fc888893          	addi	a7,a7,-56 # 47f98fc8 <__l2_shared_end+0x2bf88fc8>
1c0098b2:	7f112ca3          	sw	a7,2041(sp)
1c0098b6:	c9e778b7          	lui	a7,0xc9e77
1c0098ba:	48b88893          	addi	a7,a7,1163 # c9e7748b <pulp__FC+0xc9e7748c>
1c0098be:	6e05                	lui	t3,0x1
1c0098c0:	7f112ea3          	sw	a7,2045(sp)
1c0098c4:	801e0e13          	addi	t3,t3,-2047 # 801 <__CTOR_LIST__-0x1bfff803>
1c0098c8:	692538b7          	lui	a7,0x69253
1c0098cc:	c0b88893          	addi	a7,a7,-1013 # 69252c0b <__l2_shared_end+0x4d242c0b>
1c0098d0:	9e0a                	add	t3,t3,sp
1c0098d2:	011e2023          	sw	a7,0(t3)
1c0098d6:	6e05                	lui	t3,0x1
1c0098d8:	84ac88b7          	lui	a7,0x84ac8
1c0098dc:	805e0e13          	addi	t3,t3,-2043 # 805 <__CTOR_LIST__-0x1bfff7ff>
1c0098e0:	20888893          	addi	a7,a7,520 # 84ac8208 <pulp__FC+0x84ac8209>
1c0098e4:	9e0a                	add	t3,t3,sp
1c0098e6:	011e2023          	sw	a7,0(t3)
1c0098ea:	6e05                	lui	t3,0x1
1c0098ec:	115198b7          	lui	a7,0x11519
1c0098f0:	809e0e13          	addi	t3,t3,-2039 # 809 <__CTOR_LIST__-0x1bfff7fb>
1c0098f4:	d5188893          	addi	a7,a7,-687 # 11518d51 <__CTOR_LIST__-0xaae72b3>
1c0098f8:	9e0a                	add	t3,t3,sp
1c0098fa:	011e2023          	sw	a7,0(t3)
1c0098fe:	6e05                	lui	t3,0x1
1c009900:	f16fa8b7          	lui	a7,0xf16fa
1c009904:	80de0e13          	addi	t3,t3,-2035 # 80d <__CTOR_LIST__-0x1bfff7f7>
1c009908:	3ff88893          	addi	a7,a7,1023 # f16fa3ff <pulp__FC+0xf16fa400>
1c00990c:	9e0a                	add	t3,t3,sp
1c00990e:	011e2023          	sw	a7,0(t3)
1c009912:	6e05                	lui	t3,0x1
1c009914:	bc5ba8b7          	lui	a7,0xbc5ba
1c009918:	811e0e13          	addi	t3,t3,-2031 # 811 <__CTOR_LIST__-0x1bfff7f3>
1c00991c:	be488893          	addi	a7,a7,-1052 # bc5b9be4 <pulp__FC+0xbc5b9be5>
1c009920:	9e0a                	add	t3,t3,sp
1c009922:	011e2023          	sw	a7,0(t3)
1c009926:	6e05                	lui	t3,0x1
1c009928:	7be5f8b7          	lui	a7,0x7be5f
1c00992c:	815e0e13          	addi	t3,t3,-2027 # 815 <__CTOR_LIST__-0x1bfff7ef>
1c009930:	45a88893          	addi	a7,a7,1114 # 7be5f45a <__l2_shared_end+0x5fe4f45a>
1c009934:	9e0a                	add	t3,t3,sp
1c009936:	011e2023          	sw	a7,0(t3)
1c00993a:	6e05                	lui	t3,0x1
1c00993c:	12af08b7          	lui	a7,0x12af0
1c009940:	819e0e13          	addi	t3,t3,-2023 # 819 <__CTOR_LIST__-0x1bfff7eb>
1c009944:	2c288893          	addi	a7,a7,706 # 12af02c2 <__CTOR_LIST__-0x950fd42>
1c009948:	9e0a                	add	t3,t3,sp
1c00994a:	011e2023          	sw	a7,0(t3)
1c00994e:	6e05                	lui	t3,0x1
1c009950:	2a0868b7          	lui	a7,0x2a086
1c009954:	81de0e13          	addi	t3,t3,-2019 # 81d <__CTOR_LIST__-0x1bfff7e7>
1c009958:	65c88893          	addi	a7,a7,1628 # 2a08665c <__l2_shared_end+0xe07665c>
1c00995c:	9e0a                	add	t3,t3,sp
1c00995e:	011e2023          	sw	a7,0(t3)
1c009962:	6e05                	lui	t3,0x1
1c009964:	86da58b7          	lui	a7,0x86da5
1c009968:	821e0e13          	addi	t3,t3,-2015 # 821 <__CTOR_LIST__-0x1bfff7e3>
1c00996c:	d3088893          	addi	a7,a7,-720 # 86da4d30 <pulp__FC+0x86da4d31>
1c009970:	9e0a                	add	t3,t3,sp
1c009972:	011e2023          	sw	a7,0(t3)
1c009976:	6e05                	lui	t3,0x1
1c009978:	b606b8b7          	lui	a7,0xb606b
1c00997c:	825e0e13          	addi	t3,t3,-2011 # 825 <__CTOR_LIST__-0x1bfff7df>
1c009980:	6ed88893          	addi	a7,a7,1773 # b606b6ed <pulp__FC+0xb606b6ee>
1c009984:	9e0a                	add	t3,t3,sp
1c009986:	011e2023          	sw	a7,0(t3)
1c00998a:	6e05                	lui	t3,0x1
1c00998c:	b6ab78b7          	lui	a7,0xb6ab7
1c009990:	829e0e13          	addi	t3,t3,-2007 # 829 <__CTOR_LIST__-0x1bfff7db>
1c009994:	34388893          	addi	a7,a7,835 # b6ab7343 <pulp__FC+0xb6ab7344>
1c009998:	9e0a                	add	t3,t3,sp
1c00999a:	011e2023          	sw	a7,0(t3)
1c00999e:	6e05                	lui	t3,0x1
1c0099a0:	945648b7          	lui	a7,0x94564
1c0099a4:	82de0e13          	addi	t3,t3,-2003 # 82d <__CTOR_LIST__-0x1bfff7d7>
1c0099a8:	b6888893          	addi	a7,a7,-1176 # 94563b68 <pulp__FC+0x94563b69>
1c0099ac:	9e0a                	add	t3,t3,sp
1c0099ae:	011e2023          	sw	a7,0(t3)
1c0099b2:	6e05                	lui	t3,0x1
1c0099b4:	60ab68b7          	lui	a7,0x60ab6
1c0099b8:	831e0e13          	addi	t3,t3,-1999 # 831 <__CTOR_LIST__-0x1bfff7d3>
1c0099bc:	19688893          	addi	a7,a7,406 # 60ab6196 <__l2_shared_end+0x44aa6196>
1c0099c0:	9e0a                	add	t3,t3,sp
1c0099c2:	011e2023          	sw	a7,0(t3)
1c0099c6:	6e05                	lui	t3,0x1
1c0099c8:	4ce118b7          	lui	a7,0x4ce11
1c0099cc:	835e0e13          	addi	t3,t3,-1995 # 835 <__CTOR_LIST__-0x1bfff7cf>
1c0099d0:	1c088893          	addi	a7,a7,448 # 4ce111c0 <__l2_shared_end+0x30e011c0>
1c0099d4:	9e0a                	add	t3,t3,sp
1c0099d6:	011e2023          	sw	a7,0(t3)
1c0099da:	6e05                	lui	t3,0x1
1c0099dc:	92c828b7          	lui	a7,0x92c82
1c0099e0:	839e0e13          	addi	t3,t3,-1991 # 839 <__CTOR_LIST__-0x1bfff7cb>
1c0099e4:	32b88893          	addi	a7,a7,811 # 92c8232b <pulp__FC+0x92c8232c>
1c0099e8:	9e0a                	add	t3,t3,sp
1c0099ea:	011e2023          	sw	a7,0(t3)
1c0099ee:	6e05                	lui	t3,0x1
1c0099f0:	74a988b7          	lui	a7,0x74a98
1c0099f4:	83de0e13          	addi	t3,t3,-1987 # 83d <__CTOR_LIST__-0x1bfff7c7>
1c0099f8:	73588893          	addi	a7,a7,1845 # 74a98735 <__l2_shared_end+0x58a88735>
1c0099fc:	9e0a                	add	t3,t3,sp
1c0099fe:	011e2023          	sw	a7,0(t3)
1c009a02:	6e05                	lui	t3,0x1
1c009a04:	4c5788b7          	lui	a7,0x4c578
1c009a08:	841e0e13          	addi	t3,t3,-1983 # 841 <__CTOR_LIST__-0x1bfff7c3>
1c009a0c:	9cc88893          	addi	a7,a7,-1588 # 4c5779cc <__l2_shared_end+0x305679cc>
1c009a10:	9e0a                	add	t3,t3,sp
1c009a12:	011e2023          	sw	a7,0(t3)
1c009a16:	6e05                	lui	t3,0x1
1c009a18:	106298b7          	lui	a7,0x10629
1c009a1c:	845e0e13          	addi	t3,t3,-1979 # 845 <__CTOR_LIST__-0x1bfff7bf>
1c009a20:	58288893          	addi	a7,a7,1410 # 10629582 <__CTOR_LIST__-0xb9d6a82>
1c009a24:	9e0a                	add	t3,t3,sp
1c009a26:	011e2023          	sw	a7,0(t3)
1c009a2a:	6e05                	lui	t3,0x1
1c009a2c:	371d88b7          	lui	a7,0x371d8
1c009a30:	849e0e13          	addi	t3,t3,-1975 # 849 <__CTOR_LIST__-0x1bfff7bb>
1c009a34:	09188893          	addi	a7,a7,145 # 371d8091 <__l2_shared_end+0x1b1c8091>
1c009a38:	9e0a                	add	t3,t3,sp
1c009a3a:	011e2023          	sw	a7,0(t3)
1c009a3e:	6885                	lui	a7,0x1
1c009a40:	85579637          	lui	a2,0x85579
1c009a44:	84d88893          	addi	a7,a7,-1971 # 84d <__CTOR_LIST__-0x1bfff7b7>
1c009a48:	72360313          	addi	t1,a2,1827 # 85579723 <pulp__FC+0x85579724>
1c009a4c:	988a                	add	a7,a7,sp
1c009a4e:	6e05                	lui	t3,0x1
1c009a50:	0068a023          	sw	t1,0(a7)
1c009a54:	851e0e13          	addi	t3,t3,-1967 # 851 <__CTOR_LIST__-0x1bfff7b3>
1c009a58:	c36938b7          	lui	a7,0xc3693
1c009a5c:	15888893          	addi	a7,a7,344 # c3693158 <pulp__FC+0xc3693159>
1c009a60:	9e0a                	add	t3,t3,sp
1c009a62:	6305                	lui	t1,0x1
1c009a64:	011e2023          	sw	a7,0(t3)
1c009a68:	85530313          	addi	t1,t1,-1963 # 855 <__CTOR_LIST__-0x1bfff7af>
1c009a6c:	5982d8b7          	lui	a7,0x5982d
1c009a70:	15888893          	addi	a7,a7,344 # 5982d158 <__l2_shared_end+0x3d81d158>
1c009a74:	930a                	add	t1,t1,sp
1c009a76:	6e05                	lui	t3,0x1
1c009a78:	01132023          	sw	a7,0(t1)
1c009a7c:	859e0e13          	addi	t3,t3,-1959 # 859 <__CTOR_LIST__-0x1bfff7ab>
1c009a80:	224b38b7          	lui	a7,0x224b3
1c009a84:	46c88893          	addi	a7,a7,1132 # 224b346c <__l2_shared_end+0x64a346c>
1c009a88:	9e0a                	add	t3,t3,sp
1c009a8a:	6305                	lui	t1,0x1
1c009a8c:	011e2023          	sw	a7,0(t3)
1c009a90:	85d30313          	addi	t1,t1,-1955 # 85d <__CTOR_LIST__-0x1bfff7a7>
1c009a94:	954058b7          	lui	a7,0x95405
1c009a98:	a9688893          	addi	a7,a7,-1386 # 95404a96 <pulp__FC+0x95404a97>
1c009a9c:	930a                	add	t1,t1,sp
1c009a9e:	6e05                	lui	t3,0x1
1c009aa0:	01132023          	sw	a7,0(t1)
1c009aa4:	861e0e13          	addi	t3,t3,-1951 # 861 <__CTOR_LIST__-0x1bfff7a3>
1c009aa8:	ba7228b7          	lui	a7,0xba722
1c009aac:	28b88893          	addi	a7,a7,651 # ba72228b <pulp__FC+0xba72228c>
1c009ab0:	9e0a                	add	t3,t3,sp
1c009ab2:	6305                	lui	t1,0x1
1c009ab4:	011e2023          	sw	a7,0(t3)
1c009ab8:	86530313          	addi	t1,t1,-1947 # 865 <__CTOR_LIST__-0x1bfff79f>
1c009abc:	2bfd18b7          	lui	a7,0x2bfd1
1c009ac0:	18ed                	addi	a7,a7,-5
1c009ac2:	930a                	add	t1,t1,sp
1c009ac4:	01132023          	sw	a7,0(t1)
1c009ac8:	6885                	lui	a7,0x1
1c009aca:	86988893          	addi	a7,a7,-1943 # 869 <__CTOR_LIST__-0x1bfff79b>
1c009ace:	6e05                	lui	t3,0x1
1c009ad0:	4cc80813          	addi	a6,a6,1228
1c009ad4:	988a                	add	a7,a7,sp
1c009ad6:	86be0e13          	addi	t3,t3,-1941 # 86b <__CTOR_LIST__-0x1bfff799>
1c009ada:	01089023          	sh	a6,0(a7)
1c009ade:	9e0a                	add	t3,t3,sp
1c009ae0:	fb100813          	li	a6,-79
1c009ae4:	6305                	lui	t1,0x1
1c009ae6:	010e0023          	sb	a6,0(t3)
1c009aea:	86c30313          	addi	t1,t1,-1940 # 86c <__CTOR_LIST__-0x1bfff798>
1c009aee:	cb100837          	lui	a6,0xcb100
1c009af2:	24f80813          	addi	a6,a6,591 # cb10024f <pulp__FC+0xcb100250>
1c009af6:	930a                	add	t1,t1,sp
1c009af8:	6885                	lui	a7,0x1
1c009afa:	01032023          	sw	a6,0(t1)
1c009afe:	87088893          	addi	a7,a7,-1936 # 870 <__CTOR_LIST__-0x1bfff794>
1c009b02:	6f471837          	lui	a6,0x6f471
1c009b06:	4c880813          	addi	a6,a6,1224 # 6f4714c8 <__l2_shared_end+0x534614c8>
1c009b0a:	988a                	add	a7,a7,sp
1c009b0c:	6e05                	lui	t3,0x1
1c009b0e:	0108a023          	sw	a6,0(a7)
1c009b12:	874e0e13          	addi	t3,t3,-1932 # 874 <__CTOR_LIST__-0x1bfff790>
1c009b16:	80f44837          	lui	a6,0x80f44
1c009b1a:	74080813          	addi	a6,a6,1856 # 80f44740 <pulp__FC+0x80f44741>
1c009b1e:	9e0a                	add	t3,t3,sp
1c009b20:	6305                	lui	t1,0x1
1c009b22:	010e2023          	sw	a6,0(t3)
1c009b26:	87830313          	addi	t1,t1,-1928 # 878 <__CTOR_LIST__-0x1bfff78c>
1c009b2a:	74968837          	lui	a6,0x74968
1c009b2e:	35680813          	addi	a6,a6,854 # 74968356 <__l2_shared_end+0x58958356>
1c009b32:	930a                	add	t1,t1,sp
1c009b34:	6885                	lui	a7,0x1
1c009b36:	01032023          	sw	a6,0(t1)
1c009b3a:	87c88893          	addi	a7,a7,-1924 # 87c <__CTOR_LIST__-0x1bfff788>
1c009b3e:	32230837          	lui	a6,0x32230
1c009b42:	12b80813          	addi	a6,a6,299 # 3223012b <__l2_shared_end+0x1622012b>
1c009b46:	988a                	add	a7,a7,sp
1c009b48:	6e05                	lui	t3,0x1
1c009b4a:	0108a023          	sw	a6,0(a7)
1c009b4e:	880e0e13          	addi	t3,t3,-1920 # 880 <__CTOR_LIST__-0x1bfff784>
1c009b52:	1019a837          	lui	a6,0x1019a
1c009b56:	1a180813          	addi	a6,a6,417 # 1019a1a1 <__CTOR_LIST__-0xbe65e63>
1c009b5a:	9e0a                	add	t3,t3,sp
1c009b5c:	6305                	lui	t1,0x1
1c009b5e:	010e2023          	sw	a6,0(t3)
1c009b62:	88430313          	addi	t1,t1,-1916 # 884 <__CTOR_LIST__-0x1bfff780>
1c009b66:	b4b9e837          	lui	a6,0xb4b9e
1c009b6a:	f5680813          	addi	a6,a6,-170 # b4b9df56 <pulp__FC+0xb4b9df57>
1c009b6e:	930a                	add	t1,t1,sp
1c009b70:	6885                	lui	a7,0x1
1c009b72:	01032023          	sw	a6,0(t1)
1c009b76:	88888893          	addi	a7,a7,-1912 # 888 <__CTOR_LIST__-0x1bfff77c>
1c009b7a:	a67b7837          	lui	a6,0xa67b7
1c009b7e:	53a80813          	addi	a6,a6,1338 # a67b753a <pulp__FC+0xa67b753b>
1c009b82:	988a                	add	a7,a7,sp
1c009b84:	6e05                	lui	t3,0x1
1c009b86:	0108a023          	sw	a6,0(a7)
1c009b8a:	88ce0e13          	addi	t3,t3,-1908 # 88c <__CTOR_LIST__-0x1bfff778>
1c009b8e:	66bc3837          	lui	a6,0x66bc3
1c009b92:	7ac80813          	addi	a6,a6,1964 # 66bc37ac <__l2_shared_end+0x4abb37ac>
1c009b96:	9e0a                	add	t3,t3,sp
1c009b98:	6305                	lui	t1,0x1
1c009b9a:	010e2023          	sw	a6,0(t3)
1c009b9e:	89030313          	addi	t1,t1,-1904 # 890 <__CTOR_LIST__-0x1bfff774>
1c009ba2:	ca33e837          	lui	a6,0xca33e
1c009ba6:	46280813          	addi	a6,a6,1122 # ca33e462 <pulp__FC+0xca33e463>
1c009baa:	930a                	add	t1,t1,sp
1c009bac:	6885                	lui	a7,0x1
1c009bae:	01032023          	sw	a6,0(t1)
1c009bb2:	89488893          	addi	a7,a7,-1900 # 894 <__CTOR_LIST__-0x1bfff770>
1c009bb6:	95836837          	lui	a6,0x95836
1c009bba:	9f180813          	addi	a6,a6,-1551 # 958359f1 <pulp__FC+0x958359f2>
1c009bbe:	988a                	add	a7,a7,sp
1c009bc0:	6e05                	lui	t3,0x1
1c009bc2:	0108a023          	sw	a6,0(a7)
1c009bc6:	898e0e13          	addi	t3,t3,-1896 # 898 <__CTOR_LIST__-0x1bfff76c>
1c009bca:	a7a95837          	lui	a6,0xa7a95
1c009bce:	1819                	addi	a6,a6,-26
1c009bd0:	9e0a                	add	t3,t3,sp
1c009bd2:	6305                	lui	t1,0x1
1c009bd4:	010e2023          	sw	a6,0(t3)
1c009bd8:	89c30313          	addi	t1,t1,-1892 # 89c <__CTOR_LIST__-0x1bfff768>
1c009bdc:	00714837          	lui	a6,0x714
1c009be0:	b2f80813          	addi	a6,a6,-1233 # 713b2f <__CTOR_LIST__-0x1b8ec4d5>
1c009be4:	930a                	add	t1,t1,sp
1c009be6:	6885                	lui	a7,0x1
1c009be8:	01032023          	sw	a6,0(t1)
1c009bec:	8a088893          	addi	a7,a7,-1888 # 8a0 <__CTOR_LIST__-0x1bfff764>
1c009bf0:	b38ef837          	lui	a6,0xb38ef
1c009bf4:	b6a80813          	addi	a6,a6,-1174 # b38eeb6a <pulp__FC+0xb38eeb6b>
1c009bf8:	988a                	add	a7,a7,sp
1c009bfa:	6e05                	lui	t3,0x1
1c009bfc:	0108a023          	sw	a6,0(a7)
1c009c00:	8a4e0e13          	addi	t3,t3,-1884 # 8a4 <__CTOR_LIST__-0x1bfff760>
1c009c04:	d6fd7837          	lui	a6,0xd6fd7
1c009c08:	67380813          	addi	a6,a6,1651 # d6fd7673 <pulp__FC+0xd6fd7674>
1c009c0c:	9e0a                	add	t3,t3,sp
1c009c0e:	6305                	lui	t1,0x1
1c009c10:	010e2023          	sw	a6,0(t3)
1c009c14:	8a830313          	addi	t1,t1,-1880 # 8a8 <__CTOR_LIST__-0x1bfff75c>
1c009c18:	60e05837          	lui	a6,0x60e05
1c009c1c:	a1780813          	addi	a6,a6,-1513 # 60e04a17 <__l2_shared_end+0x44df4a17>
1c009c20:	930a                	add	t1,t1,sp
1c009c22:	6885                	lui	a7,0x1
1c009c24:	01032023          	sw	a6,0(t1)
1c009c28:	8ac88893          	addi	a7,a7,-1876 # 8ac <__CTOR_LIST__-0x1bfff758>
1c009c2c:	2a537837          	lui	a6,0x2a537
1c009c30:	b5a80813          	addi	a6,a6,-1190 # 2a536b5a <__l2_shared_end+0xe526b5a>
1c009c34:	988a                	add	a7,a7,sp
1c009c36:	6e05                	lui	t3,0x1
1c009c38:	0108a023          	sw	a6,0(a7)
1c009c3c:	8b0e0e13          	addi	t3,t3,-1872 # 8b0 <__CTOR_LIST__-0x1bfff754>
1c009c40:	26f01837          	lui	a6,0x26f01
1c009c44:	4b680813          	addi	a6,a6,1206 # 26f014b6 <__l2_shared_end+0xaef14b6>
1c009c48:	9e0a                	add	t3,t3,sp
1c009c4a:	6305                	lui	t1,0x1
1c009c4c:	010e2023          	sw	a6,0(t3)
1c009c50:	8b430313          	addi	t1,t1,-1868 # 8b4 <__CTOR_LIST__-0x1bfff750>
1c009c54:	3b56b837          	lui	a6,0x3b56b
1c009c58:	e4180813          	addi	a6,a6,-447 # 3b56ae41 <__l2_shared_end+0x1f55ae41>
1c009c5c:	930a                	add	t1,t1,sp
1c009c5e:	6885                	lui	a7,0x1
1c009c60:	01032023          	sw	a6,0(t1)
1c009c64:	8b888893          	addi	a7,a7,-1864 # 8b8 <__CTOR_LIST__-0x1bfff74c>
1c009c68:	00193837          	lui	a6,0x193
1c009c6c:	0f280813          	addi	a6,a6,242 # 1930f2 <__CTOR_LIST__-0x1be6cf12>
1c009c70:	988a                	add	a7,a7,sp
1c009c72:	6e05                	lui	t3,0x1
1c009c74:	0108a023          	sw	a6,0(a7)
1c009c78:	8bce0e13          	addi	t3,t3,-1860 # 8bc <__CTOR_LIST__-0x1bfff748>
1c009c7c:	d3ed0837          	lui	a6,0xd3ed0
1c009c80:	1f480813          	addi	a6,a6,500 # d3ed01f4 <pulp__FC+0xd3ed01f5>
1c009c84:	9e0a                	add	t3,t3,sp
1c009c86:	6305                	lui	t1,0x1
1c009c88:	010e2023          	sw	a6,0(t3)
1c009c8c:	8c030313          	addi	t1,t1,-1856 # 8c0 <__CTOR_LIST__-0x1bfff744>
1c009c90:	90d33837          	lui	a6,0x90d33
1c009c94:	1b480813          	addi	a6,a6,436 # 90d331b4 <pulp__FC+0x90d331b5>
1c009c98:	930a                	add	t1,t1,sp
1c009c9a:	6885                	lui	a7,0x1
1c009c9c:	01032023          	sw	a6,0(t1)
1c009ca0:	8c488893          	addi	a7,a7,-1852 # 8c4 <__CTOR_LIST__-0x1bfff740>
1c009ca4:	2b4af837          	lui	a6,0x2b4af
1c009ca8:	aa980813          	addi	a6,a6,-1367 # 2b4aeaa9 <__l2_shared_end+0xf49eaa9>
1c009cac:	988a                	add	a7,a7,sp
1c009cae:	6e05                	lui	t3,0x1
1c009cb0:	0108a023          	sw	a6,0(a7)
1c009cb4:	8c8e0e13          	addi	t3,t3,-1848 # 8c8 <__CTOR_LIST__-0x1bfff73c>
1c009cb8:	f4cfa837          	lui	a6,0xf4cfa
1c009cbc:	b3680813          	addi	a6,a6,-1226 # f4cf9b36 <pulp__FC+0xf4cf9b37>
1c009cc0:	9e0a                	add	t3,t3,sp
1c009cc2:	6305                	lui	t1,0x1
1c009cc4:	010e2023          	sw	a6,0(t3)
1c009cc8:	8cc30313          	addi	t1,t1,-1844 # 8cc <__CTOR_LIST__-0x1bfff738>
1c009ccc:	4ae84837          	lui	a6,0x4ae84
1c009cd0:	8b880813          	addi	a6,a6,-1864 # 4ae838b8 <__l2_shared_end+0x2ee738b8>
1c009cd4:	930a                	add	t1,t1,sp
1c009cd6:	6885                	lui	a7,0x1
1c009cd8:	01032023          	sw	a6,0(t1)
1c009cdc:	8d088893          	addi	a7,a7,-1840 # 8d0 <__CTOR_LIST__-0x1bfff734>
1c009ce0:	a1918837          	lui	a6,0xa1918
1c009ce4:	98880813          	addi	a6,a6,-1656 # a1917988 <pulp__FC+0xa1917989>
1c009ce8:	988a                	add	a7,a7,sp
1c009cea:	6e05                	lui	t3,0x1
1c009cec:	0108a023          	sw	a6,0(a7)
1c009cf0:	8d4e0e13          	addi	t3,t3,-1836 # 8d4 <__CTOR_LIST__-0x1bfff730>
1c009cf4:	cc68d837          	lui	a6,0xcc68d
1c009cf8:	86780813          	addi	a6,a6,-1945 # cc68c867 <pulp__FC+0xcc68c868>
1c009cfc:	9e0a                	add	t3,t3,sp
1c009cfe:	6305                	lui	t1,0x1
1c009d00:	010e2023          	sw	a6,0(t3)
1c009d04:	8d830313          	addi	t1,t1,-1832 # 8d8 <__CTOR_LIST__-0x1bfff72c>
1c009d08:	3c6ba837          	lui	a6,0x3c6ba
1c009d0c:	19b80813          	addi	a6,a6,411 # 3c6ba19b <__l2_shared_end+0x206aa19b>
1c009d10:	930a                	add	t1,t1,sp
1c009d12:	6885                	lui	a7,0x1
1c009d14:	01032023          	sw	a6,0(t1)
1c009d18:	8dc88893          	addi	a7,a7,-1828 # 8dc <__CTOR_LIST__-0x1bfff728>
1c009d1c:	e1b39837          	lui	a6,0xe1b39
1c009d20:	93180813          	addi	a6,a6,-1743 # e1b38931 <pulp__FC+0xe1b38932>
1c009d24:	988a                	add	a7,a7,sp
1c009d26:	6e05                	lui	t3,0x1
1c009d28:	0108a023          	sw	a6,0(a7)
1c009d2c:	8e0e0e13          	addi	t3,t3,-1824 # 8e0 <__CTOR_LIST__-0x1bfff724>
1c009d30:	64739837          	lui	a6,0x64739
1c009d34:	f9080813          	addi	a6,a6,-112 # 64738f90 <__l2_shared_end+0x48728f90>
1c009d38:	9e0a                	add	t3,t3,sp
1c009d3a:	6305                	lui	t1,0x1
1c009d3c:	010e2023          	sw	a6,0(t3)
1c009d40:	8e430313          	addi	t1,t1,-1820 # 8e4 <__CTOR_LIST__-0x1bfff720>
1c009d44:	2a385837          	lui	a6,0x2a385
1c009d48:	f6080813          	addi	a6,a6,-160 # 2a384f60 <__l2_shared_end+0xe374f60>
1c009d4c:	930a                	add	t1,t1,sp
1c009d4e:	6885                	lui	a7,0x1
1c009d50:	01032023          	sw	a6,0(t1)
1c009d54:	8e888893          	addi	a7,a7,-1816 # 8e8 <__CTOR_LIST__-0x1bfff71c>
1c009d58:	c8851837          	lui	a6,0xc8851
1c009d5c:	a2a80813          	addi	a6,a6,-1494 # c8850a2a <pulp__FC+0xc8850a2b>
1c009d60:	988a                	add	a7,a7,sp
1c009d62:	6e05                	lui	t3,0x1
1c009d64:	0108a023          	sw	a6,0(a7)
1c009d68:	8ece0e13          	addi	t3,t3,-1812 # 8ec <__CTOR_LIST__-0x1bfff718>
1c009d6c:	1b984837          	lui	a6,0x1b984
1c009d70:	1e380813          	addi	a6,a6,483 # 1b9841e3 <__CTOR_LIST__-0x67be21>
1c009d74:	9e0a                	add	t3,t3,sp
1c009d76:	6305                	lui	t1,0x1
1c009d78:	010e2023          	sw	a6,0(t3)
1c009d7c:	8f030313          	addi	t1,t1,-1808 # 8f0 <__CTOR_LIST__-0x1bfff714>
1c009d80:	3347f837          	lui	a6,0x3347f
1c009d84:	c9f80813          	addi	a6,a6,-865 # 3347ec9f <__l2_shared_end+0x1746ec9f>
1c009d88:	930a                	add	t1,t1,sp
1c009d8a:	6885                	lui	a7,0x1
1c009d8c:	01032023          	sw	a6,0(t1)
1c009d90:	8f488893          	addi	a7,a7,-1804 # 8f4 <__CTOR_LIST__-0x1bfff710>
1c009d94:	db1e3837          	lui	a6,0xdb1e3
1c009d98:	a3080813          	addi	a6,a6,-1488 # db1e2a30 <pulp__FC+0xdb1e2a31>
1c009d9c:	988a                	add	a7,a7,sp
1c009d9e:	6e05                	lui	t3,0x1
1c009da0:	0108a023          	sw	a6,0(a7)
1c009da4:	8f8e0e13          	addi	t3,t3,-1800 # 8f8 <__CTOR_LIST__-0x1bfff70c>
1c009da8:	3b9e7837          	lui	a6,0x3b9e7
1c009dac:	14480813          	addi	a6,a6,324 # 3b9e7144 <__l2_shared_end+0x1f9d7144>
1c009db0:	9e0a                	add	t3,t3,sp
1c009db2:	6305                	lui	t1,0x1
1c009db4:	010e2023          	sw	a6,0(t3)
1c009db8:	8fc30313          	addi	t1,t1,-1796 # 8fc <__CTOR_LIST__-0x1bfff708>
1c009dbc:	0b778837          	lui	a6,0xb778
1c009dc0:	b5380813          	addi	a6,a6,-1197 # b777b53 <__CTOR_LIST__-0x108884b1>
1c009dc4:	930a                	add	t1,t1,sp
1c009dc6:	6885                	lui	a7,0x1
1c009dc8:	01032023          	sw	a6,0(t1)
1c009dcc:	90088893          	addi	a7,a7,-1792 # 900 <__CTOR_LIST__-0x1bfff704>
1c009dd0:	1e85d837          	lui	a6,0x1e85d
1c009dd4:	43880813          	addi	a6,a6,1080 # 1e85d438 <__l2_shared_end+0x284d438>
1c009dd8:	988a                	add	a7,a7,sp
1c009dda:	6e05                	lui	t3,0x1
1c009ddc:	0108a023          	sw	a6,0(a7)
1c009de0:	904e0e13          	addi	t3,t3,-1788 # 904 <__CTOR_LIST__-0x1bfff700>
1c009de4:	a30d0837          	lui	a6,0xa30d0
1c009de8:	15c80813          	addi	a6,a6,348 # a30d015c <pulp__FC+0xa30d015d>
1c009dec:	9e0a                	add	t3,t3,sp
1c009dee:	6305                	lui	t1,0x1
1c009df0:	010e2023          	sw	a6,0(t3)
1c009df4:	90830313          	addi	t1,t1,-1784 # 908 <__CTOR_LIST__-0x1bfff6fc>
1c009df8:	bc707837          	lui	a6,0xbc707
1c009dfc:	49a80813          	addi	a6,a6,1178 # bc70749a <pulp__FC+0xbc70749b>
1c009e00:	930a                	add	t1,t1,sp
1c009e02:	6885                	lui	a7,0x1
1c009e04:	01032023          	sw	a6,0(t1)
1c009e08:	90c88893          	addi	a7,a7,-1780 # 90c <__CTOR_LIST__-0x1bfff6f8>
1c009e0c:	6f918837          	lui	a6,0x6f918
1c009e10:	0871                	addi	a6,a6,28
1c009e12:	988a                	add	a7,a7,sp
1c009e14:	6e05                	lui	t3,0x1
1c009e16:	0108a023          	sw	a6,0(a7)
1c009e1a:	910e0e13          	addi	t3,t3,-1776 # 910 <__CTOR_LIST__-0x1bfff6f4>
1c009e1e:	58bdc837          	lui	a6,0x58bdc
1c009e22:	77880813          	addi	a6,a6,1912 # 58bdc778 <__l2_shared_end+0x3cbcc778>
1c009e26:	9e0a                	add	t3,t3,sp
1c009e28:	6305                	lui	t1,0x1
1c009e2a:	010e2023          	sw	a6,0(t3)
1c009e2e:	91430313          	addi	t1,t1,-1772 # 914 <__CTOR_LIST__-0x1bfff6f0>
1c009e32:	b1d3e837          	lui	a6,0xb1d3e
1c009e36:	c9180813          	addi	a6,a6,-879 # b1d3dc91 <pulp__FC+0xb1d3dc92>
1c009e3a:	930a                	add	t1,t1,sp
1c009e3c:	6885                	lui	a7,0x1
1c009e3e:	01032023          	sw	a6,0(t1)
1c009e42:	91888893          	addi	a7,a7,-1768 # 918 <__CTOR_LIST__-0x1bfff6ec>
1c009e46:	f0b68837          	lui	a6,0xf0b68
1c009e4a:	4ea80813          	addi	a6,a6,1258 # f0b684ea <pulp__FC+0xf0b684eb>
1c009e4e:	988a                	add	a7,a7,sp
1c009e50:	6e05                	lui	t3,0x1
1c009e52:	0108a023          	sw	a6,0(a7)
1c009e56:	91ce0e13          	addi	t3,t3,-1764 # 91c <__CTOR_LIST__-0x1bfff6e8>
1c009e5a:	b846b837          	lui	a6,0xb846b
1c009e5e:	35180813          	addi	a6,a6,849 # b846b351 <pulp__FC+0xb846b352>
1c009e62:	9e0a                	add	t3,t3,sp
1c009e64:	6305                	lui	t1,0x1
1c009e66:	010e2023          	sw	a6,0(t3)
1c009e6a:	92030313          	addi	t1,t1,-1760 # 920 <__CTOR_LIST__-0x1bfff6e4>
1c009e6e:	7cb9c837          	lui	a6,0x7cb9c
1c009e72:	10380813          	addi	a6,a6,259 # 7cb9c103 <__l2_shared_end+0x60b8c103>
1c009e76:	930a                	add	t1,t1,sp
1c009e78:	6885                	lui	a7,0x1
1c009e7a:	01032023          	sw	a6,0(t1)
1c009e7e:	92488893          	addi	a7,a7,-1756 # 924 <__CTOR_LIST__-0x1bfff6e0>
1c009e82:	20406837          	lui	a6,0x20406
1c009e86:	09480813          	addi	a6,a6,148 # 20406094 <__l2_shared_end+0x43f6094>
1c009e8a:	988a                	add	a7,a7,sp
1c009e8c:	6e05                	lui	t3,0x1
1c009e8e:	0108a023          	sw	a6,0(a7)
1c009e92:	928e0e13          	addi	t3,t3,-1752 # 928 <__CTOR_LIST__-0x1bfff6dc>
1c009e96:	279b2837          	lui	a6,0x279b2
1c009e9a:	7b780813          	addi	a6,a6,1975 # 279b27b7 <__l2_shared_end+0xb9a27b7>
1c009e9e:	9e0a                	add	t3,t3,sp
1c009ea0:	6305                	lui	t1,0x1
1c009ea2:	010e2023          	sw	a6,0(t3)
1c009ea6:	92c30313          	addi	t1,t1,-1748 # 92c <__CTOR_LIST__-0x1bfff6d8>
1c009eaa:	49307837          	lui	a6,0x49307
1c009eae:	c8380813          	addi	a6,a6,-893 # 49306c83 <__l2_shared_end+0x2d2f6c83>
1c009eb2:	930a                	add	t1,t1,sp
1c009eb4:	6885                	lui	a7,0x1
1c009eb6:	01032023          	sw	a6,0(t1)
1c009eba:	93088893          	addi	a7,a7,-1744 # 930 <__CTOR_LIST__-0x1bfff6d4>
1c009ebe:	379a1837          	lui	a6,0x379a1
1c009ec2:	bea80813          	addi	a6,a6,-1046 # 379a0bea <__l2_shared_end+0x1b990bea>
1c009ec6:	988a                	add	a7,a7,sp
1c009ec8:	6e05                	lui	t3,0x1
1c009eca:	0108a023          	sw	a6,0(a7)
1c009ece:	934e0e13          	addi	t3,t3,-1740 # 934 <__CTOR_LIST__-0x1bfff6d0>
1c009ed2:	750b5837          	lui	a6,0x750b5
1c009ed6:	15880813          	addi	a6,a6,344 # 750b5158 <__l2_shared_end+0x590a5158>
1c009eda:	9e0a                	add	t3,t3,sp
1c009edc:	6305                	lui	t1,0x1
1c009ede:	010e2023          	sw	a6,0(t3)
1c009ee2:	93830313          	addi	t1,t1,-1736 # 938 <__CTOR_LIST__-0x1bfff6cc>
1c009ee6:	37326837          	lui	a6,0x37326
1c009eea:	95980813          	addi	a6,a6,-1703 # 37325959 <__l2_shared_end+0x1b315959>
1c009eee:	930a                	add	t1,t1,sp
1c009ef0:	6885                	lui	a7,0x1
1c009ef2:	01032023          	sw	a6,0(t1)
1c009ef6:	93c88893          	addi	a7,a7,-1732 # 93c <__CTOR_LIST__-0x1bfff6c8>
1c009efa:	8725e837          	lui	a6,0x8725e
1c009efe:	7ad80813          	addi	a6,a6,1965 # 8725e7ad <pulp__FC+0x8725e7ae>
1c009f02:	988a                	add	a7,a7,sp
1c009f04:	6e05                	lui	t3,0x1
1c009f06:	0108a023          	sw	a6,0(a7)
1c009f0a:	940e0e13          	addi	t3,t3,-1728 # 940 <__CTOR_LIST__-0x1bfff6c4>
1c009f0e:	b7062837          	lui	a6,0xb7062
1c009f12:	24680813          	addi	a6,a6,582 # b7062246 <pulp__FC+0xb7062247>
1c009f16:	9e0a                	add	t3,t3,sp
1c009f18:	6305                	lui	t1,0x1
1c009f1a:	010e2023          	sw	a6,0(t3)
1c009f1e:	94430313          	addi	t1,t1,-1724 # 944 <__CTOR_LIST__-0x1bfff6c0>
1c009f22:	8465f837          	lui	a6,0x8465f
1c009f26:	30980813          	addi	a6,a6,777 # 8465f309 <pulp__FC+0x8465f30a>
1c009f2a:	930a                	add	t1,t1,sp
1c009f2c:	6885                	lui	a7,0x1
1c009f2e:	01032023          	sw	a6,0(t1)
1c009f32:	94888893          	addi	a7,a7,-1720 # 948 <__CTOR_LIST__-0x1bfff6bc>
1c009f36:	93559837          	lui	a6,0x93559
1c009f3a:	68c80813          	addi	a6,a6,1676 # 9355968c <pulp__FC+0x9355968d>
1c009f3e:	988a                	add	a7,a7,sp
1c009f40:	6e05                	lui	t3,0x1
1c009f42:	0108a023          	sw	a6,0(a7)
1c009f46:	94ce0e13          	addi	t3,t3,-1716 # 94c <__CTOR_LIST__-0x1bfff6b8>
1c009f4a:	6cfea837          	lui	a6,0x6cfea
1c009f4e:	52680813          	addi	a6,a6,1318 # 6cfea526 <__l2_shared_end+0x50fda526>
1c009f52:	9e0a                	add	t3,t3,sp
1c009f54:	6305                	lui	t1,0x1
1c009f56:	010e2023          	sw	a6,0(t3)
1c009f5a:	95030313          	addi	t1,t1,-1712 # 950 <__CTOR_LIST__-0x1bfff6b4>
1c009f5e:	31f55837          	lui	a6,0x31f55
1c009f62:	c6f80813          	addi	a6,a6,-913 # 31f54c6f <__l2_shared_end+0x15f44c6f>
1c009f66:	930a                	add	t1,t1,sp
1c009f68:	6885                	lui	a7,0x1
1c009f6a:	01032023          	sw	a6,0(t1)
1c009f6e:	95488893          	addi	a7,a7,-1708 # 954 <__CTOR_LIST__-0x1bfff6b0>
1c009f72:	47182837          	lui	a6,0x47182
1c009f76:	afd80813          	addi	a6,a6,-1283 # 47181afd <__l2_shared_end+0x2b171afd>
1c009f7a:	988a                	add	a7,a7,sp
1c009f7c:	6e05                	lui	t3,0x1
1c009f7e:	0108a023          	sw	a6,0(a7)
1c009f82:	958e0e13          	addi	t3,t3,-1704 # 958 <__CTOR_LIST__-0x1bfff6ac>
1c009f86:	6bf66837          	lui	a6,0x6bf66
1c009f8a:	77280813          	addi	a6,a6,1906 # 6bf66772 <__l2_shared_end+0x4ff56772>
1c009f8e:	9e0a                	add	t3,t3,sp
1c009f90:	6305                	lui	t1,0x1
1c009f92:	010e2023          	sw	a6,0(t3)
1c009f96:	95c30313          	addi	t1,t1,-1700 # 95c <__CTOR_LIST__-0x1bfff6a8>
1c009f9a:	01f25837          	lui	a6,0x1f25
1c009f9e:	aa180813          	addi	a6,a6,-1375 # 1f24aa1 <__CTOR_LIST__-0x1a0db563>
1c009fa2:	930a                	add	t1,t1,sp
1c009fa4:	6885                	lui	a7,0x1
1c009fa6:	01032023          	sw	a6,0(t1)
1c009faa:	96088893          	addi	a7,a7,-1696 # 960 <__CTOR_LIST__-0x1bfff6a4>
1c009fae:	111fc837          	lui	a6,0x111fc
1c009fb2:	46380813          	addi	a6,a6,1123 # 111fc463 <__CTOR_LIST__-0xae03ba1>
1c009fb6:	988a                	add	a7,a7,sp
1c009fb8:	6e05                	lui	t3,0x1
1c009fba:	0108a023          	sw	a6,0(a7)
1c009fbe:	964e0e13          	addi	t3,t3,-1692 # 964 <__CTOR_LIST__-0x1bfff6a0>
1c009fc2:	7869                	lui	a6,0xffffa
1c009fc4:	6305                	lui	t1,0x1
1c009fc6:	03880813          	addi	a6,a6,56 # ffffa038 <pulp__FC+0xffffa039>
1c009fca:	9e0a                	add	t3,t3,sp
1c009fcc:	96630313          	addi	t1,t1,-1690 # 966 <__CTOR_LIST__-0x1bfff69e>
1c009fd0:	010e1023          	sh	a6,0(t3)
1c009fd4:	930a                	add	t1,t1,sp
1c009fd6:	4865                	li	a6,25
1c009fd8:	6885                	lui	a7,0x1
1c009fda:	01030023          	sb	a6,0(t1)
1c009fde:	96788893          	addi	a7,a7,-1689 # 967 <__CTOR_LIST__-0x1bfff69d>
1c009fe2:	277f1837          	lui	a6,0x277f1
1c009fe6:	49580813          	addi	a6,a6,1173 # 277f1495 <__l2_shared_end+0xb7e1495>
1c009fea:	988a                	add	a7,a7,sp
1c009fec:	6e05                	lui	t3,0x1
1c009fee:	0108a023          	sw	a6,0(a7)
1c009ff2:	96be0e13          	addi	t3,t3,-1685 # 96b <__CTOR_LIST__-0x1bfff699>
1c009ff6:	bec2e837          	lui	a6,0xbec2e
1c009ffa:	f1d80813          	addi	a6,a6,-227 # bec2df1d <pulp__FC+0xbec2df1e>
1c009ffe:	9e0a                	add	t3,t3,sp
1c00a000:	6305                	lui	t1,0x1
1c00a002:	010e2023          	sw	a6,0(t3)
1c00a006:	96f30313          	addi	t1,t1,-1681 # 96f <__CTOR_LIST__-0x1bfff695>
1c00a00a:	81b26837          	lui	a6,0x81b26
1c00a00e:	15380813          	addi	a6,a6,339 # 81b26153 <pulp__FC+0x81b26154>
1c00a012:	930a                	add	t1,t1,sp
1c00a014:	6885                	lui	a7,0x1
1c00a016:	01032023          	sw	a6,0(t1)
1c00a01a:	97388893          	addi	a7,a7,-1677 # 973 <__CTOR_LIST__-0x1bfff691>
1c00a01e:	219d0837          	lui	a6,0x219d0
1c00a022:	2e680813          	addi	a6,a6,742 # 219d02e6 <__l2_shared_end+0x59c02e6>
1c00a026:	988a                	add	a7,a7,sp
1c00a028:	6e05                	lui	t3,0x1
1c00a02a:	0108a023          	sw	a6,0(a7)
1c00a02e:	977e0e13          	addi	t3,t3,-1673 # 977 <__CTOR_LIST__-0x1bfff68d>
1c00a032:	85b28837          	lui	a6,0x85b28
1c00a036:	40580813          	addi	a6,a6,1029 # 85b28405 <pulp__FC+0x85b28406>
1c00a03a:	9e0a                	add	t3,t3,sp
1c00a03c:	6305                	lui	t1,0x1
1c00a03e:	010e2023          	sw	a6,0(t3)
1c00a042:	97b30313          	addi	t1,t1,-1669 # 97b <__CTOR_LIST__-0x1bfff689>
1c00a046:	66837837          	lui	a6,0x66837
1c00a04a:	39b80813          	addi	a6,a6,923 # 6683739b <__l2_shared_end+0x4a82739b>
1c00a04e:	930a                	add	t1,t1,sp
1c00a050:	6885                	lui	a7,0x1
1c00a052:	01032023          	sw	a6,0(t1)
1c00a056:	97f88893          	addi	a7,a7,-1665 # 97f <__CTOR_LIST__-0x1bfff685>
1c00a05a:	67f78837          	lui	a6,0x67f78
1c00a05e:	47280813          	addi	a6,a6,1138 # 67f78472 <__l2_shared_end+0x4bf68472>
1c00a062:	988a                	add	a7,a7,sp
1c00a064:	6e05                	lui	t3,0x1
1c00a066:	0108a023          	sw	a6,0(a7)
1c00a06a:	983e0e13          	addi	t3,t3,-1661 # 983 <__CTOR_LIST__-0x1bfff681>
1c00a06e:	2b783837          	lui	a6,0x2b783
1c00a072:	2bb80813          	addi	a6,a6,699 # 2b7832bb <__l2_shared_end+0xf7732bb>
1c00a076:	9e0a                	add	t3,t3,sp
1c00a078:	6305                	lui	t1,0x1
1c00a07a:	010e2023          	sw	a6,0(t3)
1c00a07e:	98730313          	addi	t1,t1,-1657 # 987 <__CTOR_LIST__-0x1bfff67d>
1c00a082:	3309d837          	lui	a6,0x3309d
1c00a086:	1aa80813          	addi	a6,a6,426 # 3309d1aa <__l2_shared_end+0x1708d1aa>
1c00a08a:	930a                	add	t1,t1,sp
1c00a08c:	6885                	lui	a7,0x1
1c00a08e:	01032023          	sw	a6,0(t1)
1c00a092:	98b88893          	addi	a7,a7,-1653 # 98b <__CTOR_LIST__-0x1bfff679>
1c00a096:	a3380837          	lui	a6,0xa3380
1c00a09a:	1da80813          	addi	a6,a6,474 # a33801da <pulp__FC+0xa33801db>
1c00a09e:	988a                	add	a7,a7,sp
1c00a0a0:	6e05                	lui	t3,0x1
1c00a0a2:	0108a023          	sw	a6,0(a7)
1c00a0a6:	98fe0e13          	addi	t3,t3,-1649 # 98f <__CTOR_LIST__-0x1bfff675>
1c00a0aa:	140a6837          	lui	a6,0x140a6
1c00a0ae:	6a080813          	addi	a6,a6,1696 # 140a66a0 <__CTOR_LIST__-0x7f59964>
1c00a0b2:	9e0a                	add	t3,t3,sp
1c00a0b4:	6305                	lui	t1,0x1
1c00a0b6:	010e2023          	sw	a6,0(t3)
1c00a0ba:	99330313          	addi	t1,t1,-1645 # 993 <__CTOR_LIST__-0x1bfff671>
1c00a0be:	3fc03837          	lui	a6,0x3fc03
1c00a0c2:	19580813          	addi	a6,a6,405 # 3fc03195 <__l2_shared_end+0x23bf3195>
1c00a0c6:	930a                	add	t1,t1,sp
1c00a0c8:	6885                	lui	a7,0x1
1c00a0ca:	01032023          	sw	a6,0(t1)
1c00a0ce:	99788893          	addi	a7,a7,-1641 # 997 <__CTOR_LIST__-0x1bfff66d>
1c00a0d2:	cbfc9837          	lui	a6,0xcbfc9
1c00a0d6:	f9c80813          	addi	a6,a6,-100 # cbfc8f9c <pulp__FC+0xcbfc8f9d>
1c00a0da:	988a                	add	a7,a7,sp
1c00a0dc:	6e05                	lui	t3,0x1
1c00a0de:	0108a023          	sw	a6,0(a7)
1c00a0e2:	99be0e13          	addi	t3,t3,-1637 # 99b <__CTOR_LIST__-0x1bfff669>
1c00a0e6:	a5c3e837          	lui	a6,0xa5c3e
1c00a0ea:	33380813          	addi	a6,a6,819 # a5c3e333 <pulp__FC+0xa5c3e334>
1c00a0ee:	9e0a                	add	t3,t3,sp
1c00a0f0:	6305                	lui	t1,0x1
1c00a0f2:	010e2023          	sw	a6,0(t3)
1c00a0f6:	99f30313          	addi	t1,t1,-1633 # 99f <__CTOR_LIST__-0x1bfff665>
1c00a0fa:	214ea837          	lui	a6,0x214ea
1c00a0fe:	8a780813          	addi	a6,a6,-1881 # 214e98a7 <__l2_shared_end+0x54d98a7>
1c00a102:	930a                	add	t1,t1,sp
1c00a104:	6885                	lui	a7,0x1
1c00a106:	01032023          	sw	a6,0(t1)
1c00a10a:	9a388893          	addi	a7,a7,-1629 # 9a3 <__CTOR_LIST__-0x1bfff661>
1c00a10e:	a76ab837          	lui	a6,0xa76ab
1c00a112:	2fa80813          	addi	a6,a6,762 # a76ab2fa <pulp__FC+0xa76ab2fb>
1c00a116:	988a                	add	a7,a7,sp
1c00a118:	6e05                	lui	t3,0x1
1c00a11a:	0108a023          	sw	a6,0(a7)
1c00a11e:	9a7e0e13          	addi	t3,t3,-1625 # 9a7 <__CTOR_LIST__-0x1bfff65d>
1c00a122:	946b9837          	lui	a6,0x946b9
1c00a126:	a2a80813          	addi	a6,a6,-1494 # 946b8a2a <pulp__FC+0x946b8a2b>
1c00a12a:	9e0a                	add	t3,t3,sp
1c00a12c:	6305                	lui	t1,0x1
1c00a12e:	010e2023          	sw	a6,0(t3)
1c00a132:	9ab30313          	addi	t1,t1,-1621 # 9ab <__CTOR_LIST__-0x1bfff659>
1c00a136:	525e2837          	lui	a6,0x525e2
1c00a13a:	62f80813          	addi	a6,a6,1583 # 525e262f <__l2_shared_end+0x365d262f>
1c00a13e:	930a                	add	t1,t1,sp
1c00a140:	6885                	lui	a7,0x1
1c00a142:	01032023          	sw	a6,0(t1)
1c00a146:	9af88893          	addi	a7,a7,-1617 # 9af <__CTOR_LIST__-0x1bfff655>
1c00a14a:	809c2837          	lui	a6,0x809c2
1c00a14e:	a5580813          	addi	a6,a6,-1451 # 809c1a55 <pulp__FC+0x809c1a56>
1c00a152:	988a                	add	a7,a7,sp
1c00a154:	6e05                	lui	t3,0x1
1c00a156:	0108a023          	sw	a6,0(a7)
1c00a15a:	9b3e0e13          	addi	t3,t3,-1613 # 9b3 <__CTOR_LIST__-0x1bfff651>
1c00a15e:	80446837          	lui	a6,0x80446
1c00a162:	a0e80813          	addi	a6,a6,-1522 # 80445a0e <pulp__FC+0x80445a0f>
1c00a166:	9e0a                	add	t3,t3,sp
1c00a168:	6305                	lui	t1,0x1
1c00a16a:	010e2023          	sw	a6,0(t3)
1c00a16e:	9b730313          	addi	t1,t1,-1609 # 9b7 <__CTOR_LIST__-0x1bfff64d>
1c00a172:	41011837          	lui	a6,0x41011
1c00a176:	c5f80813          	addi	a6,a6,-929 # 41010c5f <__l2_shared_end+0x25000c5f>
1c00a17a:	930a                	add	t1,t1,sp
1c00a17c:	6885                	lui	a7,0x1
1c00a17e:	01032023          	sw	a6,0(t1)
1c00a182:	9bb88893          	addi	a7,a7,-1605 # 9bb <__CTOR_LIST__-0x1bfff649>
1c00a186:	21545837          	lui	a6,0x21545
1c00a18a:	5a080813          	addi	a6,a6,1440 # 215455a0 <__l2_shared_end+0x55355a0>
1c00a18e:	988a                	add	a7,a7,sp
1c00a190:	6e05                	lui	t3,0x1
1c00a192:	0108a023          	sw	a6,0(a7)
1c00a196:	9bfe0e13          	addi	t3,t3,-1601 # 9bf <__CTOR_LIST__-0x1bfff645>
1c00a19a:	05f18837          	lui	a6,0x5f18
1c00a19e:	73380813          	addi	a6,a6,1843 # 5f18733 <__CTOR_LIST__-0x160e78d1>
1c00a1a2:	9e0a                	add	t3,t3,sp
1c00a1a4:	6305                	lui	t1,0x1
1c00a1a6:	010e2023          	sw	a6,0(t3)
1c00a1aa:	9c330313          	addi	t1,t1,-1597 # 9c3 <__CTOR_LIST__-0x1bfff641>
1c00a1ae:	84455837          	lui	a6,0x84455
1c00a1b2:	6df80813          	addi	a6,a6,1759 # 844556df <pulp__FC+0x844556e0>
1c00a1b6:	930a                	add	t1,t1,sp
1c00a1b8:	6885                	lui	a7,0x1
1c00a1ba:	01032023          	sw	a6,0(t1)
1c00a1be:	9c788893          	addi	a7,a7,-1593 # 9c7 <__CTOR_LIST__-0x1bfff63d>
1c00a1c2:	468fc837          	lui	a6,0x468fc
1c00a1c6:	d9680813          	addi	a6,a6,-618 # 468fbd96 <__l2_shared_end+0x2a8ebd96>
1c00a1ca:	988a                	add	a7,a7,sp
1c00a1cc:	6e05                	lui	t3,0x1
1c00a1ce:	0108a023          	sw	a6,0(a7)
1c00a1d2:	9cbe0e13          	addi	t3,t3,-1589 # 9cb <__CTOR_LIST__-0x1bfff639>
1c00a1d6:	6d885837          	lui	a6,0x6d885
1c00a1da:	19080813          	addi	a6,a6,400 # 6d885190 <__l2_shared_end+0x51875190>
1c00a1de:	9e0a                	add	t3,t3,sp
1c00a1e0:	6305                	lui	t1,0x1
1c00a1e2:	010e2023          	sw	a6,0(t3)
1c00a1e6:	9cf30313          	addi	t1,t1,-1585 # 9cf <__CTOR_LIST__-0x1bfff635>
1c00a1ea:	9fcb2837          	lui	a6,0x9fcb2
1c00a1ee:	3a280813          	addi	a6,a6,930 # 9fcb23a2 <pulp__FC+0x9fcb23a3>
1c00a1f2:	930a                	add	t1,t1,sp
1c00a1f4:	6885                	lui	a7,0x1
1c00a1f6:	01032023          	sw	a6,0(t1)
1c00a1fa:	9d388893          	addi	a7,a7,-1581 # 9d3 <__CTOR_LIST__-0x1bfff631>
1c00a1fe:	397b9837          	lui	a6,0x397b9
1c00a202:	ee780813          	addi	a6,a6,-281 # 397b8ee7 <__l2_shared_end+0x1d7a8ee7>
1c00a206:	988a                	add	a7,a7,sp
1c00a208:	6e05                	lui	t3,0x1
1c00a20a:	0108a023          	sw	a6,0(a7)
1c00a20e:	9d7e0e13          	addi	t3,t3,-1577 # 9d7 <__CTOR_LIST__-0x1bfff62d>
1c00a212:	0a4c0837          	lui	a6,0xa4c0
1c00a216:	90b80813          	addi	a6,a6,-1781 # a4bf90b <__CTOR_LIST__-0x11b406f9>
1c00a21a:	9e0a                	add	t3,t3,sp
1c00a21c:	6305                	lui	t1,0x1
1c00a21e:	010e2023          	sw	a6,0(t3)
1c00a222:	9db30313          	addi	t1,t1,-1573 # 9db <__CTOR_LIST__-0x1bfff629>
1c00a226:	af917837          	lui	a6,0xaf917
1c00a22a:	69380813          	addi	a6,a6,1683 # af917693 <pulp__FC+0xaf917694>
1c00a22e:	930a                	add	t1,t1,sp
1c00a230:	6885                	lui	a7,0x1
1c00a232:	01032023          	sw	a6,0(t1)
1c00a236:	9df88893          	addi	a7,a7,-1569 # 9df <__CTOR_LIST__-0x1bfff625>
1c00a23a:	2b085837          	lui	a6,0x2b085
1c00a23e:	09580813          	addi	a6,a6,149 # 2b085095 <__l2_shared_end+0xf075095>
1c00a242:	988a                	add	a7,a7,sp
1c00a244:	6e05                	lui	t3,0x1
1c00a246:	0108a023          	sw	a6,0(a7)
1c00a24a:	9e3e0e13          	addi	t3,t3,-1565 # 9e3 <__CTOR_LIST__-0x1bfff621>
1c00a24e:	cb45d837          	lui	a6,0xcb45d
1c00a252:	07680813          	addi	a6,a6,118 # cb45d076 <pulp__FC+0xcb45d077>
1c00a256:	9e0a                	add	t3,t3,sp
1c00a258:	6305                	lui	t1,0x1
1c00a25a:	010e2023          	sw	a6,0(t3)
1c00a25e:	9e730313          	addi	t1,t1,-1561 # 9e7 <__CTOR_LIST__-0x1bfff61d>
1c00a262:	3cc23837          	lui	a6,0x3cc23
1c00a266:	94d80813          	addi	a6,a6,-1715 # 3cc2294d <__l2_shared_end+0x20c1294d>
1c00a26a:	930a                	add	t1,t1,sp
1c00a26c:	6885                	lui	a7,0x1
1c00a26e:	01032023          	sw	a6,0(t1)
1c00a272:	9eb88893          	addi	a7,a7,-1557 # 9eb <__CTOR_LIST__-0x1bfff619>
1c00a276:	08269837          	lui	a6,0x8269
1c00a27a:	46780813          	addi	a6,a6,1127 # 8269467 <__CTOR_LIST__-0x13d96b9d>
1c00a27e:	988a                	add	a7,a7,sp
1c00a280:	6e05                	lui	t3,0x1
1c00a282:	0108a023          	sw	a6,0(a7)
1c00a286:	9efe0e13          	addi	t3,t3,-1553 # 9ef <__CTOR_LIST__-0x1bfff615>
1c00a28a:	c8a18837          	lui	a6,0xc8a18
1c00a28e:	8d080813          	addi	a6,a6,-1840 # c8a178d0 <pulp__FC+0xc8a178d1>
1c00a292:	9e0a                	add	t3,t3,sp
1c00a294:	6305                	lui	t1,0x1
1c00a296:	010e2023          	sw	a6,0(t3)
1c00a29a:	9f330313          	addi	t1,t1,-1549 # 9f3 <__CTOR_LIST__-0x1bfff611>
1c00a29e:	7a762837          	lui	a6,0x7a762
1c00a2a2:	40f80813          	addi	a6,a6,1039 # 7a76240f <__l2_shared_end+0x5e75240f>
1c00a2a6:	930a                	add	t1,t1,sp
1c00a2a8:	6885                	lui	a7,0x1
1c00a2aa:	01032023          	sw	a6,0(t1)
1c00a2ae:	9f788893          	addi	a7,a7,-1545 # 9f7 <__CTOR_LIST__-0x1bfff60d>
1c00a2b2:	f0196837          	lui	a6,0xf0196
1c00a2b6:	d9480813          	addi	a6,a6,-620 # f0195d94 <pulp__FC+0xf0195d95>
1c00a2ba:	988a                	add	a7,a7,sp
1c00a2bc:	6e05                	lui	t3,0x1
1c00a2be:	0108a023          	sw	a6,0(a7)
1c00a2c2:	9fbe0e13          	addi	t3,t3,-1541 # 9fb <__CTOR_LIST__-0x1bfff609>
1c00a2c6:	9b2ce837          	lui	a6,0x9b2ce
1c00a2ca:	87780813          	addi	a6,a6,-1929 # 9b2cd877 <pulp__FC+0x9b2cd878>
1c00a2ce:	9e0a                	add	t3,t3,sp
1c00a2d0:	6305                	lui	t1,0x1
1c00a2d2:	010e2023          	sw	a6,0(t3)
1c00a2d6:	9ff30313          	addi	t1,t1,-1537 # 9ff <__CTOR_LIST__-0x1bfff605>
1c00a2da:	73702837          	lui	a6,0x73702
1c00a2de:	99b80813          	addi	a6,a6,-1637 # 7370199b <__l2_shared_end+0x576f199b>
1c00a2e2:	930a                	add	t1,t1,sp
1c00a2e4:	6885                	lui	a7,0x1
1c00a2e6:	01032023          	sw	a6,0(t1)
1c00a2ea:	a0388893          	addi	a7,a7,-1533 # a03 <__CTOR_LIST__-0x1bfff601>
1c00a2ee:	69be5837          	lui	a6,0x69be5
1c00a2f2:	a4680813          	addi	a6,a6,-1466 # 69be4a46 <__l2_shared_end+0x4dbd4a46>
1c00a2f6:	988a                	add	a7,a7,sp
1c00a2f8:	6e05                	lui	t3,0x1
1c00a2fa:	0108a023          	sw	a6,0(a7)
1c00a2fe:	a07e0e13          	addi	t3,t3,-1529 # a07 <__CTOR_LIST__-0x1bfff5fd>
1c00a302:	26568837          	lui	a6,0x26568
1c00a306:	ccf80813          	addi	a6,a6,-817 # 26567ccf <__l2_shared_end+0xa557ccf>
1c00a30a:	9e0a                	add	t3,t3,sp
1c00a30c:	6305                	lui	t1,0x1
1c00a30e:	010e2023          	sw	a6,0(t3)
1c00a312:	a0b30313          	addi	t1,t1,-1525 # a0b <__CTOR_LIST__-0x1bfff5f9>
1c00a316:	f3087837          	lui	a6,0xf3087
1c00a31a:	31780813          	addi	a6,a6,791 # f3087317 <pulp__FC+0xf3087318>
1c00a31e:	930a                	add	t1,t1,sp
1c00a320:	6885                	lui	a7,0x1
1c00a322:	01032023          	sw	a6,0(t1)
1c00a326:	a0f88893          	addi	a7,a7,-1521 # a0f <__CTOR_LIST__-0x1bfff5f5>
1c00a32a:	522d6837          	lui	a6,0x522d6
1c00a32e:	78480813          	addi	a6,a6,1924 # 522d6784 <__l2_shared_end+0x362c6784>
1c00a332:	988a                	add	a7,a7,sp
1c00a334:	6e05                	lui	t3,0x1
1c00a336:	0108a023          	sw	a6,0(a7)
1c00a33a:	a13e0e13          	addi	t3,t3,-1517 # a13 <__CTOR_LIST__-0x1bfff5f1>
1c00a33e:	82c4b837          	lui	a6,0x82c4b
1c00a342:	06380813          	addi	a6,a6,99 # 82c4b063 <pulp__FC+0x82c4b064>
1c00a346:	9e0a                	add	t3,t3,sp
1c00a348:	6305                	lui	t1,0x1
1c00a34a:	010e2023          	sw	a6,0(t3)
1c00a34e:	a1730313          	addi	t1,t1,-1513 # a17 <__CTOR_LIST__-0x1bfff5ed>
1c00a352:	0e47b837          	lui	a6,0xe47b
1c00a356:	46d80813          	addi	a6,a6,1133 # e47b46d <__CTOR_LIST__-0xdb84b97>
1c00a35a:	930a                	add	t1,t1,sp
1c00a35c:	6885                	lui	a7,0x1
1c00a35e:	01032023          	sw	a6,0(t1)
1c00a362:	a1b88893          	addi	a7,a7,-1509 # a1b <__CTOR_LIST__-0x1bfff5e9>
1c00a366:	75e47837          	lui	a6,0x75e47
1c00a36a:	0869                	addi	a6,a6,26
1c00a36c:	988a                	add	a7,a7,sp
1c00a36e:	6e05                	lui	t3,0x1
1c00a370:	0108a023          	sw	a6,0(a7)
1c00a374:	a1fe0e13          	addi	t3,t3,-1505 # a1f <__CTOR_LIST__-0x1bfff5e5>
1c00a378:	ab184837          	lui	a6,0xab184
1c00a37c:	91e80813          	addi	a6,a6,-1762 # ab18391e <pulp__FC+0xab18391f>
1c00a380:	9e0a                	add	t3,t3,sp
1c00a382:	6305                	lui	t1,0x1
1c00a384:	010e2023          	sw	a6,0(t3)
1c00a388:	a2330313          	addi	t1,t1,-1501 # a23 <__CTOR_LIST__-0x1bfff5e1>
1c00a38c:	3bbd0837          	lui	a6,0x3bbd0
1c00a390:	ce880813          	addi	a6,a6,-792 # 3bbcfce8 <__l2_shared_end+0x1fbbfce8>
1c00a394:	930a                	add	t1,t1,sp
1c00a396:	6885                	lui	a7,0x1
1c00a398:	01032023          	sw	a6,0(t1)
1c00a39c:	a2788893          	addi	a7,a7,-1497 # a27 <__CTOR_LIST__-0x1bfff5dd>
1c00a3a0:	e81a5837          	lui	a6,0xe81a5
1c00a3a4:	3c080813          	addi	a6,a6,960 # e81a53c0 <pulp__FC+0xe81a53c1>
1c00a3a8:	988a                	add	a7,a7,sp
1c00a3aa:	6e05                	lui	t3,0x1
1c00a3ac:	0108a023          	sw	a6,0(a7)
1c00a3b0:	a2be0e13          	addi	t3,t3,-1493 # a2b <__CTOR_LIST__-0x1bfff5d9>
1c00a3b4:	21125837          	lui	a6,0x21125
1c00a3b8:	59e80813          	addi	a6,a6,1438 # 2112559e <__l2_shared_end+0x511559e>
1c00a3bc:	9e0a                	add	t3,t3,sp
1c00a3be:	6305                	lui	t1,0x1
1c00a3c0:	010e2023          	sw	a6,0(t3)
1c00a3c4:	a2f30313          	addi	t1,t1,-1489 # a2f <__CTOR_LIST__-0x1bfff5d5>
1c00a3c8:	4ac96837          	lui	a6,0x4ac96
1c00a3cc:	c4b80813          	addi	a6,a6,-949 # 4ac95c4b <__l2_shared_end+0x2ec85c4b>
1c00a3d0:	930a                	add	t1,t1,sp
1c00a3d2:	6885                	lui	a7,0x1
1c00a3d4:	01032023          	sw	a6,0(t1)
1c00a3d8:	a3388893          	addi	a7,a7,-1485 # a33 <__CTOR_LIST__-0x1bfff5d1>
1c00a3dc:	bc14a837          	lui	a6,0xbc14a
1c00a3e0:	0859                	addi	a6,a6,22
1c00a3e2:	988a                	add	a7,a7,sp
1c00a3e4:	6e05                	lui	t3,0x1
1c00a3e6:	0108a023          	sw	a6,0(a7)
1c00a3ea:	a37e0e13          	addi	t3,t3,-1481 # a37 <__CTOR_LIST__-0x1bfff5cd>
1c00a3ee:	796c8837          	lui	a6,0x796c8
1c00a3f2:	2b380813          	addi	a6,a6,691 # 796c82b3 <__l2_shared_end+0x5d6b82b3>
1c00a3f6:	9e0a                	add	t3,t3,sp
1c00a3f8:	6305                	lui	t1,0x1
1c00a3fa:	010e2023          	sw	a6,0(t3)
1c00a3fe:	a3b30313          	addi	t1,t1,-1477 # a3b <__CTOR_LIST__-0x1bfff5c9>
1c00a402:	d0adf837          	lui	a6,0xd0adf
1c00a406:	4fb80813          	addi	a6,a6,1275 # d0adf4fb <pulp__FC+0xd0adf4fc>
1c00a40a:	930a                	add	t1,t1,sp
1c00a40c:	6885                	lui	a7,0x1
1c00a40e:	01032023          	sw	a6,0(t1)
1c00a412:	a3f88893          	addi	a7,a7,-1473 # a3f <__CTOR_LIST__-0x1bfff5c5>
1c00a416:	fbee6837          	lui	a6,0xfbee6
1c00a41a:	6e05                	lui	t3,0x1
1c00a41c:	e8280813          	addi	a6,a6,-382 # fbee5e82 <pulp__FC+0xfbee5e83>
1c00a420:	988a                	add	a7,a7,sp
1c00a422:	a61e0e13          	addi	t3,t3,-1439 # a61 <__CTOR_LIST__-0x1bfff5a3>
1c00a426:	0108a023          	sw	a6,0(a7)
1c00a42a:	9e0a                	add	t3,t3,sp
1c00a42c:	fc700813          	li	a6,-57
1c00a430:	6305                	lui	t1,0x1
1c00a432:	010e0023          	sb	a6,0(t3)
1c00a436:	a4330313          	addi	t1,t1,-1469 # a43 <__CTOR_LIST__-0x1bfff5c1>
1c00a43a:	7ccb9837          	lui	a6,0x7ccb9
1c00a43e:	8ab80813          	addi	a6,a6,-1877 # 7ccb88ab <__l2_shared_end+0x60ca88ab>
1c00a442:	930a                	add	t1,t1,sp
1c00a444:	6885                	lui	a7,0x1
1c00a446:	01032023          	sw	a6,0(t1)
1c00a44a:	a4788893          	addi	a7,a7,-1465 # a47 <__CTOR_LIST__-0x1bfff5bd>
1c00a44e:	8dbb3837          	lui	a6,0x8dbb3
1c00a452:	7ff80813          	addi	a6,a6,2047 # 8dbb37ff <pulp__FC+0x8dbb3800>
1c00a456:	988a                	add	a7,a7,sp
1c00a458:	6e05                	lui	t3,0x1
1c00a45a:	0108a023          	sw	a6,0(a7)
1c00a45e:	a4be0e13          	addi	t3,t3,-1461 # a4b <__CTOR_LIST__-0x1bfff5b9>
1c00a462:	e98d2837          	lui	a6,0xe98d2
1c00a466:	f4980813          	addi	a6,a6,-183 # e98d1f49 <pulp__FC+0xe98d1f4a>
1c00a46a:	9e0a                	add	t3,t3,sp
1c00a46c:	6305                	lui	t1,0x1
1c00a46e:	010e2023          	sw	a6,0(t3)
1c00a472:	a4f30313          	addi	t1,t1,-1457 # a4f <__CTOR_LIST__-0x1bfff5b5>
1c00a476:	1e8a5837          	lui	a6,0x1e8a5
1c00a47a:	70280813          	addi	a6,a6,1794 # 1e8a5702 <__l2_shared_end+0x2895702>
1c00a47e:	930a                	add	t1,t1,sp
1c00a480:	6885                	lui	a7,0x1
1c00a482:	01032023          	sw	a6,0(t1)
1c00a486:	a5388893          	addi	a7,a7,-1453 # a53 <__CTOR_LIST__-0x1bfff5b1>
1c00a48a:	56551837          	lui	a6,0x56551
1c00a48e:	69680813          	addi	a6,a6,1686 # 56551696 <__l2_shared_end+0x3a541696>
1c00a492:	988a                	add	a7,a7,sp
1c00a494:	6e05                	lui	t3,0x1
1c00a496:	0108a023          	sw	a6,0(a7)
1c00a49a:	a57e0e13          	addi	t3,t3,-1449 # a57 <__CTOR_LIST__-0x1bfff5ad>
1c00a49e:	78187837          	lui	a6,0x78187
1c00a4a2:	75b80813          	addi	a6,a6,1883 # 7818775b <__l2_shared_end+0x5c17775b>
1c00a4a6:	9e0a                	add	t3,t3,sp
1c00a4a8:	6305                	lui	t1,0x1
1c00a4aa:	010e2023          	sw	a6,0(t3)
1c00a4ae:	a5b30313          	addi	t1,t1,-1445 # a5b <__CTOR_LIST__-0x1bfff5a9>
1c00a4b2:	4f502837          	lui	a6,0x4f502
1c00a4b6:	930a                	add	t1,t1,sp
1c00a4b8:	32a80813          	addi	a6,a6,810 # 4f50232a <__l2_shared_end+0x334f232a>
1c00a4bc:	6885                	lui	a7,0x1
1c00a4be:	01032023          	sw	a6,0(t1)
1c00a4c2:	a5f88893          	addi	a7,a7,-1441 # a5f <__CTOR_LIST__-0x1bfff5a5>
1c00a4c6:	6805                	lui	a6,0x1
1c00a4c8:	988a                	add	a7,a7,sp
1c00a4ca:	3dc80813          	addi	a6,a6,988 # 13dc <__CTOR_LIST__-0x1bffec28>
1c00a4ce:	6e05                	lui	t3,0x1
1c00a4d0:	01089023          	sh	a6,0(a7)
1c00a4d4:	a62e0e13          	addi	t3,t3,-1438 # a62 <__CTOR_LIST__-0x1bfff5a2>
1c00a4d8:	e130f837          	lui	a6,0xe130f
1c00a4dc:	9e0a                	add	t3,t3,sp
1c00a4de:	18380813          	addi	a6,a6,387 # e130f183 <pulp__FC+0xe130f184>
1c00a4e2:	6785                	lui	a5,0x1
1c00a4e4:	010e2023          	sw	a6,0(t3)
1c00a4e8:	de078793          	addi	a5,a5,-544 # de0 <__CTOR_LIST__-0x1bfff224>
1c00a4ec:	305e9837          	lui	a6,0x305e9
1c00a4f0:	978a                	add	a5,a5,sp
1c00a4f2:	27780813          	addi	a6,a6,631 # 305e9277 <__l2_shared_end+0x145d9277>
1c00a4f6:	c907a323          	sw	a6,-890(a5)
1c00a4fa:	63bc2837          	lui	a6,0x63bc2
1c00a4fe:	f5d80813          	addi	a6,a6,-163 # 63bc1f5d <__l2_shared_end+0x47bb1f5d>
1c00a502:	c907a523          	sw	a6,-886(a5)
1c00a506:	c2159837          	lui	a6,0xc2159
1c00a50a:	ccc80813          	addi	a6,a6,-820 # c2158ccc <pulp__FC+0xc2158ccd>
1c00a50e:	c907a723          	sw	a6,-882(a5)
1c00a512:	50858837          	lui	a6,0x50858
1c00a516:	fc680813          	addi	a6,a6,-58 # 50857fc6 <__l2_shared_end+0x34847fc6>
1c00a51a:	c907a923          	sw	a6,-878(a5)
1c00a51e:	5d78d837          	lui	a6,0x5d78d
1c00a522:	a0c80813          	addi	a6,a6,-1524 # 5d78ca0c <__l2_shared_end+0x4177ca0c>
1c00a526:	c907ab23          	sw	a6,-874(a5)
1c00a52a:	4980f837          	lui	a6,0x4980f
1c00a52e:	4e980813          	addi	a6,a6,1257 # 4980f4e9 <__l2_shared_end+0x2d7ff4e9>
1c00a532:	c907ad23          	sw	a6,-870(a5)
1c00a536:	71ef6837          	lui	a6,0x71ef6
1c00a53a:	80580813          	addi	a6,a6,-2043 # 71ef5805 <__l2_shared_end+0x55ee5805>
1c00a53e:	c907af23          	sw	a6,-866(a5)
1c00a542:	5bfbf837          	lui	a6,0x5bfbf
1c00a546:	0aa80813          	addi	a6,a6,170 # 5bfbf0aa <__l2_shared_end+0x3ffaf0aa>
1c00a54a:	cb07a123          	sw	a6,-862(a5)
1c00a54e:	40144837          	lui	a6,0x40144
1c00a552:	95180813          	addi	a6,a6,-1711 # 40143951 <__l2_shared_end+0x24133951>
1c00a556:	cb07a323          	sw	a6,-858(a5)
1c00a55a:	09b37837          	lui	a6,0x9b37
1c00a55e:	91280813          	addi	a6,a6,-1774 # 9b36912 <__CTOR_LIST__-0x124c96f2>
1c00a562:	cb07a523          	sw	a6,-854(a5)
1c00a566:	649cc837          	lui	a6,0x649cc
1c00a56a:	5c480813          	addi	a6,a6,1476 # 649cc5c4 <__l2_shared_end+0x489bc5c4>
1c00a56e:	cb07a723          	sw	a6,-850(a5)
1c00a572:	d857a837          	lui	a6,0xd857a
1c00a576:	7d280813          	addi	a6,a6,2002 # d857a7d2 <pulp__FC+0xd857a7d3>
1c00a57a:	cb052923          	sw	a6,-846(a0)
1c00a57e:	46586537          	lui	a0,0x46586
1c00a582:	f8550513          	addi	a0,a0,-123 # 46585f85 <__l2_shared_end+0x2a575f85>
1c00a586:	caa7ab23          	sw	a0,-842(a5)
1c00a58a:	5f921537          	lui	a0,0x5f921
1c00a58e:	55650513          	addi	a0,a0,1366 # 5f921556 <__l2_shared_end+0x43911556>
1c00a592:	caa7ad23          	sw	a0,-838(a5)
1c00a596:	2c81a537          	lui	a0,0x2c81a
1c00a59a:	61e50513          	addi	a0,a0,1566 # 2c81a61e <__l2_shared_end+0x1080a61e>
1c00a59e:	caa7af23          	sw	a0,-834(a5)
1c00a5a2:	f3ff4537          	lui	a0,0xf3ff4
1c00a5a6:	3b150513          	addi	a0,a0,945 # f3ff43b1 <pulp__FC+0xf3ff43b2>
1c00a5aa:	cca7a123          	sw	a0,-830(a5)
1c00a5ae:	8e04e537          	lui	a0,0x8e04e
1c00a5b2:	18350513          	addi	a0,a0,387 # 8e04e183 <pulp__FC+0x8e04e184>
1c00a5b6:	cca7a323          	sw	a0,-826(a5)
1c00a5ba:	bf185537          	lui	a0,0xbf185
1c00a5be:	12850513          	addi	a0,a0,296 # bf185128 <pulp__FC+0xbf185129>
1c00a5c2:	cca7a523          	sw	a0,-822(a5)
1c00a5c6:	b8443537          	lui	a0,0xb8443
1c00a5ca:	99350513          	addi	a0,a0,-1645 # b8442993 <pulp__FC+0xb8442994>
1c00a5ce:	cca7a723          	sw	a0,-818(a5)
1c00a5d2:	b1f4c537          	lui	a0,0xb1f4c
1c00a5d6:	d6f50513          	addi	a0,a0,-657 # b1f4bd6f <pulp__FC+0xb1f4bd70>
1c00a5da:	cca7a923          	sw	a0,-814(a5)
1c00a5de:	8556e537          	lui	a0,0x8556e
1c00a5e2:	6b950513          	addi	a0,a0,1721 # 8556e6b9 <pulp__FC+0x8556e6ba>
1c00a5e6:	cca7ab23          	sw	a0,-810(a5)
1c00a5ea:	77075537          	lui	a0,0x77075
1c00a5ee:	a6650513          	addi	a0,a0,-1434 # 77074a66 <__l2_shared_end+0x5b064a66>
1c00a5f2:	cca7ad23          	sw	a0,-806(a5)
1c00a5f6:	2a954537          	lui	a0,0x2a954
1c00a5fa:	65c50513          	addi	a0,a0,1628 # 2a95465c <__l2_shared_end+0xe94465c>
1c00a5fe:	cca7af23          	sw	a0,-802(a5)
1c00a602:	6811e537          	lui	a0,0x6811e
1c00a606:	aaa50513          	addi	a0,a0,-1366 # 6811daaa <__l2_shared_end+0x4c10daaa>
1c00a60a:	cea7a123          	sw	a0,-798(a5)
1c00a60e:	c7475537          	lui	a0,0xc7475
1c00a612:	bf550513          	addi	a0,a0,-1035 # c7474bf5 <pulp__FC+0xc7474bf6>
1c00a616:	cea7a323          	sw	a0,-794(a5)
1c00a61a:	35e73537          	lui	a0,0x35e73
1c00a61e:	1a250513          	addi	a0,a0,418 # 35e731a2 <__l2_shared_end+0x19e631a2>
1c00a622:	cea7a523          	sw	a0,-790(a5)
1c00a626:	74636537          	lui	a0,0x74636
1c00a62a:	45c50513          	addi	a0,a0,1116 # 7463645c <__l2_shared_end+0x5862645c>
1c00a62e:	cea7a723          	sw	a0,-786(a5)
1c00a632:	c0a3b537          	lui	a0,0xc0a3b
1c00a636:	56750513          	addi	a0,a0,1383 # c0a3b567 <pulp__FC+0xc0a3b568>
1c00a63a:	cea7a923          	sw	a0,-782(a5)
1c00a63e:	bb67b537          	lui	a0,0xbb67b
1c00a642:	b9c50513          	addi	a0,a0,-1124 # bb67ab9c <pulp__FC+0xbb67ab9d>
1c00a646:	cea7ab23          	sw	a0,-778(a5)
1c00a64a:	4086f537          	lui	a0,0x4086f
1c00a64e:	53550513          	addi	a0,a0,1333 # 4086f535 <__l2_shared_end+0x2485f535>
1c00a652:	cea7ad23          	sw	a0,-774(a5)
1c00a656:	83627537          	lui	a0,0x83627
1c00a65a:	2c250513          	addi	a0,a0,706 # 836272c2 <pulp__FC+0x836272c3>
1c00a65e:	cea7af23          	sw	a0,-770(a5)
1c00a662:	0a536537          	lui	a0,0xa536
1c00a666:	3bb50513          	addi	a0,a0,955 # a5363bb <__CTOR_LIST__-0x11ac9c49>
1c00a66a:	d0a7a123          	sw	a0,-766(a5)
1c00a66e:	ca6ef537          	lui	a0,0xca6ef
1c00a672:	61550513          	addi	a0,a0,1557 # ca6ef615 <pulp__FC+0xca6ef616>
1c00a676:	d0a7a323          	sw	a0,-762(a5)
1c00a67a:	c040b537          	lui	a0,0xc040b
1c00a67e:	84850513          	addi	a0,a0,-1976 # c040a848 <pulp__FC+0xc040a849>
1c00a682:	d0a7a523          	sw	a0,-758(a5)
1c00a686:	2e86b537          	lui	a0,0x2e86b
1c00a68a:	80c50513          	addi	a0,a0,-2036 # 2e86a80c <__l2_shared_end+0x1285a80c>
1c00a68e:	d0a7a723          	sw	a0,-754(a5)
1c00a692:	bf734537          	lui	a0,0xbf734
1c00a696:	c2850513          	addi	a0,a0,-984 # bf733c28 <pulp__FC+0xbf733c29>
1c00a69a:	d0a7a923          	sw	a0,-750(a5)
1c00a69e:	293a4537          	lui	a0,0x293a4
1c00a6a2:	1bb50513          	addi	a0,a0,443 # 293a41bb <__l2_shared_end+0xd3941bb>
1c00a6a6:	d0a7ab23          	sw	a0,-746(a5)
1c00a6aa:	15d1c537          	lui	a0,0x15d1c
1c00a6ae:	81550513          	addi	a0,a0,-2027 # 15d1b815 <__CTOR_LIST__-0x62e47ef>
1c00a6b2:	d0a7ad23          	sw	a0,-742(a5)
1c00a6b6:	123f0537          	lui	a0,0x123f0
1c00a6ba:	49a50513          	addi	a0,a0,1178 # 123f049a <__CTOR_LIST__-0x9c0fb6a>
1c00a6be:	d0a7af23          	sw	a0,-738(a5)
1c00a6c2:	82faa537          	lui	a0,0x82faa
1c00a6c6:	bc550513          	addi	a0,a0,-1083 # 82fa9bc5 <pulp__FC+0x82fa9bc6>
1c00a6ca:	d2a7a123          	sw	a0,-734(a5)
1c00a6ce:	9b245537          	lui	a0,0x9b245
1c00a6d2:	88250513          	addi	a0,a0,-1918 # 9b244882 <pulp__FC+0x9b244883>
1c00a6d6:	d2a7a323          	sw	a0,-730(a5)
1c00a6da:	aa6f1537          	lui	a0,0xaa6f1
1c00a6de:	07650513          	addi	a0,a0,118 # aa6f1076 <pulp__FC+0xaa6f1077>
1c00a6e2:	d2a7a523          	sw	a0,-726(a5)
1c00a6e6:	a027a537          	lui	a0,0xa027a
1c00a6ea:	16150513          	addi	a0,a0,353 # a027a161 <pulp__FC+0xa027a162>
1c00a6ee:	d2a7a723          	sw	a0,-722(a5)
1c00a6f2:	63581537          	lui	a0,0x63581
1c00a6f6:	c2850513          	addi	a0,a0,-984 # 63580c28 <__l2_shared_end+0x47570c28>
1c00a6fa:	d2a7a923          	sw	a0,-718(a5)
1c00a6fe:	2ca4e537          	lui	a0,0x2ca4e
1c00a702:	75050513          	addi	a0,a0,1872 # 2ca4e750 <__l2_shared_end+0x10a3e750>
1c00a706:	d2a7ab23          	sw	a0,-714(a5)
1c00a70a:	9ca45537          	lui	a0,0x9ca45
1c00a70e:	cb750513          	addi	a0,a0,-841 # 9ca44cb7 <pulp__FC+0x9ca44cb8>
1c00a712:	d2a7ad23          	sw	a0,-710(a5)
1c00a716:	8906d537          	lui	a0,0x8906d
1c00a71a:	6ab50513          	addi	a0,a0,1707 # 8906d6ab <pulp__FC+0x8906d6ac>
1c00a71e:	d2a7af23          	sw	a0,-706(a5)
1c00a722:	8ecbc537          	lui	a0,0x8ecbc
1c00a726:	71e50513          	addi	a0,a0,1822 # 8ecbc71e <pulp__FC+0x8ecbc71f>
1c00a72a:	d4a7a123          	sw	a0,-702(a5)
1c00a72e:	4bfeb537          	lui	a0,0x4bfeb
1c00a732:	f8450513          	addi	a0,a0,-124 # 4bfeaf84 <__l2_shared_end+0x2ffdaf84>
1c00a736:	d4a7a323          	sw	a0,-698(a5)
1c00a73a:	16c71537          	lui	a0,0x16c71
1c00a73e:	42e50513          	addi	a0,a0,1070 # 16c7142e <__CTOR_LIST__-0x538ebd6>
1c00a742:	d4a7a523          	sw	a0,-694(a5)
1c00a746:	752b3537          	lui	a0,0x752b3
1c00a74a:	35850513          	addi	a0,a0,856 # 752b3358 <__l2_shared_end+0x592a3358>
1c00a74e:	d4a7a723          	sw	a0,-690(a5)
1c00a752:	b7ba1537          	lui	a0,0xb7ba1
1c00a756:	15650513          	addi	a0,a0,342 # b7ba1156 <pulp__FC+0xb7ba1157>
1c00a75a:	d4a7a923          	sw	a0,-686(a5)
1c00a75e:	6ca78537          	lui	a0,0x6ca78
1c00a762:	f9750513          	addi	a0,a0,-105 # 6ca77f97 <__l2_shared_end+0x50a67f97>
1c00a766:	d4a7ab23          	sw	a0,-682(a5)
1c00a76a:	1eb23537          	lui	a0,0x1eb23
1c00a76e:	6e750513          	addi	a0,a0,1767 # 1eb236e7 <__l2_shared_end+0x2b136e7>
1c00a772:	d4a7ad23          	sw	a0,-678(a5)
1c00a776:	ac175537          	lui	a0,0xac175
1c00a77a:	ad350513          	addi	a0,a0,-1325 # ac174ad3 <pulp__FC+0xac174ad4>
1c00a77e:	d4a7af23          	sw	a0,-674(a5)
1c00a782:	1c56c537          	lui	a0,0x1c56c
1c00a786:	30e50513          	addi	a0,a0,782 # 1c56c30e <__l2_shared_end+0x55c30e>
1c00a78a:	d6a7a123          	sw	a0,-670(a5)
1c00a78e:	d482b537          	lui	a0,0xd482b
1c00a792:	2a950513          	addi	a0,a0,681 # d482b2a9 <pulp__FC+0xd482b2aa>
1c00a796:	d6a7a323          	sw	a0,-666(a5)
1c00a79a:	7640c537          	lui	a0,0x7640c
1c00a79e:	ca250513          	addi	a0,a0,-862 # 7640bca2 <__l2_shared_end+0x5a3fbca2>
1c00a7a2:	d6a7a523          	sw	a0,-662(a5)
1c00a7a6:	1c4b9537          	lui	a0,0x1c4b9
1c00a7aa:	29750513          	addi	a0,a0,663 # 1c4b9297 <__l2_shared_end+0x4a9297>
1c00a7ae:	d6a7a723          	sw	a0,-658(a5)
1c00a7b2:	83ba2537          	lui	a0,0x83ba2
1c00a7b6:	8f950513          	addi	a0,a0,-1799 # 83ba18f9 <pulp__FC+0x83ba18fa>
1c00a7ba:	d6a7a923          	sw	a0,-654(a5)
1c00a7be:	c8fda537          	lui	a0,0xc8fda
1c00a7c2:	4d350513          	addi	a0,a0,1235 # c8fda4d3 <pulp__FC+0xc8fda4d4>
1c00a7c6:	d6a7ab23          	sw	a0,-650(a5)
1c00a7ca:	6519                	lui	a0,0x6
1c00a7cc:	42550513          	addi	a0,a0,1061 # 6425 <__CTOR_LIST__-0x1bff9bdf>
1c00a7d0:	d6a79d23          	sh	a0,-646(a5)
1c00a7d4:	fc900513          	li	a0,-55
1c00a7d8:	d6a78e23          	sb	a0,-644(a5)
1c00a7dc:	bd04e537          	lui	a0,0xbd04e
1c00a7e0:	95b50513          	addi	a0,a0,-1701 # bd04d95b <pulp__FC+0xbd04d95c>
1c00a7e4:	d6a7aea3          	sw	a0,-643(a5)
1c00a7e8:	d61ef537          	lui	a0,0xd61ef
1c00a7ec:	9ee50513          	addi	a0,a0,-1554 # d61ee9ee <pulp__FC+0xd61ee9ef>
1c00a7f0:	d8a7a0a3          	sw	a0,-639(a5)
1c00a7f4:	aa6bb537          	lui	a0,0xaa6bb
1c00a7f8:	3cc50513          	addi	a0,a0,972 # aa6bb3cc <pulp__FC+0xaa6bb3cd>
1c00a7fc:	d8a7a2a3          	sw	a0,-635(a5)
1c00a800:	805ca537          	lui	a0,0x805ca
1c00a804:	08850513          	addi	a0,a0,136 # 805ca088 <pulp__FC+0x805ca089>
1c00a808:	d8a7a4a3          	sw	a0,-631(a5)
1c00a80c:	bf013537          	lui	a0,0xbf013
1c00a810:	97150513          	addi	a0,a0,-1679 # bf012971 <pulp__FC+0xbf012972>
1c00a814:	d8a7a6a3          	sw	a0,-627(a5)
1c00a818:	65ee1537          	lui	a0,0x65ee1
1c00a81c:	a2850513          	addi	a0,a0,-1496 # 65ee0a28 <__l2_shared_end+0x49ed0a28>
1c00a820:	d8a7a8a3          	sw	a0,-623(a5)
1c00a824:	7820f537          	lui	a0,0x7820f
1c00a828:	c3850513          	addi	a0,a0,-968 # 7820ec38 <__l2_shared_end+0x5c1fec38>
1c00a82c:	d8a7aaa3          	sw	a0,-619(a5)
1c00a830:	e54eb537          	lui	a0,0xe54eb
1c00a834:	8c250513          	addi	a0,a0,-1854 # e54ea8c2 <pulp__FC+0xe54ea8c3>
1c00a838:	d8a7aca3          	sw	a0,-615(a5)
1c00a83c:	37c13537          	lui	a0,0x37c13
1c00a840:	f8650513          	addi	a0,a0,-122 # 37c12f86 <__l2_shared_end+0x1bc02f86>
1c00a844:	d8a7aea3          	sw	a0,-611(a5)
1c00a848:	79e99537          	lui	a0,0x79e99
1c00a84c:	2cd50513          	addi	a0,a0,717 # 79e992cd <__l2_shared_end+0x5de892cd>
1c00a850:	daa7a0a3          	sw	a0,-607(a5)
1c00a854:	c39fd537          	lui	a0,0xc39fd
1c00a858:	66850513          	addi	a0,a0,1640 # c39fd668 <pulp__FC+0xc39fd669>
1c00a85c:	daa7a2a3          	sw	a0,-603(a5)
1c00a860:	1c1e4537          	lui	a0,0x1c1e4
1c00a864:	a4550513          	addi	a0,a0,-1467 # 1c1e3a45 <__l2_shared_end+0x1d3a45>
1c00a868:	daa7a4a3          	sw	a0,-599(a5)
1c00a86c:	0cc56537          	lui	a0,0xcc56
1c00a870:	1b150513          	addi	a0,a0,433 # cc561b1 <__CTOR_LIST__-0xf3a9e53>
1c00a874:	daa7a6a3          	sw	a0,-595(a5)
1c00a878:	a0732537          	lui	a0,0xa0732
1c00a87c:	49f50513          	addi	a0,a0,1183 # a073249f <pulp__FC+0xa07324a0>
1c00a880:	daa7a8a3          	sw	a0,-591(a5)
1c00a884:	b1379537          	lui	a0,0xb1379
1c00a888:	0d050513          	addi	a0,a0,208 # b13790d0 <pulp__FC+0xb13790d1>
1c00a88c:	daa7aaa3          	sw	a0,-587(a5)
1c00a890:	01faa537          	lui	a0,0x1faa
1c00a894:	08850513          	addi	a0,a0,136 # 1faa088 <__CTOR_LIST__-0x1a055f7c>
1c00a898:	daa7aca3          	sw	a0,-583(a5)
1c00a89c:	c244c537          	lui	a0,0xc244c
1c00a8a0:	3ef50513          	addi	a0,a0,1007 # c244c3ef <pulp__FC+0xc244c3f0>
1c00a8a4:	daa7aea3          	sw	a0,-579(a5)
1c00a8a8:	59e89537          	lui	a0,0x59e89
1c00a8ac:	fac50513          	addi	a0,a0,-84 # 59e88fac <__l2_shared_end+0x3de78fac>
1c00a8b0:	dca7a0a3          	sw	a0,-575(a5)
1c00a8b4:	45581537          	lui	a0,0x45581
1c00a8b8:	a2b50513          	addi	a0,a0,-1493 # 45580a2b <__l2_shared_end+0x29570a2b>
1c00a8bc:	dca7a2a3          	sw	a0,-571(a5)
1c00a8c0:	50a96537          	lui	a0,0x50a96
1c00a8c4:	26650513          	addi	a0,a0,614 # 50a96266 <__l2_shared_end+0x34a86266>
1c00a8c8:	dca7a4a3          	sw	a0,-567(a5)
1c00a8cc:	159a6537          	lui	a0,0x159a6
1c00a8d0:	78760613          	addi	a2,a2,1927
1c00a8d4:	53350513          	addi	a0,a0,1331 # 159a6533 <__CTOR_LIST__-0x6659ad1>
1c00a8d8:	dca7a6a3          	sw	a0,-563(a5)
1c00a8dc:	dcc7aca3          	sw	a2,-551(a5)
1c00a8e0:	57c43637          	lui	a2,0x57c43
1c00a8e4:	9ce60613          	addi	a2,a2,-1586 # 57c429ce <__l2_shared_end+0x3bc329ce>
1c00a8e8:	dcc7aea3          	sw	a2,-547(a5)
1c00a8ec:	54a10637          	lui	a2,0x54a10
1c00a8f0:	dec7a0a3          	sw	a2,-543(a5)
1c00a8f4:	c6b2b637          	lui	a2,0xc6b2b
1c00a8f8:	3d460613          	addi	a2,a2,980 # c6b2b3d4 <pulp__FC+0xc6b2b3d5>
1c00a8fc:	dec7a2a3          	sw	a2,-539(a5)
1c00a900:	8c5c2637          	lui	a2,0x8c5c2
1c00a904:	04260613          	addi	a2,a2,66 # 8c5c2042 <pulp__FC+0x8c5c2043>
1c00a908:	dec7a4a3          	sw	a2,-535(a5)
1c00a90c:	6bad0637          	lui	a2,0x6bad0
1c00a910:	97c60613          	addi	a2,a2,-1668 # 6bacf97c <__l2_shared_end+0x4fabf97c>
1c00a914:	dec7a6a3          	sw	a2,-531(a5)
1c00a918:	b3fb7637          	lui	a2,0xb3fb7
1c00a91c:	11060613          	addi	a2,a2,272 # b3fb7110 <pulp__FC+0xb3fb7111>
1c00a920:	dec7a8a3          	sw	a2,-527(a5)
1c00a924:	0a95b637          	lui	a2,0xa95b
1c00a928:	b6860613          	addi	a2,a2,-1176 # a95ab68 <__CTOR_LIST__-0x116a549c>
1c00a92c:	dec7aaa3          	sw	a2,-523(a5)
1c00a930:	c9885637          	lui	a2,0xc9885
1c00a934:	b7460613          	addi	a2,a2,-1164 # c9884b74 <pulp__FC+0xc9884b75>
1c00a938:	dec7aca3          	sw	a2,-519(a5)
1c00a93c:	3024a637          	lui	a2,0x3024a
1c00a940:	55b60613          	addi	a2,a2,1371 # 3024a55b <__l2_shared_end+0x1423a55b>
1c00a944:	dec7aea3          	sw	a2,-515(a5)
1c00a948:	20118637          	lui	a2,0x20118
1c00a94c:	31760613          	addi	a2,a2,791 # 20118317 <__l2_shared_end+0x4108317>
1c00a950:	e0c7a0a3          	sw	a2,-511(a5)
1c00a954:	38830637          	lui	a2,0x38830
1c00a958:	4a960613          	addi	a2,a2,1193 # 388304a9 <__l2_shared_end+0x1c8204a9>
1c00a95c:	e0c7a2a3          	sw	a2,-507(a5)
1c00a960:	8347a637          	lui	a2,0x8347a
1c00a964:	8d260613          	addi	a2,a2,-1838 # 834798d2 <pulp__FC+0x834798d3>
1c00a968:	e0c7a4a3          	sw	a2,-503(a5)
1c00a96c:	33a91637          	lui	a2,0x33a91
1c00a970:	20d60613          	addi	a2,a2,525 # 33a9120d <__l2_shared_end+0x17a8120d>
1c00a974:	e0c7a6a3          	sw	a2,-499(a5)
1c00a978:	21bda637          	lui	a2,0x21bda
1c00a97c:	aa060613          	addi	a2,a2,-1376 # 21bd9aa0 <__l2_shared_end+0x5bc9aa0>
1c00a980:	e0c7a8a3          	sw	a2,-495(a5)
1c00a984:	8c827637          	lui	a2,0x8c827
1c00a988:	ba460613          	addi	a2,a2,-1116 # 8c826ba4 <pulp__FC+0x8c826ba5>
1c00a98c:	e0c7aaa3          	sw	a2,-491(a5)
1c00a990:	8c805637          	lui	a2,0x8c805
1c00a994:	eb160613          	addi	a2,a2,-335 # 8c804eb1 <pulp__FC+0x8c804eb2>
1c00a998:	e0c7aca3          	sw	a2,-487(a5)
1c00a99c:	c9295637          	lui	a2,0xc9295
1c00a9a0:	1d360613          	addi	a2,a2,467 # c92951d3 <pulp__FC+0xc92951d4>
1c00a9a4:	e0c7aea3          	sw	a2,-483(a5)
1c00a9a8:	935b7637          	lui	a2,0x935b7
1c00a9ac:	edc60613          	addi	a2,a2,-292 # 935b6edc <pulp__FC+0x935b6edd>
1c00a9b0:	e2c7a0a3          	sw	a2,-479(a5)
1c00a9b4:	6f125637          	lui	a2,0x6f125
1c00a9b8:	a1d60613          	addi	a2,a2,-1507 # 6f124a1d <__l2_shared_end+0x53114a1d>
1c00a9bc:	e2c7a2a3          	sw	a2,-475(a5)
1c00a9c0:	0979e637          	lui	a2,0x979e
1c00a9c4:	0ef60613          	addi	a2,a2,239 # 979e0ef <__CTOR_LIST__-0x12861f15>
1c00a9c8:	e2c7a4a3          	sw	a2,-471(a5)
1c00a9cc:	452b9637          	lui	a2,0x452b9
1c00a9d0:	e6160613          	addi	a2,a2,-415 # 452b8e61 <__l2_shared_end+0x292a8e61>
1c00a9d4:	e2c7a6a3          	sw	a2,-467(a5)
1c00a9d8:	b4b6e637          	lui	a2,0xb4b6e
1c00a9dc:	78660613          	addi	a2,a2,1926 # b4b6e786 <pulp__FC+0xb4b6e787>
1c00a9e0:	e2c7a8a3          	sw	a2,-463(a5)
1c00a9e4:	733b9637          	lui	a2,0x733b9
1c00a9e8:	62460613          	addi	a2,a2,1572 # 733b9624 <__l2_shared_end+0x573a9624>
1c00a9ec:	e2c7aaa3          	sw	a2,-459(a5)
1c00a9f0:	5b50c637          	lui	a2,0x5b50c
1c00a9f4:	a2360613          	addi	a2,a2,-1501 # 5b50ba23 <__l2_shared_end+0x3f4fba23>
1c00a9f8:	e2c7aca3          	sw	a2,-455(a5)
1c00a9fc:	9bbb1637          	lui	a2,0x9bbb1
1c00aa00:	2a160613          	addi	a2,a2,673 # 9bbb12a1 <pulp__FC+0x9bbb12a2>
1c00aa04:	e2c7aea3          	sw	a2,-451(a5)
1c00aa08:	1b7d5637          	lui	a2,0x1b7d5
1c00aa0c:	a8360613          	addi	a2,a2,-1405 # 1b7d4a83 <__CTOR_LIST__-0x82b581>
1c00aa10:	e4c7a0a3          	sw	a2,-447(a5)
1c00aa14:	f50db637          	lui	a2,0xf50db
1c00aa18:	d7860613          	addi	a2,a2,-648 # f50dad78 <pulp__FC+0xf50dad79>
1c00aa1c:	e4c7a2a3          	sw	a2,-443(a5)
1c00aa20:	1c6a5637          	lui	a2,0x1c6a5
1c00aa24:	53d60613          	addi	a2,a2,1341 # 1c6a553d <__l2_shared_end+0x69553d>
1c00aa28:	a6903537          	lui	a0,0xa6903
1c00aa2c:	e4c7a4a3          	sw	a2,-439(a5)
1c00aa30:	d8a50513          	addi	a0,a0,-630 # a6902d8a <pulp__FC+0xa6902d8b>
1c00aa34:	099f3637          	lui	a2,0x99f3
1c00aa38:	dca7a8a3          	sw	a0,-559(a5)
1c00aa3c:	66960613          	addi	a2,a2,1641 # 99f3669 <__CTOR_LIST__-0x1260c99b>
1c00aa40:	3a251537          	lui	a0,0x3a251
1c00aa44:	e4c7a6a3          	sw	a2,-435(a5)
1c00aa48:	ce550513          	addi	a0,a0,-795 # 3a250ce5 <__l2_shared_end+0x1e240ce5>
1c00aa4c:	c91d9637          	lui	a2,0xc91d9
1c00aa50:	dca7aaa3          	sw	a0,-555(a5)
1c00aa54:	b1460613          	addi	a2,a2,-1260 # c91d8b14 <pulp__FC+0xc91d8b15>
1c00aa58:	10268693          	addi	a3,a3,258
1c00aa5c:	e4c7a8a3          	sw	a2,-431(a5)
1c00aa60:	e6d79aa3          	sh	a3,-395(a5)
1c00aa64:	f8700693          	li	a3,-121
1c00aa68:	e6d78ba3          	sb	a3,-393(a5)
1c00aa6c:	f38cb6b7          	lui	a3,0xf38cb
1c00aa70:	71068693          	addi	a3,a3,1808 # f38cb710 <pulp__FC+0xf38cb711>
1c00aa74:	e6d7ac23          	sw	a3,-392(a5)
1c00aa78:	816526b7          	lui	a3,0x81652
1c00aa7c:	85b68693          	addi	a3,a3,-1957 # 8165185b <pulp__FC+0x8165185c>
1c00aa80:	e6d7ae23          	sw	a3,-388(a5)
1c00aa84:	456d96b7          	lui	a3,0x456d9
1c00aa88:	93a68693          	addi	a3,a3,-1734 # 456d893a <__l2_shared_end+0x296c893a>
1c00aa8c:	e8d7a023          	sw	a3,-384(a5)
1c00aa90:	813356b7          	lui	a3,0x81335
1c00aa94:	d2168693          	addi	a3,a3,-735 # 81334d21 <pulp__FC+0x81334d22>
1c00aa98:	e8d7a223          	sw	a3,-380(a5)
1c00aa9c:	43c0b6b7          	lui	a3,0x43c0b
1c00aaa0:	65568693          	addi	a3,a3,1621 # 43c0b655 <__l2_shared_end+0x27bfb655>
1c00aaa4:	e8d7a423          	sw	a3,-376(a5)
1c00aaa8:	0c3336b7          	lui	a3,0xc333
1c00aaac:	2c568693          	addi	a3,a3,709 # c3332c5 <__CTOR_LIST__-0xfcccd3f>
1c00aab0:	e8d7a623          	sw	a3,-372(a5)
1c00aab4:	075236b7          	lui	a3,0x7523
1c00aab8:	d0068693          	addi	a3,a3,-768 # 7522d00 <__CTOR_LIST__-0x14add304>
1c00aabc:	e8d7a823          	sw	a3,-368(a5)
1c00aac0:	507a46b7          	lui	a3,0x507a4
1c00aac4:	63968693          	addi	a3,a3,1593 # 507a4639 <__l2_shared_end+0x34794639>
1c00aac8:	e8d7aa23          	sw	a3,-364(a5)
1c00aacc:	376686b7          	lui	a3,0x37668
1c00aad0:	64a68693          	addi	a3,a3,1610 # 3766864a <__l2_shared_end+0x1b65864a>
1c00aad4:	e8d7ac23          	sw	a3,-360(a5)
1c00aad8:	c85136b7          	lui	a3,0xc8513
1c00aadc:	4fb68693          	addi	a3,a3,1275 # c85134fb <pulp__FC+0xc85134fc>
1c00aae0:	e8d7ae23          	sw	a3,-356(a5)
1c00aae4:	3ef906b7          	lui	a3,0x3ef90
1c00aae8:	84968693          	addi	a3,a3,-1975 # 3ef8f849 <__l2_shared_end+0x22f7f849>
1c00aaec:	ead7a023          	sw	a3,-352(a5)
1c00aaf0:	7f1496b7          	lui	a3,0x7f149
1c00aaf4:	46a68693          	addi	a3,a3,1130 # 7f14946a <__l2_shared_end+0x6313946a>
1c00aaf8:	ead7a223          	sw	a3,-348(a5)
1c00aafc:	3aa596b7          	lui	a3,0x3aa59
1c00ab00:	d1668693          	addi	a3,a3,-746 # 3aa58d16 <__l2_shared_end+0x1ea48d16>
1c00ab04:	ead7a423          	sw	a3,-344(a5)
1c00ab08:	afd906b7          	lui	a3,0xafd90
1c00ab0c:	9cd68693          	addi	a3,a3,-1587 # afd8f9cd <pulp__FC+0xafd8f9ce>
1c00ab10:	ead7a623          	sw	a3,-340(a5)
1c00ab14:	848a96b7          	lui	a3,0x848a9
1c00ab18:	6fd68693          	addi	a3,a3,1789 # 848a96fd <pulp__FC+0x848a96fe>
1c00ab1c:	92f59637          	lui	a2,0x92f59
1c00ab20:	ead7a823          	sw	a3,-336(a5)
1c00ab24:	d9360613          	addi	a2,a2,-621 # 92f58d93 <pulp__FC+0x92f58d94>
1c00ab28:	bc9a56b7          	lui	a3,0xbc9a5
1c00ab2c:	e4c7aaa3          	sw	a2,-427(a5)
1c00ab30:	a1268693          	addi	a3,a3,-1518 # bc9a4a12 <pulp__FC+0xbc9a4a13>
1c00ab34:	fd87f637          	lui	a2,0xfd87f
1c00ab38:	ead7aa23          	sw	a3,-332(a5)
1c00ab3c:	02360613          	addi	a2,a2,35 # fd87f023 <pulp__FC+0xfd87f024>
1c00ab40:	0c96b6b7          	lui	a3,0xc96b
1c00ab44:	e4c7aca3          	sw	a2,-423(a5)
1c00ab48:	f0968693          	addi	a3,a3,-247 # c96af09 <__CTOR_LIST__-0xf6950fb>
1c00ab4c:	5bbe3637          	lui	a2,0x5bbe3
1c00ab50:	ead7ac23          	sw	a3,-328(a5)
1c00ab54:	36860613          	addi	a2,a2,872 # 5bbe3368 <__l2_shared_end+0x3fbd3368>
1c00ab58:	239fb6b7          	lui	a3,0x239fb
1c00ab5c:	e4c7aea3          	sw	a2,-419(a5)
1c00ab60:	2d368693          	addi	a3,a3,723 # 239fb2d3 <__l2_shared_end+0x79eb2d3>
1c00ab64:	1f65c637          	lui	a2,0x1f65c
1c00ab68:	ead7ae23          	sw	a3,-324(a5)
1c00ab6c:	22b60613          	addi	a2,a2,555 # 1f65c22b <__l2_shared_end+0x364c22b>
1c00ab70:	b41b86b7          	lui	a3,0xb41b8
1c00ab74:	e6c7a0a3          	sw	a2,-415(a5)
1c00ab78:	34468693          	addi	a3,a3,836 # b41b8344 <pulp__FC+0xb41b8345>
1c00ab7c:	ac119637          	lui	a2,0xac119
1c00ab80:	ecd7a023          	sw	a3,-320(a5)
1c00ab84:	9e560613          	addi	a2,a2,-1563 # ac1189e5 <pulp__FC+0xac1189e6>
1c00ab88:	5e6066b7          	lui	a3,0x5e606
1c00ab8c:	e6c7a2a3          	sw	a2,-411(a5)
1c00ab90:	71e68693          	addi	a3,a3,1822 # 5e60671e <__l2_shared_end+0x425f671e>
1c00ab94:	927f4637          	lui	a2,0x927f4
1c00ab98:	ecd7a223          	sw	a3,-316(a5)
1c00ab9c:	60160613          	addi	a2,a2,1537 # 927f4601 <pulp__FC+0x927f4602>
1c00aba0:	f20df6b7          	lui	a3,0xf20df
1c00aba4:	e6c7a4a3          	sw	a2,-407(a5)
1c00aba8:	0eb68693          	addi	a3,a3,235 # f20df0eb <pulp__FC+0xf20df0ec>
1c00abac:	22dce637          	lui	a2,0x22dce
1c00abb0:	ecd7a423          	sw	a3,-312(a5)
1c00abb4:	f9760613          	addi	a2,a2,-105 # 22dcdf97 <__l2_shared_end+0x6dbdf97>
1c00abb8:	177186b7          	lui	a3,0x17718
1c00abbc:	e6c7a6a3          	sw	a2,-403(a5)
1c00abc0:	50268693          	addi	a3,a3,1282 # 17718502 <__CTOR_LIST__-0x48e7b02>
1c00abc4:	170f2637          	lui	a2,0x170f2
1c00abc8:	ecd7a623          	sw	a3,-308(a5)
1c00abcc:	ab460613          	addi	a2,a2,-1356 # 170f1ab4 <__CTOR_LIST__-0x4f0e550>
1c00abd0:	48d7a6b7          	lui	a3,0x48d7a
1c00abd4:	e6c7a8a3          	sw	a2,-399(a5)
1c00abd8:	d3968693          	addi	a3,a3,-711 # 48d79d39 <__l2_shared_end+0x2cd69d39>
1c00abdc:	ecd7a823          	sw	a3,-304(a5)
1c00abe0:	ed4a56b7          	lui	a3,0xed4a5
1c00abe4:	1b668693          	addi	a3,a3,438 # ed4a51b6 <pulp__FC+0xed4a51b7>
1c00abe8:	ecd7aa23          	sw	a3,-300(a5)
1c00abec:	6c2fc6b7          	lui	a3,0x6c2fc
1c00abf0:	b6168693          	addi	a3,a3,-1183 # 6c2fbb61 <__l2_shared_end+0x502ebb61>
1c00abf4:	ecd7ac23          	sw	a3,-296(a5)
1c00abf8:	68d146b7          	lui	a3,0x68d14
1c00abfc:	1b868693          	addi	a3,a3,440 # 68d141b8 <__l2_shared_end+0x4cd041b8>
1c00ac00:	ecd7ae23          	sw	a3,-292(a5)
1c00ac04:	205ef6b7          	lui	a3,0x205ef
1c00ac08:	3d568693          	addi	a3,a3,981 # 205ef3d5 <__l2_shared_end+0x45df3d5>
1c00ac0c:	eed7a023          	sw	a3,-288(a5)
1c00ac10:	a37346b7          	lui	a3,0xa3734
1c00ac14:	50568693          	addi	a3,a3,1285 # a3734505 <pulp__FC+0xa3734506>
1c00ac18:	eed7a223          	sw	a3,-284(a5)
1c00ac1c:	8248d6b7          	lui	a3,0x8248d
1c00ac20:	d3168693          	addi	a3,a3,-719 # 8248cd31 <pulp__FC+0x8248cd32>
1c00ac24:	eed7a423          	sw	a3,-280(a5)
1c00ac28:	2c0756b7          	lui	a3,0x2c075
1c00ac2c:	ba068693          	addi	a3,a3,-1120 # 2c074ba0 <__l2_shared_end+0x10064ba0>
1c00ac30:	eed7a623          	sw	a3,-276(a5)
1c00ac34:	825896b7          	lui	a3,0x82589
1c00ac38:	11768693          	addi	a3,a3,279 # 82589117 <pulp__FC+0x82589118>
1c00ac3c:	eed7a823          	sw	a3,-272(a5)
1c00ac40:	1247d6b7          	lui	a3,0x1247d
1c00ac44:	f5b68693          	addi	a3,a3,-165 # 1247cf5b <__CTOR_LIST__-0x9b830a9>
1c00ac48:	eed7aa23          	sw	a3,-268(a5)
1c00ac4c:	cc0de6b7          	lui	a3,0xcc0de
1c00ac50:	a6668693          	addi	a3,a3,-1434 # cc0dda66 <pulp__FC+0xcc0dda67>
1c00ac54:	eed7ac23          	sw	a3,-264(a5)
1c00ac58:	21a0b6b7          	lui	a3,0x21a0b
1c00ac5c:	1ea68693          	addi	a3,a3,490 # 21a0b1ea <__l2_shared_end+0x59fb1ea>
1c00ac60:	eed7ae23          	sw	a3,-260(a5)
1c00ac64:	755436b7          	lui	a3,0x75543
1c00ac68:	2c768693          	addi	a3,a3,711 # 755432c7 <__l2_shared_end+0x595332c7>
1c00ac6c:	f0d7a023          	sw	a3,-256(a5)
1c00ac70:	1c1666b7          	lui	a3,0x1c166
1c00ac74:	a1d68693          	addi	a3,a3,-1507 # 1c165a1d <__l2_shared_end+0x155a1d>
1c00ac78:	f0d7a223          	sw	a3,-252(a5)
1c00ac7c:	2c0696b7          	lui	a3,0x2c069
1c00ac80:	21a68693          	addi	a3,a3,538 # 2c06921a <__l2_shared_end+0x1005921a>
1c00ac84:	f0d7a423          	sw	a3,-248(a5)
1c00ac88:	7a2116b7          	lui	a3,0x7a211
1c00ac8c:	a2268693          	addi	a3,a3,-1502 # 7a210a22 <__l2_shared_end+0x5e200a22>
1c00ac90:	f0d7a623          	sw	a3,-244(a5)
1c00ac94:	3382e6b7          	lui	a3,0x3382e
1c00ac98:	96968693          	addi	a3,a3,-1687 # 3382d969 <__l2_shared_end+0x1781d969>
1c00ac9c:	f0d7a823          	sw	a3,-240(a5)
1c00aca0:	99deb6b7          	lui	a3,0x99deb
1c00aca4:	41468693          	addi	a3,a3,1044 # 99deb414 <pulp__FC+0x99deb415>
1c00aca8:	f0d7aa23          	sw	a3,-236(a5)
1c00acac:	5fd4f6b7          	lui	a3,0x5fd4f
1c00acb0:	86f68693          	addi	a3,a3,-1937 # 5fd4e86f <__l2_shared_end+0x43d3e86f>
1c00acb4:	f0d7ac23          	sw	a3,-232(a5)
1c00acb8:	16afb6b7          	lui	a3,0x16afb
1c00acbc:	56d68693          	addi	a3,a3,1389 # 16afb56d <__CTOR_LIST__-0x5504a97>
1c00acc0:	f0d7ae23          	sw	a3,-228(a5)
1c00acc4:	951456b7          	lui	a3,0x95145
1c00acc8:	6c168693          	addi	a3,a3,1729 # 951456c1 <pulp__FC+0x951456c2>
1c00accc:	f2d7a023          	sw	a3,-224(a5)
1c00acd0:	9030c6b7          	lui	a3,0x9030c
1c00acd4:	4a468693          	addi	a3,a3,1188 # 9030c4a4 <pulp__FC+0x9030c4a5>
1c00acd8:	f2d7a223          	sw	a3,-220(a5)
1c00acdc:	944c46b7          	lui	a3,0x944c4
1c00ace0:	9bc68693          	addi	a3,a3,-1604 # 944c39bc <pulp__FC+0x944c39bd>
1c00ace4:	f2d7a423          	sw	a3,-216(a5)
1c00ace8:	73ecb6b7          	lui	a3,0x73ecb
1c00acec:	0e168693          	addi	a3,a3,225 # 73ecb0e1 <__l2_shared_end+0x57ebb0e1>
1c00acf0:	f2d7a623          	sw	a3,-212(a5)
1c00acf4:	6762b6b7          	lui	a3,0x6762b
1c00acf8:	58e68693          	addi	a3,a3,1422 # 6762b58e <__l2_shared_end+0x4b61b58e>
1c00acfc:	f2d7a823          	sw	a3,-208(a5)
1c00ad00:	cd2e26b7          	lui	a3,0xcd2e2
1c00ad04:	c2068693          	addi	a3,a3,-992 # cd2e1c20 <pulp__FC+0xcd2e1c21>
1c00ad08:	f2d7aa23          	sw	a3,-204(a5)
1c00ad0c:	934986b7          	lui	a3,0x93498
1c00ad10:	b1c68693          	addi	a3,a3,-1252 # 93497b1c <pulp__FC+0x93497b1d>
1c00ad14:	f2d7ac23          	sw	a3,-200(a5)
1c00ad18:	28c0f6b7          	lui	a3,0x28c0f
1c00ad1c:	fc068693          	addi	a3,a3,-64 # 28c0efc0 <__l2_shared_end+0xcbfefc0>
1c00ad20:	f2d7ae23          	sw	a3,-196(a5)
1c00ad24:	099ae6b7          	lui	a3,0x99ae
1c00ad28:	c4b68693          	addi	a3,a3,-949 # 99adc4b <__CTOR_LIST__-0x126523b9>
1c00ad2c:	f4d7a023          	sw	a3,-192(a5)
1c00ad30:	954f36b7          	lui	a3,0x954f3
1c00ad34:	91c68693          	addi	a3,a3,-1764 # 954f291c <pulp__FC+0x954f291d>
1c00ad38:	f4d7a223          	sw	a3,-188(a5)
1c00ad3c:	787146b7          	lui	a3,0x78714
1c00ad40:	a7068693          	addi	a3,a3,-1424 # 78713a70 <__l2_shared_end+0x5c703a70>
1c00ad44:	f4d7a423          	sw	a3,-184(a5)
1c00ad48:	958a36b7          	lui	a3,0x958a3
1c00ad4c:	c8268693          	addi	a3,a3,-894 # 958a2c82 <pulp__FC+0x958a2c83>
1c00ad50:	f4d7a623          	sw	a3,-180(a5)
1c00ad54:	451ea6b7          	lui	a3,0x451ea
1c00ad58:	bb768693          	addi	a3,a3,-1097 # 451e9bb7 <__l2_shared_end+0x291d9bb7>
1c00ad5c:	f4d7a823          	sw	a3,-176(a5)
1c00ad60:	8d99e6b7          	lui	a3,0x8d99e
1c00ad64:	09168693          	addi	a3,a3,145 # 8d99e091 <pulp__FC+0x8d99e092>
1c00ad68:	c9b70713          	addi	a4,a4,-869
1c00ad6c:	f4d7aa23          	sw	a3,-172(a5)
1c00ad70:	f6e79823          	sh	a4,-144(a5)
1c00ad74:	05400713          	li	a4,84
1c00ad78:	f6e78923          	sb	a4,-142(a5)
1c00ad7c:	ff2a3737          	lui	a4,0xff2a3
1c00ad80:	c8170713          	addi	a4,a4,-895 # ff2a2c81 <pulp__FC+0xff2a2c82>
1c00ad84:	f6e7a9a3          	sw	a4,-141(a5)
1c00ad88:	3b971737          	lui	a4,0x3b971
1c00ad8c:	2a070713          	addi	a4,a4,672 # 3b9712a0 <__l2_shared_end+0x1f9612a0>
1c00ad90:	f6e7aba3          	sw	a4,-137(a5)
1c00ad94:	8ed41737          	lui	a4,0x8ed41
1c00ad98:	a7070713          	addi	a4,a4,-1424 # 8ed40a70 <pulp__FC+0x8ed40a71>
1c00ad9c:	f6e7ada3          	sw	a4,-133(a5)
1c00ada0:	28781737          	lui	a4,0x28781
1c00ada4:	02770713          	addi	a4,a4,39 # 28781027 <__l2_shared_end+0xc771027>
1c00ada8:	f6e7afa3          	sw	a4,-129(a5)
1c00adac:	86266737          	lui	a4,0x86266
1c00adb0:	40870713          	addi	a4,a4,1032 # 86266408 <pulp__FC+0x86266409>
1c00adb4:	f8e7a1a3          	sw	a4,-125(a5)
1c00adb8:	30aaa737          	lui	a4,0x30aaa
1c00adbc:	70070713          	addi	a4,a4,1792 # 30aaa700 <__l2_shared_end+0x14a9a700>
1c00adc0:	f8e7a3a3          	sw	a4,-121(a5)
1c00adc4:	9810b737          	lui	a4,0x9810b
1c00adc8:	a9e70713          	addi	a4,a4,-1378 # 9810aa9e <pulp__FC+0x9810aa9f>
1c00adcc:	f8e7a5a3          	sw	a4,-117(a5)
1c00add0:	8a0f1737          	lui	a4,0x8a0f1
1c00add4:	a7570713          	addi	a4,a4,-1419 # 8a0f0a75 <pulp__FC+0x8a0f0a76>
1c00add8:	f8e7a7a3          	sw	a4,-113(a5)
1c00addc:	29b93737          	lui	a4,0x29b93
1c00ade0:	e5270713          	addi	a4,a4,-430 # 29b92e52 <__l2_shared_end+0xdb82e52>
1c00ade4:	f8e7a9a3          	sw	a4,-109(a5)
1c00ade8:	2f418737          	lui	a4,0x2f418
1c00adec:	b5770713          	addi	a4,a4,-1193 # 2f417b57 <__l2_shared_end+0x13407b57>
1c00adf0:	f8e7aba3          	sw	a4,-105(a5)
1c00adf4:	36615737          	lui	a4,0x36615
1c00adf8:	57870713          	addi	a4,a4,1400 # 36615578 <__l2_shared_end+0x1a605578>
1c00adfc:	f8e7ada3          	sw	a4,-101(a5)
1c00ae00:	9b2fb737          	lui	a4,0x9b2fb
1c00ae04:	78870713          	addi	a4,a4,1928 # 9b2fb788 <pulp__FC+0x9b2fb789>
1c00ae08:	f8e7afa3          	sw	a4,-97(a5)
1c00ae0c:	130a6737          	lui	a4,0x130a6
1c00ae10:	cc870713          	addi	a4,a4,-824 # 130a5cc8 <__CTOR_LIST__-0x8f5a33c>
1c00ae14:	fae7a1a3          	sw	a4,-93(a5)
1c00ae18:	5841d737          	lui	a4,0x5841d
1c00ae1c:	0b970713          	addi	a4,a4,185 # 5841d0b9 <__l2_shared_end+0x3c40d0b9>
1c00ae20:	fae7a3a3          	sw	a4,-89(a5)
1c00ae24:	fe83d737          	lui	a4,0xfe83d
1c00ae28:	56f70713          	addi	a4,a4,1391 # fe83d56f <pulp__FC+0xfe83d570>
1c00ae2c:	fae7a5a3          	sw	a4,-85(a5)
1c00ae30:	5afd3737          	lui	a4,0x5afd3
1c00ae34:	ab170713          	addi	a4,a4,-1359 # 5afd2ab1 <__l2_shared_end+0x3efc2ab1>
1c00ae38:	fae7a7a3          	sw	a4,-81(a5)
1c00ae3c:	3bd33737          	lui	a4,0x3bd33
1c00ae40:	d4070713          	addi	a4,a4,-704 # 3bd32d40 <__l2_shared_end+0x1fd22d40>
1c00ae44:	fae7a9a3          	sw	a4,-77(a5)
1c00ae48:	5f3f5737          	lui	a4,0x5f3f5
1c00ae4c:	44370713          	addi	a4,a4,1091 # 5f3f5443 <__l2_shared_end+0x433e5443>
1c00ae50:	fae7aba3          	sw	a4,-73(a5)
1c00ae54:	6c43f737          	lui	a4,0x6c43f
1c00ae58:	ba470713          	addi	a4,a4,-1116 # 6c43eba4 <__l2_shared_end+0x5042eba4>
1c00ae5c:	c17546b7          	lui	a3,0xc1754
1c00ae60:	fae7ada3          	sw	a4,-69(a5)
1c00ae64:	88968693          	addi	a3,a3,-1911 # c1753889 <pulp__FC+0xc175388a>
1c00ae68:	0c307737          	lui	a4,0xc307
1c00ae6c:	f4d7ac23          	sw	a3,-168(a5)
1c00ae70:	58d70713          	addi	a4,a4,1421 # c30758d <__CTOR_LIST__-0xfcf8a77>
1c00ae74:	8ac086b7          	lui	a3,0x8ac08
1c00ae78:	fae7afa3          	sw	a4,-65(a5)
1c00ae7c:	9a868693          	addi	a3,a3,-1624 # 8ac079a8 <pulp__FC+0x8ac079a9>
1c00ae80:	ec660737          	lui	a4,0xec660
1c00ae84:	f4d7ae23          	sw	a3,-164(a5)
1c00ae88:	6ab70713          	addi	a4,a4,1707 # ec6606ab <pulp__FC+0xec6606ac>
1c00ae8c:	7dc646b7          	lui	a3,0x7dc64
1c00ae90:	fce7a1a3          	sw	a4,-61(a5)
1c00ae94:	c0768693          	addi	a3,a3,-1017 # 7dc63c07 <__l2_shared_end+0x61c53c07>
1c00ae98:	4af19737          	lui	a4,0x4af19
1c00ae9c:	f6d7a023          	sw	a3,-160(a5)
1c00aea0:	41270713          	addi	a4,a4,1042 # 4af19412 <__l2_shared_end+0x2ef09412>
1c00aea4:	a7bb26b7          	lui	a3,0xa7bb2
1c00aea8:	fce7a3a3          	sw	a4,-57(a5)
1c00aeac:	6f468693          	addi	a3,a3,1780 # a7bb26f4 <pulp__FC+0xa7bb26f5>
1c00aeb0:	4c430737          	lui	a4,0x4c430
1c00aeb4:	f6d7a223          	sw	a3,-156(a5)
1c00aeb8:	7eb70713          	addi	a4,a4,2027 # 4c4307eb <__l2_shared_end+0x304207eb>
1c00aebc:	e68ac6b7          	lui	a3,0xe68ac
1c00aec0:	fce7a5a3          	sw	a4,-53(a5)
1c00aec4:	19268693          	addi	a3,a3,402 # e68ac192 <pulp__FC+0xe68ac193>
1c00aec8:	44ba8737          	lui	a4,0x44ba8
1c00aecc:	f6d7a423          	sw	a3,-152(a5)
1c00aed0:	49870713          	addi	a4,a4,1176 # 44ba8498 <__l2_shared_end+0x28b98498>
1c00aed4:	87bb06b7          	lui	a3,0x87bb0
1c00aed8:	ec168693          	addi	a3,a3,-319 # 87bafec1 <pulp__FC+0x87bafec2>
1c00aedc:	fce7a7a3          	sw	a4,-49(a5)
1c00aee0:	b4cd4737          	lui	a4,0xb4cd4
1c00aee4:	f6d7a623          	sw	a3,-148(a5)
1c00aee8:	e0070713          	addi	a4,a4,-512 # b4cd3e00 <pulp__FC+0xb4cd3e01>
1c00aeec:	fce7a9a3          	sw	a4,-45(a5)
1c00aef0:	82839737          	lui	a4,0x82839
1c00aef4:	18370713          	addi	a4,a4,387 # 82839183 <pulp__FC+0x82839184>
1c00aef8:	fce7aba3          	sw	a4,-41(a5)
1c00aefc:	a7852737          	lui	a4,0xa7852
1c00af00:	41a70713          	addi	a4,a4,1050 # a785241a <pulp__FC+0xa785241b>
1c00af04:	fce7ada3          	sw	a4,-37(a5)
1c00af08:	2e2a4737          	lui	a4,0x2e2a4
1c00af0c:	ec670713          	addi	a4,a4,-314 # 2e2a3ec6 <__l2_shared_end+0x12293ec6>
1c00af10:	fce7afa3          	sw	a4,-33(a5)
1c00af14:	76c4d737          	lui	a4,0x76c4d
1c00af18:	9a670713          	addi	a4,a4,-1626 # 76c4c9a6 <__l2_shared_end+0x5ac3c9a6>
1c00af1c:	fee7a1a3          	sw	a4,-29(a5)
1c00af20:	b0375737          	lui	a4,0xb0375
1c00af24:	9fc70713          	addi	a4,a4,-1540 # b03749fc <pulp__FC+0xb03749fd>
1c00af28:	fee7a3a3          	sw	a4,-25(a5)
1c00af2c:	a793d737          	lui	a4,0xa793d
1c00af30:	91370713          	addi	a4,a4,-1773 # a793c913 <pulp__FC+0xa793c914>
1c00af34:	fee7a5a3          	sw	a4,-21(a5)
1c00af38:	abc0d737          	lui	a4,0xabc0d
1c00af3c:	69370713          	addi	a4,a4,1683 # abc0d693 <pulp__FC+0xabc0d694>
1c00af40:	fee7a7a3          	sw	a4,-17(a5)
1c00af44:	5b696737          	lui	a4,0x5b696
1c00af48:	09970713          	addi	a4,a4,153 # 5b696099 <__l2_shared_end+0x3f686099>
1c00af4c:	fee7a9a3          	sw	a4,-13(a5)
1c00af50:	49f64737          	lui	a4,0x49f64
1c00af54:	8a870713          	addi	a4,a4,-1880 # 49f638a8 <__l2_shared_end+0x2df538a8>
1c00af58:	75fd                	lui	a1,0xfffff
1c00af5a:	fee7aba3          	sw	a4,-9(a5)
1c00af5e:	a39c5737          	lui	a4,0xa39c5
1c00af62:	22058413          	addi	s0,a1,544 # fffff220 <pulp__FC+0xfffff221>
1c00af66:	3da70713          	addi	a4,a4,986 # a39c53da <pulp__FC+0xa39c53db>
1c00af6a:	943e                	add	s0,s0,a5
1c00af6c:	6a058613          	addi	a2,a1,1696
1c00af70:	fee7ada3          	sw	a4,-5(a5)
1c00af74:	26058593          	addi	a1,a1,608
1c00af78:	fd000713          	li	a4,-48
1c00af7c:	963e                	add	a2,a2,a5
1c00af7e:	95be                	add	a1,a1,a5
1c00af80:	fee78fa3          	sb	a4,-1(a5)
1c00af84:	8522                	mv	a0,s0
1c00af86:	217010ef          	jal	ra,1c00c99c <PQCLEAN_KYBER768_CLEAN_crypto_kem_dec>
1c00af8a:	1c000537          	lui	a0,0x1c000
1c00af8e:	11c50513          	addi	a0,a0,284 # 1c00011c <__DTOR_END__+0x100>
1c00af92:	349020ef          	jal	ra,1c00dada <puts>
1c00af96:	1c000537          	lui	a0,0x1c000
1c00af9a:	13050513          	addi	a0,a0,304 # 1c000130 <__DTOR_END__+0x114>
1c00af9e:	33d020ef          	jal	ra,1c00dada <puts>
1c00afa2:	02040993          	addi	s3,s0,32
1c00afa6:	84a2                	mv	s1,s0
1c00afa8:	1c000937          	lui	s2,0x1c000
1c00afac:	0004c583          	lbu	a1,0(s1)
1c00afb0:	13890513          	addi	a0,s2,312 # 1c000138 <__DTOR_END__+0x11c>
1c00afb4:	0485                	addi	s1,s1,1
1c00afb6:	3e7020ef          	jal	ra,1c00db9c <printf>
1c00afba:	ff3499e3          	bne	s1,s3,1c00afac <main+0x2e6a>
1c00afbe:	4529                	li	a0,10
1c00afc0:	397020ef          	jal	ra,1c00db56 <putchar>
1c00afc4:	6305                	lui	t1,0x1
1c00afc6:	77fd                	lui	a5,0xfffff
1c00afc8:	de030313          	addi	t1,t1,-544 # de0 <__CTOR_LIST__-0x1bfff224>
1c00afcc:	24078793          	addi	a5,a5,576 # fffff240 <pulp__FC+0xfffff241>
1c00afd0:	930a                	add	t1,t1,sp
1c00afd2:	979a                	add	a5,a5,t1
1c00afd4:	a021                	j	1c00afdc <main+0x2e9a>
1c00afd6:	0785                	addi	a5,a5,1
1c00afd8:	02940f63          	beq	s0,s1,1c00b016 <main+0x2ed4>
1c00afdc:	00044683          	lbu	a3,0(s0)
1c00afe0:	0007c703          	lbu	a4,0(a5)
1c00afe4:	0405                	addi	s0,s0,1
1c00afe6:	fee688e3          	beq	a3,a4,1c00afd6 <main+0x2e94>
1c00afea:	1c000537          	lui	a0,0x1c000
1c00afee:	14050513          	addi	a0,a0,320 # 1c000140 <__DTOR_END__+0x124>
1c00aff2:	2e9020ef          	jal	ra,1c00dada <puts>
1c00aff6:	557d                	li	a0,-1
1c00aff8:	61010113          	addi	sp,sp,1552
1c00affc:	7ec12083          	lw	ra,2028(sp)
1c00b000:	7e812403          	lw	s0,2024(sp)
1c00b004:	7e412483          	lw	s1,2020(sp)
1c00b008:	7e012903          	lw	s2,2016(sp)
1c00b00c:	7dc12983          	lw	s3,2012(sp)
1c00b010:	7f010113          	addi	sp,sp,2032
1c00b014:	8082                	ret
1c00b016:	4501                	li	a0,0
1c00b018:	b7c5                	j	1c00aff8 <main+0x2eb6>

1c00b01a <pos_fll_init>:
1c00b01a:	1101                	addi	sp,sp,-32
1c00b01c:	1a100637          	lui	a2,0x1a100
1c00b020:	ca26                	sw	s1,20(sp)
1c00b022:	00451693          	slli	a3,a0,0x4
1c00b026:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c00b02a:	94b6                	add	s1,s1,a3
1c00b02c:	4098                	lw	a4,0(s1)
1c00b02e:	c84a                	sw	s2,16(sp)
1c00b030:	ce06                	sw	ra,28(sp)
1c00b032:	cc22                	sw	s0,24(sp)
1c00b034:	c64e                	sw	s3,12(sp)
1c00b036:	c452                	sw	s4,8(sp)
1c00b038:	892a                	mv	s2,a0
1c00b03a:	87ba                	mv	a5,a4
1c00b03c:	04074563          	bltz	a4,1c00b086 <pos_fll_init+0x6c>
1c00b040:	00860593          	addi	a1,a2,8
1c00b044:	95b6                	add	a1,a1,a3
1c00b046:	419c                	lw	a5,0(a1)
1c00b048:	7541                	lui	a0,0xffff0
1c00b04a:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c00b04e:	8fe9                	and	a5,a5,a0
1c00b050:	6509                	lui	a0,0x2
1c00b052:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c00b056:	8fc9                	or	a5,a5,a0
1c00b058:	f0010537          	lui	a0,0xf0010
1c00b05c:	157d                	addi	a0,a0,-1
1c00b05e:	8fe9                	and	a5,a5,a0
1c00b060:	00500537          	lui	a0,0x500
1c00b064:	8fc9                	or	a5,a5,a0
1c00b066:	0631                	addi	a2,a2,12
1c00b068:	c19c                	sw	a5,0(a1)
1c00b06a:	96b2                	add	a3,a3,a2
1c00b06c:	429c                	lw	a5,0(a3)
1c00b06e:	fc010637          	lui	a2,0xfc010
1c00b072:	167d                	addi	a2,a2,-1
1c00b074:	8ff1                	and	a5,a5,a2
1c00b076:	014c0637          	lui	a2,0x14c0
1c00b07a:	8fd1                	or	a5,a5,a2
1c00b07c:	c29c                	sw	a5,0(a3)
1c00b07e:	c00007b7          	lui	a5,0xc0000
1c00b082:	8fd9                	or	a5,a5,a4
1c00b084:	c09c                	sw	a5,0(s1)
1c00b086:	1c006437          	lui	s0,0x1c006
1c00b08a:	26440413          	addi	s0,s0,612 # 1c006264 <pos_fll_freq>
1c00b08e:	00291993          	slli	s3,s2,0x2
1c00b092:	013406b3          	add	a3,s0,s3
1c00b096:	0006aa03          	lw	s4,0(a3)
1c00b09a:	020a1d63          	bnez	s4,1c00b0d4 <pos_fll_init+0xba>
1c00b09e:	83e9                	srli	a5,a5,0x1a
1c00b0a0:	0742                	slli	a4,a4,0x10
1c00b0a2:	8341                	srli	a4,a4,0x10
1c00b0a4:	8bbd                	andi	a5,a5,15
1c00b0a6:	073e                	slli	a4,a4,0xf
1c00b0a8:	17fd                	addi	a5,a5,-1
1c00b0aa:	00f75a33          	srl	s4,a4,a5
1c00b0ae:	1c006537          	lui	a0,0x1c006
1c00b0b2:	0146a023          	sw	s4,0(a3)
1c00b0b6:	26050513          	addi	a0,a0,608 # 1c006260 <stack>
1c00b0ba:	954a                	add	a0,a0,s2
1c00b0bc:	4685                	li	a3,1
1c00b0be:	00d50023          	sb	a3,0(a0)
1c00b0c2:	40f2                	lw	ra,28(sp)
1c00b0c4:	4462                	lw	s0,24(sp)
1c00b0c6:	8552                	mv	a0,s4
1c00b0c8:	44d2                	lw	s1,20(sp)
1c00b0ca:	4942                	lw	s2,16(sp)
1c00b0cc:	49b2                	lw	s3,12(sp)
1c00b0ce:	4a22                	lw	s4,8(sp)
1c00b0d0:	6105                	addi	sp,sp,32
1c00b0d2:	8082                	ret
1c00b0d4:	8552                	mv	a0,s4
1c00b0d6:	830fd0ef          	jal	ra,1c008106 <__clzsi2>
1c00b0da:	1579                	addi	a0,a0,-2
1c00b0dc:	00155613          	srli	a2,a0,0x1
1c00b0e0:	e631                	bnez	a2,1c00b12c <pos_fll_init+0x112>
1c00b0e2:	4709                	li	a4,2
1c00b0e4:	4585                	li	a1,1
1c00b0e6:	4605                	li	a2,1
1c00b0e8:	00ca17b3          	sll	a5,s4,a2
1c00b0ec:	76e1                	lui	a3,0xffff8
1c00b0ee:	1c006537          	lui	a0,0x1c006
1c00b0f2:	8efd                	and	a3,a3,a5
1c00b0f4:	26050513          	addi	a0,a0,608 # 1c006260 <stack>
1c00b0f8:	96ae                	add	a3,a3,a1
1c00b0fa:	012505b3          	add	a1,a0,s2
1c00b0fe:	00c6d6b3          	srl	a3,a3,a2
1c00b102:	944e                	add	s0,s0,s3
1c00b104:	0005c603          	lbu	a2,0(a1)
1c00b108:	c014                	sw	a3,0(s0)
1c00b10a:	da45                	beqz	a2,1c00b0ba <pos_fll_init+0xa0>
1c00b10c:	4094                	lw	a3,0(s1)
1c00b10e:	83bd                	srli	a5,a5,0xf
1c00b110:	07c2                	slli	a5,a5,0x10
1c00b112:	7641                	lui	a2,0xffff0
1c00b114:	83c1                	srli	a5,a5,0x10
1c00b116:	8ef1                	and	a3,a3,a2
1c00b118:	8edd                	or	a3,a3,a5
1c00b11a:	c40007b7          	lui	a5,0xc4000
1c00b11e:	8b3d                	andi	a4,a4,15
1c00b120:	17fd                	addi	a5,a5,-1
1c00b122:	076a                	slli	a4,a4,0x1a
1c00b124:	8efd                	and	a3,a3,a5
1c00b126:	8ed9                	or	a3,a3,a4
1c00b128:	c094                	sw	a3,0(s1)
1c00b12a:	bf41                	j	1c00b0ba <pos_fll_init+0xa0>
1c00b12c:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c00b130:	4685                	li	a3,1
1c00b132:	00b695b3          	sll	a1,a3,a1
1c00b136:	00160713          	addi	a4,a2,1
1c00b13a:	b77d                	j	1c00b0e8 <pos_fll_init+0xce>

1c00b13c <pos_fll_constructor>:
1c00b13c:	1c0067b7          	lui	a5,0x1c006
1c00b140:	26478793          	addi	a5,a5,612 # 1c006264 <pos_fll_freq>
1c00b144:	0007a023          	sw	zero,0(a5)
1c00b148:	0007a223          	sw	zero,4(a5)
1c00b14c:	1c0067b7          	lui	a5,0x1c006
1c00b150:	26079023          	sh	zero,608(a5) # 1c006260 <stack>
1c00b154:	8082                	ret

1c00b156 <pos_soc_init>:
1c00b156:	1141                	addi	sp,sp,-16
1c00b158:	c606                	sw	ra,12(sp)
1c00b15a:	c422                	sw	s0,8(sp)
1c00b15c:	37c5                	jal	1c00b13c <pos_fll_constructor>
1c00b15e:	4501                	li	a0,0
1c00b160:	3d6d                	jal	1c00b01a <pos_fll_init>
1c00b162:	1c006437          	lui	s0,0x1c006
1c00b166:	26a42623          	sw	a0,620(s0) # 1c00626c <pos_freq_domains>
1c00b16a:	4505                	li	a0,1
1c00b16c:	357d                	jal	1c00b01a <pos_fll_init>
1c00b16e:	26c40413          	addi	s0,s0,620
1c00b172:	c408                	sw	a0,8(s0)
1c00b174:	40b2                	lw	ra,12(sp)
1c00b176:	4422                	lw	s0,8(sp)
1c00b178:	0141                	addi	sp,sp,16
1c00b17a:	8082                	ret

1c00b17c <KeccakF1600_StatePermute>:
1c00b17c:	1a4007b7          	lui	a5,0x1a400
1c00b180:	1141                	addi	sp,sp,-16
1c00b182:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00b186:	4118                	lw	a4,0(a0)
1c00b188:	0791                	addi	a5,a5,4
1c00b18a:	fee7ae23          	sw	a4,-4(a5)
1c00b18e:	0511                	addi	a0,a0,4
1c00b190:	fed79be3          	bne	a5,a3,1c00b186 <KeccakF1600_StatePermute+0xa>
1c00b194:	1a4007b7          	lui	a5,0x1a400
1c00b198:	4705                	li	a4,1
1c00b19a:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c00b19e:	1a400737          	lui	a4,0x1a400
1c00b1a2:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c00b1a6:	8b85                	andi	a5,a5,1
1c00b1a8:	dfed                	beqz	a5,1c00b1a2 <KeccakF1600_StatePermute+0x26>
1c00b1aa:	c602                	sw	zero,12(sp)
1c00b1ac:	4732                	lw	a4,12(sp)
1c00b1ae:	03100793          	li	a5,49
1c00b1b2:	02e7c663          	blt	a5,a4,1c00b1de <KeccakF1600_StatePermute+0x62>
1c00b1b6:	1a400637          	lui	a2,0x1a400
1c00b1ba:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00b1be:	03100513          	li	a0,49
1c00b1c2:	4732                	lw	a4,12(sp)
1c00b1c4:	47b2                	lw	a5,12(sp)
1c00b1c6:	070a                	slli	a4,a4,0x2
1c00b1c8:	9732                	add	a4,a4,a2
1c00b1ca:	4314                	lw	a3,0(a4)
1c00b1cc:	4732                	lw	a4,12(sp)
1c00b1ce:	078a                	slli	a5,a5,0x2
1c00b1d0:	0705                	addi	a4,a4,1
1c00b1d2:	c63a                	sw	a4,12(sp)
1c00b1d4:	97ae                	add	a5,a5,a1
1c00b1d6:	4732                	lw	a4,12(sp)
1c00b1d8:	c394                	sw	a3,0(a5)
1c00b1da:	fee554e3          	ble	a4,a0,1c00b1c2 <KeccakF1600_StatePermute+0x46>
1c00b1de:	0141                	addi	sp,sp,16
1c00b1e0:	8082                	ret

1c00b1e2 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c00b1e2:	1141                	addi	sp,sp,-16
1c00b1e4:	55555337          	lui	t1,0x55555
1c00b1e8:	68c1                	lui	a7,0x10
1c00b1ea:	c622                	sw	s0,12(sp)
1c00b1ec:	c426                	sw	s1,8(sp)
1c00b1ee:	c24a                	sw	s2,4(sp)
1c00b1f0:	20050e13          	addi	t3,a0,512
1c00b1f4:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00b1f8:	18fd                	addi	a7,a7,-1
1c00b1fa:	419c                	lw	a5,0(a1)
1c00b1fc:	0541                	addi	a0,a0,16
1c00b1fe:	0017d713          	srli	a4,a5,0x1
1c00b202:	00677733          	and	a4,a4,t1
1c00b206:	0067f7b3          	and	a5,a5,t1
1c00b20a:	97ba                	add	a5,a5,a4
1c00b20c:	0027d913          	srli	s2,a5,0x2
1c00b210:	0087d693          	srli	a3,a5,0x8
1c00b214:	00a7d493          	srli	s1,a5,0xa
1c00b218:	0107d713          	srli	a4,a5,0x10
1c00b21c:	0127d413          	srli	s0,a5,0x12
1c00b220:	0037f613          	andi	a2,a5,3
1c00b224:	00397913          	andi	s2,s2,3
1c00b228:	8a8d                	andi	a3,a3,3
1c00b22a:	888d                	andi	s1,s1,3
1c00b22c:	8b0d                	andi	a4,a4,3
1c00b22e:	880d                	andi	s0,s0,3
1c00b230:	0047df13          	srli	t5,a5,0x4
1c00b234:	0067d393          	srli	t2,a5,0x6
1c00b238:	00c7de93          	srli	t4,a5,0xc
1c00b23c:	00e7d293          	srli	t0,a5,0xe
1c00b240:	0147d813          	srli	a6,a5,0x14
1c00b244:	0167df93          	srli	t6,a5,0x16
1c00b248:	41260633          	sub	a2,a2,s2
1c00b24c:	8e85                	sub	a3,a3,s1
1c00b24e:	8f01                	sub	a4,a4,s0
1c00b250:	0033f393          	andi	t2,t2,3
1c00b254:	0032f293          	andi	t0,t0,3
1c00b258:	003fff93          	andi	t6,t6,3
1c00b25c:	003f7f13          	andi	t5,t5,3
1c00b260:	003efe93          	andi	t4,t4,3
1c00b264:	00387813          	andi	a6,a6,3
1c00b268:	0642                	slli	a2,a2,0x10
1c00b26a:	06c2                	slli	a3,a3,0x10
1c00b26c:	0742                	slli	a4,a4,0x10
1c00b26e:	407f0f33          	sub	t5,t5,t2
1c00b272:	405e8eb3          	sub	t4,t4,t0
1c00b276:	41f80833          	sub	a6,a6,t6
1c00b27a:	0187d293          	srli	t0,a5,0x18
1c00b27e:	01a7d393          	srli	t2,a5,0x1a
1c00b282:	01c7df93          	srli	t6,a5,0x1c
1c00b286:	8241                	srli	a2,a2,0x10
1c00b288:	82c1                	srli	a3,a3,0x10
1c00b28a:	8341                	srli	a4,a4,0x10
1c00b28c:	0842                	slli	a6,a6,0x10
1c00b28e:	0f42                	slli	t5,t5,0x10
1c00b290:	01167633          	and	a2,a2,a7
1c00b294:	0ec2                	slli	t4,t4,0x10
1c00b296:	0116f6b3          	and	a3,a3,a7
1c00b29a:	01177733          	and	a4,a4,a7
1c00b29e:	0032f293          	andi	t0,t0,3
1c00b2a2:	0033f393          	andi	t2,t2,3
1c00b2a6:	003fff93          	andi	t6,t6,3
1c00b2aa:	83f9                	srli	a5,a5,0x1e
1c00b2ac:	01076733          	or	a4,a4,a6
1c00b2b0:	01e66633          	or	a2,a2,t5
1c00b2b4:	01d6e6b3          	or	a3,a3,t4
1c00b2b8:	40728833          	sub	a6,t0,t2
1c00b2bc:	40ff87b3          	sub	a5,t6,a5
1c00b2c0:	fec52823          	sw	a2,-16(a0)
1c00b2c4:	fed52a23          	sw	a3,-12(a0)
1c00b2c8:	fee52c23          	sw	a4,-8(a0)
1c00b2cc:	ff051e23          	sh	a6,-4(a0)
1c00b2d0:	fef51f23          	sh	a5,-2(a0)
1c00b2d4:	0591                	addi	a1,a1,4
1c00b2d6:	f3c512e3          	bne	a0,t3,1c00b1fa <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c00b2da:	4432                	lw	s0,12(sp)
1c00b2dc:	44a2                	lw	s1,8(sp)
1c00b2de:	4912                	lw	s2,4(sp)
1c00b2e0:	0141                	addi	sp,sp,16
1c00b2e2:	8082                	ret

1c00b2e4 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2>:
1c00b2e4:	1141                	addi	sp,sp,-16
1c00b2e6:	55555337          	lui	t1,0x55555
1c00b2ea:	68c1                	lui	a7,0x10
1c00b2ec:	c622                	sw	s0,12(sp)
1c00b2ee:	c426                	sw	s1,8(sp)
1c00b2f0:	c24a                	sw	s2,4(sp)
1c00b2f2:	20050e13          	addi	t3,a0,512
1c00b2f6:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00b2fa:	18fd                	addi	a7,a7,-1
1c00b2fc:	419c                	lw	a5,0(a1)
1c00b2fe:	0541                	addi	a0,a0,16
1c00b300:	0017d713          	srli	a4,a5,0x1
1c00b304:	00677733          	and	a4,a4,t1
1c00b308:	0067f7b3          	and	a5,a5,t1
1c00b30c:	97ba                	add	a5,a5,a4
1c00b30e:	0027d913          	srli	s2,a5,0x2
1c00b312:	0087d693          	srli	a3,a5,0x8
1c00b316:	00a7d493          	srli	s1,a5,0xa
1c00b31a:	0107d713          	srli	a4,a5,0x10
1c00b31e:	0127d413          	srli	s0,a5,0x12
1c00b322:	0037f613          	andi	a2,a5,3
1c00b326:	00397913          	andi	s2,s2,3
1c00b32a:	8a8d                	andi	a3,a3,3
1c00b32c:	888d                	andi	s1,s1,3
1c00b32e:	8b0d                	andi	a4,a4,3
1c00b330:	880d                	andi	s0,s0,3
1c00b332:	0047df13          	srli	t5,a5,0x4
1c00b336:	0067d393          	srli	t2,a5,0x6
1c00b33a:	00c7de93          	srli	t4,a5,0xc
1c00b33e:	00e7d293          	srli	t0,a5,0xe
1c00b342:	0147d813          	srli	a6,a5,0x14
1c00b346:	0167df93          	srli	t6,a5,0x16
1c00b34a:	41260633          	sub	a2,a2,s2
1c00b34e:	8e85                	sub	a3,a3,s1
1c00b350:	8f01                	sub	a4,a4,s0
1c00b352:	0033f393          	andi	t2,t2,3
1c00b356:	0032f293          	andi	t0,t0,3
1c00b35a:	003fff93          	andi	t6,t6,3
1c00b35e:	003f7f13          	andi	t5,t5,3
1c00b362:	003efe93          	andi	t4,t4,3
1c00b366:	00387813          	andi	a6,a6,3
1c00b36a:	0642                	slli	a2,a2,0x10
1c00b36c:	06c2                	slli	a3,a3,0x10
1c00b36e:	0742                	slli	a4,a4,0x10
1c00b370:	407f0f33          	sub	t5,t5,t2
1c00b374:	405e8eb3          	sub	t4,t4,t0
1c00b378:	41f80833          	sub	a6,a6,t6
1c00b37c:	0187d293          	srli	t0,a5,0x18
1c00b380:	01a7d393          	srli	t2,a5,0x1a
1c00b384:	01c7df93          	srli	t6,a5,0x1c
1c00b388:	8241                	srli	a2,a2,0x10
1c00b38a:	82c1                	srli	a3,a3,0x10
1c00b38c:	8341                	srli	a4,a4,0x10
1c00b38e:	0842                	slli	a6,a6,0x10
1c00b390:	0f42                	slli	t5,t5,0x10
1c00b392:	01167633          	and	a2,a2,a7
1c00b396:	0ec2                	slli	t4,t4,0x10
1c00b398:	0116f6b3          	and	a3,a3,a7
1c00b39c:	01177733          	and	a4,a4,a7
1c00b3a0:	0032f293          	andi	t0,t0,3
1c00b3a4:	0033f393          	andi	t2,t2,3
1c00b3a8:	003fff93          	andi	t6,t6,3
1c00b3ac:	83f9                	srli	a5,a5,0x1e
1c00b3ae:	01076733          	or	a4,a4,a6
1c00b3b2:	01e66633          	or	a2,a2,t5
1c00b3b6:	01d6e6b3          	or	a3,a3,t4
1c00b3ba:	40728833          	sub	a6,t0,t2
1c00b3be:	40ff87b3          	sub	a5,t6,a5
1c00b3c2:	fec52823          	sw	a2,-16(a0)
1c00b3c6:	fed52a23          	sw	a3,-12(a0)
1c00b3ca:	fee52c23          	sw	a4,-8(a0)
1c00b3ce:	ff051e23          	sh	a6,-4(a0)
1c00b3d2:	fef51f23          	sh	a5,-2(a0)
1c00b3d6:	0591                	addi	a1,a1,4
1c00b3d8:	f3c512e3          	bne	a0,t3,1c00b2fc <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2+0x18>
1c00b3dc:	4432                	lw	s0,12(sp)
1c00b3de:	44a2                	lw	s1,8(sp)
1c00b3e0:	4912                	lw	s2,4(sp)
1c00b3e2:	0141                	addi	sp,sp,16
1c00b3e4:	8082                	ret

1c00b3e6 <keccak_absorb.constprop.7>:
1c00b3e6:	7151                	addi	sp,sp,-240
1c00b3e8:	d3a6                	sw	s1,228(sp)
1c00b3ea:	cfce                	sw	s3,220(sp)
1c00b3ec:	cdd2                	sw	s4,216(sp)
1c00b3ee:	cbd6                	sw	s5,212(sp)
1c00b3f0:	d786                	sw	ra,236(sp)
1c00b3f2:	d5a2                	sw	s0,232(sp)
1c00b3f4:	d1ca                	sw	s2,224(sp)
1c00b3f6:	89aa                	mv	s3,a0
1c00b3f8:	8a32                	mv	s4,a2
1c00b3fa:	84b6                	mv	s1,a3
1c00b3fc:	8aaa                	mv	s5,a0
1c00b3fe:	0c850713          	addi	a4,a0,200
1c00b402:	87aa                	mv	a5,a0
1c00b404:	4601                	li	a2,0
1c00b406:	4681                	li	a3,0
1c00b408:	c390                	sw	a2,0(a5)
1c00b40a:	c3d4                	sw	a3,4(a5)
1c00b40c:	07a1                	addi	a5,a5,8
1c00b40e:	fef71be3          	bne	a4,a5,1c00b404 <keccak_absorb.constprop.7+0x1e>
1c00b412:	08700793          	li	a5,135
1c00b416:	0747fb63          	bleu	s4,a5,1c00b48c <keccak_absorb.constprop.7+0xa6>
1c00b41a:	08700413          	li	s0,135
1c00b41e:	08858913          	addi	s2,a1,136
1c00b422:	874e                	mv	a4,s3
1c00b424:	0015c783          	lbu	a5,1(a1)
1c00b428:	0025c603          	lbu	a2,2(a1)
1c00b42c:	0055c883          	lbu	a7,5(a1)
1c00b430:	0045c303          	lbu	t1,4(a1)
1c00b434:	0065c803          	lbu	a6,6(a1)
1c00b438:	0005ce03          	lbu	t3,0(a1)
1c00b43c:	0035c503          	lbu	a0,3(a1)
1c00b440:	0075c683          	lbu	a3,7(a1)
1c00b444:	0642                	slli	a2,a2,0x10
1c00b446:	07a2                	slli	a5,a5,0x8
1c00b448:	08a2                	slli	a7,a7,0x8
1c00b44a:	8fd1                	or	a5,a5,a2
1c00b44c:	0068e8b3          	or	a7,a7,t1
1c00b450:	0842                	slli	a6,a6,0x10
1c00b452:	00072303          	lw	t1,0(a4)
1c00b456:	4350                	lw	a2,4(a4)
1c00b458:	01c7e7b3          	or	a5,a5,t3
1c00b45c:	0562                	slli	a0,a0,0x18
1c00b45e:	01186833          	or	a6,a6,a7
1c00b462:	06e2                	slli	a3,a3,0x18
1c00b464:	8fc9                	or	a5,a5,a0
1c00b466:	0106e6b3          	or	a3,a3,a6
1c00b46a:	00f347b3          	xor	a5,t1,a5
1c00b46e:	8eb1                	xor	a3,a3,a2
1c00b470:	c31c                	sw	a5,0(a4)
1c00b472:	c354                	sw	a3,4(a4)
1c00b474:	05a1                	addi	a1,a1,8
1c00b476:	0721                	addi	a4,a4,8
1c00b478:	fab916e3          	bne	s2,a1,1c00b424 <keccak_absorb.constprop.7+0x3e>
1c00b47c:	85ce                	mv	a1,s3
1c00b47e:	854e                	mv	a0,s3
1c00b480:	39f5                	jal	1c00b17c <KeccakF1600_StatePermute>
1c00b482:	f78a0a13          	addi	s4,s4,-136
1c00b486:	85ca                	mv	a1,s2
1c00b488:	f9446be3          	bltu	s0,s4,1c00b41e <keccak_absorb.constprop.7+0x38>
1c00b48c:	003c                	addi	a5,sp,8
1c00b48e:	0918                	addi	a4,sp,144
1c00b490:	883e                	mv	a6,a5
1c00b492:	4681                	li	a3,0
1c00b494:	00d82023          	sw	a3,0(a6)
1c00b498:	0811                	addi	a6,a6,4
1c00b49a:	ff071ce3          	bne	a4,a6,1c00b492 <keccak_absorb.constprop.7+0xac>
1c00b49e:	060a0463          	beqz	s4,1c00b506 <keccak_absorb.constprop.7+0x120>
1c00b4a2:	fffa0713          	addi	a4,s4,-1
1c00b4a6:	4689                	li	a3,2
1c00b4a8:	0ee6f163          	bleu	a4,a3,1c00b58a <keccak_absorb.constprop.7+0x1a4>
1c00b4ac:	002a5893          	srli	a7,s4,0x2
1c00b4b0:	862e                	mv	a2,a1
1c00b4b2:	86be                	mv	a3,a5
1c00b4b4:	4701                	li	a4,0
1c00b4b6:	4208                	lw	a0,0(a2)
1c00b4b8:	0705                	addi	a4,a4,1
1c00b4ba:	c288                	sw	a0,0(a3)
1c00b4bc:	0611                	addi	a2,a2,4
1c00b4be:	0691                	addi	a3,a3,4
1c00b4c0:	ff176be3          	bltu	a4,a7,1c00b4b6 <keccak_absorb.constprop.7+0xd0>
1c00b4c4:	ffca7713          	andi	a4,s4,-4
1c00b4c8:	02ea0f63          	beq	s4,a4,1c00b506 <keccak_absorb.constprop.7+0x120>
1c00b4cc:	00e586b3          	add	a3,a1,a4
1c00b4d0:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c00b4d4:	0988                	addi	a0,sp,208
1c00b4d6:	00e506b3          	add	a3,a0,a4
1c00b4da:	f2c68c23          	sb	a2,-200(a3)
1c00b4de:	00170693          	addi	a3,a4,1
1c00b4e2:	0346f263          	bleu	s4,a3,1c00b506 <keccak_absorb.constprop.7+0x120>
1c00b4e6:	00d58633          	add	a2,a1,a3
1c00b4ea:	00064603          	lbu	a2,0(a2)
1c00b4ee:	96aa                	add	a3,a3,a0
1c00b4f0:	f2c68c23          	sb	a2,-200(a3)
1c00b4f4:	0709                	addi	a4,a4,2
1c00b4f6:	01477863          	bleu	s4,a4,1c00b506 <keccak_absorb.constprop.7+0x120>
1c00b4fa:	95ba                	add	a1,a1,a4
1c00b4fc:	0005c683          	lbu	a3,0(a1)
1c00b500:	972a                	add	a4,a4,a0
1c00b502:	f2d70c23          	sb	a3,-200(a4)
1c00b506:	0990                	addi	a2,sp,208
1c00b508:	9a32                	add	s4,s4,a2
1c00b50a:	f29a0c23          	sb	s1,-200(s4)
1c00b50e:	08f14703          	lbu	a4,143(sp)
1c00b512:	f8076713          	ori	a4,a4,-128
1c00b516:	08e107a3          	sb	a4,143(sp)
1c00b51a:	0017c703          	lbu	a4,1(a5)
1c00b51e:	0027c883          	lbu	a7,2(a5)
1c00b522:	0057c503          	lbu	a0,5(a5)
1c00b526:	0047c303          	lbu	t1,4(a5)
1c00b52a:	0067c583          	lbu	a1,6(a5)
1c00b52e:	0007ce03          	lbu	t3,0(a5)
1c00b532:	0037c603          	lbu	a2,3(a5)
1c00b536:	0077c683          	lbu	a3,7(a5)
1c00b53a:	08c2                	slli	a7,a7,0x10
1c00b53c:	0722                	slli	a4,a4,0x8
1c00b53e:	0522                	slli	a0,a0,0x8
1c00b540:	01176733          	or	a4,a4,a7
1c00b544:	00656533          	or	a0,a0,t1
1c00b548:	05c2                	slli	a1,a1,0x10
1c00b54a:	000aa303          	lw	t1,0(s5)
1c00b54e:	004aa883          	lw	a7,4(s5)
1c00b552:	01c76733          	or	a4,a4,t3
1c00b556:	0662                	slli	a2,a2,0x18
1c00b558:	8dc9                	or	a1,a1,a0
1c00b55a:	06e2                	slli	a3,a3,0x18
1c00b55c:	8f51                	or	a4,a4,a2
1c00b55e:	8ecd                	or	a3,a3,a1
1c00b560:	00e34733          	xor	a4,t1,a4
1c00b564:	00d8c6b3          	xor	a3,a7,a3
1c00b568:	00eaa023          	sw	a4,0(s5)
1c00b56c:	00daa223          	sw	a3,4(s5)
1c00b570:	07a1                	addi	a5,a5,8
1c00b572:	0aa1                	addi	s5,s5,8
1c00b574:	faf813e3          	bne	a6,a5,1c00b51a <keccak_absorb.constprop.7+0x134>
1c00b578:	50be                	lw	ra,236(sp)
1c00b57a:	542e                	lw	s0,232(sp)
1c00b57c:	549e                	lw	s1,228(sp)
1c00b57e:	590e                	lw	s2,224(sp)
1c00b580:	49fe                	lw	s3,220(sp)
1c00b582:	4a6e                	lw	s4,216(sp)
1c00b584:	4ade                	lw	s5,212(sp)
1c00b586:	616d                	addi	sp,sp,240
1c00b588:	8082                	ret
1c00b58a:	4701                	li	a4,0
1c00b58c:	b781                	j	1c00b4cc <keccak_absorb.constprop.7+0xe6>

1c00b58e <shake128_absorb>:
1c00b58e:	7151                	addi	sp,sp,-240
1c00b590:	d5a2                	sw	s0,232(sp)
1c00b592:	842a                	mv	s0,a0
1c00b594:	0c800513          	li	a0,200
1c00b598:	d1ca                	sw	s2,224(sp)
1c00b59a:	cfce                	sw	s3,220(sp)
1c00b59c:	d786                	sw	ra,236(sp)
1c00b59e:	d3a6                	sw	s1,228(sp)
1c00b5a0:	cdd2                	sw	s4,216(sp)
1c00b5a2:	892e                	mv	s2,a1
1c00b5a4:	89b2                	mv	s3,a2
1c00b5a6:	728030ef          	jal	ra,1c00ecce <pi_l2_malloc>
1c00b5aa:	c008                	sw	a0,0(s0)
1c00b5ac:	1a050663          	beqz	a0,1c00b758 <shake128_absorb+0x1ca>
1c00b5b0:	8a2a                	mv	s4,a0
1c00b5b2:	0c850713          	addi	a4,a0,200
1c00b5b6:	87aa                	mv	a5,a0
1c00b5b8:	4601                	li	a2,0
1c00b5ba:	4681                	li	a3,0
1c00b5bc:	c390                	sw	a2,0(a5)
1c00b5be:	c3d4                	sw	a3,4(a5)
1c00b5c0:	07a1                	addi	a5,a5,8
1c00b5c2:	fef71be3          	bne	a4,a5,1c00b5b8 <shake128_absorb+0x2a>
1c00b5c6:	0a700793          	li	a5,167
1c00b5ca:	0937f163          	bleu	s3,a5,1c00b64c <shake128_absorb+0xbe>
1c00b5ce:	412a04b3          	sub	s1,s4,s2
1c00b5d2:	0a700413          	li	s0,167
1c00b5d6:	85ca                	mv	a1,s2
1c00b5d8:	0a890913          	addi	s2,s2,168
1c00b5dc:	0015c783          	lbu	a5,1(a1)
1c00b5e0:	0025c603          	lbu	a2,2(a1)
1c00b5e4:	0055c803          	lbu	a6,5(a1)
1c00b5e8:	0045c303          	lbu	t1,4(a1)
1c00b5ec:	0065c503          	lbu	a0,6(a1)
1c00b5f0:	0005ce03          	lbu	t3,0(a1)
1c00b5f4:	0035c683          	lbu	a3,3(a1)
1c00b5f8:	0075c703          	lbu	a4,7(a1)
1c00b5fc:	0642                	slli	a2,a2,0x10
1c00b5fe:	07a2                	slli	a5,a5,0x8
1c00b600:	0822                	slli	a6,a6,0x8
1c00b602:	00b488b3          	add	a7,s1,a1
1c00b606:	8fd1                	or	a5,a5,a2
1c00b608:	00686833          	or	a6,a6,t1
1c00b60c:	0542                	slli	a0,a0,0x10
1c00b60e:	0008a603          	lw	a2,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00b612:	0048a303          	lw	t1,4(a7)
1c00b616:	01c7e7b3          	or	a5,a5,t3
1c00b61a:	06e2                	slli	a3,a3,0x18
1c00b61c:	01056533          	or	a0,a0,a6
1c00b620:	0762                	slli	a4,a4,0x18
1c00b622:	8fd5                	or	a5,a5,a3
1c00b624:	8f49                	or	a4,a4,a0
1c00b626:	8fb1                	xor	a5,a5,a2
1c00b628:	00e34733          	xor	a4,t1,a4
1c00b62c:	00f8a023          	sw	a5,0(a7)
1c00b630:	00e8a223          	sw	a4,4(a7)
1c00b634:	05a1                	addi	a1,a1,8
1c00b636:	fab913e3          	bne	s2,a1,1c00b5dc <shake128_absorb+0x4e>
1c00b63a:	85d2                	mv	a1,s4
1c00b63c:	8552                	mv	a0,s4
1c00b63e:	f5898993          	addi	s3,s3,-168
1c00b642:	3e2d                	jal	1c00b17c <KeccakF1600_StatePermute>
1c00b644:	f5848493          	addi	s1,s1,-168
1c00b648:	f93467e3          	bltu	s0,s3,1c00b5d6 <shake128_absorb+0x48>
1c00b64c:	191c                	addi	a5,sp,176
1c00b64e:	00810813          	addi	a6,sp,8
1c00b652:	4681                	li	a3,0
1c00b654:	00d82023          	sw	a3,0(a6)
1c00b658:	0811                	addi	a6,a6,4
1c00b65a:	ff079ce3          	bne	a5,a6,1c00b652 <shake128_absorb+0xc4>
1c00b65e:	06098563          	beqz	s3,1c00b6c8 <shake128_absorb+0x13a>
1c00b662:	fff98793          	addi	a5,s3,-1
1c00b666:	4709                	li	a4,2
1c00b668:	0ef77663          	bleu	a5,a4,1c00b754 <shake128_absorb+0x1c6>
1c00b66c:	0029d513          	srli	a0,s3,0x2
1c00b670:	86ca                	mv	a3,s2
1c00b672:	0038                	addi	a4,sp,8
1c00b674:	4781                	li	a5,0
1c00b676:	4290                	lw	a2,0(a3)
1c00b678:	0785                	addi	a5,a5,1
1c00b67a:	c310                	sw	a2,0(a4)
1c00b67c:	0691                	addi	a3,a3,4
1c00b67e:	0711                	addi	a4,a4,4
1c00b680:	fea7ebe3          	bltu	a5,a0,1c00b676 <shake128_absorb+0xe8>
1c00b684:	ffc9f793          	andi	a5,s3,-4
1c00b688:	04f98063          	beq	s3,a5,1c00b6c8 <shake128_absorb+0x13a>
1c00b68c:	00f90733          	add	a4,s2,a5
1c00b690:	00074683          	lbu	a3,0(a4)
1c00b694:	0990                	addi	a2,sp,208
1c00b696:	00f60733          	add	a4,a2,a5
1c00b69a:	f2d70c23          	sb	a3,-200(a4)
1c00b69e:	00178713          	addi	a4,a5,1
1c00b6a2:	03377363          	bleu	s3,a4,1c00b6c8 <shake128_absorb+0x13a>
1c00b6a6:	00e906b3          	add	a3,s2,a4
1c00b6aa:	0006c683          	lbu	a3,0(a3)
1c00b6ae:	9732                	add	a4,a4,a2
1c00b6b0:	f2d70c23          	sb	a3,-200(a4)
1c00b6b4:	0789                	addi	a5,a5,2
1c00b6b6:	0137f963          	bleu	s3,a5,1c00b6c8 <shake128_absorb+0x13a>
1c00b6ba:	00f905b3          	add	a1,s2,a5
1c00b6be:	0005c703          	lbu	a4,0(a1)
1c00b6c2:	97b2                	add	a5,a5,a2
1c00b6c4:	f2e78c23          	sb	a4,-200(a5)
1c00b6c8:	0994                	addi	a3,sp,208
1c00b6ca:	47fd                	li	a5,31
1c00b6cc:	99b6                	add	s3,s3,a3
1c00b6ce:	f2f98c23          	sb	a5,-200(s3)
1c00b6d2:	0af14703          	lbu	a4,175(sp)
1c00b6d6:	003c                	addi	a5,sp,8
1c00b6d8:	f8076713          	ori	a4,a4,-128
1c00b6dc:	0ae107a3          	sb	a4,175(sp)
1c00b6e0:	40fa0a33          	sub	s4,s4,a5
1c00b6e4:	0017c703          	lbu	a4,1(a5)
1c00b6e8:	0027c303          	lbu	t1,2(a5)
1c00b6ec:	0057c503          	lbu	a0,5(a5)
1c00b6f0:	0047ce03          	lbu	t3,4(a5)
1c00b6f4:	0067c583          	lbu	a1,6(a5)
1c00b6f8:	0007ce83          	lbu	t4,0(a5)
1c00b6fc:	0037c603          	lbu	a2,3(a5)
1c00b700:	0077c683          	lbu	a3,7(a5)
1c00b704:	0342                	slli	t1,t1,0x10
1c00b706:	0722                	slli	a4,a4,0x8
1c00b708:	0522                	slli	a0,a0,0x8
1c00b70a:	00fa08b3          	add	a7,s4,a5
1c00b70e:	00676733          	or	a4,a4,t1
1c00b712:	01c56533          	or	a0,a0,t3
1c00b716:	05c2                	slli	a1,a1,0x10
1c00b718:	0008ae03          	lw	t3,0(a7)
1c00b71c:	0048a303          	lw	t1,4(a7)
1c00b720:	01d76733          	or	a4,a4,t4
1c00b724:	0662                	slli	a2,a2,0x18
1c00b726:	8dc9                	or	a1,a1,a0
1c00b728:	06e2                	slli	a3,a3,0x18
1c00b72a:	8f51                	or	a4,a4,a2
1c00b72c:	8ecd                	or	a3,a3,a1
1c00b72e:	00ee4733          	xor	a4,t3,a4
1c00b732:	00d346b3          	xor	a3,t1,a3
1c00b736:	00e8a023          	sw	a4,0(a7)
1c00b73a:	00d8a223          	sw	a3,4(a7)
1c00b73e:	07a1                	addi	a5,a5,8
1c00b740:	faf812e3          	bne	a6,a5,1c00b6e4 <shake128_absorb+0x156>
1c00b744:	50be                	lw	ra,236(sp)
1c00b746:	542e                	lw	s0,232(sp)
1c00b748:	549e                	lw	s1,228(sp)
1c00b74a:	590e                	lw	s2,224(sp)
1c00b74c:	49fe                	lw	s3,220(sp)
1c00b74e:	4a6e                	lw	s4,216(sp)
1c00b750:	616d                	addi	sp,sp,240
1c00b752:	8082                	ret
1c00b754:	4781                	li	a5,0
1c00b756:	bf1d                	j	1c00b68c <shake128_absorb+0xfe>
1c00b758:	06f00513          	li	a0,111
1c00b75c:	424020ef          	jal	ra,1c00db80 <exit>

1c00b760 <shake128_squeezeblocks>:
1c00b760:	1101                	addi	sp,sp,-32
1c00b762:	c452                	sw	s4,8(sp)
1c00b764:	ce06                	sw	ra,28(sp)
1c00b766:	cc22                	sw	s0,24(sp)
1c00b768:	ca26                	sw	s1,20(sp)
1c00b76a:	c84a                	sw	s2,16(sp)
1c00b76c:	c64e                	sw	s3,12(sp)
1c00b76e:	c256                	sw	s5,4(sp)
1c00b770:	00062a03          	lw	s4,0(a2)
1c00b774:	cdc9                	beqz	a1,1c00b80e <shake128_squeezeblocks+0xae>
1c00b776:	7941                	lui	s2,0xffff0
1c00b778:	ff0104b7          	lui	s1,0xff010
1c00b77c:	01000437          	lui	s0,0x1000
1c00b780:	89ae                	mv	s3,a1
1c00b782:	8aaa                	mv	s5,a0
1c00b784:	0ff90913          	addi	s2,s2,255 # ffff00ff <pulp__FC+0xffff0100>
1c00b788:	14fd                	addi	s1,s1,-1
1c00b78a:	147d                	addi	s0,s0,-1
1c00b78c:	85d2                	mv	a1,s4
1c00b78e:	8552                	mv	a0,s4
1c00b790:	32f5                	jal	1c00b17c <KeccakF1600_StatePermute>
1c00b792:	85d6                	mv	a1,s5
1c00b794:	8852                	mv	a6,s4
1c00b796:	0a8a8513          	addi	a0,s5,168
1c00b79a:	00082603          	lw	a2,0(a6)
1c00b79e:	00482683          	lw	a3,4(a6)
1c00b7a2:	00865313          	srli	t1,a2,0x8
1c00b7a6:	0086d893          	srli	a7,a3,0x8
1c00b7aa:	0ff67713          	andi	a4,a2,255
1c00b7ae:	0ff6f793          	andi	a5,a3,255
1c00b7b2:	0ff37313          	andi	t1,t1,255
1c00b7b6:	0ff8f893          	andi	a7,a7,255
1c00b7ba:	0322                	slli	t1,t1,0x8
1c00b7bc:	08a2                	slli	a7,a7,0x8
1c00b7be:	01277733          	and	a4,a4,s2
1c00b7c2:	0127f7b3          	and	a5,a5,s2
1c00b7c6:	00676733          	or	a4,a4,t1
1c00b7ca:	0117e7b3          	or	a5,a5,a7
1c00b7ce:	00ff0337          	lui	t1,0xff0
1c00b7d2:	00ff08b7          	lui	a7,0xff0
1c00b7d6:	00667333          	and	t1,a2,t1
1c00b7da:	0116f8b3          	and	a7,a3,a7
1c00b7de:	8f65                	and	a4,a4,s1
1c00b7e0:	8fe5                	and	a5,a5,s1
1c00b7e2:	00676733          	or	a4,a4,t1
1c00b7e6:	8261                	srli	a2,a2,0x18
1c00b7e8:	0117e7b3          	or	a5,a5,a7
1c00b7ec:	82e1                	srli	a3,a3,0x18
1c00b7ee:	0662                	slli	a2,a2,0x18
1c00b7f0:	8f61                	and	a4,a4,s0
1c00b7f2:	06e2                	slli	a3,a3,0x18
1c00b7f4:	8fe1                	and	a5,a5,s0
1c00b7f6:	8f51                	or	a4,a4,a2
1c00b7f8:	8fd5                	or	a5,a5,a3
1c00b7fa:	c198                	sw	a4,0(a1)
1c00b7fc:	c1dc                	sw	a5,4(a1)
1c00b7fe:	05a1                	addi	a1,a1,8
1c00b800:	0821                	addi	a6,a6,8
1c00b802:	f8b51ce3          	bne	a0,a1,1c00b79a <shake128_squeezeblocks+0x3a>
1c00b806:	19fd                	addi	s3,s3,-1
1c00b808:	8aaa                	mv	s5,a0
1c00b80a:	f80991e3          	bnez	s3,1c00b78c <shake128_squeezeblocks+0x2c>
1c00b80e:	40f2                	lw	ra,28(sp)
1c00b810:	4462                	lw	s0,24(sp)
1c00b812:	44d2                	lw	s1,20(sp)
1c00b814:	4942                	lw	s2,16(sp)
1c00b816:	49b2                	lw	s3,12(sp)
1c00b818:	4a22                	lw	s4,8(sp)
1c00b81a:	4a92                	lw	s5,4(sp)
1c00b81c:	6105                	addi	sp,sp,32
1c00b81e:	8082                	ret

1c00b820 <shake128_ctx_release>:
1c00b820:	4108                	lw	a0,0(a0)
1c00b822:	0c800593          	li	a1,200
1c00b826:	4b40306f          	j	1c00ecda <pi_l2_free>

1c00b82a <shake256>:
1c00b82a:	7131                	addi	sp,sp,-192
1c00b82c:	db26                	sw	s1,180(sp)
1c00b82e:	d94a                	sw	s2,176(sp)
1c00b830:	08800493          	li	s1,136
1c00b834:	892a                	mv	s2,a0
1c00b836:	0c800513          	li	a0,200
1c00b83a:	dd22                	sw	s0,184(sp)
1c00b83c:	d74e                	sw	s3,172(sp)
1c00b83e:	d552                	sw	s4,168(sp)
1c00b840:	df06                	sw	ra,188(sp)
1c00b842:	d356                	sw	s5,164(sp)
1c00b844:	d15a                	sw	s6,160(sp)
1c00b846:	cf5e                	sw	s7,156(sp)
1c00b848:	cd62                	sw	s8,152(sp)
1c00b84a:	cb66                	sw	s9,148(sp)
1c00b84c:	89ae                	mv	s3,a1
1c00b84e:	8432                	mv	s0,a2
1c00b850:	8a36                	mv	s4,a3
1c00b852:	0295d4b3          	divu	s1,a1,s1
1c00b856:	478030ef          	jal	ra,1c00ecce <pi_l2_malloc>
1c00b85a:	20050263          	beqz	a0,1c00ba5e <shake256+0x234>
1c00b85e:	46fd                	li	a3,31
1c00b860:	8652                	mv	a2,s4
1c00b862:	85a2                	mv	a1,s0
1c00b864:	8b2a                	mv	s6,a0
1c00b866:	3641                	jal	1c00b3e6 <keccak_absorb.constprop.7>
1c00b868:	c4dd                	beqz	s1,1c00b916 <shake256+0xec>
1c00b86a:	00449713          	slli	a4,s1,0x4
1c00b86e:	00970433          	add	s0,a4,s1
1c00b872:	040e                	slli	s0,s0,0x3
1c00b874:	7bc1                	lui	s7,0xffff0
1c00b876:	ff010ab7          	lui	s5,0xff010
1c00b87a:	01000a37          	lui	s4,0x1000
1c00b87e:	412b0c33          	sub	s8,s6,s2
1c00b882:	944a                	add	s0,s0,s2
1c00b884:	8cca                	mv	s9,s2
1c00b886:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00b88a:	1afd                	addi	s5,s5,-1
1c00b88c:	1a7d                	addi	s4,s4,-1
1c00b88e:	85da                	mv	a1,s6
1c00b890:	855a                	mv	a0,s6
1c00b892:	30ed                	jal	1c00b17c <KeccakF1600_StatePermute>
1c00b894:	8666                	mv	a2,s9
1c00b896:	088c8593          	addi	a1,s9,136
1c00b89a:	00cc07b3          	add	a5,s8,a2
1c00b89e:	4388                	lw	a0,0(a5)
1c00b8a0:	43d4                	lw	a3,4(a5)
1c00b8a2:	00855893          	srli	a7,a0,0x8
1c00b8a6:	0086d813          	srli	a6,a3,0x8
1c00b8aa:	0ff57713          	andi	a4,a0,255
1c00b8ae:	0ff6f793          	andi	a5,a3,255
1c00b8b2:	0ff8f893          	andi	a7,a7,255
1c00b8b6:	0ff87813          	andi	a6,a6,255
1c00b8ba:	08a2                	slli	a7,a7,0x8
1c00b8bc:	0822                	slli	a6,a6,0x8
1c00b8be:	01777733          	and	a4,a4,s7
1c00b8c2:	0177f7b3          	and	a5,a5,s7
1c00b8c6:	01176733          	or	a4,a4,a7
1c00b8ca:	0107e7b3          	or	a5,a5,a6
1c00b8ce:	00ff08b7          	lui	a7,0xff0
1c00b8d2:	00ff0837          	lui	a6,0xff0
1c00b8d6:	011578b3          	and	a7,a0,a7
1c00b8da:	0106f833          	and	a6,a3,a6
1c00b8de:	01577733          	and	a4,a4,s5
1c00b8e2:	0157f7b3          	and	a5,a5,s5
1c00b8e6:	01176733          	or	a4,a4,a7
1c00b8ea:	8161                	srli	a0,a0,0x18
1c00b8ec:	0107e7b3          	or	a5,a5,a6
1c00b8f0:	82e1                	srli	a3,a3,0x18
1c00b8f2:	0562                	slli	a0,a0,0x18
1c00b8f4:	01477733          	and	a4,a4,s4
1c00b8f8:	06e2                	slli	a3,a3,0x18
1c00b8fa:	0147f7b3          	and	a5,a5,s4
1c00b8fe:	8f49                	or	a4,a4,a0
1c00b900:	8fd5                	or	a5,a5,a3
1c00b902:	c218                	sw	a4,0(a2)
1c00b904:	c25c                	sw	a5,4(a2)
1c00b906:	0621                	addi	a2,a2,8
1c00b908:	f8c599e3          	bne	a1,a2,1c00b89a <shake256+0x70>
1c00b90c:	8cae                	mv	s9,a1
1c00b90e:	f78c0c13          	addi	s8,s8,-136
1c00b912:	f6b41ee3          	bne	s0,a1,1c00b88e <shake256+0x64>
1c00b916:	08800793          	li	a5,136
1c00b91a:	02f9f9b3          	remu	s3,s3,a5
1c00b91e:	02099363          	bnez	s3,1c00b944 <shake256+0x11a>
1c00b922:	546a                	lw	s0,184(sp)
1c00b924:	50fa                	lw	ra,188(sp)
1c00b926:	54da                	lw	s1,180(sp)
1c00b928:	594a                	lw	s2,176(sp)
1c00b92a:	59ba                	lw	s3,172(sp)
1c00b92c:	5a2a                	lw	s4,168(sp)
1c00b92e:	5a9a                	lw	s5,164(sp)
1c00b930:	4bfa                	lw	s7,156(sp)
1c00b932:	4c6a                	lw	s8,152(sp)
1c00b934:	4cda                	lw	s9,148(sp)
1c00b936:	855a                	mv	a0,s6
1c00b938:	5b0a                	lw	s6,160(sp)
1c00b93a:	0c800593          	li	a1,200
1c00b93e:	6129                	addi	sp,sp,192
1c00b940:	39a0306f          	j	1c00ecda <pi_l2_free>
1c00b944:	85da                	mv	a1,s6
1c00b946:	855a                	mv	a0,s6
1c00b948:	835ff0ef          	jal	ra,1c00b17c <KeccakF1600_StatePermute>
1c00b94c:	002c                	addi	a1,sp,8
1c00b94e:	78c1                	lui	a7,0xffff0
1c00b950:	ff010837          	lui	a6,0xff010
1c00b954:	01000537          	lui	a0,0x1000
1c00b958:	09010e13          	addi	t3,sp,144
1c00b95c:	862e                	mv	a2,a1
1c00b95e:	40bb0333          	sub	t1,s6,a1
1c00b962:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00b966:	187d                	addi	a6,a6,-1
1c00b968:	157d                	addi	a0,a0,-1
1c00b96a:	00c307b3          	add	a5,t1,a2
1c00b96e:	0007ae83          	lw	t4,0(a5)
1c00b972:	43d4                	lw	a3,4(a5)
1c00b974:	008edf93          	srli	t6,t4,0x8
1c00b978:	0086df13          	srli	t5,a3,0x8
1c00b97c:	0ffef713          	andi	a4,t4,255
1c00b980:	0ff6f793          	andi	a5,a3,255
1c00b984:	0fffff93          	andi	t6,t6,255
1c00b988:	0fff7f13          	andi	t5,t5,255
1c00b98c:	0fa2                	slli	t6,t6,0x8
1c00b98e:	0f22                	slli	t5,t5,0x8
1c00b990:	01177733          	and	a4,a4,a7
1c00b994:	0117f7b3          	and	a5,a5,a7
1c00b998:	01f76733          	or	a4,a4,t6
1c00b99c:	01e7e7b3          	or	a5,a5,t5
1c00b9a0:	00ff0fb7          	lui	t6,0xff0
1c00b9a4:	00ff0f37          	lui	t5,0xff0
1c00b9a8:	01feffb3          	and	t6,t4,t6
1c00b9ac:	01e6ff33          	and	t5,a3,t5
1c00b9b0:	01077733          	and	a4,a4,a6
1c00b9b4:	0107f7b3          	and	a5,a5,a6
1c00b9b8:	01f76733          	or	a4,a4,t6
1c00b9bc:	018ede93          	srli	t4,t4,0x18
1c00b9c0:	01e7e7b3          	or	a5,a5,t5
1c00b9c4:	82e1                	srli	a3,a3,0x18
1c00b9c6:	0ee2                	slli	t4,t4,0x18
1c00b9c8:	8f69                	and	a4,a4,a0
1c00b9ca:	06e2                	slli	a3,a3,0x18
1c00b9cc:	8fe9                	and	a5,a5,a0
1c00b9ce:	01d76733          	or	a4,a4,t4
1c00b9d2:	8fd5                	or	a5,a5,a3
1c00b9d4:	c218                	sw	a4,0(a2)
1c00b9d6:	c25c                	sw	a5,4(a2)
1c00b9d8:	0621                	addi	a2,a2,8
1c00b9da:	f8ce18e3          	bne	t3,a2,1c00b96a <shake256+0x140>
1c00b9de:	fff98793          	addi	a5,s3,-1
1c00b9e2:	4709                	li	a4,2
1c00b9e4:	06f77963          	bleu	a5,a4,1c00ba56 <shake256+0x22c>
1c00b9e8:	00449713          	slli	a4,s1,0x4
1c00b9ec:	009707b3          	add	a5,a4,s1
1c00b9f0:	078e                	slli	a5,a5,0x3
1c00b9f2:	0029d513          	srli	a0,s3,0x2
1c00b9f6:	97ca                	add	a5,a5,s2
1c00b9f8:	4681                	li	a3,0
1c00b9fa:	4190                	lw	a2,0(a1)
1c00b9fc:	0685                	addi	a3,a3,1
1c00b9fe:	c390                	sw	a2,0(a5)
1c00ba00:	0591                	addi	a1,a1,4
1c00ba02:	0791                	addi	a5,a5,4
1c00ba04:	fea6ebe3          	bltu	a3,a0,1c00b9fa <shake256+0x1d0>
1c00ba08:	ffc9f693          	andi	a3,s3,-4
1c00ba0c:	f0d98be3          	beq	s3,a3,1c00b922 <shake256+0xf8>
1c00ba10:	009707b3          	add	a5,a4,s1
1c00ba14:	090c                	addi	a1,sp,144
1c00ba16:	00d58733          	add	a4,a1,a3
1c00ba1a:	078e                	slli	a5,a5,0x3
1c00ba1c:	f7874603          	lbu	a2,-136(a4)
1c00ba20:	97ca                	add	a5,a5,s2
1c00ba22:	00d78733          	add	a4,a5,a3
1c00ba26:	00c70023          	sb	a2,0(a4)
1c00ba2a:	00168713          	addi	a4,a3,1
1c00ba2e:	ef377ae3          	bleu	s3,a4,1c00b922 <shake256+0xf8>
1c00ba32:	00e58633          	add	a2,a1,a4
1c00ba36:	f7864603          	lbu	a2,-136(a2)
1c00ba3a:	973e                	add	a4,a4,a5
1c00ba3c:	00c70023          	sb	a2,0(a4)
1c00ba40:	0689                	addi	a3,a3,2
1c00ba42:	ef36f0e3          	bleu	s3,a3,1c00b922 <shake256+0xf8>
1c00ba46:	00d58733          	add	a4,a1,a3
1c00ba4a:	f7874703          	lbu	a4,-136(a4)
1c00ba4e:	97b6                	add	a5,a5,a3
1c00ba50:	00e78023          	sb	a4,0(a5)
1c00ba54:	b5f9                	j	1c00b922 <shake256+0xf8>
1c00ba56:	4681                	li	a3,0
1c00ba58:	00449713          	slli	a4,s1,0x4
1c00ba5c:	bf55                	j	1c00ba10 <shake256+0x1e6>
1c00ba5e:	06f00513          	li	a0,111
1c00ba62:	11e020ef          	jal	ra,1c00db80 <exit>

1c00ba66 <sha3_256>:
1c00ba66:	7111                	addi	sp,sp,-256
1c00ba68:	dda2                	sw	s0,248(sp)
1c00ba6a:	4699                	li	a3,6
1c00ba6c:	842a                	mv	s0,a0
1c00ba6e:	0028                	addi	a0,sp,8
1c00ba70:	df86                	sw	ra,252(sp)
1c00ba72:	dba6                	sw	s1,244(sp)
1c00ba74:	d9ca                	sw	s2,240(sp)
1c00ba76:	d7ce                	sw	s3,236(sp)
1c00ba78:	d5d2                	sw	s4,232(sp)
1c00ba7a:	d3d6                	sw	s5,228(sp)
1c00ba7c:	d1da                	sw	s6,224(sp)
1c00ba7e:	cfde                	sw	s7,220(sp)
1c00ba80:	cde2                	sw	s8,216(sp)
1c00ba82:	cbe6                	sw	s9,212(sp)
1c00ba84:	c9ea                	sw	s10,208(sp)
1c00ba86:	3285                	jal	1c00b3e6 <keccak_absorb.constprop.7>
1c00ba88:	002c                	addi	a1,sp,8
1c00ba8a:	852e                	mv	a0,a1
1c00ba8c:	ef0ff0ef          	jal	ra,1c00b17c <KeccakF1600_StatePermute>
1c00ba90:	4f32                	lw	t5,12(sp)
1c00ba92:	4922                	lw	s2,8(sp)
1c00ba94:	4ec2                	lw	t4,16(sp)
1c00ba96:	4e52                	lw	t3,20(sp)
1c00ba98:	4362                	lw	t1,24(sp)
1c00ba9a:	44f2                	lw	s1,28(sp)
1c00ba9c:	5382                	lw	t2,32(sp)
1c00ba9e:	5292                	lw	t0,36(sp)
1c00baa0:	00895813          	srli	a6,s2,0x8
1c00baa4:	008f5513          	srli	a0,t5,0x8
1c00baa8:	008ed593          	srli	a1,t4,0x8
1c00baac:	008e5613          	srli	a2,t3,0x8
1c00bab0:	00835693          	srli	a3,t1,0x8
1c00bab4:	0084d713          	srli	a4,s1,0x8
1c00bab8:	0083d993          	srli	s3,t2,0x8
1c00babc:	0082df93          	srli	t6,t0,0x8
1c00bac0:	0ff87813          	andi	a6,a6,255
1c00bac4:	0ff57513          	andi	a0,a0,255
1c00bac8:	0ff5f593          	andi	a1,a1,255
1c00bacc:	0ff67613          	andi	a2,a2,255
1c00bad0:	0ff6f693          	andi	a3,a3,255
1c00bad4:	0ff77713          	andi	a4,a4,255
1c00bad8:	0ff9f993          	andi	s3,s3,255
1c00badc:	0fffff93          	andi	t6,t6,255
1c00bae0:	0fff7d13          	andi	s10,t5,255
1c00bae4:	0ffefc93          	andi	s9,t4,255
1c00bae8:	0ffe7c13          	andi	s8,t3,255
1c00baec:	0ff37b93          	andi	s7,t1,255
1c00baf0:	0ff4fb13          	andi	s6,s1,255
1c00baf4:	0ff3fa93          	andi	s5,t2,255
1c00baf8:	0ff2fa13          	andi	s4,t0,255
1c00bafc:	0822                	slli	a6,a6,0x8
1c00bafe:	0ff97893          	andi	a7,s2,255
1c00bb02:	0522                	slli	a0,a0,0x8
1c00bb04:	05a2                	slli	a1,a1,0x8
1c00bb06:	0622                	slli	a2,a2,0x8
1c00bb08:	06a2                	slli	a3,a3,0x8
1c00bb0a:	0722                	slli	a4,a4,0x8
1c00bb0c:	09a2                	slli	s3,s3,0x8
1c00bb0e:	0fa2                	slli	t6,t6,0x8
1c00bb10:	ff0107b7          	lui	a5,0xff010
1c00bb14:	17fd                	addi	a5,a5,-1
1c00bb16:	01fa6fb3          	or	t6,s4,t6
1c00bb1a:	0108e8b3          	or	a7,a7,a6
1c00bb1e:	00ff0a37          	lui	s4,0xff0
1c00bb22:	00ad6833          	or	a6,s10,a0
1c00bb26:	00bce533          	or	a0,s9,a1
1c00bb2a:	00ff0d37          	lui	s10,0xff0
1c00bb2e:	00cc65b3          	or	a1,s8,a2
1c00bb32:	00ff0cb7          	lui	s9,0xff0
1c00bb36:	00dbe633          	or	a2,s7,a3
1c00bb3a:	00ff0c37          	lui	s8,0xff0
1c00bb3e:	00eb66b3          	or	a3,s6,a4
1c00bb42:	00ff0bb7          	lui	s7,0xff0
1c00bb46:	013ae733          	or	a4,s5,s3
1c00bb4a:	00ff0b37          	lui	s6,0xff0
1c00bb4e:	00ff0ab7          	lui	s5,0xff0
1c00bb52:	00ff09b7          	lui	s3,0xff0
1c00bb56:	01a97d33          	and	s10,s2,s10
1c00bb5a:	019f7cb3          	and	s9,t5,s9
1c00bb5e:	018efc33          	and	s8,t4,s8
1c00bb62:	017e7bb3          	and	s7,t3,s7
1c00bb66:	01637b33          	and	s6,t1,s6
1c00bb6a:	0154fab3          	and	s5,s1,s5
1c00bb6e:	0143fa33          	and	s4,t2,s4
1c00bb72:	0132f9b3          	and	s3,t0,s3
1c00bb76:	00f8f8b3          	and	a7,a7,a5
1c00bb7a:	00f87833          	and	a6,a6,a5
1c00bb7e:	8d7d                	and	a0,a0,a5
1c00bb80:	8dfd                	and	a1,a1,a5
1c00bb82:	8e7d                	and	a2,a2,a5
1c00bb84:	8efd                	and	a3,a3,a5
1c00bb86:	8f7d                	and	a4,a4,a5
1c00bb88:	00fff7b3          	and	a5,t6,a5
1c00bb8c:	01000fb7          	lui	t6,0x1000
1c00bb90:	1ffd                	addi	t6,t6,-1
1c00bb92:	01a8e8b3          	or	a7,a7,s10
1c00bb96:	01986833          	or	a6,a6,s9
1c00bb9a:	01856533          	or	a0,a0,s8
1c00bb9e:	0175e5b3          	or	a1,a1,s7
1c00bba2:	01666633          	or	a2,a2,s6
1c00bba6:	0156e6b3          	or	a3,a3,s5
1c00bbaa:	01476733          	or	a4,a4,s4
1c00bbae:	0137e7b3          	or	a5,a5,s3
1c00bbb2:	01895913          	srli	s2,s2,0x18
1c00bbb6:	018f5f13          	srli	t5,t5,0x18
1c00bbba:	018ede93          	srli	t4,t4,0x18
1c00bbbe:	018e5e13          	srli	t3,t3,0x18
1c00bbc2:	01835313          	srli	t1,t1,0x18
1c00bbc6:	80e1                	srli	s1,s1,0x18
1c00bbc8:	0183d393          	srli	t2,t2,0x18
1c00bbcc:	0182d293          	srli	t0,t0,0x18
1c00bbd0:	0962                	slli	s2,s2,0x18
1c00bbd2:	04e2                	slli	s1,s1,0x18
1c00bbd4:	01f8f8b3          	and	a7,a7,t6
1c00bbd8:	0f62                	slli	t5,t5,0x18
1c00bbda:	01f87833          	and	a6,a6,t6
1c00bbde:	0ee2                	slli	t4,t4,0x18
1c00bbe0:	01f57533          	and	a0,a0,t6
1c00bbe4:	0e62                	slli	t3,t3,0x18
1c00bbe6:	01f5f5b3          	and	a1,a1,t6
1c00bbea:	0362                	slli	t1,t1,0x18
1c00bbec:	01f67633          	and	a2,a2,t6
1c00bbf0:	01f6f6b3          	and	a3,a3,t6
1c00bbf4:	03e2                	slli	t2,t2,0x18
1c00bbf6:	01f77733          	and	a4,a4,t6
1c00bbfa:	02e2                	slli	t0,t0,0x18
1c00bbfc:	01f7f7b3          	and	a5,a5,t6
1c00bc00:	0128e8b3          	or	a7,a7,s2
1c00bc04:	8ec5                	or	a3,a3,s1
1c00bc06:	01e86833          	or	a6,a6,t5
1c00bc0a:	01d56533          	or	a0,a0,t4
1c00bc0e:	01c5e5b3          	or	a1,a1,t3
1c00bc12:	00666633          	or	a2,a2,t1
1c00bc16:	00776733          	or	a4,a4,t2
1c00bc1a:	0057e7b3          	or	a5,a5,t0
1c00bc1e:	01142023          	sw	a7,0(s0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00bc22:	01042223          	sw	a6,4(s0)
1c00bc26:	c408                	sw	a0,8(s0)
1c00bc28:	c44c                	sw	a1,12(s0)
1c00bc2a:	c810                	sw	a2,16(s0)
1c00bc2c:	c854                	sw	a3,20(s0)
1c00bc2e:	cc18                	sw	a4,24(s0)
1c00bc30:	cc5c                	sw	a5,28(s0)
1c00bc32:	50fe                	lw	ra,252(sp)
1c00bc34:	546e                	lw	s0,248(sp)
1c00bc36:	54de                	lw	s1,244(sp)
1c00bc38:	594e                	lw	s2,240(sp)
1c00bc3a:	59be                	lw	s3,236(sp)
1c00bc3c:	5a2e                	lw	s4,232(sp)
1c00bc3e:	5a9e                	lw	s5,228(sp)
1c00bc40:	5b0e                	lw	s6,224(sp)
1c00bc42:	4bfe                	lw	s7,220(sp)
1c00bc44:	4c6e                	lw	s8,216(sp)
1c00bc46:	4cde                	lw	s9,212(sp)
1c00bc48:	4d4e                	lw	s10,208(sp)
1c00bc4a:	6111                	addi	sp,sp,256
1c00bc4c:	8082                	ret

1c00bc4e <sha3_512>:
1c00bc4e:	db010113          	addi	sp,sp,-592
1c00bc52:	24812423          	sw	s0,584(sp)
1c00bc56:	23312e23          	sw	s3,572(sp)
1c00bc5a:	23412c23          	sw	s4,568(sp)
1c00bc5e:	24112623          	sw	ra,588(sp)
1c00bc62:	24912223          	sw	s1,580(sp)
1c00bc66:	25212023          	sw	s2,576(sp)
1c00bc6a:	23512a23          	sw	s5,564(sp)
1c00bc6e:	23612823          	sw	s6,560(sp)
1c00bc72:	23712623          	sw	s7,556(sp)
1c00bc76:	23812423          	sw	s8,552(sp)
1c00bc7a:	23912223          	sw	s9,548(sp)
1c00bc7e:	23a12023          	sw	s10,544(sp)
1c00bc82:	21b12e23          	sw	s11,540(sp)
1c00bc86:	842a                	mv	s0,a0
1c00bc88:	8a32                	mv	s4,a2
1c00bc8a:	14810993          	addi	s3,sp,328
1c00bc8e:	011c                	addi	a5,sp,128
1c00bc90:	4601                	li	a2,0
1c00bc92:	4681                	li	a3,0
1c00bc94:	c390                	sw	a2,0(a5)
1c00bc96:	c3d4                	sw	a3,4(a5)
1c00bc98:	07a1                	addi	a5,a5,8
1c00bc9a:	fef99be3          	bne	s3,a5,1c00bc90 <sha3_512+0x42>
1c00bc9e:	04700793          	li	a5,71
1c00bca2:	0747fe63          	bleu	s4,a5,1c00bd1e <sha3_512+0xd0>
1c00bca6:	04700493          	li	s1,71
1c00bcaa:	87ae                	mv	a5,a1
1c00bcac:	04878913          	addi	s2,a5,72 # ff010048 <pulp__FC+0xff010049>
1c00bcb0:	0114                	addi	a3,sp,128
1c00bcb2:	0017c703          	lbu	a4,1(a5)
1c00bcb6:	0027c583          	lbu	a1,2(a5)
1c00bcba:	0057c883          	lbu	a7,5(a5)
1c00bcbe:	0047c303          	lbu	t1,4(a5)
1c00bcc2:	0067c803          	lbu	a6,6(a5)
1c00bcc6:	0007ce03          	lbu	t3,0(a5)
1c00bcca:	0037c503          	lbu	a0,3(a5)
1c00bcce:	0077c603          	lbu	a2,7(a5)
1c00bcd2:	05c2                	slli	a1,a1,0x10
1c00bcd4:	0722                	slli	a4,a4,0x8
1c00bcd6:	08a2                	slli	a7,a7,0x8
1c00bcd8:	8f4d                	or	a4,a4,a1
1c00bcda:	0068e8b3          	or	a7,a7,t1
1c00bcde:	0842                	slli	a6,a6,0x10
1c00bce0:	428c                	lw	a1,0(a3)
1c00bce2:	0046a303          	lw	t1,4(a3)
1c00bce6:	01c76733          	or	a4,a4,t3
1c00bcea:	0562                	slli	a0,a0,0x18
1c00bcec:	01186833          	or	a6,a6,a7
1c00bcf0:	0662                	slli	a2,a2,0x18
1c00bcf2:	8f49                	or	a4,a4,a0
1c00bcf4:	01066633          	or	a2,a2,a6
1c00bcf8:	8f2d                	xor	a4,a4,a1
1c00bcfa:	00c34633          	xor	a2,t1,a2
1c00bcfe:	c298                	sw	a4,0(a3)
1c00bd00:	c2d0                	sw	a2,4(a3)
1c00bd02:	07a1                	addi	a5,a5,8
1c00bd04:	06a1                	addi	a3,a3,8
1c00bd06:	faf916e3          	bne	s2,a5,1c00bcb2 <sha3_512+0x64>
1c00bd0a:	010c                	addi	a1,sp,128
1c00bd0c:	852e                	mv	a0,a1
1c00bd0e:	c6eff0ef          	jal	ra,1c00b17c <KeccakF1600_StatePermute>
1c00bd12:	fb8a0a13          	addi	s4,s4,-72 # feffb8 <__CTOR_LIST__-0x1b01004c>
1c00bd16:	87ca                	mv	a5,s2
1c00bd18:	f944eae3          	bltu	s1,s4,1c00bcac <sha3_512+0x5e>
1c00bd1c:	85ca                	mv	a1,s2
1c00bd1e:	0b18                	addi	a4,sp,400
1c00bd20:	87ce                	mv	a5,s3
1c00bd22:	4681                	li	a3,0
1c00bd24:	c394                	sw	a3,0(a5)
1c00bd26:	0791                	addi	a5,a5,4
1c00bd28:	fef71de3          	bne	a4,a5,1c00bd22 <sha3_512+0xd4>
1c00bd2c:	060a0563          	beqz	s4,1c00bd96 <sha3_512+0x148>
1c00bd30:	fffa0793          	addi	a5,s4,-1
1c00bd34:	4709                	li	a4,2
1c00bd36:	06f772e3          	bleu	a5,a4,1c00c59a <sha3_512+0x94c>
1c00bd3a:	002a5613          	srli	a2,s4,0x2
1c00bd3e:	872e                	mv	a4,a1
1c00bd40:	4781                	li	a5,0
1c00bd42:	4314                	lw	a3,0(a4)
1c00bd44:	0785                	addi	a5,a5,1
1c00bd46:	00d9a023          	sw	a3,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00bd4a:	0711                	addi	a4,a4,4
1c00bd4c:	0991                	addi	s3,s3,4
1c00bd4e:	fec7eae3          	bltu	a5,a2,1c00bd42 <sha3_512+0xf4>
1c00bd52:	ffca7793          	andi	a5,s4,-4
1c00bd56:	04fa0063          	beq	s4,a5,1c00bd96 <sha3_512+0x148>
1c00bd5a:	00f58733          	add	a4,a1,a5
1c00bd5e:	00074683          	lbu	a3,0(a4)
1c00bd62:	21010813          	addi	a6,sp,528
1c00bd66:	00f80733          	add	a4,a6,a5
1c00bd6a:	f2d70c23          	sb	a3,-200(a4)
1c00bd6e:	00178713          	addi	a4,a5,1
1c00bd72:	03477263          	bleu	s4,a4,1c00bd96 <sha3_512+0x148>
1c00bd76:	00e586b3          	add	a3,a1,a4
1c00bd7a:	0006c683          	lbu	a3,0(a3)
1c00bd7e:	9742                	add	a4,a4,a6
1c00bd80:	f2d70c23          	sb	a3,-200(a4)
1c00bd84:	0789                	addi	a5,a5,2
1c00bd86:	0147f863          	bleu	s4,a5,1c00bd96 <sha3_512+0x148>
1c00bd8a:	95be                	add	a1,a1,a5
1c00bd8c:	0005c703          	lbu	a4,0(a1)
1c00bd90:	97c2                	add	a5,a5,a6
1c00bd92:	f2e78c23          	sb	a4,-200(a5)
1c00bd96:	21010893          	addi	a7,sp,528
1c00bd9a:	9a46                	add	s4,s4,a7
1c00bd9c:	4799                	li	a5,6
1c00bd9e:	f2fa0c23          	sb	a5,-200(s4)
1c00bda2:	14a14703          	lbu	a4,330(sp)
1c00bda6:	14914f03          	lbu	t5,329(sp)
1c00bdaa:	15214783          	lbu	a5,338(sp)
1c00bdae:	15114e83          	lbu	t4,337(sp)
1c00bdb2:	15514303          	lbu	t1,341(sp)
1c00bdb6:	15414383          	lbu	t2,340(sp)
1c00bdba:	15614803          	lbu	a6,342(sp)
1c00bdbe:	14814283          	lbu	t0,328(sp)
1c00bdc2:	14b14503          	lbu	a0,331(sp)
1c00bdc6:	15014f83          	lbu	t6,336(sp)
1c00bdca:	15314603          	lbu	a2,339(sp)
1c00bdce:	15714683          	lbu	a3,343(sp)
1c00bdd2:	0f22                	slli	t5,t5,0x8
1c00bdd4:	0ea2                	slli	t4,t4,0x8
1c00bdd6:	0742                	slli	a4,a4,0x10
1c00bdd8:	07c2                	slli	a5,a5,0x10
1c00bdda:	0322                	slli	t1,t1,0x8
1c00bddc:	14d14e03          	lbu	t3,333(sp)
1c00bde0:	00736333          	or	t1,t1,t2
1c00bde4:	01e76733          	or	a4,a4,t5
1c00bde8:	01d7e7b3          	or	a5,a5,t4
1c00bdec:	0842                	slli	a6,a6,0x10
1c00bdee:	14c14483          	lbu	s1,332(sp)
1c00bdf2:	14e14883          	lbu	a7,334(sp)
1c00bdf6:	00576733          	or	a4,a4,t0
1c00bdfa:	01f7e7b3          	or	a5,a5,t6
1c00bdfe:	00686833          	or	a6,a6,t1
1c00be02:	0662                	slli	a2,a2,0x18
1c00be04:	06e2                	slli	a3,a3,0x18
1c00be06:	0562                	slli	a0,a0,0x18
1c00be08:	14f14583          	lbu	a1,335(sp)
1c00be0c:	8d59                	or	a0,a0,a4
1c00be0e:	0e22                	slli	t3,t3,0x8
1c00be10:	00f66733          	or	a4,a2,a5
1c00be14:	0106e7b3          	or	a5,a3,a6
1c00be18:	468a                	lw	a3,128(sp)
1c00be1a:	009e6e33          	or	t3,t3,s1
1c00be1e:	08c2                	slli	a7,a7,0x10
1c00be20:	01c8e8b3          	or	a7,a7,t3
1c00be24:	8d35                	xor	a0,a0,a3
1c00be26:	05e2                	slli	a1,a1,0x18
1c00be28:	469a                	lw	a3,132(sp)
1c00be2a:	0115e5b3          	or	a1,a1,a7
1c00be2e:	8db5                	xor	a1,a1,a3
1c00be30:	46aa                	lw	a3,136(sp)
1c00be32:	15a14803          	lbu	a6,346(sp)
1c00be36:	8eb9                	xor	a3,a3,a4
1c00be38:	473a                	lw	a4,140(sp)
1c00be3a:	15914483          	lbu	s1,345(sp)
1c00be3e:	8f3d                	xor	a4,a4,a5
1c00be40:	15814a83          	lbu	s5,344(sp)
1c00be44:	15b14a03          	lbu	s4,347(sp)
1c00be48:	15c14d03          	lbu	s10,348(sp)
1c00be4c:	18f14783          	lbu	a5,399(sp)
1c00be50:	c12a                	sw	a0,128(sp)
1c00be52:	c32e                	sw	a1,132(sp)
1c00be54:	c536                	sw	a3,136(sp)
1c00be56:	c73a                	sw	a4,140(sp)
1c00be58:	15d14903          	lbu	s2,349(sp)
1c00be5c:	15e14f83          	lbu	t6,350(sp)
1c00be60:	16114283          	lbu	t0,353(sp)
1c00be64:	16214f03          	lbu	t5,354(sp)
1c00be68:	16d14883          	lbu	a7,365(sp)
1c00be6c:	16c14b83          	lbu	s7,364(sp)
1c00be70:	04a2                	slli	s1,s1,0x8
1c00be72:	0842                	slli	a6,a6,0x10
1c00be74:	02a2                	slli	t0,t0,0x8
1c00be76:	08a2                	slli	a7,a7,0x8
1c00be78:	00986833          	or	a6,a6,s1
1c00be7c:	0f42                	slli	t5,t5,0x10
1c00be7e:	01e2ef33          	or	t5,t0,t5
1c00be82:	01586833          	or	a6,a6,s5
1c00be86:	0178e2b3          	or	t0,a7,s7
1c00be8a:	018a1893          	slli	a7,s4,0x18
1c00be8e:	15f14503          	lbu	a0,351(sp)
1c00be92:	0108e833          	or	a6,a7,a6
1c00be96:	0922                	slli	s2,s2,0x8
1c00be98:	48ca                	lw	a7,144(sp)
1c00be9a:	01a96933          	or	s2,s2,s10
1c00be9e:	0fc2                	slli	t6,t6,0x10
1c00bea0:	16014983          	lbu	s3,352(sp)
1c00bea4:	16514e83          	lbu	t4,357(sp)
1c00bea8:	16314583          	lbu	a1,355(sp)
1c00beac:	012fefb3          	or	t6,t6,s2
1c00beb0:	0108c8b3          	xor	a7,a7,a6
1c00beb4:	0562                	slli	a0,a0,0x18
1c00beb6:	485a                	lw	a6,148(sp)
1c00beb8:	16414c83          	lbu	s9,356(sp)
1c00bebc:	16614c03          	lbu	s8,358(sp)
1c00bec0:	01f56533          	or	a0,a0,t6
1c00bec4:	16914e03          	lbu	t3,361(sp)
1c00bec8:	16a14303          	lbu	t1,362(sp)
1c00becc:	16714603          	lbu	a2,359(sp)
1c00bed0:	013f6f33          	or	t5,t5,s3
1c00bed4:	00a84833          	xor	a6,a6,a0
1c00bed8:	0ea2                	slli	t4,t4,0x8
1c00beda:	456a                	lw	a0,152(sp)
1c00bedc:	05e2                	slli	a1,a1,0x18
1c00bede:	019ee4b3          	or	s1,t4,s9
1c00bee2:	01e5e5b3          	or	a1,a1,t5
1c00bee6:	010c1e93          	slli	t4,s8,0x10
1c00beea:	16814383          	lbu	t2,360(sp)
1c00beee:	16b14683          	lbu	a3,363(sp)
1c00bef2:	009eeeb3          	or	t4,t4,s1
1c00bef6:	8d2d                	xor	a0,a0,a1
1c00bef8:	0342                	slli	t1,t1,0x10
1c00befa:	45fa                	lw	a1,156(sp)
1c00befc:	0e22                	slli	t3,t3,0x8
1c00befe:	0662                	slli	a2,a2,0x18
1c00bf00:	16e14b03          	lbu	s6,366(sp)
1c00bf04:	01d66633          	or	a2,a2,t4
1c00bf08:	006e6e33          	or	t3,t3,t1
1c00bf0c:	16f14703          	lbu	a4,367(sp)
1c00bf10:	007e6e33          	or	t3,t3,t2
1c00bf14:	8db1                	xor	a1,a1,a2
1c00bf16:	06e2                	slli	a3,a3,0x18
1c00bf18:	560a                	lw	a2,160(sp)
1c00bf1a:	01c6e6b3          	or	a3,a3,t3
1c00bf1e:	010b1313          	slli	t1,s6,0x10
1c00bf22:	00536333          	or	t1,t1,t0
1c00bf26:	8e35                	xor	a2,a2,a3
1c00bf28:	0762                	slli	a4,a4,0x18
1c00bf2a:	569a                	lw	a3,164(sp)
1c00bf2c:	00676733          	or	a4,a4,t1
1c00bf30:	8f35                	xor	a4,a4,a3
1c00bf32:	c946                	sw	a7,144(sp)
1c00bf34:	cb42                	sw	a6,148(sp)
1c00bf36:	cd2a                	sw	a0,152(sp)
1c00bf38:	cf2e                	sw	a1,156(sp)
1c00bf3a:	d132                	sw	a2,160(sp)
1c00bf3c:	d33a                	sw	a4,164(sp)
1c00bf3e:	17114e83          	lbu	t4,369(sp)
1c00bf42:	17214a83          	lbu	s5,370(sp)
1c00bf46:	17014903          	lbu	s2,368(sp)
1c00bf4a:	18114803          	lbu	a6,385(sp)
1c00bf4e:	18214483          	lbu	s1,386(sp)
1c00bf52:	18014283          	lbu	t0,384(sp)
1c00bf56:	18314703          	lbu	a4,387(sp)
1c00bf5a:	04c2                	slli	s1,s1,0x10
1c00bf5c:	0822                	slli	a6,a6,0x8
1c00bf5e:	17514f83          	lbu	t6,373(sp)
1c00bf62:	17314503          	lbu	a0,371(sp)
1c00bf66:	0ac2                	slli	s5,s5,0x10
1c00bf68:	00986833          	or	a6,a6,s1
1c00bf6c:	0ea2                	slli	t4,t4,0x8
1c00bf6e:	17414b03          	lbu	s6,372(sp)
1c00bf72:	00586833          	or	a6,a6,t0
1c00bf76:	17614e03          	lbu	t3,374(sp)
1c00bf7a:	015eeeb3          	or	t4,t4,s5
1c00bf7e:	0762                	slli	a4,a4,0x18
1c00bf80:	17914303          	lbu	t1,377(sp)
1c00bf84:	17a14983          	lbu	s3,378(sp)
1c00bf88:	17714583          	lbu	a1,375(sp)
1c00bf8c:	012eeeb3          	or	t4,t4,s2
1c00bf90:	01076733          	or	a4,a4,a6
1c00bf94:	0fa2                	slli	t6,t6,0x8
1c00bf96:	582a                	lw	a6,168(sp)
1c00bf98:	0562                	slli	a0,a0,0x18
1c00bf9a:	016fefb3          	or	t6,t6,s6
1c00bf9e:	01d56533          	or	a0,a0,t4
1c00bfa2:	0e42                	slli	t3,t3,0x10
1c00bfa4:	17814383          	lbu	t2,376(sp)
1c00bfa8:	01fe6e33          	or	t3,t3,t6
1c00bfac:	17d14f03          	lbu	t5,381(sp)
1c00bfb0:	17b14603          	lbu	a2,379(sp)
1c00bfb4:	00a84833          	xor	a6,a6,a0
1c00bfb8:	09c2                	slli	s3,s3,0x10
1c00bfba:	553a                	lw	a0,172(sp)
1c00bfbc:	0322                	slli	t1,t1,0x8
1c00bfbe:	05e2                	slli	a1,a1,0x18
1c00bfc0:	17c14a03          	lbu	s4,380(sp)
1c00bfc4:	17e14883          	lbu	a7,382(sp)
1c00bfc8:	01c5e5b3          	or	a1,a1,t3
1c00bfcc:	01336333          	or	t1,t1,s3
1c00bfd0:	00736333          	or	t1,t1,t2
1c00bfd4:	17f14683          	lbu	a3,383(sp)
1c00bfd8:	8d2d                	xor	a0,a0,a1
1c00bfda:	0f22                	slli	t5,t5,0x8
1c00bfdc:	55ca                	lw	a1,176(sp)
1c00bfde:	0662                	slli	a2,a2,0x18
1c00bfe0:	014f6f33          	or	t5,t5,s4
1c00bfe4:	00666633          	or	a2,a2,t1
1c00bfe8:	08c2                	slli	a7,a7,0x10
1c00bfea:	01e8e8b3          	or	a7,a7,t5
1c00bfee:	8db1                	xor	a1,a1,a2
1c00bff0:	06e2                	slli	a3,a3,0x18
1c00bff2:	565a                	lw	a2,180(sp)
1c00bff4:	0116e6b3          	or	a3,a3,a7
1c00bff8:	8e35                	xor	a2,a2,a3
1c00bffa:	56ea                	lw	a3,184(sp)
1c00bffc:	18414f03          	lbu	t5,388(sp)
1c00c000:	8f35                	xor	a4,a4,a3
1c00c002:	d542                	sw	a6,168(sp)
1c00c004:	d72a                	sw	a0,172(sp)
1c00c006:	d92e                	sw	a1,176(sp)
1c00c008:	db32                	sw	a2,180(sp)
1c00c00a:	18514883          	lbu	a7,389(sp)
1c00c00e:	18614503          	lbu	a0,390(sp)
1c00c012:	18714603          	lbu	a2,391(sp)
1c00c016:	dd3a                	sw	a4,184(sp)
1c00c018:	18914703          	lbu	a4,393(sp)
1c00c01c:	18a14303          	lbu	t1,394(sp)
1c00c020:	18814e03          	lbu	t3,392(sp)
1c00c024:	0342                	slli	t1,t1,0x10
1c00c026:	18b14683          	lbu	a3,395(sp)
1c00c02a:	0722                	slli	a4,a4,0x8
1c00c02c:	00676733          	or	a4,a4,t1
1c00c030:	08a2                	slli	a7,a7,0x8
1c00c032:	01e8e8b3          	or	a7,a7,t5
1c00c036:	01c76733          	or	a4,a4,t3
1c00c03a:	06e2                	slli	a3,a3,0x18
1c00c03c:	0542                	slli	a0,a0,0x10
1c00c03e:	01156533          	or	a0,a0,a7
1c00c042:	18d14803          	lbu	a6,397(sp)
1c00c046:	8f55                	or	a4,a4,a3
1c00c048:	0662                	slli	a2,a2,0x18
1c00c04a:	56fa                	lw	a3,188(sp)
1c00c04c:	18c14e83          	lbu	t4,396(sp)
1c00c050:	18e14583          	lbu	a1,398(sp)
1c00c054:	8e49                	or	a2,a2,a0
1c00c056:	8e35                	xor	a2,a2,a3
1c00c058:	0822                	slli	a6,a6,0x8
1c00c05a:	468e                	lw	a3,192(sp)
1c00c05c:	01d86833          	or	a6,a6,t4
1c00c060:	0807e793          	ori	a5,a5,128
1c00c064:	05c2                	slli	a1,a1,0x10
1c00c066:	0105e5b3          	or	a1,a1,a6
1c00c06a:	8eb9                	xor	a3,a3,a4
1c00c06c:	07e2                	slli	a5,a5,0x18
1c00c06e:	471e                	lw	a4,196(sp)
1c00c070:	8fcd                	or	a5,a5,a1
1c00c072:	010c                	addi	a1,sp,128
1c00c074:	8fb9                	xor	a5,a5,a4
1c00c076:	852e                	mv	a0,a1
1c00c078:	df32                	sw	a2,188(sp)
1c00c07a:	c1b6                	sw	a3,192(sp)
1c00c07c:	c3be                	sw	a5,196(sp)
1c00c07e:	8feff0ef          	jal	ra,1c00b17c <KeccakF1600_StatePermute>
1c00c082:	581a                	lw	a6,164(sp)
1c00c084:	552a                	lw	a0,168(sp)
1c00c086:	55ba                	lw	a1,172(sp)
1c00c088:	00885913          	srli	s2,a6,0x8
1c00c08c:	564a                	lw	a2,176(sp)
1c00c08e:	de4a                	sw	s2,60(sp)
1c00c090:	00855913          	srli	s2,a0,0x8
1c00c094:	56da                	lw	a3,180(sp)
1c00c096:	d24a                	sw	s2,36(sp)
1c00c098:	0085d913          	srli	s2,a1,0x8
1c00c09c:	576a                	lw	a4,184(sp)
1c00c09e:	d44a                	sw	s2,40(sp)
1c00c0a0:	00865913          	srli	s2,a2,0x8
1c00c0a4:	57fa                	lw	a5,188(sp)
1c00c0a6:	d64a                	sw	s2,44(sp)
1c00c0a8:	0086d913          	srli	s2,a3,0x8
1c00c0ac:	d84a                	sw	s2,48(sp)
1c00c0ae:	00875913          	srli	s2,a4,0x8
1c00c0b2:	da4a                	sw	s2,52(sp)
1c00c0b4:	0087d913          	srli	s2,a5,0x8
1c00c0b8:	dc4a                	sw	s2,56(sp)
1c00c0ba:	5972                	lw	s2,60(sp)
1c00c0bc:	448a                	lw	s1,128(sp)
1c00c0be:	0ff97913          	andi	s2,s2,255
1c00c0c2:	c2ca                	sw	s2,68(sp)
1c00c0c4:	5912                	lw	s2,36(sp)
1c00c0c6:	439a                	lw	t2,132(sp)
1c00c0c8:	0ff97913          	andi	s2,s2,255
1c00c0cc:	c4ca                	sw	s2,72(sp)
1c00c0ce:	5922                	lw	s2,40(sp)
1c00c0d0:	42aa                	lw	t0,136(sp)
1c00c0d2:	0ff97913          	andi	s2,s2,255
1c00c0d6:	c8ca                	sw	s2,80(sp)
1c00c0d8:	5932                	lw	s2,44(sp)
1c00c0da:	4fba                	lw	t6,140(sp)
1c00c0dc:	0ff97913          	andi	s2,s2,255
1c00c0e0:	ccca                	sw	s2,88(sp)
1c00c0e2:	5942                	lw	s2,48(sp)
1c00c0e4:	4f4a                	lw	t5,144(sp)
1c00c0e6:	0ff97913          	andi	s2,s2,255
1c00c0ea:	4eda                	lw	t4,148(sp)
1c00c0ec:	4e6a                	lw	t3,152(sp)
1c00c0ee:	437a                	lw	t1,156(sp)
1c00c0f0:	588a                	lw	a7,160(sp)
1c00c0f2:	d0ca                	sw	s2,96(sp)
1c00c0f4:	5952                	lw	s2,52(sp)
1c00c0f6:	0082dc93          	srli	s9,t0,0x8
1c00c0fa:	0ff97913          	andi	s2,s2,255
1c00c0fe:	d4ca                	sw	s2,104(sp)
1c00c100:	5962                	lw	s2,56(sp)
1c00c102:	008fdc13          	srli	s8,t6,0x8
1c00c106:	008f5b93          	srli	s7,t5,0x8
1c00c10a:	008edb13          	srli	s6,t4,0x8
1c00c10e:	0ff97913          	andi	s2,s2,255
1c00c112:	d8ca                	sw	s2,112(sp)
1c00c114:	0083dd13          	srli	s10,t2,0x8
1c00c118:	0ff4f913          	andi	s2,s1,255
1c00c11c:	0ffcfc93          	andi	s9,s9,255
1c00c120:	0ffc7c13          	andi	s8,s8,255
1c00c124:	0ffbfb93          	andi	s7,s7,255
1c00c128:	0ffb7b13          	andi	s6,s6,255
1c00c12c:	d24a                	sw	s2,36(sp)
1c00c12e:	008e5a93          	srli	s5,t3,0x8
1c00c132:	0ff2f913          	andi	s2,t0,255
1c00c136:	0ca2                	slli	s9,s9,0x8
1c00c138:	0c22                	slli	s8,s8,0x8
1c00c13a:	0ba2                	slli	s7,s7,0x8
1c00c13c:	0b22                	slli	s6,s6,0x8
1c00c13e:	0ffd7d13          	andi	s10,s10,255
1c00c142:	ce66                	sw	s9,28(sp)
1c00c144:	d64a                	sw	s2,44(sp)
1c00c146:	cc62                	sw	s8,24(sp)
1c00c148:	ca5e                	sw	s7,20(sp)
1c00c14a:	0ffffc13          	andi	s8,t6,255
1c00c14e:	4b96                	lw	s7,68(sp)
1c00c150:	0fff7c93          	andi	s9,t5,255
1c00c154:	c85a                	sw	s6,16(sp)
1c00c156:	0ffe7913          	andi	s2,t3,255
1c00c15a:	0ff8fb13          	andi	s6,a7,255
1c00c15e:	0d22                	slli	s10,s10,0x8
1c00c160:	0ffafa93          	andi	s5,s5,255
1c00c164:	d06a                	sw	s10,32(sp)
1c00c166:	d862                	sw	s8,48(sp)
1c00c168:	0ff3fd13          	andi	s10,t2,255
1c00c16c:	da66                	sw	s9,52(sp)
1c00c16e:	de4a                	sw	s2,60(sp)
1c00c170:	4ca6                	lw	s9,72(sp)
1c00c172:	4946                	lw	s2,80(sp)
1c00c174:	c0da                	sw	s6,64(sp)
1c00c176:	0ff87c13          	andi	s8,a6,255
1c00c17a:	4b66                	lw	s6,88(sp)
1c00c17c:	0aa2                	slli	s5,s5,0x8
1c00c17e:	d46a                	sw	s10,40(sp)
1c00c180:	c656                	sw	s5,12(sp)
1c00c182:	0ffefd13          	andi	s10,t4,255
1c00c186:	0ff37a93          	andi	s5,t1,255
1c00c18a:	c2e2                	sw	s8,68(sp)
1c00c18c:	0ba2                	slli	s7,s7,0x8
1c00c18e:	5c06                	lw	s8,96(sp)
1c00c190:	dc6a                	sw	s10,56(sp)
1c00c192:	dcd6                	sw	s5,120(sp)
1c00c194:	dede                	sw	s7,124(sp)
1c00c196:	0ff57d13          	andi	s10,a0,255
1c00c19a:	0ff5fa93          	andi	s5,a1,255
1c00c19e:	0ff67b93          	andi	s7,a2,255
1c00c1a2:	0ca2                	slli	s9,s9,0x8
1c00c1a4:	0922                	slli	s2,s2,0x8
1c00c1a6:	0b22                	slli	s6,s6,0x8
1c00c1a8:	c4e6                	sw	s9,72(sp)
1c00c1aa:	c6ea                	sw	s10,76(sp)
1c00c1ac:	c8ca                	sw	s2,80(sp)
1c00c1ae:	cad6                	sw	s5,84(sp)
1c00c1b0:	ccda                	sw	s6,88(sp)
1c00c1b2:	cede                	sw	s7,92(sp)
1c00c1b4:	0c22                	slli	s8,s8,0x8
1c00c1b6:	d0e2                	sw	s8,96(sp)
1c00c1b8:	5ac6                	lw	s5,112(sp)
1c00c1ba:	5d26                	lw	s10,104(sp)
1c00c1bc:	0ff6fc93          	andi	s9,a3,255
1c00c1c0:	0ff7fb13          	andi	s6,a5,255
1c00c1c4:	0084dd93          	srli	s11,s1,0x8
1c00c1c8:	0aa2                	slli	s5,s5,0x8
1c00c1ca:	5b92                	lw	s7,36(sp)
1c00c1cc:	5c22                	lw	s8,40(sp)
1c00c1ce:	d2e6                	sw	s9,100(sp)
1c00c1d0:	d8d6                	sw	s5,112(sp)
1c00c1d2:	5c82                	lw	s9,32(sp)
1c00c1d4:	5ab2                	lw	s5,44(sp)
1c00c1d6:	dada                	sw	s6,116(sp)
1c00c1d8:	0ffdfd93          	andi	s11,s11,255
1c00c1dc:	4b72                	lw	s6,28(sp)
1c00c1de:	0d22                	slli	s10,s10,0x8
1c00c1e0:	0da2                	slli	s11,s11,0x8
1c00c1e2:	d4ea                	sw	s10,104(sp)
1c00c1e4:	01bbedb3          	or	s11,s7,s11
1c00c1e8:	019c6d33          	or	s10,s8,s9
1c00c1ec:	5bc2                	lw	s7,48(sp)
1c00c1ee:	016aecb3          	or	s9,s5,s6
1c00c1f2:	4ae2                	lw	s5,24(sp)
1c00c1f4:	5b52                	lw	s6,52(sp)
1c00c1f6:	015bec33          	or	s8,s7,s5
1c00c1fa:	4ad2                	lw	s5,20(sp)
1c00c1fc:	0088d993          	srli	s3,a7,0x8
1c00c200:	015b6bb3          	or	s7,s6,s5
1c00c204:	4ac2                	lw	s5,16(sp)
1c00c206:	5b62                	lw	s6,56(sp)
1c00c208:	00835a13          	srli	s4,t1,0x8
1c00c20c:	015b6b33          	or	s6,s6,s5
1c00c210:	c25a                	sw	s6,4(sp)
1c00c212:	4ab2                	lw	s5,12(sp)
1c00c214:	5b72                	lw	s6,60(sp)
1c00c216:	0ff9f993          	andi	s3,s3,255
1c00c21a:	015b6b33          	or	s6,s6,s5
1c00c21e:	4a86                	lw	s5,64(sp)
1c00c220:	c45a                	sw	s6,8(sp)
1c00c222:	0ffa7a13          	andi	s4,s4,255
1c00c226:	5b66                	lw	s6,120(sp)
1c00c228:	09a2                	slli	s3,s3,0x8
1c00c22a:	013ae9b3          	or	s3,s5,s3
1c00c22e:	0a22                	slli	s4,s4,0x8
1c00c230:	c0ce                	sw	s3,64(sp)
1c00c232:	014b6a33          	or	s4,s6,s4
1c00c236:	59f6                	lw	s3,124(sp)
1c00c238:	4b16                	lw	s6,68(sp)
1c00c23a:	4ab6                	lw	s5,76(sp)
1c00c23c:	013b6b33          	or	s6,s6,s3
1c00c240:	c2da                	sw	s6,68(sp)
1c00c242:	4b26                	lw	s6,72(sp)
1c00c244:	0ff77913          	andi	s2,a4,255
1c00c248:	016aeab3          	or	s5,s5,s6
1c00c24c:	d6ca                	sw	s2,108(sp)
1c00c24e:	49d6                	lw	s3,84(sp)
1c00c250:	c6d6                	sw	s5,76(sp)
1c00c252:	4ac6                	lw	s5,80(sp)
1c00c254:	4b76                	lw	s6,92(sp)
1c00c256:	0159e9b3          	or	s3,s3,s5
1c00c25a:	cace                	sw	s3,84(sp)
1c00c25c:	49e6                	lw	s3,88(sp)
1c00c25e:	5a96                	lw	s5,100(sp)
1c00c260:	013b6b33          	or	s6,s6,s3
1c00c264:	ceda                	sw	s6,92(sp)
1c00c266:	5b06                	lw	s6,96(sp)
1c00c268:	59b6                	lw	s3,108(sp)
1c00c26a:	016aeab3          	or	s5,s5,s6
1c00c26e:	d2d6                	sw	s5,100(sp)
1c00c270:	5aa6                	lw	s5,104(sp)
1c00c272:	5b56                	lw	s6,116(sp)
1c00c274:	0159e9b3          	or	s3,s3,s5
1c00c278:	d6ce                	sw	s3,108(sp)
1c00c27a:	59c6                	lw	s3,112(sp)
1c00c27c:	ff010937          	lui	s2,0xff010
1c00c280:	013b6b33          	or	s6,s6,s3
1c00c284:	00ff09b7          	lui	s3,0xff0
1c00c288:	0134fab3          	and	s5,s1,s3
1c00c28c:	0133f9b3          	and	s3,t2,s3
1c00c290:	d44e                	sw	s3,40(sp)
1c00c292:	00ff09b7          	lui	s3,0xff0
1c00c296:	0132f9b3          	and	s3,t0,s3
1c00c29a:	d64e                	sw	s3,44(sp)
1c00c29c:	00ff09b7          	lui	s3,0xff0
1c00c2a0:	013ff9b3          	and	s3,t6,s3
1c00c2a4:	d84e                	sw	s3,48(sp)
1c00c2a6:	00ff09b7          	lui	s3,0xff0
1c00c2aa:	013f79b3          	and	s3,t5,s3
1c00c2ae:	da4e                	sw	s3,52(sp)
1c00c2b0:	00ff09b7          	lui	s3,0xff0
1c00c2b4:	013ef9b3          	and	s3,t4,s3
1c00c2b8:	dc4e                	sw	s3,56(sp)
1c00c2ba:	00ff09b7          	lui	s3,0xff0
1c00c2be:	013e79b3          	and	s3,t3,s3
1c00c2c2:	197d                	addi	s2,s2,-1
1c00c2c4:	de4e                	sw	s3,60(sp)
1c00c2c6:	00ff09b7          	lui	s3,0xff0
1c00c2ca:	012c7c33          	and	s8,s8,s2
1c00c2ce:	012bfbb3          	and	s7,s7,s2
1c00c2d2:	013379b3          	and	s3,t1,s3
1c00c2d6:	012cfcb3          	and	s9,s9,s2
1c00c2da:	ca62                	sw	s8,20(sp)
1c00c2dc:	c85e                	sw	s7,16(sp)
1c00c2de:	4c22                	lw	s8,8(sp)
1c00c2e0:	4b92                	lw	s7,4(sp)
1c00c2e2:	dcce                	sw	s3,120(sp)
1c00c2e4:	00ff09b7          	lui	s3,0xff0
1c00c2e8:	cc66                	sw	s9,24(sp)
1c00c2ea:	0138f9b3          	and	s3,a7,s3
1c00c2ee:	4c86                	lw	s9,64(sp)
1c00c2f0:	012d7d33          	and	s10,s10,s2
1c00c2f4:	012bfbb3          	and	s7,s7,s2
1c00c2f8:	012c7c33          	and	s8,s8,s2
1c00c2fc:	012a7a33          	and	s4,s4,s2
1c00c300:	dece                	sw	s3,124(sp)
1c00c302:	00ff09b7          	lui	s3,0xff0
1c00c306:	dada                	sw	s6,116(sp)
1c00c308:	ce6a                	sw	s10,28(sp)
1c00c30a:	c65e                	sw	s7,12(sp)
1c00c30c:	c462                	sw	s8,8(sp)
1c00c30e:	c252                	sw	s4,4(sp)
1c00c310:	012cfcb3          	and	s9,s9,s2
1c00c314:	013879b3          	and	s3,a6,s3
1c00c318:	c0e6                	sw	s9,64(sp)
1c00c31a:	c4ce                	sw	s3,72(sp)
1c00c31c:	00ff09b7          	lui	s3,0xff0
1c00c320:	013579b3          	and	s3,a0,s3
1c00c324:	c8ce                	sw	s3,80(sp)
1c00c326:	00ff09b7          	lui	s3,0xff0
1c00c32a:	0135f9b3          	and	s3,a1,s3
1c00c32e:	ccce                	sw	s3,88(sp)
1c00c330:	49d6                	lw	s3,84(sp)
1c00c332:	012dfb33          	and	s6,s11,s2
1c00c336:	0129f9b3          	and	s3,s3,s2
1c00c33a:	cace                	sw	s3,84(sp)
1c00c33c:	00ff09b7          	lui	s3,0xff0
1c00c340:	013679b3          	and	s3,a2,s3
1c00c344:	d0ce                	sw	s3,96(sp)
1c00c346:	00ff09b7          	lui	s3,0xff0
1c00c34a:	0136f9b3          	and	s3,a3,s3
1c00c34e:	d4ce                	sw	s3,104(sp)
1c00c350:	00ff09b7          	lui	s3,0xff0
1c00c354:	4db6                	lw	s11,76(sp)
1c00c356:	4a76                	lw	s4,92(sp)
1c00c358:	013779b3          	and	s3,a4,s3
1c00c35c:	d8ce                	sw	s3,112(sp)
1c00c35e:	00ff09b7          	lui	s3,0xff0
1c00c362:	4d16                	lw	s10,68(sp)
1c00c364:	5b96                	lw	s7,100(sp)
1c00c366:	012dfdb3          	and	s11,s11,s2
1c00c36a:	012a7a33          	and	s4,s4,s2
1c00c36e:	0137f9b3          	and	s3,a5,s3
1c00c372:	5cd6                	lw	s9,116(sp)
1c00c374:	5c36                	lw	s8,108(sp)
1c00c376:	c6ee                	sw	s11,76(sp)
1c00c378:	ced2                	sw	s4,92(sp)
1c00c37a:	c04e                	sw	s3,0(sp)
1c00c37c:	5a22                	lw	s4,40(sp)
1c00c37e:	49f2                	lw	s3,28(sp)
1c00c380:	015b6db3          	or	s11,s6,s5
1c00c384:	4ae2                	lw	s5,24(sp)
1c00c386:	5b32                	lw	s6,44(sp)
1c00c388:	012d7d33          	and	s10,s10,s2
1c00c38c:	012bfbb3          	and	s7,s7,s2
1c00c390:	c2ea                	sw	s10,68(sp)
1c00c392:	d2de                	sw	s7,100(sp)
1c00c394:	012c7c33          	and	s8,s8,s2
1c00c398:	4bd2                	lw	s7,20(sp)
1c00c39a:	012cf933          	and	s2,s9,s2
1c00c39e:	0149ed33          	or	s10,s3,s4
1c00c3a2:	016aecb3          	or	s9,s5,s6
1c00c3a6:	59c2                	lw	s3,48(sp)
1c00c3a8:	4a42                	lw	s4,16(sp)
1c00c3aa:	5ad2                	lw	s5,52(sp)
1c00c3ac:	d6e2                	sw	s8,108(sp)
1c00c3ae:	013bec33          	or	s8,s7,s3
1c00c3b2:	49b2                	lw	s3,12(sp)
1c00c3b4:	015a6bb3          	or	s7,s4,s5
1c00c3b8:	5a62                	lw	s4,56(sp)
1c00c3ba:	daca                	sw	s2,116(sp)
1c00c3bc:	0149eb33          	or	s6,s3,s4
1c00c3c0:	49a2                	lw	s3,8(sp)
1c00c3c2:	5a72                	lw	s4,60(sp)
1c00c3c4:	80e1                	srli	s1,s1,0x18
1c00c3c6:	0149eab3          	or	s5,s3,s4
1c00c3ca:	5a66                	lw	s4,120(sp)
1c00c3cc:	4992                	lw	s3,4(sp)
1c00c3ce:	04e2                	slli	s1,s1,0x18
1c00c3d0:	0149e9b3          	or	s3,s3,s4
1c00c3d4:	dcce                	sw	s3,120(sp)
1c00c3d6:	5a76                	lw	s4,124(sp)
1c00c3d8:	4986                	lw	s3,64(sp)
1c00c3da:	01000937          	lui	s2,0x1000
1c00c3de:	0149e9b3          	or	s3,s3,s4
1c00c3e2:	d24e                	sw	s3,36(sp)
1c00c3e4:	4a26                	lw	s4,72(sp)
1c00c3e6:	4996                	lw	s3,68(sp)
1c00c3e8:	197d                	addi	s2,s2,-1
1c00c3ea:	0149e9b3          	or	s3,s3,s4
1c00c3ee:	d44e                	sw	s3,40(sp)
1c00c3f0:	4a46                	lw	s4,80(sp)
1c00c3f2:	49b6                	lw	s3,76(sp)
1c00c3f4:	c2a6                	sw	s1,68(sp)
1c00c3f6:	0149e9b3          	or	s3,s3,s4
1c00c3fa:	d64e                	sw	s3,44(sp)
1c00c3fc:	4a66                	lw	s4,88(sp)
1c00c3fe:	49d6                	lw	s3,84(sp)
1c00c400:	54e6                	lw	s1,120(sp)
1c00c402:	0149e9b3          	or	s3,s3,s4
1c00c406:	d84e                	sw	s3,48(sp)
1c00c408:	5a06                	lw	s4,96(sp)
1c00c40a:	49f6                	lw	s3,92(sp)
1c00c40c:	018ede93          	srli	t4,t4,0x18
1c00c410:	0149e9b3          	or	s3,s3,s4
1c00c414:	da4e                	sw	s3,52(sp)
1c00c416:	5a26                	lw	s4,104(sp)
1c00c418:	5996                	lw	s3,100(sp)
1c00c41a:	018e5e13          	srli	t3,t3,0x18
1c00c41e:	0149e9b3          	or	s3,s3,s4
1c00c422:	dc4e                	sw	s3,56(sp)
1c00c424:	5a46                	lw	s4,112(sp)
1c00c426:	59b6                	lw	s3,108(sp)
1c00c428:	01835313          	srli	t1,t1,0x18
1c00c42c:	0149e9b3          	or	s3,s3,s4
1c00c430:	de4e                	sw	s3,60(sp)
1c00c432:	4a02                	lw	s4,0(sp)
1c00c434:	59d6                	lw	s3,116(sp)
1c00c436:	012b7b33          	and	s6,s6,s2
1c00c43a:	0149e9b3          	or	s3,s3,s4
1c00c43e:	c0ce                	sw	s3,64(sp)
1c00c440:	5992                	lw	s3,36(sp)
1c00c442:	0124fa33          	and	s4,s1,s2
1c00c446:	0129f9b3          	and	s3,s3,s2
1c00c44a:	d24e                	sw	s3,36(sp)
1c00c44c:	54a2                	lw	s1,40(sp)
1c00c44e:	59b2                	lw	s3,44(sp)
1c00c450:	0124f4b3          	and	s1,s1,s2
1c00c454:	d426                	sw	s1,40(sp)
1c00c456:	54c2                	lw	s1,48(sp)
1c00c458:	0129f9b3          	and	s3,s3,s2
1c00c45c:	d64e                	sw	s3,44(sp)
1c00c45e:	0124f4b3          	and	s1,s1,s2
1c00c462:	59d2                	lw	s3,52(sp)
1c00c464:	d826                	sw	s1,48(sp)
1c00c466:	54e2                	lw	s1,56(sp)
1c00c468:	0129f9b3          	and	s3,s3,s2
1c00c46c:	da4e                	sw	s3,52(sp)
1c00c46e:	0124f4b3          	and	s1,s1,s2
1c00c472:	59f2                	lw	s3,60(sp)
1c00c474:	dc26                	sw	s1,56(sp)
1c00c476:	4486                	lw	s1,64(sp)
1c00c478:	012afab3          	and	s5,s5,s2
1c00c47c:	0129f9b3          	and	s3,s3,s2
1c00c480:	0183d393          	srli	t2,t2,0x18
1c00c484:	0182d293          	srli	t0,t0,0x18
1c00c488:	018fdf93          	srli	t6,t6,0x18
1c00c48c:	018f5f13          	srli	t5,t5,0x18
1c00c490:	0ee2                	slli	t4,t4,0x18
1c00c492:	0e62                	slli	t3,t3,0x18
1c00c494:	0362                	slli	t1,t1,0x18
1c00c496:	de4e                	sw	s3,60(sp)
1c00c498:	012dfdb3          	and	s11,s11,s2
1c00c49c:	0124f9b3          	and	s3,s1,s2
1c00c4a0:	012d7d33          	and	s10,s10,s2
1c00c4a4:	012cfcb3          	and	s9,s9,s2
1c00c4a8:	012c7c33          	and	s8,s8,s2
1c00c4ac:	012bfbb3          	and	s7,s7,s2
1c00c4b0:	01db6eb3          	or	t4,s6,t4
1c00c4b4:	4916                	lw	s2,68(sp)
1c00c4b6:	5b32                	lw	s6,44(sp)
1c00c4b8:	01caee33          	or	t3,s5,t3
1c00c4bc:	006a6333          	or	t1,s4,t1
1c00c4c0:	5aa2                	lw	s5,40(sp)
1c00c4c2:	5a12                	lw	s4,36(sp)
1c00c4c4:	0188d893          	srli	a7,a7,0x18
1c00c4c8:	01885813          	srli	a6,a6,0x18
1c00c4cc:	8161                	srli	a0,a0,0x18
1c00c4ce:	03e2                	slli	t2,t2,0x18
1c00c4d0:	02e2                	slli	t0,t0,0x18
1c00c4d2:	0fe2                	slli	t6,t6,0x18
1c00c4d4:	0f62                	slli	t5,t5,0x18
1c00c4d6:	007d63b3          	or	t2,s10,t2
1c00c4da:	005ce2b3          	or	t0,s9,t0
1c00c4de:	5d72                	lw	s10,60(sp)
1c00c4e0:	5ce2                	lw	s9,56(sp)
1c00c4e2:	01fc6fb3          	or	t6,s8,t6
1c00c4e6:	01ebef33          	or	t5,s7,t5
1c00c4ea:	5c52                	lw	s8,52(sp)
1c00c4ec:	5bc2                	lw	s7,48(sp)
1c00c4ee:	81e1                	srli	a1,a1,0x18
1c00c4f0:	8261                	srli	a2,a2,0x18
1c00c4f2:	82e1                	srli	a3,a3,0x18
1c00c4f4:	8361                	srli	a4,a4,0x18
1c00c4f6:	83e1                	srli	a5,a5,0x18
1c00c4f8:	08e2                	slli	a7,a7,0x18
1c00c4fa:	0862                	slli	a6,a6,0x18
1c00c4fc:	0562                	slli	a0,a0,0x18
1c00c4fe:	012de4b3          	or	s1,s11,s2
1c00c502:	05e2                	slli	a1,a1,0x18
1c00c504:	011a6933          	or	s2,s4,a7
1c00c508:	0662                	slli	a2,a2,0x18
1c00c50a:	010aea33          	or	s4,s5,a6
1c00c50e:	06e2                	slli	a3,a3,0x18
1c00c510:	00ab6ab3          	or	s5,s6,a0
1c00c514:	0762                	slli	a4,a4,0x18
1c00c516:	07e2                	slli	a5,a5,0x18
1c00c518:	c004                	sw	s1,0(s0)
1c00c51a:	03242023          	sw	s2,32(s0)
1c00c51e:	03442223          	sw	s4,36(s0)
1c00c522:	03542423          	sw	s5,40(s0)
1c00c526:	00bbe5b3          	or	a1,s7,a1
1c00c52a:	00cc6633          	or	a2,s8,a2
1c00c52e:	00dce6b3          	or	a3,s9,a3
1c00c532:	00ed6733          	or	a4,s10,a4
1c00c536:	00f9e7b3          	or	a5,s3,a5
1c00c53a:	00742223          	sw	t2,4(s0)
1c00c53e:	00542423          	sw	t0,8(s0)
1c00c542:	01f42623          	sw	t6,12(s0)
1c00c546:	01e42823          	sw	t5,16(s0)
1c00c54a:	01d42a23          	sw	t4,20(s0)
1c00c54e:	01c42c23          	sw	t3,24(s0)
1c00c552:	00642e23          	sw	t1,28(s0)
1c00c556:	d44c                	sw	a1,44(s0)
1c00c558:	d810                	sw	a2,48(s0)
1c00c55a:	d854                	sw	a3,52(s0)
1c00c55c:	dc18                	sw	a4,56(s0)
1c00c55e:	dc5c                	sw	a5,60(s0)
1c00c560:	24c12083          	lw	ra,588(sp)
1c00c564:	24812403          	lw	s0,584(sp)
1c00c568:	24412483          	lw	s1,580(sp)
1c00c56c:	24012903          	lw	s2,576(sp)
1c00c570:	23c12983          	lw	s3,572(sp)
1c00c574:	23812a03          	lw	s4,568(sp)
1c00c578:	23412a83          	lw	s5,564(sp)
1c00c57c:	23012b03          	lw	s6,560(sp)
1c00c580:	22c12b83          	lw	s7,556(sp)
1c00c584:	22812c03          	lw	s8,552(sp)
1c00c588:	22412c83          	lw	s9,548(sp)
1c00c58c:	22012d03          	lw	s10,544(sp)
1c00c590:	21c12d83          	lw	s11,540(sp)
1c00c594:	25010113          	addi	sp,sp,592
1c00c598:	8082                	ret
1c00c59a:	4781                	li	a5,0
1c00c59c:	fbeff06f          	j	1c00bd5a <sha3_512+0x10c>

1c00c5a0 <PQCLEAN_KYBER768_CLEAN_indcpa_enc>:
1c00c5a0:	7119                	addi	sp,sp,-128
1c00c5a2:	7375                	lui	t1,0xffffd
1c00c5a4:	de86                	sw	ra,124(sp)
1c00c5a6:	dca2                	sw	s0,120(sp)
1c00c5a8:	daa6                	sw	s1,116(sp)
1c00c5aa:	d8ca                	sw	s2,112(sp)
1c00c5ac:	d2d6                	sw	s5,100(sp)
1c00c5ae:	d0da                	sw	s6,96(sp)
1c00c5b0:	cede                	sw	s7,92(sp)
1c00c5b2:	c6ee                	sw	s11,76(sp)
1c00c5b4:	d6ce                	sw	s3,108(sp)
1c00c5b6:	d4d2                	sw	s4,104(sp)
1c00c5b8:	cce2                	sw	s8,88(sp)
1c00c5ba:	cae6                	sw	s9,84(sp)
1c00c5bc:	c8ea                	sw	s10,80(sp)
1c00c5be:	670d                	lui	a4,0x3
1c00c5c0:	911a                	add	sp,sp,t1
1c00c5c2:	ce2a                	sw	a0,28(sp)
1c00c5c4:	04070713          	addi	a4,a4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00c5c8:	7579                	lui	a0,0xffffe
1c00c5ca:	970a                	add	a4,a4,sp
1c00c5cc:	c0050513          	addi	a0,a0,-1024 # ffffdc00 <pulp__FC+0xffffdc01>
1c00c5d0:	84ae                	mv	s1,a1
1c00c5d2:	953a                	add	a0,a0,a4
1c00c5d4:	85b2                	mv	a1,a2
1c00c5d6:	8432                	mv	s0,a2
1c00c5d8:	cc36                	sw	a3,24(sp)
1c00c5da:	593000ef          	jal	ra,1c00d36c <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>
1c00c5de:	6e8d                	lui	t4,0x3
1c00c5e0:	7975                	lui	s2,0xffffd
1c00c5e2:	040e8e93          	addi	t4,t4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00c5e6:	49842703          	lw	a4,1176(s0)
1c00c5ea:	49c42783          	lw	a5,1180(s0)
1c00c5ee:	9e8a                	add	t4,t4,sp
1c00c5f0:	48042e03          	lw	t3,1152(s0)
1c00c5f4:	48442303          	lw	t1,1156(s0)
1c00c5f8:	48842883          	lw	a7,1160(s0)
1c00c5fc:	48c42803          	lw	a6,1164(s0)
1c00c600:	49042603          	lw	a2,1168(s0)
1c00c604:	49442683          	lw	a3,1172(s0)
1c00c608:	20090513          	addi	a0,s2,512 # ffffd200 <pulp__FC+0xffffd201>
1c00c60c:	85a6                	mv	a1,s1
1c00c60e:	9576                	add	a0,a0,t4
1c00c610:	dc3a                	sw	a4,56(sp)
1c00c612:	de3e                	sw	a5,60(sp)
1c00c614:	d072                	sw	t3,32(sp)
1c00c616:	d21a                	sw	t1,36(sp)
1c00c618:	d446                	sw	a7,40(sp)
1c00c61a:	d642                	sw	a6,44(sp)
1c00c61c:	d832                	sw	a2,48(sp)
1c00c61e:	da36                	sw	a3,52(sp)
1c00c620:	0a3000ef          	jal	ra,1c00cec2 <PQCLEAN_KYBER768_CLEAN_poly_frommsg>
1c00c624:	670d                	lui	a4,0x3
1c00c626:	77fd                	lui	a5,0xfffff
1c00c628:	04070713          	addi	a4,a4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00c62c:	970a                	add	a4,a4,sp
1c00c62e:	80078493          	addi	s1,a5,-2048 # ffffe800 <pulp__FC+0xffffe801>
1c00c632:	e0078793          	addi	a5,a5,-512
1c00c636:	94ba                	add	s1,s1,a4
1c00c638:	00f70eb3          	add	t4,a4,a5
1c00c63c:	670d                	lui	a4,0x3
1c00c63e:	04070713          	addi	a4,a4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00c642:	1901                	addi	s2,s2,-32
1c00c644:	6b05                	lui	s6,0x1
1c00c646:	970a                	add	a4,a4,sp
1c00c648:	ca76                	sw	t4,20(sp)
1c00c64a:	c602                	sw	zero,12(sp)
1c00c64c:	01270bb3          	add	s7,a4,s2
1c00c650:	1f848a93          	addi	s5,s1,504 # ff0101f8 <pulp__FC+0xff0101f9>
1c00c654:	fffb0d93          	addi	s11,s6,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00c658:	4732                	lw	a4,12(sp)
1c00c65a:	678d                	lui	a5,0x3
1c00c65c:	04078793          	addi	a5,a5,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00c660:	7ef9                	lui	t4,0xffffe
1c00c662:	0ff77713          	andi	a4,a4,255
1c00c666:	978a                	add	a5,a5,sp
1c00c668:	200e8e93          	addi	t4,t4,512 # ffffe200 <pulp__FC+0xffffe201>
1c00c66c:	c83a                	sw	a4,16(sp)
1c00c66e:	4452                	lw	s0,20(sp)
1c00c670:	4901                	li	s2,0
1c00c672:	01d789b3          	add	s3,a5,t4
1c00c676:	a01d                	j	1c00c69c <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0xfc>
1c00c678:	001c9813          	slli	a6,s9,0x1
1c00c67c:	9822                	add	a6,a6,s0
1c00c67e:	001c8893          	addi	a7,s9,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00c682:	00f81023          	sh	a5,0(a6) # ff010000 <pulp__FC+0xff010001>
1c00c686:	24a89863          	bne	a7,a0,1c00c8d6 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x336>
1c00c68a:	854e                	mv	a0,s3
1c00c68c:	994ff0ef          	jal	ra,1c00b820 <shake128_ctx_release>
1c00c690:	0905                	addi	s2,s2,1
1c00c692:	478d                	li	a5,3
1c00c694:	20040413          	addi	s0,s0,512
1c00c698:	0ef90463          	beq	s2,a5,1c00c780 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x1e0>
1c00c69c:	4642                	lw	a2,16(sp)
1c00c69e:	0ff97693          	andi	a3,s2,255
1c00c6a2:	85de                	mv	a1,s7
1c00c6a4:	854e                	mv	a0,s3
1c00c6a6:	627000ef          	jal	ra,1c00d4cc <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c00c6aa:	458d                	li	a1,3
1c00c6ac:	8526                	mv	a0,s1
1c00c6ae:	864e                	mv	a2,s3
1c00c6b0:	8b0ff0ef          	jal	ra,1c00b760 <shake128_squeezeblocks>
1c00c6b4:	4c81                	li	s9,0
1c00c6b6:	8726                	mv	a4,s1
1c00c6b8:	d00b0593          	addi	a1,s6,-768
1c00c6bc:	10000513          	li	a0,256
1c00c6c0:	00174603          	lbu	a2,1(a4)
1c00c6c4:	00074683          	lbu	a3,0(a4)
1c00c6c8:	00861793          	slli	a5,a2,0x8
1c00c6cc:	8fd5                	or	a5,a5,a3
1c00c6ce:	01b7f7b3          	and	a5,a5,s11
1c00c6d2:	00274683          	lbu	a3,2(a4)
1c00c6d6:	faf5f1e3          	bleu	a5,a1,1c00c678 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0xd8>
1c00c6da:	8211                	srli	a2,a2,0x4
1c00c6dc:	0692                	slli	a3,a3,0x4
1c00c6de:	8ed1                	or	a3,a3,a2
1c00c6e0:	00d5c863          	blt	a1,a3,1c00c6f0 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x150>
1c00c6e4:	001c9793          	slli	a5,s9,0x1
1c00c6e8:	97a2                	add	a5,a5,s0
1c00c6ea:	00d79023          	sh	a3,0(a5)
1c00c6ee:	0c85                	addi	s9,s9,1
1c00c6f0:	f8ac8de3          	beq	s9,a0,1c00c68a <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0xea>
1c00c6f4:	070d                	addi	a4,a4,3
1c00c6f6:	fcea95e3          	bne	s5,a4,1c00c6c0 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x120>
1c00c6fa:	0a848d13          	addi	s10,s1,168
1c00c6fe:	10000a13          	li	s4,256
1c00c702:	d00b0c13          	addi	s8,s6,-768
1c00c706:	a031                	j	1c00c712 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x172>
1c00c708:	9cae                	add	s9,s9,a1
1c00c70a:	0ff00793          	li	a5,255
1c00c70e:	f797eee3          	bltu	a5,s9,1c00c68a <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0xea>
1c00c712:	4585                	li	a1,1
1c00c714:	8526                	mv	a0,s1
1c00c716:	864e                	mv	a2,s3
1c00c718:	848ff0ef          	jal	ra,1c00b760 <shake128_squeezeblocks>
1c00c71c:	001c9513          	slli	a0,s9,0x1
1c00c720:	9522                	add	a0,a0,s0
1c00c722:	419a0eb3          	sub	t4,s4,s9
1c00c726:	86a6                	mv	a3,s1
1c00c728:	4581                	li	a1,0
1c00c72a:	00159793          	slli	a5,a1,0x1
1c00c72e:	00f50f33          	add	t5,a0,a5
1c00c732:	fda68be3          	beq	a3,s10,1c00c708 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x168>
1c00c736:	0016c703          	lbu	a4,1(a3)
1c00c73a:	0006c603          	lbu	a2,0(a3)
1c00c73e:	00871793          	slli	a5,a4,0x8
1c00c742:	8fd1                	or	a5,a5,a2
1c00c744:	01b7f7b3          	and	a5,a5,s11
1c00c748:	00475613          	srli	a2,a4,0x4
1c00c74c:	0026c703          	lbu	a4,2(a3)
1c00c750:	00fc6563          	bltu	s8,a5,1c00c75a <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x1ba>
1c00c754:	00ff1023          	sh	a5,0(t5) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00c758:	0585                	addi	a1,a1,1
1c00c75a:	00471793          	slli	a5,a4,0x4
1c00c75e:	8fd1                	or	a5,a5,a2
1c00c760:	fbd5f4e3          	bleu	t4,a1,1c00c708 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x168>
1c00c764:	00159713          	slli	a4,a1,0x1
1c00c768:	972a                	add	a4,a4,a0
1c00c76a:	00158613          	addi	a2,a1,1
1c00c76e:	00fc4763          	blt	s8,a5,1c00c77c <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x1dc>
1c00c772:	00f71023          	sh	a5,0(a4)
1c00c776:	85b2                	mv	a1,a2
1c00c778:	f9d678e3          	bleu	t4,a2,1c00c708 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x168>
1c00c77c:	068d                	addi	a3,a3,3
1c00c77e:	b775                	j	1c00c72a <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x18a>
1c00c780:	47b2                	lw	a5,12(sp)
1c00c782:	4ed2                	lw	t4,20(sp)
1c00c784:	0785                	addi	a5,a5,1
1c00c786:	600e8e93          	addi	t4,t4,1536
1c00c78a:	c63e                	sw	a5,12(sp)
1c00c78c:	ca76                	sw	t4,20(sp)
1c00c78e:	ed2795e3          	bne	a5,s2,1c00c658 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0xb8>
1c00c792:	670d                	lui	a4,0x3
1c00c794:	7975                	lui	s2,0xffffd
1c00c796:	04070713          	addi	a4,a4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00c79a:	970a                	add	a4,a4,sp
1c00c79c:	60090493          	addi	s1,s2,1536 # ffffd600 <pulp__FC+0xffffd601>
1c00c7a0:	94ba                	add	s1,s1,a4
1c00c7a2:	45e2                	lw	a1,24(sp)
1c00c7a4:	8526                	mv	a0,s1
1c00c7a6:	4601                	li	a2,0
1c00c7a8:	0f1000ef          	jal	ra,1c00d098 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00c7ac:	45e2                	lw	a1,24(sp)
1c00c7ae:	20048513          	addi	a0,s1,512
1c00c7b2:	4605                	li	a2,1
1c00c7b4:	0e5000ef          	jal	ra,1c00d098 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00c7b8:	45e2                	lw	a1,24(sp)
1c00c7ba:	40048513          	addi	a0,s1,1024
1c00c7be:	4609                	li	a2,2
1c00c7c0:	0d9000ef          	jal	ra,1c00d098 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00c7c4:	45e2                	lw	a1,24(sp)
1c00c7c6:	854e                	mv	a0,s3
1c00c7c8:	460d                	li	a2,3
1c00c7ca:	0f3000ef          	jal	ra,1c00d0bc <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00c7ce:	45e2                	lw	a1,24(sp)
1c00c7d0:	20098513          	addi	a0,s3,512 # ff0200 <__CTOR_LIST__-0x1b00fe04>
1c00c7d4:	4611                	li	a2,4
1c00c7d6:	0e7000ef          	jal	ra,1c00d0bc <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00c7da:	45e2                	lw	a1,24(sp)
1c00c7dc:	40098513          	addi	a0,s3,1024
1c00c7e0:	4615                	li	a2,5
1c00c7e2:	0db000ef          	jal	ra,1c00d0bc <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00c7e6:	678d                	lui	a5,0x3
1c00c7e8:	04078793          	addi	a5,a5,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00c7ec:	978a                	add	a5,a5,sp
1c00c7ee:	40090a13          	addi	s4,s2,1024
1c00c7f2:	9a3e                	add	s4,s4,a5
1c00c7f4:	45e2                	lw	a1,24(sp)
1c00c7f6:	4619                	li	a2,6
1c00c7f8:	8552                	mv	a0,s4
1c00c7fa:	0c3000ef          	jal	ra,1c00d0bc <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00c7fe:	8526                	mv	a0,s1
1c00c800:	397000ef          	jal	ra,1c00d396 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00c804:	6e8d                	lui	t4,0x3
1c00c806:	77fd                	lui	a5,0xfffff
1c00c808:	040e8e93          	addi	t4,t4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00c80c:	9e8a                	add	t4,t4,sp
1c00c80e:	e0078a93          	addi	s5,a5,-512 # ffffee00 <pulp__FC+0xffffee01>
1c00c812:	80078793          	addi	a5,a5,-2048
1c00c816:	00fe8433          	add	s0,t4,a5
1c00c81a:	9af6                	add	s5,s5,t4
1c00c81c:	85d6                	mv	a1,s5
1c00c81e:	8522                	mv	a0,s0
1c00c820:	8626                	mv	a2,s1
1c00c822:	3ad000ef          	jal	ra,1c00d3ce <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00c826:	8626                	mv	a2,s1
1c00c828:	600a8593          	addi	a1,s5,1536 # ff0600 <__CTOR_LIST__-0x1b00fa04>
1c00c82c:	20040513          	addi	a0,s0,512
1c00c830:	39f000ef          	jal	ra,1c00d3ce <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00c834:	670d                	lui	a4,0x3
1c00c836:	a4070713          	addi	a4,a4,-1472 # 2a40 <__CTOR_LIST__-0x1bffd5c4>
1c00c83a:	00e105b3          	add	a1,sp,a4
1c00c83e:	8626                	mv	a2,s1
1c00c840:	40040513          	addi	a0,s0,1024
1c00c844:	38b000ef          	jal	ra,1c00d3ce <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00c848:	6e8d                	lui	t4,0x3
1c00c84a:	77f9                	lui	a5,0xffffe
1c00c84c:	040e8e93          	addi	t4,t4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00c850:	9e8a                	add	t4,t4,sp
1c00c852:	c0078593          	addi	a1,a5,-1024 # ffffdc00 <pulp__FC+0xffffdc01>
1c00c856:	95f6                	add	a1,a1,t4
1c00c858:	8626                	mv	a2,s1
1c00c85a:	0088                	addi	a0,sp,64
1c00c85c:	373000ef          	jal	ra,1c00d3ce <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00c860:	8522                	mv	a0,s0
1c00c862:	351000ef          	jal	ra,1c00d3b2 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont>
1c00c866:	0088                	addi	a0,sp,64
1c00c868:	0a3000ef          	jal	ra,1c00d10a <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>
1c00c86c:	864e                	mv	a2,s3
1c00c86e:	85a2                	mv	a1,s0
1c00c870:	8522                	mv	a0,s0
1c00c872:	3d7000ef          	jal	ra,1c00d448 <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c00c876:	008c                	addi	a1,sp,64
1c00c878:	8652                	mv	a2,s4
1c00c87a:	852e                	mv	a0,a1
1c00c87c:	127000ef          	jal	ra,1c00d1a2 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00c880:	670d                	lui	a4,0x3
1c00c882:	04070713          	addi	a4,a4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00c886:	970a                	add	a4,a4,sp
1c00c888:	008c                	addi	a1,sp,64
1c00c88a:	20090613          	addi	a2,s2,512
1c00c88e:	963a                	add	a2,a2,a4
1c00c890:	852e                	mv	a0,a1
1c00c892:	111000ef          	jal	ra,1c00d1a2 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00c896:	8522                	mv	a0,s0
1c00c898:	395000ef          	jal	ra,1c00d42c <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c00c89c:	0088                	addi	a0,sp,64
1c00c89e:	0dd000ef          	jal	ra,1c00d17a <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00c8a2:	4572                	lw	a0,28(sp)
1c00c8a4:	85a2                	mv	a1,s0
1c00c8a6:	139000ef          	jal	ra,1c00d1de <PQCLEAN_KYBER768_CLEAN_polyvec_compress>
1c00c8aa:	47f2                	lw	a5,28(sp)
1c00c8ac:	008c                	addi	a1,sp,64
1c00c8ae:	3c078513          	addi	a0,a5,960
1c00c8b2:	2915                	jal	1c00cce6 <PQCLEAN_KYBER768_CLEAN_poly_compress>
1c00c8b4:	630d                	lui	t1,0x3
1c00c8b6:	911a                	add	sp,sp,t1
1c00c8b8:	50f6                	lw	ra,124(sp)
1c00c8ba:	5466                	lw	s0,120(sp)
1c00c8bc:	54d6                	lw	s1,116(sp)
1c00c8be:	5946                	lw	s2,112(sp)
1c00c8c0:	59b6                	lw	s3,108(sp)
1c00c8c2:	5a26                	lw	s4,104(sp)
1c00c8c4:	5a96                	lw	s5,100(sp)
1c00c8c6:	5b06                	lw	s6,96(sp)
1c00c8c8:	4bf6                	lw	s7,92(sp)
1c00c8ca:	4c66                	lw	s8,88(sp)
1c00c8cc:	4cd6                	lw	s9,84(sp)
1c00c8ce:	4d46                	lw	s10,80(sp)
1c00c8d0:	4db6                	lw	s11,76(sp)
1c00c8d2:	6109                	addi	sp,sp,128
1c00c8d4:	8082                	ret
1c00c8d6:	00469793          	slli	a5,a3,0x4
1c00c8da:	00465693          	srli	a3,a2,0x4
1c00c8de:	8edd                	or	a3,a3,a5
1c00c8e0:	8cc6                	mv	s9,a7
1c00c8e2:	e0d5d1e3          	ble	a3,a1,1c00c6e4 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x144>
1c00c8e6:	b539                	j	1c00c6f4 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x154>

1c00c8e8 <PQCLEAN_KYBER768_CLEAN_indcpa_dec>:
1c00c8e8:	737d                	lui	t1,0xfffff
1c00c8ea:	7d030313          	addi	t1,t1,2000 # fffff7d0 <pulp__FC+0xfffff7d1>
1c00c8ee:	81010113          	addi	sp,sp,-2032
1c00c8f2:	7e112623          	sw	ra,2028(sp)
1c00c8f6:	7e812423          	sw	s0,2024(sp)
1c00c8fa:	7e912223          	sw	s1,2020(sp)
1c00c8fe:	7f212023          	sw	s2,2016(sp)
1c00c902:	7d312e23          	sw	s3,2012(sp)
1c00c906:	7d412c23          	sw	s4,2008(sp)
1c00c90a:	747d                	lui	s0,0xfffff
1c00c90c:	911a                	add	sp,sp,t1
1c00c90e:	6785                	lui	a5,0x1
1c00c910:	978a                	add	a5,a5,sp
1c00c912:	40040493          	addi	s1,s0,1024 # fffff400 <pulp__FC+0xfffff401>
1c00c916:	94be                	add	s1,s1,a5
1c00c918:	892a                	mv	s2,a0
1c00c91a:	8526                	mv	a0,s1
1c00c91c:	89b2                	mv	s3,a2
1c00c91e:	8a2e                	mv	s4,a1
1c00c920:	193000ef          	jal	ra,1c00d2b2 <PQCLEAN_KYBER768_CLEAN_polyvec_decompress>
1c00c924:	3c0a0593          	addi	a1,s4,960
1c00c928:	850a                	mv	a0,sp
1c00c92a:	232d                	jal	1c00ce54 <PQCLEAN_KYBER768_CLEAN_poly_decompress>
1c00c92c:	6505                	lui	a0,0x1
1c00c92e:	a0050513          	addi	a0,a0,-1536 # a00 <__CTOR_LIST__-0x1bfff604>
1c00c932:	85ce                	mv	a1,s3
1c00c934:	950a                	add	a0,a0,sp
1c00c936:	237000ef          	jal	ra,1c00d36c <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>
1c00c93a:	8526                	mv	a0,s1
1c00c93c:	25b000ef          	jal	ra,1c00d396 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00c940:	6785                	lui	a5,0x1
1c00c942:	978a                	add	a5,a5,sp
1c00c944:	20040413          	addi	s0,s0,512
1c00c948:	6585                	lui	a1,0x1
1c00c94a:	943e                	add	s0,s0,a5
1c00c94c:	a0058593          	addi	a1,a1,-1536 # a00 <__CTOR_LIST__-0x1bfff604>
1c00c950:	8626                	mv	a2,s1
1c00c952:	958a                	add	a1,a1,sp
1c00c954:	8522                	mv	a0,s0
1c00c956:	279000ef          	jal	ra,1c00d3ce <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00c95a:	8522                	mv	a0,s0
1c00c95c:	7ae000ef          	jal	ra,1c00d10a <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>
1c00c960:	8622                	mv	a2,s0
1c00c962:	858a                	mv	a1,sp
1c00c964:	8522                	mv	a0,s0
1c00c966:	05b000ef          	jal	ra,1c00d1c0 <PQCLEAN_KYBER768_CLEAN_poly_sub>
1c00c96a:	8522                	mv	a0,s0
1c00c96c:	00f000ef          	jal	ra,1c00d17a <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00c970:	85a2                	mv	a1,s0
1c00c972:	854a                	mv	a0,s2
1c00c974:	23c5                	jal	1c00cf54 <PQCLEAN_KYBER768_CLEAN_poly_tomsg>
1c00c976:	6305                	lui	t1,0x1
1c00c978:	83030313          	addi	t1,t1,-2000 # 830 <__CTOR_LIST__-0x1bfff7d4>
1c00c97c:	911a                	add	sp,sp,t1
1c00c97e:	7ec12083          	lw	ra,2028(sp)
1c00c982:	7e812403          	lw	s0,2024(sp)
1c00c986:	7e412483          	lw	s1,2020(sp)
1c00c98a:	7e012903          	lw	s2,2016(sp)
1c00c98e:	7dc12983          	lw	s3,2012(sp)
1c00c992:	7d812a03          	lw	s4,2008(sp)
1c00c996:	7f010113          	addi	sp,sp,2032
1c00c99a:	8082                	ret

1c00c99c <PQCLEAN_KYBER768_CLEAN_crypto_kem_dec>:
1c00c99c:	b2010113          	addi	sp,sp,-1248
1c00c9a0:	4d312623          	sw	s3,1228(sp)
1c00c9a4:	89aa                	mv	s3,a0
1c00c9a6:	850a                	mv	a0,sp
1c00c9a8:	4c112e23          	sw	ra,1244(sp)
1c00c9ac:	4c812c23          	sw	s0,1240(sp)
1c00c9b0:	4c912a23          	sw	s1,1236(sp)
1c00c9b4:	4d212823          	sw	s2,1232(sp)
1c00c9b8:	4d412423          	sw	s4,1224(sp)
1c00c9bc:	84b2                	mv	s1,a2
1c00c9be:	892e                	mv	s2,a1
1c00c9c0:	6405                	lui	s0,0x1
1c00c9c2:	371d                	jal	1c00c8e8 <PQCLEAN_KYBER768_CLEAN_indcpa_dec>
1c00c9c4:	008487b3          	add	a5,s1,s0
1c00c9c8:	9207ae83          	lw	t4,-1760(a5) # 920 <__CTOR_LIST__-0x1bfff6e4>
1c00c9cc:	9247ae03          	lw	t3,-1756(a5)
1c00c9d0:	9287a303          	lw	t1,-1752(a5)
1c00c9d4:	92c7a883          	lw	a7,-1748(a5)
1c00c9d8:	9307a803          	lw	a6,-1744(a5)
1c00c9dc:	9387a703          	lw	a4,-1736(a5)
1c00c9e0:	9347a683          	lw	a3,-1740(a5)
1c00c9e4:	93c7a783          	lw	a5,-1732(a5)
1c00c9e8:	858a                	mv	a1,sp
1c00c9ea:	0088                	addi	a0,sp,64
1c00c9ec:	04000613          	li	a2,64
1c00c9f0:	d076                	sw	t4,32(sp)
1c00c9f2:	d272                	sw	t3,36(sp)
1c00c9f4:	d41a                	sw	t1,40(sp)
1c00c9f6:	d646                	sw	a7,44(sp)
1c00c9f8:	d842                	sw	a6,48(sp)
1c00c9fa:	dc3a                	sw	a4,56(sp)
1c00c9fc:	de3e                	sw	a5,60(sp)
1c00c9fe:	da36                	sw	a3,52(sp)
1c00ca00:	a4eff0ef          	jal	ra,1c00bc4e <sha3_512>
1c00ca04:	1094                	addi	a3,sp,96
1c00ca06:	48048613          	addi	a2,s1,1152
1c00ca0a:	858a                	mv	a1,sp
1c00ca0c:	0108                	addi	a0,sp,128
1c00ca0e:	3e49                	jal	1c00c5a0 <PQCLEAN_KYBER768_CLEAN_indcpa_enc>
1c00ca10:	010c                	addi	a1,sp,128
1c00ca12:	44000613          	li	a2,1088
1c00ca16:	854a                	mv	a0,s2
1c00ca18:	327000ef          	jal	ra,1c00d53e <PQCLEAN_KYBER768_CLEAN_verify>
1c00ca1c:	8a2a                	mv	s4,a0
1c00ca1e:	85ca                	mv	a1,s2
1c00ca20:	1088                	addi	a0,sp,96
1c00ca22:	44000613          	li	a2,1088
1c00ca26:	840ff0ef          	jal	ra,1c00ba66 <sha3_256>
1c00ca2a:	94040593          	addi	a1,s0,-1728 # 940 <__CTOR_LIST__-0x1bfff6c4>
1c00ca2e:	0ffa7693          	andi	a3,s4,255
1c00ca32:	95a6                	add	a1,a1,s1
1c00ca34:	0088                	addi	a0,sp,64
1c00ca36:	02000613          	li	a2,32
1c00ca3a:	3b7000ef          	jal	ra,1c00d5f0 <PQCLEAN_KYBER768_CLEAN_cmov>
1c00ca3e:	854e                	mv	a0,s3
1c00ca40:	0090                	addi	a2,sp,64
1c00ca42:	04000693          	li	a3,64
1c00ca46:	02000593          	li	a1,32
1c00ca4a:	de1fe0ef          	jal	ra,1c00b82a <shake256>
1c00ca4e:	4dc12083          	lw	ra,1244(sp)
1c00ca52:	4d812403          	lw	s0,1240(sp)
1c00ca56:	4d412483          	lw	s1,1236(sp)
1c00ca5a:	4d012903          	lw	s2,1232(sp)
1c00ca5e:	4cc12983          	lw	s3,1228(sp)
1c00ca62:	4c812a03          	lw	s4,1224(sp)
1c00ca66:	4501                	li	a0,0
1c00ca68:	4e010113          	addi	sp,sp,1248
1c00ca6c:	8082                	ret

1c00ca6e <PQCLEAN_KYBER768_CLEAN_ntt>:
1c00ca6e:	7139                	addi	sp,sp,-64
1c00ca70:	da26                	sw	s1,52(sp)
1c00ca72:	d256                	sw	s5,36(sp)
1c00ca74:	d05a                	sw	s6,32(sp)
1c00ca76:	ce5e                	sw	s7,28(sp)
1c00ca78:	cc62                	sw	s8,24(sp)
1c00ca7a:	ca66                	sw	s9,20(sp)
1c00ca7c:	de06                	sw	ra,60(sp)
1c00ca7e:	dc22                	sw	s0,56(sp)
1c00ca80:	d84a                	sw	s2,48(sp)
1c00ca82:	d64e                	sw	s3,44(sp)
1c00ca84:	d452                	sw	s4,40(sp)
1c00ca86:	c86a                	sw	s10,16(sp)
1c00ca88:	c66e                	sw	s11,12(sp)
1c00ca8a:	8b2a                	mv	s6,a0
1c00ca8c:	4c9d                	li	s9,7
1c00ca8e:	d0a00493          	li	s1,-758
1c00ca92:	4b85                	li	s7,1
1c00ca94:	08000a93          	li	s5,128
1c00ca98:	0ff00c13          	li	s8,255
1c00ca9c:	001b8993          	addi	s3,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00caa0:	1c0007b7          	lui	a5,0x1c000
1c00caa4:	4401                	li	s0,0
1c00caa6:	00199a13          	slli	s4,s3,0x1
1c00caaa:	14878793          	addi	a5,a5,328 # 1c000148 <PQCLEAN_KYBER768_CLEAN_zetas>
1c00caae:	008a8933          	add	s2,s5,s0
1c00cab2:	9a3e                	add	s4,s4,a5
1c00cab4:	8bce                	mv	s7,s3
1c00cab6:	05247c63          	bleu	s2,s0,1c00cb0e <PQCLEAN_KYBER768_CLEAN_ntt+0xa0>
1c00caba:	00191793          	slli	a5,s2,0x1
1c00cabe:	00fb0d33          	add	s10,s6,a5
1c00cac2:	0406                	slli	s0,s0,0x1
1c00cac4:	945a                	add	s0,s0,s6
1c00cac6:	8dea                	mv	s11,s10
1c00cac8:	000d1503          	lh	a0,0(s10) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00cacc:	0409                	addi	s0,s0,2
1c00cace:	02950533          	mul	a0,a0,s1
1c00cad2:	1b7000ef          	jal	ra,1c00d488 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00cad6:	ffe45703          	lhu	a4,-2(s0)
1c00cada:	0542                	slli	a0,a0,0x10
1c00cadc:	8141                	srli	a0,a0,0x10
1c00cade:	8f09                	sub	a4,a4,a0
1c00cae0:	00ed1023          	sh	a4,0(s10)
1c00cae4:	ffe45703          	lhu	a4,-2(s0)
1c00cae8:	0d09                	addi	s10,s10,2
1c00caea:	953a                	add	a0,a0,a4
1c00caec:	fea41f23          	sh	a0,-2(s0)
1c00caf0:	fc8d9ce3          	bne	s11,s0,1c00cac8 <PQCLEAN_KYBER768_CLEAN_ntt+0x5a>
1c00caf4:	01590433          	add	s0,s2,s5
1c00caf8:	008c6d63          	bltu	s8,s0,1c00cb12 <PQCLEAN_KYBER768_CLEAN_ntt+0xa4>
1c00cafc:	0985                	addi	s3,s3,1
1c00cafe:	008a8933          	add	s2,s5,s0
1c00cb02:	000a1483          	lh	s1,0(s4)
1c00cb06:	8bce                	mv	s7,s3
1c00cb08:	0a09                	addi	s4,s4,2
1c00cb0a:	fb2468e3          	bltu	s0,s2,1c00caba <PQCLEAN_KYBER768_CLEAN_ntt+0x4c>
1c00cb0e:	844a                	mv	s0,s2
1c00cb10:	b7f5                	j	1c00cafc <PQCLEAN_KYBER768_CLEAN_ntt+0x8e>
1c00cb12:	1cfd                	addi	s9,s9,-1
1c00cb14:	001ada93          	srli	s5,s5,0x1
1c00cb18:	000c8b63          	beqz	s9,1c00cb2e <PQCLEAN_KYBER768_CLEAN_ntt+0xc0>
1c00cb1c:	1c0007b7          	lui	a5,0x1c000
1c00cb20:	0986                	slli	s3,s3,0x1
1c00cb22:	14878793          	addi	a5,a5,328 # 1c000148 <PQCLEAN_KYBER768_CLEAN_zetas>
1c00cb26:	99be                	add	s3,s3,a5
1c00cb28:	00099483          	lh	s1,0(s3)
1c00cb2c:	bf85                	j	1c00ca9c <PQCLEAN_KYBER768_CLEAN_ntt+0x2e>
1c00cb2e:	50f2                	lw	ra,60(sp)
1c00cb30:	5462                	lw	s0,56(sp)
1c00cb32:	54d2                	lw	s1,52(sp)
1c00cb34:	5942                	lw	s2,48(sp)
1c00cb36:	59b2                	lw	s3,44(sp)
1c00cb38:	5a22                	lw	s4,40(sp)
1c00cb3a:	5a92                	lw	s5,36(sp)
1c00cb3c:	5b02                	lw	s6,32(sp)
1c00cb3e:	4bf2                	lw	s7,28(sp)
1c00cb40:	4c62                	lw	s8,24(sp)
1c00cb42:	4cd2                	lw	s9,20(sp)
1c00cb44:	4d42                	lw	s10,16(sp)
1c00cb46:	4db2                	lw	s11,12(sp)
1c00cb48:	6121                	addi	sp,sp,64
1c00cb4a:	8082                	ret

1c00cb4c <PQCLEAN_KYBER768_CLEAN_invntt>:
1c00cb4c:	7139                	addi	sp,sp,-64
1c00cb4e:	dc22                	sw	s0,56(sp)
1c00cb50:	da26                	sw	s1,52(sp)
1c00cb52:	d256                	sw	s5,36(sp)
1c00cb54:	d05a                	sw	s6,32(sp)
1c00cb56:	ce5e                	sw	s7,28(sp)
1c00cb58:	cc62                	sw	s8,24(sp)
1c00cb5a:	de06                	sw	ra,60(sp)
1c00cb5c:	d84a                	sw	s2,48(sp)
1c00cb5e:	d64e                	sw	s3,44(sp)
1c00cb60:	d452                	sw	s4,40(sp)
1c00cb62:	ca66                	sw	s9,20(sp)
1c00cb64:	c86a                	sw	s10,16(sp)
1c00cb66:	c66e                	sw	s11,12(sp)
1c00cb68:	842a                	mv	s0,a0
1c00cb6a:	4c1d                	li	s8,7
1c00cb6c:	65c00493          	li	s1,1628
1c00cb70:	07f00a93          	li	s5,127
1c00cb74:	4b09                	li	s6,2
1c00cb76:	0ff00b93          	li	s7,255
1c00cb7a:	800007b7          	lui	a5,0x80000
1c00cb7e:	fff7c793          	not	a5,a5
1c00cb82:	00fa8a33          	add	s4,s5,a5
1c00cb86:	1c000737          	lui	a4,0x1c000
1c00cb8a:	4781                	li	a5,0
1c00cb8c:	0a06                	slli	s4,s4,0x1
1c00cb8e:	14870713          	addi	a4,a4,328 # 1c000148 <PQCLEAN_KYBER768_CLEAN_zetas>
1c00cb92:	016789b3          	add	s3,a5,s6
1c00cb96:	9a3a                	add	s4,s4,a4
1c00cb98:	1afd                	addi	s5,s5,-1
1c00cb9a:	0737f263          	bleu	s3,a5,1c00cbfe <PQCLEAN_KYBER768_CLEAN_invntt+0xb2>
1c00cb9e:	00199d93          	slli	s11,s3,0x1
1c00cba2:	0786                	slli	a5,a5,0x1
1c00cba4:	9da2                	add	s11,s11,s0
1c00cba6:	00f40d33          	add	s10,s0,a5
1c00cbaa:	896e                	mv	s2,s11
1c00cbac:	000d5c83          	lhu	s9,0(s10)
1c00cbb0:	000dd503          	lhu	a0,0(s11)
1c00cbb4:	0d09                	addi	s10,s10,2
1c00cbb6:	9566                	add	a0,a0,s9
1c00cbb8:	0542                	slli	a0,a0,0x10
1c00cbba:	8541                	srai	a0,a0,0x10
1c00cbbc:	0ed000ef          	jal	ra,1c00d4a8 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00cbc0:	fead1f23          	sh	a0,-2(s10)
1c00cbc4:	000dd503          	lhu	a0,0(s11)
1c00cbc8:	0d89                	addi	s11,s11,2
1c00cbca:	41950533          	sub	a0,a0,s9
1c00cbce:	0542                	slli	a0,a0,0x10
1c00cbd0:	8541                	srai	a0,a0,0x10
1c00cbd2:	fead9f23          	sh	a0,-2(s11)
1c00cbd6:	02950533          	mul	a0,a0,s1
1c00cbda:	0af000ef          	jal	ra,1c00d488 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00cbde:	fead9f23          	sh	a0,-2(s11)
1c00cbe2:	fda915e3          	bne	s2,s10,1c00cbac <PQCLEAN_KYBER768_CLEAN_invntt+0x60>
1c00cbe6:	016987b3          	add	a5,s3,s6
1c00cbea:	00fbed63          	bltu	s7,a5,1c00cc04 <PQCLEAN_KYBER768_CLEAN_invntt+0xb8>
1c00cbee:	016789b3          	add	s3,a5,s6
1c00cbf2:	000a1483          	lh	s1,0(s4)
1c00cbf6:	1afd                	addi	s5,s5,-1
1c00cbf8:	1a79                	addi	s4,s4,-2
1c00cbfa:	fb37e2e3          	bltu	a5,s3,1c00cb9e <PQCLEAN_KYBER768_CLEAN_invntt+0x52>
1c00cbfe:	87ce                	mv	a5,s3
1c00cc00:	fefbf7e3          	bleu	a5,s7,1c00cbee <PQCLEAN_KYBER768_CLEAN_invntt+0xa2>
1c00cc04:	1c7d                	addi	s8,s8,-1
1c00cc06:	0b06                	slli	s6,s6,0x1
1c00cc08:	000c0c63          	beqz	s8,1c00cc20 <PQCLEAN_KYBER768_CLEAN_invntt+0xd4>
1c00cc0c:	1c000737          	lui	a4,0x1c000
1c00cc10:	001a9793          	slli	a5,s5,0x1
1c00cc14:	14870713          	addi	a4,a4,328 # 1c000148 <PQCLEAN_KYBER768_CLEAN_zetas>
1c00cc18:	97ba                	add	a5,a5,a4
1c00cc1a:	00079483          	lh	s1,0(a5) # 80000000 <pulp__FC+0x80000001>
1c00cc1e:	bfb1                	j	1c00cb7a <PQCLEAN_KYBER768_CLEAN_invntt+0x2e>
1c00cc20:	20040913          	addi	s2,s0,512
1c00cc24:	5a100493          	li	s1,1441
1c00cc28:	00041503          	lh	a0,0(s0)
1c00cc2c:	0409                	addi	s0,s0,2
1c00cc2e:	02950533          	mul	a0,a0,s1
1c00cc32:	057000ef          	jal	ra,1c00d488 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00cc36:	fea41f23          	sh	a0,-2(s0)
1c00cc3a:	fe8917e3          	bne	s2,s0,1c00cc28 <PQCLEAN_KYBER768_CLEAN_invntt+0xdc>
1c00cc3e:	50f2                	lw	ra,60(sp)
1c00cc40:	5462                	lw	s0,56(sp)
1c00cc42:	54d2                	lw	s1,52(sp)
1c00cc44:	5942                	lw	s2,48(sp)
1c00cc46:	59b2                	lw	s3,44(sp)
1c00cc48:	5a22                	lw	s4,40(sp)
1c00cc4a:	5a92                	lw	s5,36(sp)
1c00cc4c:	5b02                	lw	s6,32(sp)
1c00cc4e:	4bf2                	lw	s7,28(sp)
1c00cc50:	4c62                	lw	s8,24(sp)
1c00cc52:	4cd2                	lw	s9,20(sp)
1c00cc54:	4d42                	lw	s10,16(sp)
1c00cc56:	4db2                	lw	s11,12(sp)
1c00cc58:	6121                	addi	sp,sp,64
1c00cc5a:	8082                	ret

1c00cc5c <PQCLEAN_KYBER768_CLEAN_basemul>:
1c00cc5c:	00261783          	lh	a5,2(a2)
1c00cc60:	00259703          	lh	a4,2(a1)
1c00cc64:	1101                	addi	sp,sp,-32
1c00cc66:	cc22                	sw	s0,24(sp)
1c00cc68:	842a                	mv	s0,a0
1c00cc6a:	02f70533          	mul	a0,a4,a5
1c00cc6e:	ce06                	sw	ra,28(sp)
1c00cc70:	ca26                	sw	s1,20(sp)
1c00cc72:	c84a                	sw	s2,16(sp)
1c00cc74:	c64e                	sw	s3,12(sp)
1c00cc76:	892e                	mv	s2,a1
1c00cc78:	84b2                	mv	s1,a2
1c00cc7a:	89b6                	mv	s3,a3
1c00cc7c:	00d000ef          	jal	ra,1c00d488 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00cc80:	00a41023          	sh	a0,0(s0)
1c00cc84:	03350533          	mul	a0,a0,s3
1c00cc88:	001000ef          	jal	ra,1c00d488 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00cc8c:	00a41023          	sh	a0,0(s0)
1c00cc90:	00049783          	lh	a5,0(s1)
1c00cc94:	00091503          	lh	a0,0(s2)
1c00cc98:	02f50533          	mul	a0,a0,a5
1c00cc9c:	7ec000ef          	jal	ra,1c00d488 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00cca0:	00045783          	lhu	a5,0(s0)
1c00cca4:	953e                	add	a0,a0,a5
1c00cca6:	00a41023          	sh	a0,0(s0)
1c00ccaa:	00249783          	lh	a5,2(s1)
1c00ccae:	00091503          	lh	a0,0(s2)
1c00ccb2:	02f50533          	mul	a0,a0,a5
1c00ccb6:	7d2000ef          	jal	ra,1c00d488 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ccba:	00a41123          	sh	a0,2(s0)
1c00ccbe:	00049783          	lh	a5,0(s1)
1c00ccc2:	00291503          	lh	a0,2(s2)
1c00ccc6:	02f50533          	mul	a0,a0,a5
1c00ccca:	7be000ef          	jal	ra,1c00d488 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ccce:	00245783          	lhu	a5,2(s0)
1c00ccd2:	40f2                	lw	ra,28(sp)
1c00ccd4:	953e                	add	a0,a0,a5
1c00ccd6:	00a41123          	sh	a0,2(s0)
1c00ccda:	4462                	lw	s0,24(sp)
1c00ccdc:	44d2                	lw	s1,20(sp)
1c00ccde:	4942                	lw	s2,16(sp)
1c00cce0:	49b2                	lw	s3,12(sp)
1c00cce2:	6105                	addi	sp,sp,32
1c00cce4:	8082                	ret

1c00cce6 <PQCLEAN_KYBER768_CLEAN_poly_compress>:
1c00cce6:	1141                	addi	sp,sp,-16
1c00cce8:	6685                	lui	a3,0x1
1c00ccea:	78c1                	lui	a7,0xffff0
1c00ccec:	ff010837          	lui	a6,0xff010
1c00ccf0:	01000637          	lui	a2,0x1000
1c00ccf4:	c622                	sw	s0,12(sp)
1c00ccf6:	c426                	sw	s1,8(sp)
1c00ccf8:	c24a                	sw	s2,4(sp)
1c00ccfa:	08050313          	addi	t1,a0,128
1c00ccfe:	d0168693          	addi	a3,a3,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00cd02:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00cd06:	187d                	addi	a6,a6,-1
1c00cd08:	167d                	addi	a2,a2,-1
1c00cd0a:	00259403          	lh	s0,2(a1)
1c00cd0e:	00659f03          	lh	t5,6(a1)
1c00cd12:	00459e83          	lh	t4,4(a1)
1c00cd16:	00059903          	lh	s2,0(a1)
1c00cd1a:	00a59783          	lh	a5,10(a1)
1c00cd1e:	40f45713          	srai	a4,s0,0xf
1c00cd22:	40ff5f93          	srai	t6,t5,0xf
1c00cd26:	00859e03          	lh	t3,8(a1)
1c00cd2a:	40fed293          	srai	t0,t4,0xf
1c00cd2e:	8f75                	and	a4,a4,a3
1c00cd30:	40f95393          	srai	t2,s2,0xf
1c00cd34:	00dfffb3          	and	t6,t6,a3
1c00cd38:	00e59483          	lh	s1,14(a1)
1c00cd3c:	9722                	add	a4,a4,s0
1c00cd3e:	9ffa                	add	t6,t6,t5
1c00cd40:	00d3f3b3          	and	t2,t2,a3
1c00cd44:	40f7df13          	srai	t5,a5,0xf
1c00cd48:	00d2f2b3          	and	t0,t0,a3
1c00cd4c:	00c59403          	lh	s0,12(a1)
1c00cd50:	92f6                	add	t0,t0,t4
1c00cd52:	0742                	slli	a4,a4,0x10
1c00cd54:	40fe5e93          	srai	t4,t3,0xf
1c00cd58:	93ca                	add	t2,t2,s2
1c00cd5a:	0fc2                	slli	t6,t6,0x10
1c00cd5c:	00df7f33          	and	t5,t5,a3
1c00cd60:	9f3e                	add	t5,t5,a5
1c00cd62:	8341                	srli	a4,a4,0x10
1c00cd64:	010fdf93          	srli	t6,t6,0x10
1c00cd68:	03c2                	slli	t2,t2,0x10
1c00cd6a:	02c2                	slli	t0,t0,0x10
1c00cd6c:	00defeb3          	and	t4,t4,a3
1c00cd70:	40f4d793          	srai	a5,s1,0xf
1c00cd74:	9ef2                	add	t4,t4,t3
1c00cd76:	0712                	slli	a4,a4,0x4
1c00cd78:	0103d393          	srli	t2,t2,0x10
1c00cd7c:	0f92                	slli	t6,t6,0x4
1c00cd7e:	0102d293          	srli	t0,t0,0x10
1c00cd82:	0f42                	slli	t5,t5,0x10
1c00cd84:	8ff5                	and	a5,a5,a3
1c00cd86:	40f45e13          	srai	t3,s0,0xf
1c00cd8a:	68070713          	addi	a4,a4,1664
1c00cd8e:	0392                	slli	t2,t2,0x4
1c00cd90:	680f8f93          	addi	t6,t6,1664 # 1000680 <__CTOR_LIST__-0x1afff984>
1c00cd94:	0292                	slli	t0,t0,0x4
1c00cd96:	010f5f13          	srli	t5,t5,0x10
1c00cd9a:	0ec2                	slli	t4,t4,0x10
1c00cd9c:	97a6                	add	a5,a5,s1
1c00cd9e:	00de7e33          	and	t3,t3,a3
1c00cda2:	02d74733          	div	a4,a4,a3
1c00cda6:	68038393          	addi	t2,t2,1664
1c00cdaa:	02dfcfb3          	div	t6,t6,a3
1c00cdae:	68028293          	addi	t0,t0,1664
1c00cdb2:	0f12                	slli	t5,t5,0x4
1c00cdb4:	010ede93          	srli	t4,t4,0x10
1c00cdb8:	07c2                	slli	a5,a5,0x10
1c00cdba:	9e22                	add	t3,t3,s0
1c00cdbc:	02d3c3b3          	div	t2,t2,a3
1c00cdc0:	02d2c2b3          	div	t0,t0,a3
1c00cdc4:	680f0f13          	addi	t5,t5,1664
1c00cdc8:	0e92                	slli	t4,t4,0x4
1c00cdca:	83c1                	srli	a5,a5,0x10
1c00cdcc:	0e42                	slli	t3,t3,0x10
1c00cdce:	02df4f33          	div	t5,t5,a3
1c00cdd2:	680e8e93          	addi	t4,t4,1664
1c00cdd6:	0792                	slli	a5,a5,0x4
1c00cdd8:	010e5e13          	srli	t3,t3,0x10
1c00cddc:	8b3d                	andi	a4,a4,15
1c00cdde:	00ffff93          	andi	t6,t6,15
1c00cde2:	02deceb3          	div	t4,t4,a3
1c00cde6:	68078793          	addi	a5,a5,1664
1c00cdea:	0e12                	slli	t3,t3,0x4
1c00cdec:	0712                	slli	a4,a4,0x4
1c00cdee:	00f3f393          	andi	t2,t2,15
1c00cdf2:	0f92                	slli	t6,t6,0x4
1c00cdf4:	00f2f293          	andi	t0,t0,15
1c00cdf8:	02d7c7b3          	div	a5,a5,a3
1c00cdfc:	680e0e13          	addi	t3,t3,1664
1c00ce00:	00776733          	or	a4,a4,t2
1c00ce04:	005fe2b3          	or	t0,t6,t0
1c00ce08:	00ff7f13          	andi	t5,t5,15
1c00ce0c:	02de4e33          	div	t3,t3,a3
1c00ce10:	02a2                	slli	t0,t0,0x8
1c00ce12:	01177733          	and	a4,a4,a7
1c00ce16:	0f12                	slli	t5,t5,0x4
1c00ce18:	00fefe93          	andi	t4,t4,15
1c00ce1c:	00576733          	or	a4,a4,t0
1c00ce20:	01df6eb3          	or	t4,t5,t4
1c00ce24:	8bbd                	andi	a5,a5,15
1c00ce26:	0ec2                	slli	t4,t4,0x10
1c00ce28:	01077733          	and	a4,a4,a6
1c00ce2c:	0792                	slli	a5,a5,0x4
1c00ce2e:	00fe7e13          	andi	t3,t3,15
1c00ce32:	01d76733          	or	a4,a4,t4
1c00ce36:	01c7e7b3          	or	a5,a5,t3
1c00ce3a:	07e2                	slli	a5,a5,0x18
1c00ce3c:	8f71                	and	a4,a4,a2
1c00ce3e:	8fd9                	or	a5,a5,a4
1c00ce40:	c11c                	sw	a5,0(a0)
1c00ce42:	0511                	addi	a0,a0,4
1c00ce44:	05c1                	addi	a1,a1,16
1c00ce46:	ec6512e3          	bne	a0,t1,1c00cd0a <PQCLEAN_KYBER768_CLEAN_poly_compress+0x24>
1c00ce4a:	4432                	lw	s0,12(sp)
1c00ce4c:	44a2                	lw	s1,8(sp)
1c00ce4e:	4912                	lw	s2,4(sp)
1c00ce50:	0141                	addi	sp,sp,16
1c00ce52:	8082                	ret

1c00ce54 <PQCLEAN_KYBER768_CLEAN_poly_decompress>:
1c00ce54:	6705                	lui	a4,0x1
1c00ce56:	08058693          	addi	a3,a1,128
1c00ce5a:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00ce5e:	0005c783          	lbu	a5,0(a1)
1c00ce62:	0585                	addi	a1,a1,1
1c00ce64:	8bbd                	andi	a5,a5,15
1c00ce66:	02e787b3          	mul	a5,a5,a4
1c00ce6a:	07a1                	addi	a5,a5,8
1c00ce6c:	8791                	srai	a5,a5,0x4
1c00ce6e:	00f51023          	sh	a5,0(a0)
1c00ce72:	fff5c783          	lbu	a5,-1(a1)
1c00ce76:	0511                	addi	a0,a0,4
1c00ce78:	8391                	srli	a5,a5,0x4
1c00ce7a:	02e787b3          	mul	a5,a5,a4
1c00ce7e:	07a1                	addi	a5,a5,8
1c00ce80:	8791                	srai	a5,a5,0x4
1c00ce82:	fef51f23          	sh	a5,-2(a0)
1c00ce86:	fcd59ce3          	bne	a1,a3,1c00ce5e <PQCLEAN_KYBER768_CLEAN_poly_decompress+0xa>
1c00ce8a:	8082                	ret

1c00ce8c <PQCLEAN_KYBER768_CLEAN_poly_frombytes>:
1c00ce8c:	6685                	lui	a3,0x1
1c00ce8e:	18058613          	addi	a2,a1,384
1c00ce92:	16fd                	addi	a3,a3,-1
1c00ce94:	0015c783          	lbu	a5,1(a1)
1c00ce98:	0005c703          	lbu	a4,0(a1)
1c00ce9c:	07a2                	slli	a5,a5,0x8
1c00ce9e:	8fd9                	or	a5,a5,a4
1c00cea0:	8ff5                	and	a5,a5,a3
1c00cea2:	00f51023          	sh	a5,0(a0)
1c00cea6:	0015c703          	lbu	a4,1(a1)
1c00ceaa:	0025c783          	lbu	a5,2(a1)
1c00ceae:	8311                	srli	a4,a4,0x4
1c00ceb0:	0792                	slli	a5,a5,0x4
1c00ceb2:	8fd9                	or	a5,a5,a4
1c00ceb4:	00f51123          	sh	a5,2(a0)
1c00ceb8:	058d                	addi	a1,a1,3
1c00ceba:	0511                	addi	a0,a0,4
1c00cebc:	fcb61ce3          	bne	a2,a1,1c00ce94 <PQCLEAN_KYBER768_CLEAN_poly_frombytes+0x8>
1c00cec0:	8082                	ret

1c00cec2 <PQCLEAN_KYBER768_CLEAN_poly_frommsg>:
1c00cec2:	20050713          	addi	a4,a0,512
1c00cec6:	0005c783          	lbu	a5,0(a1)
1c00ceca:	0541                	addi	a0,a0,16
1c00cecc:	8b85                	andi	a5,a5,1
1c00cece:	40f007b3          	neg	a5,a5
1c00ced2:	6817f793          	andi	a5,a5,1665
1c00ced6:	fef51823          	sh	a5,-16(a0)
1c00ceda:	0005c783          	lbu	a5,0(a1)
1c00cede:	0585                	addi	a1,a1,1
1c00cee0:	07fa                	slli	a5,a5,0x1e
1c00cee2:	87fd                	srai	a5,a5,0x1f
1c00cee4:	6817f793          	andi	a5,a5,1665
1c00cee8:	fef51923          	sh	a5,-14(a0)
1c00ceec:	fff5c783          	lbu	a5,-1(a1)
1c00cef0:	07f6                	slli	a5,a5,0x1d
1c00cef2:	87fd                	srai	a5,a5,0x1f
1c00cef4:	6817f793          	andi	a5,a5,1665
1c00cef8:	fef51a23          	sh	a5,-12(a0)
1c00cefc:	fff5c783          	lbu	a5,-1(a1)
1c00cf00:	07f2                	slli	a5,a5,0x1c
1c00cf02:	87fd                	srai	a5,a5,0x1f
1c00cf04:	6817f793          	andi	a5,a5,1665
1c00cf08:	fef51b23          	sh	a5,-10(a0)
1c00cf0c:	fff5c783          	lbu	a5,-1(a1)
1c00cf10:	07ee                	slli	a5,a5,0x1b
1c00cf12:	87fd                	srai	a5,a5,0x1f
1c00cf14:	6817f793          	andi	a5,a5,1665
1c00cf18:	fef51c23          	sh	a5,-8(a0)
1c00cf1c:	fff5c783          	lbu	a5,-1(a1)
1c00cf20:	07ea                	slli	a5,a5,0x1a
1c00cf22:	87fd                	srai	a5,a5,0x1f
1c00cf24:	6817f793          	andi	a5,a5,1665
1c00cf28:	fef51d23          	sh	a5,-6(a0)
1c00cf2c:	fff5c783          	lbu	a5,-1(a1)
1c00cf30:	07e6                	slli	a5,a5,0x19
1c00cf32:	87fd                	srai	a5,a5,0x1f
1c00cf34:	6817f793          	andi	a5,a5,1665
1c00cf38:	fef51e23          	sh	a5,-4(a0)
1c00cf3c:	fff5c783          	lbu	a5,-1(a1)
1c00cf40:	879d                	srai	a5,a5,0x7
1c00cf42:	40f007b3          	neg	a5,a5
1c00cf46:	6817f793          	andi	a5,a5,1665
1c00cf4a:	fef51f23          	sh	a5,-2(a0)
1c00cf4e:	f6e51ce3          	bne	a0,a4,1c00cec6 <PQCLEAN_KYBER768_CLEAN_poly_frommsg+0x4>
1c00cf52:	8082                	ret

1c00cf54 <PQCLEAN_KYBER768_CLEAN_poly_tomsg>:
1c00cf54:	6685                	lui	a3,0x1
1c00cf56:	20058613          	addi	a2,a1,512
1c00cf5a:	d0168693          	addi	a3,a3,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00cf5e:	00050023          	sb	zero,0(a0)
1c00cf62:	00059783          	lh	a5,0(a1)
1c00cf66:	05c1                	addi	a1,a1,16
1c00cf68:	40f7d713          	srai	a4,a5,0xf
1c00cf6c:	8f75                	and	a4,a4,a3
1c00cf6e:	97ba                	add	a5,a5,a4
1c00cf70:	07c2                	slli	a5,a5,0x10
1c00cf72:	83c1                	srli	a5,a5,0x10
1c00cf74:	0786                	slli	a5,a5,0x1
1c00cf76:	68078793          	addi	a5,a5,1664
1c00cf7a:	02d7c7b3          	div	a5,a5,a3
1c00cf7e:	0017f813          	andi	a6,a5,1
1c00cf82:	01050023          	sb	a6,0(a0)
1c00cf86:	ff259703          	lh	a4,-14(a1)
1c00cf8a:	0505                	addi	a0,a0,1
1c00cf8c:	40f75793          	srai	a5,a4,0xf
1c00cf90:	8ff5                	and	a5,a5,a3
1c00cf92:	97ba                	add	a5,a5,a4
1c00cf94:	07c2                	slli	a5,a5,0x10
1c00cf96:	83c1                	srli	a5,a5,0x10
1c00cf98:	0786                	slli	a5,a5,0x1
1c00cf9a:	68078793          	addi	a5,a5,1664
1c00cf9e:	02d7c7b3          	div	a5,a5,a3
1c00cfa2:	8b85                	andi	a5,a5,1
1c00cfa4:	0786                	slli	a5,a5,0x1
1c00cfa6:	0107e7b3          	or	a5,a5,a6
1c00cfaa:	fef50fa3          	sb	a5,-1(a0)
1c00cfae:	ff459703          	lh	a4,-12(a1)
1c00cfb2:	40f75813          	srai	a6,a4,0xf
1c00cfb6:	00d87833          	and	a6,a6,a3
1c00cfba:	9742                	add	a4,a4,a6
1c00cfbc:	0742                	slli	a4,a4,0x10
1c00cfbe:	8341                	srli	a4,a4,0x10
1c00cfc0:	0706                	slli	a4,a4,0x1
1c00cfc2:	68070713          	addi	a4,a4,1664
1c00cfc6:	02d74733          	div	a4,a4,a3
1c00cfca:	8b05                	andi	a4,a4,1
1c00cfcc:	070a                	slli	a4,a4,0x2
1c00cfce:	8fd9                	or	a5,a5,a4
1c00cfd0:	fef50fa3          	sb	a5,-1(a0)
1c00cfd4:	ff659703          	lh	a4,-10(a1)
1c00cfd8:	40f75813          	srai	a6,a4,0xf
1c00cfdc:	00d87833          	and	a6,a6,a3
1c00cfe0:	9742                	add	a4,a4,a6
1c00cfe2:	0742                	slli	a4,a4,0x10
1c00cfe4:	8341                	srli	a4,a4,0x10
1c00cfe6:	0706                	slli	a4,a4,0x1
1c00cfe8:	68070713          	addi	a4,a4,1664
1c00cfec:	02d74733          	div	a4,a4,a3
1c00cff0:	8b05                	andi	a4,a4,1
1c00cff2:	070e                	slli	a4,a4,0x3
1c00cff4:	8fd9                	or	a5,a5,a4
1c00cff6:	fef50fa3          	sb	a5,-1(a0)
1c00cffa:	ff859703          	lh	a4,-8(a1)
1c00cffe:	40f75813          	srai	a6,a4,0xf
1c00d002:	00d87833          	and	a6,a6,a3
1c00d006:	9742                	add	a4,a4,a6
1c00d008:	0742                	slli	a4,a4,0x10
1c00d00a:	8341                	srli	a4,a4,0x10
1c00d00c:	0706                	slli	a4,a4,0x1
1c00d00e:	68070713          	addi	a4,a4,1664
1c00d012:	02d74733          	div	a4,a4,a3
1c00d016:	8b05                	andi	a4,a4,1
1c00d018:	0712                	slli	a4,a4,0x4
1c00d01a:	8fd9                	or	a5,a5,a4
1c00d01c:	fef50fa3          	sb	a5,-1(a0)
1c00d020:	ffa59703          	lh	a4,-6(a1)
1c00d024:	40f75813          	srai	a6,a4,0xf
1c00d028:	00d87833          	and	a6,a6,a3
1c00d02c:	9742                	add	a4,a4,a6
1c00d02e:	0742                	slli	a4,a4,0x10
1c00d030:	8341                	srli	a4,a4,0x10
1c00d032:	0706                	slli	a4,a4,0x1
1c00d034:	68070713          	addi	a4,a4,1664
1c00d038:	02d74733          	div	a4,a4,a3
1c00d03c:	8b05                	andi	a4,a4,1
1c00d03e:	0716                	slli	a4,a4,0x5
1c00d040:	8fd9                	or	a5,a5,a4
1c00d042:	fef50fa3          	sb	a5,-1(a0)
1c00d046:	ffc59703          	lh	a4,-4(a1)
1c00d04a:	40f75813          	srai	a6,a4,0xf
1c00d04e:	00d87833          	and	a6,a6,a3
1c00d052:	9742                	add	a4,a4,a6
1c00d054:	0742                	slli	a4,a4,0x10
1c00d056:	8341                	srli	a4,a4,0x10
1c00d058:	0706                	slli	a4,a4,0x1
1c00d05a:	68070713          	addi	a4,a4,1664
1c00d05e:	02d74733          	div	a4,a4,a3
1c00d062:	8b05                	andi	a4,a4,1
1c00d064:	071a                	slli	a4,a4,0x6
1c00d066:	8fd9                	or	a5,a5,a4
1c00d068:	fef50fa3          	sb	a5,-1(a0)
1c00d06c:	ffe59703          	lh	a4,-2(a1)
1c00d070:	40f75813          	srai	a6,a4,0xf
1c00d074:	00d87833          	and	a6,a6,a3
1c00d078:	9742                	add	a4,a4,a6
1c00d07a:	0742                	slli	a4,a4,0x10
1c00d07c:	8341                	srli	a4,a4,0x10
1c00d07e:	0706                	slli	a4,a4,0x1
1c00d080:	68070713          	addi	a4,a4,1664
1c00d084:	02d74733          	div	a4,a4,a3
1c00d088:	8b05                	andi	a4,a4,1
1c00d08a:	071e                	slli	a4,a4,0x7
1c00d08c:	8fd9                	or	a5,a5,a4
1c00d08e:	fef50fa3          	sb	a5,-1(a0)
1c00d092:	ecc596e3          	bne	a1,a2,1c00cf5e <PQCLEAN_KYBER768_CLEAN_poly_tomsg+0xa>
1c00d096:	8082                	ret

1c00d098 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c00d098:	7175                	addi	sp,sp,-144
1c00d09a:	c522                	sw	s0,136(sp)
1c00d09c:	86b2                	mv	a3,a2
1c00d09e:	842a                	mv	s0,a0
1c00d0a0:	862e                	mv	a2,a1
1c00d0a2:	850a                	mv	a0,sp
1c00d0a4:	08000593          	li	a1,128
1c00d0a8:	c706                	sw	ra,140(sp)
1c00d0aa:	29a9                	jal	1c00d504 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00d0ac:	858a                	mv	a1,sp
1c00d0ae:	8522                	mv	a0,s0
1c00d0b0:	932fe0ef          	jal	ra,1c00b1e2 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c00d0b4:	40ba                	lw	ra,140(sp)
1c00d0b6:	442a                	lw	s0,136(sp)
1c00d0b8:	6149                	addi	sp,sp,144
1c00d0ba:	8082                	ret

1c00d0bc <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>:
1c00d0bc:	7175                	addi	sp,sp,-144
1c00d0be:	c522                	sw	s0,136(sp)
1c00d0c0:	86b2                	mv	a3,a2
1c00d0c2:	842a                	mv	s0,a0
1c00d0c4:	862e                	mv	a2,a1
1c00d0c6:	850a                	mv	a0,sp
1c00d0c8:	08000593          	li	a1,128
1c00d0cc:	c706                	sw	ra,140(sp)
1c00d0ce:	291d                	jal	1c00d504 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00d0d0:	858a                	mv	a1,sp
1c00d0d2:	8522                	mv	a0,s0
1c00d0d4:	a10fe0ef          	jal	ra,1c00b2e4 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2>
1c00d0d8:	40ba                	lw	ra,140(sp)
1c00d0da:	442a                	lw	s0,136(sp)
1c00d0dc:	6149                	addi	sp,sp,144
1c00d0de:	8082                	ret

1c00d0e0 <PQCLEAN_KYBER768_CLEAN_poly_ntt>:
1c00d0e0:	1141                	addi	sp,sp,-16
1c00d0e2:	c422                	sw	s0,8(sp)
1c00d0e4:	842a                	mv	s0,a0
1c00d0e6:	c226                	sw	s1,4(sp)
1c00d0e8:	c606                	sw	ra,12(sp)
1c00d0ea:	20040493          	addi	s1,s0,512
1c00d0ee:	3241                	jal	1c00ca6e <PQCLEAN_KYBER768_CLEAN_ntt>
1c00d0f0:	00041503          	lh	a0,0(s0)
1c00d0f4:	0409                	addi	s0,s0,2
1c00d0f6:	2e4d                	jal	1c00d4a8 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00d0f8:	fea41f23          	sh	a0,-2(s0)
1c00d0fc:	fe941ae3          	bne	s0,s1,1c00d0f0 <PQCLEAN_KYBER768_CLEAN_poly_ntt+0x10>
1c00d100:	40b2                	lw	ra,12(sp)
1c00d102:	4422                	lw	s0,8(sp)
1c00d104:	4492                	lw	s1,4(sp)
1c00d106:	0141                	addi	sp,sp,16
1c00d108:	8082                	ret

1c00d10a <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>:
1c00d10a:	b489                	j	1c00cb4c <PQCLEAN_KYBER768_CLEAN_invntt>

1c00d10c <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c00d10c:	1101                	addi	sp,sp,-32
1c00d10e:	ca26                	sw	s1,20(sp)
1c00d110:	c256                	sw	s5,4(sp)
1c00d112:	1c0004b7          	lui	s1,0x1c000
1c00d116:	1c000ab7          	lui	s5,0x1c000
1c00d11a:	c84a                	sw	s2,16(sp)
1c00d11c:	c64e                	sw	s3,12(sp)
1c00d11e:	c452                	sw	s4,8(sp)
1c00d120:	ce06                	sw	ra,28(sp)
1c00d122:	cc22                	sw	s0,24(sp)
1c00d124:	1c848493          	addi	s1,s1,456 # 1c0001c8 <PQCLEAN_KYBER768_CLEAN_zetas+0x80>
1c00d128:	00450a13          	addi	s4,a0,4
1c00d12c:	00458993          	addi	s3,a1,4
1c00d130:	00460913          	addi	s2,a2,4 # 1000004 <__CTOR_LIST__-0x1b000000>
1c00d134:	248a8a93          	addi	s5,s5,584 # 1c000248 <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c00d138:	00049403          	lh	s0,0(s1)
1c00d13c:	ffc90613          	addi	a2,s2,-4
1c00d140:	ffc98593          	addi	a1,s3,-4
1c00d144:	ffca0513          	addi	a0,s4,-4
1c00d148:	86a2                	mv	a3,s0
1c00d14a:	3e09                	jal	1c00cc5c <PQCLEAN_KYBER768_CLEAN_basemul>
1c00d14c:	408006b3          	neg	a3,s0
1c00d150:	06c2                	slli	a3,a3,0x10
1c00d152:	864a                	mv	a2,s2
1c00d154:	85ce                	mv	a1,s3
1c00d156:	8552                	mv	a0,s4
1c00d158:	86c1                	srai	a3,a3,0x10
1c00d15a:	0489                	addi	s1,s1,2
1c00d15c:	3601                	jal	1c00cc5c <PQCLEAN_KYBER768_CLEAN_basemul>
1c00d15e:	0a21                	addi	s4,s4,8
1c00d160:	09a1                	addi	s3,s3,8
1c00d162:	0921                	addi	s2,s2,8
1c00d164:	fc9a9ae3          	bne	s5,s1,1c00d138 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x2c>
1c00d168:	40f2                	lw	ra,28(sp)
1c00d16a:	4462                	lw	s0,24(sp)
1c00d16c:	44d2                	lw	s1,20(sp)
1c00d16e:	4942                	lw	s2,16(sp)
1c00d170:	49b2                	lw	s3,12(sp)
1c00d172:	4a22                	lw	s4,8(sp)
1c00d174:	4a92                	lw	s5,4(sp)
1c00d176:	6105                	addi	sp,sp,32
1c00d178:	8082                	ret

1c00d17a <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c00d17a:	1141                	addi	sp,sp,-16
1c00d17c:	c422                	sw	s0,8(sp)
1c00d17e:	c226                	sw	s1,4(sp)
1c00d180:	c606                	sw	ra,12(sp)
1c00d182:	842a                	mv	s0,a0
1c00d184:	20050493          	addi	s1,a0,512
1c00d188:	00041503          	lh	a0,0(s0)
1c00d18c:	0409                	addi	s0,s0,2
1c00d18e:	2e29                	jal	1c00d4a8 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00d190:	fea41f23          	sh	a0,-2(s0)
1c00d194:	fe941ae3          	bne	s0,s1,1c00d188 <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c00d198:	40b2                	lw	ra,12(sp)
1c00d19a:	4422                	lw	s0,8(sp)
1c00d19c:	4492                	lw	s1,4(sp)
1c00d19e:	0141                	addi	sp,sp,16
1c00d1a0:	8082                	ret

1c00d1a2 <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c00d1a2:	20058693          	addi	a3,a1,512
1c00d1a6:	0005d783          	lhu	a5,0(a1)
1c00d1aa:	00065703          	lhu	a4,0(a2)
1c00d1ae:	0589                	addi	a1,a1,2
1c00d1b0:	97ba                	add	a5,a5,a4
1c00d1b2:	00f51023          	sh	a5,0(a0)
1c00d1b6:	0609                	addi	a2,a2,2
1c00d1b8:	0509                	addi	a0,a0,2
1c00d1ba:	fed596e3          	bne	a1,a3,1c00d1a6 <PQCLEAN_KYBER768_CLEAN_poly_add+0x4>
1c00d1be:	8082                	ret

1c00d1c0 <PQCLEAN_KYBER768_CLEAN_poly_sub>:
1c00d1c0:	20058693          	addi	a3,a1,512
1c00d1c4:	0005d783          	lhu	a5,0(a1)
1c00d1c8:	00065703          	lhu	a4,0(a2)
1c00d1cc:	0589                	addi	a1,a1,2
1c00d1ce:	8f99                	sub	a5,a5,a4
1c00d1d0:	00f51023          	sh	a5,0(a0)
1c00d1d4:	0609                	addi	a2,a2,2
1c00d1d6:	0509                	addi	a0,a0,2
1c00d1d8:	fed596e3          	bne	a1,a3,1c00d1c4 <PQCLEAN_KYBER768_CLEAN_poly_sub+0x4>
1c00d1dc:	8082                	ret

1c00d1de <PQCLEAN_KYBER768_CLEAN_polyvec_compress>:
1c00d1de:	6605                	lui	a2,0x1
1c00d1e0:	3c050313          	addi	t1,a0,960
1c00d1e4:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00d1e8:	14050893          	addi	a7,a0,320
1c00d1ec:	882e                	mv	a6,a1
1c00d1ee:	00081283          	lh	t0,0(a6) # ff010000 <pulp__FC+0xff010001>
1c00d1f2:	00281f83          	lh	t6,2(a6)
1c00d1f6:	00481f03          	lh	t5,4(a6)
1c00d1fa:	00681e83          	lh	t4,6(a6)
1c00d1fe:	40f2de13          	srai	t3,t0,0xf
1c00d202:	40ffd713          	srai	a4,t6,0xf
1c00d206:	40ff5793          	srai	a5,t5,0xf
1c00d20a:	40fed693          	srai	a3,t4,0xf
1c00d20e:	00ce7e33          	and	t3,t3,a2
1c00d212:	8f71                	and	a4,a4,a2
1c00d214:	8ff1                	and	a5,a5,a2
1c00d216:	8ef1                	and	a3,a3,a2
1c00d218:	9e16                	add	t3,t3,t0
1c00d21a:	977e                	add	a4,a4,t6
1c00d21c:	97fa                	add	a5,a5,t5
1c00d21e:	96f6                	add	a3,a3,t4
1c00d220:	0e42                	slli	t3,t3,0x10
1c00d222:	0742                	slli	a4,a4,0x10
1c00d224:	07c2                	slli	a5,a5,0x10
1c00d226:	06c2                	slli	a3,a3,0x10
1c00d228:	010e5e13          	srli	t3,t3,0x10
1c00d22c:	8341                	srli	a4,a4,0x10
1c00d22e:	83c1                	srli	a5,a5,0x10
1c00d230:	82c1                	srli	a3,a3,0x10
1c00d232:	0e2a                	slli	t3,t3,0xa
1c00d234:	072a                	slli	a4,a4,0xa
1c00d236:	07aa                	slli	a5,a5,0xa
1c00d238:	06aa                	slli	a3,a3,0xa
1c00d23a:	680e0e13          	addi	t3,t3,1664
1c00d23e:	68070713          	addi	a4,a4,1664
1c00d242:	68078793          	addi	a5,a5,1664
1c00d246:	68068693          	addi	a3,a3,1664
1c00d24a:	02ce5e33          	divu	t3,t3,a2
1c00d24e:	02c75733          	divu	a4,a4,a2
1c00d252:	02c7d7b3          	divu	a5,a5,a2
1c00d256:	02c6d6b3          	divu	a3,a3,a2
1c00d25a:	3ffe7e13          	andi	t3,t3,1023
1c00d25e:	3ff77713          	andi	a4,a4,1023
1c00d262:	3ff7f793          	andi	a5,a5,1023
1c00d266:	3ff6f693          	andi	a3,a3,1023
1c00d26a:	00271293          	slli	t0,a4,0x2
1c00d26e:	00479f93          	slli	t6,a5,0x4
1c00d272:	00669f13          	slli	t5,a3,0x6
1c00d276:	008e5e93          	srli	t4,t3,0x8
1c00d27a:	8319                	srli	a4,a4,0x6
1c00d27c:	8391                	srli	a5,a5,0x4
1c00d27e:	005eeeb3          	or	t4,t4,t0
1c00d282:	01f76733          	or	a4,a4,t6
1c00d286:	01e7e7b3          	or	a5,a5,t5
1c00d28a:	8289                	srli	a3,a3,0x2
1c00d28c:	01c50023          	sb	t3,0(a0)
1c00d290:	01d500a3          	sb	t4,1(a0)
1c00d294:	00e50123          	sb	a4,2(a0)
1c00d298:	00f501a3          	sb	a5,3(a0)
1c00d29c:	00d50223          	sb	a3,4(a0)
1c00d2a0:	0515                	addi	a0,a0,5
1c00d2a2:	0821                	addi	a6,a6,8
1c00d2a4:	f51515e3          	bne	a0,a7,1c00d1ee <PQCLEAN_KYBER768_CLEAN_polyvec_compress+0x10>
1c00d2a8:	20058593          	addi	a1,a1,512
1c00d2ac:	f2a31ee3          	bne	t1,a0,1c00d1e8 <PQCLEAN_KYBER768_CLEAN_polyvec_compress+0xa>
1c00d2b0:	8082                	ret

1c00d2b2 <PQCLEAN_KYBER768_CLEAN_polyvec_decompress>:
1c00d2b2:	6605                	lui	a2,0x1
1c00d2b4:	68c1                	lui	a7,0x10
1c00d2b6:	3c058e13          	addi	t3,a1,960
1c00d2ba:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00d2be:	18fd                	addi	a7,a7,-1
1c00d2c0:	14058313          	addi	t1,a1,320
1c00d2c4:	882a                	mv	a6,a0
1c00d2c6:	0015cf83          	lbu	t6,1(a1)
1c00d2ca:	0025c683          	lbu	a3,2(a1)
1c00d2ce:	0035cf03          	lbu	t5,3(a1)
1c00d2d2:	0005c383          	lbu	t2,0(a1)
1c00d2d6:	008f9713          	slli	a4,t6,0x8
1c00d2da:	0046d293          	srli	t0,a3,0x4
1c00d2de:	004f1793          	slli	a5,t5,0x4
1c00d2e2:	0045ce83          	lbu	t4,4(a1)
1c00d2e6:	00776733          	or	a4,a4,t2
1c00d2ea:	0057e7b3          	or	a5,a5,t0
1c00d2ee:	002fdf93          	srli	t6,t6,0x2
1c00d2f2:	069a                	slli	a3,a3,0x6
1c00d2f4:	3ff77713          	andi	a4,a4,1023
1c00d2f8:	3ff7f793          	andi	a5,a5,1023
1c00d2fc:	0e8a                	slli	t4,t4,0x2
1c00d2fe:	006f5f13          	srli	t5,t5,0x6
1c00d302:	01f6e6b3          	or	a3,a3,t6
1c00d306:	02c70733          	mul	a4,a4,a2
1c00d30a:	02c787b3          	mul	a5,a5,a2
1c00d30e:	01eeeeb3          	or	t4,t4,t5
1c00d312:	3ff6f693          	andi	a3,a3,1023
1c00d316:	20070713          	addi	a4,a4,512
1c00d31a:	20078793          	addi	a5,a5,512
1c00d31e:	02c686b3          	mul	a3,a3,a2
1c00d322:	02ce8eb3          	mul	t4,t4,a2
1c00d326:	8329                	srli	a4,a4,0xa
1c00d328:	83a9                	srli	a5,a5,0xa
1c00d32a:	20068693          	addi	a3,a3,512
1c00d32e:	200e8e93          	addi	t4,t4,512
1c00d332:	0742                	slli	a4,a4,0x10
1c00d334:	07c2                	slli	a5,a5,0x10
1c00d336:	8341                	srli	a4,a4,0x10
1c00d338:	82a9                	srli	a3,a3,0xa
1c00d33a:	83c1                	srli	a5,a5,0x10
1c00d33c:	00aede93          	srli	t4,t4,0xa
1c00d340:	06c2                	slli	a3,a3,0x10
1c00d342:	01177733          	and	a4,a4,a7
1c00d346:	0ec2                	slli	t4,t4,0x10
1c00d348:	0117f7b3          	and	a5,a5,a7
1c00d34c:	8f55                	or	a4,a4,a3
1c00d34e:	01d7e7b3          	or	a5,a5,t4
1c00d352:	00e82023          	sw	a4,0(a6)
1c00d356:	00f82223          	sw	a5,4(a6)
1c00d35a:	0595                	addi	a1,a1,5
1c00d35c:	0821                	addi	a6,a6,8
1c00d35e:	f66594e3          	bne	a1,t1,1c00d2c6 <PQCLEAN_KYBER768_CLEAN_polyvec_decompress+0x14>
1c00d362:	20050513          	addi	a0,a0,512
1c00d366:	f4be1de3          	bne	t3,a1,1c00d2c0 <PQCLEAN_KYBER768_CLEAN_polyvec_decompress+0xe>
1c00d36a:	8082                	ret

1c00d36c <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>:
1c00d36c:	1141                	addi	sp,sp,-16
1c00d36e:	c606                	sw	ra,12(sp)
1c00d370:	c422                	sw	s0,8(sp)
1c00d372:	c226                	sw	s1,4(sp)
1c00d374:	842a                	mv	s0,a0
1c00d376:	84ae                	mv	s1,a1
1c00d378:	3e11                	jal	1c00ce8c <PQCLEAN_KYBER768_CLEAN_poly_frombytes>
1c00d37a:	18048593          	addi	a1,s1,384
1c00d37e:	20040513          	addi	a0,s0,512
1c00d382:	3629                	jal	1c00ce8c <PQCLEAN_KYBER768_CLEAN_poly_frombytes>
1c00d384:	40040513          	addi	a0,s0,1024
1c00d388:	4422                	lw	s0,8(sp)
1c00d38a:	40b2                	lw	ra,12(sp)
1c00d38c:	30048593          	addi	a1,s1,768
1c00d390:	4492                	lw	s1,4(sp)
1c00d392:	0141                	addi	sp,sp,16
1c00d394:	bce5                	j	1c00ce8c <PQCLEAN_KYBER768_CLEAN_poly_frombytes>

1c00d396 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c00d396:	1141                	addi	sp,sp,-16
1c00d398:	c606                	sw	ra,12(sp)
1c00d39a:	c422                	sw	s0,8(sp)
1c00d39c:	842a                	mv	s0,a0
1c00d39e:	3389                	jal	1c00d0e0 <PQCLEAN_KYBER768_CLEAN_poly_ntt>
1c00d3a0:	20040513          	addi	a0,s0,512
1c00d3a4:	3b35                	jal	1c00d0e0 <PQCLEAN_KYBER768_CLEAN_poly_ntt>
1c00d3a6:	40040513          	addi	a0,s0,1024
1c00d3aa:	4422                	lw	s0,8(sp)
1c00d3ac:	40b2                	lw	ra,12(sp)
1c00d3ae:	0141                	addi	sp,sp,16
1c00d3b0:	bb05                	j	1c00d0e0 <PQCLEAN_KYBER768_CLEAN_poly_ntt>

1c00d3b2 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont>:
1c00d3b2:	1141                	addi	sp,sp,-16
1c00d3b4:	c606                	sw	ra,12(sp)
1c00d3b6:	c422                	sw	s0,8(sp)
1c00d3b8:	842a                	mv	s0,a0
1c00d3ba:	3b81                	jal	1c00d10a <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>
1c00d3bc:	20040513          	addi	a0,s0,512
1c00d3c0:	33a9                	jal	1c00d10a <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>
1c00d3c2:	40040513          	addi	a0,s0,1024
1c00d3c6:	4422                	lw	s0,8(sp)
1c00d3c8:	40b2                	lw	ra,12(sp)
1c00d3ca:	0141                	addi	sp,sp,16
1c00d3cc:	bb3d                	j	1c00d10a <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>

1c00d3ce <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c00d3ce:	df010113          	addi	sp,sp,-528
1c00d3d2:	20112623          	sw	ra,524(sp)
1c00d3d6:	20812423          	sw	s0,520(sp)
1c00d3da:	20912223          	sw	s1,516(sp)
1c00d3de:	21212023          	sw	s2,512(sp)
1c00d3e2:	842a                	mv	s0,a0
1c00d3e4:	84ae                	mv	s1,a1
1c00d3e6:	8932                	mv	s2,a2
1c00d3e8:	3315                	jal	1c00d10c <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00d3ea:	20090613          	addi	a2,s2,512
1c00d3ee:	20048593          	addi	a1,s1,512
1c00d3f2:	850a                	mv	a0,sp
1c00d3f4:	3b21                	jal	1c00d10c <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00d3f6:	860a                	mv	a2,sp
1c00d3f8:	85a2                	mv	a1,s0
1c00d3fa:	8522                	mv	a0,s0
1c00d3fc:	335d                	jal	1c00d1a2 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00d3fe:	40090613          	addi	a2,s2,1024
1c00d402:	40048593          	addi	a1,s1,1024
1c00d406:	850a                	mv	a0,sp
1c00d408:	3311                	jal	1c00d10c <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00d40a:	860a                	mv	a2,sp
1c00d40c:	85a2                	mv	a1,s0
1c00d40e:	8522                	mv	a0,s0
1c00d410:	3b49                	jal	1c00d1a2 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00d412:	8522                	mv	a0,s0
1c00d414:	339d                	jal	1c00d17a <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00d416:	20c12083          	lw	ra,524(sp)
1c00d41a:	20812403          	lw	s0,520(sp)
1c00d41e:	20412483          	lw	s1,516(sp)
1c00d422:	20012903          	lw	s2,512(sp)
1c00d426:	21010113          	addi	sp,sp,528
1c00d42a:	8082                	ret

1c00d42c <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c00d42c:	1141                	addi	sp,sp,-16
1c00d42e:	c606                	sw	ra,12(sp)
1c00d430:	c422                	sw	s0,8(sp)
1c00d432:	842a                	mv	s0,a0
1c00d434:	3399                	jal	1c00d17a <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00d436:	20040513          	addi	a0,s0,512
1c00d43a:	3381                	jal	1c00d17a <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00d43c:	40040513          	addi	a0,s0,1024
1c00d440:	4422                	lw	s0,8(sp)
1c00d442:	40b2                	lw	ra,12(sp)
1c00d444:	0141                	addi	sp,sp,16
1c00d446:	bb15                	j	1c00d17a <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c00d448 <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c00d448:	1101                	addi	sp,sp,-32
1c00d44a:	cc22                	sw	s0,24(sp)
1c00d44c:	ca26                	sw	s1,20(sp)
1c00d44e:	c84a                	sw	s2,16(sp)
1c00d450:	c64e                	sw	s3,12(sp)
1c00d452:	c452                	sw	s4,8(sp)
1c00d454:	ce06                	sw	ra,28(sp)
1c00d456:	8a2a                	mv	s4,a0
1c00d458:	89ae                	mv	s3,a1
1c00d45a:	8932                	mv	s2,a2
1c00d45c:	4401                	li	s0,0
1c00d45e:	60000493          	li	s1,1536
1c00d462:	00890633          	add	a2,s2,s0
1c00d466:	008985b3          	add	a1,s3,s0
1c00d46a:	008a0533          	add	a0,s4,s0
1c00d46e:	20040413          	addi	s0,s0,512
1c00d472:	3b05                	jal	1c00d1a2 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00d474:	fe9417e3          	bne	s0,s1,1c00d462 <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c00d478:	40f2                	lw	ra,28(sp)
1c00d47a:	4462                	lw	s0,24(sp)
1c00d47c:	44d2                	lw	s1,20(sp)
1c00d47e:	4942                	lw	s2,16(sp)
1c00d480:	49b2                	lw	s3,12(sp)
1c00d482:	4a22                	lw	s4,8(sp)
1c00d484:	6105                	addi	sp,sp,32
1c00d486:	8082                	ret

1c00d488 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>:
1c00d488:	777d                	lui	a4,0xfffff
1c00d48a:	30170793          	addi	a5,a4,769 # fffff301 <pulp__FC+0xfffff302>
1c00d48e:	02f507b3          	mul	a5,a0,a5
1c00d492:	07c2                	slli	a5,a5,0x10
1c00d494:	2ff70713          	addi	a4,a4,767
1c00d498:	87c1                	srai	a5,a5,0x10
1c00d49a:	02e787b3          	mul	a5,a5,a4
1c00d49e:	953e                	add	a0,a0,a5
1c00d4a0:	8541                	srai	a0,a0,0x10
1c00d4a2:	0542                	slli	a0,a0,0x10
1c00d4a4:	8541                	srai	a0,a0,0x10
1c00d4a6:	8082                	ret

1c00d4a8 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00d4a8:	6795                	lui	a5,0x5
1c00d4aa:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00d4ae:	02f507b3          	mul	a5,a0,a5
1c00d4b2:	02000737          	lui	a4,0x2000
1c00d4b6:	97ba                	add	a5,a5,a4
1c00d4b8:	6705                	lui	a4,0x1
1c00d4ba:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00d4be:	87e9                	srai	a5,a5,0x1a
1c00d4c0:	02e787b3          	mul	a5,a5,a4
1c00d4c4:	8d1d                	sub	a0,a0,a5
1c00d4c6:	0542                	slli	a0,a0,0x10
1c00d4c8:	8541                	srai	a0,a0,0x10
1c00d4ca:	8082                	ret

1c00d4cc <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00d4cc:	7139                	addi	sp,sp,-64
1c00d4ce:	da26                	sw	s1,52(sp)
1c00d4d0:	d84a                	sw	s2,48(sp)
1c00d4d2:	84b2                	mv	s1,a2
1c00d4d4:	892a                	mv	s2,a0
1c00d4d6:	02000613          	li	a2,32
1c00d4da:	0068                	addi	a0,sp,12
1c00d4dc:	de06                	sw	ra,60(sp)
1c00d4de:	dc22                	sw	s0,56(sp)
1c00d4e0:	8436                	mv	s0,a3
1c00d4e2:	2e3d                	jal	1c00d820 <memcpy>
1c00d4e4:	006c                	addi	a1,sp,12
1c00d4e6:	854a                	mv	a0,s2
1c00d4e8:	02200613          	li	a2,34
1c00d4ec:	02910623          	sb	s1,44(sp)
1c00d4f0:	028106a3          	sb	s0,45(sp)
1c00d4f4:	89afe0ef          	jal	ra,1c00b58e <shake128_absorb>
1c00d4f8:	50f2                	lw	ra,60(sp)
1c00d4fa:	5462                	lw	s0,56(sp)
1c00d4fc:	54d2                	lw	s1,52(sp)
1c00d4fe:	5942                	lw	s2,48(sp)
1c00d500:	6121                	addi	sp,sp,64
1c00d502:	8082                	ret

1c00d504 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00d504:	7139                	addi	sp,sp,-64
1c00d506:	87b2                	mv	a5,a2
1c00d508:	da26                	sw	s1,52(sp)
1c00d50a:	d84a                	sw	s2,48(sp)
1c00d50c:	84aa                	mv	s1,a0
1c00d50e:	892e                	mv	s2,a1
1c00d510:	02000613          	li	a2,32
1c00d514:	85be                	mv	a1,a5
1c00d516:	0068                	addi	a0,sp,12
1c00d518:	de06                	sw	ra,60(sp)
1c00d51a:	dc22                	sw	s0,56(sp)
1c00d51c:	8436                	mv	s0,a3
1c00d51e:	2609                	jal	1c00d820 <memcpy>
1c00d520:	0070                	addi	a2,sp,12
1c00d522:	85ca                	mv	a1,s2
1c00d524:	8526                	mv	a0,s1
1c00d526:	02100693          	li	a3,33
1c00d52a:	02810623          	sb	s0,44(sp)
1c00d52e:	afcfe0ef          	jal	ra,1c00b82a <shake256>
1c00d532:	50f2                	lw	ra,60(sp)
1c00d534:	5462                	lw	s0,56(sp)
1c00d536:	54d2                	lw	s1,52(sp)
1c00d538:	5942                	lw	s2,48(sp)
1c00d53a:	6121                	addi	sp,sp,64
1c00d53c:	8082                	ret

1c00d53e <PQCLEAN_KYBER768_CLEAN_verify>:
1c00d53e:	c645                	beqz	a2,1c00d5e6 <PQCLEAN_KYBER768_CLEAN_verify+0xa8>
1c00d540:	fff60793          	addi	a5,a2,-1
1c00d544:	4709                	li	a4,2
1c00d546:	0af77263          	bleu	a5,a4,1c00d5ea <PQCLEAN_KYBER768_CLEAN_verify+0xac>
1c00d54a:	00265e13          	srli	t3,a2,0x2
1c00d54e:	882e                	mv	a6,a1
1c00d550:	86aa                	mv	a3,a0
1c00d552:	4701                	li	a4,0
1c00d554:	4881                	li	a7,0
1c00d556:	429c                	lw	a5,0(a3)
1c00d558:	00082303          	lw	t1,0(a6)
1c00d55c:	0705                	addi	a4,a4,1
1c00d55e:	0067c7b3          	xor	a5,a5,t1
1c00d562:	0117e8b3          	or	a7,a5,a7
1c00d566:	0811                	addi	a6,a6,4
1c00d568:	0691                	addi	a3,a3,4
1c00d56a:	ffc766e3          	bltu	a4,t3,1c00d556 <PQCLEAN_KYBER768_CLEAN_verify+0x18>
1c00d56e:	0088d793          	srli	a5,a7,0x8
1c00d572:	0117e7b3          	or	a5,a5,a7
1c00d576:	0108d713          	srli	a4,a7,0x10
1c00d57a:	8fd9                	or	a5,a5,a4
1c00d57c:	0188d893          	srli	a7,a7,0x18
1c00d580:	0117e8b3          	or	a7,a5,a7
1c00d584:	ffc67793          	andi	a5,a2,-4
1c00d588:	0ff8f893          	andi	a7,a7,255
1c00d58c:	04f60a63          	beq	a2,a5,1c00d5e0 <PQCLEAN_KYBER768_CLEAN_verify+0xa2>
1c00d590:	00f58733          	add	a4,a1,a5
1c00d594:	00f506b3          	add	a3,a0,a5
1c00d598:	00074803          	lbu	a6,0(a4)
1c00d59c:	0006c683          	lbu	a3,0(a3)
1c00d5a0:	00178713          	addi	a4,a5,1
1c00d5a4:	0106c6b3          	xor	a3,a3,a6
1c00d5a8:	00d8e8b3          	or	a7,a7,a3
1c00d5ac:	02c77a63          	bleu	a2,a4,1c00d5e0 <PQCLEAN_KYBER768_CLEAN_verify+0xa2>
1c00d5b0:	00e506b3          	add	a3,a0,a4
1c00d5b4:	972e                	add	a4,a4,a1
1c00d5b6:	0006c683          	lbu	a3,0(a3)
1c00d5ba:	00074703          	lbu	a4,0(a4)
1c00d5be:	0789                	addi	a5,a5,2
1c00d5c0:	8f35                	xor	a4,a4,a3
1c00d5c2:	00e8e8b3          	or	a7,a7,a4
1c00d5c6:	0ff8f893          	andi	a7,a7,255
1c00d5ca:	00c7fb63          	bleu	a2,a5,1c00d5e0 <PQCLEAN_KYBER768_CLEAN_verify+0xa2>
1c00d5ce:	95be                	add	a1,a1,a5
1c00d5d0:	97aa                	add	a5,a5,a0
1c00d5d2:	0005c703          	lbu	a4,0(a1)
1c00d5d6:	0007c783          	lbu	a5,0(a5)
1c00d5da:	8fb9                	xor	a5,a5,a4
1c00d5dc:	00f8e8b3          	or	a7,a7,a5
1c00d5e0:	01103533          	snez	a0,a7
1c00d5e4:	8082                	ret
1c00d5e6:	4501                	li	a0,0
1c00d5e8:	8082                	ret
1c00d5ea:	4881                	li	a7,0
1c00d5ec:	4781                	li	a5,0
1c00d5ee:	b74d                	j	1c00d590 <PQCLEAN_KYBER768_CLEAN_verify+0x52>

1c00d5f0 <PQCLEAN_KYBER768_CLEAN_cmov>:
1c00d5f0:	40d00833          	neg	a6,a3
1c00d5f4:	0ff87813          	andi	a6,a6,255
1c00d5f8:	1c060463          	beqz	a2,1c00d7c0 <PQCLEAN_KYBER768_CLEAN_cmov+0x1d0>
1c00d5fc:	00458793          	addi	a5,a1,4
1c00d600:	00450693          	addi	a3,a0,4
1c00d604:	00f537b3          	sltu	a5,a0,a5
1c00d608:	00d5b6b3          	sltu	a3,a1,a3
1c00d60c:	0017c793          	xori	a5,a5,1
1c00d610:	0016c693          	xori	a3,a3,1
1c00d614:	873e                	mv	a4,a5
1c00d616:	87b6                	mv	a5,a3
1c00d618:	8fd9                	or	a5,a5,a4
1c00d61a:	0ff7f793          	andi	a5,a5,255
1c00d61e:	1a078263          	beqz	a5,1c00d7c2 <PQCLEAN_KYBER768_CLEAN_cmov+0x1d2>
1c00d622:	00663793          	sltiu	a5,a2,6
1c00d626:	0017c793          	xori	a5,a5,1
1c00d62a:	0ff7f793          	andi	a5,a5,255
1c00d62e:	18078a63          	beqz	a5,1c00d7c2 <PQCLEAN_KYBER768_CLEAN_cmov+0x1d2>
1c00d632:	40a00733          	neg	a4,a0
1c00d636:	8b0d                	andi	a4,a4,3
1c00d638:	fff60793          	addi	a5,a2,-1
1c00d63c:	00370693          	addi	a3,a4,3
1c00d640:	1ad7e163          	bltu	a5,a3,1c00d7e2 <PQCLEAN_KYBER768_CLEAN_cmov+0x1f2>
1c00d644:	4e81                	li	t4,0
1c00d646:	c739                	beqz	a4,1c00d694 <PQCLEAN_KYBER768_CLEAN_cmov+0xa4>
1c00d648:	00054683          	lbu	a3,0(a0)
1c00d64c:	0005c783          	lbu	a5,0(a1)
1c00d650:	4e85                	li	t4,1
1c00d652:	8fb5                	xor	a5,a5,a3
1c00d654:	00f877b3          	and	a5,a6,a5
1c00d658:	8fb5                	xor	a5,a5,a3
1c00d65a:	00f50023          	sb	a5,0(a0)
1c00d65e:	03d70b63          	beq	a4,t4,1c00d694 <PQCLEAN_KYBER768_CLEAN_cmov+0xa4>
1c00d662:	00154683          	lbu	a3,1(a0)
1c00d666:	0015c783          	lbu	a5,1(a1)
1c00d66a:	488d                	li	a7,3
1c00d66c:	8fb5                	xor	a5,a5,a3
1c00d66e:	00f877b3          	and	a5,a6,a5
1c00d672:	8fb5                	xor	a5,a5,a3
1c00d674:	00f500a3          	sb	a5,1(a0)
1c00d678:	4e89                	li	t4,2
1c00d67a:	01171d63          	bne	a4,a7,1c00d694 <PQCLEAN_KYBER768_CLEAN_cmov+0xa4>
1c00d67e:	00254683          	lbu	a3,2(a0)
1c00d682:	0025c783          	lbu	a5,2(a1)
1c00d686:	4e8d                	li	t4,3
1c00d688:	8fb5                	xor	a5,a5,a3
1c00d68a:	00f877b3          	and	a5,a6,a5
1c00d68e:	8fb5                	xor	a5,a5,a3
1c00d690:	00f50123          	sb	a5,2(a0)
1c00d694:	00881693          	slli	a3,a6,0x8
1c00d698:	00d866b3          	or	a3,a6,a3
1c00d69c:	01081793          	slli	a5,a6,0x10
1c00d6a0:	40e602b3          	sub	t0,a2,a4
1c00d6a4:	8fd5                	or	a5,a5,a3
1c00d6a6:	01881f13          	slli	t5,a6,0x18
1c00d6aa:	00e506b3          	add	a3,a0,a4
1c00d6ae:	0022df93          	srli	t6,t0,0x2
1c00d6b2:	01e7ef33          	or	t5,a5,t5
1c00d6b6:	972e                	add	a4,a4,a1
1c00d6b8:	8336                	mv	t1,a3
1c00d6ba:	4881                	li	a7,0
1c00d6bc:	0006ae03          	lw	t3,0(a3)
1c00d6c0:	431c                	lw	a5,0(a4)
1c00d6c2:	0885                	addi	a7,a7,1
1c00d6c4:	00fe47b3          	xor	a5,t3,a5
1c00d6c8:	01e7f7b3          	and	a5,a5,t5
1c00d6cc:	01c7c7b3          	xor	a5,a5,t3
1c00d6d0:	00f32023          	sw	a5,0(t1)
1c00d6d4:	0691                	addi	a3,a3,4
1c00d6d6:	0711                	addi	a4,a4,4
1c00d6d8:	0311                	addi	t1,t1,4
1c00d6da:	fff8e1e3          	bltu	a7,t6,1c00d6bc <PQCLEAN_KYBER768_CLEAN_cmov+0xcc>
1c00d6de:	ffc2f793          	andi	a5,t0,-4
1c00d6e2:	9ebe                	add	t4,t4,a5
1c00d6e4:	0cf28e63          	beq	t0,a5,1c00d7c0 <PQCLEAN_KYBER768_CLEAN_cmov+0x1d0>
1c00d6e8:	01d508b3          	add	a7,a0,t4
1c00d6ec:	01d587b3          	add	a5,a1,t4
1c00d6f0:	0008c683          	lbu	a3,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00d6f4:	0007c703          	lbu	a4,0(a5)
1c00d6f8:	001e8793          	addi	a5,t4,1
1c00d6fc:	8f35                	xor	a4,a4,a3
1c00d6fe:	00e87733          	and	a4,a6,a4
1c00d702:	8f35                	xor	a4,a4,a3
1c00d704:	00e88023          	sb	a4,0(a7)
1c00d708:	0ac7fc63          	bleu	a2,a5,1c00d7c0 <PQCLEAN_KYBER768_CLEAN_cmov+0x1d0>
1c00d70c:	00f508b3          	add	a7,a0,a5
1c00d710:	00f58733          	add	a4,a1,a5
1c00d714:	0008c303          	lbu	t1,0(a7)
1c00d718:	00074703          	lbu	a4,0(a4)
1c00d71c:	00178693          	addi	a3,a5,1
1c00d720:	00e34733          	xor	a4,t1,a4
1c00d724:	00e87733          	and	a4,a6,a4
1c00d728:	00e34733          	xor	a4,t1,a4
1c00d72c:	00e88023          	sb	a4,0(a7)
1c00d730:	08c6f863          	bleu	a2,a3,1c00d7c0 <PQCLEAN_KYBER768_CLEAN_cmov+0x1d0>
1c00d734:	00d50333          	add	t1,a0,a3
1c00d738:	96ae                	add	a3,a3,a1
1c00d73a:	00034883          	lbu	a7,0(t1)
1c00d73e:	0006c703          	lbu	a4,0(a3)
1c00d742:	00278693          	addi	a3,a5,2
1c00d746:	00e8c733          	xor	a4,a7,a4
1c00d74a:	00e87733          	and	a4,a6,a4
1c00d74e:	00e8c733          	xor	a4,a7,a4
1c00d752:	00e30023          	sb	a4,0(t1)
1c00d756:	06c6f563          	bleu	a2,a3,1c00d7c0 <PQCLEAN_KYBER768_CLEAN_cmov+0x1d0>
1c00d75a:	00d50333          	add	t1,a0,a3
1c00d75e:	96ae                	add	a3,a3,a1
1c00d760:	00034883          	lbu	a7,0(t1)
1c00d764:	0006c703          	lbu	a4,0(a3)
1c00d768:	00378693          	addi	a3,a5,3
1c00d76c:	00e8c733          	xor	a4,a7,a4
1c00d770:	00e87733          	and	a4,a6,a4
1c00d774:	00e8c733          	xor	a4,a7,a4
1c00d778:	00e30023          	sb	a4,0(t1)
1c00d77c:	04c6f263          	bleu	a2,a3,1c00d7c0 <PQCLEAN_KYBER768_CLEAN_cmov+0x1d0>
1c00d780:	00d50333          	add	t1,a0,a3
1c00d784:	96ae                	add	a3,a3,a1
1c00d786:	00034883          	lbu	a7,0(t1)
1c00d78a:	0006c703          	lbu	a4,0(a3)
1c00d78e:	0791                	addi	a5,a5,4
1c00d790:	00e8c733          	xor	a4,a7,a4
1c00d794:	00e87733          	and	a4,a6,a4
1c00d798:	00e8c733          	xor	a4,a7,a4
1c00d79c:	00e30023          	sb	a4,0(t1)
1c00d7a0:	02c7f063          	bleu	a2,a5,1c00d7c0 <PQCLEAN_KYBER768_CLEAN_cmov+0x1d0>
1c00d7a4:	953e                	add	a0,a0,a5
1c00d7a6:	97ae                	add	a5,a5,a1
1c00d7a8:	00054703          	lbu	a4,0(a0)
1c00d7ac:	0007c783          	lbu	a5,0(a5)
1c00d7b0:	8fb9                	xor	a5,a5,a4
1c00d7b2:	00f87833          	and	a6,a6,a5
1c00d7b6:	01074833          	xor	a6,a4,a6
1c00d7ba:	01050023          	sb	a6,0(a0)
1c00d7be:	8082                	ret
1c00d7c0:	8082                	ret
1c00d7c2:	962a                	add	a2,a2,a0
1c00d7c4:	00054703          	lbu	a4,0(a0)
1c00d7c8:	0005c783          	lbu	a5,0(a1)
1c00d7cc:	0505                	addi	a0,a0,1
1c00d7ce:	8fb9                	xor	a5,a5,a4
1c00d7d0:	00f877b3          	and	a5,a6,a5
1c00d7d4:	8fb9                	xor	a5,a5,a4
1c00d7d6:	fef50fa3          	sb	a5,-1(a0)
1c00d7da:	0585                	addi	a1,a1,1
1c00d7dc:	fec514e3          	bne	a0,a2,1c00d7c4 <PQCLEAN_KYBER768_CLEAN_cmov+0x1d4>
1c00d7e0:	8082                	ret
1c00d7e2:	00054683          	lbu	a3,0(a0)
1c00d7e6:	0005c703          	lbu	a4,0(a1)
1c00d7ea:	4785                	li	a5,1
1c00d7ec:	8f35                	xor	a4,a4,a3
1c00d7ee:	00e87733          	and	a4,a6,a4
1c00d7f2:	8f35                	xor	a4,a4,a3
1c00d7f4:	00e50023          	sb	a4,0(a0)
1c00d7f8:	bf11                	j	1c00d70c <PQCLEAN_KYBER768_CLEAN_cmov+0x11c>

1c00d7fa <pos_wait_forever>:
1c00d7fa:	f14027f3          	csrr	a5,mhartid
1c00d7fe:	8795                	srai	a5,a5,0x5
1c00d800:	03f7f793          	andi	a5,a5,63
1c00d804:	477d                	li	a4,31
1c00d806:	00e78363          	beq	a5,a4,1c00d80c <pos_wait_forever+0x12>
1c00d80a:	a001                	j	1c00d80a <pos_wait_forever+0x10>
1c00d80c:	1a10a7b7          	lui	a5,0x1a10a
1c00d810:	577d                	li	a4,-1
1c00d812:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00d816:	10500073          	wfi
1c00d81a:	10500073          	wfi
1c00d81e:	bfe5                	j	1c00d816 <pos_wait_forever+0x1c>

1c00d820 <memcpy>:
1c00d820:	00b567b3          	or	a5,a0,a1
1c00d824:	8b8d                	andi	a5,a5,3
1c00d826:	10078f63          	beqz	a5,1c00d944 <memcpy+0x124>
1c00d82a:	14060063          	beqz	a2,1c00d96a <memcpy+0x14a>
1c00d82e:	00458793          	addi	a5,a1,4
1c00d832:	00450693          	addi	a3,a0,4
1c00d836:	00f537b3          	sltu	a5,a0,a5
1c00d83a:	00d5b6b3          	sltu	a3,a1,a3
1c00d83e:	0017c793          	xori	a5,a5,1
1c00d842:	0016c693          	xori	a3,a3,1
1c00d846:	873e                	mv	a4,a5
1c00d848:	87b6                	mv	a5,a3
1c00d84a:	8fd9                	or	a5,a5,a4
1c00d84c:	0ff7f793          	andi	a5,a5,255
1c00d850:	cff9                	beqz	a5,1c00d92e <memcpy+0x10e>
1c00d852:	00863793          	sltiu	a5,a2,8
1c00d856:	0017c793          	xori	a5,a5,1
1c00d85a:	0ff7f793          	andi	a5,a5,255
1c00d85e:	cbe1                	beqz	a5,1c00d92e <memcpy+0x10e>
1c00d860:	40b007b3          	neg	a5,a1
1c00d864:	8b8d                	andi	a5,a5,3
1c00d866:	fff60313          	addi	t1,a2,-1
1c00d86a:	cfe5                	beqz	a5,1c00d962 <memcpy+0x142>
1c00d86c:	0005c683          	lbu	a3,0(a1)
1c00d870:	4705                	li	a4,1
1c00d872:	00d50023          	sb	a3,0(a0)
1c00d876:	00158893          	addi	a7,a1,1
1c00d87a:	00150813          	addi	a6,a0,1
1c00d87e:	02e78963          	beq	a5,a4,1c00d8b0 <memcpy+0x90>
1c00d882:	0015c683          	lbu	a3,1(a1)
1c00d886:	470d                	li	a4,3
1c00d888:	00d500a3          	sb	a3,1(a0)
1c00d88c:	00258893          	addi	a7,a1,2
1c00d890:	00250813          	addi	a6,a0,2
1c00d894:	ffe60313          	addi	t1,a2,-2
1c00d898:	00e79c63          	bne	a5,a4,1c00d8b0 <memcpy+0x90>
1c00d89c:	0025c703          	lbu	a4,2(a1)
1c00d8a0:	00358893          	addi	a7,a1,3
1c00d8a4:	00350813          	addi	a6,a0,3
1c00d8a8:	00e50123          	sb	a4,2(a0)
1c00d8ac:	ffd60313          	addi	t1,a2,-3
1c00d8b0:	8e1d                	sub	a2,a2,a5
1c00d8b2:	95be                	add	a1,a1,a5
1c00d8b4:	00265e13          	srli	t3,a2,0x2
1c00d8b8:	97aa                	add	a5,a5,a0
1c00d8ba:	4701                	li	a4,0
1c00d8bc:	4194                	lw	a3,0(a1)
1c00d8be:	0705                	addi	a4,a4,1
1c00d8c0:	c394                	sw	a3,0(a5)
1c00d8c2:	0591                	addi	a1,a1,4
1c00d8c4:	0791                	addi	a5,a5,4
1c00d8c6:	ffc76be3          	bltu	a4,t3,1c00d8bc <memcpy+0x9c>
1c00d8ca:	ffc67593          	andi	a1,a2,-4
1c00d8ce:	40b306b3          	sub	a3,t1,a1
1c00d8d2:	00b807b3          	add	a5,a6,a1
1c00d8d6:	00b88733          	add	a4,a7,a1
1c00d8da:	06b60463          	beq	a2,a1,1c00d942 <memcpy+0x122>
1c00d8de:	00074583          	lbu	a1,0(a4)
1c00d8e2:	fff68613          	addi	a2,a3,-1
1c00d8e6:	00b78023          	sb	a1,0(a5)
1c00d8ea:	ce21                	beqz	a2,1c00d942 <memcpy+0x122>
1c00d8ec:	00174583          	lbu	a1,1(a4)
1c00d8f0:	ffe68613          	addi	a2,a3,-2
1c00d8f4:	00b780a3          	sb	a1,1(a5)
1c00d8f8:	c629                	beqz	a2,1c00d942 <memcpy+0x122>
1c00d8fa:	00274583          	lbu	a1,2(a4)
1c00d8fe:	ffd68613          	addi	a2,a3,-3
1c00d902:	00b78123          	sb	a1,2(a5)
1c00d906:	ce15                	beqz	a2,1c00d942 <memcpy+0x122>
1c00d908:	00374583          	lbu	a1,3(a4)
1c00d90c:	ffc68613          	addi	a2,a3,-4
1c00d910:	00b781a3          	sb	a1,3(a5)
1c00d914:	c61d                	beqz	a2,1c00d942 <memcpy+0x122>
1c00d916:	00474583          	lbu	a1,4(a4)
1c00d91a:	4615                	li	a2,5
1c00d91c:	00b78223          	sb	a1,4(a5)
1c00d920:	02c68163          	beq	a3,a2,1c00d942 <memcpy+0x122>
1c00d924:	00574703          	lbu	a4,5(a4)
1c00d928:	00e782a3          	sb	a4,5(a5)
1c00d92c:	8082                	ret
1c00d92e:	962e                	add	a2,a2,a1
1c00d930:	87aa                	mv	a5,a0
1c00d932:	0585                	addi	a1,a1,1
1c00d934:	fff5c703          	lbu	a4,-1(a1)
1c00d938:	0785                	addi	a5,a5,1
1c00d93a:	fee78fa3          	sb	a4,-1(a5)
1c00d93e:	fec59ae3          	bne	a1,a2,1c00d932 <memcpy+0x112>
1c00d942:	8082                	ret
1c00d944:	00367793          	andi	a5,a2,3
1c00d948:	ee0793e3          	bnez	a5,1c00d82e <memcpy+0xe>
1c00d94c:	da7d                	beqz	a2,1c00d942 <memcpy+0x122>
1c00d94e:	87aa                	mv	a5,a0
1c00d950:	0591                	addi	a1,a1,4
1c00d952:	ffc5a703          	lw	a4,-4(a1)
1c00d956:	0791                	addi	a5,a5,4
1c00d958:	fee7ae23          	sw	a4,-4(a5)
1c00d95c:	1671                	addi	a2,a2,-4
1c00d95e:	fa6d                	bnez	a2,1c00d950 <memcpy+0x130>
1c00d960:	8082                	ret
1c00d962:	88ae                	mv	a7,a1
1c00d964:	882a                	mv	a6,a0
1c00d966:	8332                	mv	t1,a2
1c00d968:	b7a1                	j	1c00d8b0 <memcpy+0x90>
1c00d96a:	8082                	ret

1c00d96c <memmove>:
1c00d96c:	40b507b3          	sub	a5,a0,a1
1c00d970:	10c7e463          	bltu	a5,a2,1c00da78 <memmove+0x10c>
1c00d974:	12060b63          	beqz	a2,1c00daaa <memmove+0x13e>
1c00d978:	00458793          	addi	a5,a1,4
1c00d97c:	00450693          	addi	a3,a0,4
1c00d980:	00f537b3          	sltu	a5,a0,a5
1c00d984:	00d5b6b3          	sltu	a3,a1,a3
1c00d988:	0017c793          	xori	a5,a5,1
1c00d98c:	0016c693          	xori	a3,a3,1
1c00d990:	873e                	mv	a4,a5
1c00d992:	87b6                	mv	a5,a3
1c00d994:	8fd9                	or	a5,a5,a4
1c00d996:	0ff7f793          	andi	a5,a5,255
1c00d99a:	cfed                	beqz	a5,1c00da94 <memmove+0x128>
1c00d99c:	00863793          	sltiu	a5,a2,8
1c00d9a0:	0017c793          	xori	a5,a5,1
1c00d9a4:	0ff7f793          	andi	a5,a5,255
1c00d9a8:	c7f5                	beqz	a5,1c00da94 <memmove+0x128>
1c00d9aa:	40b007b3          	neg	a5,a1
1c00d9ae:	8b8d                	andi	a5,a5,3
1c00d9b0:	fff60313          	addi	t1,a2,-1
1c00d9b4:	cfe5                	beqz	a5,1c00daac <memmove+0x140>
1c00d9b6:	0005c683          	lbu	a3,0(a1)
1c00d9ba:	4705                	li	a4,1
1c00d9bc:	00d50023          	sb	a3,0(a0)
1c00d9c0:	00150813          	addi	a6,a0,1
1c00d9c4:	00158893          	addi	a7,a1,1
1c00d9c8:	02e78963          	beq	a5,a4,1c00d9fa <memmove+0x8e>
1c00d9cc:	0015c683          	lbu	a3,1(a1)
1c00d9d0:	470d                	li	a4,3
1c00d9d2:	00d500a3          	sb	a3,1(a0)
1c00d9d6:	00250813          	addi	a6,a0,2
1c00d9da:	00258893          	addi	a7,a1,2
1c00d9de:	ffe60313          	addi	t1,a2,-2
1c00d9e2:	00e79c63          	bne	a5,a4,1c00d9fa <memmove+0x8e>
1c00d9e6:	0025c703          	lbu	a4,2(a1)
1c00d9ea:	00350813          	addi	a6,a0,3
1c00d9ee:	00e50123          	sb	a4,2(a0)
1c00d9f2:	00358893          	addi	a7,a1,3
1c00d9f6:	ffd60313          	addi	t1,a2,-3
1c00d9fa:	8e1d                	sub	a2,a2,a5
1c00d9fc:	95be                	add	a1,a1,a5
1c00d9fe:	00265e13          	srli	t3,a2,0x2
1c00da02:	97aa                	add	a5,a5,a0
1c00da04:	4701                	li	a4,0
1c00da06:	4194                	lw	a3,0(a1)
1c00da08:	0705                	addi	a4,a4,1
1c00da0a:	c394                	sw	a3,0(a5)
1c00da0c:	0591                	addi	a1,a1,4
1c00da0e:	0791                	addi	a5,a5,4
1c00da10:	ffc76be3          	bltu	a4,t3,1c00da06 <memmove+0x9a>
1c00da14:	ffc67593          	andi	a1,a2,-4
1c00da18:	40b306b3          	sub	a3,t1,a1
1c00da1c:	00b807b3          	add	a5,a6,a1
1c00da20:	00b88733          	add	a4,a7,a1
1c00da24:	08b60263          	beq	a2,a1,1c00daa8 <memmove+0x13c>
1c00da28:	00074583          	lbu	a1,0(a4)
1c00da2c:	fff68613          	addi	a2,a3,-1
1c00da30:	00b78023          	sb	a1,0(a5)
1c00da34:	ca35                	beqz	a2,1c00daa8 <memmove+0x13c>
1c00da36:	00174583          	lbu	a1,1(a4)
1c00da3a:	ffe68613          	addi	a2,a3,-2
1c00da3e:	00b780a3          	sb	a1,1(a5)
1c00da42:	c23d                	beqz	a2,1c00daa8 <memmove+0x13c>
1c00da44:	00274583          	lbu	a1,2(a4)
1c00da48:	ffd68613          	addi	a2,a3,-3
1c00da4c:	00b78123          	sb	a1,2(a5)
1c00da50:	ce21                	beqz	a2,1c00daa8 <memmove+0x13c>
1c00da52:	00374583          	lbu	a1,3(a4)
1c00da56:	ffc68613          	addi	a2,a3,-4
1c00da5a:	00b781a3          	sb	a1,3(a5)
1c00da5e:	c629                	beqz	a2,1c00daa8 <memmove+0x13c>
1c00da60:	00474583          	lbu	a1,4(a4)
1c00da64:	4615                	li	a2,5
1c00da66:	00b78223          	sb	a1,4(a5)
1c00da6a:	02c68f63          	beq	a3,a2,1c00daa8 <memmove+0x13c>
1c00da6e:	00574703          	lbu	a4,5(a4)
1c00da72:	00e782a3          	sb	a4,5(a5)
1c00da76:	8082                	ret
1c00da78:	167d                	addi	a2,a2,-1
1c00da7a:	00c587b3          	add	a5,a1,a2
1c00da7e:	962a                	add	a2,a2,a0
1c00da80:	15fd                	addi	a1,a1,-1
1c00da82:	0007c703          	lbu	a4,0(a5)
1c00da86:	17fd                	addi	a5,a5,-1
1c00da88:	00e60023          	sb	a4,0(a2)
1c00da8c:	167d                	addi	a2,a2,-1
1c00da8e:	feb79ae3          	bne	a5,a1,1c00da82 <memmove+0x116>
1c00da92:	8082                	ret
1c00da94:	962a                	add	a2,a2,a0
1c00da96:	87aa                	mv	a5,a0
1c00da98:	0005c703          	lbu	a4,0(a1)
1c00da9c:	0785                	addi	a5,a5,1
1c00da9e:	fee78fa3          	sb	a4,-1(a5)
1c00daa2:	0585                	addi	a1,a1,1
1c00daa4:	fec79ae3          	bne	a5,a2,1c00da98 <memmove+0x12c>
1c00daa8:	8082                	ret
1c00daaa:	8082                	ret
1c00daac:	88ae                	mv	a7,a1
1c00daae:	882a                	mv	a6,a0
1c00dab0:	8332                	mv	t1,a2
1c00dab2:	b7a1                	j	1c00d9fa <memmove+0x8e>

1c00dab4 <strchr>:
1c00dab4:	00054783          	lbu	a5,0(a0)
1c00dab8:	0ff5f593          	andi	a1,a1,255
1c00dabc:	00b78863          	beq	a5,a1,1c00dacc <strchr+0x18>
1c00dac0:	c799                	beqz	a5,1c00dace <strchr+0x1a>
1c00dac2:	0505                	addi	a0,a0,1
1c00dac4:	00054783          	lbu	a5,0(a0)
1c00dac8:	feb79ce3          	bne	a5,a1,1c00dac0 <strchr+0xc>
1c00dacc:	8082                	ret
1c00dace:	0015b593          	seqz	a1,a1
1c00dad2:	40b005b3          	neg	a1,a1
1c00dad6:	8d6d                	and	a0,a0,a1
1c00dad8:	8082                	ret

1c00dada <puts>:
1c00dada:	00054783          	lbu	a5,0(a0)
1c00dade:	c78d                	beqz	a5,1c00db08 <puts+0x2e>
1c00dae0:	f14026f3          	csrr	a3,mhartid
1c00dae4:	00369713          	slli	a4,a3,0x3
1c00dae8:	1a10f637          	lui	a2,0x1a10f
1c00daec:	0ff77713          	andi	a4,a4,255
1c00daf0:	9732                	add	a4,a4,a2
1c00daf2:	6609                	lui	a2,0x2
1c00daf4:	068a                	slli	a3,a3,0x2
1c00daf6:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00dafa:	8ef1                	and	a3,a3,a2
1c00dafc:	9736                	add	a4,a4,a3
1c00dafe:	c31c                	sw	a5,0(a4)
1c00db00:	0505                	addi	a0,a0,1
1c00db02:	00054783          	lbu	a5,0(a0)
1c00db06:	ffe5                	bnez	a5,1c00dafe <puts+0x24>
1c00db08:	f1402773          	csrr	a4,mhartid
1c00db0c:	00371793          	slli	a5,a4,0x3
1c00db10:	1a10f6b7          	lui	a3,0x1a10f
1c00db14:	0ff7f793          	andi	a5,a5,255
1c00db18:	97b6                	add	a5,a5,a3
1c00db1a:	6689                	lui	a3,0x2
1c00db1c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00db20:	070a                	slli	a4,a4,0x2
1c00db22:	8f75                	and	a4,a4,a3
1c00db24:	97ba                	add	a5,a5,a4
1c00db26:	4729                	li	a4,10
1c00db28:	c398                	sw	a4,0(a5)
1c00db2a:	4501                	li	a0,0
1c00db2c:	8082                	ret

1c00db2e <pos_libc_fputc_locked>:
1c00db2e:	6689                	lui	a3,0x2
1c00db30:	f14027f3          	csrr	a5,mhartid
1c00db34:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00db38:	00379713          	slli	a4,a5,0x3
1c00db3c:	078a                	slli	a5,a5,0x2
1c00db3e:	8ff5                	and	a5,a5,a3
1c00db40:	0ff77713          	andi	a4,a4,255
1c00db44:	1a10f6b7          	lui	a3,0x1a10f
1c00db48:	9736                	add	a4,a4,a3
1c00db4a:	0ff57513          	andi	a0,a0,255
1c00db4e:	97ba                	add	a5,a5,a4
1c00db50:	c388                	sw	a0,0(a5)
1c00db52:	4501                	li	a0,0
1c00db54:	8082                	ret

1c00db56 <putchar>:
1c00db56:	6689                	lui	a3,0x2
1c00db58:	f14027f3          	csrr	a5,mhartid
1c00db5c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00db60:	00379713          	slli	a4,a5,0x3
1c00db64:	078a                	slli	a5,a5,0x2
1c00db66:	8ff5                	and	a5,a5,a3
1c00db68:	0ff77713          	andi	a4,a4,255
1c00db6c:	1a10f6b7          	lui	a3,0x1a10f
1c00db70:	9736                	add	a4,a4,a3
1c00db72:	0ff57513          	andi	a0,a0,255
1c00db76:	97ba                	add	a5,a5,a4
1c00db78:	c388                	sw	a0,0(a5)
1c00db7a:	4501                	li	a0,0
1c00db7c:	8082                	ret

1c00db7e <pos_libc_prf_locked>:
1c00db7e:	a0b1                	j	1c00dbca <pos_libc_prf>

1c00db80 <exit>:
1c00db80:	800007b7          	lui	a5,0x80000
1c00db84:	1141                	addi	sp,sp,-16
1c00db86:	8d5d                	or	a0,a0,a5
1c00db88:	c606                	sw	ra,12(sp)
1c00db8a:	1a1047b7          	lui	a5,0x1a104
1c00db8e:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00db92:	31a5                	jal	1c00d7fa <pos_wait_forever>

1c00db94 <pos_io_start>:
1c00db94:	4501                	li	a0,0
1c00db96:	8082                	ret

1c00db98 <pos_io_stop>:
1c00db98:	4501                	li	a0,0
1c00db9a:	8082                	ret

1c00db9c <printf>:
1c00db9c:	7139                	addi	sp,sp,-64
1c00db9e:	02410313          	addi	t1,sp,36
1c00dba2:	d432                	sw	a2,40(sp)
1c00dba4:	862a                	mv	a2,a0
1c00dba6:	1c00e537          	lui	a0,0x1c00e
1c00dbaa:	d22e                	sw	a1,36(sp)
1c00dbac:	d636                	sw	a3,44(sp)
1c00dbae:	4589                	li	a1,2
1c00dbb0:	869a                	mv	a3,t1
1c00dbb2:	b2e50513          	addi	a0,a0,-1234 # 1c00db2e <pos_libc_fputc_locked>
1c00dbb6:	ce06                	sw	ra,28(sp)
1c00dbb8:	d83a                	sw	a4,48(sp)
1c00dbba:	da3e                	sw	a5,52(sp)
1c00dbbc:	dc42                	sw	a6,56(sp)
1c00dbbe:	de46                	sw	a7,60(sp)
1c00dbc0:	c61a                	sw	t1,12(sp)
1c00dbc2:	3f75                	jal	1c00db7e <pos_libc_prf_locked>
1c00dbc4:	40f2                	lw	ra,28(sp)
1c00dbc6:	6121                	addi	sp,sp,64
1c00dbc8:	8082                	ret

1c00dbca <pos_libc_prf>:
1c00dbca:	7169                	addi	sp,sp,-304
1c00dbcc:	12812423          	sw	s0,296(sp)
1c00dbd0:	12912223          	sw	s1,292(sp)
1c00dbd4:	11612823          	sw	s6,272(sp)
1c00dbd8:	11712623          	sw	s7,268(sp)
1c00dbdc:	11812423          	sw	s8,264(sp)
1c00dbe0:	11912223          	sw	s9,260(sp)
1c00dbe4:	11a12023          	sw	s10,256(sp)
1c00dbe8:	12112623          	sw	ra,300(sp)
1c00dbec:	13212023          	sw	s2,288(sp)
1c00dbf0:	11312e23          	sw	s3,284(sp)
1c00dbf4:	11412c23          	sw	s4,280(sp)
1c00dbf8:	11512a23          	sw	s5,276(sp)
1c00dbfc:	dfee                	sw	s11,252(sp)
1c00dbfe:	8b2a                	mv	s6,a0
1c00dc00:	8d2e                	mv	s10,a1
1c00dc02:	84b2                	mv	s1,a2
1c00dc04:	8c36                	mv	s8,a3
1c00dc06:	4401                	li	s0,0
1c00dc08:	1c000bb7          	lui	s7,0x1c000
1c00dc0c:	02410c93          	addi	s9,sp,36
1c00dc10:	0004c503          	lbu	a0,0(s1)
1c00dc14:	0485                	addi	s1,s1,1
1c00dc16:	cd19                	beqz	a0,1c00dc34 <pos_libc_prf+0x6a>
1c00dc18:	02500793          	li	a5,37
1c00dc1c:	04f50863          	beq	a0,a5,1c00dc6c <pos_libc_prf+0xa2>
1c00dc20:	85ea                	mv	a1,s10
1c00dc22:	9b02                	jalr	s6
1c00dc24:	57fd                	li	a5,-1
1c00dc26:	24f50863          	beq	a0,a5,1c00de76 <pos_libc_prf+0x2ac>
1c00dc2a:	0405                	addi	s0,s0,1
1c00dc2c:	0004c503          	lbu	a0,0(s1)
1c00dc30:	0485                	addi	s1,s1,1
1c00dc32:	f17d                	bnez	a0,1c00dc18 <pos_libc_prf+0x4e>
1c00dc34:	8522                	mv	a0,s0
1c00dc36:	12c12083          	lw	ra,300(sp)
1c00dc3a:	12812403          	lw	s0,296(sp)
1c00dc3e:	12412483          	lw	s1,292(sp)
1c00dc42:	12012903          	lw	s2,288(sp)
1c00dc46:	11c12983          	lw	s3,284(sp)
1c00dc4a:	11812a03          	lw	s4,280(sp)
1c00dc4e:	11412a83          	lw	s5,276(sp)
1c00dc52:	11012b03          	lw	s6,272(sp)
1c00dc56:	10c12b83          	lw	s7,268(sp)
1c00dc5a:	10812c03          	lw	s8,264(sp)
1c00dc5e:	10412c83          	lw	s9,260(sp)
1c00dc62:	10012d03          	lw	s10,256(sp)
1c00dc66:	5dfe                	lw	s11,252(sp)
1c00dc68:	6155                	addi	sp,sp,304
1c00dc6a:	8082                	ret
1c00dc6c:	00148a93          	addi	s5,s1,1
1c00dc70:	fffacd83          	lbu	s11,-1(s5)
1c00dc74:	02000713          	li	a4,32
1c00dc78:	24cb8513          	addi	a0,s7,588 # 1c00024c <PQCLEAN_KYBER768_CLEAN_zetas+0x104>
1c00dc7c:	85ee                	mv	a1,s11
1c00dc7e:	c83a                	sw	a4,16(sp)
1c00dc80:	cc02                	sw	zero,24(sp)
1c00dc82:	ca02                	sw	zero,20(sp)
1c00dc84:	ce02                	sw	zero,28(sp)
1c00dc86:	c602                	sw	zero,12(sp)
1c00dc88:	02300913          	li	s2,35
1c00dc8c:	02d00a13          	li	s4,45
1c00dc90:	89d6                	mv	s3,s5
1c00dc92:	350d                	jal	1c00dab4 <strchr>
1c00dc94:	c915                	beqz	a0,1c00dcc8 <pos_libc_prf+0xfe>
1c00dc96:	212d8963          	beq	s11,s2,1c00dea8 <pos_libc_prf+0x2de>
1c00dc9a:	1fb97063          	bleu	s11,s2,1c00de7a <pos_libc_prf+0x2b0>
1c00dc9e:	214d8163          	beq	s11,s4,1c00dea0 <pos_libc_prf+0x2d6>
1c00dca2:	03000613          	li	a2,48
1c00dca6:	1ecd8863          	beq	s11,a2,1c00de96 <pos_libc_prf+0x2cc>
1c00dcaa:	02b00693          	li	a3,43
1c00dcae:	1edd8063          	beq	s11,a3,1c00de8e <pos_libc_prf+0x2c4>
1c00dcb2:	84d6                	mv	s1,s5
1c00dcb4:	00148a93          	addi	s5,s1,1
1c00dcb8:	fffacd83          	lbu	s11,-1(s5)
1c00dcbc:	24cb8513          	addi	a0,s7,588
1c00dcc0:	85ee                	mv	a1,s11
1c00dcc2:	89d6                	mv	s3,s5
1c00dcc4:	3bc5                	jal	1c00dab4 <strchr>
1c00dcc6:	f961                	bnez	a0,1c00dc96 <pos_libc_prf+0xcc>
1c00dcc8:	02a00613          	li	a2,42
1c00dccc:	20cd8463          	beq	s11,a2,1c00ded4 <pos_libc_prf+0x30a>
1c00dcd0:	fd0d8613          	addi	a2,s11,-48
1c00dcd4:	45a5                	li	a1,9
1c00dcd6:	4901                	li	s2,0
1c00dcd8:	1cc5fe63          	bleu	a2,a1,1c00deb4 <pos_libc_prf+0x2ea>
1c00dcdc:	02e00713          	li	a4,46
1c00dce0:	5a7d                	li	s4,-1
1c00dce2:	24ed8463          	beq	s11,a4,1c00df2a <pos_libc_prf+0x360>
1c00dce6:	1c000837          	lui	a6,0x1c000
1c00dcea:	85ee                	mv	a1,s11
1c00dcec:	25480513          	addi	a0,a6,596 # 1c000254 <PQCLEAN_KYBER768_CLEAN_zetas+0x10c>
1c00dcf0:	33d1                	jal	1c00dab4 <strchr>
1c00dcf2:	84ce                	mv	s1,s3
1c00dcf4:	c509                	beqz	a0,1c00dcfe <pos_libc_prf+0x134>
1c00dcf6:	0009cd83          	lbu	s11,0(s3)
1c00dcfa:	00198493          	addi	s1,s3,1
1c00dcfe:	06700713          	li	a4,103
1c00dd02:	1fb75963          	ble	s11,a4,1c00def4 <pos_libc_prf+0x32a>
1c00dd06:	07000713          	li	a4,112
1c00dd0a:	12ed89e3          	beq	s11,a4,1c00e63c <pos_libc_prf+0xa72>
1c00dd0e:	25b75263          	ble	s11,a4,1c00df52 <pos_libc_prf+0x388>
1c00dd12:	07500713          	li	a4,117
1c00dd16:	0aed89e3          	beq	s11,a4,1c00e5c8 <pos_libc_prf+0x9fe>
1c00dd1a:	07800713          	li	a4,120
1c00dd1e:	72ed8b63          	beq	s11,a4,1c00e454 <pos_libc_prf+0x88a>
1c00dd22:	07300713          	li	a4,115
1c00dd26:	1aed9ce3          	bne	s11,a4,1c00e6de <pos_libc_prf+0xb14>
1c00dd2a:	000c2583          	lw	a1,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00dd2e:	004c0a93          	addi	s5,s8,4
1c00dd32:	87ae                	mv	a5,a1
1c00dd34:	4981                	li	s3,0
1c00dd36:	0c800693          	li	a3,200
1c00dd3a:	a021                	j	1c00dd42 <pos_libc_prf+0x178>
1c00dd3c:	0985                	addi	s3,s3,1
1c00dd3e:	5ad98be3          	beq	s3,a3,1c00eaf4 <pos_libc_prf+0xf2a>
1c00dd42:	0007c703          	lbu	a4,0(a5)
1c00dd46:	0785                	addi	a5,a5,1
1c00dd48:	fb75                	bnez	a4,1c00dd3c <pos_libc_prf+0x172>
1c00dd4a:	000a4563          	bltz	s4,1c00dd54 <pos_libc_prf+0x18a>
1c00dd4e:	013a5363          	ble	s3,s4,1c00dd54 <pos_libc_prf+0x18a>
1c00dd52:	89d2                	mv	s3,s4
1c00dd54:	8c56                	mv	s8,s5
1c00dd56:	ea098de3          	beqz	s3,1c00dc10 <pos_libc_prf+0x46>
1c00dd5a:	864e                	mv	a2,s3
1c00dd5c:	8566                	mv	a0,s9
1c00dd5e:	34c9                	jal	1c00d820 <memcpy>
1c00dd60:	8c56                	mv	s8,s5
1c00dd62:	0f29d963          	ble	s2,s3,1c00de54 <pos_libc_prf+0x28a>
1c00dd66:	c602                	sw	zero,12(sp)
1c00dd68:	48f2                	lw	a7,28(sp)
1c00dd6a:	1a0885e3          	beqz	a7,1c00e714 <pos_libc_prf+0xb4a>
1c00dd6e:	013c87b3          	add	a5,s9,s3
1c00dd72:	40f007b3          	neg	a5,a5
1c00dd76:	8b8d                	andi	a5,a5,3
1c00dd78:	00378693          	addi	a3,a5,3
1c00dd7c:	4715                	li	a4,5
1c00dd7e:	413905b3          	sub	a1,s2,s3
1c00dd82:	00e6f363          	bleu	a4,a3,1c00dd88 <pos_libc_prf+0x1be>
1c00dd86:	4695                	li	a3,5
1c00dd88:	fff90713          	addi	a4,s2,-1
1c00dd8c:	41370733          	sub	a4,a4,s3
1c00dd90:	06d76663          	bltu	a4,a3,1c00ddfc <pos_libc_prf+0x232>
1c00dd94:	86ce                	mv	a3,s3
1c00dd96:	cb9d                	beqz	a5,1c00ddcc <pos_libc_prf+0x202>
1c00dd98:	0f010813          	addi	a6,sp,240
1c00dd9c:	013806b3          	add	a3,a6,s3
1c00dda0:	02000713          	li	a4,32
1c00dda4:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c00dda8:	4605                	li	a2,1
1c00ddaa:	00198693          	addi	a3,s3,1
1c00ddae:	00c78f63          	beq	a5,a2,1c00ddcc <pos_libc_prf+0x202>
1c00ddb2:	96c2                	add	a3,a3,a6
1c00ddb4:	f2e68a23          	sb	a4,-204(a3)
1c00ddb8:	460d                	li	a2,3
1c00ddba:	00298693          	addi	a3,s3,2
1c00ddbe:	00c79763          	bne	a5,a2,1c00ddcc <pos_libc_prf+0x202>
1c00ddc2:	96c2                	add	a3,a3,a6
1c00ddc4:	f2e68a23          	sb	a4,-204(a3)
1c00ddc8:	00398693          	addi	a3,s3,3
1c00ddcc:	8d9d                	sub	a1,a1,a5
1c00ddce:	97ce                	add	a5,a5,s3
1c00ddd0:	0025d613          	srli	a2,a1,0x2
1c00ddd4:	97e6                	add	a5,a5,s9
1c00ddd6:	4701                	li	a4,0
1c00ddd8:	1c0008b7          	lui	a7,0x1c000
1c00dddc:	24888893          	addi	a7,a7,584 # 1c000248 <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c00dde0:	0008a883          	lw	a7,0(a7)
1c00dde4:	0705                	addi	a4,a4,1
1c00dde6:	0117a023          	sw	a7,0(a5)
1c00ddea:	0791                	addi	a5,a5,4
1c00ddec:	fec766e3          	bltu	a4,a2,1c00ddd8 <pos_libc_prf+0x20e>
1c00ddf0:	ffc5f793          	andi	a5,a1,-4
1c00ddf4:	00d789b3          	add	s3,a5,a3
1c00ddf8:	04b78b63          	beq	a5,a1,1c00de4e <pos_libc_prf+0x284>
1c00ddfc:	1988                	addi	a0,sp,240
1c00ddfe:	01350733          	add	a4,a0,s3
1c00de02:	02000793          	li	a5,32
1c00de06:	f2f70a23          	sb	a5,-204(a4)
1c00de0a:	00198713          	addi	a4,s3,1
1c00de0e:	05275063          	ble	s2,a4,1c00de4e <pos_libc_prf+0x284>
1c00de12:	972a                	add	a4,a4,a0
1c00de14:	f2f70a23          	sb	a5,-204(a4)
1c00de18:	00298713          	addi	a4,s3,2
1c00de1c:	03275963          	ble	s2,a4,1c00de4e <pos_libc_prf+0x284>
1c00de20:	972a                	add	a4,a4,a0
1c00de22:	f2f70a23          	sb	a5,-204(a4)
1c00de26:	00398713          	addi	a4,s3,3
1c00de2a:	03275263          	ble	s2,a4,1c00de4e <pos_libc_prf+0x284>
1c00de2e:	972a                	add	a4,a4,a0
1c00de30:	f2f70a23          	sb	a5,-204(a4)
1c00de34:	00498713          	addi	a4,s3,4
1c00de38:	01275b63          	ble	s2,a4,1c00de4e <pos_libc_prf+0x284>
1c00de3c:	972a                	add	a4,a4,a0
1c00de3e:	f2f70a23          	sb	a5,-204(a4)
1c00de42:	0995                	addi	s3,s3,5
1c00de44:	0129d563          	ble	s2,s3,1c00de4e <pos_libc_prf+0x284>
1c00de48:	99aa                	add	s3,s3,a0
1c00de4a:	f2f98a23          	sb	a5,-204(s3)
1c00de4e:	89ca                	mv	s3,s2
1c00de50:	dc0980e3          	beqz	s3,1c00dc10 <pos_libc_prf+0x46>
1c00de54:	8966                	mv	s2,s9
1c00de56:	5a7d                	li	s4,-1
1c00de58:	41940ab3          	sub	s5,s0,s9
1c00de5c:	a029                	j	1c00de66 <pos_libc_prf+0x29c>
1c00de5e:	01590433          	add	s0,s2,s5
1c00de62:	da0987e3          	beqz	s3,1c00dc10 <pos_libc_prf+0x46>
1c00de66:	00094503          	lbu	a0,0(s2)
1c00de6a:	85ea                	mv	a1,s10
1c00de6c:	9b02                	jalr	s6
1c00de6e:	0905                	addi	s2,s2,1
1c00de70:	19fd                	addi	s3,s3,-1
1c00de72:	ff4516e3          	bne	a0,s4,1c00de5e <pos_libc_prf+0x294>
1c00de76:	547d                	li	s0,-1
1c00de78:	bb75                	j	1c00dc34 <pos_libc_prf+0x6a>
1c00de7a:	da0d8de3          	beqz	s11,1c00dc34 <pos_libc_prf+0x6a>
1c00de7e:	02000513          	li	a0,32
1c00de82:	e2ad98e3          	bne	s11,a0,1c00dcb2 <pos_libc_prf+0xe8>
1c00de86:	4785                	li	a5,1
1c00de88:	cc3e                	sw	a5,24(sp)
1c00de8a:	84d6                	mv	s1,s5
1c00de8c:	b525                	j	1c00dcb4 <pos_libc_prf+0xea>
1c00de8e:	4705                	li	a4,1
1c00de90:	ca3a                	sw	a4,20(sp)
1c00de92:	84d6                	mv	s1,s5
1c00de94:	b505                	j	1c00dcb4 <pos_libc_prf+0xea>
1c00de96:	03000893          	li	a7,48
1c00de9a:	c846                	sw	a7,16(sp)
1c00de9c:	84d6                	mv	s1,s5
1c00de9e:	bd19                	j	1c00dcb4 <pos_libc_prf+0xea>
1c00dea0:	4685                	li	a3,1
1c00dea2:	ce36                	sw	a3,28(sp)
1c00dea4:	84d6                	mv	s1,s5
1c00dea6:	b539                	j	1c00dcb4 <pos_libc_prf+0xea>
1c00dea8:	4805                	li	a6,1
1c00deaa:	c642                	sw	a6,12(sp)
1c00deac:	84d6                	mv	s1,s5
1c00deae:	b519                	j	1c00dcb4 <pos_libc_prf+0xea>
1c00deb0:	84d6                	mv	s1,s5
1c00deb2:	0a85                	addi	s5,s5,1
1c00deb4:	00291793          	slli	a5,s2,0x2
1c00deb8:	97ca                	add	a5,a5,s2
1c00deba:	0786                	slli	a5,a5,0x1
1c00debc:	97ee                	add	a5,a5,s11
1c00debe:	000acd83          	lbu	s11,0(s5)
1c00dec2:	fd078913          	addi	s2,a5,-48
1c00dec6:	fd0d8793          	addi	a5,s11,-48
1c00deca:	fef5f3e3          	bleu	a5,a1,1c00deb0 <pos_libc_prf+0x2e6>
1c00dece:	00248993          	addi	s3,s1,2
1c00ded2:	a811                	j	1c00dee6 <pos_libc_prf+0x31c>
1c00ded4:	000c2903          	lw	s2,0(s8)
1c00ded8:	0c11                	addi	s8,s8,4
1c00deda:	14094663          	bltz	s2,1c00e026 <pos_libc_prf+0x45c>
1c00dede:	000acd83          	lbu	s11,0(s5)
1c00dee2:	00248993          	addi	s3,s1,2
1c00dee6:	0c800713          	li	a4,200
1c00deea:	df2779e3          	bleu	s2,a4,1c00dcdc <pos_libc_prf+0x112>
1c00deee:	0c800913          	li	s2,200
1c00def2:	b3ed                	j	1c00dcdc <pos_libc_prf+0x112>
1c00def4:	06500713          	li	a4,101
1c00def8:	12eddc63          	ble	a4,s11,1c00e030 <pos_libc_prf+0x466>
1c00defc:	04700713          	li	a4,71
1c00df00:	55b74063          	blt	a4,s11,1c00e440 <pos_libc_prf+0x876>
1c00df04:	04500713          	li	a4,69
1c00df08:	12edd463          	ble	a4,s11,1c00e030 <pos_libc_prf+0x466>
1c00df0c:	d20d84e3          	beqz	s11,1c00dc34 <pos_libc_prf+0x6a>
1c00df10:	02500713          	li	a4,37
1c00df14:	7ced9563          	bne	s11,a4,1c00e6de <pos_libc_prf+0xb14>
1c00df18:	85ea                	mv	a1,s10
1c00df1a:	02500513          	li	a0,37
1c00df1e:	9b02                	jalr	s6
1c00df20:	57fd                	li	a5,-1
1c00df22:	f4f50ae3          	beq	a0,a5,1c00de76 <pos_libc_prf+0x2ac>
1c00df26:	0405                	addi	s0,s0,1
1c00df28:	b311                	j	1c00dc2c <pos_libc_prf+0x62>
1c00df2a:	0009c783          	lbu	a5,0(s3)
1c00df2e:	02a00713          	li	a4,42
1c00df32:	00198693          	addi	a3,s3,1
1c00df36:	0ae79d63          	bne	a5,a4,1c00dff0 <pos_libc_prf+0x426>
1c00df3a:	000c2a03          	lw	s4,0(s8)
1c00df3e:	0019cd83          	lbu	s11,1(s3)
1c00df42:	0c11                	addi	s8,s8,4
1c00df44:	0989                	addi	s3,s3,2
1c00df46:	0c800713          	li	a4,200
1c00df4a:	d9475ee3          	ble	s4,a4,1c00dce6 <pos_libc_prf+0x11c>
1c00df4e:	5a7d                	li	s4,-1
1c00df50:	bb59                	j	1c00dce6 <pos_libc_prf+0x11c>
1c00df52:	06e00713          	li	a4,110
1c00df56:	76ed8e63          	beq	s11,a4,1c00e6d2 <pos_libc_prf+0xb08>
1c00df5a:	5bb75663          	ble	s11,a4,1c00e506 <pos_libc_prf+0x93c>
1c00df5e:	4732                	lw	a4,12(sp)
1c00df60:	004c0513          	addi	a0,s8,4
1c00df64:	000c2683          	lw	a3,0(s8)
1c00df68:	1c070de3          	beqz	a4,1c00e942 <pos_libc_prf+0xd78>
1c00df6c:	03000793          	li	a5,48
1c00df70:	02f10223          	sb	a5,36(sp)
1c00df74:	16068de3          	beqz	a3,1c00e8ee <pos_libc_prf+0xd24>
1c00df78:	02510593          	addi	a1,sp,37
1c00df7c:	872e                	mv	a4,a1
1c00df7e:	87ba                	mv	a5,a4
1c00df80:	0076f613          	andi	a2,a3,7
1c00df84:	0785                	addi	a5,a5,1
1c00df86:	03060613          	addi	a2,a2,48
1c00df8a:	828d                	srli	a3,a3,0x3
1c00df8c:	fec78fa3          	sb	a2,-1(a5)
1c00df90:	fae5                	bnez	a3,1c00df80 <pos_libc_prf+0x3b6>
1c00df92:	40b789b3          	sub	s3,a5,a1
1c00df96:	0149db63          	ble	s4,s3,1c00dfac <pos_libc_prf+0x3e2>
1c00df9a:	03000693          	li	a3,48
1c00df9e:	0785                	addi	a5,a5,1
1c00dfa0:	fed78fa3          	sb	a3,-1(a5)
1c00dfa4:	40b789b3          	sub	s3,a5,a1
1c00dfa8:	ff49cbe3          	blt	s3,s4,1c00df9e <pos_libc_prf+0x3d4>
1c00dfac:	00078023          	sb	zero,0(a5)
1c00dfb0:	17fd                	addi	a5,a5,-1
1c00dfb2:	00f77e63          	bleu	a5,a4,1c00dfce <pos_libc_prf+0x404>
1c00dfb6:	00074603          	lbu	a2,0(a4)
1c00dfba:	0007c683          	lbu	a3,0(a5)
1c00dfbe:	00c78023          	sb	a2,0(a5)
1c00dfc2:	00d70023          	sb	a3,0(a4)
1c00dfc6:	17fd                	addi	a5,a5,-1
1c00dfc8:	0705                	addi	a4,a4,1
1c00dfca:	fef766e3          	bltu	a4,a5,1c00dfb6 <pos_libc_prf+0x3ec>
1c00dfce:	4832                	lw	a6,12(sp)
1c00dfd0:	57fd                	li	a5,-1
1c00dfd2:	99c2                	add	s3,s3,a6
1c00dfd4:	22fa0ee3          	beq	s4,a5,1c00ea10 <pos_libc_prf+0xe46>
1c00dfd8:	0c800793          	li	a5,200
1c00dfdc:	e937cde3          	blt	a5,s3,1c00de76 <pos_libc_prf+0x2ac>
1c00dfe0:	02000693          	li	a3,32
1c00dfe4:	8c2a                	mv	s8,a0
1c00dfe6:	c602                	sw	zero,12(sp)
1c00dfe8:	c836                	sw	a3,16(sp)
1c00dfea:	d729cfe3          	blt	s3,s2,1c00dd68 <pos_libc_prf+0x19e>
1c00dfee:	b58d                	j	1c00de50 <pos_libc_prf+0x286>
1c00dff0:	fd078593          	addi	a1,a5,-48
1c00dff4:	4725                	li	a4,9
1c00dff6:	8dbe                	mv	s11,a5
1c00dff8:	4a01                	li	s4,0
1c00dffa:	4625                	li	a2,9
1c00dffc:	00b77663          	bleu	a1,a4,1c00e008 <pos_libc_prf+0x43e>
1c00e000:	1070006f          	j	1c00e906 <pos_libc_prf+0xd3c>
1c00e004:	89b6                	mv	s3,a3
1c00e006:	0685                	addi	a3,a3,1
1c00e008:	002a1793          	slli	a5,s4,0x2
1c00e00c:	97d2                	add	a5,a5,s4
1c00e00e:	0786                	slli	a5,a5,0x1
1c00e010:	97ee                	add	a5,a5,s11
1c00e012:	0006cd83          	lbu	s11,0(a3)
1c00e016:	fd078a13          	addi	s4,a5,-48
1c00e01a:	fd0d8793          	addi	a5,s11,-48
1c00e01e:	fef673e3          	bleu	a5,a2,1c00e004 <pos_libc_prf+0x43a>
1c00e022:	0989                	addi	s3,s3,2
1c00e024:	b70d                	j	1c00df46 <pos_libc_prf+0x37c>
1c00e026:	4785                	li	a5,1
1c00e028:	41200933          	neg	s2,s2
1c00e02c:	ce3e                	sw	a5,28(sp)
1c00e02e:	bd45                	j	1c00dede <pos_libc_prf+0x314>
1c00e030:	0c1d                	addi	s8,s8,7
1c00e032:	ff8c7c13          	andi	s8,s8,-8
1c00e036:	000c2703          	lw	a4,0(s8)
1c00e03a:	004c2803          	lw	a6,4(s8)
1c00e03e:	01575693          	srli	a3,a4,0x15
1c00e042:	00b81613          	slli	a2,a6,0xb
1c00e046:	8e55                	or	a2,a2,a3
1c00e048:	01485513          	srli	a0,a6,0x14
1c00e04c:	00b71693          	slli	a3,a4,0xb
1c00e050:	80000737          	lui	a4,0x80000
1c00e054:	fff74713          	not	a4,a4
1c00e058:	7ff57513          	andi	a0,a0,2047
1c00e05c:	7ff00593          	li	a1,2047
1c00e060:	0c21                	addi	s8,s8,8
1c00e062:	8e79                	and	a2,a2,a4
1c00e064:	0ab504e3          	beq	a0,a1,1c00e90c <pos_libc_prf+0xd42>
1c00e068:	04600593          	li	a1,70
1c00e06c:	00bd9463          	bne	s11,a1,1c00e074 <pos_libc_prf+0x4aa>
1c00e070:	06600d93          	li	s11,102
1c00e074:	00d56733          	or	a4,a0,a3
1c00e078:	8f51                	or	a4,a4,a2
1c00e07a:	7e070963          	beqz	a4,1c00e86c <pos_libc_prf+0xca2>
1c00e07e:	800005b7          	lui	a1,0x80000
1c00e082:	c0250513          	addi	a0,a0,-1022
1c00e086:	8dd1                	or	a1,a1,a2
1c00e088:	26084ae3          	bltz	a6,1c00eafc <pos_libc_prf+0xf32>
1c00e08c:	4852                	lw	a6,20(sp)
1c00e08e:	220808e3          	beqz	a6,1c00eabe <pos_libc_prf+0xef4>
1c00e092:	02b00713          	li	a4,43
1c00e096:	02e10223          	sb	a4,36(sp)
1c00e09a:	02510e93          	addi	t4,sp,37
1c00e09e:	5779                	li	a4,-2
1c00e0a0:	4301                	li	t1,0
1c00e0a2:	06e55763          	ble	a4,a0,1c00e110 <pos_libc_prf+0x546>
1c00e0a6:	33333837          	lui	a6,0x33333
1c00e0aa:	800008b7          	lui	a7,0x80000
1c00e0ae:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c00e0b2:	fff8c893          	not	a7,a7
1c00e0b6:	5e79                	li	t3,-2
1c00e0b8:	a011                	j	1c00e0bc <pos_libc_prf+0x4f2>
1c00e0ba:	853e                	mv	a0,a5
1c00e0bc:	01f59613          	slli	a2,a1,0x1f
1c00e0c0:	0016d713          	srli	a4,a3,0x1
1c00e0c4:	0016f793          	andi	a5,a3,1
1c00e0c8:	8f51                	or	a4,a4,a2
1c00e0ca:	00e786b3          	add	a3,a5,a4
1c00e0ce:	00f6b7b3          	sltu	a5,a3,a5
1c00e0d2:	8185                	srli	a1,a1,0x1
1c00e0d4:	95be                	add	a1,a1,a5
1c00e0d6:	00150793          	addi	a5,a0,1
1c00e0da:	feb860e3          	bltu	a6,a1,1c00e0ba <pos_libc_prf+0x4f0>
1c00e0de:	00269613          	slli	a2,a3,0x2
1c00e0e2:	01e6df13          	srli	t5,a3,0x1e
1c00e0e6:	00259713          	slli	a4,a1,0x2
1c00e0ea:	96b2                	add	a3,a3,a2
1c00e0ec:	00ef6733          	or	a4,t5,a4
1c00e0f0:	95ba                	add	a1,a1,a4
1c00e0f2:	00c6b633          	sltu	a2,a3,a2
1c00e0f6:	95b2                	add	a1,a1,a2
1c00e0f8:	01f6d713          	srli	a4,a3,0x1f
1c00e0fc:	0509                	addi	a0,a0,2
1c00e0fe:	137d                	addi	t1,t1,-1
1c00e100:	01159663          	bne	a1,a7,1c00e10c <pos_libc_prf+0x542>
1c00e104:	0686                	slli	a3,a3,0x1
1c00e106:	ffe76593          	ori	a1,a4,-2
1c00e10a:	853e                	mv	a0,a5
1c00e10c:	fbc548e3          	blt	a0,t3,1c00e0bc <pos_libc_prf+0x4f2>
1c00e110:	06a05563          	blez	a0,1c00e17a <pos_libc_prf+0x5b0>
1c00e114:	800008b7          	lui	a7,0x80000
1c00e118:	4e15                	li	t3,5
1c00e11a:	fff8c893          	not	a7,a7
1c00e11e:	00268613          	addi	a2,a3,2
1c00e122:	00d636b3          	sltu	a3,a2,a3
1c00e126:	95b6                	add	a1,a1,a3
1c00e128:	03c5d7b3          	divu	a5,a1,t3
1c00e12c:	00279713          	slli	a4,a5,0x2
1c00e130:	973e                	add	a4,a4,a5
1c00e132:	8d99                	sub	a1,a1,a4
1c00e134:	01d59713          	slli	a4,a1,0x1d
1c00e138:	00365593          	srli	a1,a2,0x3
1c00e13c:	8dd9                	or	a1,a1,a4
1c00e13e:	03c5d5b3          	divu	a1,a1,t3
1c00e142:	00359693          	slli	a3,a1,0x3
1c00e146:	00559713          	slli	a4,a1,0x5
1c00e14a:	9736                	add	a4,a4,a3
1c00e14c:	40e60733          	sub	a4,a2,a4
1c00e150:	03c75733          	divu	a4,a4,t3
1c00e154:	81f5                	srli	a1,a1,0x1d
1c00e156:	96ba                	add	a3,a3,a4
1c00e158:	97ae                	add	a5,a5,a1
1c00e15a:	00e6b733          	sltu	a4,a3,a4
1c00e15e:	00f705b3          	add	a1,a4,a5
1c00e162:	157d                	addi	a0,a0,-1
1c00e164:	0305                	addi	t1,t1,1
1c00e166:	01f6d793          	srli	a5,a3,0x1f
1c00e16a:	0586                	slli	a1,a1,0x1
1c00e16c:	8ddd                	or	a1,a1,a5
1c00e16e:	0686                	slli	a3,a3,0x1
1c00e170:	157d                	addi	a0,a0,-1
1c00e172:	feb8fae3          	bleu	a1,a7,1c00e166 <pos_libc_prf+0x59c>
1c00e176:	faa044e3          	bgtz	a0,1c00e11e <pos_libc_prf+0x554>
1c00e17a:	4611                	li	a2,4
1c00e17c:	01f59713          	slli	a4,a1,0x1f
1c00e180:	0016d793          	srli	a5,a3,0x1
1c00e184:	8fd9                	or	a5,a5,a4
1c00e186:	8a85                	andi	a3,a3,1
1c00e188:	00f688b3          	add	a7,a3,a5
1c00e18c:	8185                	srli	a1,a1,0x1
1c00e18e:	00d8b6b3          	sltu	a3,a7,a3
1c00e192:	00b68733          	add	a4,a3,a1
1c00e196:	0505                	addi	a0,a0,1
1c00e198:	86c6                	mv	a3,a7
1c00e19a:	85ba                	mv	a1,a4
1c00e19c:	fec510e3          	bne	a0,a2,1c00e17c <pos_libc_prf+0x5b2>
1c00e1a0:	06700693          	li	a3,103
1c00e1a4:	040a48e3          	bltz	s4,1c00e9f4 <pos_libc_prf+0xe2a>
1c00e1a8:	70dd8b63          	beq	s11,a3,1c00e8be <pos_libc_prf+0xcf4>
1c00e1ac:	04700693          	li	a3,71
1c00e1b0:	70dd8763          	beq	s11,a3,1c00e8be <pos_libc_prf+0xcf4>
1c00e1b4:	06600693          	li	a3,102
1c00e1b8:	08dd89e3          	beq	s11,a3,1c00ea4a <pos_libc_prf+0xe80>
1c00e1bc:	001a0e13          	addi	t3,s4,1
1c00e1c0:	46c1                	li	a3,16
1c00e1c2:	01c6d363          	ble	t3,a3,1c00e1c8 <pos_libc_prf+0x5fe>
1c00e1c6:	4e41                	li	t3,16
1c00e1c8:	1e7d                	addi	t3,t3,-1
1c00e1ca:	4f81                	li	t6,0
1c00e1cc:	4681                	li	a3,0
1c00e1ce:	08000637          	lui	a2,0x8000
1c00e1d2:	4f15                	li	t5,5
1c00e1d4:	52fd                	li	t0,-1
1c00e1d6:	00268593          	addi	a1,a3,2
1c00e1da:	00d5b7b3          	sltu	a5,a1,a3
1c00e1de:	97b2                	add	a5,a5,a2
1c00e1e0:	03e7d633          	divu	a2,a5,t5
1c00e1e4:	00261693          	slli	a3,a2,0x2
1c00e1e8:	96b2                	add	a3,a3,a2
1c00e1ea:	8f95                	sub	a5,a5,a3
1c00e1ec:	07f6                	slli	a5,a5,0x1d
1c00e1ee:	0035d513          	srli	a0,a1,0x3
1c00e1f2:	8d5d                	or	a0,a0,a5
1c00e1f4:	03e55533          	divu	a0,a0,t5
1c00e1f8:	00351693          	slli	a3,a0,0x3
1c00e1fc:	00551793          	slli	a5,a0,0x5
1c00e200:	97b6                	add	a5,a5,a3
1c00e202:	40f587b3          	sub	a5,a1,a5
1c00e206:	03e7d7b3          	divu	a5,a5,t5
1c00e20a:	8175                	srli	a0,a0,0x1d
1c00e20c:	96be                	add	a3,a3,a5
1c00e20e:	00f6b7b3          	sltu	a5,a3,a5
1c00e212:	962a                	add	a2,a2,a0
1c00e214:	963e                	add	a2,a2,a5
1c00e216:	01f61513          	slli	a0,a2,0x1f
1c00e21a:	0016d793          	srli	a5,a3,0x1
1c00e21e:	0016f593          	andi	a1,a3,1
1c00e222:	8fc9                	or	a5,a5,a0
1c00e224:	00f586b3          	add	a3,a1,a5
1c00e228:	8205                	srli	a2,a2,0x1
1c00e22a:	00b6b7b3          	sltu	a5,a3,a1
1c00e22e:	1e7d                	addi	t3,t3,-1
1c00e230:	963e                	add	a2,a2,a5
1c00e232:	fa5e12e3          	bne	t3,t0,1c00e1d6 <pos_libc_prf+0x60c>
1c00e236:	96c6                	add	a3,a3,a7
1c00e238:	963a                	add	a2,a2,a4
1c00e23a:	0116b8b3          	sltu	a7,a3,a7
1c00e23e:	9646                	add	a2,a2,a7
1c00e240:	f00005b7          	lui	a1,0xf0000
1c00e244:	8df1                	and	a1,a1,a2
1c00e246:	8736                	mv	a4,a3
1c00e248:	cdb9                	beqz	a1,1c00e2a6 <pos_libc_prf+0x6dc>
1c00e24a:	0689                	addi	a3,a3,2
1c00e24c:	00e6b733          	sltu	a4,a3,a4
1c00e250:	963a                	add	a2,a2,a4
1c00e252:	4815                	li	a6,5
1c00e254:	03065533          	divu	a0,a2,a6
1c00e258:	00251713          	slli	a4,a0,0x2
1c00e25c:	972a                	add	a4,a4,a0
1c00e25e:	8e19                	sub	a2,a2,a4
1c00e260:	01d61713          	slli	a4,a2,0x1d
1c00e264:	0036d593          	srli	a1,a3,0x3
1c00e268:	8dd9                	or	a1,a1,a4
1c00e26a:	0305d5b3          	divu	a1,a1,a6
1c00e26e:	00359613          	slli	a2,a1,0x3
1c00e272:	00559713          	slli	a4,a1,0x5
1c00e276:	9732                	add	a4,a4,a2
1c00e278:	40e68733          	sub	a4,a3,a4
1c00e27c:	03075733          	divu	a4,a4,a6
1c00e280:	81f5                	srli	a1,a1,0x1d
1c00e282:	963a                	add	a2,a2,a4
1c00e284:	00e63733          	sltu	a4,a2,a4
1c00e288:	95aa                	add	a1,a1,a0
1c00e28a:	00b706b3          	add	a3,a4,a1
1c00e28e:	01f69593          	slli	a1,a3,0x1f
1c00e292:	00165713          	srli	a4,a2,0x1
1c00e296:	8f4d                	or	a4,a4,a1
1c00e298:	8a05                	andi	a2,a2,1
1c00e29a:	9732                	add	a4,a4,a2
1c00e29c:	8285                	srli	a3,a3,0x1
1c00e29e:	00c73633          	sltu	a2,a4,a2
1c00e2a2:	9636                	add	a2,a2,a3
1c00e2a4:	0305                	addi	t1,t1,1
1c00e2a6:	001e8993          	addi	s3,t4,1
1c00e2aa:	06600693          	li	a3,102
1c00e2ae:	85ce                	mv	a1,s3
1c00e2b0:	6add8663          	beq	s11,a3,1c00e95c <pos_libc_prf+0xd92>
1c00e2b4:	00271693          	slli	a3,a4,0x2
1c00e2b8:	01e75593          	srli	a1,a4,0x1e
1c00e2bc:	00261513          	slli	a0,a2,0x2
1c00e2c0:	9736                	add	a4,a4,a3
1c00e2c2:	8d4d                	or	a0,a0,a1
1c00e2c4:	962a                	add	a2,a2,a0
1c00e2c6:	00d735b3          	sltu	a1,a4,a3
1c00e2ca:	95b2                	add	a1,a1,a2
1c00e2cc:	01f75693          	srli	a3,a4,0x1f
1c00e2d0:	0586                	slli	a1,a1,0x1
1c00e2d2:	8dd5                	or	a1,a1,a3
1c00e2d4:	01c5d693          	srli	a3,a1,0x1c
1c00e2d8:	03068613          	addi	a2,a3,48
1c00e2dc:	00d036b3          	snez	a3,a3
1c00e2e0:	10000537          	lui	a0,0x10000
1c00e2e4:	40d30333          	sub	t1,t1,a3
1c00e2e8:	46b2                	lw	a3,12(sp)
1c00e2ea:	157d                	addi	a0,a0,-1
1c00e2ec:	00ce8023          	sb	a2,0(t4)
1c00e2f0:	0706                	slli	a4,a4,0x1
1c00e2f2:	8de9                	and	a1,a1,a0
1c00e2f4:	64068b63          	beqz	a3,1c00e94a <pos_libc_prf+0xd80>
1c00e2f8:	02e00693          	li	a3,46
1c00e2fc:	00de80a3          	sb	a3,1(t4)
1c00e300:	002e8513          	addi	a0,t4,2
1c00e304:	020a00e3          	beqz	s4,1c00eb24 <pos_libc_prf+0xf5a>
1c00e308:	014509b3          	add	s3,a0,s4
1c00e30c:	48bd                	li	a7,15
1c00e30e:	03000e13          	li	t3,48
1c00e312:	00271793          	slli	a5,a4,0x2
1c00e316:	01e75813          	srli	a6,a4,0x1e
1c00e31a:	00259693          	slli	a3,a1,0x2
1c00e31e:	00e78633          	add	a2,a5,a4
1c00e322:	00d866b3          	or	a3,a6,a3
1c00e326:	96ae                	add	a3,a3,a1
1c00e328:	00f637b3          	sltu	a5,a2,a5
1c00e32c:	97b6                	add	a5,a5,a3
1c00e32e:	0786                	slli	a5,a5,0x1
1c00e330:	01f65693          	srli	a3,a2,0x1f
1c00e334:	8fd5                	or	a5,a5,a3
1c00e336:	01c7d693          	srli	a3,a5,0x1c
1c00e33a:	03068693          	addi	a3,a3,48
1c00e33e:	0505                	addi	a0,a0,1
1c00e340:	3b105663          	blez	a7,1c00e6ec <pos_libc_prf+0xb22>
1c00e344:	10000837          	lui	a6,0x10000
1c00e348:	187d                	addi	a6,a6,-1
1c00e34a:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c00e34e:	18fd                	addi	a7,a7,-1
1c00e350:	00161713          	slli	a4,a2,0x1
1c00e354:	0107f5b3          	and	a1,a5,a6
1c00e358:	faa99de3          	bne	s3,a0,1c00e312 <pos_libc_prf+0x748>
1c00e35c:	0c0f9263          	bnez	t6,1c00e420 <pos_libc_prf+0x856>
1c00e360:	fdfdf713          	andi	a4,s11,-33
1c00e364:	04500693          	li	a3,69
1c00e368:	02d71963          	bne	a4,a3,1c00e39a <pos_libc_prf+0x7d0>
1c00e36c:	87ee                	mv	a5,s11
1c00e36e:	00f98023          	sb	a5,0(s3)
1c00e372:	6a034763          	bltz	t1,1c00ea20 <pos_libc_prf+0xe56>
1c00e376:	02b00793          	li	a5,43
1c00e37a:	00f980a3          	sb	a5,1(s3)
1c00e37e:	47a9                	li	a5,10
1c00e380:	02f34733          	div	a4,t1,a5
1c00e384:	02f367b3          	rem	a5,t1,a5
1c00e388:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c00e38c:	03078793          	addi	a5,a5,48
1c00e390:	00e98123          	sb	a4,2(s3)
1c00e394:	00f981a3          	sb	a5,3(s3)
1c00e398:	0991                	addi	s3,s3,4
1c00e39a:	00098023          	sb	zero,0(s3)
1c00e39e:	419989b3          	sub	s3,s3,s9
1c00e3a2:	48d2                	lw	a7,20(sp)
1c00e3a4:	4662                	lw	a2,24(sp)
1c00e3a6:	00c8e8b3          	or	a7,a7,a2
1c00e3aa:	c646                	sw	a7,12(sp)
1c00e3ac:	34089d63          	bnez	a7,1c00e706 <pos_libc_prf+0xb3c>
1c00e3b0:	02414703          	lbu	a4,36(sp)
1c00e3b4:	02d00793          	li	a5,45
1c00e3b8:	34f70763          	beq	a4,a5,1c00e706 <pos_libc_prf+0xb3c>
1c00e3bc:	0c800793          	li	a5,200
1c00e3c0:	ab37cbe3          	blt	a5,s3,1c00de76 <pos_libc_prf+0x2ac>
1c00e3c4:	9b29c2e3          	blt	s3,s2,1c00dd68 <pos_libc_prf+0x19e>
1c00e3c8:	b461                	j	1c00de50 <pos_libc_prf+0x286>
1c00e3ca:	0585                	addi	a1,a1,1
1c00e3cc:	00271793          	slli	a5,a4,0x2
1c00e3d0:	01e75e13          	srli	t3,a4,0x1e
1c00e3d4:	00261693          	slli	a3,a2,0x2
1c00e3d8:	00e788b3          	add	a7,a5,a4
1c00e3dc:	00de66b3          	or	a3,t3,a3
1c00e3e0:	96b2                	add	a3,a3,a2
1c00e3e2:	00f8b7b3          	sltu	a5,a7,a5
1c00e3e6:	97b6                	add	a5,a5,a3
1c00e3e8:	0786                	slli	a5,a5,0x1
1c00e3ea:	01f8d693          	srli	a3,a7,0x1f
1c00e3ee:	8fd5                	or	a5,a5,a3
1c00e3f0:	01c7de13          	srli	t3,a5,0x1c
1c00e3f4:	03000693          	li	a3,48
1c00e3f8:	00a05c63          	blez	a0,1c00e410 <pos_libc_prf+0x846>
1c00e3fc:	00189713          	slli	a4,a7,0x1
1c00e400:	100008b7          	lui	a7,0x10000
1c00e404:	18fd                	addi	a7,a7,-1
1c00e406:	030e0693          	addi	a3,t3,48
1c00e40a:	157d                	addi	a0,a0,-1
1c00e40c:	0117f633          	and	a2,a5,a7
1c00e410:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c00e414:	fab99be3          	bne	s3,a1,1c00e3ca <pos_libc_prf+0x800>
1c00e418:	014809b3          	add	s3,a6,s4
1c00e41c:	f60f8fe3          	beqz	t6,1c00e39a <pos_libc_prf+0x7d0>
1c00e420:	03000613          	li	a2,48
1c00e424:	a011                	j	1c00e428 <pos_libc_prf+0x85e>
1c00e426:	89ba                	mv	s3,a4
1c00e428:	fff9c683          	lbu	a3,-1(s3)
1c00e42c:	fff98713          	addi	a4,s3,-1
1c00e430:	fec68be3          	beq	a3,a2,1c00e426 <pos_libc_prf+0x85c>
1c00e434:	02e00613          	li	a2,46
1c00e438:	f2c694e3          	bne	a3,a2,1c00e360 <pos_libc_prf+0x796>
1c00e43c:	89ba                	mv	s3,a4
1c00e43e:	b70d                	j	1c00e360 <pos_libc_prf+0x796>
1c00e440:	06300713          	li	a4,99
1c00e444:	16ed8863          	beq	s11,a4,1c00e5b4 <pos_libc_prf+0x9ea>
1c00e448:	0db74363          	blt	a4,s11,1c00e50e <pos_libc_prf+0x944>
1c00e44c:	05800713          	li	a4,88
1c00e450:	28ed9763          	bne	s11,a4,1c00e6de <pos_libc_prf+0xb14>
1c00e454:	48b2                	lw	a7,12(sp)
1c00e456:	004c0813          	addi	a6,s8,4
1c00e45a:	000c2583          	lw	a1,0(s8)
1c00e45e:	3c088a63          	beqz	a7,1c00e832 <pos_libc_prf+0xc68>
1c00e462:	7761                	lui	a4,0xffff8
1c00e464:	83074713          	xori	a4,a4,-2000
1c00e468:	02e11223          	sh	a4,36(sp)
1c00e46c:	4889                	li	a7,2
1c00e46e:	02610693          	addi	a3,sp,38
1c00e472:	8736                	mv	a4,a3
1c00e474:	4e25                	li	t3,9
1c00e476:	00f5f613          	andi	a2,a1,15
1c00e47a:	0ff67793          	andi	a5,a2,255
1c00e47e:	03078513          	addi	a0,a5,48
1c00e482:	8191                	srli	a1,a1,0x4
1c00e484:	05778793          	addi	a5,a5,87
1c00e488:	0705                	addi	a4,a4,1
1c00e48a:	06ce6a63          	bltu	t3,a2,1c00e4fe <pos_libc_prf+0x934>
1c00e48e:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00e492:	f1f5                	bnez	a1,1c00e476 <pos_libc_prf+0x8ac>
1c00e494:	40d709b3          	sub	s3,a4,a3
1c00e498:	0149db63          	ble	s4,s3,1c00e4ae <pos_libc_prf+0x8e4>
1c00e49c:	03000613          	li	a2,48
1c00e4a0:	0705                	addi	a4,a4,1
1c00e4a2:	fec70fa3          	sb	a2,-1(a4)
1c00e4a6:	40d709b3          	sub	s3,a4,a3
1c00e4aa:	ff49cbe3          	blt	s3,s4,1c00e4a0 <pos_libc_prf+0x8d6>
1c00e4ae:	00070023          	sb	zero,0(a4)
1c00e4b2:	177d                	addi	a4,a4,-1
1c00e4b4:	00e6fe63          	bleu	a4,a3,1c00e4d0 <pos_libc_prf+0x906>
1c00e4b8:	0006c603          	lbu	a2,0(a3)
1c00e4bc:	00074783          	lbu	a5,0(a4)
1c00e4c0:	00c70023          	sb	a2,0(a4)
1c00e4c4:	00f68023          	sb	a5,0(a3)
1c00e4c8:	177d                	addi	a4,a4,-1
1c00e4ca:	0685                	addi	a3,a3,1
1c00e4cc:	fee6e6e3          	bltu	a3,a4,1c00e4b8 <pos_libc_prf+0x8ee>
1c00e4d0:	05800713          	li	a4,88
1c00e4d4:	36ed8263          	beq	s11,a4,1c00e838 <pos_libc_prf+0xc6e>
1c00e4d8:	46b2                	lw	a3,12(sp)
1c00e4da:	99c6                	add	s3,s3,a7
1c00e4dc:	c299                	beqz	a3,1c00e4e2 <pos_libc_prf+0x918>
1c00e4de:	4709                	li	a4,2
1c00e4e0:	c63a                	sw	a4,12(sp)
1c00e4e2:	57fd                	li	a5,-1
1c00e4e4:	3afa0263          	beq	s4,a5,1c00e888 <pos_libc_prf+0xcbe>
1c00e4e8:	0c800793          	li	a5,200
1c00e4ec:	9937c5e3          	blt	a5,s3,1c00de76 <pos_libc_prf+0x2ac>
1c00e4f0:	02000793          	li	a5,32
1c00e4f4:	c83e                	sw	a5,16(sp)
1c00e4f6:	8c42                	mv	s8,a6
1c00e4f8:	8729c8e3          	blt	s3,s2,1c00dd68 <pos_libc_prf+0x19e>
1c00e4fc:	ba91                	j	1c00de50 <pos_libc_prf+0x286>
1c00e4fe:	fef70fa3          	sb	a5,-1(a4)
1c00e502:	f9b5                	bnez	a1,1c00e476 <pos_libc_prf+0x8ac>
1c00e504:	bf41                	j	1c00e494 <pos_libc_prf+0x8ca>
1c00e506:	06900713          	li	a4,105
1c00e50a:	1ced9a63          	bne	s11,a4,1c00e6de <pos_libc_prf+0xb14>
1c00e50e:	000c2583          	lw	a1,0(s8)
1c00e512:	0c11                	addi	s8,s8,4
1c00e514:	3805c863          	bltz	a1,1c00e8a4 <pos_libc_prf+0xcda>
1c00e518:	48d2                	lw	a7,20(sp)
1c00e51a:	872e                	mv	a4,a1
1c00e51c:	36089d63          	bnez	a7,1c00e896 <pos_libc_prf+0xccc>
1c00e520:	4662                	lw	a2,24(sp)
1c00e522:	87e6                	mv	a5,s9
1c00e524:	c619                	beqz	a2,1c00e532 <pos_libc_prf+0x968>
1c00e526:	02000793          	li	a5,32
1c00e52a:	02f10223          	sb	a5,36(sp)
1c00e52e:	02510793          	addi	a5,sp,37
1c00e532:	89be                	mv	s3,a5
1c00e534:	4629                	li	a2,10
1c00e536:	02c776b3          	remu	a3,a4,a2
1c00e53a:	02c75733          	divu	a4,a4,a2
1c00e53e:	0985                	addi	s3,s3,1
1c00e540:	03068693          	addi	a3,a3,48
1c00e544:	fed98fa3          	sb	a3,-1(s3)
1c00e548:	f77d                	bnez	a4,1c00e536 <pos_libc_prf+0x96c>
1c00e54a:	40f98733          	sub	a4,s3,a5
1c00e54e:	01475b63          	ble	s4,a4,1c00e564 <pos_libc_prf+0x99a>
1c00e552:	03000693          	li	a3,48
1c00e556:	0985                	addi	s3,s3,1
1c00e558:	fed98fa3          	sb	a3,-1(s3)
1c00e55c:	40f98733          	sub	a4,s3,a5
1c00e560:	ff474be3          	blt	a4,s4,1c00e556 <pos_libc_prf+0x98c>
1c00e564:	00098023          	sb	zero,0(s3)
1c00e568:	fff98713          	addi	a4,s3,-1
1c00e56c:	00e7fe63          	bleu	a4,a5,1c00e588 <pos_libc_prf+0x9be>
1c00e570:	0007c603          	lbu	a2,0(a5)
1c00e574:	00074683          	lbu	a3,0(a4)
1c00e578:	00c70023          	sb	a2,0(a4)
1c00e57c:	00d78023          	sb	a3,0(a5)
1c00e580:	177d                	addi	a4,a4,-1
1c00e582:	0785                	addi	a5,a5,1
1c00e584:	fee7e6e3          	bltu	a5,a4,1c00e570 <pos_libc_prf+0x9a6>
1c00e588:	46d2                	lw	a3,20(sp)
1c00e58a:	4762                	lw	a4,24(sp)
1c00e58c:	419989b3          	sub	s3,s3,s9
1c00e590:	8ed9                	or	a3,a3,a4
1c00e592:	c636                	sw	a3,12(sp)
1c00e594:	e299                	bnez	a3,1c00e59a <pos_libc_prf+0x9d0>
1c00e596:	81fd                	srli	a1,a1,0x1f
1c00e598:	c62e                	sw	a1,12(sp)
1c00e59a:	57fd                	li	a5,-1
1c00e59c:	e2fa00e3          	beq	s4,a5,1c00e3bc <pos_libc_prf+0x7f2>
1c00e5a0:	0c800793          	li	a5,200
1c00e5a4:	8d37c9e3          	blt	a5,s3,1c00de76 <pos_libc_prf+0x2ac>
1c00e5a8:	02000793          	li	a5,32
1c00e5ac:	c83e                	sw	a5,16(sp)
1c00e5ae:	fb29cd63          	blt	s3,s2,1c00dd68 <pos_libc_prf+0x19e>
1c00e5b2:	b879                	j	1c00de50 <pos_libc_prf+0x286>
1c00e5b4:	000c2783          	lw	a5,0(s8)
1c00e5b8:	020102a3          	sb	zero,37(sp)
1c00e5bc:	02f10223          	sb	a5,36(sp)
1c00e5c0:	0c11                	addi	s8,s8,4
1c00e5c2:	4985                	li	s3,1
1c00e5c4:	f9eff06f          	j	1c00dd62 <pos_libc_prf+0x198>
1c00e5c8:	000c2703          	lw	a4,0(s8)
1c00e5cc:	87e6                	mv	a5,s9
1c00e5ce:	0c11                	addi	s8,s8,4
1c00e5d0:	4629                	li	a2,10
1c00e5d2:	02c776b3          	remu	a3,a4,a2
1c00e5d6:	02c75733          	divu	a4,a4,a2
1c00e5da:	0785                	addi	a5,a5,1
1c00e5dc:	03068693          	addi	a3,a3,48
1c00e5e0:	fed78fa3          	sb	a3,-1(a5)
1c00e5e4:	f77d                	bnez	a4,1c00e5d2 <pos_libc_prf+0xa08>
1c00e5e6:	419789b3          	sub	s3,a5,s9
1c00e5ea:	0149db63          	ble	s4,s3,1c00e600 <pos_libc_prf+0xa36>
1c00e5ee:	03000713          	li	a4,48
1c00e5f2:	0785                	addi	a5,a5,1
1c00e5f4:	fee78fa3          	sb	a4,-1(a5)
1c00e5f8:	419789b3          	sub	s3,a5,s9
1c00e5fc:	ff49cbe3          	blt	s3,s4,1c00e5f2 <pos_libc_prf+0xa28>
1c00e600:	00078023          	sb	zero,0(a5)
1c00e604:	17fd                	addi	a5,a5,-1
1c00e606:	00fcff63          	bleu	a5,s9,1c00e624 <pos_libc_prf+0xa5a>
1c00e60a:	8766                	mv	a4,s9
1c00e60c:	00074603          	lbu	a2,0(a4)
1c00e610:	0007c683          	lbu	a3,0(a5)
1c00e614:	00c78023          	sb	a2,0(a5)
1c00e618:	00d70023          	sb	a3,0(a4)
1c00e61c:	17fd                	addi	a5,a5,-1
1c00e61e:	0705                	addi	a4,a4,1
1c00e620:	fef766e3          	bltu	a4,a5,1c00e60c <pos_libc_prf+0xa42>
1c00e624:	57fd                	li	a5,-1
1c00e626:	0cfa0a63          	beq	s4,a5,1c00e6fa <pos_libc_prf+0xb30>
1c00e62a:	0c800793          	li	a5,200
1c00e62e:	8537c4e3          	blt	a5,s3,1c00de76 <pos_libc_prf+0x2ac>
1c00e632:	02000813          	li	a6,32
1c00e636:	c602                	sw	zero,12(sp)
1c00e638:	c842                	sw	a6,16(sp)
1c00e63a:	ba45                	j	1c00dfea <pos_libc_prf+0x420>
1c00e63c:	77e1                	lui	a5,0xffff8
1c00e63e:	8307c793          	xori	a5,a5,-2000
1c00e642:	02610713          	addi	a4,sp,38
1c00e646:	000c2603          	lw	a2,0(s8)
1c00e64a:	02f11223          	sh	a5,36(sp)
1c00e64e:	0c11                	addi	s8,s8,4
1c00e650:	87ba                	mv	a5,a4
1c00e652:	4825                	li	a6,9
1c00e654:	00f67593          	andi	a1,a2,15
1c00e658:	0ff5f693          	andi	a3,a1,255
1c00e65c:	03068513          	addi	a0,a3,48
1c00e660:	8211                	srli	a2,a2,0x4
1c00e662:	05768693          	addi	a3,a3,87
1c00e666:	0785                	addi	a5,a5,1
1c00e668:	06b86163          	bltu	a6,a1,1c00e6ca <pos_libc_prf+0xb00>
1c00e66c:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c00e670:	f275                	bnez	a2,1c00e654 <pos_libc_prf+0xa8a>
1c00e672:	40e789b3          	sub	s3,a5,a4
1c00e676:	469d                	li	a3,7
1c00e678:	0136cb63          	blt	a3,s3,1c00e68e <pos_libc_prf+0xac4>
1c00e67c:	03000613          	li	a2,48
1c00e680:	0785                	addi	a5,a5,1
1c00e682:	fec78fa3          	sb	a2,-1(a5)
1c00e686:	40e789b3          	sub	s3,a5,a4
1c00e68a:	ff36dbe3          	ble	s3,a3,1c00e680 <pos_libc_prf+0xab6>
1c00e68e:	00078023          	sb	zero,0(a5)
1c00e692:	17fd                	addi	a5,a5,-1
1c00e694:	00f77e63          	bleu	a5,a4,1c00e6b0 <pos_libc_prf+0xae6>
1c00e698:	00074603          	lbu	a2,0(a4)
1c00e69c:	0007c683          	lbu	a3,0(a5)
1c00e6a0:	00c78023          	sb	a2,0(a5)
1c00e6a4:	00d70023          	sb	a3,0(a4)
1c00e6a8:	17fd                	addi	a5,a5,-1
1c00e6aa:	0705                	addi	a4,a4,1
1c00e6ac:	fef766e3          	bltu	a4,a5,1c00e698 <pos_libc_prf+0xace>
1c00e6b0:	57fd                	li	a5,-1
1c00e6b2:	0989                	addi	s3,s3,2
1c00e6b4:	04fa0363          	beq	s4,a5,1c00e6fa <pos_libc_prf+0xb30>
1c00e6b8:	0c800793          	li	a5,200
1c00e6bc:	fb37cd63          	blt	a5,s3,1c00de76 <pos_libc_prf+0x2ac>
1c00e6c0:	02000893          	li	a7,32
1c00e6c4:	c602                	sw	zero,12(sp)
1c00e6c6:	c846                	sw	a7,16(sp)
1c00e6c8:	b20d                	j	1c00dfea <pos_libc_prf+0x420>
1c00e6ca:	fed78fa3          	sb	a3,-1(a5)
1c00e6ce:	f259                	bnez	a2,1c00e654 <pos_libc_prf+0xa8a>
1c00e6d0:	b74d                	j	1c00e672 <pos_libc_prf+0xaa8>
1c00e6d2:	000c2783          	lw	a5,0(s8)
1c00e6d6:	0c11                	addi	s8,s8,4
1c00e6d8:	c380                	sw	s0,0(a5)
1c00e6da:	d36ff06f          	j	1c00dc10 <pos_libc_prf+0x46>
1c00e6de:	0c800713          	li	a4,200
1c00e6e2:	d3b75763          	ble	s11,a4,1c00dc10 <pos_libc_prf+0x46>
1c00e6e6:	547d                	li	s0,-1
1c00e6e8:	d4cff06f          	j	1c00dc34 <pos_libc_prf+0x6a>
1c00e6ec:	ffc50fa3          	sb	t3,-1(a0)
1c00e6f0:	c2a991e3          	bne	s3,a0,1c00e312 <pos_libc_prf+0x748>
1c00e6f4:	c60f86e3          	beqz	t6,1c00e360 <pos_libc_prf+0x796>
1c00e6f8:	b325                	j	1c00e420 <pos_libc_prf+0x856>
1c00e6fa:	0c800793          	li	a5,200
1c00e6fe:	f737cc63          	blt	a5,s3,1c00de76 <pos_libc_prf+0x2ac>
1c00e702:	c602                	sw	zero,12(sp)
1c00e704:	b0dd                	j	1c00dfea <pos_libc_prf+0x420>
1c00e706:	0c800793          	li	a5,200
1c00e70a:	f737c663          	blt	a5,s3,1c00de76 <pos_libc_prf+0x2ac>
1c00e70e:	4705                	li	a4,1
1c00e710:	c63a                	sw	a4,12(sp)
1c00e712:	b8e1                	j	1c00dfea <pos_libc_prf+0x420>
1c00e714:	41390a33          	sub	s4,s2,s3
1c00e718:	00198613          	addi	a2,s3,1
1c00e71c:	85e6                	mv	a1,s9
1c00e71e:	014c8533          	add	a0,s9,s4
1c00e722:	a4aff0ef          	jal	ra,1c00d96c <memmove>
1c00e726:	46c2                	lw	a3,16(sp)
1c00e728:	02000793          	li	a5,32
1c00e72c:	30f68163          	beq	a3,a5,1c00ea2e <pos_libc_prf+0xe64>
1c00e730:	4732                	lw	a4,12(sp)
1c00e732:	89ca                	mv	s3,s2
1c00e734:	9a3a                	add	s4,s4,a4
1c00e736:	f1475d63          	ble	s4,a4,1c00de50 <pos_libc_prf+0x286>
1c00e73a:	4832                	lw	a6,12(sp)
1c00e73c:	4715                	li	a4,5
1c00e73e:	010c87b3          	add	a5,s9,a6
1c00e742:	40f007b3          	neg	a5,a5
1c00e746:	8b8d                	andi	a5,a5,3
1c00e748:	00378693          	addi	a3,a5,3
1c00e74c:	410a05b3          	sub	a1,s4,a6
1c00e750:	00e6f363          	bleu	a4,a3,1c00e756 <pos_libc_prf+0xb8c>
1c00e754:	4695                	li	a3,5
1c00e756:	48b2                	lw	a7,12(sp)
1c00e758:	fffa0713          	addi	a4,s4,-1
1c00e75c:	41170733          	sub	a4,a4,a7
1c00e760:	06d76b63          	bltu	a4,a3,1c00e7d6 <pos_libc_prf+0xc0c>
1c00e764:	86c6                	mv	a3,a7
1c00e766:	cb9d                	beqz	a5,1c00e79c <pos_libc_prf+0xbd2>
1c00e768:	46c2                	lw	a3,16(sp)
1c00e76a:	1988                	addi	a0,sp,240
1c00e76c:	01150733          	add	a4,a0,a7
1c00e770:	f2d70a23          	sb	a3,-204(a4)
1c00e774:	4705                	li	a4,1
1c00e776:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c00e77a:	02e78163          	beq	a5,a4,1c00e79c <pos_libc_prf+0xbd2>
1c00e77e:	4742                	lw	a4,16(sp)
1c00e780:	96aa                	add	a3,a3,a0
1c00e782:	f2e68a23          	sb	a4,-204(a3)
1c00e786:	470d                	li	a4,3
1c00e788:	00288693          	addi	a3,a7,2
1c00e78c:	00e79863          	bne	a5,a4,1c00e79c <pos_libc_prf+0xbd2>
1c00e790:	4842                	lw	a6,16(sp)
1c00e792:	96aa                	add	a3,a3,a0
1c00e794:	f3068a23          	sb	a6,-204(a3)
1c00e798:	00388693          	addi	a3,a7,3
1c00e79c:	48c2                	lw	a7,16(sp)
1c00e79e:	4832                	lw	a6,12(sp)
1c00e7a0:	00889713          	slli	a4,a7,0x8
1c00e7a4:	01089513          	slli	a0,a7,0x10
1c00e7a8:	00e8e733          	or	a4,a7,a4
1c00e7ac:	8d9d                	sub	a1,a1,a5
1c00e7ae:	01889613          	slli	a2,a7,0x18
1c00e7b2:	8f49                	or	a4,a4,a0
1c00e7b4:	97c2                	add	a5,a5,a6
1c00e7b6:	8f51                	or	a4,a4,a2
1c00e7b8:	0025d513          	srli	a0,a1,0x2
1c00e7bc:	97e6                	add	a5,a5,s9
1c00e7be:	4601                	li	a2,0
1c00e7c0:	c398                	sw	a4,0(a5)
1c00e7c2:	0605                	addi	a2,a2,1
1c00e7c4:	0791                	addi	a5,a5,4
1c00e7c6:	fea66de3          	bltu	a2,a0,1c00e7c0 <pos_libc_prf+0xbf6>
1c00e7ca:	ffc5f793          	andi	a5,a1,-4
1c00e7ce:	96be                	add	a3,a3,a5
1c00e7d0:	c636                	sw	a3,12(sp)
1c00e7d2:	e6b78e63          	beq	a5,a1,1c00de4e <pos_libc_prf+0x284>
1c00e7d6:	46b2                	lw	a3,12(sp)
1c00e7d8:	0f010893          	addi	a7,sp,240
1c00e7dc:	4742                	lw	a4,16(sp)
1c00e7de:	00d887b3          	add	a5,a7,a3
1c00e7e2:	f2e78a23          	sb	a4,-204(a5)
1c00e7e6:	00168793          	addi	a5,a3,1
1c00e7ea:	e747d263          	ble	s4,a5,1c00de4e <pos_libc_prf+0x284>
1c00e7ee:	97c6                	add	a5,a5,a7
1c00e7f0:	f2e78a23          	sb	a4,-204(a5)
1c00e7f4:	00268793          	addi	a5,a3,2
1c00e7f8:	e547db63          	ble	s4,a5,1c00de4e <pos_libc_prf+0x284>
1c00e7fc:	97c6                	add	a5,a5,a7
1c00e7fe:	f2e78a23          	sb	a4,-204(a5)
1c00e802:	00368793          	addi	a5,a3,3
1c00e806:	e547d463          	ble	s4,a5,1c00de4e <pos_libc_prf+0x284>
1c00e80a:	97c6                	add	a5,a5,a7
1c00e80c:	f2e78a23          	sb	a4,-204(a5)
1c00e810:	00468793          	addi	a5,a3,4
1c00e814:	e347dd63          	ble	s4,a5,1c00de4e <pos_libc_prf+0x284>
1c00e818:	97c6                	add	a5,a5,a7
1c00e81a:	f2e78a23          	sb	a4,-204(a5)
1c00e81e:	00568a93          	addi	s5,a3,5
1c00e822:	e34ad663          	ble	s4,s5,1c00de4e <pos_libc_prf+0x284>
1c00e826:	9ac6                	add	s5,s5,a7
1c00e828:	f2ea8a23          	sb	a4,-204(s5)
1c00e82c:	89ca                	mv	s3,s2
1c00e82e:	e22ff06f          	j	1c00de50 <pos_libc_prf+0x286>
1c00e832:	4881                	li	a7,0
1c00e834:	1054                	addi	a3,sp,36
1c00e836:	b935                	j	1c00e472 <pos_libc_prf+0x8a8>
1c00e838:	02414783          	lbu	a5,36(sp)
1c00e83c:	1058                	addi	a4,sp,36
1c00e83e:	46e5                	li	a3,25
1c00e840:	c8078ce3          	beqz	a5,1c00e4d8 <pos_libc_prf+0x90e>
1c00e844:	fe078613          	addi	a2,a5,-32
1c00e848:	f9f78793          	addi	a5,a5,-97
1c00e84c:	0ff7f793          	andi	a5,a5,255
1c00e850:	00f6e963          	bltu	a3,a5,1c00e862 <pos_libc_prf+0xc98>
1c00e854:	00c70023          	sb	a2,0(a4)
1c00e858:	0705                	addi	a4,a4,1
1c00e85a:	00074783          	lbu	a5,0(a4)
1c00e85e:	f3fd                	bnez	a5,1c00e844 <pos_libc_prf+0xc7a>
1c00e860:	b9a5                	j	1c00e4d8 <pos_libc_prf+0x90e>
1c00e862:	0705                	addi	a4,a4,1
1c00e864:	00074783          	lbu	a5,0(a4)
1c00e868:	fff1                	bnez	a5,1c00e844 <pos_libc_prf+0xc7a>
1c00e86a:	b1bd                	j	1c00e4d8 <pos_libc_prf+0x90e>
1c00e86c:	47d2                	lw	a5,20(sp)
1c00e86e:	20078263          	beqz	a5,1c00ea72 <pos_libc_prf+0xea8>
1c00e872:	02b00713          	li	a4,43
1c00e876:	02e10223          	sb	a4,36(sp)
1c00e87a:	02510e93          	addi	t4,sp,37
1c00e87e:	4301                	li	t1,0
1c00e880:	4501                	li	a0,0
1c00e882:	4681                	li	a3,0
1c00e884:	4581                	li	a1,0
1c00e886:	b8d5                	j	1c00e17a <pos_libc_prf+0x5b0>
1c00e888:	0c800793          	li	a5,200
1c00e88c:	df37c563          	blt	a5,s3,1c00de76 <pos_libc_prf+0x2ac>
1c00e890:	8c42                	mv	s8,a6
1c00e892:	f58ff06f          	j	1c00dfea <pos_libc_prf+0x420>
1c00e896:	02b00793          	li	a5,43
1c00e89a:	02f10223          	sb	a5,36(sp)
1c00e89e:	02510793          	addi	a5,sp,37
1c00e8a2:	b941                	j	1c00e532 <pos_libc_prf+0x968>
1c00e8a4:	02d00793          	li	a5,45
1c00e8a8:	02f10223          	sb	a5,36(sp)
1c00e8ac:	800007b7          	lui	a5,0x80000
1c00e8b0:	22f58363          	beq	a1,a5,1c00ead6 <pos_libc_prf+0xf0c>
1c00e8b4:	40b00733          	neg	a4,a1
1c00e8b8:	02510793          	addi	a5,sp,37
1c00e8bc:	b99d                	j	1c00e532 <pos_libc_prf+0x968>
1c00e8be:	47b2                	lw	a5,12(sp)
1c00e8c0:	4f81                	li	t6,0
1c00e8c2:	e399                	bnez	a5,1c00e8c8 <pos_libc_prf+0xcfe>
1c00e8c4:	01403fb3          	snez	t6,s4
1c00e8c8:	56f5                	li	a3,-3
1c00e8ca:	001a0e13          	addi	t3,s4,1
1c00e8ce:	00d34463          	blt	t1,a3,1c00e8d6 <pos_libc_prf+0xd0c>
1c00e8d2:	166e5d63          	ble	t1,t3,1c00ea4c <pos_libc_prf+0xe82>
1c00e8d6:	46c1                	li	a3,16
1c00e8d8:	01c6d363          	ble	t3,a3,1c00e8de <pos_libc_prf+0xd14>
1c00e8dc:	4e41                	li	t3,16
1c00e8de:	06700693          	li	a3,103
1c00e8e2:	1e7d                	addi	t3,t3,-1
1c00e8e4:	1add8963          	beq	s11,a3,1c00ea96 <pos_libc_prf+0xecc>
1c00e8e8:	04500d93          	li	s11,69
1c00e8ec:	b0c5                	j	1c00e1cc <pos_libc_prf+0x602>
1c00e8ee:	020102a3          	sb	zero,37(sp)
1c00e8f2:	57fd                	li	a5,-1
1c00e8f4:	89ba                	mv	s3,a4
1c00e8f6:	8c2a                	mv	s8,a0
1c00e8f8:	c6fa0563          	beq	s4,a5,1c00dd62 <pos_libc_prf+0x198>
1c00e8fc:	02000813          	li	a6,32
1c00e900:	c842                	sw	a6,16(sp)
1c00e902:	c60ff06f          	j	1c00dd62 <pos_libc_prf+0x198>
1c00e906:	89b6                	mv	s3,a3
1c00e908:	bdeff06f          	j	1c00dce6 <pos_libc_prf+0x11c>
1c00e90c:	8766                	mv	a4,s9
1c00e90e:	1c084c63          	bltz	a6,1c00eae6 <pos_libc_prf+0xf1c>
1c00e912:	8e55                	or	a2,a2,a3
1c00e914:	fbfd8793          	addi	a5,s11,-65
1c00e918:	00370993          	addi	s3,a4,3
1c00e91c:	46e5                	li	a3,25
1c00e91e:	10061a63          	bnez	a2,1c00ea32 <pos_libc_prf+0xe68>
1c00e922:	16f6ee63          	bltu	a3,a5,1c00ea9e <pos_libc_prf+0xed4>
1c00e926:	6795                	lui	a5,0x5
1c00e928:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c00e92c:	00f71023          	sh	a5,0(a4)
1c00e930:	04600793          	li	a5,70
1c00e934:	00f70123          	sb	a5,2(a4)
1c00e938:	000701a3          	sb	zero,3(a4)
1c00e93c:	419989b3          	sub	s3,s3,s9
1c00e940:	b48d                	j	1c00e3a2 <pos_libc_prf+0x7d8>
1c00e942:	85e6                	mv	a1,s9
1c00e944:	8766                	mv	a4,s9
1c00e946:	e38ff06f          	j	1c00df7e <pos_libc_prf+0x3b4>
1c00e94a:	a00a09e3          	beqz	s4,1c00e35c <pos_libc_prf+0x792>
1c00e94e:	02e00693          	li	a3,46
1c00e952:	002e8513          	addi	a0,t4,2
1c00e956:	00de80a3          	sb	a3,1(t4)
1c00e95a:	b27d                	j	1c00e308 <pos_libc_prf+0x73e>
1c00e95c:	14605b63          	blez	t1,1c00eab2 <pos_libc_prf+0xee8>
1c00e960:	006e89b3          	add	s3,t4,t1
1c00e964:	4541                	li	a0,16
1c00e966:	03000893          	li	a7,48
1c00e96a:	00271793          	slli	a5,a4,0x2
1c00e96e:	01e75313          	srli	t1,a4,0x1e
1c00e972:	00261693          	slli	a3,a2,0x2
1c00e976:	00e78833          	add	a6,a5,a4
1c00e97a:	00d366b3          	or	a3,t1,a3
1c00e97e:	96b2                	add	a3,a3,a2
1c00e980:	00f837b3          	sltu	a5,a6,a5
1c00e984:	97b6                	add	a5,a5,a3
1c00e986:	0786                	slli	a5,a5,0x1
1c00e988:	01f85693          	srli	a3,a6,0x1f
1c00e98c:	8fd5                	or	a5,a5,a3
1c00e98e:	01c7d693          	srli	a3,a5,0x1c
1c00e992:	03068693          	addi	a3,a3,48
1c00e996:	02a05063          	blez	a0,1c00e9b6 <pos_libc_prf+0xdec>
1c00e99a:	00181713          	slli	a4,a6,0x1
1c00e99e:	10000837          	lui	a6,0x10000
1c00e9a2:	187d                	addi	a6,a6,-1
1c00e9a4:	fed58fa3          	sb	a3,-1(a1)
1c00e9a8:	157d                	addi	a0,a0,-1
1c00e9aa:	0107f633          	and	a2,a5,a6
1c00e9ae:	00b98863          	beq	s3,a1,1c00e9be <pos_libc_prf+0xdf4>
1c00e9b2:	0585                	addi	a1,a1,1
1c00e9b4:	bf5d                	j	1c00e96a <pos_libc_prf+0xda0>
1c00e9b6:	ff158fa3          	sb	a7,-1(a1)
1c00e9ba:	feb99ce3          	bne	s3,a1,1c00e9b2 <pos_libc_prf+0xde8>
1c00e9be:	4301                	li	t1,0
1c00e9c0:	48b2                	lw	a7,12(sp)
1c00e9c2:	00089463          	bnez	a7,1c00e9ca <pos_libc_prf+0xe00>
1c00e9c6:	a40a0be3          	beqz	s4,1c00e41c <pos_libc_prf+0x852>
1c00e9ca:	00198813          	addi	a6,s3,1
1c00e9ce:	001a0693          	addi	a3,s4,1
1c00e9d2:	02e00593          	li	a1,46
1c00e9d6:	00b98023          	sb	a1,0(s3)
1c00e9da:	99b6                	add	s3,s3,a3
1c00e9dc:	85c2                	mv	a1,a6
1c00e9de:	03000693          	li	a3,48
1c00e9e2:	a2b98be3          	beq	s3,a1,1c00e418 <pos_libc_prf+0x84e>
1c00e9e6:	0585                	addi	a1,a1,1
1c00e9e8:	9e0302e3          	beqz	t1,1c00e3cc <pos_libc_prf+0x802>
1c00e9ec:	fed58fa3          	sb	a3,-1(a1)
1c00e9f0:	0305                	addi	t1,t1,1
1c00e9f2:	bfc5                	j	1c00e9e2 <pos_libc_prf+0xe18>
1c00e9f4:	4a19                	li	s4,6
1c00e9f6:	fadd9b63          	bne	s11,a3,1c00e1ac <pos_libc_prf+0x5e2>
1c00e9fa:	46b2                	lw	a3,12(sp)
1c00e9fc:	57f5                	li	a5,-3
1c00e9fe:	0016cf93          	xori	t6,a3,1
1c00ea02:	08f35663          	ble	a5,t1,1c00ea8e <pos_libc_prf+0xec4>
1c00ea06:	06500d93          	li	s11,101
1c00ea0a:	4e19                	li	t3,6
1c00ea0c:	fc0ff06f          	j	1c00e1cc <pos_libc_prf+0x602>
1c00ea10:	0c800793          	li	a5,200
1c00ea14:	c737c163          	blt	a5,s3,1c00de76 <pos_libc_prf+0x2ac>
1c00ea18:	8c2a                	mv	s8,a0
1c00ea1a:	c602                	sw	zero,12(sp)
1c00ea1c:	dceff06f          	j	1c00dfea <pos_libc_prf+0x420>
1c00ea20:	02d00793          	li	a5,45
1c00ea24:	40600333          	neg	t1,t1
1c00ea28:	00f980a3          	sb	a5,1(s3)
1c00ea2c:	ba89                	j	1c00e37e <pos_libc_prf+0x7b4>
1c00ea2e:	c602                	sw	zero,12(sp)
1c00ea30:	b329                	j	1c00e73a <pos_libc_prf+0xb70>
1c00ea32:	0cf6ed63          	bltu	a3,a5,1c00eb0c <pos_libc_prf+0xf42>
1c00ea36:	6791                	lui	a5,0x4
1c00ea38:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c00ea3c:	00f71023          	sh	a5,0(a4)
1c00ea40:	04e00793          	li	a5,78
1c00ea44:	00f70123          	sb	a5,2(a4)
1c00ea48:	bdc5                	j	1c00e938 <pos_libc_prf+0xd6e>
1c00ea4a:	4f81                	li	t6,0
1c00ea4c:	014307b3          	add	a5,t1,s4
1c00ea50:	0807c863          	bltz	a5,1c00eae0 <pos_libc_prf+0xf16>
1c00ea54:	46c1                	li	a3,16
1c00ea56:	8e3e                	mv	t3,a5
1c00ea58:	00f6d363          	ble	a5,a3,1c00ea5e <pos_libc_prf+0xe94>
1c00ea5c:	4e41                	li	t3,16
1c00ea5e:	1e7d                	addi	t3,t3,-1
1c00ea60:	06600d93          	li	s11,102
1c00ea64:	f6079463          	bnez	a5,1c00e1cc <pos_libc_prf+0x602>
1c00ea68:	4681                	li	a3,0
1c00ea6a:	08000637          	lui	a2,0x8000
1c00ea6e:	fc8ff06f          	j	1c00e236 <pos_libc_prf+0x66c>
1c00ea72:	47e2                	lw	a5,24(sp)
1c00ea74:	c7d5                	beqz	a5,1c00eb20 <pos_libc_prf+0xf56>
1c00ea76:	02000713          	li	a4,32
1c00ea7a:	02e10223          	sb	a4,36(sp)
1c00ea7e:	02510e93          	addi	t4,sp,37
1c00ea82:	4301                	li	t1,0
1c00ea84:	4501                	li	a0,0
1c00ea86:	4681                	li	a3,0
1c00ea88:	4581                	li	a1,0
1c00ea8a:	ef0ff06f          	j	1c00e17a <pos_libc_prf+0x5b0>
1c00ea8e:	479d                	li	a5,7
1c00ea90:	fa67dee3          	ble	t1,a5,1c00ea4c <pos_libc_prf+0xe82>
1c00ea94:	4e19                	li	t3,6
1c00ea96:	06500d93          	li	s11,101
1c00ea9a:	f32ff06f          	j	1c00e1cc <pos_libc_prf+0x602>
1c00ea9e:	679d                	lui	a5,0x7
1c00eaa0:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c00eaa4:	00f71023          	sh	a5,0(a4)
1c00eaa8:	06600793          	li	a5,102
1c00eaac:	00f70123          	sb	a5,2(a4)
1c00eab0:	b561                	j	1c00e938 <pos_libc_prf+0xd6e>
1c00eab2:	03000693          	li	a3,48
1c00eab6:	00de8023          	sb	a3,0(t4)
1c00eaba:	4541                	li	a0,16
1c00eabc:	b711                	j	1c00e9c0 <pos_libc_prf+0xdf6>
1c00eabe:	48e2                	lw	a7,24(sp)
1c00eac0:	8ee6                	mv	t4,s9
1c00eac2:	dc088e63          	beqz	a7,1c00e09e <pos_libc_prf+0x4d4>
1c00eac6:	02000713          	li	a4,32
1c00eaca:	02e10223          	sb	a4,36(sp)
1c00eace:	02510e93          	addi	t4,sp,37
1c00ead2:	dccff06f          	j	1c00e09e <pos_libc_prf+0x4d4>
1c00ead6:	80000737          	lui	a4,0x80000
1c00eada:	02510793          	addi	a5,sp,37
1c00eade:	bc91                	j	1c00e532 <pos_libc_prf+0x968>
1c00eae0:	06600d93          	li	s11,102
1c00eae4:	b751                	j	1c00ea68 <pos_libc_prf+0xe9e>
1c00eae6:	02d00713          	li	a4,45
1c00eaea:	02e10223          	sb	a4,36(sp)
1c00eaee:	02510713          	addi	a4,sp,37
1c00eaf2:	b505                	j	1c00e912 <pos_libc_prf+0xd48>
1c00eaf4:	a40a5d63          	bgez	s4,1c00dd4e <pos_libc_prf+0x184>
1c00eaf8:	a62ff06f          	j	1c00dd5a <pos_libc_prf+0x190>
1c00eafc:	02d00713          	li	a4,45
1c00eb00:	02e10223          	sb	a4,36(sp)
1c00eb04:	02510e93          	addi	t4,sp,37
1c00eb08:	d96ff06f          	j	1c00e09e <pos_libc_prf+0x4d4>
1c00eb0c:	6799                	lui	a5,0x6
1c00eb0e:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c00eb12:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00eb16:	06e00793          	li	a5,110
1c00eb1a:	00f70123          	sb	a5,2(a4)
1c00eb1e:	bd29                	j	1c00e938 <pos_libc_prf+0xd6e>
1c00eb20:	8ee6                	mv	t4,s9
1c00eb22:	b785                	j	1c00ea82 <pos_libc_prf+0xeb8>
1c00eb24:	89aa                	mv	s3,a0
1c00eb26:	820f8de3          	beqz	t6,1c00e360 <pos_libc_prf+0x796>
1c00eb2a:	b8dd                	j	1c00e420 <pos_libc_prf+0x856>

1c00eb2c <pos_init_start>:
1c00eb2c:	1141                	addi	sp,sp,-16
1c00eb2e:	c422                	sw	s0,8(sp)
1c00eb30:	1c000437          	lui	s0,0x1c000
1c00eb34:	c606                	sw	ra,12(sp)
1c00eb36:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00eb3a:	e1cfc0ef          	jal	ra,1c00b156 <pos_soc_init>
1c00eb3e:	2275                	jal	1c00ecea <pos_irq_init>
1c00eb40:	2ae1                	jal	1c00ed18 <pos_soc_event_init>
1c00eb42:	2a31                	jal	1c00ec5e <pos_allocs_init>
1c00eb44:	405c                	lw	a5,4(s0)
1c00eb46:	c791                	beqz	a5,1c00eb52 <pos_init_start+0x26>
1c00eb48:	0411                	addi	s0,s0,4
1c00eb4a:	0411                	addi	s0,s0,4
1c00eb4c:	9782                	jalr	a5
1c00eb4e:	401c                	lw	a5,0(s0)
1c00eb50:	ffed                	bnez	a5,1c00eb4a <pos_init_start+0x1e>
1c00eb52:	842ff0ef          	jal	ra,1c00db94 <pos_io_start>
1c00eb56:	300467f3          	csrrsi	a5,mstatus,8
1c00eb5a:	40b2                	lw	ra,12(sp)
1c00eb5c:	4422                	lw	s0,8(sp)
1c00eb5e:	0141                	addi	sp,sp,16
1c00eb60:	8082                	ret

1c00eb62 <pos_init_stop>:
1c00eb62:	1141                	addi	sp,sp,-16
1c00eb64:	c422                	sw	s0,8(sp)
1c00eb66:	1c000437          	lui	s0,0x1c000
1c00eb6a:	c606                	sw	ra,12(sp)
1c00eb6c:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00eb70:	828ff0ef          	jal	ra,1c00db98 <pos_io_stop>
1c00eb74:	405c                	lw	a5,4(s0)
1c00eb76:	c791                	beqz	a5,1c00eb82 <pos_init_stop+0x20>
1c00eb78:	0411                	addi	s0,s0,4
1c00eb7a:	0411                	addi	s0,s0,4
1c00eb7c:	9782                	jalr	a5
1c00eb7e:	401c                	lw	a5,0(s0)
1c00eb80:	ffed                	bnez	a5,1c00eb7a <pos_init_stop+0x18>
1c00eb82:	40b2                	lw	ra,12(sp)
1c00eb84:	4422                	lw	s0,8(sp)
1c00eb86:	0141                	addi	sp,sp,16
1c00eb88:	8082                	ret

1c00eb8a <pos_alloc_init>:
1c00eb8a:	00758793          	addi	a5,a1,7
1c00eb8e:	9be1                	andi	a5,a5,-8
1c00eb90:	40b785b3          	sub	a1,a5,a1
1c00eb94:	c11c                	sw	a5,0(a0)
1c00eb96:	8e0d                	sub	a2,a2,a1
1c00eb98:	00c05663          	blez	a2,1c00eba4 <pos_alloc_init+0x1a>
1c00eb9c:	9a61                	andi	a2,a2,-8
1c00eb9e:	c390                	sw	a2,0(a5)
1c00eba0:	0007a223          	sw	zero,4(a5)
1c00eba4:	8082                	ret

1c00eba6 <pos_alloc>:
1c00eba6:	4110                	lw	a2,0(a0)
1c00eba8:	059d                	addi	a1,a1,7
1c00ebaa:	99e1                	andi	a1,a1,-8
1c00ebac:	ca31                	beqz	a2,1c00ec00 <pos_alloc+0x5a>
1c00ebae:	4218                	lw	a4,0(a2)
1c00ebb0:	425c                	lw	a5,4(a2)
1c00ebb2:	02b75963          	ble	a1,a4,1c00ebe4 <pos_alloc+0x3e>
1c00ebb6:	cb81                	beqz	a5,1c00ebc6 <pos_alloc+0x20>
1c00ebb8:	4398                	lw	a4,0(a5)
1c00ebba:	43d4                	lw	a3,4(a5)
1c00ebbc:	00b75763          	ble	a1,a4,1c00ebca <pos_alloc+0x24>
1c00ebc0:	863e                	mv	a2,a5
1c00ebc2:	87b6                	mv	a5,a3
1c00ebc4:	fbf5                	bnez	a5,1c00ebb8 <pos_alloc+0x12>
1c00ebc6:	853e                	mv	a0,a5
1c00ebc8:	8082                	ret
1c00ebca:	00b70a63          	beq	a4,a1,1c00ebde <pos_alloc+0x38>
1c00ebce:	00b78533          	add	a0,a5,a1
1c00ebd2:	8f0d                	sub	a4,a4,a1
1c00ebd4:	c118                	sw	a4,0(a0)
1c00ebd6:	c154                	sw	a3,4(a0)
1c00ebd8:	c248                	sw	a0,4(a2)
1c00ebda:	853e                	mv	a0,a5
1c00ebdc:	8082                	ret
1c00ebde:	c254                	sw	a3,4(a2)
1c00ebe0:	853e                	mv	a0,a5
1c00ebe2:	8082                	ret
1c00ebe4:	00e58b63          	beq	a1,a4,1c00ebfa <pos_alloc+0x54>
1c00ebe8:	00b606b3          	add	a3,a2,a1
1c00ebec:	8f0d                	sub	a4,a4,a1
1c00ebee:	c2dc                	sw	a5,4(a3)
1c00ebf0:	c298                	sw	a4,0(a3)
1c00ebf2:	87b2                	mv	a5,a2
1c00ebf4:	c114                	sw	a3,0(a0)
1c00ebf6:	853e                	mv	a0,a5
1c00ebf8:	8082                	ret
1c00ebfa:	c11c                	sw	a5,0(a0)
1c00ebfc:	87b2                	mv	a5,a2
1c00ebfe:	b7e1                	j	1c00ebc6 <pos_alloc+0x20>
1c00ec00:	4781                	li	a5,0
1c00ec02:	b7d1                	j	1c00ebc6 <pos_alloc+0x20>

1c00ec04 <pos_free>:
1c00ec04:	4118                	lw	a4,0(a0)
1c00ec06:	061d                	addi	a2,a2,7
1c00ec08:	9a61                	andi	a2,a2,-8
1c00ec0a:	c729                	beqz	a4,1c00ec54 <pos_free+0x50>
1c00ec0c:	00b76663          	bltu	a4,a1,1c00ec18 <pos_free+0x14>
1c00ec10:	a0a1                	j	1c00ec58 <pos_free+0x54>
1c00ec12:	00b7f563          	bleu	a1,a5,1c00ec1c <pos_free+0x18>
1c00ec16:	873e                	mv	a4,a5
1c00ec18:	435c                	lw	a5,4(a4)
1c00ec1a:	ffe5                	bnez	a5,1c00ec12 <pos_free+0xe>
1c00ec1c:	00c586b3          	add	a3,a1,a2
1c00ec20:	02d78463          	beq	a5,a3,1c00ec48 <pos_free+0x44>
1c00ec24:	c190                	sw	a2,0(a1)
1c00ec26:	c1dc                	sw	a5,4(a1)
1c00ec28:	cf11                	beqz	a4,1c00ec44 <pos_free+0x40>
1c00ec2a:	431c                	lw	a5,0(a4)
1c00ec2c:	00f706b3          	add	a3,a4,a5
1c00ec30:	00d58463          	beq	a1,a3,1c00ec38 <pos_free+0x34>
1c00ec34:	c34c                	sw	a1,4(a4)
1c00ec36:	8082                	ret
1c00ec38:	4194                	lw	a3,0(a1)
1c00ec3a:	41d0                	lw	a2,4(a1)
1c00ec3c:	97b6                	add	a5,a5,a3
1c00ec3e:	c31c                	sw	a5,0(a4)
1c00ec40:	c350                	sw	a2,4(a4)
1c00ec42:	8082                	ret
1c00ec44:	c10c                	sw	a1,0(a0)
1c00ec46:	8082                	ret
1c00ec48:	4394                	lw	a3,0(a5)
1c00ec4a:	43dc                	lw	a5,4(a5)
1c00ec4c:	9636                	add	a2,a2,a3
1c00ec4e:	c190                	sw	a2,0(a1)
1c00ec50:	c1dc                	sw	a5,4(a1)
1c00ec52:	bfd9                	j	1c00ec28 <pos_free+0x24>
1c00ec54:	4781                	li	a5,0
1c00ec56:	b7d9                	j	1c00ec1c <pos_free+0x18>
1c00ec58:	87ba                	mv	a5,a4
1c00ec5a:	4701                	li	a4,0
1c00ec5c:	b7c1                	j	1c00ec1c <pos_free+0x18>

1c00ec5e <pos_allocs_init>:
1c00ec5e:	1141                	addi	sp,sp,-16
1c00ec60:	1c0065b7          	lui	a1,0x1c006
1c00ec64:	c606                	sw	ra,12(sp)
1c00ec66:	28458793          	addi	a5,a1,644 # 1c006284 <__l2_priv0_end>
1c00ec6a:	1c008637          	lui	a2,0x1c008
1c00ec6e:	04c7cc63          	blt	a5,a2,1c00ecc6 <pos_allocs_init+0x68>
1c00ec72:	4581                	li	a1,0
1c00ec74:	4601                	li	a2,0
1c00ec76:	1c006537          	lui	a0,0x1c006
1c00ec7a:	27850513          	addi	a0,a0,632 # 1c006278 <pos_alloc_l2>
1c00ec7e:	3731                	jal	1c00eb8a <pos_alloc_init>
1c00ec80:	1c00f5b7          	lui	a1,0x1c00f
1c00ec84:	d3058793          	addi	a5,a1,-720 # 1c00ed30 <__l2_priv1_end>
1c00ec88:	1c010637          	lui	a2,0x1c010
1c00ec8c:	02c7c963          	blt	a5,a2,1c00ecbe <pos_allocs_init+0x60>
1c00ec90:	4581                	li	a1,0
1c00ec92:	4601                	li	a2,0
1c00ec94:	1c006537          	lui	a0,0x1c006
1c00ec98:	27c50513          	addi	a0,a0,636 # 1c00627c <pos_alloc_l2+0x4>
1c00ec9c:	35fd                	jal	1c00eb8a <pos_alloc_init>
1c00ec9e:	1c0105b7          	lui	a1,0x1c010
1c00eca2:	00058793          	mv	a5,a1
1c00eca6:	40b2                	lw	ra,12(sp)
1c00eca8:	1c080637          	lui	a2,0x1c080
1c00ecac:	1c006537          	lui	a0,0x1c006
1c00ecb0:	8e1d                	sub	a2,a2,a5
1c00ecb2:	00058593          	mv	a1,a1
1c00ecb6:	28050513          	addi	a0,a0,640 # 1c006280 <pos_alloc_l2+0x8>
1c00ecba:	0141                	addi	sp,sp,16
1c00ecbc:	b5f9                	j	1c00eb8a <pos_alloc_init>
1c00ecbe:	8e1d                	sub	a2,a2,a5
1c00ecc0:	d3058593          	addi	a1,a1,-720 # 1c00fd30 <__l2_priv1_end+0x1000>
1c00ecc4:	bfc1                	j	1c00ec94 <pos_allocs_init+0x36>
1c00ecc6:	8e1d                	sub	a2,a2,a5
1c00ecc8:	28458593          	addi	a1,a1,644
1c00eccc:	b76d                	j	1c00ec76 <pos_allocs_init+0x18>

1c00ecce <pi_l2_malloc>:
1c00ecce:	85aa                	mv	a1,a0
1c00ecd0:	1c006537          	lui	a0,0x1c006
1c00ecd4:	27850513          	addi	a0,a0,632 # 1c006278 <pos_alloc_l2>
1c00ecd8:	b5f9                	j	1c00eba6 <pos_alloc>

1c00ecda <pi_l2_free>:
1c00ecda:	862e                	mv	a2,a1
1c00ecdc:	85aa                	mv	a1,a0
1c00ecde:	1c006537          	lui	a0,0x1c006
1c00ece2:	27850513          	addi	a0,a0,632 # 1c006278 <pos_alloc_l2>
1c00ece6:	bf39                	j	1c00ec04 <pos_free>

1c00ece8 <__rt_handle_illegal_instr>:
1c00ece8:	8082                	ret

1c00ecea <pos_irq_init>:
1c00ecea:	1a10a737          	lui	a4,0x1a10a
1c00ecee:	f14027f3          	csrr	a5,mhartid
1c00ecf2:	56fd                	li	a3,-1
1c00ecf4:	8795                	srai	a5,a5,0x5
1c00ecf6:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00ecfa:	03f7f793          	andi	a5,a5,63
1c00ecfe:	477d                	li	a4,31
1c00ed00:	00e78363          	beq	a5,a4,1c00ed06 <pos_irq_init+0x1c>
1c00ed04:	8082                	ret
1c00ed06:	1c0087b7          	lui	a5,0x1c008
1c00ed0a:	00078793          	mv	a5,a5
1c00ed0e:	0017e793          	ori	a5,a5,1
1c00ed12:	30579073          	csrw	mtvec,a5
1c00ed16:	8082                	ret

1c00ed18 <pos_soc_event_init>:
1c00ed18:	1a1067b7          	lui	a5,0x1a106
1c00ed1c:	577d                	li	a4,-1
1c00ed1e:	c3d8                	sw	a4,4(a5)
1c00ed20:	c798                	sw	a4,8(a5)
1c00ed22:	c7d8                	sw	a4,12(a5)
1c00ed24:	cb98                	sw	a4,16(a5)
1c00ed26:	cbd8                	sw	a4,20(a5)
1c00ed28:	cf98                	sw	a4,24(a5)
1c00ed2a:	cfd8                	sw	a4,28(a5)
1c00ed2c:	d398                	sw	a4,32(a5)
1c00ed2e:	8082                	ret
