riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber1024/dec/build/dec/dec

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber1024/dec/build/dec/dec:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	21f0706f          	j	1c00fa1e <__rt_handle_illegal_instr>
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
1c008084:	19b0706f          	j	1c00fa1e <__rt_handle_illegal_instr>

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
1c0080c8:	fffff317          	auipc	t1,0xfffff
1c0080cc:	47c30313          	addi	t1,t1,1148 # 1c007544 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	18610113          	addi	sp,sp,390 # 1c006260 <stack>
1c0080e2:	780070ef          	jal	ra,1c00f862 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	79c070ef          	jal	ra,1c00f898 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	7b4060ef          	jal	ra,1c00e8b6 <exit>

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
1c008142:	1101                	addi	sp,sp,-32
1c008144:	1c0067b7          	lui	a5,0x1c006
1c008148:	ca26                	sw	s1,20(sp)
1c00814a:	28078493          	addi	s1,a5,640 # 1c006280 <key_b.1507>
1c00814e:	fa39c7b7          	lui	a5,0xfa39c
1c008152:	31978793          	addi	a5,a5,793 # fa39c319 <pulp__FC+0xfa39c31a>
1c008156:	c09c                	sw	a5,0(s1)
1c008158:	594ef7b7          	lui	a5,0x594ef
1c00815c:	a0a78793          	addi	a5,a5,-1526 # 594eea0a <__l2_shared_end+0x3d4dea0a>
1c008160:	c0dc                	sw	a5,4(s1)
1c008162:	ac2a87b7          	lui	a5,0xac2a8
1c008166:	96678793          	addi	a5,a5,-1690 # ac2a7966 <pulp__FC+0xac2a7967>
1c00816a:	c49c                	sw	a5,8(s1)
1c00816c:	17cf17b7          	lui	a5,0x17cf1
1c008170:	3eb78793          	addi	a5,a5,1003 # 17cf13eb <__CTOR_LIST__-0x430ec19>
1c008174:	c4dc                	sw	a5,12(s1)
1c008176:	4a6ea7b7          	lui	a5,0x4a6ea
1c00817a:	05b78793          	addi	a5,a5,91 # 4a6ea05b <__l2_shared_end+0x2e6da05b>
1c00817e:	c89c                	sw	a5,16(s1)
1c008180:	ae0e07b7          	lui	a5,0xae0e0
1c008184:	39578793          	addi	a5,a5,917 # ae0e0395 <pulp__FC+0xae0e0396>
1c008188:	c8dc                	sw	a5,20(s1)
1c00818a:	a610c7b7          	lui	a5,0xa610c
1c00818e:	f9f78793          	addi	a5,a5,-97 # a610bf9f <pulp__FC+0xa610bfa0>
1c008192:	cc9c                	sw	a5,24(s1)
1c008194:	0d4687b7          	lui	a5,0xd468
1c008198:	e2b78793          	addi	a5,a5,-469 # d467e2b <__CTOR_LIST__-0xeb981d9>
1c00819c:	1c0065b7          	lui	a1,0x1c006
1c0081a0:	ccdc                	sw	a5,28(s1)
1c0081a2:	267867b7          	lui	a5,0x26786
1c0081a6:	2a058713          	addi	a4,a1,672 # 1c0062a0 <sendb.1509>
1c0081aa:	ce06                	sw	ra,28(sp)
1c0081ac:	cc22                	sw	s0,24(sp)
1c0081ae:	c84a                	sw	s2,16(sp)
1c0081b0:	c64e                	sw	s3,12(sp)
1c0081b2:	c452                	sw	s4,8(sp)
1c0081b4:	13578793          	addi	a5,a5,309 # 26786135 <__l2_shared_end+0xa776135>
1c0081b8:	c31c                	sw	a5,0(a4)
1c0081ba:	f56e97b7          	lui	a5,0xf56e9
1c0081be:	82a78793          	addi	a5,a5,-2006 # f56e882a <pulp__FC+0xf56e882b>
1c0081c2:	c35c                	sw	a5,4(a4)
1c0081c4:	dcdbd7b7          	lui	a5,0xdcdbd
1c0081c8:	93078793          	addi	a5,a5,-1744 # dcdbc930 <pulp__FC+0xdcdbc931>
1c0081cc:	c71c                	sw	a5,8(a4)
1c0081ce:	11db87b7          	lui	a5,0x11db8
1c0081d2:	ef578793          	addi	a5,a5,-267 # 11db7ef5 <__CTOR_LIST__-0xa24810f>
1c0081d6:	c75c                	sw	a5,12(a4)
1c0081d8:	d6d177b7          	lui	a5,0xd6d17
1c0081dc:	b4178793          	addi	a5,a5,-1215 # d6d16b41 <pulp__FC+0xd6d16b42>
1c0081e0:	cb1c                	sw	a5,16(a4)
1c0081e2:	95b7d7b7          	lui	a5,0x95b7d
1c0081e6:	a8878793          	addi	a5,a5,-1400 # 95b7ca88 <pulp__FC+0x95b7ca89>
1c0081ea:	cb5c                	sw	a5,20(a4)
1c0081ec:	4a7117b7          	lui	a5,0x4a711
1c0081f0:	d4e78793          	addi	a5,a5,-690 # 4a710d4e <__l2_shared_end+0x2e700d4e>
1c0081f4:	cf1c                	sw	a5,24(a4)
1c0081f6:	83d897b7          	lui	a5,0x83d89
1c0081fa:	7ec78793          	addi	a5,a5,2028 # 83d897ec <pulp__FC+0x83d897ed>
1c0081fe:	cf5c                	sw	a5,28(a4)
1c008200:	5b47a7b7          	lui	a5,0x5b47a
1c008204:	a5878793          	addi	a5,a5,-1448 # 5b479a58 <__l2_shared_end+0x3f469a58>
1c008208:	d31c                	sw	a5,32(a4)
1c00820a:	904667b7          	lui	a5,0x90466
1c00820e:	41878793          	addi	a5,a5,1048 # 90466418 <pulp__FC+0x90466419>
1c008212:	d35c                	sw	a5,36(a4)
1c008214:	24ab67b7          	lui	a5,0x24ab6
1c008218:	24478793          	addi	a5,a5,580 # 24ab6244 <__l2_shared_end+0x8aa6244>
1c00821c:	d71c                	sw	a5,40(a4)
1c00821e:	461ef7b7          	lui	a5,0x461ef
1c008222:	7bf78793          	addi	a5,a5,1983 # 461ef7bf <__l2_shared_end+0x2a1df7bf>
1c008226:	d75c                	sw	a5,44(a4)
1c008228:	80d077b7          	lui	a5,0x80d07
1c00822c:	e1378793          	addi	a5,a5,-493 # 80d06e13 <pulp__FC+0x80d06e14>
1c008230:	db1c                	sw	a5,48(a4)
1c008232:	4f5767b7          	lui	a5,0x4f576
1c008236:	f4478793          	addi	a5,a5,-188 # 4f575f44 <__l2_shared_end+0x33565f44>
1c00823a:	db5c                	sw	a5,52(a4)
1c00823c:	953ce7b7          	lui	a5,0x953ce
1c008240:	4f378793          	addi	a5,a5,1267 # 953ce4f3 <pulp__FC+0x953ce4f4>
1c008244:	df1c                	sw	a5,56(a4)
1c008246:	a32ed7b7          	lui	a5,0xa32ed
1c00824a:	b9078793          	addi	a5,a5,-1136 # a32ecb90 <pulp__FC+0xa32ecb91>
1c00824e:	df5c                	sw	a5,60(a4)
1c008250:	bd8ab7b7          	lui	a5,0xbd8ab
1c008254:	71a78793          	addi	a5,a5,1818 # bd8ab71a <pulp__FC+0xbd8ab71b>
1c008258:	c33c                	sw	a5,64(a4)
1c00825a:	f38f87b7          	lui	a5,0xf38f8
1c00825e:	79978793          	addi	a5,a5,1945 # f38f8799 <pulp__FC+0xf38f879a>
1c008262:	c37c                	sw	a5,68(a4)
1c008264:	57a417b7          	lui	a5,0x57a41
1c008268:	72378793          	addi	a5,a5,1827 # 57a41723 <__l2_shared_end+0x3ba31723>
1c00826c:	c73c                	sw	a5,72(a4)
1c00826e:	bff737b7          	lui	a5,0xbff73
1c008272:	47178793          	addi	a5,a5,1137 # bff73471 <pulp__FC+0xbff73472>
1c008276:	c77c                	sw	a5,76(a4)
1c008278:	7ce557b7          	lui	a5,0x7ce55
1c00827c:	7e378793          	addi	a5,a5,2019 # 7ce557e3 <__l2_shared_end+0x60e457e3>
1c008280:	cb3c                	sw	a5,80(a4)
1c008282:	79dee7b7          	lui	a5,0x79dee
1c008286:	db978793          	addi	a5,a5,-583 # 79deddb9 <__l2_shared_end+0x5dddddb9>
1c00828a:	cb7c                	sw	a5,84(a4)
1c00828c:	99dfa7b7          	lui	a5,0x99dfa
1c008290:	bb878793          	addi	a5,a5,-1096 # 99df9bb8 <pulp__FC+0x99df9bb9>
1c008294:	cf3c                	sw	a5,88(a4)
1c008296:	7fb3a7b7          	lui	a5,0x7fb3a
1c00829a:	64478793          	addi	a5,a5,1604 # 7fb3a644 <__l2_shared_end+0x63b2a644>
1c00829e:	cf7c                	sw	a5,92(a4)
1c0082a0:	454cc7b7          	lui	a5,0x454cc
1c0082a4:	9e078793          	addi	a5,a5,-1568 # 454cb9e0 <__l2_shared_end+0x294bb9e0>
1c0082a8:	d33c                	sw	a5,96(a4)
1c0082aa:	e40327b7          	lui	a5,0xe4032
1c0082ae:	09278793          	addi	a5,a5,146 # e4032092 <pulp__FC+0xe4032093>
1c0082b2:	d37c                	sw	a5,100(a4)
1c0082b4:	7878c7b7          	lui	a5,0x7878c
1c0082b8:	deb78793          	addi	a5,a5,-533 # 7878bdeb <__l2_shared_end+0x5c77bdeb>
1c0082bc:	d73c                	sw	a5,104(a4)
1c0082be:	5430f7b7          	lui	a5,0x5430f
1c0082c2:	83978793          	addi	a5,a5,-1991 # 5430e839 <__l2_shared_end+0x382fe839>
1c0082c6:	d77c                	sw	a5,108(a4)
1c0082c8:	9bc107b7          	lui	a5,0x9bc10
1c0082cc:	c9d78793          	addi	a5,a5,-867 # 9bc0fc9d <pulp__FC+0x9bc0fc9e>
1c0082d0:	db3c                	sw	a5,112(a4)
1c0082d2:	e75887b7          	lui	a5,0xe7588
1c0082d6:	41c78793          	addi	a5,a5,1052 # e758841c <pulp__FC+0xe758841d>
1c0082da:	db7c                	sw	a5,116(a4)
1c0082dc:	c2cea7b7          	lui	a5,0xc2cea
1c0082e0:	bfc78793          	addi	a5,a5,-1028 # c2ce9bfc <pulp__FC+0xc2ce9bfd>
1c0082e4:	df3c                	sw	a5,120(a4)
1c0082e6:	d087c7b7          	lui	a5,0xd087c
1c0082ea:	40478793          	addi	a5,a5,1028 # d087c404 <pulp__FC+0xd087c405>
1c0082ee:	df7c                	sw	a5,124(a4)
1c0082f0:	1f4117b7          	lui	a5,0x1f411
1c0082f4:	ace78793          	addi	a5,a5,-1330 # 1f410ace <__l2_shared_end+0x3400ace>
1c0082f8:	08f72023          	sw	a5,128(a4) # 1000080 <__CTOR_LIST__-0x1affff84>
1c0082fc:	5fc307b7          	lui	a5,0x5fc30
1c008300:	d3e78793          	addi	a5,a5,-706 # 5fc2fd3e <__l2_shared_end+0x43c1fd3e>
1c008304:	08f72223          	sw	a5,132(a4)
1c008308:	2a8837b7          	lui	a5,0x2a883
1c00830c:	e5878793          	addi	a5,a5,-424 # 2a882e58 <__l2_shared_end+0xe872e58>
1c008310:	08f72423          	sw	a5,136(a4)
1c008314:	55f4e7b7          	lui	a5,0x55f4e
1c008318:	f6978793          	addi	a5,a5,-151 # 55f4df69 <__l2_shared_end+0x39f3df69>
1c00831c:	08f72623          	sw	a5,140(a4)
1c008320:	36f227b7          	lui	a5,0x36f22
1c008324:	bd978793          	addi	a5,a5,-1063 # 36f21bd9 <__l2_shared_end+0x1af11bd9>
1c008328:	08f72823          	sw	a5,144(a4)
1c00832c:	95e707b7          	lui	a5,0x95e70
1c008330:	0e478793          	addi	a5,a5,228 # 95e700e4 <pulp__FC+0x95e700e5>
1c008334:	08f72a23          	sw	a5,148(a4)
1c008338:	e6a227b7          	lui	a5,0xe6a22
1c00833c:	3b778793          	addi	a5,a5,951 # e6a223b7 <pulp__FC+0xe6a223b8>
1c008340:	08f72c23          	sw	a5,152(a4)
1c008344:	37c5d7b7          	lui	a5,0x37c5d
1c008348:	52178793          	addi	a5,a5,1313 # 37c5d521 <__l2_shared_end+0x1bc4d521>
1c00834c:	08f72e23          	sw	a5,156(a4)
1c008350:	1eff37b7          	lui	a5,0x1eff3
1c008354:	f5478793          	addi	a5,a5,-172 # 1eff2f54 <__l2_shared_end+0x2fe2f54>
1c008358:	0af72023          	sw	a5,160(a4)
1c00835c:	4aed87b7          	lui	a5,0x4aed8
1c008360:	0a478793          	addi	a5,a5,164 # 4aed80a4 <__l2_shared_end+0x2eec80a4>
1c008364:	0af72223          	sw	a5,164(a4)
1c008368:	6c9ca7b7          	lui	a5,0x6c9ca
1c00836c:	c5178793          	addi	a5,a5,-943 # 6c9c9c51 <__l2_shared_end+0x509b9c51>
1c008370:	0af72423          	sw	a5,168(a4)
1c008374:	ac44e7b7          	lui	a5,0xac44e
1c008378:	e0278793          	addi	a5,a5,-510 # ac44de02 <pulp__FC+0xac44de03>
1c00837c:	0af72623          	sw	a5,172(a4)
1c008380:	8728f7b7          	lui	a5,0x8728f
1c008384:	12978793          	addi	a5,a5,297 # 8728f129 <pulp__FC+0x8728f12a>
1c008388:	0af72823          	sw	a5,176(a4)
1c00838c:	82e4a7b7          	lui	a5,0x82e4a
1c008390:	abb78793          	addi	a5,a5,-1349 # 82e49abb <pulp__FC+0x82e49abc>
1c008394:	0af72a23          	sw	a5,180(a4)
1c008398:	50b137b7          	lui	a5,0x50b13
1c00839c:	62078793          	addi	a5,a5,1568 # 50b13620 <__l2_shared_end+0x34b03620>
1c0083a0:	0af72c23          	sw	a5,184(a4)
1c0083a4:	d225d7b7          	lui	a5,0xd225d
1c0083a8:	4cf78793          	addi	a5,a5,1231 # d225d4cf <pulp__FC+0xd225d4d0>
1c0083ac:	0af72e23          	sw	a5,188(a4)
1c0083b0:	3ad8d7b7          	lui	a5,0x3ad8d
1c0083b4:	50b78793          	addi	a5,a5,1291 # 3ad8d50b <__l2_shared_end+0x1ed7d50b>
1c0083b8:	0cf72023          	sw	a5,192(a4)
1c0083bc:	070797b7          	lui	a5,0x7079
1c0083c0:	b6e78793          	addi	a5,a5,-1170 # 7078b6e <__CTOR_LIST__-0x14f87496>
1c0083c4:	0cf72223          	sw	a5,196(a4)
1c0083c8:	3a2d37b7          	lui	a5,0x3a2d3
1c0083cc:	6fe78793          	addi	a5,a5,1790 # 3a2d36fe <__l2_shared_end+0x1e2c36fe>
1c0083d0:	0cf72423          	sw	a5,200(a4)
1c0083d4:	b894f7b7          	lui	a5,0xb894f
1c0083d8:	4ec78793          	addi	a5,a5,1260 # b894f4ec <pulp__FC+0xb894f4ed>
1c0083dc:	0cf72623          	sw	a5,204(a4)
1c0083e0:	846427b7          	lui	a5,0x84642
1c0083e4:	68978793          	addi	a5,a5,1673 # 84642689 <pulp__FC+0x8464268a>
1c0083e8:	0cf72823          	sw	a5,208(a4)
1c0083ec:	ba8487b7          	lui	a5,0xba848
1c0083f0:	e1678793          	addi	a5,a5,-490 # ba847e16 <pulp__FC+0xba847e17>
1c0083f4:	0cf72a23          	sw	a5,212(a4)
1c0083f8:	bf7877b7          	lui	a5,0xbf787
1c0083fc:	27d78793          	addi	a5,a5,637 # bf78727d <pulp__FC+0xbf78727e>
1c008400:	0cf72c23          	sw	a5,216(a4)
1c008404:	70e897b7          	lui	a5,0x70e89
1c008408:	28c78793          	addi	a5,a5,652 # 70e8928c <__l2_shared_end+0x54e7928c>
1c00840c:	0cf72e23          	sw	a5,220(a4)
1c008410:	34cf17b7          	lui	a5,0x34cf1
1c008414:	98b78793          	addi	a5,a5,-1653 # 34cf098b <__l2_shared_end+0x18ce098b>
1c008418:	0ef72023          	sw	a5,224(a4)
1c00841c:	f296d7b7          	lui	a5,0xf296d
1c008420:	e7d78793          	addi	a5,a5,-387 # f296ce7d <pulp__FC+0xf296ce7e>
1c008424:	0ef72223          	sw	a5,228(a4)
1c008428:	788367b7          	lui	a5,0x78836
1c00842c:	d1978793          	addi	a5,a5,-743 # 78835d19 <__l2_shared_end+0x5c825d19>
1c008430:	0ef72423          	sw	a5,232(a4)
1c008434:	0bc9f7b7          	lui	a5,0xbc9f
1c008438:	22c78793          	addi	a5,a5,556 # bc9f22c <__CTOR_LIST__-0x10360dd8>
1c00843c:	0ef72623          	sw	a5,236(a4)
1c008440:	0deeb7b7          	lui	a5,0xdeeb
1c008444:	92678793          	addi	a5,a5,-1754 # deea926 <__CTOR_LIST__-0xe1156de>
1c008448:	0ef72823          	sw	a5,240(a4)
1c00844c:	028067b7          	lui	a5,0x2806
1c008450:	50978793          	addi	a5,a5,1289 # 2806509 <__CTOR_LIST__-0x197f9afb>
1c008454:	0ef72a23          	sw	a5,244(a4)
1c008458:	6795                	lui	a5,0x5
1c00845a:	44578793          	addi	a5,a5,1093 # 5445 <__CTOR_LIST__-0x1bffabbf>
1c00845e:	0ef71c23          	sh	a5,248(a4)
1c008462:	05f00793          	li	a5,95
1c008466:	0ef70d23          	sb	a5,250(a4)
1c00846a:	689537b7          	lui	a5,0x68953
1c00846e:	b5b78793          	addi	a5,a5,-1189 # 68952b5b <__l2_shared_end+0x4c942b5b>
1c008472:	0ef72da3          	sw	a5,251(a4)
1c008476:	f24ab7b7          	lui	a5,0xf24ab
1c00847a:	d1f78793          	addi	a5,a5,-737 # f24aad1f <pulp__FC+0xf24aad20>
1c00847e:	0ef72fa3          	sw	a5,255(a4)
1c008482:	aadc07b7          	lui	a5,0xaadc0
1c008486:	78078793          	addi	a5,a5,1920 # aadc0780 <pulp__FC+0xaadc0781>
1c00848a:	10f721a3          	sw	a5,259(a4)
1c00848e:	fc10d7b7          	lui	a5,0xfc10d
1c008492:	dbb78793          	addi	a5,a5,-581 # fc10cdbb <pulp__FC+0xfc10cdbc>
1c008496:	10f723a3          	sw	a5,263(a4)
1c00849a:	c0b717b7          	lui	a5,0xc0b71
1c00849e:	13478793          	addi	a5,a5,308 # c0b71134 <pulp__FC+0xc0b71135>
1c0084a2:	10f725a3          	sw	a5,267(a4)
1c0084a6:	b12257b7          	lui	a5,0xb1225
1c0084aa:	66778793          	addi	a5,a5,1639 # b1225667 <pulp__FC+0xb1225668>
1c0084ae:	10f727a3          	sw	a5,271(a4)
1c0084b2:	5f9677b7          	lui	a5,0x5f967
1c0084b6:	8c278793          	addi	a5,a5,-1854 # 5f9668c2 <__l2_shared_end+0x439568c2>
1c0084ba:	10f729a3          	sw	a5,275(a4)
1c0084be:	7b08b7b7          	lui	a5,0x7b08b
1c0084c2:	d0478793          	addi	a5,a5,-764 # 7b08ad04 <__l2_shared_end+0x5f07ad04>
1c0084c6:	10f72ba3          	sw	a5,279(a4)
1c0084ca:	137397b7          	lui	a5,0x13739
1c0084ce:	b9678793          	addi	a5,a5,-1130 # 13738b96 <__CTOR_LIST__-0x88c746e>
1c0084d2:	10f72da3          	sw	a5,283(a4)
1c0084d6:	1d2ea7b7          	lui	a5,0x1d2ea
1c0084da:	cb778793          	addi	a5,a5,-841 # 1d2e9cb7 <__l2_shared_end+0x12d9cb7>
1c0084de:	10f72fa3          	sw	a5,287(a4)
1c0084e2:	1ff807b7          	lui	a5,0x1ff80
1c0084e6:	5e978793          	addi	a5,a5,1513 # 1ff805e9 <__l2_shared_end+0x3f705e9>
1c0084ea:	12f721a3          	sw	a5,291(a4)
1c0084ee:	097c37b7          	lui	a5,0x97c3
1c0084f2:	5e178793          	addi	a5,a5,1505 # 97c35e1 <__CTOR_LIST__-0x1283ca23>
1c0084f6:	12f723a3          	sw	a5,295(a4)
1c0084fa:	34ccd7b7          	lui	a5,0x34ccd
1c0084fe:	a4878793          	addi	a5,a5,-1464 # 34ccca48 <__l2_shared_end+0x18cbca48>
1c008502:	12f725a3          	sw	a5,299(a4)
1c008506:	b4fb77b7          	lui	a5,0xb4fb7
1c00850a:	a6178793          	addi	a5,a5,-1439 # b4fb6a61 <pulp__FC+0xb4fb6a62>
1c00850e:	12f727a3          	sw	a5,303(a4)
1c008512:	95bd97b7          	lui	a5,0x95bd9
1c008516:	62e78793          	addi	a5,a5,1582 # 95bd962e <pulp__FC+0x95bd962f>
1c00851a:	12f729a3          	sw	a5,307(a4)
1c00851e:	e8c257b7          	lui	a5,0xe8c25
1c008522:	05978793          	addi	a5,a5,89 # e8c25059 <pulp__FC+0xe8c2505a>
1c008526:	12f72ba3          	sw	a5,311(a4)
1c00852a:	8d0487b7          	lui	a5,0x8d048
1c00852e:	b8078793          	addi	a5,a5,-1152 # 8d047b80 <pulp__FC+0x8d047b81>
1c008532:	12f72da3          	sw	a5,315(a4)
1c008536:	ac3be7b7          	lui	a5,0xac3be
1c00853a:	bc578793          	addi	a5,a5,-1083 # ac3bdbc5 <pulp__FC+0xac3bdbc6>
1c00853e:	12f72fa3          	sw	a5,319(a4)
1c008542:	08cef7b7          	lui	a5,0x8cef
1c008546:	a5278793          	addi	a5,a5,-1454 # 8ceea52 <__CTOR_LIST__-0x133115b2>
1c00854a:	14f721a3          	sw	a5,323(a4)
1c00854e:	400e57b7          	lui	a5,0x400e5
1c008552:	82778793          	addi	a5,a5,-2009 # 400e4827 <__l2_shared_end+0x240d4827>
1c008556:	14f723a3          	sw	a5,327(a4)
1c00855a:	1bee87b7          	lui	a5,0x1bee8
1c00855e:	e2578793          	addi	a5,a5,-475 # 1bee7e25 <__CTOR_LIST__-0x1181df>
1c008562:	14f725a3          	sw	a5,331(a4)
1c008566:	7a3527b7          	lui	a5,0x7a352
1c00856a:	17e5                	addi	a5,a5,-7
1c00856c:	14f727a3          	sw	a5,335(a4)
1c008570:	d3bad7b7          	lui	a5,0xd3bad
1c008574:	b2d78793          	addi	a5,a5,-1235 # d3bacb2d <pulp__FC+0xd3bacb2e>
1c008578:	14f729a3          	sw	a5,339(a4)
1c00857c:	004fd7b7          	lui	a5,0x4fd
1c008580:	96478793          	addi	a5,a5,-1692 # 4fc964 <__CTOR_LIST__-0x1bb036a0>
1c008584:	14f72ba3          	sw	a5,343(a4)
1c008588:	007137b7          	lui	a5,0x713
1c00858c:	97c78793          	addi	a5,a5,-1668 # 71297c <__CTOR_LIST__-0x1b8ed688>
1c008590:	14f72da3          	sw	a5,347(a4)
1c008594:	5f6f67b7          	lui	a5,0x5f6f6
1c008598:	7d778793          	addi	a5,a5,2007 # 5f6f67d7 <__l2_shared_end+0x436e67d7>
1c00859c:	14f72fa3          	sw	a5,351(a4)
1c0085a0:	993867b7          	lui	a5,0x99386
1c0085a4:	94978793          	addi	a5,a5,-1719 # 99385949 <pulp__FC+0x9938594a>
1c0085a8:	16f721a3          	sw	a5,355(a4)
1c0085ac:	48a0b7b7          	lui	a5,0x48a0b
1c0085b0:	9c878793          	addi	a5,a5,-1592 # 48a0a9c8 <__l2_shared_end+0x2c9fa9c8>
1c0085b4:	16f723a3          	sw	a5,359(a4)
1c0085b8:	2deb27b7          	lui	a5,0x2deb2
1c0085bc:	4e878793          	addi	a5,a5,1256 # 2deb24e8 <__l2_shared_end+0x11ea24e8>
1c0085c0:	16f725a3          	sw	a5,363(a4)
1c0085c4:	c080d7b7          	lui	a5,0xc080d
1c0085c8:	0a278793          	addi	a5,a5,162 # c080d0a2 <pulp__FC+0xc080d0a3>
1c0085cc:	16f727a3          	sw	a5,367(a4)
1c0085d0:	c19b87b7          	lui	a5,0xc19b8
1c0085d4:	dbe78793          	addi	a5,a5,-578 # c19b7dbe <pulp__FC+0xc19b7dbf>
1c0085d8:	16f729a3          	sw	a5,371(a4)
1c0085dc:	f868e7b7          	lui	a5,0xf868e
1c0085e0:	6a778793          	addi	a5,a5,1703 # f868e6a7 <pulp__FC+0xf868e6a8>
1c0085e4:	16f72ba3          	sw	a5,375(a4)
1c0085e8:	8d6c27b7          	lui	a5,0x8d6c2
1c0085ec:	1c778793          	addi	a5,a5,455 # 8d6c21c7 <pulp__FC+0x8d6c21c8>
1c0085f0:	16f72da3          	sw	a5,379(a4)
1c0085f4:	598ff7b7          	lui	a5,0x598ff
1c0085f8:	65178793          	addi	a5,a5,1617 # 598ff651 <__l2_shared_end+0x3d8ef651>
1c0085fc:	16f72fa3          	sw	a5,383(a4)
1c008600:	6fc257b7          	lui	a5,0x6fc25
1c008604:	63078793          	addi	a5,a5,1584 # 6fc25630 <__l2_shared_end+0x53c15630>
1c008608:	18f721a3          	sw	a5,387(a4)
1c00860c:	abd8b7b7          	lui	a5,0xabd8b
1c008610:	68178793          	addi	a5,a5,1665 # abd8b681 <pulp__FC+0xabd8b682>
1c008614:	18f723a3          	sw	a5,391(a4)
1c008618:	614af7b7          	lui	a5,0x614af
1c00861c:	b5a78793          	addi	a5,a5,-1190 # 614aeb5a <__l2_shared_end+0x4549eb5a>
1c008620:	18f725a3          	sw	a5,395(a4)
1c008624:	a6fb77b7          	lui	a5,0xa6fb7
1c008628:	f8278793          	addi	a5,a5,-126 # a6fb6f82 <pulp__FC+0xa6fb6f83>
1c00862c:	18f727a3          	sw	a5,399(a4)
1c008630:	3df1b7b7          	lui	a5,0x3df1b
1c008634:	cac78793          	addi	a5,a5,-852 # 3df1acac <__l2_shared_end+0x21f0acac>
1c008638:	18f729a3          	sw	a5,403(a4)
1c00863c:	2df9a7b7          	lui	a5,0x2df9a
1c008640:	4c478793          	addi	a5,a5,1220 # 2df9a4c4 <__l2_shared_end+0x11f8a4c4>
1c008644:	18f72ba3          	sw	a5,407(a4)
1c008648:	145067b7          	lui	a5,0x14506
1c00864c:	08878793          	addi	a5,a5,136 # 14506088 <__CTOR_LIST__-0x7af9f7c>
1c008650:	18f72da3          	sw	a5,411(a4)
1c008654:	6dd887b7          	lui	a5,0x6dd88
1c008658:	4df78793          	addi	a5,a5,1247 # 6dd884df <__l2_shared_end+0x51d784df>
1c00865c:	18f72fa3          	sw	a5,415(a4)
1c008660:	aeed27b7          	lui	a5,0xaeed2
1c008664:	bbe78793          	addi	a5,a5,-1090 # aeed1bbe <pulp__FC+0xaeed1bbf>
1c008668:	1af721a3          	sw	a5,419(a4)
1c00866c:	afa897b7          	lui	a5,0xafa89
1c008670:	98678793          	addi	a5,a5,-1658 # afa88986 <pulp__FC+0xafa88987>
1c008674:	1af723a3          	sw	a5,423(a4)
1c008678:	d973a7b7          	lui	a5,0xd973a
1c00867c:	8db78793          	addi	a5,a5,-1829 # d97398db <pulp__FC+0xd97398dc>
1c008680:	1af725a3          	sw	a5,427(a4)
1c008684:	f2b8e7b7          	lui	a5,0xf2b8e
1c008688:	ec378793          	addi	a5,a5,-317 # f2b8dec3 <pulp__FC+0xf2b8dec4>
1c00868c:	1af727a3          	sw	a5,431(a4)
1c008690:	75f3c7b7          	lui	a5,0x75f3c
1c008694:	bcc78793          	addi	a5,a5,-1076 # 75f3bbcc <__l2_shared_end+0x59f2bbcc>
1c008698:	1af729a3          	sw	a5,435(a4)
1c00869c:	dc74c7b7          	lui	a5,0xdc74c
1c0086a0:	3ba78793          	addi	a5,a5,954 # dc74c3ba <pulp__FC+0xdc74c3bb>
1c0086a4:	1af72ba3          	sw	a5,439(a4)
1c0086a8:	7ef187b7          	lui	a5,0x7ef18
1c0086ac:	b3878793          	addi	a5,a5,-1224 # 7ef17b38 <__l2_shared_end+0x62f07b38>
1c0086b0:	1af72da3          	sw	a5,443(a4)
1c0086b4:	4c54a7b7          	lui	a5,0x4c54a
1c0086b8:	ed878793          	addi	a5,a5,-296 # 4c549ed8 <__l2_shared_end+0x30539ed8>
1c0086bc:	1af72fa3          	sw	a5,447(a4)
1c0086c0:	a37997b7          	lui	a5,0xa3799
1c0086c4:	e2e78793          	addi	a5,a5,-466 # a3798e2e <pulp__FC+0xa3798e2f>
1c0086c8:	1cf721a3          	sw	a5,451(a4)
1c0086cc:	ae14a7b7          	lui	a5,0xae14a
1c0086d0:	d9f78793          	addi	a5,a5,-609 # ae149d9f <pulp__FC+0xae149da0>
1c0086d4:	1cf723a3          	sw	a5,455(a4)
1c0086d8:	863e57b7          	lui	a5,0x863e5
1c0086dc:	f3778793          	addi	a5,a5,-201 # 863e4f37 <pulp__FC+0x863e4f38>
1c0086e0:	1cf725a3          	sw	a5,459(a4)
1c0086e4:	879f27b7          	lui	a5,0x879f2
1c0086e8:	02c78793          	addi	a5,a5,44 # 879f202c <pulp__FC+0x879f202d>
1c0086ec:	1cf727a3          	sw	a5,463(a4)
1c0086f0:	2e14a7b7          	lui	a5,0x2e14a
1c0086f4:	75b78793          	addi	a5,a5,1883 # 2e14a75b <__l2_shared_end+0x1213a75b>
1c0086f8:	1cf729a3          	sw	a5,467(a4)
1c0086fc:	e41607b7          	lui	a5,0xe4160
1c008700:	30f78793          	addi	a5,a5,783 # e416030f <pulp__FC+0xe4160310>
1c008704:	1cf72ba3          	sw	a5,471(a4)
1c008708:	aae0d7b7          	lui	a5,0xaae0d
1c00870c:	0d178793          	addi	a5,a5,209 # aae0d0d1 <pulp__FC+0xaae0d0d2>
1c008710:	1cf72da3          	sw	a5,475(a4)
1c008714:	85a867b7          	lui	a5,0x85a86
1c008718:	48478793          	addi	a5,a5,1156 # 85a86484 <pulp__FC+0x85a86485>
1c00871c:	1cf72fa3          	sw	a5,479(a4)
1c008720:	c096d7b7          	lui	a5,0xc096d
1c008724:	10f78793          	addi	a5,a5,271 # c096d10f <pulp__FC+0xc096d110>
1c008728:	1ef721a3          	sw	a5,483(a4)
1c00872c:	241467b7          	lui	a5,0x24146
1c008730:	e1678793          	addi	a5,a5,-490 # 24145e16 <__l2_shared_end+0x8135e16>
1c008734:	1ef723a3          	sw	a5,487(a4)
1c008738:	d8ff57b7          	lui	a5,0xd8ff5
1c00873c:	ee878793          	addi	a5,a5,-280 # d8ff4ee8 <pulp__FC+0xd8ff4ee9>
1c008740:	1ef725a3          	sw	a5,491(a4)
1c008744:	3567d7b7          	lui	a5,0x3567d
1c008748:	44678793          	addi	a5,a5,1094 # 3567d446 <__l2_shared_end+0x1966d446>
1c00874c:	1ef727a3          	sw	a5,495(a4)
1c008750:	6791                	lui	a5,0x4
1c008752:	07f5                	addi	a5,a5,29
1c008754:	1ef719a3          	sh	a5,499(a4)
1c008758:	718d67b7          	lui	a5,0x718d6
1c00875c:	27a78793          	addi	a5,a5,634 # 718d627a <__l2_shared_end+0x558c627a>
1c008760:	1ef72b23          	sw	a5,502(a4)
1c008764:	0e57e7b7          	lui	a5,0xe57e
1c008768:	53578793          	addi	a5,a5,1333 # e57e535 <__CTOR_LIST__-0xda81acf>
1c00876c:	1ef72d23          	sw	a5,506(a4)
1c008770:	68b787b7          	lui	a5,0x68b78
1c008774:	f4c78793          	addi	a5,a5,-180 # 68b77f4c <__l2_shared_end+0x4cb67f4c>
1c008778:	1ef72f23          	sw	a5,510(a4)
1c00877c:	a61c27b7          	lui	a5,0xa61c2
1c008780:	98278793          	addi	a5,a5,-1662 # a61c1982 <pulp__FC+0xa61c1983>
1c008784:	20f72123          	sw	a5,514(a4)
1c008788:	6668b7b7          	lui	a5,0x6668b
1c00878c:	ce378793          	addi	a5,a5,-797 # 6668ace3 <__l2_shared_end+0x4a67ace3>
1c008790:	20f72323          	sw	a5,518(a4)
1c008794:	2b71f7b7          	lui	a5,0x2b71f
1c008798:	8b578793          	addi	a5,a5,-1867 # 2b71e8b5 <__l2_shared_end+0xf70e8b5>
1c00879c:	20f72523          	sw	a5,522(a4)
1c0087a0:	545b47b7          	lui	a5,0x545b4
1c0087a4:	8ce78793          	addi	a5,a5,-1842 # 545b38ce <__l2_shared_end+0x385a38ce>
1c0087a8:	20f72723          	sw	a5,526(a4)
1c0087ac:	0fce37b7          	lui	a5,0xfce3
1c0087b0:	d1a78793          	addi	a5,a5,-742 # fce2d1a <__CTOR_LIST__-0xc31d2ea>
1c0087b4:	20f72923          	sw	a5,530(a4)
1c0087b8:	3e6197b7          	lui	a5,0x3e619
1c0087bc:	45e78793          	addi	a5,a5,1118 # 3e61945e <__l2_shared_end+0x2260945e>
1c0087c0:	20f72b23          	sw	a5,534(a4)
1c0087c4:	3cecd7b7          	lui	a5,0x3cecd
1c0087c8:	dd478793          	addi	a5,a5,-556 # 3ceccdd4 <__l2_shared_end+0x20ebcdd4>
1c0087cc:	20f72d23          	sw	a5,538(a4)
1c0087d0:	14a257b7          	lui	a5,0x14a25
1c0087d4:	25778793          	addi	a5,a5,599 # 14a25257 <__CTOR_LIST__-0x75dadad>
1c0087d8:	20f72f23          	sw	a5,542(a4)
1c0087dc:	d89ed7b7          	lui	a5,0xd89ed
1c0087e0:	87178793          	addi	a5,a5,-1935 # d89ec871 <pulp__FC+0xd89ec872>
1c0087e4:	22f72123          	sw	a5,546(a4)
1c0087e8:	f22d27b7          	lui	a5,0xf22d2
1c0087ec:	bfa78793          	addi	a5,a5,-1030 # f22d1bfa <pulp__FC+0xf22d1bfb>
1c0087f0:	22f72323          	sw	a5,550(a4)
1c0087f4:	709467b7          	lui	a5,0x70946
1c0087f8:	1df78793          	addi	a5,a5,479 # 709461df <__l2_shared_end+0x549361df>
1c0087fc:	22f72523          	sw	a5,554(a4)
1c008800:	411257b7          	lui	a5,0x41125
1c008804:	27d78793          	addi	a5,a5,637 # 4112527d <__l2_shared_end+0x2511527d>
1c008808:	22f72723          	sw	a5,558(a4)
1c00880c:	cf98b7b7          	lui	a5,0xcf98b
1c008810:	e0d78793          	addi	a5,a5,-499 # cf98ae0d <pulp__FC+0xcf98ae0e>
1c008814:	22f72923          	sw	a5,562(a4)
1c008818:	bfd377b7          	lui	a5,0xbfd37
1c00881c:	3e378793          	addi	a5,a5,995 # bfd373e3 <pulp__FC+0xbfd373e4>
1c008820:	22f72b23          	sw	a5,566(a4)
1c008824:	14b497b7          	lui	a5,0x14b49
1c008828:	17cd                	addi	a5,a5,-13
1c00882a:	22f72d23          	sw	a5,570(a4)
1c00882e:	9deba7b7          	lui	a5,0x9deba
1c008832:	90678793          	addi	a5,a5,-1786 # 9deb9906 <pulp__FC+0x9deb9907>
1c008836:	22f72f23          	sw	a5,574(a4)
1c00883a:	592067b7          	lui	a5,0x59206
1c00883e:	3bc78793          	addi	a5,a5,956 # 592063bc <__l2_shared_end+0x3d1f63bc>
1c008842:	24f72123          	sw	a5,578(a4)
1c008846:	f69ad7b7          	lui	a5,0xf69ad
1c00884a:	63778793          	addi	a5,a5,1591 # f69ad637 <pulp__FC+0xf69ad638>
1c00884e:	24f72323          	sw	a5,582(a4)
1c008852:	96d3a7b7          	lui	a5,0x96d3a
1c008856:	ebb78793          	addi	a5,a5,-325 # 96d39ebb <pulp__FC+0x96d39ebc>
1c00885a:	5929                	li	s2,-22
1c00885c:	24f72523          	sw	a5,586(a4)
1c008860:	83b187b7          	lui	a5,0x83b18
1c008864:	1f270aa3          	sb	s2,501(a4)
1c008868:	45078793          	addi	a5,a5,1104 # 83b18450 <pulp__FC+0x83b18451>
1c00886c:	24f72723          	sw	a5,590(a4)
1c008870:	41c2e7b7          	lui	a5,0x41c2e
1c008874:	65478793          	addi	a5,a5,1620 # 41c2e654 <__l2_shared_end+0x25c1e654>
1c008878:	24f72923          	sw	a5,594(a4)
1c00887c:	017147b7          	lui	a5,0x1714
1c008880:	d5678793          	addi	a5,a5,-682 # 1713d56 <__CTOR_LIST__-0x1a8ec2ae>
1c008884:	24f72b23          	sw	a5,598(a4)
1c008888:	a1f9c7b7          	lui	a5,0xa1f9c
1c00888c:	3fd78793          	addi	a5,a5,1021 # a1f9c3fd <pulp__FC+0xa1f9c3fe>
1c008890:	24f72d23          	sw	a5,602(a4)
1c008894:	af0767b7          	lui	a5,0xaf076
1c008898:	31078793          	addi	a5,a5,784 # af076310 <pulp__FC+0xaf076311>
1c00889c:	24f72f23          	sw	a5,606(a4)
1c0088a0:	0ae877b7          	lui	a5,0xae87
1c0088a4:	64c78793          	addi	a5,a5,1612 # ae8764c <__CTOR_LIST__-0x111789b8>
1c0088a8:	26f72123          	sw	a5,610(a4)
1c0088ac:	fc1ab7b7          	lui	a5,0xfc1ab
1c0088b0:	42e78793          	addi	a5,a5,1070 # fc1ab42e <pulp__FC+0xfc1ab42f>
1c0088b4:	26f72323          	sw	a5,614(a4)
1c0088b8:	f52f67b7          	lui	a5,0xf52f6
1c0088bc:	5fa78793          	addi	a5,a5,1530 # f52f65fa <pulp__FC+0xf52f65fb>
1c0088c0:	26f72523          	sw	a5,618(a4)
1c0088c4:	e21487b7          	lui	a5,0xe2148
1c0088c8:	7f378793          	addi	a5,a5,2035 # e21487f3 <pulp__FC+0xe21487f4>
1c0088cc:	26f72723          	sw	a5,622(a4)
1c0088d0:	2cb3b7b7          	lui	a5,0x2cb3b
1c0088d4:	81478793          	addi	a5,a5,-2028 # 2cb3a814 <__l2_shared_end+0x10b2a814>
1c0088d8:	26f72923          	sw	a5,626(a4)
1c0088dc:	907907b7          	lui	a5,0x90790
1c0088e0:	2f378793          	addi	a5,a5,755 # 907902f3 <pulp__FC+0x907902f4>
1c0088e4:	26f72b23          	sw	a5,630(a4)
1c0088e8:	0e8257b7          	lui	a5,0xe825
1c0088ec:	26578793          	addi	a5,a5,613 # e825265 <__CTOR_LIST__-0xd7dad9f>
1c0088f0:	26f72d23          	sw	a5,634(a4)
1c0088f4:	7205e7b7          	lui	a5,0x7205e
1c0088f8:	e3378793          	addi	a5,a5,-461 # 7205de33 <__l2_shared_end+0x5604de33>
1c0088fc:	26f72f23          	sw	a5,638(a4)
1c008900:	2cd487b7          	lui	a5,0x2cd48
1c008904:	e1778793          	addi	a5,a5,-489 # 2cd47e17 <__l2_shared_end+0x10d37e17>
1c008908:	28f72123          	sw	a5,642(a4)
1c00890c:	e28b27b7          	lui	a5,0xe28b2
1c008910:	05878793          	addi	a5,a5,88 # e28b2058 <pulp__FC+0xe28b2059>
1c008914:	28f72323          	sw	a5,646(a4)
1c008918:	a99127b7          	lui	a5,0xa9912
1c00891c:	f9178793          	addi	a5,a5,-111 # a9911f91 <pulp__FC+0xa9911f92>
1c008920:	28f72523          	sw	a5,650(a4)
1c008924:	3a6777b7          	lui	a5,0x3a677
1c008928:	d9478793          	addi	a5,a5,-620 # 3a676d94 <__l2_shared_end+0x1e666d94>
1c00892c:	28f72723          	sw	a5,654(a4)
1c008930:	20cc97b7          	lui	a5,0x20cc9
1c008934:	46478793          	addi	a5,a5,1124 # 20cc9464 <__l2_shared_end+0x4cb9464>
1c008938:	28f72923          	sw	a5,658(a4)
1c00893c:	48dcc7b7          	lui	a5,0x48dcc
1c008940:	e1378793          	addi	a5,a5,-493 # 48dcbe13 <__l2_shared_end+0x2cdbbe13>
1c008944:	28f72b23          	sw	a5,662(a4)
1c008948:	3ff3c7b7          	lui	a5,0x3ff3c
1c00894c:	81478793          	addi	a5,a5,-2028 # 3ff3b814 <__l2_shared_end+0x23f2b814>
1c008950:	28f72d23          	sw	a5,666(a4)
1c008954:	ed94f7b7          	lui	a5,0xed94f
1c008958:	5c178793          	addi	a5,a5,1473 # ed94f5c1 <pulp__FC+0xed94f5c2>
1c00895c:	28f72f23          	sw	a5,670(a4)
1c008960:	8bf217b7          	lui	a5,0x8bf21
1c008964:	4f478793          	addi	a5,a5,1268 # 8bf214f4 <pulp__FC+0x8bf214f5>
1c008968:	2af72123          	sw	a5,674(a4)
1c00896c:	a35e87b7          	lui	a5,0xa35e8
1c008970:	5c178793          	addi	a5,a5,1473 # a35e85c1 <pulp__FC+0xa35e85c2>
1c008974:	2af72323          	sw	a5,678(a4)
1c008978:	6a0de7b7          	lui	a5,0x6a0de
1c00897c:	7bf78793          	addi	a5,a5,1983 # 6a0de7bf <__l2_shared_end+0x4e0ce7bf>
1c008980:	2af72523          	sw	a5,682(a4)
1c008984:	993fc7b7          	lui	a5,0x993fc
1c008988:	b7878793          	addi	a5,a5,-1160 # 993fbb78 <pulp__FC+0x993fbb79>
1c00898c:	2af72723          	sw	a5,686(a4)
1c008990:	de6347b7          	lui	a5,0xde634
1c008994:	14178793          	addi	a5,a5,321 # de634141 <pulp__FC+0xde634142>
1c008998:	2af72923          	sw	a5,690(a4)
1c00899c:	172e67b7          	lui	a5,0x172e6
1c0089a0:	1d478793          	addi	a5,a5,468 # 172e61d4 <__CTOR_LIST__-0x4d19e30>
1c0089a4:	2af72b23          	sw	a5,694(a4)
1c0089a8:	2003e7b7          	lui	a5,0x2003e
1c0089ac:	ccd78793          	addi	a5,a5,-819 # 2003dccd <__l2_shared_end+0x402dccd>
1c0089b0:	2af72d23          	sw	a5,698(a4)
1c0089b4:	57b257b7          	lui	a5,0x57b25
1c0089b8:	0f978793          	addi	a5,a5,249 # 57b250f9 <__l2_shared_end+0x3bb150f9>
1c0089bc:	2af72f23          	sw	a5,702(a4)
1c0089c0:	ca3f07b7          	lui	a5,0xca3f0
1c0089c4:	dd978793          	addi	a5,a5,-551 # ca3efdd9 <pulp__FC+0xca3efdda>
1c0089c8:	2cf72123          	sw	a5,706(a4)
1c0089cc:	f2ce07b7          	lui	a5,0xf2ce0
1c0089d0:	bfa78793          	addi	a5,a5,-1030 # f2cdfbfa <pulp__FC+0xf2cdfbfb>
1c0089d4:	2cf72323          	sw	a5,710(a4)
1c0089d8:	727bc7b7          	lui	a5,0x727bc
1c0089dc:	64e78793          	addi	a5,a5,1614 # 727bc64e <__l2_shared_end+0x567ac64e>
1c0089e0:	2cf72523          	sw	a5,714(a4)
1c0089e4:	aae8e7b7          	lui	a5,0xaae8e
1c0089e8:	4e778793          	addi	a5,a5,1255 # aae8e4e7 <pulp__FC+0xaae8e4e8>
1c0089ec:	2cf72723          	sw	a5,718(a4)
1c0089f0:	34cb9437          	lui	s0,0x34cb9
1c0089f4:	e7d777b7          	lui	a5,0xe7d77
1c0089f8:	f3c78793          	addi	a5,a5,-196 # e7d76f3c <pulp__FC+0xe7d76f3d>
1c0089fc:	26340413          	addi	s0,s0,611 # 34cb9263 <__l2_shared_end+0x18ca9263>
1c008a00:	2cf72923          	sw	a5,722(a4)
1c008a04:	2e872323          	sw	s0,742(a4)
1c008a08:	731b3437          	lui	s0,0x731b3
1c008a0c:	d4740413          	addi	s0,s0,-697 # 731b2d47 <__l2_shared_end+0x571a2d47>
1c008a10:	2e872523          	sw	s0,746(a4)
1c008a14:	aaa00413          	li	s0,-1366
1c008a18:	2e871723          	sh	s0,750(a4)
1c008a1c:	fb200413          	li	s0,-78
1c008a20:	2e870823          	sb	s0,752(a4)
1c008a24:	a3f42437          	lui	s0,0xa3f42
1c008a28:	55540413          	addi	s0,s0,1365 # a3f42555 <pulp__FC+0xa3f42556>
1c008a2c:	2e8728a3          	sw	s0,753(a4)
1c008a30:	d6002437          	lui	s0,0xd6002
1c008a34:	d4c40413          	addi	s0,s0,-692 # d6001d4c <pulp__FC+0xd6001d4d>
1c008a38:	2e872aa3          	sw	s0,757(a4)
1c008a3c:	7de01437          	lui	s0,0x7de01
1c008a40:	6d140413          	addi	s0,s0,1745 # 7de016d1 <__l2_shared_end+0x61df16d1>
1c008a44:	2e872ca3          	sw	s0,761(a4)
1c008a48:	b7771437          	lui	s0,0xb7771
1c008a4c:	4a040413          	addi	s0,s0,1184 # b77714a0 <pulp__FC+0xb77714a1>
1c008a50:	2e872ea3          	sw	s0,765(a4)
1c008a54:	cf3f5437          	lui	s0,0xcf3f5
1c008a58:	e2c40413          	addi	s0,s0,-468 # cf3f4e2c <pulp__FC+0xcf3f4e2d>
1c008a5c:	308720a3          	sw	s0,769(a4)
1c008a60:	b7ac5437          	lui	s0,0xb7ac5
1c008a64:	58e40413          	addi	s0,s0,1422 # b7ac558e <pulp__FC+0xb7ac558f>
1c008a68:	308722a3          	sw	s0,773(a4)
1c008a6c:	b006a437          	lui	s0,0xb006a
1c008a70:	36340413          	addi	s0,s0,867 # b006a363 <pulp__FC+0xb006a364>
1c008a74:	308724a3          	sw	s0,777(a4)
1c008a78:	79954437          	lui	s0,0x79954
1c008a7c:	35940413          	addi	s0,s0,857 # 79954359 <__l2_shared_end+0x5d944359>
1c008a80:	308726a3          	sw	s0,781(a4)
1c008a84:	f9543437          	lui	s0,0xf9543
1c008a88:	b7340413          	addi	s0,s0,-1165 # f9542b73 <pulp__FC+0xf9542b74>
1c008a8c:	308728a3          	sw	s0,785(a4)
1c008a90:	cb0b4437          	lui	s0,0xcb0b4
1c008a94:	38340413          	addi	s0,s0,899 # cb0b4383 <pulp__FC+0xcb0b4384>
1c008a98:	30872aa3          	sw	s0,789(a4)
1c008a9c:	1fda9437          	lui	s0,0x1fda9
1c008aa0:	8b840413          	addi	s0,s0,-1864 # 1fda88b8 <__l2_shared_end+0x3d988b8>
1c008aa4:	30872ca3          	sw	s0,793(a4)
1c008aa8:	deb2d437          	lui	s0,0xdeb2d
1c008aac:	7ae40413          	addi	s0,s0,1966 # deb2d7ae <pulp__FC+0xdeb2d7af>
1c008ab0:	30872ea3          	sw	s0,797(a4)
1c008ab4:	5bc66437          	lui	s0,0x5bc66
1c008ab8:	d6440413          	addi	s0,s0,-668 # 5bc65d64 <__l2_shared_end+0x3fc55d64>
1c008abc:	328720a3          	sw	s0,801(a4)
1c008ac0:	f2c80437          	lui	s0,0xf2c80
1c008ac4:	3a240413          	addi	s0,s0,930 # f2c803a2 <pulp__FC+0xf2c803a3>
1c008ac8:	328722a3          	sw	s0,805(a4)
1c008acc:	204fe437          	lui	s0,0x204fe
1c008ad0:	93140413          	addi	s0,s0,-1743 # 204fd931 <__l2_shared_end+0x44ed931>
1c008ad4:	328724a3          	sw	s0,809(a4)
1c008ad8:	4b406437          	lui	s0,0x4b406
1c008adc:	21840413          	addi	s0,s0,536 # 4b406218 <__l2_shared_end+0x2f3f6218>
1c008ae0:	328726a3          	sw	s0,813(a4)
1c008ae4:	753c7437          	lui	s0,0x753c7
1c008ae8:	c0840413          	addi	s0,s0,-1016 # 753c6c08 <__l2_shared_end+0x593b6c08>
1c008aec:	328728a3          	sw	s0,817(a4)
1c008af0:	0ff3e437          	lui	s0,0xff3e
1c008af4:	50f40413          	addi	s0,s0,1295 # ff3e50f <__CTOR_LIST__-0xc0c1af5>
1c008af8:	32872aa3          	sw	s0,821(a4)
1c008afc:	28869437          	lui	s0,0x28869
1c008b00:	76640413          	addi	s0,s0,1894 # 28869766 <__l2_shared_end+0xc859766>
1c008b04:	32872ca3          	sw	s0,825(a4)
1c008b08:	90801437          	lui	s0,0x90801
1c008b0c:	0dd40413          	addi	s0,s0,221 # 908010dd <pulp__FC+0x908010de>
1c008b10:	32872ea3          	sw	s0,829(a4)
1c008b14:	6aa5c437          	lui	s0,0x6aa5c
1c008b18:	46f40413          	addi	s0,s0,1135 # 6aa5c46f <__l2_shared_end+0x4ea4c46f>
1c008b1c:	348720a3          	sw	s0,833(a4)
1c008b20:	07037437          	lui	s0,0x7037
1c008b24:	d0e40413          	addi	s0,s0,-754 # 7036d0e <__CTOR_LIST__-0x14fc92f6>
1c008b28:	26dad7b7          	lui	a5,0x26dad
1c008b2c:	348722a3          	sw	s0,837(a4)
1c008b30:	27b78793          	addi	a5,a5,635 # 26dad27b <__l2_shared_end+0xad9d27b>
1c008b34:	d9586437          	lui	s0,0xd9586
1c008b38:	2cf72b23          	sw	a5,726(a4)
1c008b3c:	2fa40413          	addi	s0,s0,762 # d95862fa <pulp__FC+0xd95862fb>
1c008b40:	e5c3a7b7          	lui	a5,0xe5c3a
1c008b44:	348724a3          	sw	s0,841(a4)
1c008b48:	04578793          	addi	a5,a5,69 # e5c3a045 <pulp__FC+0xe5c3a046>
1c008b4c:	029c6437          	lui	s0,0x29c6
1c008b50:	2cf72d23          	sw	a5,730(a4)
1c008b54:	73240413          	addi	s0,s0,1842 # 29c6732 <__CTOR_LIST__-0x196398d2>
1c008b58:	1e2247b7          	lui	a5,0x1e224
1c008b5c:	173acfb7          	lui	t6,0x173ac
1c008b60:	348726a3          	sw	s0,845(a4)
1c008b64:	bb978793          	addi	a5,a5,-1095 # 1e223bb9 <__l2_shared_end+0x2213bb9>
1c008b68:	08bf8f93          	addi	t6,t6,139 # 173ac08b <__CTOR_LIST__-0x4c53f79>
1c008b6c:	fc23c437          	lui	s0,0xfc23c
1c008b70:	2cf72f23          	sw	a5,734(a4)
1c008b74:	2ff72123          	sw	t6,738(a4)
1c008b78:	7e640413          	addi	s0,s0,2022 # fc23c7e6 <pulp__FC+0xfc23c7e7>
1c008b7c:	348728a3          	sw	s0,849(a4)
1c008b80:	d24dd437          	lui	s0,0xd24dd
1c008b84:	bc440413          	addi	s0,s0,-1084 # d24dcbc4 <pulp__FC+0xd24dcbc5>
1c008b88:	34872aa3          	sw	s0,853(a4)
1c008b8c:	52542437          	lui	s0,0x52542
1c008b90:	dde40413          	addi	s0,s0,-546 # 52541dde <__l2_shared_end+0x36531dde>
1c008b94:	34872ca3          	sw	s0,857(a4)
1c008b98:	8df35437          	lui	s0,0x8df35
1c008b9c:	ef440413          	addi	s0,s0,-268 # 8df34ef4 <pulp__FC+0x8df34ef5>
1c008ba0:	34872ea3          	sw	s0,861(a4)
1c008ba4:	5a612437          	lui	s0,0x5a612
1c008ba8:	e6b40413          	addi	s0,s0,-405 # 5a611e6b <__l2_shared_end+0x3e601e6b>
1c008bac:	368720a3          	sw	s0,865(a4)
1c008bb0:	e9a11437          	lui	s0,0xe9a11
1c008bb4:	3e040413          	addi	s0,s0,992 # e9a113e0 <pulp__FC+0xe9a113e1>
1c008bb8:	368722a3          	sw	s0,869(a4)
1c008bbc:	0383a437          	lui	s0,0x383a
1c008bc0:	18340413          	addi	s0,s0,387 # 383a183 <__CTOR_LIST__-0x187c5e81>
1c008bc4:	368724a3          	sw	s0,873(a4)
1c008bc8:	5aff5437          	lui	s0,0x5aff5
1c008bcc:	ebd40413          	addi	s0,s0,-323 # 5aff4ebd <__l2_shared_end+0x3efe4ebd>
1c008bd0:	368726a3          	sw	s0,877(a4)
1c008bd4:	08a4a437          	lui	s0,0x8a4a
1c008bd8:	8c940413          	addi	s0,s0,-1847 # 8a498c9 <__CTOR_LIST__-0x135b673b>
1c008bdc:	368728a3          	sw	s0,881(a4)
1c008be0:	03205437          	lui	s0,0x3205
1c008be4:	79240413          	addi	s0,s0,1938 # 3205792 <__CTOR_LIST__-0x18dfa872>
1c008be8:	36872aa3          	sw	s0,885(a4)
1c008bec:	19a06437          	lui	s0,0x19a06
1c008bf0:	7c840413          	addi	s0,s0,1992 # 19a067c8 <__CTOR_LIST__-0x25f983c>
1c008bf4:	36872ca3          	sw	s0,889(a4)
1c008bf8:	ff93c437          	lui	s0,0xff93c
1c008bfc:	4ec40413          	addi	s0,s0,1260 # ff93c4ec <pulp__FC+0xff93c4ed>
1c008c00:	36872ea3          	sw	s0,893(a4)
1c008c04:	8e35e437          	lui	s0,0x8e35e
1c008c08:	b9d40413          	addi	s0,s0,-1123 # 8e35db9d <pulp__FC+0x8e35db9e>
1c008c0c:	388720a3          	sw	s0,897(a4)
1c008c10:	5f00c437          	lui	s0,0x5f00c
1c008c14:	b2f40413          	addi	s0,s0,-1233 # 5f00bb2f <__l2_shared_end+0x42ffbb2f>
1c008c18:	388722a3          	sw	s0,901(a4)
1c008c1c:	5d7c5437          	lui	s0,0x5d7c5
1c008c20:	f7740413          	addi	s0,s0,-137 # 5d7c4f77 <__l2_shared_end+0x417b4f77>
1c008c24:	388724a3          	sw	s0,905(a4)
1c008c28:	73e1e437          	lui	s0,0x73e1e
1c008c2c:	8bd40413          	addi	s0,s0,-1859 # 73e1d8bd <__l2_shared_end+0x57e0d8bd>
1c008c30:	388726a3          	sw	s0,909(a4)
1c008c34:	bb704437          	lui	s0,0xbb704
1c008c38:	046d                	addi	s0,s0,27
1c008c3a:	388728a3          	sw	s0,913(a4)
1c008c3e:	6496d437          	lui	s0,0x6496d
1c008c42:	85b40413          	addi	s0,s0,-1957 # 6496c85b <__l2_shared_end+0x4895c85b>
1c008c46:	38872aa3          	sw	s0,917(a4)
1c008c4a:	719fe437          	lui	s0,0x719fe
1c008c4e:	e3040413          	addi	s0,s0,-464 # 719fde30 <__l2_shared_end+0x559ede30>
1c008c52:	38872ca3          	sw	s0,921(a4)
1c008c56:	80445437          	lui	s0,0x80445
1c008c5a:	5ef40413          	addi	s0,s0,1519 # 804455ef <pulp__FC+0x804455f0>
1c008c5e:	38872ea3          	sw	s0,925(a4)
1c008c62:	fc7be437          	lui	s0,0xfc7be
1c008c66:	66d40413          	addi	s0,s0,1645 # fc7be66d <pulp__FC+0xfc7be66e>
1c008c6a:	3a8720a3          	sw	s0,929(a4)
1c008c6e:	3423e437          	lui	s0,0x3423e
1c008c72:	d7d40413          	addi	s0,s0,-643 # 3423dd7d <__l2_shared_end+0x1822dd7d>
1c008c76:	3a8722a3          	sw	s0,933(a4)
1c008c7a:	8bedd437          	lui	s0,0x8bedd
1c008c7e:	a7e40413          	addi	s0,s0,-1410 # 8bedca7e <pulp__FC+0x8bedca7f>
1c008c82:	3a8724a3          	sw	s0,937(a4)
1c008c86:	81414437          	lui	s0,0x81414
1c008c8a:	af540413          	addi	s0,s0,-1291 # 81413af5 <pulp__FC+0x81413af6>
1c008c8e:	3a8726a3          	sw	s0,941(a4)
1c008c92:	1b639437          	lui	s0,0x1b639
1c008c96:	e0140413          	addi	s0,s0,-511 # 1b638e01 <__CTOR_LIST__-0x9c7203>
1c008c9a:	3a8728a3          	sw	s0,945(a4)
1c008c9e:	288c8437          	lui	s0,0x288c8
1c008ca2:	05f40413          	addi	s0,s0,95 # 288c805f <__l2_shared_end+0xc8b805f>
1c008ca6:	3a872aa3          	sw	s0,949(a4)
1c008caa:	9d644437          	lui	s0,0x9d644
1c008cae:	ca740413          	addi	s0,s0,-857 # 9d643ca7 <pulp__FC+0x9d643ca8>
1c008cb2:	3a872ca3          	sw	s0,953(a4)
1c008cb6:	91262437          	lui	s0,0x91262
1c008cba:	34440413          	addi	s0,s0,836 # 91262344 <pulp__FC+0x91262345>
1c008cbe:	3a872ea3          	sw	s0,957(a4)
1c008cc2:	903cf437          	lui	s0,0x903cf
1c008cc6:	4ea40413          	addi	s0,s0,1258 # 903cf4ea <pulp__FC+0x903cf4eb>
1c008cca:	3c8720a3          	sw	s0,961(a4)
1c008cce:	19b40437          	lui	s0,0x19b40
1c008cd2:	45e40413          	addi	s0,s0,1118 # 19b4045e <__CTOR_LIST__-0x24bfba6>
1c008cd6:	3c8722a3          	sw	s0,965(a4)
1c008cda:	20d0b437          	lui	s0,0x20d0b
1c008cde:	62640413          	addi	s0,s0,1574 # 20d0b626 <__l2_shared_end+0x4cfb626>
1c008ce2:	3c8724a3          	sw	s0,969(a4)
1c008ce6:	4e11c437          	lui	s0,0x4e11c
1c008cea:	fbc40413          	addi	s0,s0,-68 # 4e11bfbc <__l2_shared_end+0x3210bfbc>
1c008cee:	3c8726a3          	sw	s0,973(a4)
1c008cf2:	f3c0c437          	lui	s0,0xf3c0c
1c008cf6:	f8c40413          	addi	s0,s0,-116 # f3c0bf8c <pulp__FC+0xf3c0bf8d>
1c008cfa:	3c8728a3          	sw	s0,977(a4)
1c008cfe:	2d073437          	lui	s0,0x2d073
1c008d02:	2ee40413          	addi	s0,s0,750 # 2d0732ee <__l2_shared_end+0x110632ee>
1c008d06:	3c872aa3          	sw	s0,981(a4)
1c008d0a:	7391f437          	lui	s0,0x7391f
1c008d0e:	b4740413          	addi	s0,s0,-1209 # 7391eb47 <__l2_shared_end+0x5790eb47>
1c008d12:	3c872ca3          	sw	s0,985(a4)
1c008d16:	6ff07437          	lui	s0,0x6ff07
1c008d1a:	cae40413          	addi	s0,s0,-850 # 6ff06cae <__l2_shared_end+0x53ef6cae>
1c008d1e:	3c872ea3          	sw	s0,989(a4)
1c008d22:	22c4a437          	lui	s0,0x22c4a
1c008d26:	a0c40413          	addi	s0,s0,-1524 # 22c49a0c <__l2_shared_end+0x6c39a0c>
1c008d2a:	3e8720a3          	sw	s0,993(a4)
1c008d2e:	95ce5437          	lui	s0,0x95ce5
1c008d32:	73940413          	addi	s0,s0,1849 # 95ce5739 <pulp__FC+0x95ce573a>
1c008d36:	3e8722a3          	sw	s0,997(a4)
1c008d3a:	5435                	li	s0,-19
1c008d3c:	3e8705a3          	sb	s0,1003(a4)
1c008d40:	2605d437          	lui	s0,0x2605d
1c008d44:	eb940413          	addi	s0,s0,-327 # 2605ceb9 <__l2_shared_end+0xa04ceb9>
1c008d48:	3e872623          	sw	s0,1004(a4)
1c008d4c:	9277f437          	lui	s0,0x9277f
1c008d50:	93240413          	addi	s0,s0,-1742 # 9277e932 <pulp__FC+0x9277e933>
1c008d54:	3e872823          	sw	s0,1008(a4)
1c008d58:	d2d32437          	lui	s0,0xd2d32
1c008d5c:	e4e40413          	addi	s0,s0,-434 # d2d31e4e <pulp__FC+0xd2d31e4f>
1c008d60:	3e872a23          	sw	s0,1012(a4)
1c008d64:	5274c437          	lui	s0,0x5274c
1c008d68:	cbd40413          	addi	s0,s0,-835 # 5274bcbd <__l2_shared_end+0x3673bcbd>
1c008d6c:	3e872c23          	sw	s0,1016(a4)
1c008d70:	bf059437          	lui	s0,0xbf059
1c008d74:	7ef40413          	addi	s0,s0,2031 # bf0597ef <pulp__FC+0xbf0597f0>
1c008d78:	3e872e23          	sw	s0,1020(a4)
1c008d7c:	d9bfb437          	lui	s0,0xd9bfb
1c008d80:	90240413          	addi	s0,s0,-1790 # d9bfa902 <pulp__FC+0xd9bfa903>
1c008d84:	40872023          	sw	s0,1024(a4)
1c008d88:	9dae4437          	lui	s0,0x9dae4
1c008d8c:	86340413          	addi	s0,s0,-1949 # 9dae3863 <pulp__FC+0x9dae3864>
1c008d90:	40872223          	sw	s0,1028(a4)
1c008d94:	d3937437          	lui	s0,0xd3937
1c008d98:	3a740413          	addi	s0,s0,935 # d39373a7 <pulp__FC+0xd39373a8>
1c008d9c:	40872423          	sw	s0,1032(a4)
1c008da0:	f6360437          	lui	s0,0xf6360
1c008da4:	d0e40413          	addi	s0,s0,-754 # f635fd0e <pulp__FC+0xf635fd0f>
1c008da8:	40872623          	sw	s0,1036(a4)
1c008dac:	1913e437          	lui	s0,0x1913e
1c008db0:	c1b40413          	addi	s0,s0,-997 # 1913dc1b <__CTOR_LIST__-0x2ec23e9>
1c008db4:	40872823          	sw	s0,1040(a4)
1c008db8:	b4f6f437          	lui	s0,0xb4f6f
1c008dbc:	b3b40413          	addi	s0,s0,-1221 # b4f6eb3b <pulp__FC+0xb4f6eb3c>
1c008dc0:	40872a23          	sw	s0,1044(a4)
1c008dc4:	e1ecd437          	lui	s0,0xe1ecd
1c008dc8:	9bd40413          	addi	s0,s0,-1603 # e1ecc9bd <pulp__FC+0xe1ecc9be>
1c008dcc:	40872c23          	sw	s0,1048(a4)
1c008dd0:	1d757437          	lui	s0,0x1d757
1c008dd4:	d8440413          	addi	s0,s0,-636 # 1d756d84 <__l2_shared_end+0x1746d84>
1c008dd8:	40872e23          	sw	s0,1052(a4)
1c008ddc:	bc591437          	lui	s0,0xbc591
1c008de0:	40c40413          	addi	s0,s0,1036 # bc59140c <pulp__FC+0xbc59140d>
1c008de4:	42872023          	sw	s0,1056(a4)
1c008de8:	0857c437          	lui	s0,0x857c
1c008dec:	9bb40413          	addi	s0,s0,-1605 # 857b9bb <__CTOR_LIST__-0x13a84649>
1c008df0:	42872223          	sw	s0,1060(a4)
1c008df4:	b6ea6437          	lui	s0,0xb6ea6
1c008df8:	0aa40413          	addi	s0,s0,170 # b6ea60aa <pulp__FC+0xb6ea60ab>
1c008dfc:	42872423          	sw	s0,1064(a4)
1c008e00:	66fc4437          	lui	s0,0x66fc4
1c008e04:	ab340413          	addi	s0,s0,-1357 # 66fc3ab3 <__l2_shared_end+0x4afb3ab3>
1c008e08:	42872623          	sw	s0,1068(a4)
1c008e0c:	d946f437          	lui	s0,0xd946f
1c008e10:	d5f40413          	addi	s0,s0,-673 # d946ed5f <pulp__FC+0xd946ed60>
1c008e14:	42872823          	sw	s0,1072(a4)
1c008e18:	f69f8437          	lui	s0,0xf69f8
1c008e1c:	bde40413          	addi	s0,s0,-1058 # f69f7bde <pulp__FC+0xf69f7bdf>
1c008e20:	42872a23          	sw	s0,1076(a4)
1c008e24:	4e06e437          	lui	s0,0x4e06e
1c008e28:	6f340413          	addi	s0,s0,1779 # 4e06e6f3 <__l2_shared_end+0x3205e6f3>
1c008e2c:	42872c23          	sw	s0,1080(a4)
1c008e30:	7223c437          	lui	s0,0x7223c
1c008e34:	f4e40413          	addi	s0,s0,-178 # 7223bf4e <__l2_shared_end+0x5622bf4e>
1c008e38:	42872e23          	sw	s0,1084(a4)
1c008e3c:	8aa32437          	lui	s0,0x8aa32
1c008e40:	bc040413          	addi	s0,s0,-1088 # 8aa31bc0 <pulp__FC+0x8aa31bc1>
1c008e44:	44872023          	sw	s0,1088(a4)
1c008e48:	d1266437          	lui	s0,0xd1266
1c008e4c:	5dd40413          	addi	s0,s0,1501 # d12665dd <pulp__FC+0xd12665de>
1c008e50:	44872223          	sw	s0,1092(a4)
1c008e54:	776c5437          	lui	s0,0x776c5
1c008e58:	aba40413          	addi	s0,s0,-1350 # 776c4aba <__l2_shared_end+0x5b6b4aba>
1c008e5c:	44872423          	sw	s0,1096(a4)
1c008e60:	80786437          	lui	s0,0x80786
1c008e64:	5e640413          	addi	s0,s0,1510 # 807865e6 <pulp__FC+0x807865e7>
1c008e68:	44872623          	sw	s0,1100(a4)
1c008e6c:	89409437          	lui	s0,0x89409
1c008e70:	7fe9                	lui	t6,0xffffa
1c008e72:	83340413          	addi	s0,s0,-1997 # 89408833 <pulp__FC+0x89408834>
1c008e76:	bcff8a13          	addi	s4,t6,-1073 # ffff9bcf <pulp__FC+0xffff9bd0>
1c008e7a:	44872823          	sw	s0,1104(a4)
1c008e7e:	2b6d6437          	lui	s0,0x2b6d6
1c008e82:	3f4714a3          	sh	s4,1001(a4)
1c008e86:	2e640413          	addi	s0,s0,742 # 2b6d62e6 <__l2_shared_end+0xf6c62e6>
1c008e8a:	44872a23          	sw	s0,1108(a4)
1c008e8e:	4c4e8437          	lui	s0,0x4c4e8
1c008e92:	eb040413          	addi	s0,s0,-336 # 4c4e7eb0 <__l2_shared_end+0x304d7eb0>
1c008e96:	44872c23          	sw	s0,1112(a4)
1c008e9a:	67d4f437          	lui	s0,0x67d4f
1c008e9e:	77740413          	addi	s0,s0,1911 # 67d4f777 <__l2_shared_end+0x4bd3f777>
1c008ea2:	44872e23          	sw	s0,1116(a4)
1c008ea6:	b60ea437          	lui	s0,0xb60ea
1c008eaa:	db640413          	addi	s0,s0,-586 # b60e9db6 <pulp__FC+0xb60e9db7>
1c008eae:	46872023          	sw	s0,1120(a4)
1c008eb2:	22eee437          	lui	s0,0x22eee
1c008eb6:	bf540413          	addi	s0,s0,-1035 # 22eedbf5 <__l2_shared_end+0x6eddbf5>
1c008eba:	46872223          	sw	s0,1124(a4)
1c008ebe:	4decf437          	lui	s0,0x4decf
1c008ec2:	5fb40413          	addi	s0,s0,1531 # 4decf5fb <__l2_shared_end+0x31ebf5fb>
1c008ec6:	46872423          	sw	s0,1128(a4)
1c008eca:	e0761437          	lui	s0,0xe0761
1c008ece:	0e740413          	addi	s0,s0,231 # e07610e7 <pulp__FC+0xe07610e8>
1c008ed2:	46872623          	sw	s0,1132(a4)
1c008ed6:	17e7b437          	lui	s0,0x17e7b
1c008eda:	70840413          	addi	s0,s0,1800 # 17e7b708 <__CTOR_LIST__-0x41848fc>
1c008ede:	46872823          	sw	s0,1136(a4)
1c008ee2:	b2fd0437          	lui	s0,0xb2fd0
1c008ee6:	9eb40413          	addi	s0,s0,-1557 # b2fcf9eb <pulp__FC+0xb2fcf9ec>
1c008eea:	46872a23          	sw	s0,1140(a4)
1c008eee:	69a6e437          	lui	s0,0x69a6e
1c008ef2:	e6940413          	addi	s0,s0,-407 # 69a6de69 <__l2_shared_end+0x4da5de69>
1c008ef6:	46872c23          	sw	s0,1144(a4)
1c008efa:	8697e437          	lui	s0,0x8697e
1c008efe:	cf040413          	addi	s0,s0,-784 # 8697dcf0 <pulp__FC+0x8697dcf1>
1c008f02:	46872e23          	sw	s0,1148(a4)
1c008f06:	aae02437          	lui	s0,0xaae02
1c008f0a:	63740413          	addi	s0,s0,1591 # aae02637 <pulp__FC+0xaae02638>
1c008f0e:	48872023          	sw	s0,1152(a4)
1c008f12:	856a9437          	lui	s0,0x856a9
1c008f16:	46040413          	addi	s0,s0,1120 # 856a9460 <pulp__FC+0x856a9461>
1c008f1a:	48872223          	sw	s0,1156(a4)
1c008f1e:	f2981437          	lui	s0,0xf2981
1c008f22:	dd440413          	addi	s0,s0,-556 # f2980dd4 <pulp__FC+0xf2980dd5>
1c008f26:	48872423          	sw	s0,1160(a4)
1c008f2a:	eba60437          	lui	s0,0xeba60
1c008f2e:	38d40413          	addi	s0,s0,909 # eba6038d <pulp__FC+0xeba6038e>
1c008f32:	48872623          	sw	s0,1164(a4)
1c008f36:	34f44437          	lui	s0,0x34f44
1c008f3a:	b7340413          	addi	s0,s0,-1165 # 34f43b73 <__l2_shared_end+0x18f33b73>
1c008f3e:	48872823          	sw	s0,1168(a4)
1c008f42:	7beb8437          	lui	s0,0x7beb8
1c008f46:	fac40413          	addi	s0,s0,-84 # 7beb7fac <__l2_shared_end+0x5fea7fac>
1c008f4a:	48872a23          	sw	s0,1172(a4)
1c008f4e:	deef9437          	lui	s0,0xdeef9
1c008f52:	26140413          	addi	s0,s0,609 # deef9261 <pulp__FC+0xdeef9262>
1c008f56:	48872c23          	sw	s0,1176(a4)
1c008f5a:	e7b81437          	lui	s0,0xe7b81
1c008f5e:	7bf40413          	addi	s0,s0,1983 # e7b817bf <pulp__FC+0xe7b817c0>
1c008f62:	48872e23          	sw	s0,1180(a4)
1c008f66:	46a99437          	lui	s0,0x46a99
1c008f6a:	13e40413          	addi	s0,s0,318 # 46a9913e <__l2_shared_end+0x2aa8913e>
1c008f6e:	4a872023          	sw	s0,1184(a4)
1c008f72:	7e6ad437          	lui	s0,0x7e6ad
1c008f76:	da440413          	addi	s0,s0,-604 # 7e6acda4 <__l2_shared_end+0x6269cda4>
1c008f7a:	4a872223          	sw	s0,1188(a4)
1c008f7e:	860d3437          	lui	s0,0x860d3
1c008f82:	8f140413          	addi	s0,s0,-1807 # 860d28f1 <pulp__FC+0x860d28f2>
1c008f86:	4a872423          	sw	s0,1192(a4)
1c008f8a:	c6866437          	lui	s0,0xc6866
1c008f8e:	76b40413          	addi	s0,s0,1899 # c686676b <pulp__FC+0xc686676c>
1c008f92:	4a872623          	sw	s0,1196(a4)
1c008f96:	f0daa437          	lui	s0,0xf0daa
1c008f9a:	8bd40413          	addi	s0,s0,-1859 # f0da98bd <pulp__FC+0xf0da98be>
1c008f9e:	4a872823          	sw	s0,1200(a4)
1c008fa2:	d47d7437          	lui	s0,0xd47d7
1c008fa6:	9ec40413          	addi	s0,s0,-1556 # d47d69ec <pulp__FC+0xd47d69ed>
1c008faa:	4a872a23          	sw	s0,1204(a4)
1c008fae:	ca113437          	lui	s0,0xca113
1c008fb2:	1ce40413          	addi	s0,s0,462 # ca1131ce <pulp__FC+0xca1131cf>
1c008fb6:	4a872c23          	sw	s0,1208(a4)
1c008fba:	afbea437          	lui	s0,0xafbea
1c008fbe:	17640413          	addi	s0,s0,374 # afbea176 <pulp__FC+0xafbea177>
1c008fc2:	4a872e23          	sw	s0,1212(a4)
1c008fc6:	d1707437          	lui	s0,0xd1707
1c008fca:	7a340413          	addi	s0,s0,1955 # d17077a3 <pulp__FC+0xd17077a4>
1c008fce:	4c872023          	sw	s0,1216(a4)
1c008fd2:	68f1d437          	lui	s0,0x68f1d
1c008fd6:	2ca40413          	addi	s0,s0,714 # 68f1d2ca <__l2_shared_end+0x4cf0d2ca>
1c008fda:	4c872223          	sw	s0,1220(a4)
1c008fde:	ca22b437          	lui	s0,0xca22b
1c008fe2:	6cf40413          	addi	s0,s0,1743 # ca22b6cf <pulp__FC+0xca22b6d0>
1c008fe6:	4c872423          	sw	s0,1224(a4)
1c008fea:	619a3437          	lui	s0,0x619a3
1c008fee:	c3440413          	addi	s0,s0,-972 # 619a2c34 <__l2_shared_end+0x45992c34>
1c008ff2:	4c872623          	sw	s0,1228(a4)
1c008ff6:	ae468437          	lui	s0,0xae468
1c008ffa:	cb240413          	addi	s0,s0,-846 # ae467cb2 <pulp__FC+0xae467cb3>
1c008ffe:	4c872823          	sw	s0,1232(a4)
1c009002:	51e8d437          	lui	s0,0x51e8d
1c009006:	a2740413          	addi	s0,s0,-1497 # 51e8ca27 <__l2_shared_end+0x35e7ca27>
1c00900a:	4c872a23          	sw	s0,1236(a4)
1c00900e:	021af437          	lui	s0,0x21af
1c009012:	c7e40413          	addi	s0,s0,-898 # 21aec7e <__CTOR_LIST__-0x19e51386>
1c009016:	4c872c23          	sw	s0,1240(a4)
1c00901a:	f14c4437          	lui	s0,0xf14c4
1c00901e:	26840413          	addi	s0,s0,616 # f14c4268 <pulp__FC+0xf14c4269>
1c009022:	4c872e23          	sw	s0,1244(a4)
1c009026:	4098b437          	lui	s0,0x4098b
1c00902a:	b8640413          	addi	s0,s0,-1146 # 4098ab86 <__l2_shared_end+0x2497ab86>
1c00902e:	4e872023          	sw	s0,1248(a4)
1c009032:	746d                	lui	s0,0xffffb
1c009034:	9d140413          	addi	s0,s0,-1583 # ffffa9d1 <pulp__FC+0xffffa9d2>
1c009038:	4e871223          	sh	s0,1252(a4)
1c00903c:	fd700413          	li	s0,-41
1c009040:	4e870323          	sb	s0,1254(a4)
1c009044:	87366437          	lui	s0,0x87366
1c009048:	50740413          	addi	s0,s0,1287 # 87366507 <pulp__FC+0x87366508>
1c00904c:	4e8723a3          	sw	s0,1255(a4)
1c009050:	97f13437          	lui	s0,0x97f13
1c009054:	88740413          	addi	s0,s0,-1913 # 97f12887 <pulp__FC+0x97f12888>
1c009058:	4e8725a3          	sw	s0,1259(a4)
1c00905c:	5ad0d437          	lui	s0,0x5ad0d
1c009060:	20b40413          	addi	s0,s0,523 # 5ad0d20b <__l2_shared_end+0x3ecfd20b>
1c009064:	4e8727a3          	sw	s0,1263(a4)
1c009068:	4953c437          	lui	s0,0x4953c
1c00906c:	51b40413          	addi	s0,s0,1307 # 4953c51b <__l2_shared_end+0x2d52c51b>
1c009070:	4e8729a3          	sw	s0,1267(a4)
1c009074:	93219437          	lui	s0,0x93219
1c009078:	6c840413          	addi	s0,s0,1736 # 932196c8 <pulp__FC+0x932196c9>
1c00907c:	4e872ba3          	sw	s0,1271(a4)
1c009080:	803e4437          	lui	s0,0x803e4
1c009084:	49e40413          	addi	s0,s0,1182 # 803e449e <pulp__FC+0x803e449f>
1c009088:	4e872da3          	sw	s0,1275(a4)
1c00908c:	19c71437          	lui	s0,0x19c71
1c009090:	1f640413          	addi	s0,s0,502 # 19c711f6 <__CTOR_LIST__-0x238ee0e>
1c009094:	4e872fa3          	sw	s0,1279(a4)
1c009098:	cc94a437          	lui	s0,0xcc94a
1c00909c:	3ef40413          	addi	s0,s0,1007 # cc94a3ef <pulp__FC+0xcc94a3f0>
1c0090a0:	508721a3          	sw	s0,1283(a4)
1c0090a4:	d832f437          	lui	s0,0xd832f
1c0090a8:	27c40413          	addi	s0,s0,636 # d832f27c <pulp__FC+0xd832f27d>
1c0090ac:	508723a3          	sw	s0,1287(a4)
1c0090b0:	772de437          	lui	s0,0x772de
1c0090b4:	98e40413          	addi	s0,s0,-1650 # 772dd98e <__l2_shared_end+0x5b2cd98e>
1c0090b8:	508725a3          	sw	s0,1291(a4)
1c0090bc:	e6139437          	lui	s0,0xe6139
1c0090c0:	ad640413          	addi	s0,s0,-1322 # e6138ad6 <pulp__FC+0xe6138ad7>
1c0090c4:	508727a3          	sw	s0,1295(a4)
1c0090c8:	9e671437          	lui	s0,0x9e671
1c0090cc:	f6040413          	addi	s0,s0,-160 # 9e670f60 <pulp__FC+0x9e670f61>
1c0090d0:	508729a3          	sw	s0,1299(a4)
1c0090d4:	d667b437          	lui	s0,0xd667b
1c0090d8:	7da40413          	addi	s0,s0,2010 # d667b7da <pulp__FC+0xd667b7db>
1c0090dc:	50872ba3          	sw	s0,1303(a4)
1c0090e0:	3b5be437          	lui	s0,0x3b5be
1c0090e4:	48740413          	addi	s0,s0,1159 # 3b5be487 <__l2_shared_end+0x1f5ae487>
1c0090e8:	50872da3          	sw	s0,1307(a4)
1c0090ec:	00fc8437          	lui	s0,0xfc8
1c0090f0:	83d40413          	addi	s0,s0,-1987 # fc783d <__CTOR_LIST__-0x1b0387c7>
1c0090f4:	50872fa3          	sw	s0,1311(a4)
1c0090f8:	a138a437          	lui	s0,0xa138a
1c0090fc:	7be40413          	addi	s0,s0,1982 # a138a7be <pulp__FC+0xa138a7bf>
1c009100:	528721a3          	sw	s0,1315(a4)
1c009104:	2fca0437          	lui	s0,0x2fca0
1c009108:	22d40413          	addi	s0,s0,557 # 2fca022d <__l2_shared_end+0x13c9022d>
1c00910c:	528723a3          	sw	s0,1319(a4)
1c009110:	add12437          	lui	s0,0xadd12
1c009114:	e4840413          	addi	s0,s0,-440 # add11e48 <pulp__FC+0xadd11e49>
1c009118:	528725a3          	sw	s0,1323(a4)
1c00911c:	4eb62437          	lui	s0,0x4eb62
1c009120:	24a40413          	addi	s0,s0,586 # 4eb6224a <__l2_shared_end+0x32b5224a>
1c009124:	528727a3          	sw	s0,1327(a4)
1c009128:	ebb98437          	lui	s0,0xebb98
1c00912c:	f8c40413          	addi	s0,s0,-116 # ebb97f8c <pulp__FC+0xebb97f8d>
1c009130:	528729a3          	sw	s0,1331(a4)
1c009134:	52857437          	lui	s0,0x52857
1c009138:	1c740413          	addi	s0,s0,455 # 528571c7 <__l2_shared_end+0x368471c7>
1c00913c:	52872ba3          	sw	s0,1335(a4)
1c009140:	c2b2b437          	lui	s0,0xc2b2b
1c009144:	b5540413          	addi	s0,s0,-1195 # c2b2ab55 <pulp__FC+0xc2b2ab56>
1c009148:	52872da3          	sw	s0,1339(a4)
1c00914c:	06cf1437          	lui	s0,0x6cf1
1c009150:	86940413          	addi	s0,s0,-1943 # 6cf0869 <__CTOR_LIST__-0x1530f79b>
1c009154:	52872fa3          	sw	s0,1343(a4)
1c009158:	a6aaa437          	lui	s0,0xa6aaa
1c00915c:	24440413          	addi	s0,s0,580 # a6aaa244 <pulp__FC+0xa6aaa245>
1c009160:	548721a3          	sw	s0,1347(a4)
1c009164:	6a6e0437          	lui	s0,0x6a6e0
1c009168:	42240413          	addi	s0,s0,1058 # 6a6e0422 <__l2_shared_end+0x4e6d0422>
1c00916c:	548723a3          	sw	s0,1351(a4)
1c009170:	82aaf437          	lui	s0,0x82aaf
1c009174:	a6540413          	addi	s0,s0,-1435 # 82aaea65 <pulp__FC+0x82aaea66>
1c009178:	548725a3          	sw	s0,1355(a4)
1c00917c:	44b4b437          	lui	s0,0x44b4b
1c009180:	cc140413          	addi	s0,s0,-831 # 44b4acc1 <__l2_shared_end+0x28b3acc1>
1c009184:	548727a3          	sw	s0,1359(a4)
1c009188:	1ad45437          	lui	s0,0x1ad45
1c00918c:	2a340413          	addi	s0,s0,675 # 1ad452a3 <__CTOR_LIST__-0x12bad61>
1c009190:	548729a3          	sw	s0,1363(a4)
1c009194:	3a33e437          	lui	s0,0x3a33e
1c009198:	60b40413          	addi	s0,s0,1547 # 3a33e60b <__l2_shared_end+0x1e32e60b>
1c00919c:	54872ba3          	sw	s0,1367(a4)
1c0091a0:	afbf3437          	lui	s0,0xafbf3
1c0091a4:	82340413          	addi	s0,s0,-2013 # afbf2823 <pulp__FC+0xafbf2824>
1c0091a8:	54872da3          	sw	s0,1371(a4)
1c0091ac:	8ce63437          	lui	s0,0x8ce63
1c0091b0:	c9540413          	addi	s0,s0,-875 # 8ce62c95 <pulp__FC+0x8ce62c96>
1c0091b4:	54872fa3          	sw	s0,1375(a4)
1c0091b8:	40196437          	lui	s0,0x40196
1c0091bc:	f1440413          	addi	s0,s0,-236 # 40195f14 <__l2_shared_end+0x24185f14>
1c0091c0:	568721a3          	sw	s0,1379(a4)
1c0091c4:	980dd437          	lui	s0,0x980dd
1c0091c8:	09240413          	addi	s0,s0,146 # 980dd092 <pulp__FC+0x980dd093>
1c0091cc:	568723a3          	sw	s0,1383(a4)
1c0091d0:	91f08437          	lui	s0,0x91f08
1c0091d4:	d7b40413          	addi	s0,s0,-645 # 91f07d7b <pulp__FC+0x91f07d7c>
1c0091d8:	568725a3          	sw	s0,1387(a4)
1c0091dc:	34270437          	lui	s0,0x34270
1c0091e0:	71540413          	addi	s0,s0,1813 # 34270715 <__l2_shared_end+0x18260715>
1c0091e4:	568727a3          	sw	s0,1391(a4)
1c0091e8:	782f8437          	lui	s0,0x782f8
1c0091ec:	96a40413          	addi	s0,s0,-1686 # 782f796a <__l2_shared_end+0x5c2e796a>
1c0091f0:	568729a3          	sw	s0,1395(a4)
1c0091f4:	6806f437          	lui	s0,0x6806f
1c0091f8:	af840413          	addi	s0,s0,-1288 # 6806eaf8 <__l2_shared_end+0x4c05eaf8>
1c0091fc:	56872ba3          	sw	s0,1399(a4)
1c009200:	f80ce437          	lui	s0,0xf80ce
1c009204:	0c740413          	addi	s0,s0,199 # f80ce0c7 <pulp__FC+0xf80ce0c8>
1c009208:	56872da3          	sw	s0,1403(a4)
1c00920c:	67c77437          	lui	s0,0x67c77
1c009210:	e3540413          	addi	s0,s0,-459 # 67c76e35 <__l2_shared_end+0x4bc66e35>
1c009214:	56872fa3          	sw	s0,1407(a4)
1c009218:	8f3b0437          	lui	s0,0x8f3b0
1c00921c:	40a40413          	addi	s0,s0,1034 # 8f3b040a <pulp__FC+0x8f3b040b>
1c009220:	588721a3          	sw	s0,1411(a4)
1c009224:	97a4a437          	lui	s0,0x97a4a
1c009228:	23540413          	addi	s0,s0,565 # 97a4a235 <pulp__FC+0x97a4a236>
1c00922c:	588723a3          	sw	s0,1415(a4)
1c009230:	41ddb437          	lui	s0,0x41ddb
1c009234:	56f40413          	addi	s0,s0,1391 # 41ddb56f <__l2_shared_end+0x25dcb56f>
1c009238:	588725a3          	sw	s0,1419(a4)
1c00923c:	87821437          	lui	s0,0x87821
1c009240:	21a40413          	addi	s0,s0,538 # 8782121a <pulp__FC+0x8782121b>
1c009244:	588727a3          	sw	s0,1423(a4)
1c009248:	83f0d437          	lui	s0,0x83f0d
1c00924c:	dd440413          	addi	s0,s0,-556 # 83f0cdd4 <pulp__FC+0x83f0cdd5>
1c009250:	588729a3          	sw	s0,1427(a4)
1c009254:	a991a437          	lui	s0,0xa991a
1c009258:	72040413          	addi	s0,s0,1824 # a991a720 <pulp__FC+0xa991a721>
1c00925c:	58872ba3          	sw	s0,1431(a4)
1c009260:	8452b437          	lui	s0,0x8452b
1c009264:	7e240413          	addi	s0,s0,2018 # 8452b7e2 <pulp__FC+0x8452b7e3>
1c009268:	58872da3          	sw	s0,1435(a4)
1c00926c:	1f146437          	lui	s0,0x1f146
1c009270:	1e340413          	addi	s0,s0,483 # 1f1461e3 <__l2_shared_end+0x31361e3>
1c009274:	58872fa3          	sw	s0,1439(a4)
1c009278:	0e3a4437          	lui	s0,0xe3a4
1c00927c:	2d040413          	addi	s0,s0,720 # e3a42d0 <__CTOR_LIST__-0xdc5bd34>
1c009280:	5a8721a3          	sw	s0,1443(a4)
1c009284:	a744c437          	lui	s0,0xa744c
1c009288:	7db40413          	addi	s0,s0,2011 # a744c7db <pulp__FC+0xa744c7dc>
1c00928c:	5a8723a3          	sw	s0,1447(a4)
1c009290:	1f902437          	lui	s0,0x1f902
1c009294:	f5740413          	addi	s0,s0,-169 # 1f901f57 <__l2_shared_end+0x38f1f57>
1c009298:	5a8725a3          	sw	s0,1451(a4)
1c00929c:	c229e437          	lui	s0,0xc229e
1c0092a0:	d2840413          	addi	s0,s0,-728 # c229dd28 <pulp__FC+0xc229dd29>
1c0092a4:	5a8727a3          	sw	s0,1455(a4)
1c0092a8:	3c720437          	lui	s0,0x3c720
1c0092ac:	87c40413          	addi	s0,s0,-1924 # 3c71f87c <__l2_shared_end+0x2070f87c>
1c0092b0:	5a8729a3          	sw	s0,1459(a4)
1c0092b4:	363e7437          	lui	s0,0x363e7
1c0092b8:	45940413          	addi	s0,s0,1113 # 363e7459 <__l2_shared_end+0x1a3d7459>
1c0092bc:	5a872ba3          	sw	s0,1463(a4)
1c0092c0:	e9cba437          	lui	s0,0xe9cba
1c0092c4:	9b740413          	addi	s0,s0,-1609 # e9cb99b7 <pulp__FC+0xe9cb99b8>
1c0092c8:	5a872da3          	sw	s0,1467(a4)
1c0092cc:	2597c437          	lui	s0,0x2597c
1c0092d0:	22940413          	addi	s0,s0,553 # 2597c229 <__l2_shared_end+0x996c229>
1c0092d4:	5a872fa3          	sw	s0,1471(a4)
1c0092d8:	16b51437          	lui	s0,0x16b51
1c0092dc:	12340413          	addi	s0,s0,291 # 16b51123 <__CTOR_LIST__-0x54aeee1>
1c0092e0:	5c8721a3          	sw	s0,1475(a4)
1c0092e4:	c692a437          	lui	s0,0xc692a
1c0092e8:	1469                	addi	s0,s0,-6
1c0092ea:	5c8723a3          	sw	s0,1479(a4)
1c0092ee:	d40e7437          	lui	s0,0xd40e7
1c0092f2:	f4340413          	addi	s0,s0,-189 # d40e6f43 <pulp__FC+0xd40e6f44>
1c0092f6:	5c8725a3          	sw	s0,1483(a4)
1c0092fa:	d5927437          	lui	s0,0xd5927
1c0092fe:	7e140413          	addi	s0,s0,2017 # d59277e1 <pulp__FC+0xd59277e2>
1c009302:	5c8727a3          	sw	s0,1487(a4)
1c009306:	56be8437          	lui	s0,0x56be8
1c00930a:	47d40413          	addi	s0,s0,1149 # 56be847d <__l2_shared_end+0x3abd847d>
1c00930e:	5c8729a3          	sw	s0,1491(a4)
1c009312:	0d282437          	lui	s0,0xd282
1c009316:	bf240413          	addi	s0,s0,-1038 # d281bf2 <__CTOR_LIST__-0xed7e412>
1c00931a:	5c872ba3          	sw	s0,1495(a4)
1c00931e:	4e581437          	lui	s0,0x4e581
1c009322:	a9d40413          	addi	s0,s0,-1379 # 4e580a9d <__l2_shared_end+0x32570a9d>
1c009326:	5c872da3          	sw	s0,1499(a4)
1c00932a:	25a57437          	lui	s0,0x25a57
1c00932e:	0b640413          	addi	s0,s0,182 # 25a570b6 <__l2_shared_end+0x9a470b6>
1c009332:	5e872123          	sw	s0,1506(a4)
1c009336:	d3efa437          	lui	s0,0xd3efa
1c00933a:	1bd40413          	addi	s0,s0,445 # d3efa1bd <pulp__FC+0xd3efa1be>
1c00933e:	5e872323          	sw	s0,1510(a4)
1c009342:	1214b437          	lui	s0,0x1214b
1c009346:	02f40413          	addi	s0,s0,47 # 1214b02f <__CTOR_LIST__-0x9eb4fd5>
1c00934a:	5e872523          	sw	s0,1514(a4)
1c00934e:	b0581437          	lui	s0,0xb0581
1c009352:	ef440413          	addi	s0,s0,-268 # b0580ef4 <pulp__FC+0xb0580ef5>
1c009356:	5e872723          	sw	s0,1518(a4)
1c00935a:	8739c437          	lui	s0,0x8739c
1c00935e:	2f440413          	addi	s0,s0,756 # 8739c2f4 <pulp__FC+0x8739c2f5>
1c009362:	5e872923          	sw	s0,1522(a4)
1c009366:	33deb437          	lui	s0,0x33deb
1c00936a:	f9240413          	addi	s0,s0,-110 # 33deaf92 <__l2_shared_end+0x17ddaf92>
1c00936e:	5e872b23          	sw	s0,1526(a4)
1c009372:	04029437          	lui	s0,0x4029
1c009376:	24b40413          	addi	s0,s0,587 # 402924b <__CTOR_LIST__-0x17fd6db9>
1c00937a:	5e872d23          	sw	s0,1530(a4)
1c00937e:	678e4437          	lui	s0,0x678e4
1c009382:	76740413          	addi	s0,s0,1895 # 678e4767 <__l2_shared_end+0x4b8d4767>
1c009386:	5e872f23          	sw	s0,1534(a4)
1c00938a:	1dd16437          	lui	s0,0x1dd16
1c00938e:	07c40413          	addi	s0,s0,124 # 1dd1607c <__l2_shared_end+0x1d0607c>
1c009392:	60872123          	sw	s0,1538(a4)
1c009396:	0e689437          	lui	s0,0xe689
1c00939a:	e5c40413          	addi	s0,s0,-420 # e688e5c <__CTOR_LIST__-0xd9771a8>
1c00939e:	60872323          	sw	s0,1542(a4)
1c0093a2:	83d50437          	lui	s0,0x83d50
1c0093a6:	50240413          	addi	s0,s0,1282 # 83d50502 <pulp__FC+0x83d50503>
1c0093aa:	60872523          	sw	s0,1546(a4)
1c0093ae:	82729437          	lui	s0,0x82729
1c0093b2:	5e040413          	addi	s0,s0,1504 # 827295e0 <pulp__FC+0x827295e1>
1c0093b6:	60872723          	sw	s0,1550(a4)
1c0093ba:	31777437          	lui	s0,0x31777
1c0093be:	12e40413          	addi	s0,s0,302 # 3177712e <__l2_shared_end+0x1576712e>
1c0093c2:	60872923          	sw	s0,1554(a4)
1c0093c6:	c4e3d437          	lui	s0,0xc4e3d
1c0093ca:	c4640413          	addi	s0,s0,-954 # c4e3cc46 <pulp__FC+0xc4e3cc47>
1c0093ce:	60872b23          	sw	s0,1558(a4)
1c0093d2:	7365                	lui	t1,0xffff9
1c0093d4:	7304a437          	lui	s0,0x7304a
1c0093d8:	c6830993          	addi	s3,t1,-920 # ffff8c68 <pulp__FC+0xffff8c69>
1c0093dc:	f2c40413          	addi	s0,s0,-212 # 73049f2c <__l2_shared_end+0x57039f2c>
1c0093e0:	3ae30313          	addi	t1,t1,942
1c0093e4:	60671f23          	sh	t1,1566(a4)
1c0093e8:	5d371fa3          	sh	s3,1503(a4)
1c0093ec:	5f2700a3          	sb	s2,1505(a4)
1c0093f0:	60872d23          	sw	s0,1562(a4)
1c0093f4:	f6962737          	lui	a4,0xf6962
1c0093f8:	1c007637          	lui	a2,0x1c007
1c0093fc:	34670713          	addi	a4,a4,838 # f6962346 <pulp__FC+0xf6962347>
1c009400:	8ce62023          	sw	a4,-1856(a2) # 1c0068c0 <sk_a.1510>
1c009404:	25f62737          	lui	a4,0x25f62
1c009408:	8c060793          	addi	a5,a2,-1856
1c00940c:	fb270713          	addi	a4,a4,-78 # 25f61fb2 <__l2_shared_end+0x9f51fb2>
1c009410:	c3d8                	sw	a4,4(a5)
1c009412:	1f4b7737          	lui	a4,0x1f4b7
1c009416:	bb970713          	addi	a4,a4,-1095 # 1f4b6bb9 <__l2_shared_end+0x34a6bb9>
1c00941a:	c798                	sw	a4,8(a5)
1c00941c:	b3384737          	lui	a4,0xb3384
1c009420:	a5c70713          	addi	a4,a4,-1444 # b3383a5c <pulp__FC+0xb3383a5d>
1c009424:	c7d8                	sw	a4,12(a5)
1c009426:	f3080737          	lui	a4,0xf3080
1c00942a:	7c870713          	addi	a4,a4,1992 # f30807c8 <pulp__FC+0xf30807c9>
1c00942e:	cb98                	sw	a4,16(a5)
1c009430:	8417d737          	lui	a4,0x8417d
1c009434:	c3b70713          	addi	a4,a4,-965 # 8417cc3b <pulp__FC+0x8417cc3c>
1c009438:	cbd8                	sw	a4,20(a5)
1c00943a:	be48e737          	lui	a4,0xbe48e
1c00943e:	bbe70713          	addi	a4,a4,-1090 # be48dbbe <pulp__FC+0xbe48dbbf>
1c009442:	cf98                	sw	a4,24(a5)
1c009444:	423b2737          	lui	a4,0x423b2
1c009448:	5e070713          	addi	a4,a4,1504 # 423b25e0 <__l2_shared_end+0x263a25e0>
1c00944c:	cfd8                	sw	a4,28(a5)
1c00944e:	61960737          	lui	a4,0x61960
1c009452:	b6c70713          	addi	a4,a4,-1172 # 6195fb6c <__l2_shared_end+0x4594fb6c>
1c009456:	d398                	sw	a4,32(a5)
1c009458:	98ce1737          	lui	a4,0x98ce1
1c00945c:	28770713          	addi	a4,a4,647 # 98ce1287 <pulp__FC+0x98ce1288>
1c009460:	d3d8                	sw	a4,36(a5)
1c009462:	5c3ba737          	lui	a4,0x5c3ba
1c009466:	52570713          	addi	a4,a4,1317 # 5c3ba525 <__l2_shared_end+0x403aa525>
1c00946a:	d798                	sw	a4,40(a5)
1c00946c:	43818737          	lui	a4,0x43818
1c009470:	cc870713          	addi	a4,a4,-824 # 43817cc8 <__l2_shared_end+0x27807cc8>
1c009474:	d7d8                	sw	a4,44(a5)
1c009476:	406bc737          	lui	a4,0x406bc
1c00947a:	4af70713          	addi	a4,a4,1199 # 406bc4af <__l2_shared_end+0x246ac4af>
1c00947e:	db98                	sw	a4,48(a5)
1c009480:	4b4c8737          	lui	a4,0x4b4c8
1c009484:	b6270713          	addi	a4,a4,-1182 # 4b4c7b62 <__l2_shared_end+0x2f4b7b62>
1c009488:	dbd8                	sw	a4,52(a5)
1c00948a:	2c383737          	lui	a4,0x2c383
1c00948e:	ebd70713          	addi	a4,a4,-323 # 2c382ebd <__l2_shared_end+0x10372ebd>
1c009492:	df98                	sw	a4,56(a5)
1c009494:	487e4737          	lui	a4,0x487e4
1c009498:	5ec70713          	addi	a4,a4,1516 # 487e45ec <__l2_shared_end+0x2c7d45ec>
1c00949c:	dfd8                	sw	a4,60(a5)
1c00949e:	840c1737          	lui	a4,0x840c1
1c0094a2:	3a770713          	addi	a4,a4,935 # 840c13a7 <pulp__FC+0x840c13a8>
1c0094a6:	c3b8                	sw	a4,64(a5)
1c0094a8:	5c60c737          	lui	a4,0x5c60c
1c0094ac:	21270713          	addi	a4,a4,530 # 5c60c212 <__l2_shared_end+0x405fc212>
1c0094b0:	c3f8                	sw	a4,68(a5)
1c0094b2:	bf156737          	lui	a4,0xbf156
1c0094b6:	94770713          	addi	a4,a4,-1721 # bf155947 <pulp__FC+0xbf155948>
1c0094ba:	c7b8                	sw	a4,72(a5)
1c0094bc:	e46d4737          	lui	a4,0xe46d4
1c0094c0:	70870713          	addi	a4,a4,1800 # e46d4708 <pulp__FC+0xe46d4709>
1c0094c4:	c7f8                	sw	a4,76(a5)
1c0094c6:	2970b737          	lui	a4,0x2970b
1c0094ca:	ab870713          	addi	a4,a4,-1352 # 2970aab8 <__l2_shared_end+0xd6faab8>
1c0094ce:	cbb8                	sw	a4,80(a5)
1c0094d0:	ef9dc737          	lui	a4,0xef9dc
1c0094d4:	98a70713          	addi	a4,a4,-1654 # ef9db98a <pulp__FC+0xef9db98b>
1c0094d8:	cbf8                	sw	a4,84(a5)
1c0094da:	f1c18737          	lui	a4,0xf1c18
1c0094de:	69370713          	addi	a4,a4,1683 # f1c18693 <pulp__FC+0xf1c18694>
1c0094e2:	cfb8                	sw	a4,88(a5)
1c0094e4:	98c35737          	lui	a4,0x98c35
1c0094e8:	31270713          	addi	a4,a4,786 # 98c35312 <pulp__FC+0x98c35313>
1c0094ec:	cff8                	sw	a4,92(a5)
1c0094ee:	f9add737          	lui	a4,0xf9add
1c0094f2:	0c670713          	addi	a4,a4,198 # f9add0c6 <pulp__FC+0xf9add0c7>
1c0094f6:	d3b8                	sw	a4,96(a5)
1c0094f8:	64228737          	lui	a4,0x64228
1c0094fc:	ed970713          	addi	a4,a4,-295 # 64227ed9 <__l2_shared_end+0x48217ed9>
1c009500:	d3f8                	sw	a4,100(a5)
1c009502:	02e42737          	lui	a4,0x2e42
1c009506:	6a070713          	addi	a4,a4,1696 # 2e426a0 <__CTOR_LIST__-0x191bd964>
1c00950a:	d7b8                	sw	a4,104(a5)
1c00950c:	269ab737          	lui	a4,0x269ab
1c009510:	51170713          	addi	a4,a4,1297 # 269ab511 <__l2_shared_end+0xa99b511>
1c009514:	d7f8                	sw	a4,108(a5)
1c009516:	10164737          	lui	a4,0x10164
1c00951a:	fa270713          	addi	a4,a4,-94 # 10163fa2 <__CTOR_LIST__-0xbe9c062>
1c00951e:	dbb8                	sw	a4,112(a5)
1c009520:	6f0a2737          	lui	a4,0x6f0a2
1c009524:	22a70713          	addi	a4,a4,554 # 6f0a222a <__l2_shared_end+0x5309222a>
1c009528:	dbf8                	sw	a4,116(a5)
1c00952a:	147af737          	lui	a4,0x147af
1c00952e:	22b70713          	addi	a4,a4,555 # 147af22b <__CTOR_LIST__-0x7850dd9>
1c009532:	dfb8                	sw	a4,120(a5)
1c009534:	326f6737          	lui	a4,0x326f6
1c009538:	f0170713          	addi	a4,a4,-255 # 326f5f01 <__l2_shared_end+0x166e5f01>
1c00953c:	dff8                	sw	a4,124(a5)
1c00953e:	7574e737          	lui	a4,0x7574e
1c009542:	26170713          	addi	a4,a4,609 # 7574e261 <__l2_shared_end+0x5973e261>
1c009546:	08e7a023          	sw	a4,128(a5)
1c00954a:	57b7d737          	lui	a4,0x57b7d
1c00954e:	c8c70713          	addi	a4,a4,-884 # 57b7cc8c <__l2_shared_end+0x3bb6cc8c>
1c009552:	08e7a223          	sw	a4,132(a5)
1c009556:	53000737          	lui	a4,0x53000
1c00955a:	6a470713          	addi	a4,a4,1700 # 530006a4 <__l2_shared_end+0x36ff06a4>
1c00955e:	08e7a423          	sw	a4,136(a5)
1c009562:	c250a737          	lui	a4,0xc250a
1c009566:	075d                	addi	a4,a4,23
1c009568:	08e7a623          	sw	a4,140(a5)
1c00956c:	999f4737          	lui	a4,0x999f4
1c009570:	92d70713          	addi	a4,a4,-1747 # 999f392d <pulp__FC+0x999f392e>
1c009574:	08e7a823          	sw	a4,144(a5)
1c009578:	73aa7737          	lui	a4,0x73aa7
1c00957c:	44970713          	addi	a4,a4,1097 # 73aa7449 <__l2_shared_end+0x57a97449>
1c009580:	08e7aa23          	sw	a4,148(a5)
1c009584:	bafbf737          	lui	a4,0xbafbf
1c009588:	d1370713          	addi	a4,a4,-749 # bafbed13 <pulp__FC+0xbafbed14>
1c00958c:	08e7ac23          	sw	a4,152(a5)
1c009590:	16371737          	lui	a4,0x16371
1c009594:	84670713          	addi	a4,a4,-1978 # 16370846 <__CTOR_LIST__-0x5c8f7be>
1c009598:	08e7ae23          	sw	a4,156(a5)
1c00959c:	8154a737          	lui	a4,0x8154a
1c0095a0:	81370713          	addi	a4,a4,-2029 # 81549813 <pulp__FC+0x81549814>
1c0095a4:	0ae7a023          	sw	a4,160(a5)
1c0095a8:	9ec8b737          	lui	a4,0x9ec8b
1c0095ac:	eb070713          	addi	a4,a4,-336 # 9ec8aeb0 <pulp__FC+0x9ec8aeb1>
1c0095b0:	0ae7a223          	sw	a4,164(a5)
1c0095b4:	75026737          	lui	a4,0x75026
1c0095b8:	0dd70713          	addi	a4,a4,221 # 750260dd <__l2_shared_end+0x590160dd>
1c0095bc:	0ae7a423          	sw	a4,168(a5)
1c0095c0:	75e22737          	lui	a4,0x75e22
1c0095c4:	84b70713          	addi	a4,a4,-1973 # 75e2184b <__l2_shared_end+0x59e1184b>
1c0095c8:	0ae7a623          	sw	a4,172(a5)
1c0095cc:	b4f88737          	lui	a4,0xb4f88
1c0095d0:	ab970713          	addi	a4,a4,-1351 # b4f87ab9 <pulp__FC+0xb4f87aba>
1c0095d4:	0ae7a823          	sw	a4,176(a5)
1c0095d8:	b582c737          	lui	a4,0xb582c
1c0095dc:	6ad70713          	addi	a4,a4,1709 # b582c6ad <pulp__FC+0xb582c6ae>
1c0095e0:	0ae7aa23          	sw	a4,180(a5)
1c0095e4:	68a5c737          	lui	a4,0x68a5c
1c0095e8:	97370713          	addi	a4,a4,-1677 # 68a5b973 <__l2_shared_end+0x4ca4b973>
1c0095ec:	0ae7ac23          	sw	a4,184(a5)
1c0095f0:	b2232737          	lui	a4,0xb2232
1c0095f4:	47370713          	addi	a4,a4,1139 # b2232473 <pulp__FC+0xb2232474>
1c0095f8:	0ae7ae23          	sw	a4,188(a5)
1c0095fc:	da18f737          	lui	a4,0xda18f
1c009600:	40d70713          	addi	a4,a4,1037 # da18f40d <pulp__FC+0xda18f40e>
1c009604:	0ce7a023          	sw	a4,192(a5)
1c009608:	08691737          	lui	a4,0x8691
1c00960c:	f0a70713          	addi	a4,a4,-246 # 8690f0a <__CTOR_LIST__-0x1396f0fa>
1c009610:	0ce7a223          	sw	a4,196(a5)
1c009614:	83e94737          	lui	a4,0x83e94
1c009618:	b6670713          	addi	a4,a4,-1178 # 83e93b66 <pulp__FC+0x83e93b67>
1c00961c:	0ce7a423          	sw	a4,200(a5)
1c009620:	6912e737          	lui	a4,0x6912e
1c009624:	a3e70713          	addi	a4,a4,-1474 # 6912da3e <__l2_shared_end+0x4d11da3e>
1c009628:	0ce7a623          	sw	a4,204(a5)
1c00962c:	e9027737          	lui	a4,0xe9027
1c009630:	71270713          	addi	a4,a4,1810 # e9027712 <pulp__FC+0xe9027713>
1c009634:	0ce7a823          	sw	a4,208(a5)
1c009638:	b12bc737          	lui	a4,0xb12bc
1c00963c:	87d70713          	addi	a4,a4,-1923 # b12bb87d <pulp__FC+0xb12bb87e>
1c009640:	0ce7aa23          	sw	a4,212(a5)
1c009644:	c02ce737          	lui	a4,0xc02ce
1c009648:	21d70713          	addi	a4,a4,541 # c02ce21d <pulp__FC+0xc02ce21e>
1c00964c:	0ce7ac23          	sw	a4,216(a5)
1c009650:	ca266737          	lui	a4,0xca266
1c009654:	e7670713          	addi	a4,a4,-394 # ca265e76 <pulp__FC+0xca265e77>
1c009658:	0ce7ae23          	sw	a4,220(a5)
1c00965c:	6c251737          	lui	a4,0x6c251
1c009660:	db670713          	addi	a4,a4,-586 # 6c250db6 <__l2_shared_end+0x50240db6>
1c009664:	0ee7a023          	sw	a4,224(a5)
1c009668:	13222737          	lui	a4,0x13222
1c00966c:	7bb70713          	addi	a4,a4,1979 # 132227bb <__CTOR_LIST__-0x8ddd849>
1c009670:	0ee7a223          	sw	a4,228(a5)
1c009674:	d7c1c737          	lui	a4,0xd7c1c
1c009678:	21570713          	addi	a4,a4,533 # d7c1c215 <pulp__FC+0xd7c1c216>
1c00967c:	0ee7a423          	sw	a4,232(a5)
1c009680:	aae65737          	lui	a4,0xaae65
1c009684:	65f70713          	addi	a4,a4,1631 # aae6565f <pulp__FC+0xaae65660>
1c009688:	0ee7a623          	sw	a4,236(a5)
1c00968c:	83cc1737          	lui	a4,0x83cc1
1c009690:	84c70713          	addi	a4,a4,-1972 # 83cc084c <pulp__FC+0x83cc084d>
1c009694:	0ee7a823          	sw	a4,240(a5)
1c009698:	686ba737          	lui	a4,0x686ba
1c00969c:	14570713          	addi	a4,a4,325 # 686ba145 <__l2_shared_end+0x4c6aa145>
1c0096a0:	0ee7aa23          	sw	a4,244(a5)
1c0096a4:	03000713          	li	a4,48
1c0096a8:	0ee78d23          	sb	a4,250(a5)
1c0096ac:	02ec7737          	lui	a4,0x2ec7
1c0096b0:	c7570713          	addi	a4,a4,-907 # 2ec6c75 <__CTOR_LIST__-0x1913938f>
1c0096b4:	0ee7ada3          	sw	a4,251(a5)
1c0096b8:	1d2dc737          	lui	a4,0x1d2dc
1c0096bc:	06770713          	addi	a4,a4,103 # 1d2dc067 <__l2_shared_end+0x12cc067>
1c0096c0:	0ee7afa3          	sw	a4,255(a5)
1c0096c4:	a83cd737          	lui	a4,0xa83cd
1c0096c8:	ae170713          	addi	a4,a4,-1311 # a83ccae1 <pulp__FC+0xa83ccae2>
1c0096cc:	10e7a1a3          	sw	a4,259(a5)
1c0096d0:	c8568737          	lui	a4,0xc8568
1c0096d4:	17370713          	addi	a4,a4,371 # c8568173 <pulp__FC+0xc8568174>
1c0096d8:	10e7a3a3          	sw	a4,263(a5)
1c0096dc:	90aed737          	lui	a4,0x90aed
1c0096e0:	68e70713          	addi	a4,a4,1678 # 90aed68e <pulp__FC+0x90aed68f>
1c0096e4:	10e7a5a3          	sw	a4,267(a5)
1c0096e8:	5a9b4737          	lui	a4,0x5a9b4
1c0096ec:	2f870713          	addi	a4,a4,760 # 5a9b42f8 <__l2_shared_end+0x3e9a42f8>
1c0096f0:	10e7a7a3          	sw	a4,271(a5)
1c0096f4:	535a9737          	lui	a4,0x535a9
1c0096f8:	cad70713          	addi	a4,a4,-851 # 535a8cad <__l2_shared_end+0x37598cad>
1c0096fc:	10e7a9a3          	sw	a4,275(a5)
1c009700:	d2872737          	lui	a4,0xd2872
1c009704:	6fe70713          	addi	a4,a4,1790 # d28726fe <pulp__FC+0xd28726ff>
1c009708:	10e7aba3          	sw	a4,279(a5)
1c00970c:	18db5737          	lui	a4,0x18db5
1c009710:	f0770713          	addi	a4,a4,-249 # 18db4f07 <__CTOR_LIST__-0x324b0fd>
1c009714:	10e7ada3          	sw	a4,283(a5)
1c009718:	481a2737          	lui	a4,0x481a2
1c00971c:	4b170713          	addi	a4,a4,1201 # 481a24b1 <__l2_shared_end+0x2c1924b1>
1c009720:	10e7afa3          	sw	a4,287(a5)
1c009724:	ab508737          	lui	a4,0xab508
1c009728:	59e70713          	addi	a4,a4,1438 # ab50859e <pulp__FC+0xab50859f>
1c00972c:	12e7a1a3          	sw	a4,291(a5)
1c009730:	9a558737          	lui	a4,0x9a558
1c009734:	baa70713          	addi	a4,a4,-1110 # 9a557baa <pulp__FC+0x9a557bab>
1c009738:	12e7a3a3          	sw	a4,295(a5)
1c00973c:	b5b47737          	lui	a4,0xb5b47
1c009740:	acc70713          	addi	a4,a4,-1332 # b5b46acc <pulp__FC+0xb5b46acd>
1c009744:	12e7a5a3          	sw	a4,299(a5)
1c009748:	1b827737          	lui	a4,0x1b827
1c00974c:	c3970713          	addi	a4,a4,-967 # 1b826c39 <__CTOR_LIST__-0x7d93cb>
1c009750:	12e7a7a3          	sw	a4,303(a5)
1c009754:	ca054737          	lui	a4,0xca054
1c009758:	38570713          	addi	a4,a4,901 # ca054385 <pulp__FC+0xca054386>
1c00975c:	12e7a9a3          	sw	a4,307(a5)
1c009760:	80477737          	lui	a4,0x80477
1c009764:	78f9                	lui	a7,0xffffe
1c009766:	aa670713          	addi	a4,a4,-1370 # 80476aa6 <pulp__FC+0x80476aa7>
1c00976a:	30088393          	addi	t2,a7,768 # ffffe300 <pulp__FC+0xffffe301>
1c00976e:	12e7aba3          	sw	a4,311(a5)
1c009772:	f72cd737          	lui	a4,0xf72cd
1c009776:	0e779c23          	sh	t2,248(a5)
1c00977a:	c3970713          	addi	a4,a4,-967 # f72ccc39 <pulp__FC+0xf72ccc3a>
1c00977e:	12e7ada3          	sw	a4,315(a5)
1c009782:	a3566737          	lui	a4,0xa3566
1c009786:	f3670713          	addi	a4,a4,-202 # a3565f36 <pulp__FC+0xa3565f37>
1c00978a:	12e7afa3          	sw	a4,319(a5)
1c00978e:	9af0d737          	lui	a4,0x9af0d
1c009792:	14470713          	addi	a4,a4,324 # 9af0d144 <pulp__FC+0x9af0d145>
1c009796:	14e7a1a3          	sw	a4,323(a5)
1c00979a:	7a664737          	lui	a4,0x7a664
1c00979e:	aa770713          	addi	a4,a4,-1369 # 7a663aa7 <__l2_shared_end+0x5e653aa7>
1c0097a2:	14e7a3a3          	sw	a4,327(a5)
1c0097a6:	b271d737          	lui	a4,0xb271d
1c0097aa:	e1570713          	addi	a4,a4,-491 # b271ce15 <pulp__FC+0xb271ce16>
1c0097ae:	14e7a5a3          	sw	a4,331(a5)
1c0097b2:	30b9e737          	lui	a4,0x30b9e
1c0097b6:	91070713          	addi	a4,a4,-1776 # 30b9d910 <__l2_shared_end+0x14b8d910>
1c0097ba:	14e7a7a3          	sw	a4,335(a5)
1c0097be:	a2384737          	lui	a4,0xa2384
1c0097c2:	a4070713          	addi	a4,a4,-1472 # a2383a40 <pulp__FC+0xa2383a41>
1c0097c6:	14e7a9a3          	sw	a4,339(a5)
1c0097ca:	f3de1737          	lui	a4,0xf3de1
1c0097ce:	ca170713          	addi	a4,a4,-863 # f3de0ca1 <pulp__FC+0xf3de0ca2>
1c0097d2:	14e7aba3          	sw	a4,343(a5)
1c0097d6:	6089a737          	lui	a4,0x6089a
1c0097da:	e9b70713          	addi	a4,a4,-357 # 60899e9b <__l2_shared_end+0x44889e9b>
1c0097de:	14e7ada3          	sw	a4,347(a5)
1c0097e2:	13334737          	lui	a4,0x13334
1c0097e6:	6ad70713          	addi	a4,a4,1709 # 133346ad <__CTOR_LIST__-0x8ccb957>
1c0097ea:	14e7afa3          	sw	a4,351(a5)
1c0097ee:	723db737          	lui	a4,0x723db
1c0097f2:	bb770713          	addi	a4,a4,-1097 # 723dabb7 <__l2_shared_end+0x563cabb7>
1c0097f6:	16e7a1a3          	sw	a4,355(a5)
1c0097fa:	1d5c7737          	lui	a4,0x1d5c7
1c0097fe:	13a70713          	addi	a4,a4,314 # 1d5c713a <__l2_shared_end+0x15b713a>
1c009802:	16e7a3a3          	sw	a4,359(a5)
1c009806:	b479a737          	lui	a4,0xb479a
1c00980a:	b7270713          	addi	a4,a4,-1166 # b4799b72 <pulp__FC+0xb4799b73>
1c00980e:	16e7a5a3          	sw	a4,363(a5)
1c009812:	dbce8737          	lui	a4,0xdbce8
1c009816:	b6b70713          	addi	a4,a4,-1173 # dbce7b6b <pulp__FC+0xdbce7b6c>
1c00981a:	16e7a7a3          	sw	a4,367(a5)
1c00981e:	772bc737          	lui	a4,0x772bc
1c009822:	93170713          	addi	a4,a4,-1743 # 772bb931 <__l2_shared_end+0x5b2ab931>
1c009826:	16e7a9a3          	sw	a4,371(a5)
1c00982a:	14c95737          	lui	a4,0x14c95
1c00982e:	a8670713          	addi	a4,a4,-1402 # 14c94a86 <__CTOR_LIST__-0x736b57e>
1c009832:	16e7aba3          	sw	a4,375(a5)
1c009836:	9ba81737          	lui	a4,0x9ba81
1c00983a:	56c70713          	addi	a4,a4,1388 # 9ba8156c <pulp__FC+0x9ba8156d>
1c00983e:	16e7ada3          	sw	a4,379(a5)
1c009842:	1f60e737          	lui	a4,0x1f60e
1c009846:	1af70713          	addi	a4,a4,431 # 1f60e1af <__l2_shared_end+0x35fe1af>
1c00984a:	16e7afa3          	sw	a4,383(a5)
1c00984e:	e6288737          	lui	a4,0xe6288
1c009852:	3cc70713          	addi	a4,a4,972 # e62883cc <pulp__FC+0xe62883cd>
1c009856:	18e7a1a3          	sw	a4,387(a5)
1c00985a:	baeba737          	lui	a4,0xbaeba
1c00985e:	65770713          	addi	a4,a4,1623 # baeba657 <pulp__FC+0xbaeba658>
1c009862:	18e7a3a3          	sw	a4,391(a5)
1c009866:	59120737          	lui	a4,0x59120
1c00986a:	8be70713          	addi	a4,a4,-1858 # 5911f8be <__l2_shared_end+0x3d10f8be>
1c00986e:	18e7a5a3          	sw	a4,395(a5)
1c009872:	f187e737          	lui	a4,0xf187e
1c009876:	c8670713          	addi	a4,a4,-890 # f187dc86 <pulp__FC+0xf187dc87>
1c00987a:	18e7a7a3          	sw	a4,399(a5)
1c00987e:	a3ba3737          	lui	a4,0xa3ba3
1c009882:	47270713          	addi	a4,a4,1138 # a3ba3472 <pulp__FC+0xa3ba3473>
1c009886:	18e7a9a3          	sw	a4,403(a5)
1c00988a:	a1336737          	lui	a4,0xa1336
1c00988e:	e8870713          	addi	a4,a4,-376 # a1335e88 <pulp__FC+0xa1335e89>
1c009892:	18e7aba3          	sw	a4,407(a5)
1c009896:	918b7737          	lui	a4,0x918b7
1c00989a:	88570713          	addi	a4,a4,-1915 # 918b6885 <pulp__FC+0x918b6886>
1c00989e:	18e7ada3          	sw	a4,411(a5)
1c0098a2:	48ec8737          	lui	a4,0x48ec8
1c0098a6:	35870713          	addi	a4,a4,856 # 48ec8358 <__l2_shared_end+0x2ceb8358>
1c0098aa:	18e7afa3          	sw	a4,415(a5)
1c0098ae:	69c9c737          	lui	a4,0x69c9c
1c0098b2:	50970713          	addi	a4,a4,1289 # 69c9c509 <__l2_shared_end+0x4dc8c509>
1c0098b6:	1ae7a1a3          	sw	a4,419(a5)
1c0098ba:	81a09737          	lui	a4,0x81a09
1c0098be:	51b70713          	addi	a4,a4,1307 # 81a0951b <pulp__FC+0x81a0951c>
1c0098c2:	1ae7a3a3          	sw	a4,423(a5)
1c0098c6:	7785a737          	lui	a4,0x7785a
1c0098ca:	47970713          	addi	a4,a4,1145 # 7785a479 <__l2_shared_end+0x5b84a479>
1c0098ce:	1ae7a5a3          	sw	a4,427(a5)
1c0098d2:	a14a7737          	lui	a4,0xa14a7
1c0098d6:	2c170713          	addi	a4,a4,705 # a14a72c1 <pulp__FC+0xa14a72c2>
1c0098da:	1ae7a7a3          	sw	a4,431(a5)
1c0098de:	d564f737          	lui	a4,0xd564f
1c0098e2:	6bc70713          	addi	a4,a4,1724 # d564f6bc <pulp__FC+0xd564f6bd>
1c0098e6:	1ae7a9a3          	sw	a4,435(a5)
1c0098ea:	9ac65737          	lui	a4,0x9ac65
1c0098ee:	9ea70713          	addi	a4,a4,-1558 # 9ac649ea <pulp__FC+0x9ac649eb>
1c0098f2:	1ae7aba3          	sw	a4,439(a5)
1c0098f6:	3eda8737          	lui	a4,0x3eda8
1c0098fa:	c7270713          	addi	a4,a4,-910 # 3eda7c72 <__l2_shared_end+0x22d97c72>
1c0098fe:	1ae7ada3          	sw	a4,443(a5)
1c009902:	671ee737          	lui	a4,0x671ee
1c009906:	73170713          	addi	a4,a4,1841 # 671ee731 <__l2_shared_end+0x4b1de731>
1c00990a:	1ae7afa3          	sw	a4,447(a5)
1c00990e:	e8658737          	lui	a4,0xe8658
1c009912:	e2570713          	addi	a4,a4,-475 # e8657e25 <pulp__FC+0xe8657e26>
1c009916:	1ce7a1a3          	sw	a4,451(a5)
1c00991a:	4759e737          	lui	a4,0x4759e
1c00991e:	f4770713          	addi	a4,a4,-185 # 4759df47 <__l2_shared_end+0x2b58df47>
1c009922:	1ce7a3a3          	sw	a4,455(a5)
1c009926:	7596e737          	lui	a4,0x7596e
1c00992a:	2ab70713          	addi	a4,a4,683 # 7596e2ab <__l2_shared_end+0x5995e2ab>
1c00992e:	1ce7a5a3          	sw	a4,459(a5)
1c009932:	612db737          	lui	a4,0x612db
1c009936:	c7370713          	addi	a4,a4,-909 # 612dac73 <__l2_shared_end+0x452cac73>
1c00993a:	1ce7a7a3          	sw	a4,463(a5)
1c00993e:	99670737          	lui	a4,0x99670
1c009942:	95970713          	addi	a4,a4,-1703 # 9966f959 <pulp__FC+0x9966f95a>
1c009946:	1ce7a9a3          	sw	a4,467(a5)
1c00994a:	5fa51737          	lui	a4,0x5fa51
1c00994e:	6ae70713          	addi	a4,a4,1710 # 5fa516ae <__l2_shared_end+0x43a416ae>
1c009952:	1ce7aba3          	sw	a4,471(a5)
1c009956:	e08f5737          	lui	a4,0xe08f5
1c00995a:	e6570713          	addi	a4,a4,-411 # e08f4e65 <pulp__FC+0xe08f4e66>
1c00995e:	1ce7ada3          	sw	a4,475(a5)
1c009962:	9167f737          	lui	a4,0x9167f
1c009966:	a0b70713          	addi	a4,a4,-1525 # 9167ea0b <pulp__FC+0x9167ea0c>
1c00996a:	1ce7afa3          	sw	a4,479(a5)
1c00996e:	45a06737          	lui	a4,0x45a06
1c009972:	a1370713          	addi	a4,a4,-1517 # 45a05a13 <__l2_shared_end+0x299f5a13>
1c009976:	1ee7a1a3          	sw	a4,483(a5)
1c00997a:	d7d05737          	lui	a4,0xd7d05
1c00997e:	1d870713          	addi	a4,a4,472 # d7d051d8 <pulp__FC+0xd7d051d9>
1c009982:	1ee7a3a3          	sw	a4,487(a5)
1c009986:	be59d737          	lui	a4,0xbe59d
1c00998a:	13c70713          	addi	a4,a4,316 # be59d13c <pulp__FC+0xbe59d13d>
1c00998e:	1ee7a5a3          	sw	a4,491(a5)
1c009992:	1b040737          	lui	a4,0x1b040
1c009996:	05c70713          	addi	a4,a4,92 # 1b04005c <__CTOR_LIST__-0xfbffa8>
1c00999a:	1ee7a7a3          	sw	a4,495(a5)
1c00999e:	670d                	lui	a4,0x3
1c0099a0:	31070713          	addi	a4,a4,784 # 3310 <__CTOR_LIST__-0x1bffccf4>
1c0099a4:	1ee799a3          	sh	a4,499(a5)
1c0099a8:	faf00713          	li	a4,-81
1c0099ac:	1ee78aa3          	sb	a4,501(a5)
1c0099b0:	c60c5737          	lui	a4,0xc60c5
1c0099b4:	0761                	addi	a4,a4,24
1c0099b6:	1ee7ab23          	sw	a4,502(a5)
1c0099ba:	36c69737          	lui	a4,0x36c69
1c0099be:	d2b70713          	addi	a4,a4,-725 # 36c68d2b <__l2_shared_end+0x1ac58d2b>
1c0099c2:	1ee7ad23          	sw	a4,506(a5)
1c0099c6:	4d0ed737          	lui	a4,0x4d0ed
1c0099ca:	7be70713          	addi	a4,a4,1982 # 4d0ed7be <__l2_shared_end+0x310dd7be>
1c0099ce:	1ee7af23          	sw	a4,510(a5)
1c0099d2:	371ea737          	lui	a4,0x371ea
1c0099d6:	8d470713          	addi	a4,a4,-1836 # 371e98d4 <__l2_shared_end+0x1b1d98d4>
1c0099da:	20e7a123          	sw	a4,514(a5)
1c0099de:	73eb2737          	lui	a4,0x73eb2
1c0099e2:	08870713          	addi	a4,a4,136 # 73eb2088 <__l2_shared_end+0x57ea2088>
1c0099e6:	20e7a323          	sw	a4,518(a5)
1c0099ea:	69bcd737          	lui	a4,0x69bcd
1c0099ee:	3a770713          	addi	a4,a4,935 # 69bcd3a7 <__l2_shared_end+0x4dbbd3a7>
1c0099f2:	20e7a523          	sw	a4,522(a5)
1c0099f6:	91cb3737          	lui	a4,0x91cb3
1c0099fa:	da470713          	addi	a4,a4,-604 # 91cb2da4 <pulp__FC+0x91cb2da5>
1c0099fe:	20e7a723          	sw	a4,526(a5)
1c009a02:	b88bf737          	lui	a4,0xb88bf
1c009a06:	c0370713          	addi	a4,a4,-1021 # b88bec03 <pulp__FC+0xb88bec04>
1c009a0a:	20e7a923          	sw	a4,530(a5)
1c009a0e:	ba630737          	lui	a4,0xba630
1c009a12:	70270713          	addi	a4,a4,1794 # ba630702 <pulp__FC+0xba630703>
1c009a16:	20e7ab23          	sw	a4,534(a5)
1c009a1a:	1182b737          	lui	a4,0x1182b
1c009a1e:	47670713          	addi	a4,a4,1142 # 1182b476 <__CTOR_LIST__-0xa7d4b8e>
1c009a22:	20e7ad23          	sw	a4,538(a5)
1c009a26:	55296737          	lui	a4,0x55296
1c009a2a:	58070713          	addi	a4,a4,1408 # 55296580 <__l2_shared_end+0x39286580>
1c009a2e:	20e7af23          	sw	a4,542(a5)
1c009a32:	7548a737          	lui	a4,0x7548a
1c009a36:	63d70713          	addi	a4,a4,1597 # 7548a63d <__l2_shared_end+0x5947a63d>
1c009a3a:	22e7a123          	sw	a4,546(a5)
1c009a3e:	22479737          	lui	a4,0x22479
1c009a42:	93970713          	addi	a4,a4,-1735 # 22478939 <__l2_shared_end+0x6468939>
1c009a46:	22e7a323          	sw	a4,550(a5)
1c009a4a:	bc723737          	lui	a4,0xbc723
1c009a4e:	64470713          	addi	a4,a4,1604 # bc723644 <pulp__FC+0xbc723645>
1c009a52:	22e7a523          	sw	a4,554(a5)
1c009a56:	4616c737          	lui	a4,0x4616c
1c009a5a:	37e70713          	addi	a4,a4,894 # 4616c37e <__l2_shared_end+0x2a15c37e>
1c009a5e:	22e7a723          	sw	a4,558(a5)
1c009a62:	63a69737          	lui	a4,0x63a69
1c009a66:	c1570713          	addi	a4,a4,-1003 # 63a68c15 <__l2_shared_end+0x47a58c15>
1c009a6a:	22e7a923          	sw	a4,562(a5)
1c009a6e:	9be6e737          	lui	a4,0x9be6e
1c009a72:	24370713          	addi	a4,a4,579 # 9be6e243 <pulp__FC+0x9be6e244>
1c009a76:	22e7ab23          	sw	a4,566(a5)
1c009a7a:	4acc4737          	lui	a4,0x4acc4
1c009a7e:	8d670713          	addi	a4,a4,-1834 # 4acc38d6 <__l2_shared_end+0x2ecb38d6>
1c009a82:	22e7ad23          	sw	a4,570(a5)
1c009a86:	371e7737          	lui	a4,0x371e7
1c009a8a:	13c70713          	addi	a4,a4,316 # 371e713c <__l2_shared_end+0x1b1d713c>
1c009a8e:	22e7af23          	sw	a4,574(a5)
1c009a92:	b488d737          	lui	a4,0xb488d
1c009a96:	e7570713          	addi	a4,a4,-395 # b488ce75 <pulp__FC+0xb488ce76>
1c009a9a:	24e7a123          	sw	a4,578(a5)
1c009a9e:	db2c9737          	lui	a4,0xdb2c9
1c009aa2:	a9670713          	addi	a4,a4,-1386 # db2c8a96 <pulp__FC+0xdb2c8a97>
1c009aa6:	24e7a323          	sw	a4,582(a5)
1c009aaa:	d9a07737          	lui	a4,0xd9a07
1c009aae:	2b770713          	addi	a4,a4,695 # d9a072b7 <pulp__FC+0xd9a072b8>
1c009ab2:	24e7a523          	sw	a4,586(a5)
1c009ab6:	91a37737          	lui	a4,0x91a37
1c009aba:	aaf70713          	addi	a4,a4,-1361 # 91a36aaf <pulp__FC+0x91a36ab0>
1c009abe:	24e7a723          	sw	a4,590(a5)
1c009ac2:	74005737          	lui	a4,0x74005
1c009ac6:	56870713          	addi	a4,a4,1384 # 74005568 <__l2_shared_end+0x57ff5568>
1c009aca:	24e7a923          	sw	a4,594(a5)
1c009ace:	a12d6737          	lui	a4,0xa12d6
1c009ad2:	8a670713          	addi	a4,a4,-1882 # a12d58a6 <pulp__FC+0xa12d58a7>
1c009ad6:	24e7ab23          	sw	a4,598(a5)
1c009ada:	1bf66737          	lui	a4,0x1bf66
1c009ade:	69370713          	addi	a4,a4,1683 # 1bf66693 <__CTOR_LIST__-0x99971>
1c009ae2:	24e7ad23          	sw	a4,602(a5)
1c009ae6:	44037737          	lui	a4,0x44037
1c009aea:	4e170713          	addi	a4,a4,1249 # 440374e1 <__l2_shared_end+0x280274e1>
1c009aee:	24e7af23          	sw	a4,606(a5)
1c009af2:	902d2737          	lui	a4,0x902d2
1c009af6:	87270713          	addi	a4,a4,-1934 # 902d1872 <pulp__FC+0x902d1873>
1c009afa:	26e7a123          	sw	a4,610(a5)
1c009afe:	36980737          	lui	a4,0x36980
1c009b02:	50c70713          	addi	a4,a4,1292 # 3698050c <__l2_shared_end+0x1a97050c>
1c009b06:	26e7a323          	sw	a4,614(a5)
1c009b0a:	6d657737          	lui	a4,0x6d657
1c009b0e:	c9a70713          	addi	a4,a4,-870 # 6d656c9a <__l2_shared_end+0x51646c9a>
1c009b12:	26e7a523          	sw	a4,618(a5)
1c009b16:	5795d737          	lui	a4,0x5795d
1c009b1a:	93070713          	addi	a4,a4,-1744 # 5795c930 <__l2_shared_end+0x3b94c930>
1c009b1e:	26e7a723          	sw	a4,622(a5)
1c009b22:	30e4f737          	lui	a4,0x30e4f
1c009b26:	6aa70713          	addi	a4,a4,1706 # 30e4f6aa <__l2_shared_end+0x14e3f6aa>
1c009b2a:	26e7a923          	sw	a4,626(a5)
1c009b2e:	bc17f737          	lui	a4,0xbc17f
1c009b32:	42370713          	addi	a4,a4,1059 # bc17f423 <pulp__FC+0xbc17f424>
1c009b36:	26e7ab23          	sw	a4,630(a5)
1c009b3a:	298e3737          	lui	a4,0x298e3
1c009b3e:	d4a70713          	addi	a4,a4,-694 # 298e2d4a <__l2_shared_end+0xd8d2d4a>
1c009b42:	26e7ad23          	sw	a4,634(a5)
1c009b46:	01e6c737          	lui	a4,0x1e6c
1c009b4a:	44470713          	addi	a4,a4,1092 # 1e6c444 <__CTOR_LIST__-0x1a193bc0>
1c009b4e:	26e7af23          	sw	a4,638(a5)
1c009b52:	28bf5737          	lui	a4,0x28bf5
1c009b56:	20170713          	addi	a4,a4,513 # 28bf5201 <__l2_shared_end+0xcbe5201>
1c009b5a:	28e7a123          	sw	a4,642(a5)
1c009b5e:	a9192737          	lui	a4,0xa9192
1c009b62:	1eb70713          	addi	a4,a4,491 # a91921eb <pulp__FC+0xa91921ec>
1c009b66:	28e7a323          	sw	a4,646(a5)
1c009b6a:	18aa6737          	lui	a4,0x18aa6
1c009b6e:	70470713          	addi	a4,a4,1796 # 18aa6704 <__CTOR_LIST__-0x3559900>
1c009b72:	28e7a523          	sw	a4,650(a5)
1c009b76:	6f390737          	lui	a4,0x6f390
1c009b7a:	65770713          	addi	a4,a4,1623 # 6f390657 <__l2_shared_end+0x53380657>
1c009b7e:	28e7a723          	sw	a4,654(a5)
1c009b82:	f1223737          	lui	a4,0xf1223
1c009b86:	79370713          	addi	a4,a4,1939 # f1223793 <pulp__FC+0xf1223794>
1c009b8a:	28e7a923          	sw	a4,658(a5)
1c009b8e:	43d37737          	lui	a4,0x43d37
1c009b92:	39370713          	addi	a4,a4,915 # 43d37393 <__l2_shared_end+0x27d27393>
1c009b96:	28e7ab23          	sw	a4,662(a5)
1c009b9a:	797b0737          	lui	a4,0x797b0
1c009b9e:	11b70713          	addi	a4,a4,283 # 797b011b <__l2_shared_end+0x5d7a011b>
1c009ba2:	28e7ad23          	sw	a4,666(a5)
1c009ba6:	8bb92737          	lui	a4,0x8bb92
1c009baa:	94a70713          	addi	a4,a4,-1718 # 8bb9194a <pulp__FC+0x8bb9194b>
1c009bae:	28e7af23          	sw	a4,670(a5)
1c009bb2:	8b189737          	lui	a4,0x8b189
1c009bb6:	03970713          	addi	a4,a4,57 # 8b189039 <pulp__FC+0x8b18903a>
1c009bba:	2ae7a123          	sw	a4,674(a5)
1c009bbe:	cd427737          	lui	a4,0xcd427
1c009bc2:	1cc70713          	addi	a4,a4,460 # cd4271cc <pulp__FC+0xcd4271cd>
1c009bc6:	2ae7a323          	sw	a4,678(a5)
1c009bca:	285aa737          	lui	a4,0x285aa
1c009bce:	72370713          	addi	a4,a4,1827 # 285aa723 <__l2_shared_end+0xc59a723>
1c009bd2:	2ae7a523          	sw	a4,682(a5)
1c009bd6:	252c6737          	lui	a4,0x252c6
1c009bda:	da970713          	addi	a4,a4,-599 # 252c5da9 <__l2_shared_end+0x92b5da9>
1c009bde:	2ae7a723          	sw	a4,686(a5)
1c009be2:	dfc2f737          	lui	a4,0xdfc2f
1c009be6:	7aa70713          	addi	a4,a4,1962 # dfc2f7aa <pulp__FC+0xdfc2f7ab>
1c009bea:	2ae7a923          	sw	a4,690(a5)
1c009bee:	e406c737          	lui	a4,0xe406c
1c009bf2:	ad870713          	addi	a4,a4,-1320 # e406bad8 <pulp__FC+0xe406bad9>
1c009bf6:	2ae7ab23          	sw	a4,694(a5)
1c009bfa:	0c946737          	lui	a4,0xc946
1c009bfe:	67070713          	addi	a4,a4,1648 # c946670 <__CTOR_LIST__-0xf6b9994>
1c009c02:	2ae7ad23          	sw	a4,698(a5)
1c009c06:	5556a737          	lui	a4,0x5556a
1c009c0a:	51f70713          	addi	a4,a4,1311 # 5556a51f <__l2_shared_end+0x3955a51f>
1c009c0e:	2ae7af23          	sw	a4,702(a5)
1c009c12:	b6bec737          	lui	a4,0xb6bec
1c009c16:	9da70713          	addi	a4,a4,-1574 # b6beb9da <pulp__FC+0xb6beb9db>
1c009c1a:	2ce7a123          	sw	a4,706(a5)
1c009c1e:	728c4737          	lui	a4,0x728c4
1c009c22:	28670713          	addi	a4,a4,646 # 728c4286 <__l2_shared_end+0x568b4286>
1c009c26:	2ce7a323          	sw	a4,710(a5)
1c009c2a:	f8700737          	lui	a4,0xf8700
1c009c2e:	0e970713          	addi	a4,a4,233 # f87000e9 <pulp__FC+0xf87000ea>
1c009c32:	2ce7a523          	sw	a4,714(a5)
1c009c36:	63fb7737          	lui	a4,0x63fb7
1c009c3a:	b1a70713          	addi	a4,a4,-1254 # 63fb6b1a <__l2_shared_end+0x47fa6b1a>
1c009c3e:	2ce7a723          	sw	a4,718(a5)
1c009c42:	51617737          	lui	a4,0x51617
1c009c46:	64570713          	addi	a4,a4,1605 # 51617645 <__l2_shared_end+0x35607645>
1c009c4a:	2ce7a923          	sw	a4,722(a5)
1c009c4e:	ea59c737          	lui	a4,0xea59c
1c009c52:	0ff70713          	addi	a4,a4,255 # ea59c0ff <pulp__FC+0xea59c100>
1c009c56:	2ce7ab23          	sw	a4,726(a5)
1c009c5a:	b25f2737          	lui	a4,0xb25f2
1c009c5e:	56470713          	addi	a4,a4,1380 # b25f2564 <pulp__FC+0xb25f2565>
1c009c62:	2ce7ad23          	sw	a4,730(a5)
1c009c66:	7ce4a737          	lui	a4,0x7ce4a
1c009c6a:	34a70713          	addi	a4,a4,842 # 7ce4a34a <__l2_shared_end+0x60e3a34a>
1c009c6e:	2ce7af23          	sw	a4,734(a5)
1c009c72:	0f300737          	lui	a4,0xf300
1c009c76:	1fc70713          	addi	a4,a4,508 # f3001fc <__CTOR_LIST__-0xccffe08>
1c009c7a:	2ee7a123          	sw	a4,738(a5)
1c009c7e:	e31a9737          	lui	a4,0xe31a9
1c009c82:	14370713          	addi	a4,a4,323 # e31a9143 <pulp__FC+0xe31a9144>
1c009c86:	2ee7a323          	sw	a4,742(a5)
1c009c8a:	a8d7e737          	lui	a4,0xa8d7e
1c009c8e:	69370713          	addi	a4,a4,1683 # a8d7e693 <pulp__FC+0xa8d7e694>
1c009c92:	2ee7a523          	sw	a4,746(a5)
1c009c96:	6709                	lui	a4,0x2
1c009c98:	c9e70713          	addi	a4,a4,-866 # 1c9e <__CTOR_LIST__-0x1bffe366>
1c009c9c:	2ee79723          	sh	a4,750(a5)
1c009ca0:	02200713          	li	a4,34
1c009ca4:	2ee78823          	sb	a4,752(a5)
1c009ca8:	d7554737          	lui	a4,0xd7554
1c009cac:	b8f70713          	addi	a4,a4,-1137 # d7553b8f <pulp__FC+0xd7553b90>
1c009cb0:	2ee7a8a3          	sw	a4,753(a5)
1c009cb4:	4b9da737          	lui	a4,0x4b9da
1c009cb8:	d0b70713          	addi	a4,a4,-757 # 4b9d9d0b <__l2_shared_end+0x2f9c9d0b>
1c009cbc:	2ee7aaa3          	sw	a4,757(a5)
1c009cc0:	7106c737          	lui	a4,0x7106c
1c009cc4:	05c70713          	addi	a4,a4,92 # 7106c05c <__l2_shared_end+0x5505c05c>
1c009cc8:	2ee7aca3          	sw	a4,761(a5)
1c009ccc:	48691737          	lui	a4,0x48691
1c009cd0:	bad70713          	addi	a4,a4,-1107 # 48690bad <__l2_shared_end+0x2c680bad>
1c009cd4:	2ee7aea3          	sw	a4,765(a5)
1c009cd8:	69295737          	lui	a4,0x69295
1c009cdc:	a6770713          	addi	a4,a4,-1433 # 69294a67 <__l2_shared_end+0x4d284a67>
1c009ce0:	30e7a0a3          	sw	a4,769(a5)
1c009ce4:	65580737          	lui	a4,0x65580
1c009ce8:	f5270713          	addi	a4,a4,-174 # 6557ff52 <__l2_shared_end+0x4956ff52>
1c009cec:	30e7a2a3          	sw	a4,773(a5)
1c009cf0:	932c7737          	lui	a4,0x932c7
1c009cf4:	5a370713          	addi	a4,a4,1443 # 932c75a3 <pulp__FC+0x932c75a4>
1c009cf8:	30e7a4a3          	sw	a4,777(a5)
1c009cfc:	15e68737          	lui	a4,0x15e68
1c009d00:	ec870713          	addi	a4,a4,-312 # 15e67ec8 <__CTOR_LIST__-0x619813c>
1c009d04:	30e7a6a3          	sw	a4,781(a5)
1c009d08:	a1e38737          	lui	a4,0xa1e38
1c009d0c:	3c670713          	addi	a4,a4,966 # a1e383c6 <pulp__FC+0xa1e383c7>
1c009d10:	30e7a8a3          	sw	a4,785(a5)
1c009d14:	2c4d9737          	lui	a4,0x2c4d9
1c009d18:	1f770713          	addi	a4,a4,503 # 2c4d91f7 <__l2_shared_end+0x104c91f7>
1c009d1c:	30e7aaa3          	sw	a4,789(a5)
1c009d20:	6b4e5737          	lui	a4,0x6b4e5
1c009d24:	37270713          	addi	a4,a4,882 # 6b4e5372 <__l2_shared_end+0x4f4d5372>
1c009d28:	30e7aca3          	sw	a4,793(a5)
1c009d2c:	10bb3737          	lui	a4,0x10bb3
1c009d30:	1b270713          	addi	a4,a4,434 # 10bb31b2 <__CTOR_LIST__-0xb44ce52>
1c009d34:	30e7aea3          	sw	a4,797(a5)
1c009d38:	e760f737          	lui	a4,0xe760f
1c009d3c:	a1670713          	addi	a4,a4,-1514 # e760ea16 <pulp__FC+0xe760ea17>
1c009d40:	32e7a0a3          	sw	a4,801(a5)
1c009d44:	e397c737          	lui	a4,0xe397c
1c009d48:	8a570713          	addi	a4,a4,-1883 # e397b8a5 <pulp__FC+0xe397b8a6>
1c009d4c:	32e7a2a3          	sw	a4,805(a5)
1c009d50:	a3625737          	lui	a4,0xa3625
1c009d54:	d2e70713          	addi	a4,a4,-722 # a3624d2e <pulp__FC+0xa3624d2f>
1c009d58:	32e7a4a3          	sw	a4,809(a5)
1c009d5c:	d95f9737          	lui	a4,0xd95f9
1c009d60:	48370713          	addi	a4,a4,1155 # d95f9483 <pulp__FC+0xd95f9484>
1c009d64:	32e7a6a3          	sw	a4,813(a5)
1c009d68:	e7bf3737          	lui	a4,0xe7bf3
1c009d6c:	69170713          	addi	a4,a4,1681 # e7bf3691 <pulp__FC+0xe7bf3692>
1c009d70:	32e7a8a3          	sw	a4,817(a5)
1c009d74:	49481737          	lui	a4,0x49481
1c009d78:	4cf70713          	addi	a4,a4,1231 # 494814cf <__l2_shared_end+0x2d4714cf>
1c009d7c:	32e7aaa3          	sw	a4,821(a5)
1c009d80:	054ab737          	lui	a4,0x54ab
1c009d84:	aec70713          	addi	a4,a4,-1300 # 54aaaec <__CTOR_LIST__-0x16b55518>
1c009d88:	32e7aca3          	sw	a4,825(a5)
1c009d8c:	9940c737          	lui	a4,0x9940c
1c009d90:	04770713          	addi	a4,a4,71 # 9940c047 <pulp__FC+0x9940c048>
1c009d94:	32e7aea3          	sw	a4,829(a5)
1c009d98:	49f25737          	lui	a4,0x49f25
1c009d9c:	59a70713          	addi	a4,a4,1434 # 49f2559a <__l2_shared_end+0x2df1559a>
1c009da0:	34e7a0a3          	sw	a4,833(a5)
1c009da4:	72c52737          	lui	a4,0x72c52
1c009da8:	77570713          	addi	a4,a4,1909 # 72c52775 <__l2_shared_end+0x56c42775>
1c009dac:	34e7a2a3          	sw	a4,837(a5)
1c009db0:	ec2fd737          	lui	a4,0xec2fd
1c009db4:	beb70713          	addi	a4,a4,-1045 # ec2fcbeb <pulp__FC+0xec2fcbec>
1c009db8:	34e7a4a3          	sw	a4,841(a5)
1c009dbc:	4129f737          	lui	a4,0x4129f
1c009dc0:	b4670713          	addi	a4,a4,-1210 # 4129eb46 <__l2_shared_end+0x2528eb46>
1c009dc4:	34e7a6a3          	sw	a4,845(a5)
1c009dc8:	64bff737          	lui	a4,0x64bff
1c009dcc:	40770713          	addi	a4,a4,1031 # 64bff407 <__l2_shared_end+0x48bef407>
1c009dd0:	34e7a8a3          	sw	a4,849(a5)
1c009dd4:	bce47737          	lui	a4,0xbce47
1c009dd8:	b7970713          	addi	a4,a4,-1159 # bce46b79 <pulp__FC+0xbce46b7a>
1c009ddc:	34e7aaa3          	sw	a4,853(a5)
1c009de0:	866bc737          	lui	a4,0x866bc
1c009de4:	c9970713          	addi	a4,a4,-871 # 866bbc99 <pulp__FC+0x866bbc9a>
1c009de8:	34e7aca3          	sw	a4,857(a5)
1c009dec:	5160a737          	lui	a4,0x5160a
1c009df0:	8b270713          	addi	a4,a4,-1870 # 516098b2 <__l2_shared_end+0x355f98b2>
1c009df4:	34e7aea3          	sw	a4,861(a5)
1c009df8:	b4f54737          	lui	a4,0xb4f54
1c009dfc:	55770713          	addi	a4,a4,1367 # b4f54557 <pulp__FC+0xb4f54558>
1c009e00:	36e7a0a3          	sw	a4,865(a5)
1c009e04:	0979f737          	lui	a4,0x979f
1c009e08:	c0470713          	addi	a4,a4,-1020 # 979ec04 <__CTOR_LIST__-0x12861400>
1c009e0c:	36e7a2a3          	sw	a4,869(a5)
1c009e10:	c76fb737          	lui	a4,0xc76fb
1c009e14:	33b70713          	addi	a4,a4,827 # c76fb33b <pulp__FC+0xc76fb33c>
1c009e18:	36e7a4a3          	sw	a4,873(a5)
1c009e1c:	b679b737          	lui	a4,0xb679b
1c009e20:	dbb70713          	addi	a4,a4,-581 # b679adbb <pulp__FC+0xb679adbc>
1c009e24:	36e7a6a3          	sw	a4,877(a5)
1c009e28:	baa3d737          	lui	a4,0xbaa3d
1c009e2c:	8c070713          	addi	a4,a4,-1856 # baa3c8c0 <pulp__FC+0xbaa3c8c1>
1c009e30:	36e7a8a3          	sw	a4,881(a5)
1c009e34:	a456e737          	lui	a4,0xa456e
1c009e38:	b4e70713          	addi	a4,a4,-1202 # a456db4e <pulp__FC+0xa456db4f>
1c009e3c:	36e7aaa3          	sw	a4,885(a5)
1c009e40:	47f99737          	lui	a4,0x47f99
1c009e44:	fc870713          	addi	a4,a4,-56 # 47f98fc8 <__l2_shared_end+0x2bf88fc8>
1c009e48:	36e7aca3          	sw	a4,889(a5)
1c009e4c:	c9e77737          	lui	a4,0xc9e77
1c009e50:	48b70713          	addi	a4,a4,1163 # c9e7748b <pulp__FC+0xc9e7748c>
1c009e54:	36e7aea3          	sw	a4,893(a5)
1c009e58:	69253737          	lui	a4,0x69253
1c009e5c:	c0b70713          	addi	a4,a4,-1013 # 69252c0b <__l2_shared_end+0x4d242c0b>
1c009e60:	38e7a0a3          	sw	a4,897(a5)
1c009e64:	84ac8737          	lui	a4,0x84ac8
1c009e68:	20870713          	addi	a4,a4,520 # 84ac8208 <pulp__FC+0x84ac8209>
1c009e6c:	38e7a2a3          	sw	a4,901(a5)
1c009e70:	11519737          	lui	a4,0x11519
1c009e74:	d5170713          	addi	a4,a4,-687 # 11518d51 <__CTOR_LIST__-0xaae72b3>
1c009e78:	38e7a4a3          	sw	a4,905(a5)
1c009e7c:	f16fa737          	lui	a4,0xf16fa
1c009e80:	3ff70713          	addi	a4,a4,1023 # f16fa3ff <pulp__FC+0xf16fa400>
1c009e84:	38e7a6a3          	sw	a4,909(a5)
1c009e88:	bc5ba737          	lui	a4,0xbc5ba
1c009e8c:	be470713          	addi	a4,a4,-1052 # bc5b9be4 <pulp__FC+0xbc5b9be5>
1c009e90:	38e7a8a3          	sw	a4,913(a5)
1c009e94:	7be5f737          	lui	a4,0x7be5f
1c009e98:	45a70713          	addi	a4,a4,1114 # 7be5f45a <__l2_shared_end+0x5fe4f45a>
1c009e9c:	38e7aaa3          	sw	a4,917(a5)
1c009ea0:	12af0737          	lui	a4,0x12af0
1c009ea4:	2c270713          	addi	a4,a4,706 # 12af02c2 <__CTOR_LIST__-0x950fd42>
1c009ea8:	38e7aca3          	sw	a4,921(a5)
1c009eac:	2a086737          	lui	a4,0x2a086
1c009eb0:	65c70713          	addi	a4,a4,1628 # 2a08665c <__l2_shared_end+0xe07665c>
1c009eb4:	38e7aea3          	sw	a4,925(a5)
1c009eb8:	86da5737          	lui	a4,0x86da5
1c009ebc:	d3070713          	addi	a4,a4,-720 # 86da4d30 <pulp__FC+0x86da4d31>
1c009ec0:	3ae7a0a3          	sw	a4,929(a5)
1c009ec4:	b606b737          	lui	a4,0xb606b
1c009ec8:	6ed70713          	addi	a4,a4,1773 # b606b6ed <pulp__FC+0xb606b6ee>
1c009ecc:	3ae7a2a3          	sw	a4,933(a5)
1c009ed0:	b6ab7737          	lui	a4,0xb6ab7
1c009ed4:	34370713          	addi	a4,a4,835 # b6ab7343 <pulp__FC+0xb6ab7344>
1c009ed8:	3ae7a4a3          	sw	a4,937(a5)
1c009edc:	94564737          	lui	a4,0x94564
1c009ee0:	b6870713          	addi	a4,a4,-1176 # 94563b68 <pulp__FC+0x94563b69>
1c009ee4:	3ae7a6a3          	sw	a4,941(a5)
1c009ee8:	60ab6737          	lui	a4,0x60ab6
1c009eec:	19670713          	addi	a4,a4,406 # 60ab6196 <__l2_shared_end+0x44aa6196>
1c009ef0:	3ae7a8a3          	sw	a4,945(a5)
1c009ef4:	4ce11737          	lui	a4,0x4ce11
1c009ef8:	1c070713          	addi	a4,a4,448 # 4ce111c0 <__l2_shared_end+0x30e011c0>
1c009efc:	3ae7aaa3          	sw	a4,949(a5)
1c009f00:	92c82737          	lui	a4,0x92c82
1c009f04:	32b70713          	addi	a4,a4,811 # 92c8232b <pulp__FC+0x92c8232c>
1c009f08:	3ae7aca3          	sw	a4,953(a5)
1c009f0c:	74a98737          	lui	a4,0x74a98
1c009f10:	73570713          	addi	a4,a4,1845 # 74a98735 <__l2_shared_end+0x58a88735>
1c009f14:	3ae7aea3          	sw	a4,957(a5)
1c009f18:	4c578737          	lui	a4,0x4c578
1c009f1c:	9cc70713          	addi	a4,a4,-1588 # 4c5779cc <__l2_shared_end+0x305679cc>
1c009f20:	3ce7a0a3          	sw	a4,961(a5)
1c009f24:	10629737          	lui	a4,0x10629
1c009f28:	58270713          	addi	a4,a4,1410 # 10629582 <__CTOR_LIST__-0xb9d6a82>
1c009f2c:	3ce7a2a3          	sw	a4,965(a5)
1c009f30:	371d8737          	lui	a4,0x371d8
1c009f34:	09170713          	addi	a4,a4,145 # 371d8091 <__l2_shared_end+0x1b1c8091>
1c009f38:	3ce7a4a3          	sw	a4,969(a5)
1c009f3c:	85579737          	lui	a4,0x85579
1c009f40:	72370713          	addi	a4,a4,1827 # 85579723 <pulp__FC+0x85579724>
1c009f44:	3ce7a6a3          	sw	a4,973(a5)
1c009f48:	c3693737          	lui	a4,0xc3693
1c009f4c:	15870713          	addi	a4,a4,344 # c3693158 <pulp__FC+0xc3693159>
1c009f50:	3ce7a8a3          	sw	a4,977(a5)
1c009f54:	5982d737          	lui	a4,0x5982d
1c009f58:	15870713          	addi	a4,a4,344 # 5982d158 <__l2_shared_end+0x3d81d158>
1c009f5c:	3ce7aaa3          	sw	a4,981(a5)
1c009f60:	224b3737          	lui	a4,0x224b3
1c009f64:	46c70713          	addi	a4,a4,1132 # 224b346c <__l2_shared_end+0x64a346c>
1c009f68:	3ce7aca3          	sw	a4,985(a5)
1c009f6c:	95405737          	lui	a4,0x95405
1c009f70:	a9670713          	addi	a4,a4,-1386 # 95404a96 <pulp__FC+0x95404a97>
1c009f74:	3ce7aea3          	sw	a4,989(a5)
1c009f78:	ba722737          	lui	a4,0xba722
1c009f7c:	28b70713          	addi	a4,a4,651 # ba72228b <pulp__FC+0xba72228c>
1c009f80:	3ee7a0a3          	sw	a4,993(a5)
1c009f84:	2bfd1737          	lui	a4,0x2bfd1
1c009f88:	176d                	addi	a4,a4,-5
1c009f8a:	3ee7a2a3          	sw	a4,997(a5)
1c009f8e:	fb100713          	li	a4,-79
1c009f92:	3ee785a3          	sb	a4,1003(a5)
1c009f96:	cb100737          	lui	a4,0xcb100
1c009f9a:	24f70713          	addi	a4,a4,591 # cb10024f <pulp__FC+0xcb100250>
1c009f9e:	3ee7a623          	sw	a4,1004(a5)
1c009fa2:	6f471737          	lui	a4,0x6f471
1c009fa6:	4c870713          	addi	a4,a4,1224 # 6f4714c8 <__l2_shared_end+0x534614c8>
1c009faa:	3ee7a823          	sw	a4,1008(a5)
1c009fae:	80f44737          	lui	a4,0x80f44
1c009fb2:	74070713          	addi	a4,a4,1856 # 80f44740 <pulp__FC+0x80f44741>
1c009fb6:	3ee7aa23          	sw	a4,1012(a5)
1c009fba:	74968737          	lui	a4,0x74968
1c009fbe:	35670713          	addi	a4,a4,854 # 74968356 <__l2_shared_end+0x58958356>
1c009fc2:	3ee7ac23          	sw	a4,1016(a5)
1c009fc6:	32230737          	lui	a4,0x32230
1c009fca:	12b70713          	addi	a4,a4,299 # 3223012b <__l2_shared_end+0x1622012b>
1c009fce:	3ee7ae23          	sw	a4,1020(a5)
1c009fd2:	1019a737          	lui	a4,0x1019a
1c009fd6:	1a170713          	addi	a4,a4,417 # 1019a1a1 <__CTOR_LIST__-0xbe65e63>
1c009fda:	40e7a023          	sw	a4,1024(a5)
1c009fde:	b4b9e737          	lui	a4,0xb4b9e
1c009fe2:	f5670713          	addi	a4,a4,-170 # b4b9df56 <pulp__FC+0xb4b9df57>
1c009fe6:	40e7a223          	sw	a4,1028(a5)
1c009fea:	a67b7737          	lui	a4,0xa67b7
1c009fee:	53a70713          	addi	a4,a4,1338 # a67b753a <pulp__FC+0xa67b753b>
1c009ff2:	40e7a423          	sw	a4,1032(a5)
1c009ff6:	66bc3737          	lui	a4,0x66bc3
1c009ffa:	7ac70713          	addi	a4,a4,1964 # 66bc37ac <__l2_shared_end+0x4abb37ac>
1c009ffe:	40e7a623          	sw	a4,1036(a5)
1c00a002:	ca33e737          	lui	a4,0xca33e
1c00a006:	46270713          	addi	a4,a4,1122 # ca33e462 <pulp__FC+0xca33e463>
1c00a00a:	40e7a823          	sw	a4,1040(a5)
1c00a00e:	95836737          	lui	a4,0x95836
1c00a012:	9f170713          	addi	a4,a4,-1551 # 958359f1 <pulp__FC+0x958359f2>
1c00a016:	40e7aa23          	sw	a4,1044(a5)
1c00a01a:	a7a95737          	lui	a4,0xa7a95
1c00a01e:	1719                	addi	a4,a4,-26
1c00a020:	40e7ac23          	sw	a4,1048(a5)
1c00a024:	00714737          	lui	a4,0x714
1c00a028:	b2f70713          	addi	a4,a4,-1233 # 713b2f <__CTOR_LIST__-0x1b8ec4d5>
1c00a02c:	40e7ae23          	sw	a4,1052(a5)
1c00a030:	b38ef737          	lui	a4,0xb38ef
1c00a034:	b6a70713          	addi	a4,a4,-1174 # b38eeb6a <pulp__FC+0xb38eeb6b>
1c00a038:	42e7a023          	sw	a4,1056(a5)
1c00a03c:	d6fd7737          	lui	a4,0xd6fd7
1c00a040:	67370713          	addi	a4,a4,1651 # d6fd7673 <pulp__FC+0xd6fd7674>
1c00a044:	42e7a223          	sw	a4,1060(a5)
1c00a048:	60e05737          	lui	a4,0x60e05
1c00a04c:	a1770713          	addi	a4,a4,-1513 # 60e04a17 <__l2_shared_end+0x44df4a17>
1c00a050:	42e7a423          	sw	a4,1064(a5)
1c00a054:	2a537737          	lui	a4,0x2a537
1c00a058:	b5a70713          	addi	a4,a4,-1190 # 2a536b5a <__l2_shared_end+0xe526b5a>
1c00a05c:	42e7a623          	sw	a4,1068(a5)
1c00a060:	26f01737          	lui	a4,0x26f01
1c00a064:	4b670713          	addi	a4,a4,1206 # 26f014b6 <__l2_shared_end+0xaef14b6>
1c00a068:	42e7a823          	sw	a4,1072(a5)
1c00a06c:	3b56b737          	lui	a4,0x3b56b
1c00a070:	e4170713          	addi	a4,a4,-447 # 3b56ae41 <__l2_shared_end+0x1f55ae41>
1c00a074:	42e7aa23          	sw	a4,1076(a5)
1c00a078:	00193737          	lui	a4,0x193
1c00a07c:	0f270713          	addi	a4,a4,242 # 1930f2 <__CTOR_LIST__-0x1be6cf12>
1c00a080:	42e7ac23          	sw	a4,1080(a5)
1c00a084:	d3ed0737          	lui	a4,0xd3ed0
1c00a088:	1f470713          	addi	a4,a4,500 # d3ed01f4 <pulp__FC+0xd3ed01f5>
1c00a08c:	42e7ae23          	sw	a4,1084(a5)
1c00a090:	90d33737          	lui	a4,0x90d33
1c00a094:	1b470713          	addi	a4,a4,436 # 90d331b4 <pulp__FC+0x90d331b5>
1c00a098:	44e7a023          	sw	a4,1088(a5)
1c00a09c:	4cc88893          	addi	a7,a7,1228
1c00a0a0:	2b4af737          	lui	a4,0x2b4af
1c00a0a4:	3f1794a3          	sh	a7,1001(a5)
1c00a0a8:	aa970713          	addi	a4,a4,-1367 # 2b4aeaa9 <__l2_shared_end+0xf49eaa9>
1c00a0ac:	44e7a223          	sw	a4,1092(a5)
1c00a0b0:	f4cfa737          	lui	a4,0xf4cfa
1c00a0b4:	b3670713          	addi	a4,a4,-1226 # f4cf9b36 <pulp__FC+0xf4cf9b37>
1c00a0b8:	44e7a423          	sw	a4,1096(a5)
1c00a0bc:	4ae84737          	lui	a4,0x4ae84
1c00a0c0:	8b870713          	addi	a4,a4,-1864 # 4ae838b8 <__l2_shared_end+0x2ee738b8>
1c00a0c4:	44e7a623          	sw	a4,1100(a5)
1c00a0c8:	a1918737          	lui	a4,0xa1918
1c00a0cc:	98870713          	addi	a4,a4,-1656 # a1917988 <pulp__FC+0xa1917989>
1c00a0d0:	44e7a823          	sw	a4,1104(a5)
1c00a0d4:	cc68d737          	lui	a4,0xcc68d
1c00a0d8:	86770713          	addi	a4,a4,-1945 # cc68c867 <pulp__FC+0xcc68c868>
1c00a0dc:	44e7aa23          	sw	a4,1108(a5)
1c00a0e0:	3c6ba737          	lui	a4,0x3c6ba
1c00a0e4:	19b70713          	addi	a4,a4,411 # 3c6ba19b <__l2_shared_end+0x206aa19b>
1c00a0e8:	44e7ac23          	sw	a4,1112(a5)
1c00a0ec:	e1b39737          	lui	a4,0xe1b39
1c00a0f0:	93170713          	addi	a4,a4,-1743 # e1b38931 <pulp__FC+0xe1b38932>
1c00a0f4:	44e7ae23          	sw	a4,1116(a5)
1c00a0f8:	64739737          	lui	a4,0x64739
1c00a0fc:	f9070713          	addi	a4,a4,-112 # 64738f90 <__l2_shared_end+0x48728f90>
1c00a100:	46e7a023          	sw	a4,1120(a5)
1c00a104:	2a385737          	lui	a4,0x2a385
1c00a108:	f6070713          	addi	a4,a4,-160 # 2a384f60 <__l2_shared_end+0xe374f60>
1c00a10c:	46e7a223          	sw	a4,1124(a5)
1c00a110:	c8851737          	lui	a4,0xc8851
1c00a114:	a2a70713          	addi	a4,a4,-1494 # c8850a2a <pulp__FC+0xc8850a2b>
1c00a118:	46e7a423          	sw	a4,1128(a5)
1c00a11c:	1b984737          	lui	a4,0x1b984
1c00a120:	1e370713          	addi	a4,a4,483 # 1b9841e3 <__CTOR_LIST__-0x67be21>
1c00a124:	46e7a623          	sw	a4,1132(a5)
1c00a128:	3347f737          	lui	a4,0x3347f
1c00a12c:	c9f70713          	addi	a4,a4,-865 # 3347ec9f <__l2_shared_end+0x1746ec9f>
1c00a130:	46e7a823          	sw	a4,1136(a5)
1c00a134:	db1e3737          	lui	a4,0xdb1e3
1c00a138:	a3070713          	addi	a4,a4,-1488 # db1e2a30 <pulp__FC+0xdb1e2a31>
1c00a13c:	46e7aa23          	sw	a4,1140(a5)
1c00a140:	3b9e7737          	lui	a4,0x3b9e7
1c00a144:	14470713          	addi	a4,a4,324 # 3b9e7144 <__l2_shared_end+0x1f9d7144>
1c00a148:	46e7ac23          	sw	a4,1144(a5)
1c00a14c:	0b778737          	lui	a4,0xb778
1c00a150:	b5370713          	addi	a4,a4,-1197 # b777b53 <__CTOR_LIST__-0x108884b1>
1c00a154:	46e7ae23          	sw	a4,1148(a5)
1c00a158:	687a8737          	lui	a4,0x687a8
1c00a15c:	52370713          	addi	a4,a4,1315 # 687a8523 <__l2_shared_end+0x4c798523>
1c00a160:	48e7a023          	sw	a4,1152(a5)
1c00a164:	bc914737          	lui	a4,0xbc914
1c00a168:	174d                	addi	a4,a4,-13
1c00a16a:	48e7a223          	sw	a4,1156(a5)
1c00a16e:	931c3737          	lui	a4,0x931c3
1c00a172:	18070713          	addi	a4,a4,384 # 931c3180 <pulp__FC+0x931c3181>
1c00a176:	48e7a423          	sw	a4,1160(a5)
1c00a17a:	00590737          	lui	a4,0x590
1c00a17e:	02a70713          	addi	a4,a4,42 # 59002a <__CTOR_LIST__-0x1ba6ffda>
1c00a182:	48e7a623          	sw	a4,1164(a5)
1c00a186:	d3e17737          	lui	a4,0xd3e17
1c00a18a:	cfb70713          	addi	a4,a4,-773 # d3e16cfb <pulp__FC+0xd3e16cfc>
1c00a18e:	48e7a823          	sw	a4,1168(a5)
1c00a192:	95334737          	lui	a4,0x95334
1c00a196:	aa770713          	addi	a4,a4,-1369 # 95333aa7 <pulp__FC+0x95333aa8>
1c00a19a:	48e7aa23          	sw	a4,1172(a5)
1c00a19e:	543de737          	lui	a4,0x543de
1c00a1a2:	0e070713          	addi	a4,a4,224 # 543de0e0 <__l2_shared_end+0x383ce0e0>
1c00a1a6:	48e7ac23          	sw	a4,1176(a5)
1c00a1aa:	37a62737          	lui	a4,0x37a62
1c00a1ae:	5dc70713          	addi	a4,a4,1500 # 37a625dc <__l2_shared_end+0x1ba525dc>
1c00a1b2:	48e7ae23          	sw	a4,1180(a5)
1c00a1b6:	0974f737          	lui	a4,0x974f
1c00a1ba:	7b670713          	addi	a4,a4,1974 # 974f7b6 <__CTOR_LIST__-0x128b084e>
1c00a1be:	4ae7a023          	sw	a4,1184(a5)
1c00a1c2:	4c78c737          	lui	a4,0x4c78c
1c00a1c6:	1b570713          	addi	a4,a4,437 # 4c78c1b5 <__l2_shared_end+0x3077c1b5>
1c00a1ca:	4ae7a223          	sw	a4,1188(a5)
1c00a1ce:	aa151737          	lui	a4,0xaa151
1c00a1d2:	a8270713          	addi	a4,a4,-1406 # aa150a82 <pulp__FC+0xaa150a83>
1c00a1d6:	4ae7a423          	sw	a4,1192(a5)
1c00a1da:	c651b737          	lui	a4,0xc651b
1c00a1de:	36570713          	addi	a4,a4,869 # c651b365 <pulp__FC+0xc651b366>
1c00a1e2:	4ae7a623          	sw	a4,1196(a5)
1c00a1e6:	63a00737          	lui	a4,0x63a00
1c00a1ea:	41b70713          	addi	a4,a4,1051 # 63a0041b <__l2_shared_end+0x479f041b>
1c00a1ee:	4ae7a823          	sw	a4,1200(a5)
1c00a1f2:	5974d737          	lui	a4,0x5974d
1c00a1f6:	bcc70713          	addi	a4,a4,-1076 # 5974cbcc <__l2_shared_end+0x3d73cbcc>
1c00a1fa:	4ae7aa23          	sw	a4,1204(a5)
1c00a1fe:	9b077737          	lui	a4,0x9b077
1c00a202:	d4d70713          	addi	a4,a4,-691 # 9b076d4d <pulp__FC+0x9b076d4e>
1c00a206:	4ae7ac23          	sw	a4,1208(a5)
1c00a20a:	40bcc737          	lui	a4,0x40bcc
1c00a20e:	28270713          	addi	a4,a4,642 # 40bcc282 <__l2_shared_end+0x24bbc282>
1c00a212:	4ae7ae23          	sw	a4,1212(a5)
1c00a216:	72ec0737          	lui	a4,0x72ec0
1c00a21a:	15470713          	addi	a4,a4,340 # 72ec0154 <__l2_shared_end+0x56eb0154>
1c00a21e:	4ce7a023          	sw	a4,1216(a5)
1c00a222:	9d396737          	lui	a4,0x9d396
1c00a226:	ebf70713          	addi	a4,a4,-321 # 9d395ebf <pulp__FC+0x9d395ec0>
1c00a22a:	4ce7a223          	sw	a4,1220(a5)
1c00a22e:	86321737          	lui	a4,0x86321
1c00a232:	92070713          	addi	a4,a4,-1760 # 86320920 <pulp__FC+0x86320921>
1c00a236:	4ce7a423          	sw	a4,1224(a5)
1c00a23a:	c9b42737          	lui	a4,0xc9b42
1c00a23e:	28c70713          	addi	a4,a4,652 # c9b4228c <pulp__FC+0xc9b4228d>
1c00a242:	4ce7a623          	sw	a4,1228(a5)
1c00a246:	7f87a737          	lui	a4,0x7f87a
1c00a24a:	b1b70713          	addi	a4,a4,-1253 # 7f879b1b <__l2_shared_end+0x63869b1b>
1c00a24e:	4ce7a823          	sw	a4,1232(a5)
1c00a252:	61817737          	lui	a4,0x61817
1c00a256:	61d70713          	addi	a4,a4,1565 # 6181761d <__l2_shared_end+0x4580761d>
1c00a25a:	4ce7aa23          	sw	a4,1236(a5)
1c00a25e:	8b8e0737          	lui	a4,0x8b8e0
1c00a262:	62a70713          	addi	a4,a4,1578 # 8b8e062a <pulp__FC+0x8b8e062b>
1c00a266:	4ce7ac23          	sw	a4,1240(a5)
1c00a26a:	2cd2d737          	lui	a4,0x2cd2d
1c00a26e:	07970713          	addi	a4,a4,121 # 2cd2d079 <__l2_shared_end+0x10d1d079>
1c00a272:	4ce7ae23          	sw	a4,1244(a5)
1c00a276:	eda42737          	lui	a4,0xeda42
1c00a27a:	64270713          	addi	a4,a4,1602 # eda42642 <pulp__FC+0xeda42643>
1c00a27e:	4ee7a023          	sw	a4,1248(a5)
1c00a282:	05a00713          	li	a4,90
1c00a286:	4ee78323          	sb	a4,1254(a5)
1c00a28a:	b4877737          	lui	a4,0xb4877
1c00a28e:	95070713          	addi	a4,a4,-1712 # b4876950 <pulp__FC+0xb4876951>
1c00a292:	4ee7a3a3          	sw	a4,1255(a5)
1c00a296:	44242737          	lui	a4,0x44242
1c00a29a:	a7870713          	addi	a4,a4,-1416 # 44241a78 <__l2_shared_end+0x28231a78>
1c00a29e:	4ee7a5a3          	sw	a4,1259(a5)
1c00a2a2:	84c27737          	lui	a4,0x84c27
1c00a2a6:	5fc70713          	addi	a4,a4,1532 # 84c275fc <pulp__FC+0x84c275fd>
1c00a2aa:	4ee7a7a3          	sw	a4,1263(a5)
1c00a2ae:	5717b737          	lui	a4,0x5717b
1c00a2b2:	c5a70713          	addi	a4,a4,-934 # 5717ac5a <__l2_shared_end+0x3b16ac5a>
1c00a2b6:	4ee7a9a3          	sw	a4,1267(a5)
1c00a2ba:	32458737          	lui	a4,0x32458
1c00a2be:	16370713          	addi	a4,a4,355 # 32458163 <__l2_shared_end+0x16448163>
1c00a2c2:	4ee7aba3          	sw	a4,1271(a5)
1c00a2c6:	89035737          	lui	a4,0x89035
1c00a2ca:	62370713          	addi	a4,a4,1571 # 89035623 <pulp__FC+0x89035624>
1c00a2ce:	4ee7ada3          	sw	a4,1275(a5)
1c00a2d2:	ab00a737          	lui	a4,0xab00a
1c00a2d6:	24370713          	addi	a4,a4,579 # ab00a243 <pulp__FC+0xab00a244>
1c00a2da:	4ee7afa3          	sw	a4,1279(a5)
1c00a2de:	a317e737          	lui	a4,0xa317e
1c00a2e2:	48270713          	addi	a4,a4,1154 # a317e482 <pulp__FC+0xa317e483>
1c00a2e6:	50e7a1a3          	sw	a4,1283(a5)
1c00a2ea:	dea7f737          	lui	a4,0xdea7f
1c00a2ee:	a5470713          	addi	a4,a4,-1452 # dea7ea54 <pulp__FC+0xdea7ea55>
1c00a2f2:	50e7a3a3          	sw	a4,1287(a5)
1c00a2f6:	2b455737          	lui	a4,0x2b455
1c00a2fa:	0f970713          	addi	a4,a4,249 # 2b4550f9 <__l2_shared_end+0xf4450f9>
1c00a2fe:	50e7a5a3          	sw	a4,1291(a5)
1c00a302:	33e8d737          	lui	a4,0x33e8d
1c00a306:	e6770713          	addi	a4,a4,-409 # 33e8ce67 <__l2_shared_end+0x17e7ce67>
1c00a30a:	50e7a7a3          	sw	a4,1295(a5)
1c00a30e:	fb166737          	lui	a4,0xfb166
1c00a312:	7fd70713          	addi	a4,a4,2045 # fb1667fd <pulp__FC+0xfb1667fe>
1c00a316:	50e7a9a3          	sw	a4,1299(a5)
1c00a31a:	26c09737          	lui	a4,0x26c09
1c00a31e:	1a670713          	addi	a4,a4,422 # 26c091a6 <__l2_shared_end+0xabf91a6>
1c00a322:	50e7aba3          	sw	a4,1303(a5)
1c00a326:	4c65e737          	lui	a4,0x4c65e
1c00a32a:	fc570713          	addi	a4,a4,-59 # 4c65dfc5 <__l2_shared_end+0x3064dfc5>
1c00a32e:	50e7ada3          	sw	a4,1307(a5)
1c00a332:	a017f737          	lui	a4,0xa017f
1c00a336:	42170713          	addi	a4,a4,1057 # a017f421 <pulp__FC+0xa017f422>
1c00a33a:	50e7afa3          	sw	a4,1311(a5)
1c00a33e:	4abe5737          	lui	a4,0x4abe5
1c00a342:	ba270713          	addi	a4,a4,-1118 # 4abe4ba2 <__l2_shared_end+0x2ebd4ba2>
1c00a346:	52e7a1a3          	sw	a4,1315(a5)
1c00a34a:	c6c39737          	lui	a4,0xc6c39
1c00a34e:	44a70713          	addi	a4,a4,1098 # c6c3944a <pulp__FC+0xc6c3944b>
1c00a352:	52e7a3a3          	sw	a4,1319(a5)
1c00a356:	d1c0d737          	lui	a4,0xd1c0d
1c00a35a:	54670713          	addi	a4,a4,1350 # d1c0d546 <pulp__FC+0xd1c0d547>
1c00a35e:	52e7a5a3          	sw	a4,1323(a5)
1c00a362:	5bd8a737          	lui	a4,0x5bd8a
1c00a366:	3a870713          	addi	a4,a4,936 # 5bd8a3a8 <__l2_shared_end+0x3fd7a3a8>
1c00a36a:	52e7a7a3          	sw	a4,1327(a5)
1c00a36e:	2a225737          	lui	a4,0x2a225
1c00a372:	92770713          	addi	a4,a4,-1753 # 2a224927 <__l2_shared_end+0xe214927>
1c00a376:	52e7a9a3          	sw	a4,1331(a5)
1c00a37a:	0f0b0737          	lui	a4,0xf0b0
1c00a37e:	7fe70713          	addi	a4,a4,2046 # f0b07fe <__CTOR_LIST__-0xcf4f806>
1c00a382:	52e7aba3          	sw	a4,1335(a5)
1c00a386:	89946737          	lui	a4,0x89946
1c00a38a:	c0170713          	addi	a4,a4,-1023 # 89945c01 <pulp__FC+0x89945c02>
1c00a38e:	52e7ada3          	sw	a4,1339(a5)
1c00a392:	b619e737          	lui	a4,0xb619e
1c00a396:	91b70713          	addi	a4,a4,-1765 # b619d91b <pulp__FC+0xb619d91c>
1c00a39a:	52e7afa3          	sw	a4,1343(a5)
1c00a39e:	7521f737          	lui	a4,0x7521f
1c00a3a2:	6e1d                	lui	t3,0x7
1c00a3a4:	15870713          	addi	a4,a4,344 # 7521f158 <__l2_shared_end+0x5920f158>
1c00a3a8:	be1e0293          	addi	t0,t3,-1055 # 6be1 <__CTOR_LIST__-0x1bff9423>
1c00a3ac:	54e7a1a3          	sw	a4,1347(a5)
1c00a3b0:	72d7d737          	lui	a4,0x72d7d
1c00a3b4:	4e579223          	sh	t0,1252(a5)
1c00a3b8:	c5570713          	addi	a4,a4,-939 # 72d7cc55 <__l2_shared_end+0x56d6cc55>
1c00a3bc:	54e7a3a3          	sw	a4,1351(a5)
1c00a3c0:	590b9737          	lui	a4,0x590b9
1c00a3c4:	29d70713          	addi	a4,a4,669 # 590b929d <__l2_shared_end+0x3d0a929d>
1c00a3c8:	54e7a5a3          	sw	a4,1355(a5)
1c00a3cc:	ca31f737          	lui	a4,0xca31f
1c00a3d0:	63f70713          	addi	a4,a4,1599 # ca31f63f <pulp__FC+0xca31f640>
1c00a3d4:	54e7a7a3          	sw	a4,1359(a5)
1c00a3d8:	e92d8737          	lui	a4,0xe92d8
1c00a3dc:	ec070713          	addi	a4,a4,-320 # e92d7ec0 <pulp__FC+0xe92d7ec1>
1c00a3e0:	54e7a9a3          	sw	a4,1363(a5)
1c00a3e4:	bed6d737          	lui	a4,0xbed6d
1c00a3e8:	d5370713          	addi	a4,a4,-685 # bed6cd53 <pulp__FC+0xbed6cd54>
1c00a3ec:	54e7aba3          	sw	a4,1367(a5)
1c00a3f0:	58166737          	lui	a4,0x58166
1c00a3f4:	1a070713          	addi	a4,a4,416 # 581661a0 <__l2_shared_end+0x3c1561a0>
1c00a3f8:	54e7ada3          	sw	a4,1371(a5)
1c00a3fc:	b8fda737          	lui	a4,0xb8fda
1c00a400:	29370713          	addi	a4,a4,659 # b8fda293 <pulp__FC+0xb8fda294>
1c00a404:	54e7afa3          	sw	a4,1375(a5)
1c00a408:	080a2737          	lui	a4,0x80a2
1c00a40c:	97970713          	addi	a4,a4,-1671 # 80a1979 <__CTOR_LIST__-0x13f5e68b>
1c00a410:	56e7a1a3          	sw	a4,1379(a5)
1c00a414:	a6964737          	lui	a4,0xa6964
1c00a418:	c3470713          	addi	a4,a4,-972 # a6963c34 <pulp__FC+0xa6963c35>
1c00a41c:	56e7a3a3          	sw	a4,1383(a5)
1c00a420:	2676d737          	lui	a4,0x2676d
1c00a424:	acc70713          	addi	a4,a4,-1332 # 2676cacc <__l2_shared_end+0xa75cacc>
1c00a428:	56e7a5a3          	sw	a4,1387(a5)
1c00a42c:	2bd24737          	lui	a4,0x2bd24
1c00a430:	84970713          	addi	a4,a4,-1975 # 2bd23849 <__l2_shared_end+0xfd13849>
1c00a434:	56e7a7a3          	sw	a4,1391(a5)
1c00a438:	02481737          	lui	a4,0x2481
1c00a43c:	62770713          	addi	a4,a4,1575 # 2481627 <__CTOR_LIST__-0x19b7e9dd>
1c00a440:	56e7a9a3          	sw	a4,1395(a5)
1c00a444:	9b80d737          	lui	a4,0x9b80d
1c00a448:	f6170713          	addi	a4,a4,-159 # 9b80cf61 <pulp__FC+0x9b80cf62>
1c00a44c:	56e7aba3          	sw	a4,1399(a5)
1c00a450:	9703b737          	lui	a4,0x9703b
1c00a454:	88170713          	addi	a4,a4,-1919 # 9703a881 <pulp__FC+0x9703a882>
1c00a458:	56e7ada3          	sw	a4,1403(a5)
1c00a45c:	b1ccb737          	lui	a4,0xb1ccb
1c00a460:	36870713          	addi	a4,a4,872 # b1ccb368 <pulp__FC+0xb1ccb369>
1c00a464:	56e7afa3          	sw	a4,1407(a5)
1c00a468:	5cfa1737          	lui	a4,0x5cfa1
1c00a46c:	0f970713          	addi	a4,a4,249 # 5cfa10f9 <__l2_shared_end+0x40f910f9>
1c00a470:	58e7a1a3          	sw	a4,1411(a5)
1c00a474:	5cb20737          	lui	a4,0x5cb20
1c00a478:	35e70713          	addi	a4,a4,862 # 5cb2035e <__l2_shared_end+0x40b1035e>
1c00a47c:	58e7a3a3          	sw	a4,1415(a5)
1c00a480:	8f418737          	lui	a4,0x8f418
1c00a484:	beb70713          	addi	a4,a4,-1045 # 8f417beb <pulp__FC+0x8f417bec>
1c00a488:	58e7a5a3          	sw	a4,1419(a5)
1c00a48c:	8c9ba737          	lui	a4,0x8c9ba
1c00a490:	35b70713          	addi	a4,a4,859 # 8c9ba35b <pulp__FC+0x8c9ba35c>
1c00a494:	58e7a7a3          	sw	a4,1423(a5)
1c00a498:	92634737          	lui	a4,0x92634
1c00a49c:	e7170713          	addi	a4,a4,-399 # 92633e71 <pulp__FC+0x92633e72>
1c00a4a0:	58e7a9a3          	sw	a4,1427(a5)
1c00a4a4:	e1586737          	lui	a4,0xe1586
1c00a4a8:	b0470713          	addi	a4,a4,-1276 # e1585b04 <pulp__FC+0xe1585b05>
1c00a4ac:	58e7aba3          	sw	a4,1431(a5)
1c00a4b0:	a4733737          	lui	a4,0xa4733
1c00a4b4:	dc970713          	addi	a4,a4,-567 # a4732dc9 <pulp__FC+0xa4732dca>
1c00a4b8:	58e7ada3          	sw	a4,1435(a5)
1c00a4bc:	2880e737          	lui	a4,0x2880e
1c00a4c0:	14e70713          	addi	a4,a4,334 # 2880e14e <__l2_shared_end+0xc7fe14e>
1c00a4c4:	58e7afa3          	sw	a4,1439(a5)
1c00a4c8:	74b4b737          	lui	a4,0x74b4b
1c00a4cc:	22e70713          	addi	a4,a4,558 # 74b4b22e <__l2_shared_end+0x58b3b22e>
1c00a4d0:	5ae7a1a3          	sw	a4,1443(a5)
1c00a4d4:	f44c4737          	lui	a4,0xf44c4
1c00a4d8:	6d370713          	addi	a4,a4,1747 # f44c46d3 <pulp__FC+0xf44c46d4>
1c00a4dc:	5ae7a3a3          	sw	a4,1447(a5)
1c00a4e0:	af235737          	lui	a4,0xaf235
1c00a4e4:	8aa70713          	addi	a4,a4,-1878 # af2348aa <pulp__FC+0xaf2348ab>
1c00a4e8:	5ae7a5a3          	sw	a4,1451(a5)
1c00a4ec:	4a5e3737          	lui	a4,0x4a5e3
1c00a4f0:	8cb70713          	addi	a4,a4,-1845 # 4a5e28cb <__l2_shared_end+0x2e5d28cb>
1c00a4f4:	5ae7a7a3          	sw	a4,1455(a5)
1c00a4f8:	a7a89737          	lui	a4,0xa7a89
1c00a4fc:	b0170713          	addi	a4,a4,-1279 # a7a88b01 <pulp__FC+0xa7a88b02>
1c00a500:	5ae7a9a3          	sw	a4,1459(a5)
1c00a504:	0d977737          	lui	a4,0xd977
1c00a508:	6c470713          	addi	a4,a4,1732 # d9776c4 <__CTOR_LIST__-0xe688940>
1c00a50c:	5ae7aba3          	sw	a4,1463(a5)
1c00a510:	e59de737          	lui	a4,0xe59de
1c00a514:	2a070713          	addi	a4,a4,672 # e59de2a0 <pulp__FC+0xe59de2a1>
1c00a518:	5ae7ada3          	sw	a4,1467(a5)
1c00a51c:	68f0a737          	lui	a4,0x68f0a
1c00a520:	9f670713          	addi	a4,a4,-1546 # 68f099f6 <__l2_shared_end+0x4cef99f6>
1c00a524:	5ae7afa3          	sw	a4,1471(a5)
1c00a528:	366a6737          	lui	a4,0x366a6
1c00a52c:	d4670713          	addi	a4,a4,-698 # 366a5d46 <__l2_shared_end+0x1a695d46>
1c00a530:	5ce7a1a3          	sw	a4,1475(a5)
1c00a534:	1f351737          	lui	a4,0x1f351
1c00a538:	2d070713          	addi	a4,a4,720 # 1f3512d0 <__l2_shared_end+0x33412d0>
1c00a53c:	5ce7a3a3          	sw	a4,1479(a5)
1c00a540:	7c5aa737          	lui	a4,0x7c5aa
1c00a544:	94670713          	addi	a4,a4,-1722 # 7c5a9946 <__l2_shared_end+0x60599946>
1c00a548:	5ce7a5a3          	sw	a4,1483(a5)
1c00a54c:	ae3a4737          	lui	a4,0xae3a4
1c00a550:	a3070713          	addi	a4,a4,-1488 # ae3a3a30 <pulp__FC+0xae3a3a31>
1c00a554:	5ce7a7a3          	sw	a4,1487(a5)
1c00a558:	bdafa737          	lui	a4,0xbdafa
1c00a55c:	72670713          	addi	a4,a4,1830 # bdafa726 <pulp__FC+0xbdafa727>
1c00a560:	5ce7a9a3          	sw	a4,1491(a5)
1c00a564:	60ed6737          	lui	a4,0x60ed6
1c00a568:	29970713          	addi	a4,a4,665 # 60ed6299 <__l2_shared_end+0x44ec6299>
1c00a56c:	5ce7aba3          	sw	a4,1495(a5)
1c00a570:	5be9e737          	lui	a4,0x5be9e
1c00a574:	da970713          	addi	a4,a4,-599 # 5be9dda9 <__l2_shared_end+0x3fe8dda9>
1c00a578:	5ce7ada3          	sw	a4,1499(a5)
1c00a57c:	84b00713          	li	a4,-1973
1c00a580:	5ce79fa3          	sh	a4,1503(a5)
1c00a584:	fac00713          	li	a4,-84
1c00a588:	5ee780a3          	sb	a4,1505(a5)
1c00a58c:	3c494737          	lui	a4,0x3c494
1c00a590:	77a70713          	addi	a4,a4,1914 # 3c49477a <__l2_shared_end+0x2048477a>
1c00a594:	5ee7a123          	sw	a4,1506(a5)
1c00a598:	f2e32737          	lui	a4,0xf2e32
1c00a59c:	ef670713          	addi	a4,a4,-266 # f2e31ef6 <pulp__FC+0xf2e31ef7>
1c00a5a0:	5ee7a323          	sw	a4,1510(a5)
1c00a5a4:	ce46a737          	lui	a4,0xce46a
1c00a5a8:	09b70713          	addi	a4,a4,155 # ce46a09b <pulp__FC+0xce46a09c>
1c00a5ac:	5ee7a523          	sw	a4,1514(a5)
1c00a5b0:	3f76a737          	lui	a4,0x3f76a
1c00a5b4:	11570713          	addi	a4,a4,277 # 3f76a115 <__l2_shared_end+0x2375a115>
1c00a5b8:	5ee7a723          	sw	a4,1518(a5)
1c00a5bc:	bafa2737          	lui	a4,0xbafa2
1c00a5c0:	10c70713          	addi	a4,a4,268 # bafa210c <pulp__FC+0xbafa210d>
1c00a5c4:	5ee7a923          	sw	a4,1522(a5)
1c00a5c8:	ad006737          	lui	a4,0xad006
1c00a5cc:	72470713          	addi	a4,a4,1828 # ad006724 <pulp__FC+0xad006725>
1c00a5d0:	5ee7ab23          	sw	a4,1526(a5)
1c00a5d4:	adb01737          	lui	a4,0xadb01
1c00a5d8:	95470713          	addi	a4,a4,-1708 # adb00954 <pulp__FC+0xadb00955>
1c00a5dc:	5ee7ad23          	sw	a4,1530(a5)
1c00a5e0:	7997d737          	lui	a4,0x7997d
1c00a5e4:	cdc70713          	addi	a4,a4,-804 # 7997ccdc <__l2_shared_end+0x5d96ccdc>
1c00a5e8:	5ee7af23          	sw	a4,1534(a5)
1c00a5ec:	45fcd737          	lui	a4,0x45fcd
1c00a5f0:	1a470713          	addi	a4,a4,420 # 45fcd1a4 <__l2_shared_end+0x29fbd1a4>
1c00a5f4:	60e7a123          	sw	a4,1538(a5)
1c00a5f8:	041f2737          	lui	a4,0x41f2
1c00a5fc:	6ec70713          	addi	a4,a4,1772 # 41f26ec <__CTOR_LIST__-0x17e0d918>
1c00a600:	60e7a323          	sw	a4,1542(a5)
1c00a604:	aa9da737          	lui	a4,0xaa9da
1c00a608:	c8b70713          	addi	a4,a4,-885 # aa9d9c8b <pulp__FC+0xaa9d9c8c>
1c00a60c:	60e7a523          	sw	a4,1546(a5)
1c00a610:	22ecd737          	lui	a4,0x22ecd
1c00a614:	93870713          	addi	a4,a4,-1736 # 22ecc938 <__l2_shared_end+0x6ebc938>
1c00a618:	60e7a723          	sw	a4,1550(a5)
1c00a61c:	e8056737          	lui	a4,0xe8056
1c00a620:	58b70713          	addi	a4,a4,1419 # e805658b <pulp__FC+0xe805658c>
1c00a624:	60e7a923          	sw	a4,1554(a5)
1c00a628:	b3265737          	lui	a4,0xb3265
1c00a62c:	29070713          	addi	a4,a4,656 # b3265290 <pulp__FC+0xb3265291>
1c00a630:	60e7ab23          	sw	a4,1558(a5)
1c00a634:	20808737          	lui	a4,0x20808
1c00a638:	68470713          	addi	a4,a4,1668 # 20808684 <__l2_shared_end+0x47f8684>
1c00a63c:	60e7ad23          	sw	a4,1562(a5)
1c00a640:	c8c5c737          	lui	a4,0xc8c5c
1c00a644:	25970713          	addi	a4,a4,601 # c8c5c259 <pulp__FC+0xc8c5c25a>
1c00a648:	60e7af23          	sw	a4,1566(a5)
1c00a64c:	06560737          	lui	a4,0x6560
1c00a650:	19670713          	addi	a4,a4,406 # 6560196 <__CTOR_LIST__-0x15a9fe6e>
1c00a654:	62e7a123          	sw	a4,1570(a5)
1c00a658:	3713d737          	lui	a4,0x3713d
1c00a65c:	b3470713          	addi	a4,a4,-1228 # 3713cb34 <__l2_shared_end+0x1b12cb34>
1c00a660:	62e7a323          	sw	a4,1574(a5)
1c00a664:	65533737          	lui	a4,0x65533
1c00a668:	1b170713          	addi	a4,a4,433 # 655331b1 <__l2_shared_end+0x495231b1>
1c00a66c:	62e7a523          	sw	a4,1578(a5)
1c00a670:	bc425737          	lui	a4,0xbc425
1c00a674:	81470713          	addi	a4,a4,-2028 # bc424814 <pulp__FC+0xbc424815>
1c00a678:	62e7a723          	sw	a4,1582(a5)
1c00a67c:	2e296737          	lui	a4,0x2e296
1c00a680:	a4070713          	addi	a4,a4,-1472 # 2e295a40 <__l2_shared_end+0x12285a40>
1c00a684:	62e7a923          	sw	a4,1586(a5)
1c00a688:	a4af4737          	lui	a4,0xa4af4
1c00a68c:	c6870713          	addi	a4,a4,-920 # a4af3c68 <pulp__FC+0xa4af3c69>
1c00a690:	62e7ab23          	sw	a4,1590(a5)
1c00a694:	94264737          	lui	a4,0x94264
1c00a698:	55170713          	addi	a4,a4,1361 # 94264551 <pulp__FC+0x94264552>
1c00a69c:	62e7ad23          	sw	a4,1594(a5)
1c00a6a0:	68fb5737          	lui	a4,0x68fb5
1c00a6a4:	d5c70713          	addi	a4,a4,-676 # 68fb4d5c <__l2_shared_end+0x4cfa4d5c>
1c00a6a8:	833298b7          	lui	a7,0x83329
1c00a6ac:	62e7af23          	sw	a4,1598(a5)
1c00a6b0:	5b788893          	addi	a7,a7,1463 # 833295b7 <pulp__FC+0x833295b8>
1c00a6b4:	b8cd3737          	lui	a4,0xb8cd3
1c00a6b8:	6517a323          	sw	a7,1606(a5)
1c00a6bc:	aee70713          	addi	a4,a4,-1298 # b8cd2aee <pulp__FC+0xb8cd2aef>
1c00a6c0:	31d598b7          	lui	a7,0x31d59
1c00a6c4:	64e7a123          	sw	a4,1602(a5)
1c00a6c8:	66688893          	addi	a7,a7,1638 # 31d59666 <__l2_shared_end+0x15d49666>
1c00a6cc:	6517a523          	sw	a7,1610(a5)
1c00a6d0:	bd45a8b7          	lui	a7,0xbd45a
1c00a6d4:	02588893          	addi	a7,a7,37 # bd45a025 <pulp__FC+0xbd45a026>
1c00a6d8:	6517a723          	sw	a7,1614(a5)
1c00a6dc:	cc3b98b7          	lui	a7,0xcc3b9
1c00a6e0:	abb88893          	addi	a7,a7,-1349 # cc3b8abb <pulp__FC+0xcc3b8abc>
1c00a6e4:	6517a923          	sw	a7,1618(a5)
1c00a6e8:	3d0828b7          	lui	a7,0x3d082
1c00a6ec:	38188893          	addi	a7,a7,897 # 3d082381 <__l2_shared_end+0x21072381>
1c00a6f0:	6517ab23          	sw	a7,1622(a5)
1c00a6f4:	5b2c78b7          	lui	a7,0x5b2c7
1c00a6f8:	81e88893          	addi	a7,a7,-2018 # 5b2c681e <__l2_shared_end+0x3f2b681e>
1c00a6fc:	6517ad23          	sw	a7,1626(a5)
1c00a700:	760c88b7          	lui	a7,0x760c8
1c00a704:	2d788893          	addi	a7,a7,727 # 760c82d7 <__l2_shared_end+0x5a0b82d7>
1c00a708:	6517af23          	sw	a7,1630(a5)
1c00a70c:	113558b7          	lui	a7,0x11355
1c00a710:	8c488893          	addi	a7,a7,-1852 # 113548c4 <__CTOR_LIST__-0xacab740>
1c00a714:	6717a123          	sw	a7,1634(a5)
1c00a718:	694f48b7          	lui	a7,0x694f4
1c00a71c:	75188893          	addi	a7,a7,1873 # 694f4751 <__l2_shared_end+0x4d4e4751>
1c00a720:	6717a323          	sw	a7,1638(a5)
1c00a724:	70d708b7          	lui	a7,0x70d70
1c00a728:	1d688893          	addi	a7,a7,470 # 70d701d6 <__l2_shared_end+0x54d601d6>
1c00a72c:	6717a523          	sw	a7,1642(a5)
1c00a730:	972cc8b7          	lui	a7,0x972cc
1c00a734:	b8d88893          	addi	a7,a7,-1139 # 972cbb8d <pulp__FC+0x972cbb8e>
1c00a738:	6717a723          	sw	a7,1646(a5)
1c00a73c:	745278b7          	lui	a7,0x74527
1c00a740:	79d88893          	addi	a7,a7,1949 # 7452779d <__l2_shared_end+0x5851779d>
1c00a744:	6717a923          	sw	a7,1650(a5)
1c00a748:	2085b8b7          	lui	a7,0x2085b
1c00a74c:	69488893          	addi	a7,a7,1684 # 2085b694 <__l2_shared_end+0x484b694>
1c00a750:	6717ab23          	sw	a7,1654(a5)
1c00a754:	c36708b7          	lui	a7,0xc3670
1c00a758:	fa888893          	addi	a7,a7,-88 # c366ffa8 <pulp__FC+0xc366ffa9>
1c00a75c:	6717ad23          	sw	a7,1658(a5)
1c00a760:	2aca68b7          	lui	a7,0x2aca6
1c00a764:	24188893          	addi	a7,a7,577 # 2aca6241 <__l2_shared_end+0xec96241>
1c00a768:	6717af23          	sw	a7,1662(a5)
1c00a76c:	a27288b7          	lui	a7,0xa2728
1c00a770:	0ec88893          	addi	a7,a7,236 # a27280ec <pulp__FC+0xa27280ed>
1c00a774:	6917a123          	sw	a7,1666(a5)
1c00a778:	59f228b7          	lui	a7,0x59f22
1c00a77c:	fa588893          	addi	a7,a7,-91 # 59f21fa5 <__l2_shared_end+0x3df11fa5>
1c00a780:	6917a323          	sw	a7,1670(a5)
1c00a784:	e74898b7          	lui	a7,0xe7489
1c00a788:	63888893          	addi	a7,a7,1592 # e7489638 <pulp__FC+0xe7489639>
1c00a78c:	6917a523          	sw	a7,1674(a5)
1c00a790:	6ac198b7          	lui	a7,0x6ac19
1c00a794:	55b88893          	addi	a7,a7,1371 # 6ac1955b <__l2_shared_end+0x4ec0955b>
1c00a798:	6917a723          	sw	a7,1678(a5)
1c00a79c:	4e6018b7          	lui	a7,0x4e601
1c00a7a0:	4be88893          	addi	a7,a7,1214 # 4e6014be <__l2_shared_end+0x325f14be>
1c00a7a4:	6917a923          	sw	a7,1682(a5)
1c00a7a8:	f4bb08b7          	lui	a7,0xf4bb0
1c00a7ac:	adb88893          	addi	a7,a7,-1317 # f4bafadb <pulp__FC+0xf4bafadc>
1c00a7b0:	6917ab23          	sw	a7,1686(a5)
1c00a7b4:	7a6ab8b7          	lui	a7,0x7a6ab
1c00a7b8:	70088893          	addi	a7,a7,1792 # 7a6ab700 <__l2_shared_end+0x5e69b700>
1c00a7bc:	6917ad23          	sw	a7,1690(a5)
1c00a7c0:	61db08b7          	lui	a7,0x61db0
1c00a7c4:	70f88893          	addi	a7,a7,1807 # 61db070f <__l2_shared_end+0x45da070f>
1c00a7c8:	6917af23          	sw	a7,1694(a5)
1c00a7cc:	0291e8b7          	lui	a7,0x291e
1c00a7d0:	1dc88893          	addi	a7,a7,476 # 291e1dc <__CTOR_LIST__-0x196e1e28>
1c00a7d4:	6b17a123          	sw	a7,1698(a5)
1c00a7d8:	102d48b7          	lui	a7,0x102d4
1c00a7dc:	bf488893          	addi	a7,a7,-1036 # 102d3bf4 <__CTOR_LIST__-0xbd2c410>
1c00a7e0:	6b17a323          	sw	a7,1702(a5)
1c00a7e4:	027b78b7          	lui	a7,0x27b7
1c00a7e8:	46088893          	addi	a7,a7,1120 # 27b7460 <__CTOR_LIST__-0x19848ba4>
1c00a7ec:	6b17a523          	sw	a7,1706(a5)
1c00a7f0:	855448b7          	lui	a7,0x85544
1c00a7f4:	2c488893          	addi	a7,a7,708 # 855442c4 <pulp__FC+0x855442c5>
1c00a7f8:	6b17a723          	sw	a7,1710(a5)
1c00a7fc:	d9d528b7          	lui	a7,0xd9d52
1c00a800:	f3488893          	addi	a7,a7,-204 # d9d51f34 <pulp__FC+0xd9d51f35>
1c00a804:	6b17a923          	sw	a7,1714(a5)
1c00a808:	493768b7          	lui	a7,0x49376
1c00a80c:	16088893          	addi	a7,a7,352 # 49376160 <__l2_shared_end+0x2d366160>
1c00a810:	6b17ad23          	sw	a7,1722(a5)
1c00a814:	2085c8b7          	lui	a7,0x2085c
1c00a818:	96388893          	addi	a7,a7,-1693 # 2085b963 <__l2_shared_end+0x484b963>
1c00a81c:	6b17af23          	sw	a7,1726(a5)
1c00a820:	7d9a78b7          	lui	a7,0x7d9a7
1c00a824:	b9c88893          	addi	a7,a7,-1124 # 7d9a6b9c <__l2_shared_end+0x61996b9c>
1c00a828:	6d17a123          	sw	a7,1730(a5)
1c00a82c:	584a08b7          	lui	a7,0x584a0
1c00a830:	9b388893          	addi	a7,a7,-1613 # 5849f9b3 <__l2_shared_end+0x3c48f9b3>
1c00a834:	6d17a323          	sw	a7,1734(a5)
1c00a838:	790228b7          	lui	a7,0x79022
1c00a83c:	01a80537          	lui	a0,0x1a80
1c00a840:	d3188893          	addi	a7,a7,-719 # 79021d31 <__l2_shared_end+0x5d011d31>
1c00a844:	abf50f13          	addi	t5,a0,-1345 # 1a7fabf <__CTOR_LIST__-0x1a580545>
1c00a848:	6d17a523          	sw	a7,1738(a5)
1c00a84c:	c4d8a8b7          	lui	a7,0xc4d8a
1c00a850:	f50f8713          	addi	a4,t6,-176
1c00a854:	6be7ab23          	sw	t5,1718(a5)
1c00a858:	30088893          	addi	a7,a7,768 # c4d8a300 <pulp__FC+0xc4d8a301>
1c00a85c:	6d17a723          	sw	a7,1742(a5)
1c00a860:	6ce79d23          	sh	a4,1754(a5)
1c00a864:	4765                	li	a4,25
1c00a866:	6ce78e23          	sb	a4,1756(a5)
1c00a86a:	1977e737          	lui	a4,0x1977e
1c00a86e:	f2870713          	addi	a4,a4,-216 # 1977df28 <__CTOR_LIST__-0x28820dc>
1c00a872:	6ce7aea3          	sw	a4,1757(a5)
1c00a876:	904e9737          	lui	a4,0x904e9
1c00a87a:	cce70713          	addi	a4,a4,-818 # 904e8cce <pulp__FC+0x904e8ccf>
1c00a87e:	6ee7a0a3          	sw	a4,1761(a5)
1c00a882:	b84d9737          	lui	a4,0xb84d9
1c00a886:	f2270713          	addi	a4,a4,-222 # b84d8f22 <pulp__FC+0xb84d8f23>
1c00a88a:	6ee7a2a3          	sw	a4,1765(a5)
1c00a88e:	82e8c737          	lui	a4,0x82e8c
1c00a892:	97c70713          	addi	a4,a4,-1668 # 82e8b97c <pulp__FC+0x82e8b97d>
1c00a896:	6ee7a4a3          	sw	a4,1769(a5)
1c00a89a:	80217737          	lui	a4,0x80217
1c00a89e:	1f270713          	addi	a4,a4,498 # 802171f2 <pulp__FC+0x802171f3>
1c00a8a2:	6ee7a6a3          	sw	a4,1773(a5)
1c00a8a6:	d3459737          	lui	a4,0xd3459
1c00a8aa:	82370713          	addi	a4,a4,-2013 # d3458823 <pulp__FC+0xd3458824>
1c00a8ae:	6ee7a8a3          	sw	a4,1777(a5)
1c00a8b2:	c606c737          	lui	a4,0xc606c
1c00a8b6:	91e70713          	addi	a4,a4,-1762 # c606b91e <pulp__FC+0xc606b91f>
1c00a8ba:	6ee7aaa3          	sw	a4,1781(a5)
1c00a8be:	0f3eb737          	lui	a4,0xf3eb
1c00a8c2:	60e70713          	addi	a4,a4,1550 # f3eb60e <__CTOR_LIST__-0xcc149f6>
1c00a8c6:	6ee7aca3          	sw	a4,1785(a5)
1c00a8ca:	b8846737          	lui	a4,0xb8846
1c00a8ce:	ef570713          	addi	a4,a4,-267 # b8845ef5 <pulp__FC+0xb8845ef6>
1c00a8d2:	6ee7aea3          	sw	a4,1789(a5)
1c00a8d6:	791bb737          	lui	a4,0x791bb
1c00a8da:	96770713          	addi	a4,a4,-1689 # 791ba967 <__l2_shared_end+0x5d1aa967>
1c00a8de:	70e7a0a3          	sw	a4,1793(a5)
1c00a8e2:	3aa07737          	lui	a4,0x3aa07
1c00a8e6:	4ae70713          	addi	a4,a4,1198 # 3aa074ae <__l2_shared_end+0x1e9f74ae>
1c00a8ea:	70e7a2a3          	sw	a4,1797(a5)
1c00a8ee:	c8730737          	lui	a4,0xc8730
1c00a8f2:	4c070713          	addi	a4,a4,1216 # c87304c0 <pulp__FC+0xc87304c1>
1c00a8f6:	70e7a4a3          	sw	a4,1801(a5)
1c00a8fa:	aee6b737          	lui	a4,0xaee6b
1c00a8fe:	3c170713          	addi	a4,a4,961 # aee6b3c1 <pulp__FC+0xaee6b3c2>
1c00a902:	70e7a6a3          	sw	a4,1805(a5)
1c00a906:	1e7fc737          	lui	a4,0x1e7fc
1c00a90a:	3dc70713          	addi	a4,a4,988 # 1e7fc3dc <__l2_shared_end+0x27ec3dc>
1c00a90e:	70e7a8a3          	sw	a4,1809(a5)
1c00a912:	36e1c737          	lui	a4,0x36e1c
1c00a916:	86970713          	addi	a4,a4,-1943 # 36e1b869 <__l2_shared_end+0x1ae0b869>
1c00a91a:	70e7aaa3          	sw	a4,1813(a5)
1c00a91e:	01dba737          	lui	a4,0x1dba
1c00a922:	b0170713          	addi	a4,a4,-1279 # 1db9b01 <__CTOR_LIST__-0x1a246503>
1c00a926:	70e7aca3          	sw	a4,1817(a5)
1c00a92a:	22a17737          	lui	a4,0x22a17
1c00a92e:	4c370713          	addi	a4,a4,1219 # 22a174c3 <__l2_shared_end+0x6a074c3>
1c00a932:	70e7aea3          	sw	a4,1821(a5)
1c00a936:	25c36737          	lui	a4,0x25c36
1c00a93a:	4e170713          	addi	a4,a4,1249 # 25c364e1 <__l2_shared_end+0x9c264e1>
1c00a93e:	72e7a0a3          	sw	a4,1825(a5)
1c00a942:	cffbb737          	lui	a4,0xcffbb
1c00a946:	28470713          	addi	a4,a4,644 # cffbb284 <pulp__FC+0xcffbb285>
1c00a94a:	72e7a2a3          	sw	a4,1829(a5)
1c00a94e:	453a0737          	lui	a4,0x453a0
1c00a952:	15e70713          	addi	a4,a4,350 # 453a015e <__l2_shared_end+0x2939015e>
1c00a956:	72e7a4a3          	sw	a4,1833(a5)
1c00a95a:	33898737          	lui	a4,0x33898
1c00a95e:	c1270713          	addi	a4,a4,-1006 # 33897c12 <__l2_shared_end+0x17887c12>
1c00a962:	72e7a6a3          	sw	a4,1837(a5)
1c00a966:	0386b737          	lui	a4,0x386b
1c00a96a:	62670713          	addi	a4,a4,1574 # 386b626 <__CTOR_LIST__-0x187949de>
1c00a96e:	72e7a8a3          	sw	a4,1841(a5)
1c00a972:	2555d737          	lui	a4,0x2555d
1c00a976:	b7870713          	addi	a4,a4,-1160 # 2555cb78 <__l2_shared_end+0x954cb78>
1c00a97a:	72e7aaa3          	sw	a4,1845(a5)
1c00a97e:	2b529737          	lui	a4,0x2b529
1c00a982:	ba470713          	addi	a4,a4,-1116 # 2b528ba4 <__l2_shared_end+0xf518ba4>
1c00a986:	72e7aca3          	sw	a4,1849(a5)
1c00a98a:	762b1737          	lui	a4,0x762b1
1c00a98e:	33070713          	addi	a4,a4,816 # 762b1330 <__l2_shared_end+0x5a2a1330>
1c00a992:	72e7aea3          	sw	a4,1853(a5)
1c00a996:	694b2737          	lui	a4,0x694b2
1c00a99a:	18870713          	addi	a4,a4,392 # 694b2188 <__l2_shared_end+0x4d4a2188>
1c00a99e:	74e7a0a3          	sw	a4,1857(a5)
1c00a9a2:	9ad19737          	lui	a4,0x9ad19
1c00a9a6:	d8070713          	addi	a4,a4,-640 # 9ad18d80 <pulp__FC+0x9ad18d81>
1c00a9aa:	b03588b7          	lui	a7,0xb0358
1c00a9ae:	74e7a2a3          	sw	a4,1861(a5)
1c00a9b2:	44f88893          	addi	a7,a7,1103 # b035844f <pulp__FC+0xb0358450>
1c00a9b6:	3e040737          	lui	a4,0x3e040
1c00a9ba:	6d17a923          	sw	a7,1746(a5)
1c00a9be:	fa470713          	addi	a4,a4,-92 # 3e03ffa4 <__l2_shared_end+0x2202ffa4>
1c00a9c2:	a036a8b7          	lui	a7,0xa036a
1c00a9c6:	29388893          	addi	a7,a7,659 # a036a293 <pulp__FC+0xa036a294>
1c00a9ca:	74e7a4a3          	sw	a4,1865(a5)
1c00a9ce:	16202737          	lui	a4,0x16202
1c00a9d2:	6d17ab23          	sw	a7,1750(a5)
1c00a9d6:	51670713          	addi	a4,a4,1302 # 16202516 <__CTOR_LIST__-0x5dfdaee>
1c00a9da:	74e7a6a3          	sw	a4,1869(a5)
1c00a9de:	22799737          	lui	a4,0x22799
1c00a9e2:	4fc70713          	addi	a4,a4,1276 # 227994fc <__l2_shared_end+0x67894fc>
1c00a9e6:	74e7a8a3          	sw	a4,1873(a5)
1c00a9ea:	3e392737          	lui	a4,0x3e392
1c00a9ee:	42470713          	addi	a4,a4,1060 # 3e392424 <__l2_shared_end+0x22382424>
1c00a9f2:	74e7aaa3          	sw	a4,1877(a5)
1c00a9f6:	1571e737          	lui	a4,0x1571e
1c00a9fa:	b5170713          	addi	a4,a4,-1199 # 1571db51 <__CTOR_LIST__-0x68e24b3>
1c00a9fe:	74e7aca3          	sw	a4,1881(a5)
1c00aa02:	e6148737          	lui	a4,0xe6148
1c00aa06:	1e370713          	addi	a4,a4,483 # e61481e3 <pulp__FC+0xe61481e4>
1c00aa0a:	74e7aea3          	sw	a4,1885(a5)
1c00aa0e:	c8dc4737          	lui	a4,0xc8dc4
1c00aa12:	c8970713          	addi	a4,a4,-887 # c8dc3c89 <pulp__FC+0xc8dc3c8a>
1c00aa16:	76e7a0a3          	sw	a4,1889(a5)
1c00aa1a:	a4171737          	lui	a4,0xa4171
1c00aa1e:	1ae70713          	addi	a4,a4,430 # a41711ae <pulp__FC+0xa41711af>
1c00aa22:	76e7a2a3          	sw	a4,1893(a5)
1c00aa26:	01486737          	lui	a4,0x1486
1c00aa2a:	53170713          	addi	a4,a4,1329 # 1486531 <__CTOR_LIST__-0x1ab79ad3>
1c00aa2e:	76e7a4a3          	sw	a4,1897(a5)
1c00aa32:	9f62b737          	lui	a4,0x9f62b
1c00aa36:	40a70713          	addi	a4,a4,1034 # 9f62b40a <pulp__FC+0x9f62b40b>
1c00aa3a:	76e7a6a3          	sw	a4,1901(a5)
1c00aa3e:	8d147737          	lui	a4,0x8d147
1c00aa42:	2b670713          	addi	a4,a4,694 # 8d1472b6 <pulp__FC+0x8d1472b7>
1c00aa46:	76e7a8a3          	sw	a4,1905(a5)
1c00aa4a:	606c2737          	lui	a4,0x606c2
1c00aa4e:	a0370713          	addi	a4,a4,-1533 # 606c1a03 <__l2_shared_end+0x446b1a03>
1c00aa52:	76e7aaa3          	sw	a4,1909(a5)
1c00aa56:	664a7737          	lui	a4,0x664a7
1c00aa5a:	a1a70713          	addi	a4,a4,-1510 # 664a6a1a <__l2_shared_end+0x4a496a1a>
1c00aa5e:	76e7aca3          	sw	a4,1913(a5)
1c00aa62:	8e2d8737          	lui	a4,0x8e2d8
1c00aa66:	71d70713          	addi	a4,a4,1821 # 8e2d871d <pulp__FC+0x8e2d871e>
1c00aa6a:	76e7aea3          	sw	a4,1917(a5)
1c00aa6e:	0a759737          	lui	a4,0xa759
1c00aa72:	3f670713          	addi	a4,a4,1014 # a7593f6 <__CTOR_LIST__-0x118a6c0e>
1c00aa76:	78e7a0a3          	sw	a4,1921(a5)
1c00aa7a:	71586737          	lui	a4,0x71586
1c00aa7e:	91170713          	addi	a4,a4,-1775 # 71585911 <__l2_shared_end+0x55575911>
1c00aa82:	78e7a2a3          	sw	a4,1925(a5)
1c00aa86:	3e26c737          	lui	a4,0x3e26c
1c00aa8a:	96a70713          	addi	a4,a4,-1686 # 3e26b96a <__l2_shared_end+0x2225b96a>
1c00aa8e:	78e7a4a3          	sw	a4,1929(a5)
1c00aa92:	57635737          	lui	a4,0x57635
1c00aa96:	1b070713          	addi	a4,a4,432 # 576351b0 <__l2_shared_end+0x3b6251b0>
1c00aa9a:	78e7a6a3          	sw	a4,1933(a5)
1c00aa9e:	cd582737          	lui	a4,0xcd582
1c00aaa2:	31070713          	addi	a4,a4,784 # cd582310 <pulp__FC+0xcd582311>
1c00aaa6:	78e7a8a3          	sw	a4,1937(a5)
1c00aaaa:	64642737          	lui	a4,0x64642
1c00aaae:	5e570713          	addi	a4,a4,1509 # 646425e5 <__l2_shared_end+0x486325e5>
1c00aab2:	78e7aaa3          	sw	a4,1941(a5)
1c00aab6:	f5a86737          	lui	a4,0xf5a86
1c00aaba:	c8070713          	addi	a4,a4,-896 # f5a85c80 <pulp__FC+0xf5a85c81>
1c00aabe:	78e7aca3          	sw	a4,1945(a5)
1c00aac2:	1a756737          	lui	a4,0x1a756
1c00aac6:	19670713          	addi	a4,a4,406 # 1a756196 <__CTOR_LIST__-0x18a9e6e>
1c00aaca:	78e7aea3          	sw	a4,1949(a5)
1c00aace:	a775a737          	lui	a4,0xa775a
1c00aad2:	4d670713          	addi	a4,a4,1238 # a775a4d6 <pulp__FC+0xa775a4d7>
1c00aad6:	7ae7a0a3          	sw	a4,1953(a5)
1c00aada:	73cb8737          	lui	a4,0x73cb8
1c00aade:	8ec70713          	addi	a4,a4,-1812 # 73cb78ec <__l2_shared_end+0x57ca78ec>
1c00aae2:	7ae7a2a3          	sw	a4,1957(a5)
1c00aae6:	c5bbc737          	lui	a4,0xc5bbc
1c00aaea:	31970713          	addi	a4,a4,793 # c5bbc319 <pulp__FC+0xc5bbc31a>
1c00aaee:	7ae7a4a3          	sw	a4,1961(a5)
1c00aaf2:	11bbe737          	lui	a4,0x11bbe
1c00aaf6:	14470713          	addi	a4,a4,324 # 11bbe144 <__CTOR_LIST__-0xa441ec0>
1c00aafa:	7ae7a6a3          	sw	a4,1965(a5)
1c00aafe:	b7aeb737          	lui	a4,0xb7aeb
1c00ab02:	a8570713          	addi	a4,a4,-1403 # b7aeaa85 <pulp__FC+0xb7aeaa86>
1c00ab06:	7ae7a8a3          	sw	a4,1969(a5)
1c00ab0a:	390bc737          	lui	a4,0x390bc
1c00ab0e:	a5170713          	addi	a4,a4,-1455 # 390bba51 <__l2_shared_end+0x1d0aba51>
1c00ab12:	7ae7aaa3          	sw	a4,1973(a5)
1c00ab16:	336e2737          	lui	a4,0x336e2
1c00ab1a:	42370713          	addi	a4,a4,1059 # 336e2423 <__l2_shared_end+0x176d2423>
1c00ab1e:	7ae7aca3          	sw	a4,1977(a5)
1c00ab22:	f44f1737          	lui	a4,0xf44f1
1c00ab26:	af470713          	addi	a4,a4,-1292 # f44f0af4 <pulp__FC+0xf44f0af5>
1c00ab2a:	7ae7aea3          	sw	a4,1981(a5)
1c00ab2e:	53741737          	lui	a4,0x53741
1c00ab32:	b7870713          	addi	a4,a4,-1160 # 53740b78 <__l2_shared_end+0x37730b78>
1c00ab36:	7ce7a0a3          	sw	a4,1985(a5)
1c00ab3a:	d118a737          	lui	a4,0xd118a
1c00ab3e:	26270713          	addi	a4,a4,610 # d118a262 <pulp__FC+0xd118a263>
1c00ab42:	7ce7a2a3          	sw	a4,1989(a5)
1c00ab46:	724d4737          	lui	a4,0x724d4
1c00ab4a:	76970713          	addi	a4,a4,1897 # 724d4769 <__l2_shared_end+0x564c4769>
1c00ab4e:	7ce7a4a3          	sw	a4,1993(a5)
1c00ab52:	57f7b737          	lui	a4,0x57f7b
1c00ab56:	90870713          	addi	a4,a4,-1784 # 57f7a908 <__l2_shared_end+0x3bf6a908>
1c00ab5a:	7ce7a6a3          	sw	a4,1997(a5)
1c00ab5e:	8a303737          	lui	a4,0x8a303
1c00ab62:	87270713          	addi	a4,a4,-1934 # 8a302872 <pulp__FC+0x8a302873>
1c00ab66:	7ce7a8a3          	sw	a4,2001(a5)
1c00ab6a:	f8d00713          	li	a4,-115
1c00ab6e:	7ce78ba3          	sb	a4,2007(a5)
1c00ab72:	74a20737          	lui	a4,0x74a20
1c00ab76:	32470713          	addi	a4,a4,804 # 74a20324 <__l2_shared_end+0x58a10324>
1c00ab7a:	7ce7ac23          	sw	a4,2008(a5)
1c00ab7e:	cf53d737          	lui	a4,0xcf53d
1c00ab82:	f7770713          	addi	a4,a4,-137 # cf53cf77 <pulp__FC+0xcf53cf78>
1c00ab86:	7ce7ae23          	sw	a4,2012(a5)
1c00ab8a:	47a23737          	lui	a4,0x47a23
1c00ab8e:	3f170713          	addi	a4,a4,1009 # 47a233f1 <__l2_shared_end+0x2ba133f1>
1c00ab92:	7ee7a023          	sw	a4,2016(a5)
1c00ab96:	98b2c737          	lui	a4,0x98b2c
1c00ab9a:	2d570713          	addi	a4,a4,725 # 98b2c2d5 <pulp__FC+0x98b2c2d6>
1c00ab9e:	7ee7a223          	sw	a4,2020(a5)
1c00aba2:	c6ba2737          	lui	a4,0xc6ba2
1c00aba6:	1bf70713          	addi	a4,a4,447 # c6ba21bf <pulp__FC+0xc6ba21c0>
1c00abaa:	7ee7a423          	sw	a4,2024(a5)
1c00abae:	9e644737          	lui	a4,0x9e644
1c00abb2:	4dc70713          	addi	a4,a4,1244 # 9e6444dc <pulp__FC+0x9e6444dd>
1c00abb6:	7ee7a623          	sw	a4,2028(a5)
1c00abba:	f5ceb737          	lui	a4,0xf5ceb
1c00abbe:	f6370713          	addi	a4,a4,-157 # f5ceaf63 <pulp__FC+0xf5ceaf64>
1c00abc2:	7ee7a823          	sw	a4,2032(a5)
1c00abc6:	7aa0d737          	lui	a4,0x7aa0d
1c00abca:	34a70713          	addi	a4,a4,842 # 7aa0d34a <__l2_shared_end+0x5e9fd34a>
1c00abce:	7ee7aa23          	sw	a4,2036(a5)
1c00abd2:	b347e737          	lui	a4,0xb347e
1c00abd6:	47470713          	addi	a4,a4,1140 # b347e474 <pulp__FC+0xb347e475>
1c00abda:	7ee7ac23          	sw	a4,2040(a5)
1c00abde:	6805                	lui	a6,0x1
1c00abe0:	29cab737          	lui	a4,0x29cab
1c00abe4:	ff280e93          	addi	t4,a6,-14 # ff2 <__CTOR_LIST__-0x1bfff012>
1c00abe8:	c6b70713          	addi	a4,a4,-917 # 29caac6b <__l2_shared_end+0xdc9ac6b>
1c00abec:	6685                	lui	a3,0x1
1c00abee:	96be                	add	a3,a3,a5
1c00abf0:	7dd79aa3          	sh	t4,2005(a5)
1c00abf4:	7ee7ae23          	sw	a4,2044(a5)
1c00abf8:	683307b7          	lui	a5,0x68330
1c00abfc:	55e78793          	addi	a5,a5,1374 # 6833055e <__l2_shared_end+0x4c32055e>
1c00ac00:	80f6a023          	sw	a5,-2048(a3) # 800 <__CTOR_LIST__-0x1bfff804>
1c00ac04:	6e1487b7          	lui	a5,0x6e148
1c00ac08:	cef78793          	addi	a5,a5,-785 # 6e147cef <__l2_shared_end+0x52137cef>
1c00ac0c:	80f6a223          	sw	a5,-2044(a3)
1c00ac10:	b3ed37b7          	lui	a5,0xb3ed3
1c00ac14:	81c78793          	addi	a5,a5,-2020 # b3ed281c <pulp__FC+0xb3ed281d>
1c00ac18:	80f6a423          	sw	a5,-2040(a3)
1c00ac1c:	c97737b7          	lui	a5,0xc9773
1c00ac20:	71b78793          	addi	a5,a5,1819 # c977371b <pulp__FC+0xc977371c>
1c00ac24:	80f6a623          	sw	a5,-2036(a3)
1c00ac28:	7dc2a7b7          	lui	a5,0x7dc2a
1c00ac2c:	74178793          	addi	a5,a5,1857 # 7dc2a741 <__l2_shared_end+0x61c1a741>
1c00ac30:	80f6a823          	sw	a5,-2032(a3)
1c00ac34:	7b4367b7          	lui	a5,0x7b436
1c00ac38:	9c578793          	addi	a5,a5,-1595 # 7b4359c5 <__l2_shared_end+0x5f4259c5>
1c00ac3c:	80f6aa23          	sw	a5,-2028(a3)
1c00ac40:	293d07b7          	lui	a5,0x293d0
1c00ac44:	80f78793          	addi	a5,a5,-2033 # 293cf80f <__l2_shared_end+0xd3bf80f>
1c00ac48:	80f6ac23          	sw	a5,-2024(a3)
1c00ac4c:	ef2807b7          	lui	a5,0xef280
1c00ac50:	81078793          	addi	a5,a5,-2032 # ef27f810 <pulp__FC+0xef27f811>
1c00ac54:	80f6ae23          	sw	a5,-2020(a3)
1c00ac58:	267757b7          	lui	a5,0x26775
1c00ac5c:	d2478793          	addi	a5,a5,-732 # 26774d24 <__l2_shared_end+0xa764d24>
1c00ac60:	82f6a023          	sw	a5,-2016(a3)
1c00ac64:	089737b7          	lui	a5,0x8973
1c00ac68:	baf78793          	addi	a5,a5,-1105 # 8972baf <__CTOR_LIST__-0x1368d455>
1c00ac6c:	82f6a223          	sw	a5,-2012(a3)
1c00ac70:	b1cf57b7          	lui	a5,0xb1cf5
1c00ac74:	b6578793          	addi	a5,a5,-1179 # b1cf4b65 <pulp__FC+0xb1cf4b66>
1c00ac78:	82f6a423          	sw	a5,-2008(a3)
1c00ac7c:	4468a7b7          	lui	a5,0x4468a
1c00ac80:	23978793          	addi	a5,a5,569 # 4468a239 <__l2_shared_end+0x2867a239>
1c00ac84:	82f6a623          	sw	a5,-2004(a3)
1c00ac88:	9cb7f7b7          	lui	a5,0x9cb7f
1c00ac8c:	4c678793          	addi	a5,a5,1222 # 9cb7f4c6 <pulp__FC+0x9cb7f4c7>
1c00ac90:	82f6a823          	sw	a5,-2000(a3)
1c00ac94:	7074e7b7          	lui	a5,0x7074e
1c00ac98:	4d978793          	addi	a5,a5,1241 # 7074e4d9 <__l2_shared_end+0x5473e4d9>
1c00ac9c:	82f6aa23          	sw	a5,-1996(a3)
1c00aca0:	9675a7b7          	lui	a5,0x9675a
1c00aca4:	76578793          	addi	a5,a5,1893 # 9675a765 <pulp__FC+0x9675a766>
1c00aca8:	82f6ac23          	sw	a5,-1992(a3)
1c00acac:	6cf927b7          	lui	a5,0x6cf92
1c00acb0:	7b978793          	addi	a5,a5,1977 # 6cf927b9 <__l2_shared_end+0x50f827b9>
1c00acb4:	82f6ae23          	sw	a5,-1988(a3)
1c00acb8:	6772c7b7          	lui	a5,0x6772c
1c00acbc:	cbd78793          	addi	a5,a5,-835 # 6772bcbd <__l2_shared_end+0x4b71bcbd>
1c00acc0:	84f6a023          	sw	a5,-1984(a3)
1c00acc4:	ac32a7b7          	lui	a5,0xac32a
1c00acc8:	eac78793          	addi	a5,a5,-340 # ac329eac <pulp__FC+0xac329ead>
1c00accc:	84f6a223          	sw	a5,-1980(a3)
1c00acd0:	4c6c77b7          	lui	a5,0x4c6c7
1c00acd4:	f3978793          	addi	a5,a5,-199 # 4c6c6f39 <__l2_shared_end+0x306b6f39>
1c00acd8:	84f6a423          	sw	a5,-1976(a3)
1c00acdc:	0aaa47b7          	lui	a5,0xaaa4
1c00ace0:	9e778793          	addi	a5,a5,-1561 # aaa39e7 <__CTOR_LIST__-0x1155c61d>
1c00ace4:	84f6a623          	sw	a5,-1972(a3)
1c00ace8:	accc17b7          	lui	a5,0xaccc1
1c00acec:	fa678793          	addi	a5,a5,-90 # accc0fa6 <pulp__FC+0xaccc0fa7>
1c00acf0:	84f6a823          	sw	a5,-1968(a3)
1c00acf4:	b1da97b7          	lui	a5,0xb1da9
1c00acf8:	e1778793          	addi	a5,a5,-489 # b1da8e17 <pulp__FC+0xb1da8e18>
1c00acfc:	84f6aa23          	sw	a5,-1964(a3)
1c00ad00:	fe8847b7          	lui	a5,0xfe884
1c00ad04:	6e078793          	addi	a5,a5,1760 # fe8846e0 <pulp__FC+0xfe8846e1>
1c00ad08:	84f6ac23          	sw	a5,-1960(a3)
1c00ad0c:	0142a7b7          	lui	a5,0x142a
1c00ad10:	77178793          	addi	a5,a5,1905 # 142a771 <__CTOR_LIST__-0x1abd5893>
1c00ad14:	84f6ae23          	sw	a5,-1956(a3)
1c00ad18:	4bc6a7b7          	lui	a5,0x4bc6a
1c00ad1c:	ba978793          	addi	a5,a5,-1111 # 4bc69ba9 <__l2_shared_end+0x2fc59ba9>
1c00ad20:	86f6a023          	sw	a5,-1952(a3)
1c00ad24:	89cc07b7          	lui	a5,0x89cc0
1c00ad28:	85578793          	addi	a5,a5,-1963 # 89cbf855 <pulp__FC+0x89cbf856>
1c00ad2c:	86f6a223          	sw	a5,-1948(a3)
1c00ad30:	e54517b7          	lui	a5,0xe5451
1c00ad34:	5e178793          	addi	a5,a5,1505 # e54515e1 <pulp__FC+0xe54515e2>
1c00ad38:	86f6a423          	sw	a5,-1944(a3)
1c00ad3c:	86f467b7          	lui	a5,0x86f46
1c00ad40:	a2778793          	addi	a5,a5,-1497 # 86f45a27 <pulp__FC+0x86f45a28>
1c00ad44:	86f6a623          	sw	a5,-1940(a3)
1c00ad48:	7566f7b7          	lui	a5,0x7566f
1c00ad4c:	c2678793          	addi	a5,a5,-986 # 7566ec26 <__l2_shared_end+0x5965ec26>
1c00ad50:	86f6a823          	sw	a5,-1936(a3)
1c00ad54:	7c8ac7b7          	lui	a5,0x7c8ac
1c00ad58:	a2078793          	addi	a5,a5,-1504 # 7c8aba20 <__l2_shared_end+0x6089ba20>
1c00ad5c:	86f6aa23          	sw	a5,-1932(a3)
1c00ad60:	7e30c7b7          	lui	a5,0x7e30c
1c00ad64:	28878793          	addi	a5,a5,648 # 7e30c288 <__l2_shared_end+0x622fc288>
1c00ad68:	86f6ac23          	sw	a5,-1928(a3)
1c00ad6c:	ef5537b7          	lui	a5,0xef553
1c00ad70:	47978793          	addi	a5,a5,1145 # ef553479 <pulp__FC+0xef55347a>
1c00ad74:	86f6ae23          	sw	a5,-1924(a3)
1c00ad78:	e1fa87b7          	lui	a5,0xe1fa8
1c00ad7c:	08778793          	addi	a5,a5,135 # e1fa8087 <pulp__FC+0xe1fa8088>
1c00ad80:	88f6a023          	sw	a5,-1920(a3)
1c00ad84:	59ea17b7          	lui	a5,0x59ea1
1c00ad88:	26478793          	addi	a5,a5,612 # 59ea1264 <__l2_shared_end+0x3de91264>
1c00ad8c:	88f6a223          	sw	a5,-1916(a3)
1c00ad90:	f50627b7          	lui	a5,0xf5062
1c00ad94:	4e978793          	addi	a5,a5,1257 # f50624e9 <pulp__FC+0xf50624ea>
1c00ad98:	88f6a423          	sw	a5,-1912(a3)
1c00ad9c:	c22d97b7          	lui	a5,0xc22d9
1c00ada0:	09578793          	addi	a5,a5,149 # c22d9095 <pulp__FC+0xc22d9096>
1c00ada4:	88f6a623          	sw	a5,-1908(a3)
1c00ada8:	142b67b7          	lui	a5,0x142b6
1c00adac:	11c78793          	addi	a5,a5,284 # 142b611c <__CTOR_LIST__-0x7d49ee8>
1c00adb0:	88f6a823          	sw	a5,-1904(a3)
1c00adb4:	31cf07b7          	lui	a5,0x31cf0
1c00adb8:	12878793          	addi	a5,a5,296 # 31cf0128 <__l2_shared_end+0x15ce0128>
1c00adbc:	88f6aa23          	sw	a5,-1900(a3)
1c00adc0:	5c47c7b7          	lui	a5,0x5c47c
1c00adc4:	0ab78793          	addi	a5,a5,171 # 5c47c0ab <__l2_shared_end+0x4046c0ab>
1c00adc8:	88f6ac23          	sw	a5,-1896(a3)
1c00adcc:	2d77e7b7          	lui	a5,0x2d77e
1c00add0:	e7b78793          	addi	a5,a5,-389 # 2d77de7b <__l2_shared_end+0x1176de7b>
1c00add4:	88f6ae23          	sw	a5,-1892(a3)
1c00add8:	2d5ac7b7          	lui	a5,0x2d5ac
1c00addc:	55178793          	addi	a5,a5,1361 # 2d5ac551 <__l2_shared_end+0x1159c551>
1c00ade0:	8af6a023          	sw	a5,-1888(a3)
1c00ade4:	c51b67b7          	lui	a5,0xc51b6
1c00ade8:	5fc78793          	addi	a5,a5,1532 # c51b65fc <pulp__FC+0xc51b65fd>
1c00adec:	8af6a223          	sw	a5,-1884(a3)
1c00adf0:	024347b7          	lui	a5,0x2434
1c00adf4:	1ab78793          	addi	a5,a5,427 # 24341ab <__CTOR_LIST__-0x19bcbe59>
1c00adf8:	8af6a423          	sw	a5,-1880(a3)
1c00adfc:	4ccc17b7          	lui	a5,0x4ccc1
1c00ae00:	32878793          	addi	a5,a5,808 # 4ccc1328 <__l2_shared_end+0x30cb1328>
1c00ae04:	8af6a623          	sw	a5,-1876(a3)
1c00ae08:	2cf5c7b7          	lui	a5,0x2cf5c
1c00ae0c:	68c78793          	addi	a5,a5,1676 # 2cf5c68c <__l2_shared_end+0x10f4c68c>
1c00ae10:	8af6a823          	sw	a5,-1872(a3)
1c00ae14:	cde327b7          	lui	a5,0xcde32
1c00ae18:	78d78793          	addi	a5,a5,1933 # cde3278d <pulp__FC+0xcde3278e>
1c00ae1c:	8af6aa23          	sw	a5,-1868(a3)
1c00ae20:	9a8457b7          	lui	a5,0x9a845
1c00ae24:	17878793          	addi	a5,a5,376 # 9a845178 <pulp__FC+0x9a845179>
1c00ae28:	8af6ac23          	sw	a5,-1864(a3)
1c00ae2c:	f04347b7          	lui	a5,0xf0434
1c00ae30:	38c78793          	addi	a5,a5,908 # f043438c <pulp__FC+0xf043438d>
1c00ae34:	8af6ae23          	sw	a5,-1860(a3)
1c00ae38:	6c6cf7b7          	lui	a5,0x6c6cf
1c00ae3c:	dc778793          	addi	a5,a5,-569 # 6c6cedc7 <__l2_shared_end+0x506bedc7>
1c00ae40:	8cf6a023          	sw	a5,-1856(a3)
1c00ae44:	c565f7b7          	lui	a5,0xc565f
1c00ae48:	7b978793          	addi	a5,a5,1977 # c565f7b9 <pulp__FC+0xc565f7ba>
1c00ae4c:	8cf6a223          	sw	a5,-1852(a3)
1c00ae50:	bc5587b7          	lui	a5,0xbc558
1c00ae54:	e0478793          	addi	a5,a5,-508 # bc557e04 <pulp__FC+0xbc557e05>
1c00ae58:	8cf6a423          	sw	a5,-1848(a3)
1c00ae5c:	b9d5b7b7          	lui	a5,0xb9d5b
1c00ae60:	23280813          	addi	a6,a6,562
1c00ae64:	a4878793          	addi	a5,a5,-1464 # b9d5aa48 <pulp__FC+0xb9d5aa49>
1c00ae68:	8d069823          	sh	a6,-1840(a3)
1c00ae6c:	8cf6a623          	sw	a5,-1844(a3)
1c00ae70:	f8200793          	li	a5,-126
1c00ae74:	8cf68923          	sb	a5,-1838(a3)
1c00ae78:	3909f7b7          	lui	a5,0x3909f
1c00ae7c:	78778793          	addi	a5,a5,1927 # 3909f787 <__l2_shared_end+0x1d08f787>
1c00ae80:	8cf6a9a3          	sw	a5,-1837(a3)
1c00ae84:	613a77b7          	lui	a5,0x613a7
1c00ae88:	5db78793          	addi	a5,a5,1499 # 613a75db <__l2_shared_end+0x453975db>
1c00ae8c:	8cf6aba3          	sw	a5,-1833(a3)
1c00ae90:	18dbd7b7          	lui	a5,0x18dbd
1c00ae94:	7c078793          	addi	a5,a5,1984 # 18dbd7c0 <__CTOR_LIST__-0x3242844>
1c00ae98:	8cf6ada3          	sw	a5,-1829(a3)
1c00ae9c:	2856c7b7          	lui	a5,0x2856c
1c00aea0:	23078793          	addi	a5,a5,560 # 2856c230 <__l2_shared_end+0xc55c230>
1c00aea4:	8cf6afa3          	sw	a5,-1825(a3)
1c00aea8:	cc8527b7          	lui	a5,0xcc852
1c00aeac:	c8c78793          	addi	a5,a5,-884 # cc851c8c <pulp__FC+0xcc851c8d>
1c00aeb0:	8ef6a1a3          	sw	a5,-1821(a3)
1c00aeb4:	83e5c7b7          	lui	a5,0x83e5c
1c00aeb8:	c9b78793          	addi	a5,a5,-869 # 83e5bc9b <pulp__FC+0x83e5bc9c>
1c00aebc:	8ef6a3a3          	sw	a5,-1817(a3)
1c00aec0:	28c5e7b7          	lui	a5,0x28c5e
1c00aec4:	a6678793          	addi	a5,a5,-1434 # 28c5da66 <__l2_shared_end+0xcc4da66>
1c00aec8:	8ef6a5a3          	sw	a5,-1813(a3)
1c00aecc:	1bd697b7          	lui	a5,0x1bd69
1c00aed0:	3c878793          	addi	a5,a5,968 # 1bd693c8 <__CTOR_LIST__-0x296c3c>
1c00aed4:	8ef6a7a3          	sw	a5,-1809(a3)
1c00aed8:	cb0b87b7          	lui	a5,0xcb0b8
1c00aedc:	56978793          	addi	a5,a5,1385 # cb0b8569 <pulp__FC+0xcb0b856a>
1c00aee0:	8ef6a9a3          	sw	a5,-1805(a3)
1c00aee4:	838e77b7          	lui	a5,0x838e7
1c00aee8:	58278793          	addi	a5,a5,1410 # 838e7582 <pulp__FC+0x838e7583>
1c00aeec:	8ef6aba3          	sw	a5,-1801(a3)
1c00aef0:	f8e137b7          	lui	a5,0xf8e13
1c00aef4:	66978793          	addi	a5,a5,1641 # f8e13669 <pulp__FC+0xf8e1366a>
1c00aef8:	8ef6ada3          	sw	a5,-1797(a3)
1c00aefc:	586147b7          	lui	a5,0x58614
1c00af00:	81678793          	addi	a5,a5,-2026 # 58613816 <__l2_shared_end+0x3c603816>
1c00af04:	8ef6afa3          	sw	a5,-1793(a3)
1c00af08:	d3ca87b7          	lui	a5,0xd3ca8
1c00af0c:	26478793          	addi	a5,a5,612 # d3ca8264 <pulp__FC+0xd3ca8265>
1c00af10:	90f6a1a3          	sw	a5,-1789(a3)
1c00af14:	43b157b7          	lui	a5,0x43b15
1c00af18:	d5b78793          	addi	a5,a5,-677 # 43b14d5b <__l2_shared_end+0x27b04d5b>
1c00af1c:	90f6a3a3          	sw	a5,-1785(a3)
1c00af20:	8069b7b7          	lui	a5,0x8069b
1c00af24:	d7f78793          	addi	a5,a5,-641 # 8069ad7f <pulp__FC+0x8069ad80>
1c00af28:	90f6a5a3          	sw	a5,-1781(a3)
1c00af2c:	b18067b7          	lui	a5,0xb1806
1c00af30:	2b678793          	addi	a5,a5,694 # b18062b6 <pulp__FC+0xb18062b7>
1c00af34:	90f6a7a3          	sw	a5,-1777(a3)
1c00af38:	f57237b7          	lui	a5,0xf5723
1c00af3c:	d6578793          	addi	a5,a5,-667 # f5722d65 <pulp__FC+0xf5722d66>
1c00af40:	90f6a9a3          	sw	a5,-1773(a3)
1c00af44:	9ec287b7          	lui	a5,0x9ec28
1c00af48:	55f78793          	addi	a5,a5,1375 # 9ec2855f <pulp__FC+0x9ec28560>
1c00af4c:	90f6ada3          	sw	a5,-1765(a3)
1c00af50:	8915b7b7          	lui	a5,0x8915b
1c00af54:	27578793          	addi	a5,a5,629 # 8915b275 <pulp__FC+0x8915b276>
1c00af58:	90f6afa3          	sw	a5,-1761(a3)
1c00af5c:	88f5a7b7          	lui	a5,0x88f5a
1c00af60:	43378793          	addi	a5,a5,1075 # 88f5a433 <pulp__FC+0x88f5a434>
1c00af64:	92f6a1a3          	sw	a5,-1757(a3)
1c00af68:	b520b7b7          	lui	a5,0xb520b
1c00af6c:	37d78793          	addi	a5,a5,893 # b520b37d <pulp__FC+0xb520b37e>
1c00af70:	92f6a3a3          	sw	a5,-1753(a3)
1c00af74:	cacbd7b7          	lui	a5,0xcacbd
1c00af78:	d8378793          	addi	a5,a5,-637 # cacbcd83 <pulp__FC+0xcacbcd84>
1c00af7c:	92f6a5a3          	sw	a5,-1749(a3)
1c00af80:	21ac57b7          	lui	a5,0x21ac5
1c00af84:	e2778793          	addi	a5,a5,-473 # 21ac4e27 <__l2_shared_end+0x5ab4e27>
1c00af88:	92f6a7a3          	sw	a5,-1745(a3)
1c00af8c:	792877b7          	lui	a5,0x79287
1c00af90:	0f878793          	addi	a5,a5,248 # 792870f8 <__l2_shared_end+0x5d2770f8>
1c00af94:	92f6a9a3          	sw	a5,-1741(a3)
1c00af98:	fb4ac7b7          	lui	a5,0xfb4ac
1c00af9c:	cb878793          	addi	a5,a5,-840 # fb4abcb8 <pulp__FC+0xfb4abcb9>
1c00afa0:	92f6aba3          	sw	a5,-1737(a3)
1c00afa4:	6d05c7b7          	lui	a5,0x6d05c
1c00afa8:	a6278793          	addi	a5,a5,-1438 # 6d05ba62 <__l2_shared_end+0x5104ba62>
1c00afac:	92f6ada3          	sw	a5,-1733(a3)
1c00afb0:	921267b7          	lui	a5,0x92126
1c00afb4:	51478793          	addi	a5,a5,1300 # 92126514 <pulp__FC+0x92126515>
1c00afb8:	92f6afa3          	sw	a5,-1729(a3)
1c00afbc:	65c757b7          	lui	a5,0x65c75
1c00afc0:	41578793          	addi	a5,a5,1045 # 65c75415 <__l2_shared_end+0x49c65415>
1c00afc4:	94f6a1a3          	sw	a5,-1725(a3)
1c00afc8:	964c57b7          	lui	a5,0x964c5
1c00afcc:	d4678793          	addi	a5,a5,-698 # 964c4d46 <pulp__FC+0x964c4d47>
1c00afd0:	94f6a3a3          	sw	a5,-1721(a3)
1c00afd4:	979a47b7          	lui	a5,0x979a4
1c00afd8:	cbd78793          	addi	a5,a5,-835 # 979a3cbd <pulp__FC+0x979a3cbe>
1c00afdc:	94f6a5a3          	sw	a5,-1717(a3)
1c00afe0:	337c27b7          	lui	a5,0x337c2
1c00afe4:	82078793          	addi	a5,a5,-2016 # 337c1820 <__l2_shared_end+0x177b1820>
1c00afe8:	94f6a7a3          	sw	a5,-1713(a3)
1c00afec:	72450513          	addi	a0,a0,1828
1c00aff0:	3b59d7b7          	lui	a5,0x3b59d
1c00aff4:	90a6aba3          	sw	a0,-1769(a3)
1c00aff8:	03978793          	addi	a5,a5,57 # 3b59d039 <__l2_shared_end+0x1f58d039>
1c00affc:	94f6a9a3          	sw	a5,-1709(a3)
1c00b000:	91a5c7b7          	lui	a5,0x91a5c
1c00b004:	bc478793          	addi	a5,a5,-1084 # 91a5bbc4 <pulp__FC+0x91a5bbc5>
1c00b008:	94f6aba3          	sw	a5,-1705(a3)
1c00b00c:	f69f47b7          	lui	a5,0xf69f4
1c00b010:	65578793          	addi	a5,a5,1621 # f69f4655 <pulp__FC+0xf69f4656>
1c00b014:	94f6ada3          	sw	a5,-1701(a3)
1c00b018:	5f8a77b7          	lui	a5,0x5f8a7
1c00b01c:	8b878793          	addi	a5,a5,-1864 # 5f8a68b8 <__l2_shared_end+0x438968b8>
1c00b020:	94f6afa3          	sw	a5,-1697(a3)
1c00b024:	466c07b7          	lui	a5,0x466c0
1c00b028:	ac578793          	addi	a5,a5,-1339 # 466bfac5 <__l2_shared_end+0x2a6afac5>
1c00b02c:	96f6a1a3          	sw	a5,-1693(a3)
1c00b030:	680607b7          	lui	a5,0x68060
1c00b034:	7d478793          	addi	a5,a5,2004 # 680607d4 <__l2_shared_end+0x4c0507d4>
1c00b038:	96f6a3a3          	sw	a5,-1689(a3)
1c00b03c:	5f8c17b7          	lui	a5,0x5f8c1
1c00b040:	6bd78793          	addi	a5,a5,1725 # 5f8c16bd <__l2_shared_end+0x438b16bd>
1c00b044:	96f6a5a3          	sw	a5,-1685(a3)
1c00b048:	769267b7          	lui	a5,0x76926
1c00b04c:	47978793          	addi	a5,a5,1145 # 76926479 <__l2_shared_end+0x5a916479>
1c00b050:	96f6a7a3          	sw	a5,-1681(a3)
1c00b054:	999947b7          	lui	a5,0x99994
1c00b058:	07a5                	addi	a5,a5,9
1c00b05a:	96f6a9a3          	sw	a5,-1677(a3)
1c00b05e:	368267b7          	lui	a5,0x36826
1c00b062:	22778793          	addi	a5,a5,551 # 36826227 <__l2_shared_end+0x1a816227>
1c00b066:	96f6aba3          	sw	a5,-1673(a3)
1c00b06a:	682947b7          	lui	a5,0x68294
1c00b06e:	1b278793          	addi	a5,a5,434 # 682941b2 <__l2_shared_end+0x4c2841b2>
1c00b072:	96f6ada3          	sw	a5,-1669(a3)
1c00b076:	bc2c97b7          	lui	a5,0xbc2c9
1c00b07a:	d4378793          	addi	a5,a5,-701 # bc2c8d43 <pulp__FC+0xbc2c8d44>
1c00b07e:	96f6afa3          	sw	a5,-1665(a3)
1c00b082:	bc8a97b7          	lui	a5,0xbc8a9
1c00b086:	72a78793          	addi	a5,a5,1834 # bc8a972a <pulp__FC+0xbc8a972b>
1c00b08a:	98f6a1a3          	sw	a5,-1661(a3)
1c00b08e:	292077b7          	lui	a5,0x29207
1c00b092:	30978793          	addi	a5,a5,777 # 29207309 <__l2_shared_end+0xd1f7309>
1c00b096:	98f6a3a3          	sw	a5,-1657(a3)
1c00b09a:	e4d717b7          	lui	a5,0xe4d71
1c00b09e:	e1b78793          	addi	a5,a5,-485 # e4d70e1b <pulp__FC+0xe4d70e1c>
1c00b0a2:	98f6a5a3          	sw	a5,-1653(a3)
1c00b0a6:	bbc927b7          	lui	a5,0xbbc92
1c00b0aa:	e6378793          	addi	a5,a5,-413 # bbc91e63 <pulp__FC+0xbbc91e64>
1c00b0ae:	98f6a7a3          	sw	a5,-1649(a3)
1c00b0b2:	3ac697b7          	lui	a5,0x3ac69
1c00b0b6:	ae278793          	addi	a5,a5,-1310 # 3ac68ae2 <__l2_shared_end+0x1ec58ae2>
1c00b0ba:	98f6a9a3          	sw	a5,-1645(a3)
1c00b0be:	970e87b7          	lui	a5,0x970e8
1c00b0c2:	6b678793          	addi	a5,a5,1718 # 970e86b6 <pulp__FC+0x970e86b7>
1c00b0c6:	98f6aba3          	sw	a5,-1641(a3)
1c00b0ca:	2a55c7b7          	lui	a5,0x2a55c
1c00b0ce:	16a78793          	addi	a5,a5,362 # 2a55c16a <__l2_shared_end+0xe54c16a>
1c00b0d2:	98f6ada3          	sw	a5,-1637(a3)
1c00b0d6:	7d8947b7          	lui	a5,0x7d894
1c00b0da:	3fc78793          	addi	a5,a5,1020 # 7d8943fc <__l2_shared_end+0x618843fc>
1c00b0de:	98f6afa3          	sw	a5,-1633(a3)
1c00b0e2:	92a037b7          	lui	a5,0x92a03
1c00b0e6:	76978793          	addi	a5,a5,1897 # 92a03769 <pulp__FC+0x92a0376a>
1c00b0ea:	9af6a1a3          	sw	a5,-1629(a3)
1c00b0ee:	81c437b7          	lui	a5,0x81c43
1c00b0f2:	d4378793          	addi	a5,a5,-701 # 81c42d43 <pulp__FC+0x81c42d44>
1c00b0f6:	9af6a3a3          	sw	a5,-1625(a3)
1c00b0fa:	a1c317b7          	lui	a5,0xa1c31
1c00b0fe:	4a978793          	addi	a5,a5,1193 # a1c314a9 <pulp__FC+0xa1c314aa>
1c00b102:	9af6a5a3          	sw	a5,-1621(a3)
1c00b106:	004347b7          	lui	a5,0x434
1c00b10a:	c2778793          	addi	a5,a5,-985 # 433c27 <__CTOR_LIST__-0x1bbcc3dd>
1c00b10e:	9af6a7a3          	sw	a5,-1617(a3)
1c00b112:	23c597b7          	lui	a5,0x23c59
1c00b116:	e9e78793          	addi	a5,a5,-354 # 23c58e9e <__l2_shared_end+0x7c48e9e>
1c00b11a:	9af6a9a3          	sw	a5,-1613(a3)
1c00b11e:	d9ce97b7          	lui	a5,0xd9ce9
1c00b122:	3cb78793          	addi	a5,a5,971 # d9ce93cb <pulp__FC+0xd9ce93cc>
1c00b126:	9af6aba3          	sw	a5,-1609(a3)
1c00b12a:	909097b7          	lui	a5,0x90909
1c00b12e:	f8978793          	addi	a5,a5,-119 # 90908f89 <pulp__FC+0x90908f8a>
1c00b132:	9af6ada3          	sw	a5,-1605(a3)
1c00b136:	6eba47b7          	lui	a5,0x6eba4
1c00b13a:	05378793          	addi	a5,a5,83 # 6eba4053 <__l2_shared_end+0x52b94053>
1c00b13e:	9af6afa3          	sw	a5,-1601(a3)
1c00b142:	2d57c7b7          	lui	a5,0x2d57c
1c00b146:	c0178793          	addi	a5,a5,-1023 # 2d57bc01 <__l2_shared_end+0x1156bc01>
1c00b14a:	9cf6a1a3          	sw	a5,-1597(a3)
1c00b14e:	fa93b7b7          	lui	a5,0xfa93b
1c00b152:	80378793          	addi	a5,a5,-2045 # fa93a803 <pulp__FC+0xfa93a804>
1c00b156:	9cf6a3a3          	sw	a5,-1593(a3)
1c00b15a:	77f1                	lui	a5,0xffffc
1c00b15c:	42178793          	addi	a5,a5,1057 # ffffc421 <pulp__FC+0xffffc422>
1c00b160:	9cf695a3          	sh	a5,-1589(a3)
1c00b164:	03400793          	li	a5,52
1c00b168:	9cf686a3          	sb	a5,-1587(a3)
1c00b16c:	3edc97b7          	lui	a5,0x3edc9
1c00b170:	82d78793          	addi	a5,a5,-2003 # 3edc882d <__l2_shared_end+0x22db882d>
1c00b174:	9cf6a723          	sw	a5,-1586(a3)
1c00b178:	1f3bb7b7          	lui	a5,0x1f3bb
1c00b17c:	37778793          	addi	a5,a5,887 # 1f3bb377 <__l2_shared_end+0x33ab377>
1c00b180:	9cf6a923          	sw	a5,-1582(a3)
1c00b184:	dbdc67b7          	lui	a5,0xdbdc6
1c00b188:	3c078793          	addi	a5,a5,960 # dbdc63c0 <pulp__FC+0xdbdc63c1>
1c00b18c:	9cf6ab23          	sw	a5,-1578(a3)
1c00b190:	4f8ca7b7          	lui	a5,0x4f8ca
1c00b194:	d6878793          	addi	a5,a5,-664 # 4f8c9d68 <__l2_shared_end+0x338b9d68>
1c00b198:	9cf6ad23          	sw	a5,-1574(a3)
1c00b19c:	e80c87b7          	lui	a5,0xe80c8
1c00b1a0:	4fc78793          	addi	a5,a5,1276 # e80c84fc <pulp__FC+0xe80c84fd>
1c00b1a4:	9cf6af23          	sw	a5,-1570(a3)
1c00b1a8:	47b3d7b7          	lui	a5,0x47b3d
1c00b1ac:	f7978793          	addi	a5,a5,-135 # 47b3cf79 <__l2_shared_end+0x2bb2cf79>
1c00b1b0:	9ef6a123          	sw	a5,-1566(a3)
1c00b1b4:	2c5187b7          	lui	a5,0x2c518
1c00b1b8:	51378793          	addi	a5,a5,1299 # 2c518513 <__l2_shared_end+0x10508513>
1c00b1bc:	9ef6a323          	sw	a5,-1562(a3)
1c00b1c0:	1359c7b7          	lui	a5,0x1359c
1c00b1c4:	7c778793          	addi	a5,a5,1991 # 1359c7c7 <__CTOR_LIST__-0x8a6383d>
1c00b1c8:	9ef6a523          	sw	a5,-1558(a3)
1c00b1cc:	c8fab7b7          	lui	a5,0xc8fab
1c00b1d0:	18378793          	addi	a5,a5,387 # c8fab183 <pulp__FC+0xc8fab184>
1c00b1d4:	9ef6a723          	sw	a5,-1554(a3)
1c00b1d8:	1cbb37b7          	lui	a5,0x1cbb3
1c00b1dc:	29878793          	addi	a5,a5,664 # 1cbb3298 <__l2_shared_end+0xba3298>
1c00b1e0:	9ef6a923          	sw	a5,-1550(a3)
1c00b1e4:	6d4e37b7          	lui	a5,0x6d4e3
1c00b1e8:	2b378793          	addi	a5,a5,691 # 6d4e32b3 <__l2_shared_end+0x514d32b3>
1c00b1ec:	9ef6ab23          	sw	a5,-1546(a3)
1c00b1f0:	889177b7          	lui	a5,0x88917
1c00b1f4:	82878793          	addi	a5,a5,-2008 # 88916828 <pulp__FC+0x88916829>
1c00b1f8:	9ef6ad23          	sw	a5,-1542(a3)
1c00b1fc:	ca20d7b7          	lui	a5,0xca20d
1c00b200:	b4478793          	addi	a5,a5,-1212 # ca20cb44 <pulp__FC+0xca20cb45>
1c00b204:	9ef6af23          	sw	a5,-1538(a3)
1c00b208:	b41307b7          	lui	a5,0xb4130
1c00b20c:	84d78793          	addi	a5,a5,-1971 # b412f84d <pulp__FC+0xb412f84e>
1c00b210:	a0f6a123          	sw	a5,-1534(a3)
1c00b214:	2a1927b7          	lui	a5,0x2a192
1c00b218:	42878793          	addi	a5,a5,1064 # 2a192428 <__l2_shared_end+0xe182428>
1c00b21c:	a0f6a323          	sw	a5,-1530(a3)
1c00b220:	300447b7          	lui	a5,0x30044
1c00b224:	84378793          	addi	a5,a5,-1981 # 30043843 <__l2_shared_end+0x14033843>
1c00b228:	a0f6a523          	sw	a5,-1526(a3)
1c00b22c:	3a7f87b7          	lui	a5,0x3a7f8
1c00b230:	aa378793          	addi	a5,a5,-1373 # 3a7f7aa3 <__l2_shared_end+0x1e7e7aa3>
1c00b234:	a0f6a723          	sw	a5,-1522(a3)
1c00b238:	64d027b7          	lui	a5,0x64d02
1c00b23c:	ec478793          	addi	a5,a5,-316 # 64d01ec4 <__l2_shared_end+0x48cf1ec4>
1c00b240:	a0f6a923          	sw	a5,-1518(a3)
1c00b244:	1555e7b7          	lui	a5,0x1555e
1c00b248:	0cf78793          	addi	a5,a5,207 # 1555e0cf <__CTOR_LIST__-0x6aa1f35>
1c00b24c:	a0f6ab23          	sw	a5,-1514(a3)
1c00b250:	c0b597b7          	lui	a5,0xc0b59
1c00b254:	17b78793          	addi	a5,a5,379 # c0b5917b <pulp__FC+0xc0b5917c>
1c00b258:	a0f6ad23          	sw	a5,-1510(a3)
1c00b25c:	a6b797b7          	lui	a5,0xa6b79
1c00b260:	f1078793          	addi	a5,a5,-240 # a6b78f10 <pulp__FC+0xa6b78f11>
1c00b264:	a0f6af23          	sw	a5,-1506(a3)
1c00b268:	2a11a7b7          	lui	a5,0x2a11a
1c00b26c:	07cd                	addi	a5,a5,19
1c00b26e:	a2f6a123          	sw	a5,-1502(a3)
1c00b272:	484ed7b7          	lui	a5,0x484ed
1c00b276:	6f478793          	addi	a5,a5,1780 # 484ed6f4 <__l2_shared_end+0x2c4dd6f4>
1c00b27a:	a2f6a323          	sw	a5,-1498(a3)
1c00b27e:	3245a7b7          	lui	a5,0x3245a
1c00b282:	3f878793          	addi	a5,a5,1016 # 3245a3f8 <__l2_shared_end+0x1644a3f8>
1c00b286:	a2f6a523          	sw	a5,-1494(a3)
1c00b28a:	bfb7a7b7          	lui	a5,0xbfb7a
1c00b28e:	98a78793          	addi	a5,a5,-1654 # bfb7998a <pulp__FC+0xbfb7998b>
1c00b292:	a2f6a723          	sw	a5,-1490(a3)
1c00b296:	03cb97b7          	lui	a5,0x3cb9
1c00b29a:	10c78793          	addi	a5,a5,268 # 3cb910c <__CTOR_LIST__-0x18346ef8>
1c00b29e:	a2f6a923          	sw	a5,-1486(a3)
1c00b2a2:	17b017b7          	lui	a5,0x17b01
1c00b2a6:	57278793          	addi	a5,a5,1394 # 17b01572 <__CTOR_LIST__-0x44fea92>
1c00b2aa:	a2f6ab23          	sw	a5,-1482(a3)
1c00b2ae:	63c2d7b7          	lui	a5,0x63c2d
1c00b2b2:	47a78793          	addi	a5,a5,1146 # 63c2d47a <__l2_shared_end+0x47c1d47a>
1c00b2b6:	a2f6ad23          	sw	a5,-1478(a3)
1c00b2ba:	598fd7b7          	lui	a5,0x598fd
1c00b2be:	7e678793          	addi	a5,a5,2022 # 598fd7e6 <__l2_shared_end+0x3d8ed7e6>
1c00b2c2:	a2f6af23          	sw	a5,-1474(a3)
1c00b2c6:	1548d7b7          	lui	a5,0x1548d
1c00b2ca:	85878793          	addi	a5,a5,-1960 # 1548c858 <__CTOR_LIST__-0x6b737ac>
1c00b2ce:	a4f6a123          	sw	a5,-1470(a3)
1c00b2d2:	11d257b7          	lui	a5,0x11d25
1c00b2d6:	f8e78793          	addi	a5,a5,-114 # 11d24f8e <__CTOR_LIST__-0xa2db076>
1c00b2da:	a4f6a323          	sw	a5,-1466(a3)
1c00b2de:	0c8e27b7          	lui	a5,0xc8e2
1c00b2e2:	47c78793          	addi	a5,a5,1148 # c8e247c <__CTOR_LIST__-0xf71db88>
1c00b2e6:	a4f6a523          	sw	a5,-1462(a3)
1c00b2ea:	8cf947b7          	lui	a5,0x8cf94
1c00b2ee:	cab78793          	addi	a5,a5,-853 # 8cf93cab <pulp__FC+0x8cf93cac>
1c00b2f2:	a4f6a723          	sw	a5,-1458(a3)
1c00b2f6:	888627b7          	lui	a5,0x88862
1c00b2fa:	71e78793          	addi	a5,a5,1822 # 8886271e <pulp__FC+0x8886271f>
1c00b2fe:	a4f6a923          	sw	a5,-1454(a3)
1c00b302:	8b4307b7          	lui	a5,0x8b430
1c00b306:	83878793          	addi	a5,a5,-1992 # 8b42f838 <pulp__FC+0x8b42f839>
1c00b30a:	a4f6ab23          	sw	a5,-1450(a3)
1c00b30e:	f62d57b7          	lui	a5,0xf62d5
1c00b312:	6a078793          	addi	a5,a5,1696 # f62d56a0 <pulp__FC+0xf62d56a1>
1c00b316:	a4f6ad23          	sw	a5,-1446(a3)
1c00b31a:	368727b7          	lui	a5,0x36872
1c00b31e:	eb678793          	addi	a5,a5,-330 # 36871eb6 <__l2_shared_end+0x1a861eb6>
1c00b322:	a4f6af23          	sw	a5,-1442(a3)
1c00b326:	66b2c7b7          	lui	a5,0x66b2c
1c00b32a:	8e278793          	addi	a5,a5,-1822 # 66b2b8e2 <__l2_shared_end+0x4ab1b8e2>
1c00b32e:	a6f6a123          	sw	a5,-1438(a3)
1c00b332:	e01887b7          	lui	a5,0xe0188
1c00b336:	96078793          	addi	a5,a5,-1696 # e0187960 <pulp__FC+0xe0187961>
1c00b33a:	a6f6a323          	sw	a5,-1434(a3)
1c00b33e:	afe337b7          	lui	a5,0xafe33
1c00b342:	cce78793          	addi	a5,a5,-818 # afe32cce <pulp__FC+0xafe32ccf>
1c00b346:	a6f6a523          	sw	a5,-1430(a3)
1c00b34a:	a51fd7b7          	lui	a5,0xa51fd
1c00b34e:	86778793          	addi	a5,a5,-1945 # a51fc867 <pulp__FC+0xa51fc868>
1c00b352:	a6f6a723          	sw	a5,-1426(a3)
1c00b356:	bcd2a7b7          	lui	a5,0xbcd2a
1c00b35a:	4c278793          	addi	a5,a5,1218 # bcd2a4c2 <pulp__FC+0xbcd2a4c3>
1c00b35e:	a6f6a923          	sw	a5,-1422(a3)
1c00b362:	251887b7          	lui	a5,0x25188
1c00b366:	78e78793          	addi	a5,a5,1934 # 2518878e <__l2_shared_end+0x917878e>
1c00b36a:	a6f6ab23          	sw	a5,-1418(a3)
1c00b36e:	beb307b7          	lui	a5,0xbeb30
1c00b372:	2b778793          	addi	a5,a5,695 # beb302b7 <pulp__FC+0xbeb302b8>
1c00b376:	a6f6ad23          	sw	a5,-1414(a3)
1c00b37a:	337b47b7          	lui	a5,0x337b4
1c00b37e:	9ca78793          	addi	a5,a5,-1590 # 337b39ca <__l2_shared_end+0x177a39ca>
1c00b382:	a6f6af23          	sw	a5,-1410(a3)
1c00b386:	c8da27b7          	lui	a5,0xc8da2
1c00b38a:	8a578793          	addi	a5,a5,-1883 # c8da18a5 <pulp__FC+0xc8da18a6>
1c00b38e:	a8f6a123          	sw	a5,-1406(a3)
1c00b392:	493d47b7          	lui	a5,0x493d4
1c00b396:	9b178793          	addi	a5,a5,-1615 # 493d39b1 <__l2_shared_end+0x2d3c39b1>
1c00b39a:	a8f6a323          	sw	a5,-1402(a3)
1c00b39e:	0c9097b7          	lui	a5,0xc909
1c00b3a2:	04a78793          	addi	a5,a5,74 # c90904a <__CTOR_LIST__-0xf6f6fba>
1c00b3a6:	a8f6a523          	sw	a5,-1398(a3)
1c00b3aa:	2559b7b7          	lui	a5,0x2559b
1c00b3ae:	50178793          	addi	a5,a5,1281 # 2559b501 <__l2_shared_end+0x958b501>
1c00b3b2:	a8f6a723          	sw	a5,-1394(a3)
1c00b3b6:	80bf87b7          	lui	a5,0x80bf8
1c00b3ba:	c8578793          	addi	a5,a5,-891 # 80bf7c85 <pulp__FC+0x80bf7c86>
1c00b3be:	a8f6a923          	sw	a5,-1390(a3)
1c00b3c2:	361d07b7          	lui	a5,0x361d0
1c00b3c6:	52778793          	addi	a5,a5,1319 # 361d0527 <__l2_shared_end+0x1a1c0527>
1c00b3ca:	a8f6ab23          	sw	a5,-1386(a3)
1c00b3ce:	a441f7b7          	lui	a5,0xa441f
1c00b3d2:	1a478793          	addi	a5,a5,420 # a441f1a4 <pulp__FC+0xa441f1a5>
1c00b3d6:	a8f6ad23          	sw	a5,-1382(a3)
1c00b3da:	0344e7b7          	lui	a5,0x344e
1c00b3de:	cd278793          	addi	a5,a5,-814 # 344dcd2 <__CTOR_LIST__-0x18bb2332>
1c00b3e2:	a8f6af23          	sw	a5,-1378(a3)
1c00b3e6:	035e37b7          	lui	a5,0x35e3
1c00b3ea:	04178793          	addi	a5,a5,65 # 35e3041 <__CTOR_LIST__-0x18a1cfc3>
1c00b3ee:	aaf6a123          	sw	a5,-1374(a3)
1c00b3f2:	070ab7b7          	lui	a5,0x70ab
1c00b3f6:	53c78793          	addi	a5,a5,1340 # 70ab53c <__CTOR_LIST__-0x14f54ac8>
1c00b3fa:	aaf6a323          	sw	a5,-1370(a3)
1c00b3fe:	c759e7b7          	lui	a5,0xc759e
1c00b402:	44b78793          	addi	a5,a5,1099 # c759e44b <pulp__FC+0xc759e44c>
1c00b406:	aaf6a523          	sw	a5,-1366(a3)
1c00b40a:	9a9a37b7          	lui	a5,0x9a9a3
1c00b40e:	36a78793          	addi	a5,a5,874 # 9a9a336a <pulp__FC+0x9a9a336b>
1c00b412:	aaf6a723          	sw	a5,-1362(a3)
1c00b416:	3647c7b7          	lui	a5,0x3647c
1c00b41a:	45278793          	addi	a5,a5,1106 # 3647c452 <__l2_shared_end+0x1a46c452>
1c00b41e:	aaf6a923          	sw	a5,-1358(a3)
1c00b422:	562af7b7          	lui	a5,0x562af
1c00b426:	a0d78793          	addi	a5,a5,-1523 # 562aea0d <__l2_shared_end+0x3a29ea0d>
1c00b42a:	aaf6ab23          	sw	a5,-1354(a3)
1c00b42e:	68ead7b7          	lui	a5,0x68ead
1c00b432:	c9978793          	addi	a5,a5,-871 # 68eacc99 <__l2_shared_end+0x4ce9cc99>
1c00b436:	aaf6ad23          	sw	a5,-1350(a3)
1c00b43a:	0a4347b7          	lui	a5,0xa434
1c00b43e:	23a78793          	addi	a5,a5,570 # a43423a <__CTOR_LIST__-0x11bcbdca>
1c00b442:	aaf6af23          	sw	a5,-1346(a3)
1c00b446:	459607b7          	lui	a5,0x45960
1c00b44a:	ca678793          	addi	a5,a5,-858 # 4595fca6 <__l2_shared_end+0x2994fca6>
1c00b44e:	acf6a123          	sw	a5,-1342(a3)
1c00b452:	6799                	lui	a5,0x6
1c00b454:	cc778793          	addi	a5,a5,-825 # 5cc7 <__CTOR_LIST__-0x1bffa33d>
1c00b458:	acf69323          	sh	a5,-1338(a3)
1c00b45c:	4791                	li	a5,4
1c00b45e:	acf68423          	sb	a5,-1336(a3)
1c00b462:	f71a67b7          	lui	a5,0xf71a6
1c00b466:	49278793          	addi	a5,a5,1170 # f71a6492 <pulp__FC+0xf71a6493>
1c00b46a:	acf6a4a3          	sw	a5,-1335(a3)
1c00b46e:	7b26f7b7          	lui	a5,0x7b26f
1c00b472:	9a478793          	addi	a5,a5,-1628 # 7b26e9a4 <__l2_shared_end+0x5f25e9a4>
1c00b476:	acf6a6a3          	sw	a5,-1331(a3)
1c00b47a:	554e47b7          	lui	a5,0x554e4
1c00b47e:	8cc78793          	addi	a5,a5,-1844 # 554e38cc <__l2_shared_end+0x394d38cc>
1c00b482:	acf6a8a3          	sw	a5,-1327(a3)
1c00b486:	97f457b7          	lui	a5,0x97f45
1c00b48a:	c7178793          	addi	a5,a5,-911 # 97f44c71 <pulp__FC+0x97f44c72>
1c00b48e:	acf6aaa3          	sw	a5,-1323(a3)
1c00b492:	b6a3f7b7          	lui	a5,0xb6a3f
1c00b496:	b4178793          	addi	a5,a5,-1215 # b6a3eb41 <pulp__FC+0xb6a3eb42>
1c00b49a:	acf6aca3          	sw	a5,-1319(a3)
1c00b49e:	a51767b7          	lui	a5,0xa5176
1c00b4a2:	49d78793          	addi	a5,a5,1181 # a517649d <pulp__FC+0xa517649e>
1c00b4a6:	acf6aea3          	sw	a5,-1315(a3)
1c00b4aa:	3c5d47b7          	lui	a5,0x3c5d4
1c00b4ae:	75578793          	addi	a5,a5,1877 # 3c5d4755 <__l2_shared_end+0x205c4755>
1c00b4b2:	aef6a0a3          	sw	a5,-1311(a3)
1c00b4b6:	b81217b7          	lui	a5,0xb8121
1c00b4ba:	10278793          	addi	a5,a5,258 # b8121102 <pulp__FC+0xb8121103>
1c00b4be:	aef6a2a3          	sw	a5,-1307(a3)
1c00b4c2:	638c67b7          	lui	a5,0x638c6
1c00b4c6:	8b378793          	addi	a5,a5,-1869 # 638c58b3 <__l2_shared_end+0x478b58b3>
1c00b4ca:	aef6a4a3          	sw	a5,-1303(a3)
1c00b4ce:	e25c87b7          	lui	a5,0xe25c8
1c00b4d2:	b7478793          	addi	a5,a5,-1164 # e25c7b74 <pulp__FC+0xe25c7b75>
1c00b4d6:	aef6a6a3          	sw	a5,-1299(a3)
1c00b4da:	12ea07b7          	lui	a5,0x12ea0
1c00b4de:	ecc78793          	addi	a5,a5,-308 # 12e9fecc <__CTOR_LIST__-0x9160138>
1c00b4e2:	aef6a8a3          	sw	a5,-1295(a3)
1c00b4e6:	9f4207b7          	lui	a5,0x9f420
1c00b4ea:	a9778793          	addi	a5,a5,-1385 # 9f41fa97 <pulp__FC+0x9f41fa98>
1c00b4ee:	aef6aaa3          	sw	a5,-1291(a3)
1c00b4f2:	979847b7          	lui	a5,0x97984
1c00b4f6:	29c78793          	addi	a5,a5,668 # 9798429c <pulp__FC+0x9798429d>
1c00b4fa:	aef6aca3          	sw	a5,-1287(a3)
1c00b4fe:	700907b7          	lui	a5,0x70090
1c00b502:	f8f78793          	addi	a5,a5,-113 # 7008ff8f <__l2_shared_end+0x5407ff8f>
1c00b506:	aef6aea3          	sw	a5,-1283(a3)
1c00b50a:	b455b7b7          	lui	a5,0xb455b
1c00b50e:	8d878793          	addi	a5,a5,-1832 # b455a8d8 <pulp__FC+0xb455a8d9>
1c00b512:	b0f6a0a3          	sw	a5,-1279(a3)
1c00b516:	9bcaa7b7          	lui	a5,0x9bcaa
1c00b51a:	98878793          	addi	a5,a5,-1656 # 9bca9988 <pulp__FC+0x9bca9989>
1c00b51e:	b0f6a2a3          	sw	a5,-1275(a3)
1c00b522:	6d8387b7          	lui	a5,0x6d838
1c00b526:	db478793          	addi	a5,a5,-588 # 6d837db4 <__l2_shared_end+0x51827db4>
1c00b52a:	b0f6a4a3          	sw	a5,-1271(a3)
1c00b52e:	8c03d7b7          	lui	a5,0x8c03d
1c00b532:	26278793          	addi	a5,a5,610 # 8c03d262 <pulp__FC+0x8c03d263>
1c00b536:	b0f6a6a3          	sw	a5,-1267(a3)
1c00b53a:	3a6f87b7          	lui	a5,0x3a6f8
1c00b53e:	1c378793          	addi	a5,a5,451 # 3a6f81c3 <__l2_shared_end+0x1e6e81c3>
1c00b542:	b0f6a8a3          	sw	a5,-1263(a3)
1c00b546:	bbb397b7          	lui	a5,0xbbb39
1c00b54a:	b6978793          	addi	a5,a5,-1175 # bbb38b69 <pulp__FC+0xbbb38b6a>
1c00b54e:	b0f6aaa3          	sw	a5,-1259(a3)
1c00b552:	a0c787b7          	lui	a5,0xa0c78
1c00b556:	8ff78793          	addi	a5,a5,-1793 # a0c778ff <pulp__FC+0xa0c77900>
1c00b55a:	b0f6aca3          	sw	a5,-1255(a3)
1c00b55e:	19eab7b7          	lui	a5,0x19eab
1c00b562:	07d5                	addi	a5,a5,21
1c00b564:	b0f6aea3          	sw	a5,-1251(a3)
1c00b568:	924267b7          	lui	a5,0x92426
1c00b56c:	36078793          	addi	a5,a5,864 # 92426360 <pulp__FC+0x92426361>
1c00b570:	b2f6a0a3          	sw	a5,-1247(a3)
1c00b574:	030bd7b7          	lui	a5,0x30bd
1c00b578:	5e178793          	addi	a5,a5,1505 # 30bd5e1 <__CTOR_LIST__-0x18f42a23>
1c00b57c:	b2f6a2a3          	sw	a5,-1243(a3)
1c00b580:	983a07b7          	lui	a5,0x983a0
1c00b584:	4e178793          	addi	a5,a5,1249 # 983a04e1 <pulp__FC+0x983a04e2>
1c00b588:	b2f6a4a3          	sw	a5,-1239(a3)
1c00b58c:	0627a7b7          	lui	a5,0x627a
1c00b590:	bca78793          	addi	a5,a5,-1078 # 6279bca <__CTOR_LIST__-0x15d8643a>
1c00b594:	b2f6a6a3          	sw	a5,-1235(a3)
1c00b598:	058b67b7          	lui	a5,0x58b6
1c00b59c:	63e78793          	addi	a5,a5,1598 # 58b663e <__CTOR_LIST__-0x167499c6>
1c00b5a0:	b2f6a8a3          	sw	a5,-1231(a3)
1c00b5a4:	697dc7b7          	lui	a5,0x697dc
1c00b5a8:	1e278793          	addi	a5,a5,482 # 697dc1e2 <__l2_shared_end+0x4d7cc1e2>
1c00b5ac:	b2f6aaa3          	sw	a5,-1227(a3)
1c00b5b0:	182b47b7          	lui	a5,0x182b4
1c00b5b4:	82d78793          	addi	a5,a5,-2003 # 182b382d <__CTOR_LIST__-0x3d4c7d7>
1c00b5b8:	b2f6aca3          	sw	a5,-1223(a3)
1c00b5bc:	18a867b7          	lui	a5,0x18a86
1c00b5c0:	51378793          	addi	a5,a5,1299 # 18a86513 <__CTOR_LIST__-0x3579af1>
1c00b5c4:	b2f6aea3          	sw	a5,-1219(a3)
1c00b5c8:	47c797b7          	lui	a5,0x47c79
1c00b5cc:	e5178793          	addi	a5,a5,-431 # 47c78e51 <__l2_shared_end+0x2bc68e51>
1c00b5d0:	b4f6a0a3          	sw	a5,-1215(a3)
1c00b5d4:	ca3707b7          	lui	a5,0xca370
1c00b5d8:	37278793          	addi	a5,a5,882 # ca370372 <pulp__FC+0xca370373>
1c00b5dc:	73038737          	lui	a4,0x73038
1c00b5e0:	b4f6a2a3          	sw	a5,-1211(a3)
1c00b5e4:	7b170713          	addi	a4,a4,1969 # 730387b1 <__l2_shared_end+0x570287b1>
1c00b5e8:	6a5977b7          	lui	a5,0x6a597
1c00b5ec:	b4e6a8a3          	sw	a4,-1199(a3)
1c00b5f0:	81878793          	addi	a5,a5,-2024 # 6a596818 <__l2_shared_end+0x4e586818>
1c00b5f4:	6d8f5737          	lui	a4,0x6d8f5
1c00b5f8:	b4f6a4a3          	sw	a5,-1207(a3)
1c00b5fc:	bd770713          	addi	a4,a4,-1065 # 6d8f4bd7 <__l2_shared_end+0x518e4bd7>
1c00b600:	fa9037b7          	lui	a5,0xfa903
1c00b604:	b4e6aaa3          	sw	a4,-1195(a3)
1c00b608:	af478793          	addi	a5,a5,-1292 # fa902af4 <pulp__FC+0xfa902af5>
1c00b60c:	b186b737          	lui	a4,0xb186b
1c00b610:	b4f6a6a3          	sw	a5,-1203(a3)
1c00b614:	c4270713          	addi	a4,a4,-958 # b186ac42 <pulp__FC+0xb186ac43>
1c00b618:	b4e6aca3          	sw	a4,-1191(a3)
1c00b61c:	b03ad737          	lui	a4,0xb03ad
1c00b620:	a8b70713          	addi	a4,a4,-1397 # b03aca8b <pulp__FC+0xb03aca8c>
1c00b624:	b4e6aea3          	sw	a4,-1187(a3)
1c00b628:	0c686737          	lui	a4,0xc686
1c00b62c:	44770713          	addi	a4,a4,1095 # c686447 <__CTOR_LIST__-0xf979bbd>
1c00b630:	b6e6a0a3          	sw	a4,-1183(a3)
1c00b634:	520c0737          	lui	a4,0x520c0
1c00b638:	6f270713          	addi	a4,a4,1778 # 520c06f2 <__l2_shared_end+0x360b06f2>
1c00b63c:	b6e6a2a3          	sw	a4,-1179(a3)
1c00b640:	8e5bc737          	lui	a4,0x8e5bc
1c00b644:	e9a70713          	addi	a4,a4,-358 # 8e5bbe9a <pulp__FC+0x8e5bbe9b>
1c00b648:	b6e6a4a3          	sw	a4,-1175(a3)
1c00b64c:	c84d4737          	lui	a4,0xc84d4
1c00b650:	7f470713          	addi	a4,a4,2036 # c84d47f4 <pulp__FC+0xc84d47f5>
1c00b654:	b6e6a6a3          	sw	a4,-1171(a3)
1c00b658:	03a84737          	lui	a4,0x3a84
1c00b65c:	7cc70713          	addi	a4,a4,1996 # 3a847cc <__CTOR_LIST__-0x1857b838>
1c00b660:	b6e6a8a3          	sw	a4,-1167(a3)
1c00b664:	4d88c737          	lui	a4,0x4d88c
1c00b668:	d3e70713          	addi	a4,a4,-706 # 4d88bd3e <__l2_shared_end+0x3187bd3e>
1c00b66c:	b6e6aaa3          	sw	a4,-1163(a3)
1c00b670:	1a0f1737          	lui	a4,0x1a0f1
1c00b674:	a3e70713          	addi	a4,a4,-1474 # 1a0f0a3e <__CTOR_LIST__-0x1f0f5c6>
1c00b678:	b6e6aca3          	sw	a4,-1159(a3)
1c00b67c:	8a0d4737          	lui	a4,0x8a0d4
1c00b680:	29470713          	addi	a4,a4,660 # 8a0d4294 <pulp__FC+0x8a0d4295>
1c00b684:	b6e6aea3          	sw	a4,-1155(a3)
1c00b688:	b7629737          	lui	a4,0xb7629
1c00b68c:	13c70713          	addi	a4,a4,316 # b762913c <pulp__FC+0xb762913d>
1c00b690:	b8e6a0a3          	sw	a4,-1151(a3)
1c00b694:	c8a28737          	lui	a4,0xc8a28
1c00b698:	7af70713          	addi	a4,a4,1967 # c8a287af <pulp__FC+0xc8a287b0>
1c00b69c:	b8e6a2a3          	sw	a4,-1147(a3)
1c00b6a0:	74649737          	lui	a4,0x74649
1c00b6a4:	4a370713          	addi	a4,a4,1187 # 746494a3 <__l2_shared_end+0x586394a3>
1c00b6a8:	b8e6a4a3          	sw	a4,-1143(a3)
1c00b6ac:	bca3f737          	lui	a4,0xbca3f
1c00b6b0:	43470713          	addi	a4,a4,1076 # bca3f434 <pulp__FC+0xbca3f435>
1c00b6b4:	b8e6a6a3          	sw	a4,-1139(a3)
1c00b6b8:	13784737          	lui	a4,0x13784
1c00b6bc:	72b70713          	addi	a4,a4,1835 # 1378472b <__CTOR_LIST__-0x887b8d9>
1c00b6c0:	b8e6a8a3          	sw	a4,-1135(a3)
1c00b6c4:	38cf8737          	lui	a4,0x38cf8
1c00b6c8:	2ac70713          	addi	a4,a4,684 # 38cf82ac <__l2_shared_end+0x1cce82ac>
1c00b6cc:	b8e6aaa3          	sw	a4,-1131(a3)
1c00b6d0:	87b58737          	lui	a4,0x87b58
1c00b6d4:	57170713          	addi	a4,a4,1393 # 87b58571 <pulp__FC+0x87b58572>
1c00b6d8:	b8e6aca3          	sw	a4,-1127(a3)
1c00b6dc:	3889f737          	lui	a4,0x3889f
1c00b6e0:	6f770713          	addi	a4,a4,1783 # 3889f6f7 <__l2_shared_end+0x1c88f6f7>
1c00b6e4:	b8e6aea3          	sw	a4,-1123(a3)
1c00b6e8:	69ddd737          	lui	a4,0x69ddd
1c00b6ec:	dec70713          	addi	a4,a4,-532 # 69ddcdec <__l2_shared_end+0x4ddccdec>
1c00b6f0:	bae6a0a3          	sw	a4,-1119(a3)
1c00b6f4:	ba43d737          	lui	a4,0xba43d
1c00b6f8:	610e0793          	addi	a5,t3,1552
1c00b6fc:	13470713          	addi	a4,a4,308 # ba43d134 <pulp__FC+0xba43d135>
1c00b700:	bae6a2a3          	sw	a4,-1115(a3)
1c00b704:	bcf690a3          	sh	a5,-1087(a3)
1c00b708:	714ac737          	lui	a4,0x714ac
1c00b70c:	04300793          	li	a5,67
1c00b710:	bcf681a3          	sb	a5,-1085(a3)
1c00b714:	b1770713          	addi	a4,a4,-1257 # 714abb17 <__l2_shared_end+0x5549bb17>
1c00b718:	c1b8b7b7          	lui	a5,0xc1b8b
1c00b71c:	bae6a4a3          	sw	a4,-1111(a3)
1c00b720:	69c78793          	addi	a5,a5,1692 # c1b8b69c <pulp__FC+0xc1b8b69d>
1c00b724:	a5d26737          	lui	a4,0xa5d26
1c00b728:	bcf6a223          	sw	a5,-1084(a3)
1c00b72c:	62570713          	addi	a4,a4,1573 # a5d26625 <pulp__FC+0xa5d26626>
1c00b730:	ba9d47b7          	lui	a5,0xba9d4
1c00b734:	bae6a6a3          	sw	a4,-1107(a3)
1c00b738:	81578793          	addi	a5,a5,-2027 # ba9d3815 <pulp__FC+0xba9d3816>
1c00b73c:	33dbb737          	lui	a4,0x33dbb
1c00b740:	bcf6a423          	sw	a5,-1080(a3)
1c00b744:	d5a70713          	addi	a4,a4,-678 # 33dbad5a <__l2_shared_end+0x17daad5a>
1c00b748:	910c77b7          	lui	a5,0x910c7
1c00b74c:	bae6a8a3          	sw	a4,-1103(a3)
1c00b750:	f4e78793          	addi	a5,a5,-178 # 910c6f4e <pulp__FC+0x910c6f4f>
1c00b754:	67367737          	lui	a4,0x67367
1c00b758:	bcf6a623          	sw	a5,-1076(a3)
1c00b75c:	12370713          	addi	a4,a4,291 # 67367123 <__l2_shared_end+0x4b357123>
1c00b760:	2b60e7b7          	lui	a5,0x2b60e
1c00b764:	bae6aaa3          	sw	a4,-1099(a3)
1c00b768:	75b78793          	addi	a5,a5,1883 # 2b60e75b <__l2_shared_end+0xf5fe75b>
1c00b76c:	204a2737          	lui	a4,0x204a2
1c00b770:	bcf6a823          	sw	a5,-1072(a3)
1c00b774:	b4070713          	addi	a4,a4,-1216 # 204a1b40 <__l2_shared_end+0x4491b40>
1c00b778:	35b507b7          	lui	a5,0x35b50
1c00b77c:	bae6aca3          	sw	a4,-1095(a3)
1c00b780:	39778793          	addi	a5,a5,919 # 35b50397 <__l2_shared_end+0x19b40397>
1c00b784:	bf237737          	lui	a4,0xbf237
1c00b788:	cb870713          	addi	a4,a4,-840 # bf236cb8 <pulp__FC+0xbf236cb9>
1c00b78c:	bcf6aa23          	sw	a5,-1068(a3)
1c00b790:	5c4a17b7          	lui	a5,0x5c4a1
1c00b794:	bae6aea3          	sw	a4,-1091(a3)
1c00b798:	e0778793          	addi	a5,a5,-505 # 5c4a0e07 <__l2_shared_end+0x40490e07>
1c00b79c:	bcf6ac23          	sw	a5,-1064(a3)
1c00b7a0:	d7a557b7          	lui	a5,0xd7a55
1c00b7a4:	95678793          	addi	a5,a5,-1706 # d7a54956 <pulp__FC+0xd7a54957>
1c00b7a8:	bcf6ae23          	sw	a5,-1060(a3)
1c00b7ac:	021507b7          	lui	a5,0x2150
1c00b7b0:	50878793          	addi	a5,a5,1288 # 2150508 <__CTOR_LIST__-0x19eafafc>
1c00b7b4:	bef6a023          	sw	a5,-1056(a3)
1c00b7b8:	60b207b7          	lui	a5,0x60b20
1c00b7bc:	66778793          	addi	a5,a5,1639 # 60b20667 <__l2_shared_end+0x44b10667>
1c00b7c0:	bef6a223          	sw	a5,-1052(a3)
1c00b7c4:	d0cb77b7          	lui	a5,0xd0cb7
1c00b7c8:	54578793          	addi	a5,a5,1349 # d0cb7545 <pulp__FC+0xd0cb7546>
1c00b7cc:	bef6a423          	sw	a5,-1048(a3)
1c00b7d0:	292787b7          	lui	a5,0x29278
1c00b7d4:	f6878793          	addi	a5,a5,-152 # 29277f68 <__l2_shared_end+0xd267f68>
1c00b7d8:	bef6a623          	sw	a5,-1044(a3)
1c00b7dc:	7d9937b7          	lui	a5,0x7d993
1c00b7e0:	aa978793          	addi	a5,a5,-1367 # 7d992aa9 <__l2_shared_end+0x61982aa9>
1c00b7e4:	bef6a823          	sw	a5,-1040(a3)
1c00b7e8:	0072f7b7          	lui	a5,0x72f
1c00b7ec:	a2178793          	addi	a5,a5,-1503 # 72ea21 <__CTOR_LIST__-0x1b8d15e3>
1c00b7f0:	bef6aa23          	sw	a5,-1036(a3)
1c00b7f4:	31d827b7          	lui	a5,0x31d82
1c00b7f8:	ec478793          	addi	a5,a5,-316 # 31d81ec4 <__l2_shared_end+0x15d71ec4>
1c00b7fc:	bef6ac23          	sw	a5,-1032(a3)
1c00b800:	c7f477b7          	lui	a5,0xc7f47
1c00b804:	55278793          	addi	a5,a5,1362 # c7f47552 <pulp__FC+0xc7f47553>
1c00b808:	bef6ae23          	sw	a5,-1028(a3)
1c00b80c:	c89b37b7          	lui	a5,0xc89b3
1c00b810:	fb778793          	addi	a5,a5,-73 # c89b2fb7 <pulp__FC+0xc89b2fb8>
1c00b814:	c0f6a023          	sw	a5,-1024(a3)
1c00b818:	b91317b7          	lui	a5,0xb9131
1c00b81c:	a5c78793          	addi	a5,a5,-1444 # b9130a5c <pulp__FC+0xb9130a5d>
1c00b820:	c0f6a223          	sw	a5,-1020(a3)
1c00b824:	6f5847b7          	lui	a5,0x6f584
1c00b828:	1d078793          	addi	a5,a5,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c00b82c:	c0f6a423          	sw	a5,-1016(a3)
1c00b830:	b1fe87b7          	lui	a5,0xb1fe8
1c00b834:	3d578793          	addi	a5,a5,981 # b1fe83d5 <pulp__FC+0xb1fe83d6>
1c00b838:	c0f6a623          	sw	a5,-1012(a3)
1c00b83c:	405b07b7          	lui	a5,0x405b0
1c00b840:	d2a78793          	addi	a5,a5,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c00b844:	c0f6a823          	sw	a5,-1008(a3)
1c00b848:	433bd7b7          	lui	a5,0x433bd
1c00b84c:	32d78793          	addi	a5,a5,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c00b850:	c0f6aa23          	sw	a5,-1004(a3)
1c00b854:	a45f47b7          	lui	a5,0xa45f4
1c00b858:	f5478793          	addi	a5,a5,-172 # a45f3f54 <pulp__FC+0xa45f3f55>
1c00b85c:	c0f6ac23          	sw	a5,-1000(a3)
1c00b860:	8d6c47b7          	lui	a5,0x8d6c4
1c00b864:	3eb78793          	addi	a5,a5,1003 # 8d6c43eb <pulp__FC+0x8d6c43ec>
1c00b868:	c0f6ae23          	sw	a5,-996(a3)
1c00b86c:	955337b7          	lui	a5,0x95533
1c00b870:	f9a78793          	addi	a5,a5,-102 # 95532f9a <pulp__FC+0x95532f9b>
1c00b874:	c2f6a023          	sw	a5,-992(a3)
1c00b878:	d51187b7          	lui	a5,0xd5118
1c00b87c:	f0878793          	addi	a5,a5,-248 # d5117f08 <pulp__FC+0xd5117f09>
1c00b880:	c2f6a223          	sw	a5,-988(a3)
1c00b884:	251dc7b7          	lui	a5,0x251dc
1c00b888:	c8d78793          	addi	a5,a5,-883 # 251dbc8d <__l2_shared_end+0x91cbc8d>
1c00b88c:	c2f6a423          	sw	a5,-984(a3)
1c00b890:	10e197b7          	lui	a5,0x10e19
1c00b894:	a5878793          	addi	a5,a5,-1448 # 10e18a58 <__CTOR_LIST__-0xb1e75ac>
1c00b898:	c2f6a623          	sw	a5,-980(a3)
1c00b89c:	abaaa7b7          	lui	a5,0xabaaa
1c00b8a0:	d2078793          	addi	a5,a5,-736 # abaa9d20 <pulp__FC+0xabaa9d21>
1c00b8a4:	c2f6a823          	sw	a5,-976(a3)
1c00b8a8:	4595e7b7          	lui	a5,0x4595e
1c00b8ac:	d7578793          	addi	a5,a5,-651 # 4595dd75 <__l2_shared_end+0x2994dd75>
1c00b8b0:	c2f6aa23          	sw	a5,-972(a3)
1c00b8b4:	aa40b7b7          	lui	a5,0xaa40b
1c00b8b8:	b7678793          	addi	a5,a5,-1162 # aa40ab76 <pulp__FC+0xaa40ab77>
1c00b8bc:	c2f6ac23          	sw	a5,-968(a3)
1c00b8c0:	d479a7b7          	lui	a5,0xd479a
1c00b8c4:	97078793          	addi	a5,a5,-1680 # d4799970 <pulp__FC+0xd4799971>
1c00b8c8:	c2f6ae23          	sw	a5,-964(a3)
1c00b8cc:	a62e37b7          	lui	a5,0xa62e3
1c00b8d0:	a3e78793          	addi	a5,a5,-1474 # a62e2a3e <pulp__FC+0xa62e2a3f>
1c00b8d4:	c4f6a023          	sw	a5,-960(a3)
1c00b8d8:	fc76c7b7          	lui	a5,0xfc76c
1c00b8dc:	4c978793          	addi	a5,a5,1225 # fc76c4c9 <pulp__FC+0xfc76c4ca>
1c00b8e0:	c4f6a223          	sw	a5,-956(a3)
1c00b8e4:	13b037b7          	lui	a5,0x13b03
1c00b8e8:	74978793          	addi	a5,a5,1865 # 13b03749 <__CTOR_LIST__-0x84fc8bb>
1c00b8ec:	c4f6a423          	sw	a5,-952(a3)
1c00b8f0:	93a797b7          	lui	a5,0x93a79
1c00b8f4:	3c978793          	addi	a5,a5,969 # 93a793c9 <pulp__FC+0x93a793ca>
1c00b8f8:	c4f6a623          	sw	a5,-948(a3)
1c00b8fc:	99abc7b7          	lui	a5,0x99abc
1c00b900:	0d678793          	addi	a5,a5,214 # 99abc0d6 <pulp__FC+0x99abc0d7>
1c00b904:	c4f6a823          	sw	a5,-944(a3)
1c00b908:	a85b77b7          	lui	a5,0xa85b7
1c00b90c:	96078793          	addi	a5,a5,-1696 # a85b6960 <pulp__FC+0xa85b6961>
1c00b910:	c4f6aa23          	sw	a5,-940(a3)
1c00b914:	da49f7b7          	lui	a5,0xda49f
1c00b918:	63878793          	addi	a5,a5,1592 # da49f638 <pulp__FC+0xda49f639>
1c00b91c:	1c006937          	lui	s2,0x1c006
1c00b920:	c4f6ac23          	sw	a5,-936(a3)
1c00b924:	d0a3a7b7          	lui	a5,0xd0a3a
1c00b928:	c5378793          	addi	a5,a5,-941 # d0a39c53 <pulp__FC+0xd0a39c54>
1c00b92c:	8c060613          	addi	a2,a2,-1856
1c00b930:	2a058593          	addi	a1,a1,672
1c00b934:	26090513          	addi	a0,s2,608 # 1c006260 <stack>
1c00b938:	c4f6ae23          	sw	a5,-932(a3)
1c00b93c:	2a9010ef          	jal	ra,1c00d3e4 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_dec>
1c00b940:	1c000537          	lui	a0,0x1c000
1c00b944:	11c50513          	addi	a0,a0,284 # 1c00011c <__DTOR_END__+0x100>
1c00b948:	6c9020ef          	jal	ra,1c00e810 <puts>
1c00b94c:	1c000537          	lui	a0,0x1c000
1c00b950:	26090413          	addi	s0,s2,608
1c00b954:	13050513          	addi	a0,a0,304 # 1c000130 <__DTOR_END__+0x114>
1c00b958:	6b9020ef          	jal	ra,1c00e810 <puts>
1c00b95c:	02040a13          	addi	s4,s0,32
1c00b960:	26090913          	addi	s2,s2,608
1c00b964:	1c0009b7          	lui	s3,0x1c000
1c00b968:	00094583          	lbu	a1,0(s2)
1c00b96c:	13898513          	addi	a0,s3,312 # 1c000138 <__DTOR_END__+0x11c>
1c00b970:	0905                	addi	s2,s2,1
1c00b972:	761020ef          	jal	ra,1c00e8d2 <printf>
1c00b976:	ff4919e3          	bne	s2,s4,1c00b968 <main+0x3826>
1c00b97a:	4529                	li	a0,10
1c00b97c:	711020ef          	jal	ra,1c00e88c <putchar>
1c00b980:	87a6                	mv	a5,s1
1c00b982:	a021                	j	1c00b98a <main+0x3848>
1c00b984:	0785                	addi	a5,a5,1
1c00b986:	03240863          	beq	s0,s2,1c00b9b6 <main+0x3874>
1c00b98a:	00044683          	lbu	a3,0(s0)
1c00b98e:	0007c703          	lbu	a4,0(a5)
1c00b992:	0405                	addi	s0,s0,1
1c00b994:	fee688e3          	beq	a3,a4,1c00b984 <main+0x3842>
1c00b998:	1c000537          	lui	a0,0x1c000
1c00b99c:	14050513          	addi	a0,a0,320 # 1c000140 <__DTOR_END__+0x124>
1c00b9a0:	671020ef          	jal	ra,1c00e810 <puts>
1c00b9a4:	557d                	li	a0,-1
1c00b9a6:	40f2                	lw	ra,28(sp)
1c00b9a8:	4462                	lw	s0,24(sp)
1c00b9aa:	44d2                	lw	s1,20(sp)
1c00b9ac:	4942                	lw	s2,16(sp)
1c00b9ae:	49b2                	lw	s3,12(sp)
1c00b9b0:	4a22                	lw	s4,8(sp)
1c00b9b2:	6105                	addi	sp,sp,32
1c00b9b4:	8082                	ret
1c00b9b6:	4501                	li	a0,0
1c00b9b8:	b7fd                	j	1c00b9a6 <main+0x3864>

1c00b9ba <pos_fll_init>:
1c00b9ba:	1101                	addi	sp,sp,-32
1c00b9bc:	1a100637          	lui	a2,0x1a100
1c00b9c0:	ca26                	sw	s1,20(sp)
1c00b9c2:	00451693          	slli	a3,a0,0x4
1c00b9c6:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c00b9ca:	94b6                	add	s1,s1,a3
1c00b9cc:	4098                	lw	a4,0(s1)
1c00b9ce:	c84a                	sw	s2,16(sp)
1c00b9d0:	ce06                	sw	ra,28(sp)
1c00b9d2:	cc22                	sw	s0,24(sp)
1c00b9d4:	c64e                	sw	s3,12(sp)
1c00b9d6:	c452                	sw	s4,8(sp)
1c00b9d8:	892a                	mv	s2,a0
1c00b9da:	87ba                	mv	a5,a4
1c00b9dc:	04074563          	bltz	a4,1c00ba26 <pos_fll_init+0x6c>
1c00b9e0:	00860593          	addi	a1,a2,8
1c00b9e4:	95b6                	add	a1,a1,a3
1c00b9e6:	419c                	lw	a5,0(a1)
1c00b9e8:	7541                	lui	a0,0xffff0
1c00b9ea:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c00b9ee:	8fe9                	and	a5,a5,a0
1c00b9f0:	6509                	lui	a0,0x2
1c00b9f2:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c00b9f6:	8fc9                	or	a5,a5,a0
1c00b9f8:	f0010537          	lui	a0,0xf0010
1c00b9fc:	157d                	addi	a0,a0,-1
1c00b9fe:	8fe9                	and	a5,a5,a0
1c00ba00:	00500537          	lui	a0,0x500
1c00ba04:	8fc9                	or	a5,a5,a0
1c00ba06:	0631                	addi	a2,a2,12
1c00ba08:	c19c                	sw	a5,0(a1)
1c00ba0a:	96b2                	add	a3,a3,a2
1c00ba0c:	429c                	lw	a5,0(a3)
1c00ba0e:	fc010637          	lui	a2,0xfc010
1c00ba12:	167d                	addi	a2,a2,-1
1c00ba14:	8ff1                	and	a5,a5,a2
1c00ba16:	014c0637          	lui	a2,0x14c0
1c00ba1a:	8fd1                	or	a5,a5,a2
1c00ba1c:	c29c                	sw	a5,0(a3)
1c00ba1e:	c00007b7          	lui	a5,0xc0000
1c00ba22:	8fd9                	or	a5,a5,a4
1c00ba24:	c09c                	sw	a5,0(s1)
1c00ba26:	1c007437          	lui	s0,0x1c007
1c00ba2a:	52440413          	addi	s0,s0,1316 # 1c007524 <pos_fll_freq>
1c00ba2e:	00291993          	slli	s3,s2,0x2
1c00ba32:	013406b3          	add	a3,s0,s3
1c00ba36:	0006aa03          	lw	s4,0(a3)
1c00ba3a:	020a1d63          	bnez	s4,1c00ba74 <pos_fll_init+0xba>
1c00ba3e:	83e9                	srli	a5,a5,0x1a
1c00ba40:	0742                	slli	a4,a4,0x10
1c00ba42:	8341                	srli	a4,a4,0x10
1c00ba44:	8bbd                	andi	a5,a5,15
1c00ba46:	073e                	slli	a4,a4,0xf
1c00ba48:	17fd                	addi	a5,a5,-1
1c00ba4a:	00f75a33          	srl	s4,a4,a5
1c00ba4e:	1c007537          	lui	a0,0x1c007
1c00ba52:	0146a023          	sw	s4,0(a3)
1c00ba56:	52050513          	addi	a0,a0,1312 # 1c007520 <pos_fll_is_on>
1c00ba5a:	954a                	add	a0,a0,s2
1c00ba5c:	4685                	li	a3,1
1c00ba5e:	00d50023          	sb	a3,0(a0)
1c00ba62:	40f2                	lw	ra,28(sp)
1c00ba64:	4462                	lw	s0,24(sp)
1c00ba66:	8552                	mv	a0,s4
1c00ba68:	44d2                	lw	s1,20(sp)
1c00ba6a:	4942                	lw	s2,16(sp)
1c00ba6c:	49b2                	lw	s3,12(sp)
1c00ba6e:	4a22                	lw	s4,8(sp)
1c00ba70:	6105                	addi	sp,sp,32
1c00ba72:	8082                	ret
1c00ba74:	8552                	mv	a0,s4
1c00ba76:	e90fc0ef          	jal	ra,1c008106 <__clzsi2>
1c00ba7a:	1579                	addi	a0,a0,-2
1c00ba7c:	00155613          	srli	a2,a0,0x1
1c00ba80:	e631                	bnez	a2,1c00bacc <pos_fll_init+0x112>
1c00ba82:	4709                	li	a4,2
1c00ba84:	4585                	li	a1,1
1c00ba86:	4605                	li	a2,1
1c00ba88:	00ca17b3          	sll	a5,s4,a2
1c00ba8c:	76e1                	lui	a3,0xffff8
1c00ba8e:	1c007537          	lui	a0,0x1c007
1c00ba92:	8efd                	and	a3,a3,a5
1c00ba94:	52050513          	addi	a0,a0,1312 # 1c007520 <pos_fll_is_on>
1c00ba98:	96ae                	add	a3,a3,a1
1c00ba9a:	012505b3          	add	a1,a0,s2
1c00ba9e:	00c6d6b3          	srl	a3,a3,a2
1c00baa2:	944e                	add	s0,s0,s3
1c00baa4:	0005c603          	lbu	a2,0(a1)
1c00baa8:	c014                	sw	a3,0(s0)
1c00baaa:	da45                	beqz	a2,1c00ba5a <pos_fll_init+0xa0>
1c00baac:	4094                	lw	a3,0(s1)
1c00baae:	83bd                	srli	a5,a5,0xf
1c00bab0:	07c2                	slli	a5,a5,0x10
1c00bab2:	7641                	lui	a2,0xffff0
1c00bab4:	83c1                	srli	a5,a5,0x10
1c00bab6:	8ef1                	and	a3,a3,a2
1c00bab8:	8edd                	or	a3,a3,a5
1c00baba:	c40007b7          	lui	a5,0xc4000
1c00babe:	8b3d                	andi	a4,a4,15
1c00bac0:	17fd                	addi	a5,a5,-1
1c00bac2:	076a                	slli	a4,a4,0x1a
1c00bac4:	8efd                	and	a3,a3,a5
1c00bac6:	8ed9                	or	a3,a3,a4
1c00bac8:	c094                	sw	a3,0(s1)
1c00baca:	bf41                	j	1c00ba5a <pos_fll_init+0xa0>
1c00bacc:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c00bad0:	4685                	li	a3,1
1c00bad2:	00b695b3          	sll	a1,a3,a1
1c00bad6:	00160713          	addi	a4,a2,1
1c00bada:	b77d                	j	1c00ba88 <pos_fll_init+0xce>

1c00badc <pos_fll_constructor>:
1c00badc:	1c0077b7          	lui	a5,0x1c007
1c00bae0:	52478793          	addi	a5,a5,1316 # 1c007524 <pos_fll_freq>
1c00bae4:	0007a023          	sw	zero,0(a5)
1c00bae8:	0007a223          	sw	zero,4(a5)
1c00baec:	1c0077b7          	lui	a5,0x1c007
1c00baf0:	52079023          	sh	zero,1312(a5) # 1c007520 <pos_fll_is_on>
1c00baf4:	8082                	ret

1c00baf6 <pos_soc_init>:
1c00baf6:	1141                	addi	sp,sp,-16
1c00baf8:	c606                	sw	ra,12(sp)
1c00bafa:	c422                	sw	s0,8(sp)
1c00bafc:	37c5                	jal	1c00badc <pos_fll_constructor>
1c00bafe:	4501                	li	a0,0
1c00bb00:	3d6d                	jal	1c00b9ba <pos_fll_init>
1c00bb02:	1c007437          	lui	s0,0x1c007
1c00bb06:	52a42623          	sw	a0,1324(s0) # 1c00752c <pos_freq_domains>
1c00bb0a:	4505                	li	a0,1
1c00bb0c:	357d                	jal	1c00b9ba <pos_fll_init>
1c00bb0e:	52c40413          	addi	s0,s0,1324
1c00bb12:	c408                	sw	a0,8(s0)
1c00bb14:	40b2                	lw	ra,12(sp)
1c00bb16:	4422                	lw	s0,8(sp)
1c00bb18:	0141                	addi	sp,sp,16
1c00bb1a:	8082                	ret

1c00bb1c <KeccakF1600_StatePermute>:
1c00bb1c:	1a4007b7          	lui	a5,0x1a400
1c00bb20:	1141                	addi	sp,sp,-16
1c00bb22:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00bb26:	4118                	lw	a4,0(a0)
1c00bb28:	0791                	addi	a5,a5,4
1c00bb2a:	fee7ae23          	sw	a4,-4(a5)
1c00bb2e:	0511                	addi	a0,a0,4
1c00bb30:	fed79be3          	bne	a5,a3,1c00bb26 <KeccakF1600_StatePermute+0xa>
1c00bb34:	1a4007b7          	lui	a5,0x1a400
1c00bb38:	4705                	li	a4,1
1c00bb3a:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c00bb3e:	1a400737          	lui	a4,0x1a400
1c00bb42:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c00bb46:	8b85                	andi	a5,a5,1
1c00bb48:	dfed                	beqz	a5,1c00bb42 <KeccakF1600_StatePermute+0x26>
1c00bb4a:	c602                	sw	zero,12(sp)
1c00bb4c:	4732                	lw	a4,12(sp)
1c00bb4e:	03100793          	li	a5,49
1c00bb52:	02e7c663          	blt	a5,a4,1c00bb7e <KeccakF1600_StatePermute+0x62>
1c00bb56:	1a400637          	lui	a2,0x1a400
1c00bb5a:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00bb5e:	03100513          	li	a0,49
1c00bb62:	4732                	lw	a4,12(sp)
1c00bb64:	47b2                	lw	a5,12(sp)
1c00bb66:	070a                	slli	a4,a4,0x2
1c00bb68:	9732                	add	a4,a4,a2
1c00bb6a:	4314                	lw	a3,0(a4)
1c00bb6c:	4732                	lw	a4,12(sp)
1c00bb6e:	078a                	slli	a5,a5,0x2
1c00bb70:	0705                	addi	a4,a4,1
1c00bb72:	c63a                	sw	a4,12(sp)
1c00bb74:	97ae                	add	a5,a5,a1
1c00bb76:	4732                	lw	a4,12(sp)
1c00bb78:	c394                	sw	a3,0(a5)
1c00bb7a:	fee554e3          	ble	a4,a0,1c00bb62 <KeccakF1600_StatePermute+0x46>
1c00bb7e:	0141                	addi	sp,sp,16
1c00bb80:	8082                	ret

1c00bb82 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>:
1c00bb82:	1141                	addi	sp,sp,-16
1c00bb84:	55555337          	lui	t1,0x55555
1c00bb88:	68c1                	lui	a7,0x10
1c00bb8a:	c622                	sw	s0,12(sp)
1c00bb8c:	c426                	sw	s1,8(sp)
1c00bb8e:	c24a                	sw	s2,4(sp)
1c00bb90:	20050e13          	addi	t3,a0,512
1c00bb94:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00bb98:	18fd                	addi	a7,a7,-1
1c00bb9a:	419c                	lw	a5,0(a1)
1c00bb9c:	0541                	addi	a0,a0,16
1c00bb9e:	0017d713          	srli	a4,a5,0x1
1c00bba2:	00677733          	and	a4,a4,t1
1c00bba6:	0067f7b3          	and	a5,a5,t1
1c00bbaa:	97ba                	add	a5,a5,a4
1c00bbac:	0027d913          	srli	s2,a5,0x2
1c00bbb0:	0087d693          	srli	a3,a5,0x8
1c00bbb4:	00a7d493          	srli	s1,a5,0xa
1c00bbb8:	0107d713          	srli	a4,a5,0x10
1c00bbbc:	0127d413          	srli	s0,a5,0x12
1c00bbc0:	0037f613          	andi	a2,a5,3
1c00bbc4:	00397913          	andi	s2,s2,3
1c00bbc8:	8a8d                	andi	a3,a3,3
1c00bbca:	888d                	andi	s1,s1,3
1c00bbcc:	8b0d                	andi	a4,a4,3
1c00bbce:	880d                	andi	s0,s0,3
1c00bbd0:	0047df13          	srli	t5,a5,0x4
1c00bbd4:	0067d393          	srli	t2,a5,0x6
1c00bbd8:	00c7de93          	srli	t4,a5,0xc
1c00bbdc:	00e7d293          	srli	t0,a5,0xe
1c00bbe0:	0147d813          	srli	a6,a5,0x14
1c00bbe4:	0167df93          	srli	t6,a5,0x16
1c00bbe8:	41260633          	sub	a2,a2,s2
1c00bbec:	8e85                	sub	a3,a3,s1
1c00bbee:	8f01                	sub	a4,a4,s0
1c00bbf0:	0033f393          	andi	t2,t2,3
1c00bbf4:	0032f293          	andi	t0,t0,3
1c00bbf8:	003fff93          	andi	t6,t6,3
1c00bbfc:	003f7f13          	andi	t5,t5,3
1c00bc00:	003efe93          	andi	t4,t4,3
1c00bc04:	00387813          	andi	a6,a6,3
1c00bc08:	0642                	slli	a2,a2,0x10
1c00bc0a:	06c2                	slli	a3,a3,0x10
1c00bc0c:	0742                	slli	a4,a4,0x10
1c00bc0e:	407f0f33          	sub	t5,t5,t2
1c00bc12:	405e8eb3          	sub	t4,t4,t0
1c00bc16:	41f80833          	sub	a6,a6,t6
1c00bc1a:	0187d293          	srli	t0,a5,0x18
1c00bc1e:	01a7d393          	srli	t2,a5,0x1a
1c00bc22:	01c7df93          	srli	t6,a5,0x1c
1c00bc26:	8241                	srli	a2,a2,0x10
1c00bc28:	82c1                	srli	a3,a3,0x10
1c00bc2a:	8341                	srli	a4,a4,0x10
1c00bc2c:	0842                	slli	a6,a6,0x10
1c00bc2e:	0f42                	slli	t5,t5,0x10
1c00bc30:	01167633          	and	a2,a2,a7
1c00bc34:	0ec2                	slli	t4,t4,0x10
1c00bc36:	0116f6b3          	and	a3,a3,a7
1c00bc3a:	01177733          	and	a4,a4,a7
1c00bc3e:	0032f293          	andi	t0,t0,3
1c00bc42:	0033f393          	andi	t2,t2,3
1c00bc46:	003fff93          	andi	t6,t6,3
1c00bc4a:	83f9                	srli	a5,a5,0x1e
1c00bc4c:	01076733          	or	a4,a4,a6
1c00bc50:	01e66633          	or	a2,a2,t5
1c00bc54:	01d6e6b3          	or	a3,a3,t4
1c00bc58:	40728833          	sub	a6,t0,t2
1c00bc5c:	40ff87b3          	sub	a5,t6,a5
1c00bc60:	fec52823          	sw	a2,-16(a0)
1c00bc64:	fed52a23          	sw	a3,-12(a0)
1c00bc68:	fee52c23          	sw	a4,-8(a0)
1c00bc6c:	ff051e23          	sh	a6,-4(a0)
1c00bc70:	fef51f23          	sh	a5,-2(a0)
1c00bc74:	0591                	addi	a1,a1,4
1c00bc76:	f3c512e3          	bne	a0,t3,1c00bb9a <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1+0x18>
1c00bc7a:	4432                	lw	s0,12(sp)
1c00bc7c:	44a2                	lw	s1,8(sp)
1c00bc7e:	4912                	lw	s2,4(sp)
1c00bc80:	0141                	addi	sp,sp,16
1c00bc82:	8082                	ret

1c00bc84 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2>:
1c00bc84:	1141                	addi	sp,sp,-16
1c00bc86:	55555337          	lui	t1,0x55555
1c00bc8a:	68c1                	lui	a7,0x10
1c00bc8c:	c622                	sw	s0,12(sp)
1c00bc8e:	c426                	sw	s1,8(sp)
1c00bc90:	c24a                	sw	s2,4(sp)
1c00bc92:	20050e13          	addi	t3,a0,512
1c00bc96:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00bc9a:	18fd                	addi	a7,a7,-1
1c00bc9c:	419c                	lw	a5,0(a1)
1c00bc9e:	0541                	addi	a0,a0,16
1c00bca0:	0017d713          	srli	a4,a5,0x1
1c00bca4:	00677733          	and	a4,a4,t1
1c00bca8:	0067f7b3          	and	a5,a5,t1
1c00bcac:	97ba                	add	a5,a5,a4
1c00bcae:	0027d913          	srli	s2,a5,0x2
1c00bcb2:	0087d693          	srli	a3,a5,0x8
1c00bcb6:	00a7d493          	srli	s1,a5,0xa
1c00bcba:	0107d713          	srli	a4,a5,0x10
1c00bcbe:	0127d413          	srli	s0,a5,0x12
1c00bcc2:	0037f613          	andi	a2,a5,3
1c00bcc6:	00397913          	andi	s2,s2,3
1c00bcca:	8a8d                	andi	a3,a3,3
1c00bccc:	888d                	andi	s1,s1,3
1c00bcce:	8b0d                	andi	a4,a4,3
1c00bcd0:	880d                	andi	s0,s0,3
1c00bcd2:	0047df13          	srli	t5,a5,0x4
1c00bcd6:	0067d393          	srli	t2,a5,0x6
1c00bcda:	00c7de93          	srli	t4,a5,0xc
1c00bcde:	00e7d293          	srli	t0,a5,0xe
1c00bce2:	0147d813          	srli	a6,a5,0x14
1c00bce6:	0167df93          	srli	t6,a5,0x16
1c00bcea:	41260633          	sub	a2,a2,s2
1c00bcee:	8e85                	sub	a3,a3,s1
1c00bcf0:	8f01                	sub	a4,a4,s0
1c00bcf2:	0033f393          	andi	t2,t2,3
1c00bcf6:	0032f293          	andi	t0,t0,3
1c00bcfa:	003fff93          	andi	t6,t6,3
1c00bcfe:	003f7f13          	andi	t5,t5,3
1c00bd02:	003efe93          	andi	t4,t4,3
1c00bd06:	00387813          	andi	a6,a6,3
1c00bd0a:	0642                	slli	a2,a2,0x10
1c00bd0c:	06c2                	slli	a3,a3,0x10
1c00bd0e:	0742                	slli	a4,a4,0x10
1c00bd10:	407f0f33          	sub	t5,t5,t2
1c00bd14:	405e8eb3          	sub	t4,t4,t0
1c00bd18:	41f80833          	sub	a6,a6,t6
1c00bd1c:	0187d293          	srli	t0,a5,0x18
1c00bd20:	01a7d393          	srli	t2,a5,0x1a
1c00bd24:	01c7df93          	srli	t6,a5,0x1c
1c00bd28:	8241                	srli	a2,a2,0x10
1c00bd2a:	82c1                	srli	a3,a3,0x10
1c00bd2c:	8341                	srli	a4,a4,0x10
1c00bd2e:	0842                	slli	a6,a6,0x10
1c00bd30:	0f42                	slli	t5,t5,0x10
1c00bd32:	01167633          	and	a2,a2,a7
1c00bd36:	0ec2                	slli	t4,t4,0x10
1c00bd38:	0116f6b3          	and	a3,a3,a7
1c00bd3c:	01177733          	and	a4,a4,a7
1c00bd40:	0032f293          	andi	t0,t0,3
1c00bd44:	0033f393          	andi	t2,t2,3
1c00bd48:	003fff93          	andi	t6,t6,3
1c00bd4c:	83f9                	srli	a5,a5,0x1e
1c00bd4e:	01076733          	or	a4,a4,a6
1c00bd52:	01e66633          	or	a2,a2,t5
1c00bd56:	01d6e6b3          	or	a3,a3,t4
1c00bd5a:	40728833          	sub	a6,t0,t2
1c00bd5e:	40ff87b3          	sub	a5,t6,a5
1c00bd62:	fec52823          	sw	a2,-16(a0)
1c00bd66:	fed52a23          	sw	a3,-12(a0)
1c00bd6a:	fee52c23          	sw	a4,-8(a0)
1c00bd6e:	ff051e23          	sh	a6,-4(a0)
1c00bd72:	fef51f23          	sh	a5,-2(a0)
1c00bd76:	0591                	addi	a1,a1,4
1c00bd78:	f3c512e3          	bne	a0,t3,1c00bc9c <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2+0x18>
1c00bd7c:	4432                	lw	s0,12(sp)
1c00bd7e:	44a2                	lw	s1,8(sp)
1c00bd80:	4912                	lw	s2,4(sp)
1c00bd82:	0141                	addi	sp,sp,16
1c00bd84:	8082                	ret

1c00bd86 <keccak_absorb.constprop.7>:
1c00bd86:	7151                	addi	sp,sp,-240
1c00bd88:	d3a6                	sw	s1,228(sp)
1c00bd8a:	cfce                	sw	s3,220(sp)
1c00bd8c:	cdd2                	sw	s4,216(sp)
1c00bd8e:	cbd6                	sw	s5,212(sp)
1c00bd90:	d786                	sw	ra,236(sp)
1c00bd92:	d5a2                	sw	s0,232(sp)
1c00bd94:	d1ca                	sw	s2,224(sp)
1c00bd96:	89aa                	mv	s3,a0
1c00bd98:	8a32                	mv	s4,a2
1c00bd9a:	84b6                	mv	s1,a3
1c00bd9c:	8aaa                	mv	s5,a0
1c00bd9e:	0c850713          	addi	a4,a0,200
1c00bda2:	87aa                	mv	a5,a0
1c00bda4:	4601                	li	a2,0
1c00bda6:	4681                	li	a3,0
1c00bda8:	c390                	sw	a2,0(a5)
1c00bdaa:	c3d4                	sw	a3,4(a5)
1c00bdac:	07a1                	addi	a5,a5,8
1c00bdae:	fef71be3          	bne	a4,a5,1c00bda4 <keccak_absorb.constprop.7+0x1e>
1c00bdb2:	08700793          	li	a5,135
1c00bdb6:	0747fb63          	bleu	s4,a5,1c00be2c <keccak_absorb.constprop.7+0xa6>
1c00bdba:	08700413          	li	s0,135
1c00bdbe:	08858913          	addi	s2,a1,136
1c00bdc2:	874e                	mv	a4,s3
1c00bdc4:	0015c783          	lbu	a5,1(a1)
1c00bdc8:	0025c603          	lbu	a2,2(a1)
1c00bdcc:	0055c883          	lbu	a7,5(a1)
1c00bdd0:	0045c303          	lbu	t1,4(a1)
1c00bdd4:	0065c803          	lbu	a6,6(a1)
1c00bdd8:	0005ce03          	lbu	t3,0(a1)
1c00bddc:	0035c503          	lbu	a0,3(a1)
1c00bde0:	0075c683          	lbu	a3,7(a1)
1c00bde4:	0642                	slli	a2,a2,0x10
1c00bde6:	07a2                	slli	a5,a5,0x8
1c00bde8:	08a2                	slli	a7,a7,0x8
1c00bdea:	8fd1                	or	a5,a5,a2
1c00bdec:	0068e8b3          	or	a7,a7,t1
1c00bdf0:	0842                	slli	a6,a6,0x10
1c00bdf2:	00072303          	lw	t1,0(a4)
1c00bdf6:	4350                	lw	a2,4(a4)
1c00bdf8:	01c7e7b3          	or	a5,a5,t3
1c00bdfc:	0562                	slli	a0,a0,0x18
1c00bdfe:	01186833          	or	a6,a6,a7
1c00be02:	06e2                	slli	a3,a3,0x18
1c00be04:	8fc9                	or	a5,a5,a0
1c00be06:	0106e6b3          	or	a3,a3,a6
1c00be0a:	00f347b3          	xor	a5,t1,a5
1c00be0e:	8eb1                	xor	a3,a3,a2
1c00be10:	c31c                	sw	a5,0(a4)
1c00be12:	c354                	sw	a3,4(a4)
1c00be14:	05a1                	addi	a1,a1,8
1c00be16:	0721                	addi	a4,a4,8
1c00be18:	fab916e3          	bne	s2,a1,1c00bdc4 <keccak_absorb.constprop.7+0x3e>
1c00be1c:	85ce                	mv	a1,s3
1c00be1e:	854e                	mv	a0,s3
1c00be20:	39f5                	jal	1c00bb1c <KeccakF1600_StatePermute>
1c00be22:	f78a0a13          	addi	s4,s4,-136
1c00be26:	85ca                	mv	a1,s2
1c00be28:	f9446be3          	bltu	s0,s4,1c00bdbe <keccak_absorb.constprop.7+0x38>
1c00be2c:	003c                	addi	a5,sp,8
1c00be2e:	0918                	addi	a4,sp,144
1c00be30:	883e                	mv	a6,a5
1c00be32:	4681                	li	a3,0
1c00be34:	00d82023          	sw	a3,0(a6)
1c00be38:	0811                	addi	a6,a6,4
1c00be3a:	ff071ce3          	bne	a4,a6,1c00be32 <keccak_absorb.constprop.7+0xac>
1c00be3e:	060a0463          	beqz	s4,1c00bea6 <keccak_absorb.constprop.7+0x120>
1c00be42:	fffa0713          	addi	a4,s4,-1
1c00be46:	4689                	li	a3,2
1c00be48:	0ee6f163          	bleu	a4,a3,1c00bf2a <keccak_absorb.constprop.7+0x1a4>
1c00be4c:	002a5893          	srli	a7,s4,0x2
1c00be50:	862e                	mv	a2,a1
1c00be52:	86be                	mv	a3,a5
1c00be54:	4701                	li	a4,0
1c00be56:	4208                	lw	a0,0(a2)
1c00be58:	0705                	addi	a4,a4,1
1c00be5a:	c288                	sw	a0,0(a3)
1c00be5c:	0611                	addi	a2,a2,4
1c00be5e:	0691                	addi	a3,a3,4
1c00be60:	ff176be3          	bltu	a4,a7,1c00be56 <keccak_absorb.constprop.7+0xd0>
1c00be64:	ffca7713          	andi	a4,s4,-4
1c00be68:	02ea0f63          	beq	s4,a4,1c00bea6 <keccak_absorb.constprop.7+0x120>
1c00be6c:	00e586b3          	add	a3,a1,a4
1c00be70:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c00be74:	0988                	addi	a0,sp,208
1c00be76:	00e506b3          	add	a3,a0,a4
1c00be7a:	f2c68c23          	sb	a2,-200(a3)
1c00be7e:	00170693          	addi	a3,a4,1
1c00be82:	0346f263          	bleu	s4,a3,1c00bea6 <keccak_absorb.constprop.7+0x120>
1c00be86:	00d58633          	add	a2,a1,a3
1c00be8a:	00064603          	lbu	a2,0(a2)
1c00be8e:	96aa                	add	a3,a3,a0
1c00be90:	f2c68c23          	sb	a2,-200(a3)
1c00be94:	0709                	addi	a4,a4,2
1c00be96:	01477863          	bleu	s4,a4,1c00bea6 <keccak_absorb.constprop.7+0x120>
1c00be9a:	95ba                	add	a1,a1,a4
1c00be9c:	0005c683          	lbu	a3,0(a1)
1c00bea0:	972a                	add	a4,a4,a0
1c00bea2:	f2d70c23          	sb	a3,-200(a4)
1c00bea6:	0990                	addi	a2,sp,208
1c00bea8:	9a32                	add	s4,s4,a2
1c00beaa:	f29a0c23          	sb	s1,-200(s4)
1c00beae:	08f14703          	lbu	a4,143(sp)
1c00beb2:	f8076713          	ori	a4,a4,-128
1c00beb6:	08e107a3          	sb	a4,143(sp)
1c00beba:	0017c703          	lbu	a4,1(a5)
1c00bebe:	0027c883          	lbu	a7,2(a5)
1c00bec2:	0057c503          	lbu	a0,5(a5)
1c00bec6:	0047c303          	lbu	t1,4(a5)
1c00beca:	0067c583          	lbu	a1,6(a5)
1c00bece:	0007ce03          	lbu	t3,0(a5)
1c00bed2:	0037c603          	lbu	a2,3(a5)
1c00bed6:	0077c683          	lbu	a3,7(a5)
1c00beda:	08c2                	slli	a7,a7,0x10
1c00bedc:	0722                	slli	a4,a4,0x8
1c00bede:	0522                	slli	a0,a0,0x8
1c00bee0:	01176733          	or	a4,a4,a7
1c00bee4:	00656533          	or	a0,a0,t1
1c00bee8:	05c2                	slli	a1,a1,0x10
1c00beea:	000aa303          	lw	t1,0(s5)
1c00beee:	004aa883          	lw	a7,4(s5)
1c00bef2:	01c76733          	or	a4,a4,t3
1c00bef6:	0662                	slli	a2,a2,0x18
1c00bef8:	8dc9                	or	a1,a1,a0
1c00befa:	06e2                	slli	a3,a3,0x18
1c00befc:	8f51                	or	a4,a4,a2
1c00befe:	8ecd                	or	a3,a3,a1
1c00bf00:	00e34733          	xor	a4,t1,a4
1c00bf04:	00d8c6b3          	xor	a3,a7,a3
1c00bf08:	00eaa023          	sw	a4,0(s5)
1c00bf0c:	00daa223          	sw	a3,4(s5)
1c00bf10:	07a1                	addi	a5,a5,8
1c00bf12:	0aa1                	addi	s5,s5,8
1c00bf14:	faf813e3          	bne	a6,a5,1c00beba <keccak_absorb.constprop.7+0x134>
1c00bf18:	50be                	lw	ra,236(sp)
1c00bf1a:	542e                	lw	s0,232(sp)
1c00bf1c:	549e                	lw	s1,228(sp)
1c00bf1e:	590e                	lw	s2,224(sp)
1c00bf20:	49fe                	lw	s3,220(sp)
1c00bf22:	4a6e                	lw	s4,216(sp)
1c00bf24:	4ade                	lw	s5,212(sp)
1c00bf26:	616d                	addi	sp,sp,240
1c00bf28:	8082                	ret
1c00bf2a:	4701                	li	a4,0
1c00bf2c:	b781                	j	1c00be6c <keccak_absorb.constprop.7+0xe6>

1c00bf2e <shake128_absorb>:
1c00bf2e:	7151                	addi	sp,sp,-240
1c00bf30:	d5a2                	sw	s0,232(sp)
1c00bf32:	842a                	mv	s0,a0
1c00bf34:	0c800513          	li	a0,200
1c00bf38:	d1ca                	sw	s2,224(sp)
1c00bf3a:	cfce                	sw	s3,220(sp)
1c00bf3c:	d786                	sw	ra,236(sp)
1c00bf3e:	d3a6                	sw	s1,228(sp)
1c00bf40:	cdd2                	sw	s4,216(sp)
1c00bf42:	892e                	mv	s2,a1
1c00bf44:	89b2                	mv	s3,a2
1c00bf46:	2bf030ef          	jal	ra,1c00fa04 <pi_l2_malloc>
1c00bf4a:	c008                	sw	a0,0(s0)
1c00bf4c:	1a050663          	beqz	a0,1c00c0f8 <shake128_absorb+0x1ca>
1c00bf50:	8a2a                	mv	s4,a0
1c00bf52:	0c850713          	addi	a4,a0,200
1c00bf56:	87aa                	mv	a5,a0
1c00bf58:	4601                	li	a2,0
1c00bf5a:	4681                	li	a3,0
1c00bf5c:	c390                	sw	a2,0(a5)
1c00bf5e:	c3d4                	sw	a3,4(a5)
1c00bf60:	07a1                	addi	a5,a5,8
1c00bf62:	fef71be3          	bne	a4,a5,1c00bf58 <shake128_absorb+0x2a>
1c00bf66:	0a700793          	li	a5,167
1c00bf6a:	0937f163          	bleu	s3,a5,1c00bfec <shake128_absorb+0xbe>
1c00bf6e:	412a04b3          	sub	s1,s4,s2
1c00bf72:	0a700413          	li	s0,167
1c00bf76:	85ca                	mv	a1,s2
1c00bf78:	0a890913          	addi	s2,s2,168
1c00bf7c:	0015c783          	lbu	a5,1(a1)
1c00bf80:	0025c603          	lbu	a2,2(a1)
1c00bf84:	0055c803          	lbu	a6,5(a1)
1c00bf88:	0045c303          	lbu	t1,4(a1)
1c00bf8c:	0065c503          	lbu	a0,6(a1)
1c00bf90:	0005ce03          	lbu	t3,0(a1)
1c00bf94:	0035c683          	lbu	a3,3(a1)
1c00bf98:	0075c703          	lbu	a4,7(a1)
1c00bf9c:	0642                	slli	a2,a2,0x10
1c00bf9e:	07a2                	slli	a5,a5,0x8
1c00bfa0:	0822                	slli	a6,a6,0x8
1c00bfa2:	00b488b3          	add	a7,s1,a1
1c00bfa6:	8fd1                	or	a5,a5,a2
1c00bfa8:	00686833          	or	a6,a6,t1
1c00bfac:	0542                	slli	a0,a0,0x10
1c00bfae:	0008a603          	lw	a2,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00bfb2:	0048a303          	lw	t1,4(a7)
1c00bfb6:	01c7e7b3          	or	a5,a5,t3
1c00bfba:	06e2                	slli	a3,a3,0x18
1c00bfbc:	01056533          	or	a0,a0,a6
1c00bfc0:	0762                	slli	a4,a4,0x18
1c00bfc2:	8fd5                	or	a5,a5,a3
1c00bfc4:	8f49                	or	a4,a4,a0
1c00bfc6:	8fb1                	xor	a5,a5,a2
1c00bfc8:	00e34733          	xor	a4,t1,a4
1c00bfcc:	00f8a023          	sw	a5,0(a7)
1c00bfd0:	00e8a223          	sw	a4,4(a7)
1c00bfd4:	05a1                	addi	a1,a1,8
1c00bfd6:	fab913e3          	bne	s2,a1,1c00bf7c <shake128_absorb+0x4e>
1c00bfda:	85d2                	mv	a1,s4
1c00bfdc:	8552                	mv	a0,s4
1c00bfde:	f5898993          	addi	s3,s3,-168
1c00bfe2:	3e2d                	jal	1c00bb1c <KeccakF1600_StatePermute>
1c00bfe4:	f5848493          	addi	s1,s1,-168
1c00bfe8:	f93467e3          	bltu	s0,s3,1c00bf76 <shake128_absorb+0x48>
1c00bfec:	191c                	addi	a5,sp,176
1c00bfee:	00810813          	addi	a6,sp,8
1c00bff2:	4681                	li	a3,0
1c00bff4:	00d82023          	sw	a3,0(a6)
1c00bff8:	0811                	addi	a6,a6,4
1c00bffa:	ff079ce3          	bne	a5,a6,1c00bff2 <shake128_absorb+0xc4>
1c00bffe:	06098563          	beqz	s3,1c00c068 <shake128_absorb+0x13a>
1c00c002:	fff98793          	addi	a5,s3,-1
1c00c006:	4709                	li	a4,2
1c00c008:	0ef77663          	bleu	a5,a4,1c00c0f4 <shake128_absorb+0x1c6>
1c00c00c:	0029d513          	srli	a0,s3,0x2
1c00c010:	86ca                	mv	a3,s2
1c00c012:	0038                	addi	a4,sp,8
1c00c014:	4781                	li	a5,0
1c00c016:	4290                	lw	a2,0(a3)
1c00c018:	0785                	addi	a5,a5,1
1c00c01a:	c310                	sw	a2,0(a4)
1c00c01c:	0691                	addi	a3,a3,4
1c00c01e:	0711                	addi	a4,a4,4
1c00c020:	fea7ebe3          	bltu	a5,a0,1c00c016 <shake128_absorb+0xe8>
1c00c024:	ffc9f793          	andi	a5,s3,-4
1c00c028:	04f98063          	beq	s3,a5,1c00c068 <shake128_absorb+0x13a>
1c00c02c:	00f90733          	add	a4,s2,a5
1c00c030:	00074683          	lbu	a3,0(a4)
1c00c034:	0990                	addi	a2,sp,208
1c00c036:	00f60733          	add	a4,a2,a5
1c00c03a:	f2d70c23          	sb	a3,-200(a4)
1c00c03e:	00178713          	addi	a4,a5,1
1c00c042:	03377363          	bleu	s3,a4,1c00c068 <shake128_absorb+0x13a>
1c00c046:	00e906b3          	add	a3,s2,a4
1c00c04a:	0006c683          	lbu	a3,0(a3)
1c00c04e:	9732                	add	a4,a4,a2
1c00c050:	f2d70c23          	sb	a3,-200(a4)
1c00c054:	0789                	addi	a5,a5,2
1c00c056:	0137f963          	bleu	s3,a5,1c00c068 <shake128_absorb+0x13a>
1c00c05a:	00f905b3          	add	a1,s2,a5
1c00c05e:	0005c703          	lbu	a4,0(a1)
1c00c062:	97b2                	add	a5,a5,a2
1c00c064:	f2e78c23          	sb	a4,-200(a5)
1c00c068:	0994                	addi	a3,sp,208
1c00c06a:	47fd                	li	a5,31
1c00c06c:	99b6                	add	s3,s3,a3
1c00c06e:	f2f98c23          	sb	a5,-200(s3)
1c00c072:	0af14703          	lbu	a4,175(sp)
1c00c076:	003c                	addi	a5,sp,8
1c00c078:	f8076713          	ori	a4,a4,-128
1c00c07c:	0ae107a3          	sb	a4,175(sp)
1c00c080:	40fa0a33          	sub	s4,s4,a5
1c00c084:	0017c703          	lbu	a4,1(a5)
1c00c088:	0027c303          	lbu	t1,2(a5)
1c00c08c:	0057c503          	lbu	a0,5(a5)
1c00c090:	0047ce03          	lbu	t3,4(a5)
1c00c094:	0067c583          	lbu	a1,6(a5)
1c00c098:	0007ce83          	lbu	t4,0(a5)
1c00c09c:	0037c603          	lbu	a2,3(a5)
1c00c0a0:	0077c683          	lbu	a3,7(a5)
1c00c0a4:	0342                	slli	t1,t1,0x10
1c00c0a6:	0722                	slli	a4,a4,0x8
1c00c0a8:	0522                	slli	a0,a0,0x8
1c00c0aa:	00fa08b3          	add	a7,s4,a5
1c00c0ae:	00676733          	or	a4,a4,t1
1c00c0b2:	01c56533          	or	a0,a0,t3
1c00c0b6:	05c2                	slli	a1,a1,0x10
1c00c0b8:	0008ae03          	lw	t3,0(a7)
1c00c0bc:	0048a303          	lw	t1,4(a7)
1c00c0c0:	01d76733          	or	a4,a4,t4
1c00c0c4:	0662                	slli	a2,a2,0x18
1c00c0c6:	8dc9                	or	a1,a1,a0
1c00c0c8:	06e2                	slli	a3,a3,0x18
1c00c0ca:	8f51                	or	a4,a4,a2
1c00c0cc:	8ecd                	or	a3,a3,a1
1c00c0ce:	00ee4733          	xor	a4,t3,a4
1c00c0d2:	00d346b3          	xor	a3,t1,a3
1c00c0d6:	00e8a023          	sw	a4,0(a7)
1c00c0da:	00d8a223          	sw	a3,4(a7)
1c00c0de:	07a1                	addi	a5,a5,8
1c00c0e0:	faf812e3          	bne	a6,a5,1c00c084 <shake128_absorb+0x156>
1c00c0e4:	50be                	lw	ra,236(sp)
1c00c0e6:	542e                	lw	s0,232(sp)
1c00c0e8:	549e                	lw	s1,228(sp)
1c00c0ea:	590e                	lw	s2,224(sp)
1c00c0ec:	49fe                	lw	s3,220(sp)
1c00c0ee:	4a6e                	lw	s4,216(sp)
1c00c0f0:	616d                	addi	sp,sp,240
1c00c0f2:	8082                	ret
1c00c0f4:	4781                	li	a5,0
1c00c0f6:	bf1d                	j	1c00c02c <shake128_absorb+0xfe>
1c00c0f8:	06f00513          	li	a0,111
1c00c0fc:	7ba020ef          	jal	ra,1c00e8b6 <exit>

1c00c100 <shake128_squeezeblocks>:
1c00c100:	1101                	addi	sp,sp,-32
1c00c102:	c452                	sw	s4,8(sp)
1c00c104:	ce06                	sw	ra,28(sp)
1c00c106:	cc22                	sw	s0,24(sp)
1c00c108:	ca26                	sw	s1,20(sp)
1c00c10a:	c84a                	sw	s2,16(sp)
1c00c10c:	c64e                	sw	s3,12(sp)
1c00c10e:	c256                	sw	s5,4(sp)
1c00c110:	00062a03          	lw	s4,0(a2)
1c00c114:	cdc9                	beqz	a1,1c00c1ae <shake128_squeezeblocks+0xae>
1c00c116:	7941                	lui	s2,0xffff0
1c00c118:	ff0104b7          	lui	s1,0xff010
1c00c11c:	01000437          	lui	s0,0x1000
1c00c120:	89ae                	mv	s3,a1
1c00c122:	8aaa                	mv	s5,a0
1c00c124:	0ff90913          	addi	s2,s2,255 # ffff00ff <pulp__FC+0xffff0100>
1c00c128:	14fd                	addi	s1,s1,-1
1c00c12a:	147d                	addi	s0,s0,-1
1c00c12c:	85d2                	mv	a1,s4
1c00c12e:	8552                	mv	a0,s4
1c00c130:	32f5                	jal	1c00bb1c <KeccakF1600_StatePermute>
1c00c132:	85d6                	mv	a1,s5
1c00c134:	8852                	mv	a6,s4
1c00c136:	0a8a8513          	addi	a0,s5,168
1c00c13a:	00082603          	lw	a2,0(a6)
1c00c13e:	00482683          	lw	a3,4(a6)
1c00c142:	00865313          	srli	t1,a2,0x8
1c00c146:	0086d893          	srli	a7,a3,0x8
1c00c14a:	0ff67713          	andi	a4,a2,255
1c00c14e:	0ff6f793          	andi	a5,a3,255
1c00c152:	0ff37313          	andi	t1,t1,255
1c00c156:	0ff8f893          	andi	a7,a7,255
1c00c15a:	0322                	slli	t1,t1,0x8
1c00c15c:	08a2                	slli	a7,a7,0x8
1c00c15e:	01277733          	and	a4,a4,s2
1c00c162:	0127f7b3          	and	a5,a5,s2
1c00c166:	00676733          	or	a4,a4,t1
1c00c16a:	0117e7b3          	or	a5,a5,a7
1c00c16e:	00ff0337          	lui	t1,0xff0
1c00c172:	00ff08b7          	lui	a7,0xff0
1c00c176:	00667333          	and	t1,a2,t1
1c00c17a:	0116f8b3          	and	a7,a3,a7
1c00c17e:	8f65                	and	a4,a4,s1
1c00c180:	8fe5                	and	a5,a5,s1
1c00c182:	00676733          	or	a4,a4,t1
1c00c186:	8261                	srli	a2,a2,0x18
1c00c188:	0117e7b3          	or	a5,a5,a7
1c00c18c:	82e1                	srli	a3,a3,0x18
1c00c18e:	0662                	slli	a2,a2,0x18
1c00c190:	8f61                	and	a4,a4,s0
1c00c192:	06e2                	slli	a3,a3,0x18
1c00c194:	8fe1                	and	a5,a5,s0
1c00c196:	8f51                	or	a4,a4,a2
1c00c198:	8fd5                	or	a5,a5,a3
1c00c19a:	c198                	sw	a4,0(a1)
1c00c19c:	c1dc                	sw	a5,4(a1)
1c00c19e:	05a1                	addi	a1,a1,8
1c00c1a0:	0821                	addi	a6,a6,8
1c00c1a2:	f8b51ce3          	bne	a0,a1,1c00c13a <shake128_squeezeblocks+0x3a>
1c00c1a6:	19fd                	addi	s3,s3,-1
1c00c1a8:	8aaa                	mv	s5,a0
1c00c1aa:	f80991e3          	bnez	s3,1c00c12c <shake128_squeezeblocks+0x2c>
1c00c1ae:	40f2                	lw	ra,28(sp)
1c00c1b0:	4462                	lw	s0,24(sp)
1c00c1b2:	44d2                	lw	s1,20(sp)
1c00c1b4:	4942                	lw	s2,16(sp)
1c00c1b6:	49b2                	lw	s3,12(sp)
1c00c1b8:	4a22                	lw	s4,8(sp)
1c00c1ba:	4a92                	lw	s5,4(sp)
1c00c1bc:	6105                	addi	sp,sp,32
1c00c1be:	8082                	ret

1c00c1c0 <shake128_ctx_release>:
1c00c1c0:	4108                	lw	a0,0(a0)
1c00c1c2:	0c800593          	li	a1,200
1c00c1c6:	04b0306f          	j	1c00fa10 <pi_l2_free>

1c00c1ca <shake256>:
1c00c1ca:	7131                	addi	sp,sp,-192
1c00c1cc:	db26                	sw	s1,180(sp)
1c00c1ce:	d94a                	sw	s2,176(sp)
1c00c1d0:	08800493          	li	s1,136
1c00c1d4:	892a                	mv	s2,a0
1c00c1d6:	0c800513          	li	a0,200
1c00c1da:	dd22                	sw	s0,184(sp)
1c00c1dc:	d74e                	sw	s3,172(sp)
1c00c1de:	d552                	sw	s4,168(sp)
1c00c1e0:	df06                	sw	ra,188(sp)
1c00c1e2:	d356                	sw	s5,164(sp)
1c00c1e4:	d15a                	sw	s6,160(sp)
1c00c1e6:	cf5e                	sw	s7,156(sp)
1c00c1e8:	cd62                	sw	s8,152(sp)
1c00c1ea:	cb66                	sw	s9,148(sp)
1c00c1ec:	89ae                	mv	s3,a1
1c00c1ee:	8432                	mv	s0,a2
1c00c1f0:	8a36                	mv	s4,a3
1c00c1f2:	0295d4b3          	divu	s1,a1,s1
1c00c1f6:	00f030ef          	jal	ra,1c00fa04 <pi_l2_malloc>
1c00c1fa:	20050263          	beqz	a0,1c00c3fe <shake256+0x234>
1c00c1fe:	46fd                	li	a3,31
1c00c200:	8652                	mv	a2,s4
1c00c202:	85a2                	mv	a1,s0
1c00c204:	8b2a                	mv	s6,a0
1c00c206:	3641                	jal	1c00bd86 <keccak_absorb.constprop.7>
1c00c208:	c4dd                	beqz	s1,1c00c2b6 <shake256+0xec>
1c00c20a:	00449713          	slli	a4,s1,0x4
1c00c20e:	00970433          	add	s0,a4,s1
1c00c212:	040e                	slli	s0,s0,0x3
1c00c214:	7bc1                	lui	s7,0xffff0
1c00c216:	ff010ab7          	lui	s5,0xff010
1c00c21a:	01000a37          	lui	s4,0x1000
1c00c21e:	412b0c33          	sub	s8,s6,s2
1c00c222:	944a                	add	s0,s0,s2
1c00c224:	8cca                	mv	s9,s2
1c00c226:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00c22a:	1afd                	addi	s5,s5,-1
1c00c22c:	1a7d                	addi	s4,s4,-1
1c00c22e:	85da                	mv	a1,s6
1c00c230:	855a                	mv	a0,s6
1c00c232:	30ed                	jal	1c00bb1c <KeccakF1600_StatePermute>
1c00c234:	8666                	mv	a2,s9
1c00c236:	088c8593          	addi	a1,s9,136
1c00c23a:	00cc07b3          	add	a5,s8,a2
1c00c23e:	4388                	lw	a0,0(a5)
1c00c240:	43d4                	lw	a3,4(a5)
1c00c242:	00855893          	srli	a7,a0,0x8
1c00c246:	0086d813          	srli	a6,a3,0x8
1c00c24a:	0ff57713          	andi	a4,a0,255
1c00c24e:	0ff6f793          	andi	a5,a3,255
1c00c252:	0ff8f893          	andi	a7,a7,255
1c00c256:	0ff87813          	andi	a6,a6,255
1c00c25a:	08a2                	slli	a7,a7,0x8
1c00c25c:	0822                	slli	a6,a6,0x8
1c00c25e:	01777733          	and	a4,a4,s7
1c00c262:	0177f7b3          	and	a5,a5,s7
1c00c266:	01176733          	or	a4,a4,a7
1c00c26a:	0107e7b3          	or	a5,a5,a6
1c00c26e:	00ff08b7          	lui	a7,0xff0
1c00c272:	00ff0837          	lui	a6,0xff0
1c00c276:	011578b3          	and	a7,a0,a7
1c00c27a:	0106f833          	and	a6,a3,a6
1c00c27e:	01577733          	and	a4,a4,s5
1c00c282:	0157f7b3          	and	a5,a5,s5
1c00c286:	01176733          	or	a4,a4,a7
1c00c28a:	8161                	srli	a0,a0,0x18
1c00c28c:	0107e7b3          	or	a5,a5,a6
1c00c290:	82e1                	srli	a3,a3,0x18
1c00c292:	0562                	slli	a0,a0,0x18
1c00c294:	01477733          	and	a4,a4,s4
1c00c298:	06e2                	slli	a3,a3,0x18
1c00c29a:	0147f7b3          	and	a5,a5,s4
1c00c29e:	8f49                	or	a4,a4,a0
1c00c2a0:	8fd5                	or	a5,a5,a3
1c00c2a2:	c218                	sw	a4,0(a2)
1c00c2a4:	c25c                	sw	a5,4(a2)
1c00c2a6:	0621                	addi	a2,a2,8
1c00c2a8:	f8c599e3          	bne	a1,a2,1c00c23a <shake256+0x70>
1c00c2ac:	8cae                	mv	s9,a1
1c00c2ae:	f78c0c13          	addi	s8,s8,-136
1c00c2b2:	f6b41ee3          	bne	s0,a1,1c00c22e <shake256+0x64>
1c00c2b6:	08800793          	li	a5,136
1c00c2ba:	02f9f9b3          	remu	s3,s3,a5
1c00c2be:	02099363          	bnez	s3,1c00c2e4 <shake256+0x11a>
1c00c2c2:	546a                	lw	s0,184(sp)
1c00c2c4:	50fa                	lw	ra,188(sp)
1c00c2c6:	54da                	lw	s1,180(sp)
1c00c2c8:	594a                	lw	s2,176(sp)
1c00c2ca:	59ba                	lw	s3,172(sp)
1c00c2cc:	5a2a                	lw	s4,168(sp)
1c00c2ce:	5a9a                	lw	s5,164(sp)
1c00c2d0:	4bfa                	lw	s7,156(sp)
1c00c2d2:	4c6a                	lw	s8,152(sp)
1c00c2d4:	4cda                	lw	s9,148(sp)
1c00c2d6:	855a                	mv	a0,s6
1c00c2d8:	5b0a                	lw	s6,160(sp)
1c00c2da:	0c800593          	li	a1,200
1c00c2de:	6129                	addi	sp,sp,192
1c00c2e0:	7300306f          	j	1c00fa10 <pi_l2_free>
1c00c2e4:	85da                	mv	a1,s6
1c00c2e6:	855a                	mv	a0,s6
1c00c2e8:	835ff0ef          	jal	ra,1c00bb1c <KeccakF1600_StatePermute>
1c00c2ec:	002c                	addi	a1,sp,8
1c00c2ee:	78c1                	lui	a7,0xffff0
1c00c2f0:	ff010837          	lui	a6,0xff010
1c00c2f4:	01000537          	lui	a0,0x1000
1c00c2f8:	09010e13          	addi	t3,sp,144
1c00c2fc:	862e                	mv	a2,a1
1c00c2fe:	40bb0333          	sub	t1,s6,a1
1c00c302:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00c306:	187d                	addi	a6,a6,-1
1c00c308:	157d                	addi	a0,a0,-1
1c00c30a:	00c307b3          	add	a5,t1,a2
1c00c30e:	0007ae83          	lw	t4,0(a5)
1c00c312:	43d4                	lw	a3,4(a5)
1c00c314:	008edf93          	srli	t6,t4,0x8
1c00c318:	0086df13          	srli	t5,a3,0x8
1c00c31c:	0ffef713          	andi	a4,t4,255
1c00c320:	0ff6f793          	andi	a5,a3,255
1c00c324:	0fffff93          	andi	t6,t6,255
1c00c328:	0fff7f13          	andi	t5,t5,255
1c00c32c:	0fa2                	slli	t6,t6,0x8
1c00c32e:	0f22                	slli	t5,t5,0x8
1c00c330:	01177733          	and	a4,a4,a7
1c00c334:	0117f7b3          	and	a5,a5,a7
1c00c338:	01f76733          	or	a4,a4,t6
1c00c33c:	01e7e7b3          	or	a5,a5,t5
1c00c340:	00ff0fb7          	lui	t6,0xff0
1c00c344:	00ff0f37          	lui	t5,0xff0
1c00c348:	01feffb3          	and	t6,t4,t6
1c00c34c:	01e6ff33          	and	t5,a3,t5
1c00c350:	01077733          	and	a4,a4,a6
1c00c354:	0107f7b3          	and	a5,a5,a6
1c00c358:	01f76733          	or	a4,a4,t6
1c00c35c:	018ede93          	srli	t4,t4,0x18
1c00c360:	01e7e7b3          	or	a5,a5,t5
1c00c364:	82e1                	srli	a3,a3,0x18
1c00c366:	0ee2                	slli	t4,t4,0x18
1c00c368:	8f69                	and	a4,a4,a0
1c00c36a:	06e2                	slli	a3,a3,0x18
1c00c36c:	8fe9                	and	a5,a5,a0
1c00c36e:	01d76733          	or	a4,a4,t4
1c00c372:	8fd5                	or	a5,a5,a3
1c00c374:	c218                	sw	a4,0(a2)
1c00c376:	c25c                	sw	a5,4(a2)
1c00c378:	0621                	addi	a2,a2,8
1c00c37a:	f8ce18e3          	bne	t3,a2,1c00c30a <shake256+0x140>
1c00c37e:	fff98793          	addi	a5,s3,-1
1c00c382:	4709                	li	a4,2
1c00c384:	06f77963          	bleu	a5,a4,1c00c3f6 <shake256+0x22c>
1c00c388:	00449713          	slli	a4,s1,0x4
1c00c38c:	009707b3          	add	a5,a4,s1
1c00c390:	078e                	slli	a5,a5,0x3
1c00c392:	0029d513          	srli	a0,s3,0x2
1c00c396:	97ca                	add	a5,a5,s2
1c00c398:	4681                	li	a3,0
1c00c39a:	4190                	lw	a2,0(a1)
1c00c39c:	0685                	addi	a3,a3,1
1c00c39e:	c390                	sw	a2,0(a5)
1c00c3a0:	0591                	addi	a1,a1,4
1c00c3a2:	0791                	addi	a5,a5,4
1c00c3a4:	fea6ebe3          	bltu	a3,a0,1c00c39a <shake256+0x1d0>
1c00c3a8:	ffc9f693          	andi	a3,s3,-4
1c00c3ac:	f0d98be3          	beq	s3,a3,1c00c2c2 <shake256+0xf8>
1c00c3b0:	009707b3          	add	a5,a4,s1
1c00c3b4:	090c                	addi	a1,sp,144
1c00c3b6:	00d58733          	add	a4,a1,a3
1c00c3ba:	078e                	slli	a5,a5,0x3
1c00c3bc:	f7874603          	lbu	a2,-136(a4)
1c00c3c0:	97ca                	add	a5,a5,s2
1c00c3c2:	00d78733          	add	a4,a5,a3
1c00c3c6:	00c70023          	sb	a2,0(a4)
1c00c3ca:	00168713          	addi	a4,a3,1
1c00c3ce:	ef377ae3          	bleu	s3,a4,1c00c2c2 <shake256+0xf8>
1c00c3d2:	00e58633          	add	a2,a1,a4
1c00c3d6:	f7864603          	lbu	a2,-136(a2)
1c00c3da:	973e                	add	a4,a4,a5
1c00c3dc:	00c70023          	sb	a2,0(a4)
1c00c3e0:	0689                	addi	a3,a3,2
1c00c3e2:	ef36f0e3          	bleu	s3,a3,1c00c2c2 <shake256+0xf8>
1c00c3e6:	00d58733          	add	a4,a1,a3
1c00c3ea:	f7874703          	lbu	a4,-136(a4)
1c00c3ee:	97b6                	add	a5,a5,a3
1c00c3f0:	00e78023          	sb	a4,0(a5)
1c00c3f4:	b5f9                	j	1c00c2c2 <shake256+0xf8>
1c00c3f6:	4681                	li	a3,0
1c00c3f8:	00449713          	slli	a4,s1,0x4
1c00c3fc:	bf55                	j	1c00c3b0 <shake256+0x1e6>
1c00c3fe:	06f00513          	li	a0,111
1c00c402:	4b4020ef          	jal	ra,1c00e8b6 <exit>

1c00c406 <sha3_256>:
1c00c406:	7111                	addi	sp,sp,-256
1c00c408:	dda2                	sw	s0,248(sp)
1c00c40a:	4699                	li	a3,6
1c00c40c:	842a                	mv	s0,a0
1c00c40e:	0028                	addi	a0,sp,8
1c00c410:	df86                	sw	ra,252(sp)
1c00c412:	dba6                	sw	s1,244(sp)
1c00c414:	d9ca                	sw	s2,240(sp)
1c00c416:	d7ce                	sw	s3,236(sp)
1c00c418:	d5d2                	sw	s4,232(sp)
1c00c41a:	d3d6                	sw	s5,228(sp)
1c00c41c:	d1da                	sw	s6,224(sp)
1c00c41e:	cfde                	sw	s7,220(sp)
1c00c420:	cde2                	sw	s8,216(sp)
1c00c422:	cbe6                	sw	s9,212(sp)
1c00c424:	c9ea                	sw	s10,208(sp)
1c00c426:	3285                	jal	1c00bd86 <keccak_absorb.constprop.7>
1c00c428:	002c                	addi	a1,sp,8
1c00c42a:	852e                	mv	a0,a1
1c00c42c:	ef0ff0ef          	jal	ra,1c00bb1c <KeccakF1600_StatePermute>
1c00c430:	4f32                	lw	t5,12(sp)
1c00c432:	4922                	lw	s2,8(sp)
1c00c434:	4ec2                	lw	t4,16(sp)
1c00c436:	4e52                	lw	t3,20(sp)
1c00c438:	4362                	lw	t1,24(sp)
1c00c43a:	44f2                	lw	s1,28(sp)
1c00c43c:	5382                	lw	t2,32(sp)
1c00c43e:	5292                	lw	t0,36(sp)
1c00c440:	00895813          	srli	a6,s2,0x8
1c00c444:	008f5513          	srli	a0,t5,0x8
1c00c448:	008ed593          	srli	a1,t4,0x8
1c00c44c:	008e5613          	srli	a2,t3,0x8
1c00c450:	00835693          	srli	a3,t1,0x8
1c00c454:	0084d713          	srli	a4,s1,0x8
1c00c458:	0083d993          	srli	s3,t2,0x8
1c00c45c:	0082df93          	srli	t6,t0,0x8
1c00c460:	0ff87813          	andi	a6,a6,255
1c00c464:	0ff57513          	andi	a0,a0,255
1c00c468:	0ff5f593          	andi	a1,a1,255
1c00c46c:	0ff67613          	andi	a2,a2,255
1c00c470:	0ff6f693          	andi	a3,a3,255
1c00c474:	0ff77713          	andi	a4,a4,255
1c00c478:	0ff9f993          	andi	s3,s3,255
1c00c47c:	0fffff93          	andi	t6,t6,255
1c00c480:	0fff7d13          	andi	s10,t5,255
1c00c484:	0ffefc93          	andi	s9,t4,255
1c00c488:	0ffe7c13          	andi	s8,t3,255
1c00c48c:	0ff37b93          	andi	s7,t1,255
1c00c490:	0ff4fb13          	andi	s6,s1,255
1c00c494:	0ff3fa93          	andi	s5,t2,255
1c00c498:	0ff2fa13          	andi	s4,t0,255
1c00c49c:	0822                	slli	a6,a6,0x8
1c00c49e:	0ff97893          	andi	a7,s2,255
1c00c4a2:	0522                	slli	a0,a0,0x8
1c00c4a4:	05a2                	slli	a1,a1,0x8
1c00c4a6:	0622                	slli	a2,a2,0x8
1c00c4a8:	06a2                	slli	a3,a3,0x8
1c00c4aa:	0722                	slli	a4,a4,0x8
1c00c4ac:	09a2                	slli	s3,s3,0x8
1c00c4ae:	0fa2                	slli	t6,t6,0x8
1c00c4b0:	ff0107b7          	lui	a5,0xff010
1c00c4b4:	17fd                	addi	a5,a5,-1
1c00c4b6:	01fa6fb3          	or	t6,s4,t6
1c00c4ba:	0108e8b3          	or	a7,a7,a6
1c00c4be:	00ff0a37          	lui	s4,0xff0
1c00c4c2:	00ad6833          	or	a6,s10,a0
1c00c4c6:	00bce533          	or	a0,s9,a1
1c00c4ca:	00ff0d37          	lui	s10,0xff0
1c00c4ce:	00cc65b3          	or	a1,s8,a2
1c00c4d2:	00ff0cb7          	lui	s9,0xff0
1c00c4d6:	00dbe633          	or	a2,s7,a3
1c00c4da:	00ff0c37          	lui	s8,0xff0
1c00c4de:	00eb66b3          	or	a3,s6,a4
1c00c4e2:	00ff0bb7          	lui	s7,0xff0
1c00c4e6:	013ae733          	or	a4,s5,s3
1c00c4ea:	00ff0b37          	lui	s6,0xff0
1c00c4ee:	00ff0ab7          	lui	s5,0xff0
1c00c4f2:	00ff09b7          	lui	s3,0xff0
1c00c4f6:	01a97d33          	and	s10,s2,s10
1c00c4fa:	019f7cb3          	and	s9,t5,s9
1c00c4fe:	018efc33          	and	s8,t4,s8
1c00c502:	017e7bb3          	and	s7,t3,s7
1c00c506:	01637b33          	and	s6,t1,s6
1c00c50a:	0154fab3          	and	s5,s1,s5
1c00c50e:	0143fa33          	and	s4,t2,s4
1c00c512:	0132f9b3          	and	s3,t0,s3
1c00c516:	00f8f8b3          	and	a7,a7,a5
1c00c51a:	00f87833          	and	a6,a6,a5
1c00c51e:	8d7d                	and	a0,a0,a5
1c00c520:	8dfd                	and	a1,a1,a5
1c00c522:	8e7d                	and	a2,a2,a5
1c00c524:	8efd                	and	a3,a3,a5
1c00c526:	8f7d                	and	a4,a4,a5
1c00c528:	00fff7b3          	and	a5,t6,a5
1c00c52c:	01000fb7          	lui	t6,0x1000
1c00c530:	1ffd                	addi	t6,t6,-1
1c00c532:	01a8e8b3          	or	a7,a7,s10
1c00c536:	01986833          	or	a6,a6,s9
1c00c53a:	01856533          	or	a0,a0,s8
1c00c53e:	0175e5b3          	or	a1,a1,s7
1c00c542:	01666633          	or	a2,a2,s6
1c00c546:	0156e6b3          	or	a3,a3,s5
1c00c54a:	01476733          	or	a4,a4,s4
1c00c54e:	0137e7b3          	or	a5,a5,s3
1c00c552:	01895913          	srli	s2,s2,0x18
1c00c556:	018f5f13          	srli	t5,t5,0x18
1c00c55a:	018ede93          	srli	t4,t4,0x18
1c00c55e:	018e5e13          	srli	t3,t3,0x18
1c00c562:	01835313          	srli	t1,t1,0x18
1c00c566:	80e1                	srli	s1,s1,0x18
1c00c568:	0183d393          	srli	t2,t2,0x18
1c00c56c:	0182d293          	srli	t0,t0,0x18
1c00c570:	0962                	slli	s2,s2,0x18
1c00c572:	04e2                	slli	s1,s1,0x18
1c00c574:	01f8f8b3          	and	a7,a7,t6
1c00c578:	0f62                	slli	t5,t5,0x18
1c00c57a:	01f87833          	and	a6,a6,t6
1c00c57e:	0ee2                	slli	t4,t4,0x18
1c00c580:	01f57533          	and	a0,a0,t6
1c00c584:	0e62                	slli	t3,t3,0x18
1c00c586:	01f5f5b3          	and	a1,a1,t6
1c00c58a:	0362                	slli	t1,t1,0x18
1c00c58c:	01f67633          	and	a2,a2,t6
1c00c590:	01f6f6b3          	and	a3,a3,t6
1c00c594:	03e2                	slli	t2,t2,0x18
1c00c596:	01f77733          	and	a4,a4,t6
1c00c59a:	02e2                	slli	t0,t0,0x18
1c00c59c:	01f7f7b3          	and	a5,a5,t6
1c00c5a0:	0128e8b3          	or	a7,a7,s2
1c00c5a4:	8ec5                	or	a3,a3,s1
1c00c5a6:	01e86833          	or	a6,a6,t5
1c00c5aa:	01d56533          	or	a0,a0,t4
1c00c5ae:	01c5e5b3          	or	a1,a1,t3
1c00c5b2:	00666633          	or	a2,a2,t1
1c00c5b6:	00776733          	or	a4,a4,t2
1c00c5ba:	0057e7b3          	or	a5,a5,t0
1c00c5be:	01142023          	sw	a7,0(s0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00c5c2:	01042223          	sw	a6,4(s0)
1c00c5c6:	c408                	sw	a0,8(s0)
1c00c5c8:	c44c                	sw	a1,12(s0)
1c00c5ca:	c810                	sw	a2,16(s0)
1c00c5cc:	c854                	sw	a3,20(s0)
1c00c5ce:	cc18                	sw	a4,24(s0)
1c00c5d0:	cc5c                	sw	a5,28(s0)
1c00c5d2:	50fe                	lw	ra,252(sp)
1c00c5d4:	546e                	lw	s0,248(sp)
1c00c5d6:	54de                	lw	s1,244(sp)
1c00c5d8:	594e                	lw	s2,240(sp)
1c00c5da:	59be                	lw	s3,236(sp)
1c00c5dc:	5a2e                	lw	s4,232(sp)
1c00c5de:	5a9e                	lw	s5,228(sp)
1c00c5e0:	5b0e                	lw	s6,224(sp)
1c00c5e2:	4bfe                	lw	s7,220(sp)
1c00c5e4:	4c6e                	lw	s8,216(sp)
1c00c5e6:	4cde                	lw	s9,212(sp)
1c00c5e8:	4d4e                	lw	s10,208(sp)
1c00c5ea:	6111                	addi	sp,sp,256
1c00c5ec:	8082                	ret

1c00c5ee <sha3_512>:
1c00c5ee:	db010113          	addi	sp,sp,-592
1c00c5f2:	24812423          	sw	s0,584(sp)
1c00c5f6:	23312e23          	sw	s3,572(sp)
1c00c5fa:	23412c23          	sw	s4,568(sp)
1c00c5fe:	24112623          	sw	ra,588(sp)
1c00c602:	24912223          	sw	s1,580(sp)
1c00c606:	25212023          	sw	s2,576(sp)
1c00c60a:	23512a23          	sw	s5,564(sp)
1c00c60e:	23612823          	sw	s6,560(sp)
1c00c612:	23712623          	sw	s7,556(sp)
1c00c616:	23812423          	sw	s8,552(sp)
1c00c61a:	23912223          	sw	s9,548(sp)
1c00c61e:	23a12023          	sw	s10,544(sp)
1c00c622:	21b12e23          	sw	s11,540(sp)
1c00c626:	842a                	mv	s0,a0
1c00c628:	8a32                	mv	s4,a2
1c00c62a:	14810993          	addi	s3,sp,328
1c00c62e:	011c                	addi	a5,sp,128
1c00c630:	4601                	li	a2,0
1c00c632:	4681                	li	a3,0
1c00c634:	c390                	sw	a2,0(a5)
1c00c636:	c3d4                	sw	a3,4(a5)
1c00c638:	07a1                	addi	a5,a5,8
1c00c63a:	fef99be3          	bne	s3,a5,1c00c630 <sha3_512+0x42>
1c00c63e:	04700793          	li	a5,71
1c00c642:	0747fe63          	bleu	s4,a5,1c00c6be <sha3_512+0xd0>
1c00c646:	04700493          	li	s1,71
1c00c64a:	87ae                	mv	a5,a1
1c00c64c:	04878913          	addi	s2,a5,72 # ff010048 <pulp__FC+0xff010049>
1c00c650:	0114                	addi	a3,sp,128
1c00c652:	0017c703          	lbu	a4,1(a5)
1c00c656:	0027c583          	lbu	a1,2(a5)
1c00c65a:	0057c883          	lbu	a7,5(a5)
1c00c65e:	0047c303          	lbu	t1,4(a5)
1c00c662:	0067c803          	lbu	a6,6(a5)
1c00c666:	0007ce03          	lbu	t3,0(a5)
1c00c66a:	0037c503          	lbu	a0,3(a5)
1c00c66e:	0077c603          	lbu	a2,7(a5)
1c00c672:	05c2                	slli	a1,a1,0x10
1c00c674:	0722                	slli	a4,a4,0x8
1c00c676:	08a2                	slli	a7,a7,0x8
1c00c678:	8f4d                	or	a4,a4,a1
1c00c67a:	0068e8b3          	or	a7,a7,t1
1c00c67e:	0842                	slli	a6,a6,0x10
1c00c680:	428c                	lw	a1,0(a3)
1c00c682:	0046a303          	lw	t1,4(a3)
1c00c686:	01c76733          	or	a4,a4,t3
1c00c68a:	0562                	slli	a0,a0,0x18
1c00c68c:	01186833          	or	a6,a6,a7
1c00c690:	0662                	slli	a2,a2,0x18
1c00c692:	8f49                	or	a4,a4,a0
1c00c694:	01066633          	or	a2,a2,a6
1c00c698:	8f2d                	xor	a4,a4,a1
1c00c69a:	00c34633          	xor	a2,t1,a2
1c00c69e:	c298                	sw	a4,0(a3)
1c00c6a0:	c2d0                	sw	a2,4(a3)
1c00c6a2:	07a1                	addi	a5,a5,8
1c00c6a4:	06a1                	addi	a3,a3,8
1c00c6a6:	faf916e3          	bne	s2,a5,1c00c652 <sha3_512+0x64>
1c00c6aa:	010c                	addi	a1,sp,128
1c00c6ac:	852e                	mv	a0,a1
1c00c6ae:	c6eff0ef          	jal	ra,1c00bb1c <KeccakF1600_StatePermute>
1c00c6b2:	fb8a0a13          	addi	s4,s4,-72 # feffb8 <__CTOR_LIST__-0x1b01004c>
1c00c6b6:	87ca                	mv	a5,s2
1c00c6b8:	f944eae3          	bltu	s1,s4,1c00c64c <sha3_512+0x5e>
1c00c6bc:	85ca                	mv	a1,s2
1c00c6be:	0b18                	addi	a4,sp,400
1c00c6c0:	87ce                	mv	a5,s3
1c00c6c2:	4681                	li	a3,0
1c00c6c4:	c394                	sw	a3,0(a5)
1c00c6c6:	0791                	addi	a5,a5,4
1c00c6c8:	fef71de3          	bne	a4,a5,1c00c6c2 <sha3_512+0xd4>
1c00c6cc:	060a0563          	beqz	s4,1c00c736 <sha3_512+0x148>
1c00c6d0:	fffa0793          	addi	a5,s4,-1
1c00c6d4:	4709                	li	a4,2
1c00c6d6:	06f772e3          	bleu	a5,a4,1c00cf3a <sha3_512+0x94c>
1c00c6da:	002a5613          	srli	a2,s4,0x2
1c00c6de:	872e                	mv	a4,a1
1c00c6e0:	4781                	li	a5,0
1c00c6e2:	4314                	lw	a3,0(a4)
1c00c6e4:	0785                	addi	a5,a5,1
1c00c6e6:	00d9a023          	sw	a3,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00c6ea:	0711                	addi	a4,a4,4
1c00c6ec:	0991                	addi	s3,s3,4
1c00c6ee:	fec7eae3          	bltu	a5,a2,1c00c6e2 <sha3_512+0xf4>
1c00c6f2:	ffca7793          	andi	a5,s4,-4
1c00c6f6:	04fa0063          	beq	s4,a5,1c00c736 <sha3_512+0x148>
1c00c6fa:	00f58733          	add	a4,a1,a5
1c00c6fe:	00074683          	lbu	a3,0(a4)
1c00c702:	21010813          	addi	a6,sp,528
1c00c706:	00f80733          	add	a4,a6,a5
1c00c70a:	f2d70c23          	sb	a3,-200(a4)
1c00c70e:	00178713          	addi	a4,a5,1
1c00c712:	03477263          	bleu	s4,a4,1c00c736 <sha3_512+0x148>
1c00c716:	00e586b3          	add	a3,a1,a4
1c00c71a:	0006c683          	lbu	a3,0(a3)
1c00c71e:	9742                	add	a4,a4,a6
1c00c720:	f2d70c23          	sb	a3,-200(a4)
1c00c724:	0789                	addi	a5,a5,2
1c00c726:	0147f863          	bleu	s4,a5,1c00c736 <sha3_512+0x148>
1c00c72a:	95be                	add	a1,a1,a5
1c00c72c:	0005c703          	lbu	a4,0(a1)
1c00c730:	97c2                	add	a5,a5,a6
1c00c732:	f2e78c23          	sb	a4,-200(a5)
1c00c736:	21010893          	addi	a7,sp,528
1c00c73a:	9a46                	add	s4,s4,a7
1c00c73c:	4799                	li	a5,6
1c00c73e:	f2fa0c23          	sb	a5,-200(s4)
1c00c742:	14a14703          	lbu	a4,330(sp)
1c00c746:	14914f03          	lbu	t5,329(sp)
1c00c74a:	15214783          	lbu	a5,338(sp)
1c00c74e:	15114e83          	lbu	t4,337(sp)
1c00c752:	15514303          	lbu	t1,341(sp)
1c00c756:	15414383          	lbu	t2,340(sp)
1c00c75a:	15614803          	lbu	a6,342(sp)
1c00c75e:	14814283          	lbu	t0,328(sp)
1c00c762:	14b14503          	lbu	a0,331(sp)
1c00c766:	15014f83          	lbu	t6,336(sp)
1c00c76a:	15314603          	lbu	a2,339(sp)
1c00c76e:	15714683          	lbu	a3,343(sp)
1c00c772:	0f22                	slli	t5,t5,0x8
1c00c774:	0ea2                	slli	t4,t4,0x8
1c00c776:	0742                	slli	a4,a4,0x10
1c00c778:	07c2                	slli	a5,a5,0x10
1c00c77a:	0322                	slli	t1,t1,0x8
1c00c77c:	14d14e03          	lbu	t3,333(sp)
1c00c780:	00736333          	or	t1,t1,t2
1c00c784:	01e76733          	or	a4,a4,t5
1c00c788:	01d7e7b3          	or	a5,a5,t4
1c00c78c:	0842                	slli	a6,a6,0x10
1c00c78e:	14c14483          	lbu	s1,332(sp)
1c00c792:	14e14883          	lbu	a7,334(sp)
1c00c796:	00576733          	or	a4,a4,t0
1c00c79a:	01f7e7b3          	or	a5,a5,t6
1c00c79e:	00686833          	or	a6,a6,t1
1c00c7a2:	0662                	slli	a2,a2,0x18
1c00c7a4:	06e2                	slli	a3,a3,0x18
1c00c7a6:	0562                	slli	a0,a0,0x18
1c00c7a8:	14f14583          	lbu	a1,335(sp)
1c00c7ac:	8d59                	or	a0,a0,a4
1c00c7ae:	0e22                	slli	t3,t3,0x8
1c00c7b0:	00f66733          	or	a4,a2,a5
1c00c7b4:	0106e7b3          	or	a5,a3,a6
1c00c7b8:	468a                	lw	a3,128(sp)
1c00c7ba:	009e6e33          	or	t3,t3,s1
1c00c7be:	08c2                	slli	a7,a7,0x10
1c00c7c0:	01c8e8b3          	or	a7,a7,t3
1c00c7c4:	8d35                	xor	a0,a0,a3
1c00c7c6:	05e2                	slli	a1,a1,0x18
1c00c7c8:	469a                	lw	a3,132(sp)
1c00c7ca:	0115e5b3          	or	a1,a1,a7
1c00c7ce:	8db5                	xor	a1,a1,a3
1c00c7d0:	46aa                	lw	a3,136(sp)
1c00c7d2:	15a14803          	lbu	a6,346(sp)
1c00c7d6:	8eb9                	xor	a3,a3,a4
1c00c7d8:	473a                	lw	a4,140(sp)
1c00c7da:	15914483          	lbu	s1,345(sp)
1c00c7de:	8f3d                	xor	a4,a4,a5
1c00c7e0:	15814a83          	lbu	s5,344(sp)
1c00c7e4:	15b14a03          	lbu	s4,347(sp)
1c00c7e8:	15c14d03          	lbu	s10,348(sp)
1c00c7ec:	18f14783          	lbu	a5,399(sp)
1c00c7f0:	c12a                	sw	a0,128(sp)
1c00c7f2:	c32e                	sw	a1,132(sp)
1c00c7f4:	c536                	sw	a3,136(sp)
1c00c7f6:	c73a                	sw	a4,140(sp)
1c00c7f8:	15d14903          	lbu	s2,349(sp)
1c00c7fc:	15e14f83          	lbu	t6,350(sp)
1c00c800:	16114283          	lbu	t0,353(sp)
1c00c804:	16214f03          	lbu	t5,354(sp)
1c00c808:	16d14883          	lbu	a7,365(sp)
1c00c80c:	16c14b83          	lbu	s7,364(sp)
1c00c810:	04a2                	slli	s1,s1,0x8
1c00c812:	0842                	slli	a6,a6,0x10
1c00c814:	02a2                	slli	t0,t0,0x8
1c00c816:	08a2                	slli	a7,a7,0x8
1c00c818:	00986833          	or	a6,a6,s1
1c00c81c:	0f42                	slli	t5,t5,0x10
1c00c81e:	01e2ef33          	or	t5,t0,t5
1c00c822:	01586833          	or	a6,a6,s5
1c00c826:	0178e2b3          	or	t0,a7,s7
1c00c82a:	018a1893          	slli	a7,s4,0x18
1c00c82e:	15f14503          	lbu	a0,351(sp)
1c00c832:	0108e833          	or	a6,a7,a6
1c00c836:	0922                	slli	s2,s2,0x8
1c00c838:	48ca                	lw	a7,144(sp)
1c00c83a:	01a96933          	or	s2,s2,s10
1c00c83e:	0fc2                	slli	t6,t6,0x10
1c00c840:	16014983          	lbu	s3,352(sp)
1c00c844:	16514e83          	lbu	t4,357(sp)
1c00c848:	16314583          	lbu	a1,355(sp)
1c00c84c:	012fefb3          	or	t6,t6,s2
1c00c850:	0108c8b3          	xor	a7,a7,a6
1c00c854:	0562                	slli	a0,a0,0x18
1c00c856:	485a                	lw	a6,148(sp)
1c00c858:	16414c83          	lbu	s9,356(sp)
1c00c85c:	16614c03          	lbu	s8,358(sp)
1c00c860:	01f56533          	or	a0,a0,t6
1c00c864:	16914e03          	lbu	t3,361(sp)
1c00c868:	16a14303          	lbu	t1,362(sp)
1c00c86c:	16714603          	lbu	a2,359(sp)
1c00c870:	013f6f33          	or	t5,t5,s3
1c00c874:	00a84833          	xor	a6,a6,a0
1c00c878:	0ea2                	slli	t4,t4,0x8
1c00c87a:	456a                	lw	a0,152(sp)
1c00c87c:	05e2                	slli	a1,a1,0x18
1c00c87e:	019ee4b3          	or	s1,t4,s9
1c00c882:	01e5e5b3          	or	a1,a1,t5
1c00c886:	010c1e93          	slli	t4,s8,0x10
1c00c88a:	16814383          	lbu	t2,360(sp)
1c00c88e:	16b14683          	lbu	a3,363(sp)
1c00c892:	009eeeb3          	or	t4,t4,s1
1c00c896:	8d2d                	xor	a0,a0,a1
1c00c898:	0342                	slli	t1,t1,0x10
1c00c89a:	45fa                	lw	a1,156(sp)
1c00c89c:	0e22                	slli	t3,t3,0x8
1c00c89e:	0662                	slli	a2,a2,0x18
1c00c8a0:	16e14b03          	lbu	s6,366(sp)
1c00c8a4:	01d66633          	or	a2,a2,t4
1c00c8a8:	006e6e33          	or	t3,t3,t1
1c00c8ac:	16f14703          	lbu	a4,367(sp)
1c00c8b0:	007e6e33          	or	t3,t3,t2
1c00c8b4:	8db1                	xor	a1,a1,a2
1c00c8b6:	06e2                	slli	a3,a3,0x18
1c00c8b8:	560a                	lw	a2,160(sp)
1c00c8ba:	01c6e6b3          	or	a3,a3,t3
1c00c8be:	010b1313          	slli	t1,s6,0x10
1c00c8c2:	00536333          	or	t1,t1,t0
1c00c8c6:	8e35                	xor	a2,a2,a3
1c00c8c8:	0762                	slli	a4,a4,0x18
1c00c8ca:	569a                	lw	a3,164(sp)
1c00c8cc:	00676733          	or	a4,a4,t1
1c00c8d0:	8f35                	xor	a4,a4,a3
1c00c8d2:	c946                	sw	a7,144(sp)
1c00c8d4:	cb42                	sw	a6,148(sp)
1c00c8d6:	cd2a                	sw	a0,152(sp)
1c00c8d8:	cf2e                	sw	a1,156(sp)
1c00c8da:	d132                	sw	a2,160(sp)
1c00c8dc:	d33a                	sw	a4,164(sp)
1c00c8de:	17114e83          	lbu	t4,369(sp)
1c00c8e2:	17214a83          	lbu	s5,370(sp)
1c00c8e6:	17014903          	lbu	s2,368(sp)
1c00c8ea:	18114803          	lbu	a6,385(sp)
1c00c8ee:	18214483          	lbu	s1,386(sp)
1c00c8f2:	18014283          	lbu	t0,384(sp)
1c00c8f6:	18314703          	lbu	a4,387(sp)
1c00c8fa:	04c2                	slli	s1,s1,0x10
1c00c8fc:	0822                	slli	a6,a6,0x8
1c00c8fe:	17514f83          	lbu	t6,373(sp)
1c00c902:	17314503          	lbu	a0,371(sp)
1c00c906:	0ac2                	slli	s5,s5,0x10
1c00c908:	00986833          	or	a6,a6,s1
1c00c90c:	0ea2                	slli	t4,t4,0x8
1c00c90e:	17414b03          	lbu	s6,372(sp)
1c00c912:	00586833          	or	a6,a6,t0
1c00c916:	17614e03          	lbu	t3,374(sp)
1c00c91a:	015eeeb3          	or	t4,t4,s5
1c00c91e:	0762                	slli	a4,a4,0x18
1c00c920:	17914303          	lbu	t1,377(sp)
1c00c924:	17a14983          	lbu	s3,378(sp)
1c00c928:	17714583          	lbu	a1,375(sp)
1c00c92c:	012eeeb3          	or	t4,t4,s2
1c00c930:	01076733          	or	a4,a4,a6
1c00c934:	0fa2                	slli	t6,t6,0x8
1c00c936:	582a                	lw	a6,168(sp)
1c00c938:	0562                	slli	a0,a0,0x18
1c00c93a:	016fefb3          	or	t6,t6,s6
1c00c93e:	01d56533          	or	a0,a0,t4
1c00c942:	0e42                	slli	t3,t3,0x10
1c00c944:	17814383          	lbu	t2,376(sp)
1c00c948:	01fe6e33          	or	t3,t3,t6
1c00c94c:	17d14f03          	lbu	t5,381(sp)
1c00c950:	17b14603          	lbu	a2,379(sp)
1c00c954:	00a84833          	xor	a6,a6,a0
1c00c958:	09c2                	slli	s3,s3,0x10
1c00c95a:	553a                	lw	a0,172(sp)
1c00c95c:	0322                	slli	t1,t1,0x8
1c00c95e:	05e2                	slli	a1,a1,0x18
1c00c960:	17c14a03          	lbu	s4,380(sp)
1c00c964:	17e14883          	lbu	a7,382(sp)
1c00c968:	01c5e5b3          	or	a1,a1,t3
1c00c96c:	01336333          	or	t1,t1,s3
1c00c970:	00736333          	or	t1,t1,t2
1c00c974:	17f14683          	lbu	a3,383(sp)
1c00c978:	8d2d                	xor	a0,a0,a1
1c00c97a:	0f22                	slli	t5,t5,0x8
1c00c97c:	55ca                	lw	a1,176(sp)
1c00c97e:	0662                	slli	a2,a2,0x18
1c00c980:	014f6f33          	or	t5,t5,s4
1c00c984:	00666633          	or	a2,a2,t1
1c00c988:	08c2                	slli	a7,a7,0x10
1c00c98a:	01e8e8b3          	or	a7,a7,t5
1c00c98e:	8db1                	xor	a1,a1,a2
1c00c990:	06e2                	slli	a3,a3,0x18
1c00c992:	565a                	lw	a2,180(sp)
1c00c994:	0116e6b3          	or	a3,a3,a7
1c00c998:	8e35                	xor	a2,a2,a3
1c00c99a:	56ea                	lw	a3,184(sp)
1c00c99c:	18414f03          	lbu	t5,388(sp)
1c00c9a0:	8f35                	xor	a4,a4,a3
1c00c9a2:	d542                	sw	a6,168(sp)
1c00c9a4:	d72a                	sw	a0,172(sp)
1c00c9a6:	d92e                	sw	a1,176(sp)
1c00c9a8:	db32                	sw	a2,180(sp)
1c00c9aa:	18514883          	lbu	a7,389(sp)
1c00c9ae:	18614503          	lbu	a0,390(sp)
1c00c9b2:	18714603          	lbu	a2,391(sp)
1c00c9b6:	dd3a                	sw	a4,184(sp)
1c00c9b8:	18914703          	lbu	a4,393(sp)
1c00c9bc:	18a14303          	lbu	t1,394(sp)
1c00c9c0:	18814e03          	lbu	t3,392(sp)
1c00c9c4:	0342                	slli	t1,t1,0x10
1c00c9c6:	18b14683          	lbu	a3,395(sp)
1c00c9ca:	0722                	slli	a4,a4,0x8
1c00c9cc:	00676733          	or	a4,a4,t1
1c00c9d0:	08a2                	slli	a7,a7,0x8
1c00c9d2:	01e8e8b3          	or	a7,a7,t5
1c00c9d6:	01c76733          	or	a4,a4,t3
1c00c9da:	06e2                	slli	a3,a3,0x18
1c00c9dc:	0542                	slli	a0,a0,0x10
1c00c9de:	01156533          	or	a0,a0,a7
1c00c9e2:	18d14803          	lbu	a6,397(sp)
1c00c9e6:	8f55                	or	a4,a4,a3
1c00c9e8:	0662                	slli	a2,a2,0x18
1c00c9ea:	56fa                	lw	a3,188(sp)
1c00c9ec:	18c14e83          	lbu	t4,396(sp)
1c00c9f0:	18e14583          	lbu	a1,398(sp)
1c00c9f4:	8e49                	or	a2,a2,a0
1c00c9f6:	8e35                	xor	a2,a2,a3
1c00c9f8:	0822                	slli	a6,a6,0x8
1c00c9fa:	468e                	lw	a3,192(sp)
1c00c9fc:	01d86833          	or	a6,a6,t4
1c00ca00:	0807e793          	ori	a5,a5,128
1c00ca04:	05c2                	slli	a1,a1,0x10
1c00ca06:	0105e5b3          	or	a1,a1,a6
1c00ca0a:	8eb9                	xor	a3,a3,a4
1c00ca0c:	07e2                	slli	a5,a5,0x18
1c00ca0e:	471e                	lw	a4,196(sp)
1c00ca10:	8fcd                	or	a5,a5,a1
1c00ca12:	010c                	addi	a1,sp,128
1c00ca14:	8fb9                	xor	a5,a5,a4
1c00ca16:	852e                	mv	a0,a1
1c00ca18:	df32                	sw	a2,188(sp)
1c00ca1a:	c1b6                	sw	a3,192(sp)
1c00ca1c:	c3be                	sw	a5,196(sp)
1c00ca1e:	8feff0ef          	jal	ra,1c00bb1c <KeccakF1600_StatePermute>
1c00ca22:	581a                	lw	a6,164(sp)
1c00ca24:	552a                	lw	a0,168(sp)
1c00ca26:	55ba                	lw	a1,172(sp)
1c00ca28:	00885913          	srli	s2,a6,0x8
1c00ca2c:	564a                	lw	a2,176(sp)
1c00ca2e:	de4a                	sw	s2,60(sp)
1c00ca30:	00855913          	srli	s2,a0,0x8
1c00ca34:	56da                	lw	a3,180(sp)
1c00ca36:	d24a                	sw	s2,36(sp)
1c00ca38:	0085d913          	srli	s2,a1,0x8
1c00ca3c:	576a                	lw	a4,184(sp)
1c00ca3e:	d44a                	sw	s2,40(sp)
1c00ca40:	00865913          	srli	s2,a2,0x8
1c00ca44:	57fa                	lw	a5,188(sp)
1c00ca46:	d64a                	sw	s2,44(sp)
1c00ca48:	0086d913          	srli	s2,a3,0x8
1c00ca4c:	d84a                	sw	s2,48(sp)
1c00ca4e:	00875913          	srli	s2,a4,0x8
1c00ca52:	da4a                	sw	s2,52(sp)
1c00ca54:	0087d913          	srli	s2,a5,0x8
1c00ca58:	dc4a                	sw	s2,56(sp)
1c00ca5a:	5972                	lw	s2,60(sp)
1c00ca5c:	448a                	lw	s1,128(sp)
1c00ca5e:	0ff97913          	andi	s2,s2,255
1c00ca62:	c2ca                	sw	s2,68(sp)
1c00ca64:	5912                	lw	s2,36(sp)
1c00ca66:	439a                	lw	t2,132(sp)
1c00ca68:	0ff97913          	andi	s2,s2,255
1c00ca6c:	c4ca                	sw	s2,72(sp)
1c00ca6e:	5922                	lw	s2,40(sp)
1c00ca70:	42aa                	lw	t0,136(sp)
1c00ca72:	0ff97913          	andi	s2,s2,255
1c00ca76:	c8ca                	sw	s2,80(sp)
1c00ca78:	5932                	lw	s2,44(sp)
1c00ca7a:	4fba                	lw	t6,140(sp)
1c00ca7c:	0ff97913          	andi	s2,s2,255
1c00ca80:	ccca                	sw	s2,88(sp)
1c00ca82:	5942                	lw	s2,48(sp)
1c00ca84:	4f4a                	lw	t5,144(sp)
1c00ca86:	0ff97913          	andi	s2,s2,255
1c00ca8a:	4eda                	lw	t4,148(sp)
1c00ca8c:	4e6a                	lw	t3,152(sp)
1c00ca8e:	437a                	lw	t1,156(sp)
1c00ca90:	588a                	lw	a7,160(sp)
1c00ca92:	d0ca                	sw	s2,96(sp)
1c00ca94:	5952                	lw	s2,52(sp)
1c00ca96:	0082dc93          	srli	s9,t0,0x8
1c00ca9a:	0ff97913          	andi	s2,s2,255
1c00ca9e:	d4ca                	sw	s2,104(sp)
1c00caa0:	5962                	lw	s2,56(sp)
1c00caa2:	008fdc13          	srli	s8,t6,0x8
1c00caa6:	008f5b93          	srli	s7,t5,0x8
1c00caaa:	008edb13          	srli	s6,t4,0x8
1c00caae:	0ff97913          	andi	s2,s2,255
1c00cab2:	d8ca                	sw	s2,112(sp)
1c00cab4:	0083dd13          	srli	s10,t2,0x8
1c00cab8:	0ff4f913          	andi	s2,s1,255
1c00cabc:	0ffcfc93          	andi	s9,s9,255
1c00cac0:	0ffc7c13          	andi	s8,s8,255
1c00cac4:	0ffbfb93          	andi	s7,s7,255
1c00cac8:	0ffb7b13          	andi	s6,s6,255
1c00cacc:	d24a                	sw	s2,36(sp)
1c00cace:	008e5a93          	srli	s5,t3,0x8
1c00cad2:	0ff2f913          	andi	s2,t0,255
1c00cad6:	0ca2                	slli	s9,s9,0x8
1c00cad8:	0c22                	slli	s8,s8,0x8
1c00cada:	0ba2                	slli	s7,s7,0x8
1c00cadc:	0b22                	slli	s6,s6,0x8
1c00cade:	0ffd7d13          	andi	s10,s10,255
1c00cae2:	ce66                	sw	s9,28(sp)
1c00cae4:	d64a                	sw	s2,44(sp)
1c00cae6:	cc62                	sw	s8,24(sp)
1c00cae8:	ca5e                	sw	s7,20(sp)
1c00caea:	0ffffc13          	andi	s8,t6,255
1c00caee:	4b96                	lw	s7,68(sp)
1c00caf0:	0fff7c93          	andi	s9,t5,255
1c00caf4:	c85a                	sw	s6,16(sp)
1c00caf6:	0ffe7913          	andi	s2,t3,255
1c00cafa:	0ff8fb13          	andi	s6,a7,255
1c00cafe:	0d22                	slli	s10,s10,0x8
1c00cb00:	0ffafa93          	andi	s5,s5,255
1c00cb04:	d06a                	sw	s10,32(sp)
1c00cb06:	d862                	sw	s8,48(sp)
1c00cb08:	0ff3fd13          	andi	s10,t2,255
1c00cb0c:	da66                	sw	s9,52(sp)
1c00cb0e:	de4a                	sw	s2,60(sp)
1c00cb10:	4ca6                	lw	s9,72(sp)
1c00cb12:	4946                	lw	s2,80(sp)
1c00cb14:	c0da                	sw	s6,64(sp)
1c00cb16:	0ff87c13          	andi	s8,a6,255
1c00cb1a:	4b66                	lw	s6,88(sp)
1c00cb1c:	0aa2                	slli	s5,s5,0x8
1c00cb1e:	d46a                	sw	s10,40(sp)
1c00cb20:	c656                	sw	s5,12(sp)
1c00cb22:	0ffefd13          	andi	s10,t4,255
1c00cb26:	0ff37a93          	andi	s5,t1,255
1c00cb2a:	c2e2                	sw	s8,68(sp)
1c00cb2c:	0ba2                	slli	s7,s7,0x8
1c00cb2e:	5c06                	lw	s8,96(sp)
1c00cb30:	dc6a                	sw	s10,56(sp)
1c00cb32:	dcd6                	sw	s5,120(sp)
1c00cb34:	dede                	sw	s7,124(sp)
1c00cb36:	0ff57d13          	andi	s10,a0,255
1c00cb3a:	0ff5fa93          	andi	s5,a1,255
1c00cb3e:	0ff67b93          	andi	s7,a2,255
1c00cb42:	0ca2                	slli	s9,s9,0x8
1c00cb44:	0922                	slli	s2,s2,0x8
1c00cb46:	0b22                	slli	s6,s6,0x8
1c00cb48:	c4e6                	sw	s9,72(sp)
1c00cb4a:	c6ea                	sw	s10,76(sp)
1c00cb4c:	c8ca                	sw	s2,80(sp)
1c00cb4e:	cad6                	sw	s5,84(sp)
1c00cb50:	ccda                	sw	s6,88(sp)
1c00cb52:	cede                	sw	s7,92(sp)
1c00cb54:	0c22                	slli	s8,s8,0x8
1c00cb56:	d0e2                	sw	s8,96(sp)
1c00cb58:	5ac6                	lw	s5,112(sp)
1c00cb5a:	5d26                	lw	s10,104(sp)
1c00cb5c:	0ff6fc93          	andi	s9,a3,255
1c00cb60:	0ff7fb13          	andi	s6,a5,255
1c00cb64:	0084dd93          	srli	s11,s1,0x8
1c00cb68:	0aa2                	slli	s5,s5,0x8
1c00cb6a:	5b92                	lw	s7,36(sp)
1c00cb6c:	5c22                	lw	s8,40(sp)
1c00cb6e:	d2e6                	sw	s9,100(sp)
1c00cb70:	d8d6                	sw	s5,112(sp)
1c00cb72:	5c82                	lw	s9,32(sp)
1c00cb74:	5ab2                	lw	s5,44(sp)
1c00cb76:	dada                	sw	s6,116(sp)
1c00cb78:	0ffdfd93          	andi	s11,s11,255
1c00cb7c:	4b72                	lw	s6,28(sp)
1c00cb7e:	0d22                	slli	s10,s10,0x8
1c00cb80:	0da2                	slli	s11,s11,0x8
1c00cb82:	d4ea                	sw	s10,104(sp)
1c00cb84:	01bbedb3          	or	s11,s7,s11
1c00cb88:	019c6d33          	or	s10,s8,s9
1c00cb8c:	5bc2                	lw	s7,48(sp)
1c00cb8e:	016aecb3          	or	s9,s5,s6
1c00cb92:	4ae2                	lw	s5,24(sp)
1c00cb94:	5b52                	lw	s6,52(sp)
1c00cb96:	015bec33          	or	s8,s7,s5
1c00cb9a:	4ad2                	lw	s5,20(sp)
1c00cb9c:	0088d993          	srli	s3,a7,0x8
1c00cba0:	015b6bb3          	or	s7,s6,s5
1c00cba4:	4ac2                	lw	s5,16(sp)
1c00cba6:	5b62                	lw	s6,56(sp)
1c00cba8:	00835a13          	srli	s4,t1,0x8
1c00cbac:	015b6b33          	or	s6,s6,s5
1c00cbb0:	c25a                	sw	s6,4(sp)
1c00cbb2:	4ab2                	lw	s5,12(sp)
1c00cbb4:	5b72                	lw	s6,60(sp)
1c00cbb6:	0ff9f993          	andi	s3,s3,255
1c00cbba:	015b6b33          	or	s6,s6,s5
1c00cbbe:	4a86                	lw	s5,64(sp)
1c00cbc0:	c45a                	sw	s6,8(sp)
1c00cbc2:	0ffa7a13          	andi	s4,s4,255
1c00cbc6:	5b66                	lw	s6,120(sp)
1c00cbc8:	09a2                	slli	s3,s3,0x8
1c00cbca:	013ae9b3          	or	s3,s5,s3
1c00cbce:	0a22                	slli	s4,s4,0x8
1c00cbd0:	c0ce                	sw	s3,64(sp)
1c00cbd2:	014b6a33          	or	s4,s6,s4
1c00cbd6:	59f6                	lw	s3,124(sp)
1c00cbd8:	4b16                	lw	s6,68(sp)
1c00cbda:	4ab6                	lw	s5,76(sp)
1c00cbdc:	013b6b33          	or	s6,s6,s3
1c00cbe0:	c2da                	sw	s6,68(sp)
1c00cbe2:	4b26                	lw	s6,72(sp)
1c00cbe4:	0ff77913          	andi	s2,a4,255
1c00cbe8:	016aeab3          	or	s5,s5,s6
1c00cbec:	d6ca                	sw	s2,108(sp)
1c00cbee:	49d6                	lw	s3,84(sp)
1c00cbf0:	c6d6                	sw	s5,76(sp)
1c00cbf2:	4ac6                	lw	s5,80(sp)
1c00cbf4:	4b76                	lw	s6,92(sp)
1c00cbf6:	0159e9b3          	or	s3,s3,s5
1c00cbfa:	cace                	sw	s3,84(sp)
1c00cbfc:	49e6                	lw	s3,88(sp)
1c00cbfe:	5a96                	lw	s5,100(sp)
1c00cc00:	013b6b33          	or	s6,s6,s3
1c00cc04:	ceda                	sw	s6,92(sp)
1c00cc06:	5b06                	lw	s6,96(sp)
1c00cc08:	59b6                	lw	s3,108(sp)
1c00cc0a:	016aeab3          	or	s5,s5,s6
1c00cc0e:	d2d6                	sw	s5,100(sp)
1c00cc10:	5aa6                	lw	s5,104(sp)
1c00cc12:	5b56                	lw	s6,116(sp)
1c00cc14:	0159e9b3          	or	s3,s3,s5
1c00cc18:	d6ce                	sw	s3,108(sp)
1c00cc1a:	59c6                	lw	s3,112(sp)
1c00cc1c:	ff010937          	lui	s2,0xff010
1c00cc20:	013b6b33          	or	s6,s6,s3
1c00cc24:	00ff09b7          	lui	s3,0xff0
1c00cc28:	0134fab3          	and	s5,s1,s3
1c00cc2c:	0133f9b3          	and	s3,t2,s3
1c00cc30:	d44e                	sw	s3,40(sp)
1c00cc32:	00ff09b7          	lui	s3,0xff0
1c00cc36:	0132f9b3          	and	s3,t0,s3
1c00cc3a:	d64e                	sw	s3,44(sp)
1c00cc3c:	00ff09b7          	lui	s3,0xff0
1c00cc40:	013ff9b3          	and	s3,t6,s3
1c00cc44:	d84e                	sw	s3,48(sp)
1c00cc46:	00ff09b7          	lui	s3,0xff0
1c00cc4a:	013f79b3          	and	s3,t5,s3
1c00cc4e:	da4e                	sw	s3,52(sp)
1c00cc50:	00ff09b7          	lui	s3,0xff0
1c00cc54:	013ef9b3          	and	s3,t4,s3
1c00cc58:	dc4e                	sw	s3,56(sp)
1c00cc5a:	00ff09b7          	lui	s3,0xff0
1c00cc5e:	013e79b3          	and	s3,t3,s3
1c00cc62:	197d                	addi	s2,s2,-1
1c00cc64:	de4e                	sw	s3,60(sp)
1c00cc66:	00ff09b7          	lui	s3,0xff0
1c00cc6a:	012c7c33          	and	s8,s8,s2
1c00cc6e:	012bfbb3          	and	s7,s7,s2
1c00cc72:	013379b3          	and	s3,t1,s3
1c00cc76:	012cfcb3          	and	s9,s9,s2
1c00cc7a:	ca62                	sw	s8,20(sp)
1c00cc7c:	c85e                	sw	s7,16(sp)
1c00cc7e:	4c22                	lw	s8,8(sp)
1c00cc80:	4b92                	lw	s7,4(sp)
1c00cc82:	dcce                	sw	s3,120(sp)
1c00cc84:	00ff09b7          	lui	s3,0xff0
1c00cc88:	cc66                	sw	s9,24(sp)
1c00cc8a:	0138f9b3          	and	s3,a7,s3
1c00cc8e:	4c86                	lw	s9,64(sp)
1c00cc90:	012d7d33          	and	s10,s10,s2
1c00cc94:	012bfbb3          	and	s7,s7,s2
1c00cc98:	012c7c33          	and	s8,s8,s2
1c00cc9c:	012a7a33          	and	s4,s4,s2
1c00cca0:	dece                	sw	s3,124(sp)
1c00cca2:	00ff09b7          	lui	s3,0xff0
1c00cca6:	dada                	sw	s6,116(sp)
1c00cca8:	ce6a                	sw	s10,28(sp)
1c00ccaa:	c65e                	sw	s7,12(sp)
1c00ccac:	c462                	sw	s8,8(sp)
1c00ccae:	c252                	sw	s4,4(sp)
1c00ccb0:	012cfcb3          	and	s9,s9,s2
1c00ccb4:	013879b3          	and	s3,a6,s3
1c00ccb8:	c0e6                	sw	s9,64(sp)
1c00ccba:	c4ce                	sw	s3,72(sp)
1c00ccbc:	00ff09b7          	lui	s3,0xff0
1c00ccc0:	013579b3          	and	s3,a0,s3
1c00ccc4:	c8ce                	sw	s3,80(sp)
1c00ccc6:	00ff09b7          	lui	s3,0xff0
1c00ccca:	0135f9b3          	and	s3,a1,s3
1c00ccce:	ccce                	sw	s3,88(sp)
1c00ccd0:	49d6                	lw	s3,84(sp)
1c00ccd2:	012dfb33          	and	s6,s11,s2
1c00ccd6:	0129f9b3          	and	s3,s3,s2
1c00ccda:	cace                	sw	s3,84(sp)
1c00ccdc:	00ff09b7          	lui	s3,0xff0
1c00cce0:	013679b3          	and	s3,a2,s3
1c00cce4:	d0ce                	sw	s3,96(sp)
1c00cce6:	00ff09b7          	lui	s3,0xff0
1c00ccea:	0136f9b3          	and	s3,a3,s3
1c00ccee:	d4ce                	sw	s3,104(sp)
1c00ccf0:	00ff09b7          	lui	s3,0xff0
1c00ccf4:	4db6                	lw	s11,76(sp)
1c00ccf6:	4a76                	lw	s4,92(sp)
1c00ccf8:	013779b3          	and	s3,a4,s3
1c00ccfc:	d8ce                	sw	s3,112(sp)
1c00ccfe:	00ff09b7          	lui	s3,0xff0
1c00cd02:	4d16                	lw	s10,68(sp)
1c00cd04:	5b96                	lw	s7,100(sp)
1c00cd06:	012dfdb3          	and	s11,s11,s2
1c00cd0a:	012a7a33          	and	s4,s4,s2
1c00cd0e:	0137f9b3          	and	s3,a5,s3
1c00cd12:	5cd6                	lw	s9,116(sp)
1c00cd14:	5c36                	lw	s8,108(sp)
1c00cd16:	c6ee                	sw	s11,76(sp)
1c00cd18:	ced2                	sw	s4,92(sp)
1c00cd1a:	c04e                	sw	s3,0(sp)
1c00cd1c:	5a22                	lw	s4,40(sp)
1c00cd1e:	49f2                	lw	s3,28(sp)
1c00cd20:	015b6db3          	or	s11,s6,s5
1c00cd24:	4ae2                	lw	s5,24(sp)
1c00cd26:	5b32                	lw	s6,44(sp)
1c00cd28:	012d7d33          	and	s10,s10,s2
1c00cd2c:	012bfbb3          	and	s7,s7,s2
1c00cd30:	c2ea                	sw	s10,68(sp)
1c00cd32:	d2de                	sw	s7,100(sp)
1c00cd34:	012c7c33          	and	s8,s8,s2
1c00cd38:	4bd2                	lw	s7,20(sp)
1c00cd3a:	012cf933          	and	s2,s9,s2
1c00cd3e:	0149ed33          	or	s10,s3,s4
1c00cd42:	016aecb3          	or	s9,s5,s6
1c00cd46:	59c2                	lw	s3,48(sp)
1c00cd48:	4a42                	lw	s4,16(sp)
1c00cd4a:	5ad2                	lw	s5,52(sp)
1c00cd4c:	d6e2                	sw	s8,108(sp)
1c00cd4e:	013bec33          	or	s8,s7,s3
1c00cd52:	49b2                	lw	s3,12(sp)
1c00cd54:	015a6bb3          	or	s7,s4,s5
1c00cd58:	5a62                	lw	s4,56(sp)
1c00cd5a:	daca                	sw	s2,116(sp)
1c00cd5c:	0149eb33          	or	s6,s3,s4
1c00cd60:	49a2                	lw	s3,8(sp)
1c00cd62:	5a72                	lw	s4,60(sp)
1c00cd64:	80e1                	srli	s1,s1,0x18
1c00cd66:	0149eab3          	or	s5,s3,s4
1c00cd6a:	5a66                	lw	s4,120(sp)
1c00cd6c:	4992                	lw	s3,4(sp)
1c00cd6e:	04e2                	slli	s1,s1,0x18
1c00cd70:	0149e9b3          	or	s3,s3,s4
1c00cd74:	dcce                	sw	s3,120(sp)
1c00cd76:	5a76                	lw	s4,124(sp)
1c00cd78:	4986                	lw	s3,64(sp)
1c00cd7a:	01000937          	lui	s2,0x1000
1c00cd7e:	0149e9b3          	or	s3,s3,s4
1c00cd82:	d24e                	sw	s3,36(sp)
1c00cd84:	4a26                	lw	s4,72(sp)
1c00cd86:	4996                	lw	s3,68(sp)
1c00cd88:	197d                	addi	s2,s2,-1
1c00cd8a:	0149e9b3          	or	s3,s3,s4
1c00cd8e:	d44e                	sw	s3,40(sp)
1c00cd90:	4a46                	lw	s4,80(sp)
1c00cd92:	49b6                	lw	s3,76(sp)
1c00cd94:	c2a6                	sw	s1,68(sp)
1c00cd96:	0149e9b3          	or	s3,s3,s4
1c00cd9a:	d64e                	sw	s3,44(sp)
1c00cd9c:	4a66                	lw	s4,88(sp)
1c00cd9e:	49d6                	lw	s3,84(sp)
1c00cda0:	54e6                	lw	s1,120(sp)
1c00cda2:	0149e9b3          	or	s3,s3,s4
1c00cda6:	d84e                	sw	s3,48(sp)
1c00cda8:	5a06                	lw	s4,96(sp)
1c00cdaa:	49f6                	lw	s3,92(sp)
1c00cdac:	018ede93          	srli	t4,t4,0x18
1c00cdb0:	0149e9b3          	or	s3,s3,s4
1c00cdb4:	da4e                	sw	s3,52(sp)
1c00cdb6:	5a26                	lw	s4,104(sp)
1c00cdb8:	5996                	lw	s3,100(sp)
1c00cdba:	018e5e13          	srli	t3,t3,0x18
1c00cdbe:	0149e9b3          	or	s3,s3,s4
1c00cdc2:	dc4e                	sw	s3,56(sp)
1c00cdc4:	5a46                	lw	s4,112(sp)
1c00cdc6:	59b6                	lw	s3,108(sp)
1c00cdc8:	01835313          	srli	t1,t1,0x18
1c00cdcc:	0149e9b3          	or	s3,s3,s4
1c00cdd0:	de4e                	sw	s3,60(sp)
1c00cdd2:	4a02                	lw	s4,0(sp)
1c00cdd4:	59d6                	lw	s3,116(sp)
1c00cdd6:	012b7b33          	and	s6,s6,s2
1c00cdda:	0149e9b3          	or	s3,s3,s4
1c00cdde:	c0ce                	sw	s3,64(sp)
1c00cde0:	5992                	lw	s3,36(sp)
1c00cde2:	0124fa33          	and	s4,s1,s2
1c00cde6:	0129f9b3          	and	s3,s3,s2
1c00cdea:	d24e                	sw	s3,36(sp)
1c00cdec:	54a2                	lw	s1,40(sp)
1c00cdee:	59b2                	lw	s3,44(sp)
1c00cdf0:	0124f4b3          	and	s1,s1,s2
1c00cdf4:	d426                	sw	s1,40(sp)
1c00cdf6:	54c2                	lw	s1,48(sp)
1c00cdf8:	0129f9b3          	and	s3,s3,s2
1c00cdfc:	d64e                	sw	s3,44(sp)
1c00cdfe:	0124f4b3          	and	s1,s1,s2
1c00ce02:	59d2                	lw	s3,52(sp)
1c00ce04:	d826                	sw	s1,48(sp)
1c00ce06:	54e2                	lw	s1,56(sp)
1c00ce08:	0129f9b3          	and	s3,s3,s2
1c00ce0c:	da4e                	sw	s3,52(sp)
1c00ce0e:	0124f4b3          	and	s1,s1,s2
1c00ce12:	59f2                	lw	s3,60(sp)
1c00ce14:	dc26                	sw	s1,56(sp)
1c00ce16:	4486                	lw	s1,64(sp)
1c00ce18:	012afab3          	and	s5,s5,s2
1c00ce1c:	0129f9b3          	and	s3,s3,s2
1c00ce20:	0183d393          	srli	t2,t2,0x18
1c00ce24:	0182d293          	srli	t0,t0,0x18
1c00ce28:	018fdf93          	srli	t6,t6,0x18
1c00ce2c:	018f5f13          	srli	t5,t5,0x18
1c00ce30:	0ee2                	slli	t4,t4,0x18
1c00ce32:	0e62                	slli	t3,t3,0x18
1c00ce34:	0362                	slli	t1,t1,0x18
1c00ce36:	de4e                	sw	s3,60(sp)
1c00ce38:	012dfdb3          	and	s11,s11,s2
1c00ce3c:	0124f9b3          	and	s3,s1,s2
1c00ce40:	012d7d33          	and	s10,s10,s2
1c00ce44:	012cfcb3          	and	s9,s9,s2
1c00ce48:	012c7c33          	and	s8,s8,s2
1c00ce4c:	012bfbb3          	and	s7,s7,s2
1c00ce50:	01db6eb3          	or	t4,s6,t4
1c00ce54:	4916                	lw	s2,68(sp)
1c00ce56:	5b32                	lw	s6,44(sp)
1c00ce58:	01caee33          	or	t3,s5,t3
1c00ce5c:	006a6333          	or	t1,s4,t1
1c00ce60:	5aa2                	lw	s5,40(sp)
1c00ce62:	5a12                	lw	s4,36(sp)
1c00ce64:	0188d893          	srli	a7,a7,0x18
1c00ce68:	01885813          	srli	a6,a6,0x18
1c00ce6c:	8161                	srli	a0,a0,0x18
1c00ce6e:	03e2                	slli	t2,t2,0x18
1c00ce70:	02e2                	slli	t0,t0,0x18
1c00ce72:	0fe2                	slli	t6,t6,0x18
1c00ce74:	0f62                	slli	t5,t5,0x18
1c00ce76:	007d63b3          	or	t2,s10,t2
1c00ce7a:	005ce2b3          	or	t0,s9,t0
1c00ce7e:	5d72                	lw	s10,60(sp)
1c00ce80:	5ce2                	lw	s9,56(sp)
1c00ce82:	01fc6fb3          	or	t6,s8,t6
1c00ce86:	01ebef33          	or	t5,s7,t5
1c00ce8a:	5c52                	lw	s8,52(sp)
1c00ce8c:	5bc2                	lw	s7,48(sp)
1c00ce8e:	81e1                	srli	a1,a1,0x18
1c00ce90:	8261                	srli	a2,a2,0x18
1c00ce92:	82e1                	srli	a3,a3,0x18
1c00ce94:	8361                	srli	a4,a4,0x18
1c00ce96:	83e1                	srli	a5,a5,0x18
1c00ce98:	08e2                	slli	a7,a7,0x18
1c00ce9a:	0862                	slli	a6,a6,0x18
1c00ce9c:	0562                	slli	a0,a0,0x18
1c00ce9e:	012de4b3          	or	s1,s11,s2
1c00cea2:	05e2                	slli	a1,a1,0x18
1c00cea4:	011a6933          	or	s2,s4,a7
1c00cea8:	0662                	slli	a2,a2,0x18
1c00ceaa:	010aea33          	or	s4,s5,a6
1c00ceae:	06e2                	slli	a3,a3,0x18
1c00ceb0:	00ab6ab3          	or	s5,s6,a0
1c00ceb4:	0762                	slli	a4,a4,0x18
1c00ceb6:	07e2                	slli	a5,a5,0x18
1c00ceb8:	c004                	sw	s1,0(s0)
1c00ceba:	03242023          	sw	s2,32(s0)
1c00cebe:	03442223          	sw	s4,36(s0)
1c00cec2:	03542423          	sw	s5,40(s0)
1c00cec6:	00bbe5b3          	or	a1,s7,a1
1c00ceca:	00cc6633          	or	a2,s8,a2
1c00cece:	00dce6b3          	or	a3,s9,a3
1c00ced2:	00ed6733          	or	a4,s10,a4
1c00ced6:	00f9e7b3          	or	a5,s3,a5
1c00ceda:	00742223          	sw	t2,4(s0)
1c00cede:	00542423          	sw	t0,8(s0)
1c00cee2:	01f42623          	sw	t6,12(s0)
1c00cee6:	01e42823          	sw	t5,16(s0)
1c00ceea:	01d42a23          	sw	t4,20(s0)
1c00ceee:	01c42c23          	sw	t3,24(s0)
1c00cef2:	00642e23          	sw	t1,28(s0)
1c00cef6:	d44c                	sw	a1,44(s0)
1c00cef8:	d810                	sw	a2,48(s0)
1c00cefa:	d854                	sw	a3,52(s0)
1c00cefc:	dc18                	sw	a4,56(s0)
1c00cefe:	dc5c                	sw	a5,60(s0)
1c00cf00:	24c12083          	lw	ra,588(sp)
1c00cf04:	24812403          	lw	s0,584(sp)
1c00cf08:	24412483          	lw	s1,580(sp)
1c00cf0c:	24012903          	lw	s2,576(sp)
1c00cf10:	23c12983          	lw	s3,572(sp)
1c00cf14:	23812a03          	lw	s4,568(sp)
1c00cf18:	23412a83          	lw	s5,564(sp)
1c00cf1c:	23012b03          	lw	s6,560(sp)
1c00cf20:	22c12b83          	lw	s7,556(sp)
1c00cf24:	22812c03          	lw	s8,552(sp)
1c00cf28:	22412c83          	lw	s9,548(sp)
1c00cf2c:	22012d03          	lw	s10,544(sp)
1c00cf30:	21c12d83          	lw	s11,540(sp)
1c00cf34:	25010113          	addi	sp,sp,592
1c00cf38:	8082                	ret
1c00cf3a:	4781                	li	a5,0
1c00cf3c:	fbeff06f          	j	1c00c6fa <sha3_512+0x10c>

1c00cf40 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc>:
1c00cf40:	99010113          	addi	sp,sp,-1648
1c00cf44:	7371                	lui	t1,0xffffc
1c00cf46:	66112623          	sw	ra,1644(sp)
1c00cf4a:	66812423          	sw	s0,1640(sp)
1c00cf4e:	66912223          	sw	s1,1636(sp)
1c00cf52:	67212023          	sw	s2,1632(sp)
1c00cf56:	65412c23          	sw	s4,1624(sp)
1c00cf5a:	65512a23          	sw	s5,1620(sp)
1c00cf5e:	65612823          	sw	s6,1616(sp)
1c00cf62:	65912223          	sw	s9,1604(sp)
1c00cf66:	63b12e23          	sw	s11,1596(sp)
1c00cf6a:	65312e23          	sw	s3,1628(sp)
1c00cf6e:	65712623          	sw	s7,1612(sp)
1c00cf72:	65812423          	sw	s8,1608(sp)
1c00cf76:	65a12023          	sw	s10,1600(sp)
1c00cf7a:	6711                	lui	a4,0x4
1c00cf7c:	911a                	add	sp,sp,t1
1c00cf7e:	c62a                	sw	a0,12(sp)
1c00cf80:	63070713          	addi	a4,a4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00cf84:	7575                	lui	a0,0xffffd
1c00cf86:	970a                	add	a4,a4,sp
1c00cf88:	80050513          	addi	a0,a0,-2048 # ffffc800 <pulp__FC+0xffffc801>
1c00cf8c:	84ae                	mv	s1,a1
1c00cf8e:	953a                	add	a0,a0,a4
1c00cf90:	85b2                	mv	a1,a2
1c00cf92:	8432                	mv	s0,a2
1c00cf94:	c436                	sw	a3,8(sp)
1c00cf96:	0ec010ef          	jal	ra,1c00e082 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>
1c00cf9a:	6e91                	lui	t4,0x4
1c00cf9c:	7971                	lui	s2,0xffffc
1c00cf9e:	630e8e93          	addi	t4,t4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00cfa2:	61842703          	lw	a4,1560(s0)
1c00cfa6:	61c42783          	lw	a5,1564(s0)
1c00cfaa:	60042e03          	lw	t3,1536(s0)
1c00cfae:	60442303          	lw	t1,1540(s0)
1c00cfb2:	60842883          	lw	a7,1544(s0)
1c00cfb6:	60c42803          	lw	a6,1548(s0)
1c00cfba:	61042603          	lw	a2,1552(s0)
1c00cfbe:	61442683          	lw	a3,1556(s0)
1c00cfc2:	c0090513          	addi	a0,s2,-1024 # ffffbc00 <pulp__FC+0xffffbc01>
1c00cfc6:	9e8a                	add	t4,t4,sp
1c00cfc8:	85a6                	mv	a1,s1
1c00cfca:	9576                	add	a0,a0,t4
1c00cfcc:	d43a                	sw	a4,40(sp)
1c00cfce:	d63e                	sw	a5,44(sp)
1c00cfd0:	c872                	sw	t3,16(sp)
1c00cfd2:	ca1a                	sw	t1,20(sp)
1c00cfd4:	cc46                	sw	a7,24(sp)
1c00cfd6:	ce42                	sw	a6,28(sp)
1c00cfd8:	d032                	sw	a2,32(sp)
1c00cfda:	d236                	sw	a3,36(sp)
1c00cfdc:	219000ef          	jal	ra,1c00d9f4 <PQCLEAN_KYBER1024_CLEAN_poly_frommsg>
1c00cfe0:	6711                	lui	a4,0x4
1c00cfe2:	7cf9                	lui	s9,0xffffe
1c00cfe4:	63070713          	addi	a4,a4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00cfe8:	6789                	lui	a5,0x2
1c00cfea:	970a                	add	a4,a4,sp
1c00cfec:	800c8493          	addi	s1,s9,-2048 # ffffd800 <pulp__FC+0xffffd801>
1c00cff0:	63078793          	addi	a5,a5,1584 # 2630 <__CTOR_LIST__-0x1bffd9d4>
1c00cff4:	9e090913          	addi	s2,s2,-1568
1c00cff8:	94ba                	add	s1,s1,a4
1c00cffa:	6a85                	lui	s5,0x1
1c00cffc:	978a                	add	a5,a5,sp
1c00cffe:	c23e                	sw	a5,4(sp)
1c00d000:	c002                	sw	zero,0(sp)
1c00d002:	01270b33          	add	s6,a4,s2
1c00d006:	1f848a13          	addi	s4,s1,504 # ff0101f8 <pulp__FC+0xff0101f9>
1c00d00a:	fffa8d93          	addi	s11,s5,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00d00e:	4782                	lw	a5,0(sp)
1c00d010:	4412                	lw	s0,4(sp)
1c00d012:	0ff7fb93          	andi	s7,a5,255
1c00d016:	4901                	li	s2,0
1c00d018:	a035                	j	1c00d044 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x104>
1c00d01a:	001c1813          	slli	a6,s8,0x1
1c00d01e:	9822                	add	a6,a6,s0
1c00d020:	001c0893          	addi	a7,s8,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00d024:	00f81023          	sh	a5,0(a6) # ff010000 <pulp__FC+0xff010001>
1c00d028:	2ea89863          	bne	a7,a0,1c00d318 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x3d8>
1c00d02c:	6505                	lui	a0,0x1
1c00d02e:	63050513          	addi	a0,a0,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00d032:	950a                	add	a0,a0,sp
1c00d034:	98cff0ef          	jal	ra,1c00c1c0 <shake128_ctx_release>
1c00d038:	0905                	addi	s2,s2,1
1c00d03a:	4791                	li	a5,4
1c00d03c:	20040413          	addi	s0,s0,512
1c00d040:	0ef90d63          	beq	s2,a5,1c00d13a <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1fa>
1c00d044:	6505                	lui	a0,0x1
1c00d046:	63050513          	addi	a0,a0,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00d04a:	0ff97693          	andi	a3,s2,255
1c00d04e:	85da                	mv	a1,s6
1c00d050:	950a                	add	a0,a0,sp
1c00d052:	865e                	mv	a2,s7
1c00d054:	1ae010ef          	jal	ra,1c00e202 <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>
1c00d058:	6605                	lui	a2,0x1
1c00d05a:	63060613          	addi	a2,a2,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00d05e:	458d                	li	a1,3
1c00d060:	8526                	mv	a0,s1
1c00d062:	960a                	add	a2,a2,sp
1c00d064:	89cff0ef          	jal	ra,1c00c100 <shake128_squeezeblocks>
1c00d068:	4c01                	li	s8,0
1c00d06a:	8726                	mv	a4,s1
1c00d06c:	d00a8593          	addi	a1,s5,-768
1c00d070:	10000513          	li	a0,256
1c00d074:	00174603          	lbu	a2,1(a4)
1c00d078:	00074683          	lbu	a3,0(a4)
1c00d07c:	00861793          	slli	a5,a2,0x8
1c00d080:	8fd5                	or	a5,a5,a3
1c00d082:	01b7f7b3          	and	a5,a5,s11
1c00d086:	00274683          	lbu	a3,2(a4)
1c00d08a:	f8f5f8e3          	bleu	a5,a1,1c00d01a <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0xda>
1c00d08e:	8211                	srli	a2,a2,0x4
1c00d090:	0692                	slli	a3,a3,0x4
1c00d092:	8ed1                	or	a3,a3,a2
1c00d094:	00d5c863          	blt	a1,a3,1c00d0a4 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x164>
1c00d098:	001c1793          	slli	a5,s8,0x1
1c00d09c:	97a2                	add	a5,a5,s0
1c00d09e:	00d79023          	sh	a3,0(a5)
1c00d0a2:	0c05                	addi	s8,s8,1
1c00d0a4:	f8ac04e3          	beq	s8,a0,1c00d02c <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0xec>
1c00d0a8:	070d                	addi	a4,a4,3
1c00d0aa:	fd4715e3          	bne	a4,s4,1c00d074 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x134>
1c00d0ae:	0a848c93          	addi	s9,s1,168
1c00d0b2:	10000993          	li	s3,256
1c00d0b6:	d00a8d13          	addi	s10,s5,-768
1c00d0ba:	a031                	j	1c00d0c6 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x186>
1c00d0bc:	9c2e                	add	s8,s8,a1
1c00d0be:	0ff00793          	li	a5,255
1c00d0c2:	f787e5e3          	bltu	a5,s8,1c00d02c <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0xec>
1c00d0c6:	6605                	lui	a2,0x1
1c00d0c8:	63060613          	addi	a2,a2,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00d0cc:	4585                	li	a1,1
1c00d0ce:	8526                	mv	a0,s1
1c00d0d0:	960a                	add	a2,a2,sp
1c00d0d2:	82eff0ef          	jal	ra,1c00c100 <shake128_squeezeblocks>
1c00d0d6:	001c1513          	slli	a0,s8,0x1
1c00d0da:	9522                	add	a0,a0,s0
1c00d0dc:	41898eb3          	sub	t4,s3,s8
1c00d0e0:	86a6                	mv	a3,s1
1c00d0e2:	4581                	li	a1,0
1c00d0e4:	00159793          	slli	a5,a1,0x1
1c00d0e8:	00f50f33          	add	t5,a0,a5
1c00d0ec:	fd9688e3          	beq	a3,s9,1c00d0bc <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x17c>
1c00d0f0:	0016c703          	lbu	a4,1(a3)
1c00d0f4:	0006c603          	lbu	a2,0(a3)
1c00d0f8:	00871793          	slli	a5,a4,0x8
1c00d0fc:	8fd1                	or	a5,a5,a2
1c00d0fe:	01b7f7b3          	and	a5,a5,s11
1c00d102:	00475613          	srli	a2,a4,0x4
1c00d106:	0026c703          	lbu	a4,2(a3)
1c00d10a:	00fd6563          	bltu	s10,a5,1c00d114 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1d4>
1c00d10e:	00ff1023          	sh	a5,0(t5) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00d112:	0585                	addi	a1,a1,1
1c00d114:	00471793          	slli	a5,a4,0x4
1c00d118:	8fd1                	or	a5,a5,a2
1c00d11a:	fbd5f1e3          	bleu	t4,a1,1c00d0bc <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x17c>
1c00d11e:	00159713          	slli	a4,a1,0x1
1c00d122:	972a                	add	a4,a4,a0
1c00d124:	00158613          	addi	a2,a1,1
1c00d128:	00fd4763          	blt	s10,a5,1c00d136 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1f6>
1c00d12c:	00f71023          	sh	a5,0(a4)
1c00d130:	85b2                	mv	a1,a2
1c00d132:	f9d675e3          	bleu	t4,a2,1c00d0bc <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x17c>
1c00d136:	068d                	addi	a3,a3,3
1c00d138:	b775                	j	1c00d0e4 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1a4>
1c00d13a:	4e82                	lw	t4,0(sp)
1c00d13c:	4712                	lw	a4,4(sp)
1c00d13e:	800a8413          	addi	s0,s5,-2048
1c00d142:	0e85                	addi	t4,t4,1
1c00d144:	9722                	add	a4,a4,s0
1c00d146:	c076                	sw	t4,0(sp)
1c00d148:	c23a                	sw	a4,4(sp)
1c00d14a:	ed2e92e3          	bne	t4,s2,1c00d00e <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0xce>
1c00d14e:	45a2                	lw	a1,8(sp)
1c00d150:	63010513          	addi	a0,sp,1584
1c00d154:	4601                	li	a2,0
1c00d156:	275000ef          	jal	ra,1c00dbca <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00d15a:	63010e93          	addi	t4,sp,1584
1c00d15e:	45a2                	lw	a1,8(sp)
1c00d160:	200e8513          	addi	a0,t4,512
1c00d164:	4605                	li	a2,1
1c00d166:	265000ef          	jal	ra,1c00dbca <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00d16a:	63010713          	addi	a4,sp,1584
1c00d16e:	45a2                	lw	a1,8(sp)
1c00d170:	40070513          	addi	a0,a4,1024
1c00d174:	4609                	li	a2,2
1c00d176:	255000ef          	jal	ra,1c00dbca <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00d17a:	63010793          	addi	a5,sp,1584
1c00d17e:	45a2                	lw	a1,8(sp)
1c00d180:	60078513          	addi	a0,a5,1536
1c00d184:	460d                	li	a2,3
1c00d186:	245000ef          	jal	ra,1c00dbca <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00d18a:	6505                	lui	a0,0x1
1c00d18c:	45a2                	lw	a1,8(sp)
1c00d18e:	63050513          	addi	a0,a0,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00d192:	950a                	add	a0,a0,sp
1c00d194:	4611                	li	a2,4
1c00d196:	259000ef          	jal	ra,1c00dbee <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00d19a:	6e85                	lui	t4,0x1
1c00d19c:	630e8e93          	addi	t4,t4,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00d1a0:	9e8a                	add	t4,t4,sp
1c00d1a2:	45a2                	lw	a1,8(sp)
1c00d1a4:	200e8513          	addi	a0,t4,512
1c00d1a8:	4615                	li	a2,5
1c00d1aa:	245000ef          	jal	ra,1c00dbee <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00d1ae:	6705                	lui	a4,0x1
1c00d1b0:	63070713          	addi	a4,a4,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00d1b4:	970a                	add	a4,a4,sp
1c00d1b6:	45a2                	lw	a1,8(sp)
1c00d1b8:	40070513          	addi	a0,a4,1024
1c00d1bc:	4619                	li	a2,6
1c00d1be:	231000ef          	jal	ra,1c00dbee <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00d1c2:	6785                	lui	a5,0x1
1c00d1c4:	63078793          	addi	a5,a5,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00d1c8:	978a                	add	a5,a5,sp
1c00d1ca:	45a2                	lw	a1,8(sp)
1c00d1cc:	60078513          	addi	a0,a5,1536
1c00d1d0:	461d                	li	a2,7
1c00d1d2:	21d000ef          	jal	ra,1c00dbee <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00d1d6:	6e91                	lui	t4,0x4
1c00d1d8:	7971                	lui	s2,0xffffc
1c00d1da:	630e8e93          	addi	t4,t4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00d1de:	9e8a                	add	t4,t4,sp
1c00d1e0:	e0090993          	addi	s3,s2,-512 # ffffbe00 <pulp__FC+0xffffbe01>
1c00d1e4:	99f6                	add	s3,s3,t4
1c00d1e6:	45a2                	lw	a1,8(sp)
1c00d1e8:	4621                	li	a2,8
1c00d1ea:	854e                	mv	a0,s3
1c00d1ec:	203000ef          	jal	ra,1c00dbee <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00d1f0:	63010513          	addi	a0,sp,1584
1c00d1f4:	6c1000ef          	jal	ra,1c00e0b4 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c00d1f8:	6711                	lui	a4,0x4
1c00d1fa:	77f9                	lui	a5,0xffffe
1c00d1fc:	63070713          	addi	a4,a4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00d200:	970a                	add	a4,a4,sp
1c00d202:	80078493          	addi	s1,a5,-2048 # ffffd800 <pulp__FC+0xffffd801>
1c00d206:	6589                	lui	a1,0x2
1c00d208:	94ba                	add	s1,s1,a4
1c00d20a:	63058593          	addi	a1,a1,1584 # 2630 <__CTOR_LIST__-0x1bffd9d4>
1c00d20e:	958a                	add	a1,a1,sp
1c00d210:	8526                	mv	a0,s1
1c00d212:	63010613          	addi	a2,sp,1584
1c00d216:	6e3000ef          	jal	ra,1c00e0f8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00d21a:	6789                	lui	a5,0x2
1c00d21c:	63078793          	addi	a5,a5,1584 # 2630 <__CTOR_LIST__-0x1bffd9d4>
1c00d220:	978a                	add	a5,a5,sp
1c00d222:	008785b3          	add	a1,a5,s0
1c00d226:	63010613          	addi	a2,sp,1584
1c00d22a:	20048513          	addi	a0,s1,512
1c00d22e:	6cb000ef          	jal	ra,1c00e0f8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00d232:	6e89                	lui	t4,0x2
1c00d234:	630e8e93          	addi	t4,t4,1584 # 2630 <__CTOR_LIST__-0x1bffd9d4>
1c00d238:	9e8a                	add	t4,t4,sp
1c00d23a:	015e85b3          	add	a1,t4,s5
1c00d23e:	63010613          	addi	a2,sp,1584
1c00d242:	40048513          	addi	a0,s1,1024
1c00d246:	6b3000ef          	jal	ra,1c00e0f8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00d24a:	6711                	lui	a4,0x4
1c00d24c:	e3070713          	addi	a4,a4,-464 # 3e30 <__CTOR_LIST__-0x1bffc1d4>
1c00d250:	00e105b3          	add	a1,sp,a4
1c00d254:	63010613          	addi	a2,sp,1584
1c00d258:	60048513          	addi	a0,s1,1536
1c00d25c:	69d000ef          	jal	ra,1c00e0f8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00d260:	6791                	lui	a5,0x4
1c00d262:	63078793          	addi	a5,a5,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00d266:	978a                	add	a5,a5,sp
1c00d268:	7ef5                	lui	t4,0xffffd
1c00d26a:	a0090413          	addi	s0,s2,-1536
1c00d26e:	943e                	add	s0,s0,a5
1c00d270:	800e8593          	addi	a1,t4,-2048 # ffffc800 <pulp__FC+0xffffc801>
1c00d274:	95be                	add	a1,a1,a5
1c00d276:	63010613          	addi	a2,sp,1584
1c00d27a:	8522                	mv	a0,s0
1c00d27c:	67d000ef          	jal	ra,1c00e0f8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00d280:	8526                	mv	a0,s1
1c00d282:	655000ef          	jal	ra,1c00e0d6 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont>
1c00d286:	8522                	mv	a0,s0
1c00d288:	1b7000ef          	jal	ra,1c00dc3e <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00d28c:	6605                	lui	a2,0x1
1c00d28e:	63060613          	addi	a2,a2,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00d292:	960a                	add	a2,a2,sp
1c00d294:	85a6                	mv	a1,s1
1c00d296:	8526                	mv	a0,s1
1c00d298:	6ed000ef          	jal	ra,1c00e184 <PQCLEAN_KYBER1024_CLEAN_polyvec_add>
1c00d29c:	864e                	mv	a2,s3
1c00d29e:	85a2                	mv	a1,s0
1c00d2a0:	8522                	mv	a0,s0
1c00d2a2:	237000ef          	jal	ra,1c00dcd8 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00d2a6:	6711                	lui	a4,0x4
1c00d2a8:	63070713          	addi	a4,a4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00d2ac:	970a                	add	a4,a4,sp
1c00d2ae:	c0090613          	addi	a2,s2,-1024
1c00d2b2:	963a                	add	a2,a2,a4
1c00d2b4:	85a2                	mv	a1,s0
1c00d2b6:	8522                	mv	a0,s0
1c00d2b8:	221000ef          	jal	ra,1c00dcd8 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00d2bc:	8526                	mv	a0,s1
1c00d2be:	6a5000ef          	jal	ra,1c00e162 <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>
1c00d2c2:	8522                	mv	a0,s0
1c00d2c4:	1ed000ef          	jal	ra,1c00dcb0 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00d2c8:	4532                	lw	a0,12(sp)
1c00d2ca:	85a6                	mv	a1,s1
1c00d2cc:	249000ef          	jal	ra,1c00dd14 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress>
1c00d2d0:	47b2                	lw	a5,12(sp)
1c00d2d2:	85a2                	mv	a1,s0
1c00d2d4:	58078513          	addi	a0,a5,1408
1c00d2d8:	2999                	jal	1c00d72e <PQCLEAN_KYBER1024_CLEAN_poly_compress>
1c00d2da:	6311                	lui	t1,0x4
1c00d2dc:	911a                	add	sp,sp,t1
1c00d2de:	66c12083          	lw	ra,1644(sp)
1c00d2e2:	66812403          	lw	s0,1640(sp)
1c00d2e6:	66412483          	lw	s1,1636(sp)
1c00d2ea:	66012903          	lw	s2,1632(sp)
1c00d2ee:	65c12983          	lw	s3,1628(sp)
1c00d2f2:	65812a03          	lw	s4,1624(sp)
1c00d2f6:	65412a83          	lw	s5,1620(sp)
1c00d2fa:	65012b03          	lw	s6,1616(sp)
1c00d2fe:	64c12b83          	lw	s7,1612(sp)
1c00d302:	64812c03          	lw	s8,1608(sp)
1c00d306:	64412c83          	lw	s9,1604(sp)
1c00d30a:	64012d03          	lw	s10,1600(sp)
1c00d30e:	63c12d83          	lw	s11,1596(sp)
1c00d312:	67010113          	addi	sp,sp,1648
1c00d316:	8082                	ret
1c00d318:	00469793          	slli	a5,a3,0x4
1c00d31c:	00465693          	srli	a3,a2,0x4
1c00d320:	8edd                	or	a3,a3,a5
1c00d322:	8c46                	mv	s8,a7
1c00d324:	d6d5dae3          	ble	a3,a1,1c00d098 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x158>
1c00d328:	b341                	j	1c00d0a8 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x168>

1c00d32a <PQCLEAN_KYBER1024_CLEAN_indcpa_dec>:
1c00d32a:	737d                	lui	t1,0xfffff
1c00d32c:	be010113          	addi	sp,sp,-1056
1c00d330:	40112e23          	sw	ra,1052(sp)
1c00d334:	40812c23          	sw	s0,1048(sp)
1c00d338:	40912a23          	sw	s1,1044(sp)
1c00d33c:	41212823          	sw	s2,1040(sp)
1c00d340:	41312623          	sw	s3,1036(sp)
1c00d344:	41412423          	sw	s4,1032(sp)
1c00d348:	911a                	add	sp,sp,t1
1c00d34a:	892a                	mv	s2,a0
1c00d34c:	40010513          	addi	a0,sp,1024
1c00d350:	89b2                	mv	s3,a2
1c00d352:	8a2e                	mv	s4,a1
1c00d354:	395000ef          	jal	ra,1c00dee8 <PQCLEAN_KYBER1024_CLEAN_polyvec_decompress>
1c00d358:	6785                	lui	a5,0x1
1c00d35a:	747d                	lui	s0,0xfffff
1c00d35c:	40078793          	addi	a5,a5,1024 # 1400 <__CTOR_LIST__-0x1bffec04>
1c00d360:	978a                	add	a5,a5,sp
1c00d362:	c0040493          	addi	s1,s0,-1024 # ffffec00 <pulp__FC+0xffffec01>
1c00d366:	94be                	add	s1,s1,a5
1c00d368:	580a0593          	addi	a1,s4,1408
1c00d36c:	8526                	mv	a0,s1
1c00d36e:	2b3d                	jal	1c00d8ac <PQCLEAN_KYBER1024_CLEAN_poly_decompress>
1c00d370:	6505                	lui	a0,0x1
1c00d372:	c0050513          	addi	a0,a0,-1024 # c00 <__CTOR_LIST__-0x1bfff404>
1c00d376:	85ce                	mv	a1,s3
1c00d378:	950a                	add	a0,a0,sp
1c00d37a:	509000ef          	jal	ra,1c00e082 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>
1c00d37e:	40010513          	addi	a0,sp,1024
1c00d382:	533000ef          	jal	ra,1c00e0b4 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c00d386:	6785                	lui	a5,0x1
1c00d388:	40078793          	addi	a5,a5,1024 # 1400 <__CTOR_LIST__-0x1bffec04>
1c00d38c:	978a                	add	a5,a5,sp
1c00d38e:	e0040413          	addi	s0,s0,-512
1c00d392:	6585                	lui	a1,0x1
1c00d394:	943e                	add	s0,s0,a5
1c00d396:	c0058593          	addi	a1,a1,-1024 # c00 <__CTOR_LIST__-0x1bfff404>
1c00d39a:	40010613          	addi	a2,sp,1024
1c00d39e:	958a                	add	a1,a1,sp
1c00d3a0:	8522                	mv	a0,s0
1c00d3a2:	557000ef          	jal	ra,1c00e0f8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00d3a6:	8522                	mv	a0,s0
1c00d3a8:	097000ef          	jal	ra,1c00dc3e <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00d3ac:	8622                	mv	a2,s0
1c00d3ae:	85a6                	mv	a1,s1
1c00d3b0:	8522                	mv	a0,s0
1c00d3b2:	145000ef          	jal	ra,1c00dcf6 <PQCLEAN_KYBER1024_CLEAN_poly_sub>
1c00d3b6:	8522                	mv	a0,s0
1c00d3b8:	0f9000ef          	jal	ra,1c00dcb0 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00d3bc:	85a2                	mv	a1,s0
1c00d3be:	854a                	mv	a0,s2
1c00d3c0:	25d9                	jal	1c00da86 <PQCLEAN_KYBER1024_CLEAN_poly_tomsg>
1c00d3c2:	6305                	lui	t1,0x1
1c00d3c4:	911a                	add	sp,sp,t1
1c00d3c6:	41c12083          	lw	ra,1052(sp)
1c00d3ca:	41812403          	lw	s0,1048(sp)
1c00d3ce:	41412483          	lw	s1,1044(sp)
1c00d3d2:	41012903          	lw	s2,1040(sp)
1c00d3d6:	40c12983          	lw	s3,1036(sp)
1c00d3da:	40812a03          	lw	s4,1032(sp)
1c00d3de:	42010113          	addi	sp,sp,1056
1c00d3e2:	8082                	ret

1c00d3e4 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_dec>:
1c00d3e4:	94010113          	addi	sp,sp,-1728
1c00d3e8:	6b312623          	sw	s3,1708(sp)
1c00d3ec:	89aa                	mv	s3,a0
1c00d3ee:	850a                	mv	a0,sp
1c00d3f0:	6a112e23          	sw	ra,1724(sp)
1c00d3f4:	6a812c23          	sw	s0,1720(sp)
1c00d3f8:	6a912a23          	sw	s1,1716(sp)
1c00d3fc:	6b212823          	sw	s2,1712(sp)
1c00d400:	6b412423          	sw	s4,1704(sp)
1c00d404:	84b2                	mv	s1,a2
1c00d406:	892e                	mv	s2,a1
1c00d408:	6405                	lui	s0,0x1
1c00d40a:	3705                	jal	1c00d32a <PQCLEAN_KYBER1024_CLEAN_indcpa_dec>
1c00d40c:	008487b3          	add	a5,s1,s0
1c00d410:	c207ae83          	lw	t4,-992(a5)
1c00d414:	c247ae03          	lw	t3,-988(a5)
1c00d418:	c287a303          	lw	t1,-984(a5)
1c00d41c:	c2c7a883          	lw	a7,-980(a5)
1c00d420:	c307a803          	lw	a6,-976(a5)
1c00d424:	c387a703          	lw	a4,-968(a5)
1c00d428:	c347a683          	lw	a3,-972(a5)
1c00d42c:	c3c7a783          	lw	a5,-964(a5)
1c00d430:	858a                	mv	a1,sp
1c00d432:	0088                	addi	a0,sp,64
1c00d434:	04000613          	li	a2,64
1c00d438:	d076                	sw	t4,32(sp)
1c00d43a:	d272                	sw	t3,36(sp)
1c00d43c:	d41a                	sw	t1,40(sp)
1c00d43e:	d646                	sw	a7,44(sp)
1c00d440:	d842                	sw	a6,48(sp)
1c00d442:	dc3a                	sw	a4,56(sp)
1c00d444:	de3e                	sw	a5,60(sp)
1c00d446:	da36                	sw	a3,52(sp)
1c00d448:	9a6ff0ef          	jal	ra,1c00c5ee <sha3_512>
1c00d44c:	1094                	addi	a3,sp,96
1c00d44e:	60048613          	addi	a2,s1,1536
1c00d452:	858a                	mv	a1,sp
1c00d454:	0108                	addi	a0,sp,128
1c00d456:	34ed                	jal	1c00cf40 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc>
1c00d458:	010c                	addi	a1,sp,128
1c00d45a:	62000613          	li	a2,1568
1c00d45e:	854a                	mv	a0,s2
1c00d460:	615000ef          	jal	ra,1c00e274 <PQCLEAN_KYBER1024_CLEAN_verify>
1c00d464:	8a2a                	mv	s4,a0
1c00d466:	85ca                	mv	a1,s2
1c00d468:	1088                	addi	a0,sp,96
1c00d46a:	62000613          	li	a2,1568
1c00d46e:	f99fe0ef          	jal	ra,1c00c406 <sha3_256>
1c00d472:	c4040593          	addi	a1,s0,-960 # c40 <__CTOR_LIST__-0x1bfff3c4>
1c00d476:	0ffa7693          	andi	a3,s4,255
1c00d47a:	95a6                	add	a1,a1,s1
1c00d47c:	0088                	addi	a0,sp,64
1c00d47e:	02000613          	li	a2,32
1c00d482:	6a5000ef          	jal	ra,1c00e326 <PQCLEAN_KYBER1024_CLEAN_cmov>
1c00d486:	854e                	mv	a0,s3
1c00d488:	0090                	addi	a2,sp,64
1c00d48a:	04000693          	li	a3,64
1c00d48e:	02000593          	li	a1,32
1c00d492:	d39fe0ef          	jal	ra,1c00c1ca <shake256>
1c00d496:	6bc12083          	lw	ra,1724(sp)
1c00d49a:	6b812403          	lw	s0,1720(sp)
1c00d49e:	6b412483          	lw	s1,1716(sp)
1c00d4a2:	6b012903          	lw	s2,1712(sp)
1c00d4a6:	6ac12983          	lw	s3,1708(sp)
1c00d4aa:	6a812a03          	lw	s4,1704(sp)
1c00d4ae:	4501                	li	a0,0
1c00d4b0:	6c010113          	addi	sp,sp,1728
1c00d4b4:	8082                	ret

1c00d4b6 <PQCLEAN_KYBER1024_CLEAN_ntt>:
1c00d4b6:	7139                	addi	sp,sp,-64
1c00d4b8:	da26                	sw	s1,52(sp)
1c00d4ba:	d256                	sw	s5,36(sp)
1c00d4bc:	d05a                	sw	s6,32(sp)
1c00d4be:	ce5e                	sw	s7,28(sp)
1c00d4c0:	cc62                	sw	s8,24(sp)
1c00d4c2:	ca66                	sw	s9,20(sp)
1c00d4c4:	de06                	sw	ra,60(sp)
1c00d4c6:	dc22                	sw	s0,56(sp)
1c00d4c8:	d84a                	sw	s2,48(sp)
1c00d4ca:	d64e                	sw	s3,44(sp)
1c00d4cc:	d452                	sw	s4,40(sp)
1c00d4ce:	c86a                	sw	s10,16(sp)
1c00d4d0:	c66e                	sw	s11,12(sp)
1c00d4d2:	8b2a                	mv	s6,a0
1c00d4d4:	4c9d                	li	s9,7
1c00d4d6:	d0a00493          	li	s1,-758
1c00d4da:	4b85                	li	s7,1
1c00d4dc:	08000a93          	li	s5,128
1c00d4e0:	0ff00c13          	li	s8,255
1c00d4e4:	001b8993          	addi	s3,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00d4e8:	1c0007b7          	lui	a5,0x1c000
1c00d4ec:	4401                	li	s0,0
1c00d4ee:	00199a13          	slli	s4,s3,0x1
1c00d4f2:	14878793          	addi	a5,a5,328 # 1c000148 <PQCLEAN_KYBER1024_CLEAN_zetas>
1c00d4f6:	008a8933          	add	s2,s5,s0
1c00d4fa:	9a3e                	add	s4,s4,a5
1c00d4fc:	8bce                	mv	s7,s3
1c00d4fe:	05247c63          	bleu	s2,s0,1c00d556 <PQCLEAN_KYBER1024_CLEAN_ntt+0xa0>
1c00d502:	00191793          	slli	a5,s2,0x1
1c00d506:	00fb0d33          	add	s10,s6,a5
1c00d50a:	0406                	slli	s0,s0,0x1
1c00d50c:	945a                	add	s0,s0,s6
1c00d50e:	8dea                	mv	s11,s10
1c00d510:	000d1503          	lh	a0,0(s10) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00d514:	0409                	addi	s0,s0,2
1c00d516:	02950533          	mul	a0,a0,s1
1c00d51a:	4a5000ef          	jal	ra,1c00e1be <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00d51e:	ffe45703          	lhu	a4,-2(s0)
1c00d522:	0542                	slli	a0,a0,0x10
1c00d524:	8141                	srli	a0,a0,0x10
1c00d526:	8f09                	sub	a4,a4,a0
1c00d528:	00ed1023          	sh	a4,0(s10)
1c00d52c:	ffe45703          	lhu	a4,-2(s0)
1c00d530:	0d09                	addi	s10,s10,2
1c00d532:	953a                	add	a0,a0,a4
1c00d534:	fea41f23          	sh	a0,-2(s0)
1c00d538:	fc8d9ce3          	bne	s11,s0,1c00d510 <PQCLEAN_KYBER1024_CLEAN_ntt+0x5a>
1c00d53c:	01590433          	add	s0,s2,s5
1c00d540:	008c6d63          	bltu	s8,s0,1c00d55a <PQCLEAN_KYBER1024_CLEAN_ntt+0xa4>
1c00d544:	0985                	addi	s3,s3,1
1c00d546:	008a8933          	add	s2,s5,s0
1c00d54a:	000a1483          	lh	s1,0(s4)
1c00d54e:	8bce                	mv	s7,s3
1c00d550:	0a09                	addi	s4,s4,2
1c00d552:	fb2468e3          	bltu	s0,s2,1c00d502 <PQCLEAN_KYBER1024_CLEAN_ntt+0x4c>
1c00d556:	844a                	mv	s0,s2
1c00d558:	b7f5                	j	1c00d544 <PQCLEAN_KYBER1024_CLEAN_ntt+0x8e>
1c00d55a:	1cfd                	addi	s9,s9,-1
1c00d55c:	001ada93          	srli	s5,s5,0x1
1c00d560:	000c8b63          	beqz	s9,1c00d576 <PQCLEAN_KYBER1024_CLEAN_ntt+0xc0>
1c00d564:	1c0007b7          	lui	a5,0x1c000
1c00d568:	0986                	slli	s3,s3,0x1
1c00d56a:	14878793          	addi	a5,a5,328 # 1c000148 <PQCLEAN_KYBER1024_CLEAN_zetas>
1c00d56e:	99be                	add	s3,s3,a5
1c00d570:	00099483          	lh	s1,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00d574:	bf85                	j	1c00d4e4 <PQCLEAN_KYBER1024_CLEAN_ntt+0x2e>
1c00d576:	50f2                	lw	ra,60(sp)
1c00d578:	5462                	lw	s0,56(sp)
1c00d57a:	54d2                	lw	s1,52(sp)
1c00d57c:	5942                	lw	s2,48(sp)
1c00d57e:	59b2                	lw	s3,44(sp)
1c00d580:	5a22                	lw	s4,40(sp)
1c00d582:	5a92                	lw	s5,36(sp)
1c00d584:	5b02                	lw	s6,32(sp)
1c00d586:	4bf2                	lw	s7,28(sp)
1c00d588:	4c62                	lw	s8,24(sp)
1c00d58a:	4cd2                	lw	s9,20(sp)
1c00d58c:	4d42                	lw	s10,16(sp)
1c00d58e:	4db2                	lw	s11,12(sp)
1c00d590:	6121                	addi	sp,sp,64
1c00d592:	8082                	ret

1c00d594 <PQCLEAN_KYBER1024_CLEAN_invntt>:
1c00d594:	7139                	addi	sp,sp,-64
1c00d596:	dc22                	sw	s0,56(sp)
1c00d598:	da26                	sw	s1,52(sp)
1c00d59a:	d256                	sw	s5,36(sp)
1c00d59c:	d05a                	sw	s6,32(sp)
1c00d59e:	ce5e                	sw	s7,28(sp)
1c00d5a0:	cc62                	sw	s8,24(sp)
1c00d5a2:	de06                	sw	ra,60(sp)
1c00d5a4:	d84a                	sw	s2,48(sp)
1c00d5a6:	d64e                	sw	s3,44(sp)
1c00d5a8:	d452                	sw	s4,40(sp)
1c00d5aa:	ca66                	sw	s9,20(sp)
1c00d5ac:	c86a                	sw	s10,16(sp)
1c00d5ae:	c66e                	sw	s11,12(sp)
1c00d5b0:	842a                	mv	s0,a0
1c00d5b2:	4c1d                	li	s8,7
1c00d5b4:	65c00493          	li	s1,1628
1c00d5b8:	07f00a93          	li	s5,127
1c00d5bc:	4b09                	li	s6,2
1c00d5be:	0ff00b93          	li	s7,255
1c00d5c2:	800007b7          	lui	a5,0x80000
1c00d5c6:	fff7c793          	not	a5,a5
1c00d5ca:	00fa8a33          	add	s4,s5,a5
1c00d5ce:	1c000737          	lui	a4,0x1c000
1c00d5d2:	4781                	li	a5,0
1c00d5d4:	0a06                	slli	s4,s4,0x1
1c00d5d6:	14870713          	addi	a4,a4,328 # 1c000148 <PQCLEAN_KYBER1024_CLEAN_zetas>
1c00d5da:	016789b3          	add	s3,a5,s6
1c00d5de:	9a3a                	add	s4,s4,a4
1c00d5e0:	1afd                	addi	s5,s5,-1
1c00d5e2:	0737f263          	bleu	s3,a5,1c00d646 <PQCLEAN_KYBER1024_CLEAN_invntt+0xb2>
1c00d5e6:	00199d93          	slli	s11,s3,0x1
1c00d5ea:	0786                	slli	a5,a5,0x1
1c00d5ec:	9da2                	add	s11,s11,s0
1c00d5ee:	00f40d33          	add	s10,s0,a5
1c00d5f2:	896e                	mv	s2,s11
1c00d5f4:	000d5c83          	lhu	s9,0(s10)
1c00d5f8:	000dd503          	lhu	a0,0(s11)
1c00d5fc:	0d09                	addi	s10,s10,2
1c00d5fe:	9566                	add	a0,a0,s9
1c00d600:	0542                	slli	a0,a0,0x10
1c00d602:	8541                	srai	a0,a0,0x10
1c00d604:	3db000ef          	jal	ra,1c00e1de <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c00d608:	fead1f23          	sh	a0,-2(s10)
1c00d60c:	000dd503          	lhu	a0,0(s11)
1c00d610:	0d89                	addi	s11,s11,2
1c00d612:	41950533          	sub	a0,a0,s9
1c00d616:	0542                	slli	a0,a0,0x10
1c00d618:	8541                	srai	a0,a0,0x10
1c00d61a:	fead9f23          	sh	a0,-2(s11)
1c00d61e:	02950533          	mul	a0,a0,s1
1c00d622:	39d000ef          	jal	ra,1c00e1be <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00d626:	fead9f23          	sh	a0,-2(s11)
1c00d62a:	fda915e3          	bne	s2,s10,1c00d5f4 <PQCLEAN_KYBER1024_CLEAN_invntt+0x60>
1c00d62e:	016987b3          	add	a5,s3,s6
1c00d632:	00fbed63          	bltu	s7,a5,1c00d64c <PQCLEAN_KYBER1024_CLEAN_invntt+0xb8>
1c00d636:	016789b3          	add	s3,a5,s6
1c00d63a:	000a1483          	lh	s1,0(s4)
1c00d63e:	1afd                	addi	s5,s5,-1
1c00d640:	1a79                	addi	s4,s4,-2
1c00d642:	fb37e2e3          	bltu	a5,s3,1c00d5e6 <PQCLEAN_KYBER1024_CLEAN_invntt+0x52>
1c00d646:	87ce                	mv	a5,s3
1c00d648:	fefbf7e3          	bleu	a5,s7,1c00d636 <PQCLEAN_KYBER1024_CLEAN_invntt+0xa2>
1c00d64c:	1c7d                	addi	s8,s8,-1
1c00d64e:	0b06                	slli	s6,s6,0x1
1c00d650:	000c0c63          	beqz	s8,1c00d668 <PQCLEAN_KYBER1024_CLEAN_invntt+0xd4>
1c00d654:	1c000737          	lui	a4,0x1c000
1c00d658:	001a9793          	slli	a5,s5,0x1
1c00d65c:	14870713          	addi	a4,a4,328 # 1c000148 <PQCLEAN_KYBER1024_CLEAN_zetas>
1c00d660:	97ba                	add	a5,a5,a4
1c00d662:	00079483          	lh	s1,0(a5) # 80000000 <pulp__FC+0x80000001>
1c00d666:	bfb1                	j	1c00d5c2 <PQCLEAN_KYBER1024_CLEAN_invntt+0x2e>
1c00d668:	20040913          	addi	s2,s0,512
1c00d66c:	5a100493          	li	s1,1441
1c00d670:	00041503          	lh	a0,0(s0)
1c00d674:	0409                	addi	s0,s0,2
1c00d676:	02950533          	mul	a0,a0,s1
1c00d67a:	345000ef          	jal	ra,1c00e1be <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00d67e:	fea41f23          	sh	a0,-2(s0)
1c00d682:	fe8917e3          	bne	s2,s0,1c00d670 <PQCLEAN_KYBER1024_CLEAN_invntt+0xdc>
1c00d686:	50f2                	lw	ra,60(sp)
1c00d688:	5462                	lw	s0,56(sp)
1c00d68a:	54d2                	lw	s1,52(sp)
1c00d68c:	5942                	lw	s2,48(sp)
1c00d68e:	59b2                	lw	s3,44(sp)
1c00d690:	5a22                	lw	s4,40(sp)
1c00d692:	5a92                	lw	s5,36(sp)
1c00d694:	5b02                	lw	s6,32(sp)
1c00d696:	4bf2                	lw	s7,28(sp)
1c00d698:	4c62                	lw	s8,24(sp)
1c00d69a:	4cd2                	lw	s9,20(sp)
1c00d69c:	4d42                	lw	s10,16(sp)
1c00d69e:	4db2                	lw	s11,12(sp)
1c00d6a0:	6121                	addi	sp,sp,64
1c00d6a2:	8082                	ret

1c00d6a4 <PQCLEAN_KYBER1024_CLEAN_basemul>:
1c00d6a4:	00261783          	lh	a5,2(a2)
1c00d6a8:	00259703          	lh	a4,2(a1)
1c00d6ac:	1101                	addi	sp,sp,-32
1c00d6ae:	cc22                	sw	s0,24(sp)
1c00d6b0:	842a                	mv	s0,a0
1c00d6b2:	02f70533          	mul	a0,a4,a5
1c00d6b6:	ce06                	sw	ra,28(sp)
1c00d6b8:	ca26                	sw	s1,20(sp)
1c00d6ba:	c84a                	sw	s2,16(sp)
1c00d6bc:	c64e                	sw	s3,12(sp)
1c00d6be:	892e                	mv	s2,a1
1c00d6c0:	84b2                	mv	s1,a2
1c00d6c2:	89b6                	mv	s3,a3
1c00d6c4:	2fb000ef          	jal	ra,1c00e1be <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00d6c8:	00a41023          	sh	a0,0(s0)
1c00d6cc:	03350533          	mul	a0,a0,s3
1c00d6d0:	2ef000ef          	jal	ra,1c00e1be <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00d6d4:	00a41023          	sh	a0,0(s0)
1c00d6d8:	00049783          	lh	a5,0(s1)
1c00d6dc:	00091503          	lh	a0,0(s2)
1c00d6e0:	02f50533          	mul	a0,a0,a5
1c00d6e4:	2db000ef          	jal	ra,1c00e1be <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00d6e8:	00045783          	lhu	a5,0(s0)
1c00d6ec:	953e                	add	a0,a0,a5
1c00d6ee:	00a41023          	sh	a0,0(s0)
1c00d6f2:	00249783          	lh	a5,2(s1)
1c00d6f6:	00091503          	lh	a0,0(s2)
1c00d6fa:	02f50533          	mul	a0,a0,a5
1c00d6fe:	2c1000ef          	jal	ra,1c00e1be <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00d702:	00a41123          	sh	a0,2(s0)
1c00d706:	00049783          	lh	a5,0(s1)
1c00d70a:	00291503          	lh	a0,2(s2)
1c00d70e:	02f50533          	mul	a0,a0,a5
1c00d712:	2ad000ef          	jal	ra,1c00e1be <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00d716:	00245783          	lhu	a5,2(s0)
1c00d71a:	40f2                	lw	ra,28(sp)
1c00d71c:	953e                	add	a0,a0,a5
1c00d71e:	00a41123          	sh	a0,2(s0)
1c00d722:	4462                	lw	s0,24(sp)
1c00d724:	44d2                	lw	s1,20(sp)
1c00d726:	4942                	lw	s2,16(sp)
1c00d728:	49b2                	lw	s3,12(sp)
1c00d72a:	6105                	addi	sp,sp,32
1c00d72c:	8082                	ret

1c00d72e <PQCLEAN_KYBER1024_CLEAN_poly_compress>:
1c00d72e:	1101                	addi	sp,sp,-32
1c00d730:	6605                	lui	a2,0x1
1c00d732:	ce22                	sw	s0,28(sp)
1c00d734:	cc26                	sw	s1,24(sp)
1c00d736:	ca4a                	sw	s2,20(sp)
1c00d738:	c84e                	sw	s3,16(sp)
1c00d73a:	c652                	sw	s4,12(sp)
1c00d73c:	0a050813          	addi	a6,a0,160
1c00d740:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00d744:	00459a03          	lh	s4,4(a1)
1c00d748:	00659983          	lh	s3,6(a1)
1c00d74c:	00a59903          	lh	s2,10(a1)
1c00d750:	00c59483          	lh	s1,12(a1)
1c00d754:	00859383          	lh	t2,8(a1)
1c00d758:	00e59283          	lh	t0,14(a1)
1c00d75c:	00259403          	lh	s0,2(a1)
1c00d760:	00059f83          	lh	t6,0(a1)
1c00d764:	40fa5e93          	srai	t4,s4,0xf
1c00d768:	40f9d713          	srai	a4,s3,0xf
1c00d76c:	40f95793          	srai	a5,s2,0xf
1c00d770:	40f4d893          	srai	a7,s1,0xf
1c00d774:	40f3d313          	srai	t1,t2,0xf
1c00d778:	40f2d693          	srai	a3,t0,0xf
1c00d77c:	40f45e13          	srai	t3,s0,0xf
1c00d780:	00cefeb3          	and	t4,t4,a2
1c00d784:	8f71                	and	a4,a4,a2
1c00d786:	8ff1                	and	a5,a5,a2
1c00d788:	00c8f8b3          	and	a7,a7,a2
1c00d78c:	40ffdf13          	srai	t5,t6,0xf
1c00d790:	00ce7e33          	and	t3,t3,a2
1c00d794:	9ed2                	add	t4,t4,s4
1c00d796:	974e                	add	a4,a4,s3
1c00d798:	00c37333          	and	t1,t1,a2
1c00d79c:	97ca                	add	a5,a5,s2
1c00d79e:	98a6                	add	a7,a7,s1
1c00d7a0:	8ef1                	and	a3,a3,a2
1c00d7a2:	931e                	add	t1,t1,t2
1c00d7a4:	9696                	add	a3,a3,t0
1c00d7a6:	00cf7f33          	and	t5,t5,a2
1c00d7aa:	9e22                	add	t3,t3,s0
1c00d7ac:	0742                	slli	a4,a4,0x10
1c00d7ae:	08c2                	slli	a7,a7,0x10
1c00d7b0:	0ec2                	slli	t4,t4,0x10
1c00d7b2:	07c2                	slli	a5,a5,0x10
1c00d7b4:	9f7e                	add	t5,t5,t6
1c00d7b6:	8741                	srai	a4,a4,0x10
1c00d7b8:	4108d893          	srai	a7,a7,0x10
1c00d7bc:	410ede93          	srai	t4,t4,0x10
1c00d7c0:	87c1                	srai	a5,a5,0x10
1c00d7c2:	0e42                	slli	t3,t3,0x10
1c00d7c4:	0342                	slli	t1,t1,0x10
1c00d7c6:	06c2                	slli	a3,a3,0x10
1c00d7c8:	410e5e13          	srai	t3,t3,0x10
1c00d7cc:	0716                	slli	a4,a4,0x5
1c00d7ce:	41035313          	srai	t1,t1,0x10
1c00d7d2:	0896                	slli	a7,a7,0x5
1c00d7d4:	0e96                	slli	t4,t4,0x5
1c00d7d6:	0796                	slli	a5,a5,0x5
1c00d7d8:	86c1                	srai	a3,a3,0x10
1c00d7da:	0f42                	slli	t5,t5,0x10
1c00d7dc:	0e16                	slli	t3,t3,0x5
1c00d7de:	68070713          	addi	a4,a4,1664
1c00d7e2:	0316                	slli	t1,t1,0x5
1c00d7e4:	68088893          	addi	a7,a7,1664
1c00d7e8:	410f5f13          	srai	t5,t5,0x10
1c00d7ec:	680e8e93          	addi	t4,t4,1664
1c00d7f0:	68078793          	addi	a5,a5,1664
1c00d7f4:	0696                	slli	a3,a3,0x5
1c00d7f6:	680e0e13          	addi	t3,t3,1664
1c00d7fa:	02c75733          	divu	a4,a4,a2
1c00d7fe:	68030313          	addi	t1,t1,1664 # 1680 <__CTOR_LIST__-0x1bffe984>
1c00d802:	02c8d8b3          	divu	a7,a7,a2
1c00d806:	0f16                	slli	t5,t5,0x5
1c00d808:	02cedeb3          	divu	t4,t4,a2
1c00d80c:	02c7d7b3          	divu	a5,a5,a2
1c00d810:	68068693          	addi	a3,a3,1664
1c00d814:	02ce5e33          	divu	t3,t3,a2
1c00d818:	02c35333          	divu	t1,t1,a2
1c00d81c:	680f0f13          	addi	t5,t5,1664
1c00d820:	02c6d6b3          	divu	a3,a3,a2
1c00d824:	02cf5f33          	divu	t5,t5,a2
1c00d828:	8b7d                	andi	a4,a4,31
1c00d82a:	01f8f893          	andi	a7,a7,31
1c00d82e:	01fefe93          	andi	t4,t4,31
1c00d832:	8bfd                	andi	a5,a5,31
1c00d834:	00771f93          	slli	t6,a4,0x7
1c00d838:	01fe7e13          	andi	t3,t3,31
1c00d83c:	01f37313          	andi	t1,t1,31
1c00d840:	00689393          	slli	t2,a7,0x6
1c00d844:	0e8a                	slli	t4,t4,0x2
1c00d846:	0786                	slli	a5,a5,0x1
1c00d848:	8afd                	andi	a3,a3,31
1c00d84a:	005e1293          	slli	t0,t3,0x5
1c00d84e:	01feeeb3          	or	t4,t4,t6
1c00d852:	01ff7f13          	andi	t5,t5,31
1c00d856:	00431f93          	slli	t6,t1,0x4
1c00d85a:	003e5e13          	srli	t3,t3,0x3
1c00d85e:	8305                	srli	a4,a4,0x1
1c00d860:	0077e7b3          	or	a5,a5,t2
1c00d864:	00435313          	srli	t1,t1,0x4
1c00d868:	068e                	slli	a3,a3,0x3
1c00d86a:	0028d893          	srli	a7,a7,0x2
1c00d86e:	005f6f33          	or	t5,t5,t0
1c00d872:	01ceee33          	or	t3,t4,t3
1c00d876:	01f76733          	or	a4,a4,t6
1c00d87a:	0067e7b3          	or	a5,a5,t1
1c00d87e:	0116e6b3          	or	a3,a3,a7
1c00d882:	01e50023          	sb	t5,0(a0)
1c00d886:	01c500a3          	sb	t3,1(a0)
1c00d88a:	00e50123          	sb	a4,2(a0)
1c00d88e:	00f501a3          	sb	a5,3(a0)
1c00d892:	00d50223          	sb	a3,4(a0)
1c00d896:	0515                	addi	a0,a0,5
1c00d898:	05c1                	addi	a1,a1,16
1c00d89a:	eb0515e3          	bne	a0,a6,1c00d744 <PQCLEAN_KYBER1024_CLEAN_poly_compress+0x16>
1c00d89e:	4472                	lw	s0,28(sp)
1c00d8a0:	44e2                	lw	s1,24(sp)
1c00d8a2:	4952                	lw	s2,20(sp)
1c00d8a4:	49c2                	lw	s3,16(sp)
1c00d8a6:	4a32                	lw	s4,12(sp)
1c00d8a8:	6105                	addi	sp,sp,32
1c00d8aa:	8082                	ret

1c00d8ac <PQCLEAN_KYBER1024_CLEAN_poly_decompress>:
1c00d8ac:	1141                	addi	sp,sp,-16
1c00d8ae:	6605                	lui	a2,0x1
1c00d8b0:	6841                	lui	a6,0x10
1c00d8b2:	c622                	sw	s0,12(sp)
1c00d8b4:	c426                	sw	s1,8(sp)
1c00d8b6:	0a058893          	addi	a7,a1,160
1c00d8ba:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00d8be:	187d                	addi	a6,a6,-1
1c00d8c0:	0035ce83          	lbu	t4,3(a1)
1c00d8c4:	0025c283          	lbu	t0,2(a1)
1c00d8c8:	0045cf83          	lbu	t6,4(a1)
1c00d8cc:	0015c683          	lbu	a3,1(a1)
1c00d8d0:	0005c303          	lbu	t1,0(a1)
1c00d8d4:	0042d713          	srli	a4,t0,0x4
1c00d8d8:	004e9493          	slli	s1,t4,0x4
1c00d8dc:	006ed793          	srli	a5,t4,0x6
1c00d8e0:	002f9413          	slli	s0,t6,0x2
1c00d8e4:	0026de13          	srli	t3,a3,0x2
1c00d8e8:	8f45                	or	a4,a4,s1
1c00d8ea:	8fc1                	or	a5,a5,s0
1c00d8ec:	00535f13          	srli	t5,t1,0x5
1c00d8f0:	00369393          	slli	t2,a3,0x3
1c00d8f4:	0286                	slli	t0,t0,0x1
1c00d8f6:	829d                	srli	a3,a3,0x7
1c00d8f8:	01f37313          	andi	t1,t1,31
1c00d8fc:	01fe7e13          	andi	t3,t3,31
1c00d900:	8b7d                	andi	a4,a4,31
1c00d902:	8bfd                	andi	a5,a5,31
1c00d904:	007f6f33          	or	t5,t5,t2
1c00d908:	0056e6b3          	or	a3,a3,t0
1c00d90c:	001ede93          	srli	t4,t4,0x1
1c00d910:	02c30333          	mul	t1,t1,a2
1c00d914:	02ce0e33          	mul	t3,t3,a2
1c00d918:	02c70733          	mul	a4,a4,a2
1c00d91c:	02c787b3          	mul	a5,a5,a2
1c00d920:	01ff7f13          	andi	t5,t5,31
1c00d924:	8afd                	andi	a3,a3,31
1c00d926:	01fefe93          	andi	t4,t4,31
1c00d92a:	003fdf93          	srli	t6,t6,0x3
1c00d92e:	0341                	addi	t1,t1,16
1c00d930:	0e41                	addi	t3,t3,16
1c00d932:	0741                	addi	a4,a4,16
1c00d934:	07c1                	addi	a5,a5,16
1c00d936:	02cf0f33          	mul	t5,t5,a2
1c00d93a:	02c686b3          	mul	a3,a3,a2
1c00d93e:	02ce8eb3          	mul	t4,t4,a2
1c00d942:	02cf8fb3          	mul	t6,t6,a2
1c00d946:	00535313          	srli	t1,t1,0x5
1c00d94a:	005e5e13          	srli	t3,t3,0x5
1c00d94e:	8315                	srli	a4,a4,0x5
1c00d950:	8395                	srli	a5,a5,0x5
1c00d952:	0f41                	addi	t5,t5,16
1c00d954:	06c1                	addi	a3,a3,16
1c00d956:	0ec1                	addi	t4,t4,16
1c00d958:	0fc1                	addi	t6,t6,16
1c00d95a:	0342                	slli	t1,t1,0x10
1c00d95c:	0e42                	slli	t3,t3,0x10
1c00d95e:	0742                	slli	a4,a4,0x10
1c00d960:	07c2                	slli	a5,a5,0x10
1c00d962:	01035313          	srli	t1,t1,0x10
1c00d966:	005f5f13          	srli	t5,t5,0x5
1c00d96a:	010e5e13          	srli	t3,t3,0x10
1c00d96e:	8295                	srli	a3,a3,0x5
1c00d970:	8341                	srli	a4,a4,0x10
1c00d972:	005ede93          	srli	t4,t4,0x5
1c00d976:	83c1                	srli	a5,a5,0x10
1c00d978:	005fdf93          	srli	t6,t6,0x5
1c00d97c:	0f42                	slli	t5,t5,0x10
1c00d97e:	01037333          	and	t1,t1,a6
1c00d982:	06c2                	slli	a3,a3,0x10
1c00d984:	010e7e33          	and	t3,t3,a6
1c00d988:	0ec2                	slli	t4,t4,0x10
1c00d98a:	01077733          	and	a4,a4,a6
1c00d98e:	0fc2                	slli	t6,t6,0x10
1c00d990:	0107f7b3          	and	a5,a5,a6
1c00d994:	01e36333          	or	t1,t1,t5
1c00d998:	00de66b3          	or	a3,t3,a3
1c00d99c:	01d76733          	or	a4,a4,t4
1c00d9a0:	01f7e7b3          	or	a5,a5,t6
1c00d9a4:	00652023          	sw	t1,0(a0)
1c00d9a8:	c154                	sw	a3,4(a0)
1c00d9aa:	c518                	sw	a4,8(a0)
1c00d9ac:	c55c                	sw	a5,12(a0)
1c00d9ae:	0595                	addi	a1,a1,5
1c00d9b0:	0541                	addi	a0,a0,16
1c00d9b2:	f11597e3          	bne	a1,a7,1c00d8c0 <PQCLEAN_KYBER1024_CLEAN_poly_decompress+0x14>
1c00d9b6:	4432                	lw	s0,12(sp)
1c00d9b8:	44a2                	lw	s1,8(sp)
1c00d9ba:	0141                	addi	sp,sp,16
1c00d9bc:	8082                	ret

1c00d9be <PQCLEAN_KYBER1024_CLEAN_poly_frombytes>:
1c00d9be:	6685                	lui	a3,0x1
1c00d9c0:	18058613          	addi	a2,a1,384
1c00d9c4:	16fd                	addi	a3,a3,-1
1c00d9c6:	0015c783          	lbu	a5,1(a1)
1c00d9ca:	0005c703          	lbu	a4,0(a1)
1c00d9ce:	07a2                	slli	a5,a5,0x8
1c00d9d0:	8fd9                	or	a5,a5,a4
1c00d9d2:	8ff5                	and	a5,a5,a3
1c00d9d4:	00f51023          	sh	a5,0(a0)
1c00d9d8:	0015c703          	lbu	a4,1(a1)
1c00d9dc:	0025c783          	lbu	a5,2(a1)
1c00d9e0:	8311                	srli	a4,a4,0x4
1c00d9e2:	0792                	slli	a5,a5,0x4
1c00d9e4:	8fd9                	or	a5,a5,a4
1c00d9e6:	00f51123          	sh	a5,2(a0)
1c00d9ea:	058d                	addi	a1,a1,3
1c00d9ec:	0511                	addi	a0,a0,4
1c00d9ee:	fcb61ce3          	bne	a2,a1,1c00d9c6 <PQCLEAN_KYBER1024_CLEAN_poly_frombytes+0x8>
1c00d9f2:	8082                	ret

1c00d9f4 <PQCLEAN_KYBER1024_CLEAN_poly_frommsg>:
1c00d9f4:	20050713          	addi	a4,a0,512
1c00d9f8:	0005c783          	lbu	a5,0(a1)
1c00d9fc:	0541                	addi	a0,a0,16
1c00d9fe:	8b85                	andi	a5,a5,1
1c00da00:	40f007b3          	neg	a5,a5
1c00da04:	6817f793          	andi	a5,a5,1665
1c00da08:	fef51823          	sh	a5,-16(a0)
1c00da0c:	0005c783          	lbu	a5,0(a1)
1c00da10:	0585                	addi	a1,a1,1
1c00da12:	07fa                	slli	a5,a5,0x1e
1c00da14:	87fd                	srai	a5,a5,0x1f
1c00da16:	6817f793          	andi	a5,a5,1665
1c00da1a:	fef51923          	sh	a5,-14(a0)
1c00da1e:	fff5c783          	lbu	a5,-1(a1)
1c00da22:	07f6                	slli	a5,a5,0x1d
1c00da24:	87fd                	srai	a5,a5,0x1f
1c00da26:	6817f793          	andi	a5,a5,1665
1c00da2a:	fef51a23          	sh	a5,-12(a0)
1c00da2e:	fff5c783          	lbu	a5,-1(a1)
1c00da32:	07f2                	slli	a5,a5,0x1c
1c00da34:	87fd                	srai	a5,a5,0x1f
1c00da36:	6817f793          	andi	a5,a5,1665
1c00da3a:	fef51b23          	sh	a5,-10(a0)
1c00da3e:	fff5c783          	lbu	a5,-1(a1)
1c00da42:	07ee                	slli	a5,a5,0x1b
1c00da44:	87fd                	srai	a5,a5,0x1f
1c00da46:	6817f793          	andi	a5,a5,1665
1c00da4a:	fef51c23          	sh	a5,-8(a0)
1c00da4e:	fff5c783          	lbu	a5,-1(a1)
1c00da52:	07ea                	slli	a5,a5,0x1a
1c00da54:	87fd                	srai	a5,a5,0x1f
1c00da56:	6817f793          	andi	a5,a5,1665
1c00da5a:	fef51d23          	sh	a5,-6(a0)
1c00da5e:	fff5c783          	lbu	a5,-1(a1)
1c00da62:	07e6                	slli	a5,a5,0x19
1c00da64:	87fd                	srai	a5,a5,0x1f
1c00da66:	6817f793          	andi	a5,a5,1665
1c00da6a:	fef51e23          	sh	a5,-4(a0)
1c00da6e:	fff5c783          	lbu	a5,-1(a1)
1c00da72:	879d                	srai	a5,a5,0x7
1c00da74:	40f007b3          	neg	a5,a5
1c00da78:	6817f793          	andi	a5,a5,1665
1c00da7c:	fef51f23          	sh	a5,-2(a0)
1c00da80:	f6e51ce3          	bne	a0,a4,1c00d9f8 <PQCLEAN_KYBER1024_CLEAN_poly_frommsg+0x4>
1c00da84:	8082                	ret

1c00da86 <PQCLEAN_KYBER1024_CLEAN_poly_tomsg>:
1c00da86:	6685                	lui	a3,0x1
1c00da88:	20058613          	addi	a2,a1,512
1c00da8c:	d0168693          	addi	a3,a3,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00da90:	00050023          	sb	zero,0(a0)
1c00da94:	00059783          	lh	a5,0(a1)
1c00da98:	05c1                	addi	a1,a1,16
1c00da9a:	40f7d713          	srai	a4,a5,0xf
1c00da9e:	8f75                	and	a4,a4,a3
1c00daa0:	97ba                	add	a5,a5,a4
1c00daa2:	07c2                	slli	a5,a5,0x10
1c00daa4:	83c1                	srli	a5,a5,0x10
1c00daa6:	0786                	slli	a5,a5,0x1
1c00daa8:	68078793          	addi	a5,a5,1664
1c00daac:	02d7c7b3          	div	a5,a5,a3
1c00dab0:	0017f813          	andi	a6,a5,1
1c00dab4:	01050023          	sb	a6,0(a0)
1c00dab8:	ff259703          	lh	a4,-14(a1)
1c00dabc:	0505                	addi	a0,a0,1
1c00dabe:	40f75793          	srai	a5,a4,0xf
1c00dac2:	8ff5                	and	a5,a5,a3
1c00dac4:	97ba                	add	a5,a5,a4
1c00dac6:	07c2                	slli	a5,a5,0x10
1c00dac8:	83c1                	srli	a5,a5,0x10
1c00daca:	0786                	slli	a5,a5,0x1
1c00dacc:	68078793          	addi	a5,a5,1664
1c00dad0:	02d7c7b3          	div	a5,a5,a3
1c00dad4:	8b85                	andi	a5,a5,1
1c00dad6:	0786                	slli	a5,a5,0x1
1c00dad8:	0107e7b3          	or	a5,a5,a6
1c00dadc:	fef50fa3          	sb	a5,-1(a0)
1c00dae0:	ff459703          	lh	a4,-12(a1)
1c00dae4:	40f75813          	srai	a6,a4,0xf
1c00dae8:	00d87833          	and	a6,a6,a3
1c00daec:	9742                	add	a4,a4,a6
1c00daee:	0742                	slli	a4,a4,0x10
1c00daf0:	8341                	srli	a4,a4,0x10
1c00daf2:	0706                	slli	a4,a4,0x1
1c00daf4:	68070713          	addi	a4,a4,1664
1c00daf8:	02d74733          	div	a4,a4,a3
1c00dafc:	8b05                	andi	a4,a4,1
1c00dafe:	070a                	slli	a4,a4,0x2
1c00db00:	8fd9                	or	a5,a5,a4
1c00db02:	fef50fa3          	sb	a5,-1(a0)
1c00db06:	ff659703          	lh	a4,-10(a1)
1c00db0a:	40f75813          	srai	a6,a4,0xf
1c00db0e:	00d87833          	and	a6,a6,a3
1c00db12:	9742                	add	a4,a4,a6
1c00db14:	0742                	slli	a4,a4,0x10
1c00db16:	8341                	srli	a4,a4,0x10
1c00db18:	0706                	slli	a4,a4,0x1
1c00db1a:	68070713          	addi	a4,a4,1664
1c00db1e:	02d74733          	div	a4,a4,a3
1c00db22:	8b05                	andi	a4,a4,1
1c00db24:	070e                	slli	a4,a4,0x3
1c00db26:	8fd9                	or	a5,a5,a4
1c00db28:	fef50fa3          	sb	a5,-1(a0)
1c00db2c:	ff859703          	lh	a4,-8(a1)
1c00db30:	40f75813          	srai	a6,a4,0xf
1c00db34:	00d87833          	and	a6,a6,a3
1c00db38:	9742                	add	a4,a4,a6
1c00db3a:	0742                	slli	a4,a4,0x10
1c00db3c:	8341                	srli	a4,a4,0x10
1c00db3e:	0706                	slli	a4,a4,0x1
1c00db40:	68070713          	addi	a4,a4,1664
1c00db44:	02d74733          	div	a4,a4,a3
1c00db48:	8b05                	andi	a4,a4,1
1c00db4a:	0712                	slli	a4,a4,0x4
1c00db4c:	8fd9                	or	a5,a5,a4
1c00db4e:	fef50fa3          	sb	a5,-1(a0)
1c00db52:	ffa59703          	lh	a4,-6(a1)
1c00db56:	40f75813          	srai	a6,a4,0xf
1c00db5a:	00d87833          	and	a6,a6,a3
1c00db5e:	9742                	add	a4,a4,a6
1c00db60:	0742                	slli	a4,a4,0x10
1c00db62:	8341                	srli	a4,a4,0x10
1c00db64:	0706                	slli	a4,a4,0x1
1c00db66:	68070713          	addi	a4,a4,1664
1c00db6a:	02d74733          	div	a4,a4,a3
1c00db6e:	8b05                	andi	a4,a4,1
1c00db70:	0716                	slli	a4,a4,0x5
1c00db72:	8fd9                	or	a5,a5,a4
1c00db74:	fef50fa3          	sb	a5,-1(a0)
1c00db78:	ffc59703          	lh	a4,-4(a1)
1c00db7c:	40f75813          	srai	a6,a4,0xf
1c00db80:	00d87833          	and	a6,a6,a3
1c00db84:	9742                	add	a4,a4,a6
1c00db86:	0742                	slli	a4,a4,0x10
1c00db88:	8341                	srli	a4,a4,0x10
1c00db8a:	0706                	slli	a4,a4,0x1
1c00db8c:	68070713          	addi	a4,a4,1664
1c00db90:	02d74733          	div	a4,a4,a3
1c00db94:	8b05                	andi	a4,a4,1
1c00db96:	071a                	slli	a4,a4,0x6
1c00db98:	8fd9                	or	a5,a5,a4
1c00db9a:	fef50fa3          	sb	a5,-1(a0)
1c00db9e:	ffe59703          	lh	a4,-2(a1)
1c00dba2:	40f75813          	srai	a6,a4,0xf
1c00dba6:	00d87833          	and	a6,a6,a3
1c00dbaa:	9742                	add	a4,a4,a6
1c00dbac:	0742                	slli	a4,a4,0x10
1c00dbae:	8341                	srli	a4,a4,0x10
1c00dbb0:	0706                	slli	a4,a4,0x1
1c00dbb2:	68070713          	addi	a4,a4,1664
1c00dbb6:	02d74733          	div	a4,a4,a3
1c00dbba:	8b05                	andi	a4,a4,1
1c00dbbc:	071e                	slli	a4,a4,0x7
1c00dbbe:	8fd9                	or	a5,a5,a4
1c00dbc0:	fef50fa3          	sb	a5,-1(a0)
1c00dbc4:	ecc596e3          	bne	a1,a2,1c00da90 <PQCLEAN_KYBER1024_CLEAN_poly_tomsg+0xa>
1c00dbc8:	8082                	ret

1c00dbca <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>:
1c00dbca:	7175                	addi	sp,sp,-144
1c00dbcc:	c522                	sw	s0,136(sp)
1c00dbce:	86b2                	mv	a3,a2
1c00dbd0:	842a                	mv	s0,a0
1c00dbd2:	862e                	mv	a2,a1
1c00dbd4:	850a                	mv	a0,sp
1c00dbd6:	08000593          	li	a1,128
1c00dbda:	c706                	sw	ra,140(sp)
1c00dbdc:	2db9                	jal	1c00e23a <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c00dbde:	858a                	mv	a1,sp
1c00dbe0:	8522                	mv	a0,s0
1c00dbe2:	fa1fd0ef          	jal	ra,1c00bb82 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>
1c00dbe6:	40ba                	lw	ra,140(sp)
1c00dbe8:	442a                	lw	s0,136(sp)
1c00dbea:	6149                	addi	sp,sp,144
1c00dbec:	8082                	ret

1c00dbee <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>:
1c00dbee:	7175                	addi	sp,sp,-144
1c00dbf0:	c522                	sw	s0,136(sp)
1c00dbf2:	86b2                	mv	a3,a2
1c00dbf4:	842a                	mv	s0,a0
1c00dbf6:	862e                	mv	a2,a1
1c00dbf8:	850a                	mv	a0,sp
1c00dbfa:	08000593          	li	a1,128
1c00dbfe:	c706                	sw	ra,140(sp)
1c00dc00:	2d2d                	jal	1c00e23a <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c00dc02:	858a                	mv	a1,sp
1c00dc04:	8522                	mv	a0,s0
1c00dc06:	87efe0ef          	jal	ra,1c00bc84 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2>
1c00dc0a:	40ba                	lw	ra,140(sp)
1c00dc0c:	442a                	lw	s0,136(sp)
1c00dc0e:	6149                	addi	sp,sp,144
1c00dc10:	8082                	ret

1c00dc12 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>:
1c00dc12:	1141                	addi	sp,sp,-16
1c00dc14:	c422                	sw	s0,8(sp)
1c00dc16:	842a                	mv	s0,a0
1c00dc18:	c226                	sw	s1,4(sp)
1c00dc1a:	c606                	sw	ra,12(sp)
1c00dc1c:	20040493          	addi	s1,s0,512
1c00dc20:	897ff0ef          	jal	ra,1c00d4b6 <PQCLEAN_KYBER1024_CLEAN_ntt>
1c00dc24:	00041503          	lh	a0,0(s0)
1c00dc28:	0409                	addi	s0,s0,2
1c00dc2a:	2b55                	jal	1c00e1de <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c00dc2c:	fea41f23          	sh	a0,-2(s0)
1c00dc30:	fe941ae3          	bne	s0,s1,1c00dc24 <PQCLEAN_KYBER1024_CLEAN_poly_ntt+0x12>
1c00dc34:	40b2                	lw	ra,12(sp)
1c00dc36:	4422                	lw	s0,8(sp)
1c00dc38:	4492                	lw	s1,4(sp)
1c00dc3a:	0141                	addi	sp,sp,16
1c00dc3c:	8082                	ret

1c00dc3e <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>:
1c00dc3e:	957ff06f          	j	1c00d594 <PQCLEAN_KYBER1024_CLEAN_invntt>

1c00dc42 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>:
1c00dc42:	1101                	addi	sp,sp,-32
1c00dc44:	ca26                	sw	s1,20(sp)
1c00dc46:	c256                	sw	s5,4(sp)
1c00dc48:	1c0004b7          	lui	s1,0x1c000
1c00dc4c:	1c000ab7          	lui	s5,0x1c000
1c00dc50:	c84a                	sw	s2,16(sp)
1c00dc52:	c64e                	sw	s3,12(sp)
1c00dc54:	c452                	sw	s4,8(sp)
1c00dc56:	ce06                	sw	ra,28(sp)
1c00dc58:	cc22                	sw	s0,24(sp)
1c00dc5a:	1c848493          	addi	s1,s1,456 # 1c0001c8 <PQCLEAN_KYBER1024_CLEAN_zetas+0x80>
1c00dc5e:	00450a13          	addi	s4,a0,4
1c00dc62:	00458993          	addi	s3,a1,4
1c00dc66:	00460913          	addi	s2,a2,4
1c00dc6a:	248a8a93          	addi	s5,s5,584 # 1c000248 <PQCLEAN_KYBER1024_CLEAN_zetas+0x100>
1c00dc6e:	00049403          	lh	s0,0(s1)
1c00dc72:	ffc90613          	addi	a2,s2,-4
1c00dc76:	ffc98593          	addi	a1,s3,-4
1c00dc7a:	ffca0513          	addi	a0,s4,-4
1c00dc7e:	86a2                	mv	a3,s0
1c00dc80:	3415                	jal	1c00d6a4 <PQCLEAN_KYBER1024_CLEAN_basemul>
1c00dc82:	408006b3          	neg	a3,s0
1c00dc86:	06c2                	slli	a3,a3,0x10
1c00dc88:	864a                	mv	a2,s2
1c00dc8a:	85ce                	mv	a1,s3
1c00dc8c:	8552                	mv	a0,s4
1c00dc8e:	86c1                	srai	a3,a3,0x10
1c00dc90:	0489                	addi	s1,s1,2
1c00dc92:	3c09                	jal	1c00d6a4 <PQCLEAN_KYBER1024_CLEAN_basemul>
1c00dc94:	0a21                	addi	s4,s4,8
1c00dc96:	09a1                	addi	s3,s3,8
1c00dc98:	0921                	addi	s2,s2,8
1c00dc9a:	fc9a9ae3          	bne	s5,s1,1c00dc6e <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery+0x2c>
1c00dc9e:	40f2                	lw	ra,28(sp)
1c00dca0:	4462                	lw	s0,24(sp)
1c00dca2:	44d2                	lw	s1,20(sp)
1c00dca4:	4942                	lw	s2,16(sp)
1c00dca6:	49b2                	lw	s3,12(sp)
1c00dca8:	4a22                	lw	s4,8(sp)
1c00dcaa:	4a92                	lw	s5,4(sp)
1c00dcac:	6105                	addi	sp,sp,32
1c00dcae:	8082                	ret

1c00dcb0 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>:
1c00dcb0:	1141                	addi	sp,sp,-16
1c00dcb2:	c422                	sw	s0,8(sp)
1c00dcb4:	c226                	sw	s1,4(sp)
1c00dcb6:	c606                	sw	ra,12(sp)
1c00dcb8:	842a                	mv	s0,a0
1c00dcba:	20050493          	addi	s1,a0,512
1c00dcbe:	00041503          	lh	a0,0(s0)
1c00dcc2:	0409                	addi	s0,s0,2
1c00dcc4:	2b29                	jal	1c00e1de <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c00dcc6:	fea41f23          	sh	a0,-2(s0)
1c00dcca:	fe941ae3          	bne	s0,s1,1c00dcbe <PQCLEAN_KYBER1024_CLEAN_poly_reduce+0xe>
1c00dcce:	40b2                	lw	ra,12(sp)
1c00dcd0:	4422                	lw	s0,8(sp)
1c00dcd2:	4492                	lw	s1,4(sp)
1c00dcd4:	0141                	addi	sp,sp,16
1c00dcd6:	8082                	ret

1c00dcd8 <PQCLEAN_KYBER1024_CLEAN_poly_add>:
1c00dcd8:	20058693          	addi	a3,a1,512
1c00dcdc:	0005d783          	lhu	a5,0(a1)
1c00dce0:	00065703          	lhu	a4,0(a2)
1c00dce4:	0589                	addi	a1,a1,2
1c00dce6:	97ba                	add	a5,a5,a4
1c00dce8:	00f51023          	sh	a5,0(a0)
1c00dcec:	0609                	addi	a2,a2,2
1c00dcee:	0509                	addi	a0,a0,2
1c00dcf0:	fed596e3          	bne	a1,a3,1c00dcdc <PQCLEAN_KYBER1024_CLEAN_poly_add+0x4>
1c00dcf4:	8082                	ret

1c00dcf6 <PQCLEAN_KYBER1024_CLEAN_poly_sub>:
1c00dcf6:	20058693          	addi	a3,a1,512
1c00dcfa:	0005d783          	lhu	a5,0(a1)
1c00dcfe:	00065703          	lhu	a4,0(a2)
1c00dd02:	0589                	addi	a1,a1,2
1c00dd04:	8f99                	sub	a5,a5,a4
1c00dd06:	00f51023          	sh	a5,0(a0)
1c00dd0a:	0609                	addi	a2,a2,2
1c00dd0c:	0509                	addi	a0,a0,2
1c00dd0e:	fed596e3          	bne	a1,a3,1c00dcfa <PQCLEAN_KYBER1024_CLEAN_poly_sub+0x4>
1c00dd12:	8082                	ret

1c00dd14 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress>:
1c00dd14:	7179                	addi	sp,sp,-48
1c00dd16:	6605                	lui	a2,0x1
1c00dd18:	d622                	sw	s0,44(sp)
1c00dd1a:	d426                	sw	s1,40(sp)
1c00dd1c:	d24a                	sw	s2,36(sp)
1c00dd1e:	d04e                	sw	s3,32(sp)
1c00dd20:	ce52                	sw	s4,28(sp)
1c00dd22:	cc56                	sw	s5,24(sp)
1c00dd24:	ca5a                	sw	s6,20(sp)
1c00dd26:	c85e                	sw	s7,16(sp)
1c00dd28:	c662                	sw	s8,12(sp)
1c00dd2a:	58050313          	addi	t1,a0,1408
1c00dd2e:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00dd32:	16050893          	addi	a7,a0,352
1c00dd36:	882e                	mv	a6,a1
1c00dd38:	00081b03          	lh	s6,0(a6) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00dd3c:	00281a83          	lh	s5,2(a6)
1c00dd40:	00481a03          	lh	s4,4(a6)
1c00dd44:	00681983          	lh	s3,6(a6)
1c00dd48:	00881903          	lh	s2,8(a6)
1c00dd4c:	00a81483          	lh	s1,10(a6)
1c00dd50:	00c81403          	lh	s0,12(a6)
1c00dd54:	00e81383          	lh	t2,14(a6)
1c00dd58:	40fb5293          	srai	t0,s6,0xf
1c00dd5c:	40fade13          	srai	t3,s5,0xf
1c00dd60:	40fa5f93          	srai	t6,s4,0xf
1c00dd64:	40f9d693          	srai	a3,s3,0xf
1c00dd68:	40f95713          	srai	a4,s2,0xf
1c00dd6c:	40f4df13          	srai	t5,s1,0xf
1c00dd70:	40f45793          	srai	a5,s0,0xf
1c00dd74:	40f3de93          	srai	t4,t2,0xf
1c00dd78:	00c2f2b3          	and	t0,t0,a2
1c00dd7c:	00ce7e33          	and	t3,t3,a2
1c00dd80:	00cfffb3          	and	t6,t6,a2
1c00dd84:	8ef1                	and	a3,a3,a2
1c00dd86:	8f71                	and	a4,a4,a2
1c00dd88:	00cf7f33          	and	t5,t5,a2
1c00dd8c:	8ff1                	and	a5,a5,a2
1c00dd8e:	00cefeb3          	and	t4,t4,a2
1c00dd92:	92da                	add	t0,t0,s6
1c00dd94:	9e56                	add	t3,t3,s5
1c00dd96:	9fd2                	add	t6,t6,s4
1c00dd98:	96ce                	add	a3,a3,s3
1c00dd9a:	974a                	add	a4,a4,s2
1c00dd9c:	9f26                	add	t5,t5,s1
1c00dd9e:	97a2                	add	a5,a5,s0
1c00dda0:	9e9e                	add	t4,t4,t2
1c00dda2:	02c2                	slli	t0,t0,0x10
1c00dda4:	0e42                	slli	t3,t3,0x10
1c00dda6:	0fc2                	slli	t6,t6,0x10
1c00dda8:	06c2                	slli	a3,a3,0x10
1c00ddaa:	0742                	slli	a4,a4,0x10
1c00ddac:	0f42                	slli	t5,t5,0x10
1c00ddae:	07c2                	slli	a5,a5,0x10
1c00ddb0:	0ec2                	slli	t4,t4,0x10
1c00ddb2:	0102d293          	srli	t0,t0,0x10
1c00ddb6:	010e5e13          	srli	t3,t3,0x10
1c00ddba:	010fdf93          	srli	t6,t6,0x10
1c00ddbe:	82c1                	srli	a3,a3,0x10
1c00ddc0:	8341                	srli	a4,a4,0x10
1c00ddc2:	010f5f13          	srli	t5,t5,0x10
1c00ddc6:	83c1                	srli	a5,a5,0x10
1c00ddc8:	010ede93          	srli	t4,t4,0x10
1c00ddcc:	02ae                	slli	t0,t0,0xb
1c00ddce:	0e2e                	slli	t3,t3,0xb
1c00ddd0:	0fae                	slli	t6,t6,0xb
1c00ddd2:	06ae                	slli	a3,a3,0xb
1c00ddd4:	072e                	slli	a4,a4,0xb
1c00ddd6:	0f2e                	slli	t5,t5,0xb
1c00ddd8:	07ae                	slli	a5,a5,0xb
1c00ddda:	0eae                	slli	t4,t4,0xb
1c00dddc:	68028293          	addi	t0,t0,1664
1c00dde0:	680e0e13          	addi	t3,t3,1664
1c00dde4:	680f8f93          	addi	t6,t6,1664 # 1000680 <__CTOR_LIST__-0x1afff984>
1c00dde8:	68068693          	addi	a3,a3,1664
1c00ddec:	68070713          	addi	a4,a4,1664
1c00ddf0:	680f0f13          	addi	t5,t5,1664
1c00ddf4:	68078793          	addi	a5,a5,1664
1c00ddf8:	680e8e93          	addi	t4,t4,1664
1c00ddfc:	02c2d2b3          	divu	t0,t0,a2
1c00de00:	02ce5e33          	divu	t3,t3,a2
1c00de04:	02cfdfb3          	divu	t6,t6,a2
1c00de08:	02c6d6b3          	divu	a3,a3,a2
1c00de0c:	02c75733          	divu	a4,a4,a2
1c00de10:	02cf5f33          	divu	t5,t5,a2
1c00de14:	02c7d7b3          	divu	a5,a5,a2
1c00de18:	02cedeb3          	divu	t4,t4,a2
1c00de1c:	7fffff93          	andi	t6,t6,2047
1c00de20:	7fff7f13          	andi	t5,t5,2047
1c00de24:	7ff2f293          	andi	t0,t0,2047
1c00de28:	7ffe7e13          	andi	t3,t3,2047
1c00de2c:	7ff6f693          	andi	a3,a3,2047
1c00de30:	7ff77713          	andi	a4,a4,2047
1c00de34:	7ff7f793          	andi	a5,a5,2047
1c00de38:	7ffefe93          	andi	t4,t4,2047
1c00de3c:	003e1913          	slli	s2,t3,0x3
1c00de40:	006f9493          	slli	s1,t6,0x6
1c00de44:	00afd413          	srli	s0,t6,0xa
1c00de48:	00169b13          	slli	s6,a3,0x1
1c00de4c:	00471a93          	slli	s5,a4,0x4
1c00de50:	007f1c13          	slli	s8,t5,0x7
1c00de54:	009f5393          	srli	t2,t5,0x9
1c00de58:	00279a13          	slli	s4,a5,0x2
1c00de5c:	005e9993          	slli	s3,t4,0x5
1c00de60:	0082db93          	srli	s7,t0,0x8
1c00de64:	005e5e13          	srli	t3,t3,0x5
1c00de68:	829d                	srli	a3,a3,0x7
1c00de6a:	8311                	srli	a4,a4,0x4
1c00de6c:	8399                	srli	a5,a5,0x6
1c00de6e:	012be933          	or	s2,s7,s2
1c00de72:	009e6e33          	or	t3,t3,s1
1c00de76:	002fdf93          	srli	t6,t6,0x2
1c00de7a:	01646433          	or	s0,s0,s6
1c00de7e:	0156e6b3          	or	a3,a3,s5
1c00de82:	01876733          	or	a4,a4,s8
1c00de86:	001f5f13          	srli	t5,t5,0x1
1c00de8a:	0143e3b3          	or	t2,t2,s4
1c00de8e:	0137e7b3          	or	a5,a5,s3
1c00de92:	003ede93          	srli	t4,t4,0x3
1c00de96:	00550023          	sb	t0,0(a0)
1c00de9a:	012500a3          	sb	s2,1(a0)
1c00de9e:	01c50123          	sb	t3,2(a0)
1c00dea2:	01f501a3          	sb	t6,3(a0)
1c00dea6:	00850223          	sb	s0,4(a0)
1c00deaa:	00d502a3          	sb	a3,5(a0)
1c00deae:	00e50323          	sb	a4,6(a0)
1c00deb2:	01e503a3          	sb	t5,7(a0)
1c00deb6:	00750423          	sb	t2,8(a0)
1c00deba:	00f504a3          	sb	a5,9(a0)
1c00debe:	01d50523          	sb	t4,10(a0)
1c00dec2:	052d                	addi	a0,a0,11
1c00dec4:	0841                	addi	a6,a6,16
1c00dec6:	e71519e3          	bne	a0,a7,1c00dd38 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress+0x24>
1c00deca:	20058593          	addi	a1,a1,512
1c00dece:	e6a312e3          	bne	t1,a0,1c00dd32 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress+0x1e>
1c00ded2:	5432                	lw	s0,44(sp)
1c00ded4:	54a2                	lw	s1,40(sp)
1c00ded6:	5912                	lw	s2,36(sp)
1c00ded8:	5982                	lw	s3,32(sp)
1c00deda:	4a72                	lw	s4,28(sp)
1c00dedc:	4ae2                	lw	s5,24(sp)
1c00dede:	4b52                	lw	s6,20(sp)
1c00dee0:	4bc2                	lw	s7,16(sp)
1c00dee2:	4c32                	lw	s8,12(sp)
1c00dee4:	6145                	addi	sp,sp,48
1c00dee6:	8082                	ret

1c00dee8 <PQCLEAN_KYBER1024_CLEAN_polyvec_decompress>:
1c00dee8:	7179                	addi	sp,sp,-48
1c00deea:	6605                	lui	a2,0x1
1c00deec:	68c1                	lui	a7,0x10
1c00deee:	d622                	sw	s0,44(sp)
1c00def0:	d426                	sw	s1,40(sp)
1c00def2:	d24a                	sw	s2,36(sp)
1c00def4:	d04e                	sw	s3,32(sp)
1c00def6:	ce52                	sw	s4,28(sp)
1c00def8:	cc56                	sw	s5,24(sp)
1c00defa:	ca5a                	sw	s6,20(sp)
1c00defc:	c85e                	sw	s7,16(sp)
1c00defe:	c662                	sw	s8,12(sp)
1c00df00:	58058e13          	addi	t3,a1,1408
1c00df04:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00df08:	18fd                	addi	a7,a7,-1
1c00df0a:	16058313          	addi	t1,a1,352
1c00df0e:	882a                	mv	a6,a0
1c00df10:	0045cf03          	lbu	t5,4(a1)
1c00df14:	0035c683          	lbu	a3,3(a1)
1c00df18:	0055c703          	lbu	a4,5(a1)
1c00df1c:	0085c783          	lbu	a5,8(a1)
1c00df20:	0015cf83          	lbu	t6,1(a1)
1c00df24:	0025c903          	lbu	s2,2(a1)
1c00df28:	0065c403          	lbu	s0,6(a1)
1c00df2c:	0095c383          	lbu	t2,9(a1)
1c00df30:	0075c283          	lbu	t0,7(a1)
1c00df34:	0005ce83          	lbu	t4,0(a1)
1c00df38:	00af1493          	slli	s1,t5,0xa
1c00df3c:	068a                	slli	a3,a3,0x2
1c00df3e:	00979a13          	slli	s4,a5,0x9
1c00df42:	008f9c13          	slli	s8,t6,0x8
1c00df46:	8ec5                	or	a3,a3,s1
1c00df48:	00695b93          	srli	s7,s2,0x6
1c00df4c:	00441b13          	slli	s6,s0,0x4
1c00df50:	0027d493          	srli	s1,a5,0x2
1c00df54:	0286                	slli	t0,t0,0x1
1c00df56:	00639793          	slli	a5,t2,0x6
1c00df5a:	00475a93          	srli	s5,a4,0x4
1c00df5e:	00a5c983          	lbu	s3,10(a1)
1c00df62:	0142e2b3          	or	t0,t0,s4
1c00df66:	01dc6eb3          	or	t4,s8,t4
1c00df6a:	001f5a13          	srli	s4,t5,0x1
1c00df6e:	0176e6b3          	or	a3,a3,s7
1c00df72:	00771f13          	slli	t5,a4,0x7
1c00df76:	8fc5                	or	a5,a5,s1
1c00df78:	015b6733          	or	a4,s6,s5
1c00df7c:	801d                	srli	s0,s0,0x7
1c00df7e:	003fdf93          	srli	t6,t6,0x3
1c00df82:	0916                	slli	s2,s2,0x5
1c00df84:	7ffefe93          	andi	t4,t4,2047
1c00df88:	7ff6f693          	andi	a3,a3,2047
1c00df8c:	7ff77713          	andi	a4,a4,2047
1c00df90:	7ff7f793          	andi	a5,a5,2047
1c00df94:	0082e2b3          	or	t0,t0,s0
1c00df98:	0053d393          	srli	t2,t2,0x5
1c00df9c:	00399413          	slli	s0,s3,0x3
1c00dfa0:	01f96fb3          	or	t6,s2,t6
1c00dfa4:	014f6f33          	or	t5,t5,s4
1c00dfa8:	02ce8eb3          	mul	t4,t4,a2
1c00dfac:	02c686b3          	mul	a3,a3,a2
1c00dfb0:	02c70733          	mul	a4,a4,a2
1c00dfb4:	02c787b3          	mul	a5,a5,a2
1c00dfb8:	007463b3          	or	t2,s0,t2
1c00dfbc:	7fffff93          	andi	t6,t6,2047
1c00dfc0:	7fff7f13          	andi	t5,t5,2047
1c00dfc4:	7ff2f293          	andi	t0,t0,2047
1c00dfc8:	400e8e93          	addi	t4,t4,1024
1c00dfcc:	40068693          	addi	a3,a3,1024
1c00dfd0:	40070713          	addi	a4,a4,1024
1c00dfd4:	40078793          	addi	a5,a5,1024
1c00dfd8:	02cf8fb3          	mul	t6,t6,a2
1c00dfdc:	02cf0f33          	mul	t5,t5,a2
1c00dfe0:	02c282b3          	mul	t0,t0,a2
1c00dfe4:	02c383b3          	mul	t2,t2,a2
1c00dfe8:	00bede93          	srli	t4,t4,0xb
1c00dfec:	82ad                	srli	a3,a3,0xb
1c00dfee:	832d                	srli	a4,a4,0xb
1c00dff0:	83ad                	srli	a5,a5,0xb
1c00dff2:	400f8f93          	addi	t6,t6,1024
1c00dff6:	400f0f13          	addi	t5,t5,1024
1c00dffa:	40028293          	addi	t0,t0,1024
1c00dffe:	40038393          	addi	t2,t2,1024
1c00e002:	0ec2                	slli	t4,t4,0x10
1c00e004:	06c2                	slli	a3,a3,0x10
1c00e006:	0742                	slli	a4,a4,0x10
1c00e008:	07c2                	slli	a5,a5,0x10
1c00e00a:	010ede93          	srli	t4,t4,0x10
1c00e00e:	00bfdf93          	srli	t6,t6,0xb
1c00e012:	82c1                	srli	a3,a3,0x10
1c00e014:	00bf5f13          	srli	t5,t5,0xb
1c00e018:	8341                	srli	a4,a4,0x10
1c00e01a:	00b2d293          	srli	t0,t0,0xb
1c00e01e:	83c1                	srli	a5,a5,0x10
1c00e020:	00b3d393          	srli	t2,t2,0xb
1c00e024:	0fc2                	slli	t6,t6,0x10
1c00e026:	011efeb3          	and	t4,t4,a7
1c00e02a:	0f42                	slli	t5,t5,0x10
1c00e02c:	0116f6b3          	and	a3,a3,a7
1c00e030:	02c2                	slli	t0,t0,0x10
1c00e032:	01177733          	and	a4,a4,a7
1c00e036:	03c2                	slli	t2,t2,0x10
1c00e038:	0117f7b3          	and	a5,a5,a7
1c00e03c:	01feeeb3          	or	t4,t4,t6
1c00e040:	01e6e6b3          	or	a3,a3,t5
1c00e044:	00576733          	or	a4,a4,t0
1c00e048:	0077e7b3          	or	a5,a5,t2
1c00e04c:	01d82023          	sw	t4,0(a6)
1c00e050:	00d82223          	sw	a3,4(a6)
1c00e054:	00e82423          	sw	a4,8(a6)
1c00e058:	00f82623          	sw	a5,12(a6)
1c00e05c:	05ad                	addi	a1,a1,11
1c00e05e:	0841                	addi	a6,a6,16
1c00e060:	ea6598e3          	bne	a1,t1,1c00df10 <PQCLEAN_KYBER1024_CLEAN_polyvec_decompress+0x28>
1c00e064:	20050513          	addi	a0,a0,512
1c00e068:	eabe11e3          	bne	t3,a1,1c00df0a <PQCLEAN_KYBER1024_CLEAN_polyvec_decompress+0x22>
1c00e06c:	5432                	lw	s0,44(sp)
1c00e06e:	54a2                	lw	s1,40(sp)
1c00e070:	5912                	lw	s2,36(sp)
1c00e072:	5982                	lw	s3,32(sp)
1c00e074:	4a72                	lw	s4,28(sp)
1c00e076:	4ae2                	lw	s5,24(sp)
1c00e078:	4b52                	lw	s6,20(sp)
1c00e07a:	4bc2                	lw	s7,16(sp)
1c00e07c:	4c32                	lw	s8,12(sp)
1c00e07e:	6145                	addi	sp,sp,48
1c00e080:	8082                	ret

1c00e082 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>:
1c00e082:	1141                	addi	sp,sp,-16
1c00e084:	c422                	sw	s0,8(sp)
1c00e086:	c226                	sw	s1,4(sp)
1c00e088:	c04a                	sw	s2,0(sp)
1c00e08a:	c606                	sw	ra,12(sp)
1c00e08c:	842e                	mv	s0,a1
1c00e08e:	84aa                	mv	s1,a0
1c00e090:	60058913          	addi	s2,a1,1536
1c00e094:	85a2                	mv	a1,s0
1c00e096:	8526                	mv	a0,s1
1c00e098:	18040413          	addi	s0,s0,384
1c00e09c:	923ff0ef          	jal	ra,1c00d9be <PQCLEAN_KYBER1024_CLEAN_poly_frombytes>
1c00e0a0:	20048493          	addi	s1,s1,512
1c00e0a4:	ff2418e3          	bne	s0,s2,1c00e094 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes+0x12>
1c00e0a8:	40b2                	lw	ra,12(sp)
1c00e0aa:	4422                	lw	s0,8(sp)
1c00e0ac:	4492                	lw	s1,4(sp)
1c00e0ae:	4902                	lw	s2,0(sp)
1c00e0b0:	0141                	addi	sp,sp,16
1c00e0b2:	8082                	ret

1c00e0b4 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>:
1c00e0b4:	1141                	addi	sp,sp,-16
1c00e0b6:	c606                	sw	ra,12(sp)
1c00e0b8:	c422                	sw	s0,8(sp)
1c00e0ba:	842a                	mv	s0,a0
1c00e0bc:	3e99                	jal	1c00dc12 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>
1c00e0be:	20040513          	addi	a0,s0,512
1c00e0c2:	3e81                	jal	1c00dc12 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>
1c00e0c4:	40040513          	addi	a0,s0,1024
1c00e0c8:	36a9                	jal	1c00dc12 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>
1c00e0ca:	60040513          	addi	a0,s0,1536
1c00e0ce:	4422                	lw	s0,8(sp)
1c00e0d0:	40b2                	lw	ra,12(sp)
1c00e0d2:	0141                	addi	sp,sp,16
1c00e0d4:	be3d                	j	1c00dc12 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>

1c00e0d6 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont>:
1c00e0d6:	1141                	addi	sp,sp,-16
1c00e0d8:	c606                	sw	ra,12(sp)
1c00e0da:	c422                	sw	s0,8(sp)
1c00e0dc:	842a                	mv	s0,a0
1c00e0de:	3685                	jal	1c00dc3e <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00e0e0:	20040513          	addi	a0,s0,512
1c00e0e4:	3ea9                	jal	1c00dc3e <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00e0e6:	40040513          	addi	a0,s0,1024
1c00e0ea:	3e91                	jal	1c00dc3e <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00e0ec:	60040513          	addi	a0,s0,1536
1c00e0f0:	4422                	lw	s0,8(sp)
1c00e0f2:	40b2                	lw	ra,12(sp)
1c00e0f4:	0141                	addi	sp,sp,16
1c00e0f6:	b6a1                	j	1c00dc3e <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>

1c00e0f8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>:
1c00e0f8:	de010113          	addi	sp,sp,-544
1c00e0fc:	20812c23          	sw	s0,536(sp)
1c00e100:	20912a23          	sw	s1,532(sp)
1c00e104:	21212823          	sw	s2,528(sp)
1c00e108:	21312623          	sw	s3,524(sp)
1c00e10c:	84b2                	mv	s1,a2
1c00e10e:	89ae                	mv	s3,a1
1c00e110:	20112e23          	sw	ra,540(sp)
1c00e114:	892a                	mv	s2,a0
1c00e116:	3635                	jal	1c00dc42 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c00e118:	6785                	lui	a5,0x1
1c00e11a:	80078793          	addi	a5,a5,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c00e11e:	20098413          	addi	s0,s3,512
1c00e122:	20048493          	addi	s1,s1,512
1c00e126:	99be                	add	s3,s3,a5
1c00e128:	8626                	mv	a2,s1
1c00e12a:	85a2                	mv	a1,s0
1c00e12c:	850a                	mv	a0,sp
1c00e12e:	3e11                	jal	1c00dc42 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c00e130:	860a                	mv	a2,sp
1c00e132:	85ca                	mv	a1,s2
1c00e134:	854a                	mv	a0,s2
1c00e136:	20040413          	addi	s0,s0,512
1c00e13a:	3e79                	jal	1c00dcd8 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00e13c:	20048493          	addi	s1,s1,512
1c00e140:	ff3414e3          	bne	s0,s3,1c00e128 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery+0x30>
1c00e144:	854a                	mv	a0,s2
1c00e146:	36ad                	jal	1c00dcb0 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00e148:	21c12083          	lw	ra,540(sp)
1c00e14c:	21812403          	lw	s0,536(sp)
1c00e150:	21412483          	lw	s1,532(sp)
1c00e154:	21012903          	lw	s2,528(sp)
1c00e158:	20c12983          	lw	s3,524(sp)
1c00e15c:	22010113          	addi	sp,sp,544
1c00e160:	8082                	ret

1c00e162 <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>:
1c00e162:	1141                	addi	sp,sp,-16
1c00e164:	c606                	sw	ra,12(sp)
1c00e166:	c422                	sw	s0,8(sp)
1c00e168:	842a                	mv	s0,a0
1c00e16a:	3699                	jal	1c00dcb0 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00e16c:	20040513          	addi	a0,s0,512
1c00e170:	3681                	jal	1c00dcb0 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00e172:	40040513          	addi	a0,s0,1024
1c00e176:	3e2d                	jal	1c00dcb0 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00e178:	60040513          	addi	a0,s0,1536
1c00e17c:	4422                	lw	s0,8(sp)
1c00e17e:	40b2                	lw	ra,12(sp)
1c00e180:	0141                	addi	sp,sp,16
1c00e182:	b63d                	j	1c00dcb0 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>

1c00e184 <PQCLEAN_KYBER1024_CLEAN_polyvec_add>:
1c00e184:	1101                	addi	sp,sp,-32
1c00e186:	cc22                	sw	s0,24(sp)
1c00e188:	ca26                	sw	s1,20(sp)
1c00e18a:	c84a                	sw	s2,16(sp)
1c00e18c:	c64e                	sw	s3,12(sp)
1c00e18e:	ce06                	sw	ra,28(sp)
1c00e190:	89aa                	mv	s3,a0
1c00e192:	892e                	mv	s2,a1
1c00e194:	84b2                	mv	s1,a2
1c00e196:	4401                	li	s0,0
1c00e198:	00848633          	add	a2,s1,s0
1c00e19c:	008905b3          	add	a1,s2,s0
1c00e1a0:	00898533          	add	a0,s3,s0
1c00e1a4:	3e15                	jal	1c00dcd8 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00e1a6:	20040413          	addi	s0,s0,512
1c00e1aa:	80040793          	addi	a5,s0,-2048
1c00e1ae:	f7ed                	bnez	a5,1c00e198 <PQCLEAN_KYBER1024_CLEAN_polyvec_add+0x14>
1c00e1b0:	40f2                	lw	ra,28(sp)
1c00e1b2:	4462                	lw	s0,24(sp)
1c00e1b4:	44d2                	lw	s1,20(sp)
1c00e1b6:	4942                	lw	s2,16(sp)
1c00e1b8:	49b2                	lw	s3,12(sp)
1c00e1ba:	6105                	addi	sp,sp,32
1c00e1bc:	8082                	ret

1c00e1be <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>:
1c00e1be:	777d                	lui	a4,0xfffff
1c00e1c0:	30170793          	addi	a5,a4,769 # fffff301 <pulp__FC+0xfffff302>
1c00e1c4:	02f507b3          	mul	a5,a0,a5
1c00e1c8:	07c2                	slli	a5,a5,0x10
1c00e1ca:	2ff70713          	addi	a4,a4,767
1c00e1ce:	87c1                	srai	a5,a5,0x10
1c00e1d0:	02e787b3          	mul	a5,a5,a4
1c00e1d4:	953e                	add	a0,a0,a5
1c00e1d6:	8541                	srai	a0,a0,0x10
1c00e1d8:	0542                	slli	a0,a0,0x10
1c00e1da:	8541                	srai	a0,a0,0x10
1c00e1dc:	8082                	ret

1c00e1de <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>:
1c00e1de:	6795                	lui	a5,0x5
1c00e1e0:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00e1e4:	02f507b3          	mul	a5,a0,a5
1c00e1e8:	02000737          	lui	a4,0x2000
1c00e1ec:	97ba                	add	a5,a5,a4
1c00e1ee:	6705                	lui	a4,0x1
1c00e1f0:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00e1f4:	87e9                	srai	a5,a5,0x1a
1c00e1f6:	02e787b3          	mul	a5,a5,a4
1c00e1fa:	8d1d                	sub	a0,a0,a5
1c00e1fc:	0542                	slli	a0,a0,0x10
1c00e1fe:	8541                	srai	a0,a0,0x10
1c00e200:	8082                	ret

1c00e202 <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>:
1c00e202:	7139                	addi	sp,sp,-64
1c00e204:	da26                	sw	s1,52(sp)
1c00e206:	d84a                	sw	s2,48(sp)
1c00e208:	84b2                	mv	s1,a2
1c00e20a:	892a                	mv	s2,a0
1c00e20c:	02000613          	li	a2,32
1c00e210:	0068                	addi	a0,sp,12
1c00e212:	de06                	sw	ra,60(sp)
1c00e214:	dc22                	sw	s0,56(sp)
1c00e216:	8436                	mv	s0,a3
1c00e218:	2e3d                	jal	1c00e556 <memcpy>
1c00e21a:	006c                	addi	a1,sp,12
1c00e21c:	854a                	mv	a0,s2
1c00e21e:	02200613          	li	a2,34
1c00e222:	02910623          	sb	s1,44(sp)
1c00e226:	028106a3          	sb	s0,45(sp)
1c00e22a:	d05fd0ef          	jal	ra,1c00bf2e <shake128_absorb>
1c00e22e:	50f2                	lw	ra,60(sp)
1c00e230:	5462                	lw	s0,56(sp)
1c00e232:	54d2                	lw	s1,52(sp)
1c00e234:	5942                	lw	s2,48(sp)
1c00e236:	6121                	addi	sp,sp,64
1c00e238:	8082                	ret

1c00e23a <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>:
1c00e23a:	7139                	addi	sp,sp,-64
1c00e23c:	87b2                	mv	a5,a2
1c00e23e:	da26                	sw	s1,52(sp)
1c00e240:	d84a                	sw	s2,48(sp)
1c00e242:	84aa                	mv	s1,a0
1c00e244:	892e                	mv	s2,a1
1c00e246:	02000613          	li	a2,32
1c00e24a:	85be                	mv	a1,a5
1c00e24c:	0068                	addi	a0,sp,12
1c00e24e:	de06                	sw	ra,60(sp)
1c00e250:	dc22                	sw	s0,56(sp)
1c00e252:	8436                	mv	s0,a3
1c00e254:	2609                	jal	1c00e556 <memcpy>
1c00e256:	0070                	addi	a2,sp,12
1c00e258:	85ca                	mv	a1,s2
1c00e25a:	8526                	mv	a0,s1
1c00e25c:	02100693          	li	a3,33
1c00e260:	02810623          	sb	s0,44(sp)
1c00e264:	f67fd0ef          	jal	ra,1c00c1ca <shake256>
1c00e268:	50f2                	lw	ra,60(sp)
1c00e26a:	5462                	lw	s0,56(sp)
1c00e26c:	54d2                	lw	s1,52(sp)
1c00e26e:	5942                	lw	s2,48(sp)
1c00e270:	6121                	addi	sp,sp,64
1c00e272:	8082                	ret

1c00e274 <PQCLEAN_KYBER1024_CLEAN_verify>:
1c00e274:	c645                	beqz	a2,1c00e31c <PQCLEAN_KYBER1024_CLEAN_verify+0xa8>
1c00e276:	fff60793          	addi	a5,a2,-1
1c00e27a:	4709                	li	a4,2
1c00e27c:	0af77263          	bleu	a5,a4,1c00e320 <PQCLEAN_KYBER1024_CLEAN_verify+0xac>
1c00e280:	00265e13          	srli	t3,a2,0x2
1c00e284:	882e                	mv	a6,a1
1c00e286:	86aa                	mv	a3,a0
1c00e288:	4701                	li	a4,0
1c00e28a:	4881                	li	a7,0
1c00e28c:	429c                	lw	a5,0(a3)
1c00e28e:	00082303          	lw	t1,0(a6)
1c00e292:	0705                	addi	a4,a4,1
1c00e294:	0067c7b3          	xor	a5,a5,t1
1c00e298:	0117e8b3          	or	a7,a5,a7
1c00e29c:	0811                	addi	a6,a6,4
1c00e29e:	0691                	addi	a3,a3,4
1c00e2a0:	ffc766e3          	bltu	a4,t3,1c00e28c <PQCLEAN_KYBER1024_CLEAN_verify+0x18>
1c00e2a4:	0088d793          	srli	a5,a7,0x8
1c00e2a8:	0117e7b3          	or	a5,a5,a7
1c00e2ac:	0108d713          	srli	a4,a7,0x10
1c00e2b0:	8fd9                	or	a5,a5,a4
1c00e2b2:	0188d893          	srli	a7,a7,0x18
1c00e2b6:	0117e8b3          	or	a7,a5,a7
1c00e2ba:	ffc67793          	andi	a5,a2,-4
1c00e2be:	0ff8f893          	andi	a7,a7,255
1c00e2c2:	04f60a63          	beq	a2,a5,1c00e316 <PQCLEAN_KYBER1024_CLEAN_verify+0xa2>
1c00e2c6:	00f58733          	add	a4,a1,a5
1c00e2ca:	00f506b3          	add	a3,a0,a5
1c00e2ce:	00074803          	lbu	a6,0(a4)
1c00e2d2:	0006c683          	lbu	a3,0(a3)
1c00e2d6:	00178713          	addi	a4,a5,1
1c00e2da:	0106c6b3          	xor	a3,a3,a6
1c00e2de:	00d8e8b3          	or	a7,a7,a3
1c00e2e2:	02c77a63          	bleu	a2,a4,1c00e316 <PQCLEAN_KYBER1024_CLEAN_verify+0xa2>
1c00e2e6:	00e506b3          	add	a3,a0,a4
1c00e2ea:	972e                	add	a4,a4,a1
1c00e2ec:	0006c683          	lbu	a3,0(a3)
1c00e2f0:	00074703          	lbu	a4,0(a4)
1c00e2f4:	0789                	addi	a5,a5,2
1c00e2f6:	8f35                	xor	a4,a4,a3
1c00e2f8:	00e8e8b3          	or	a7,a7,a4
1c00e2fc:	0ff8f893          	andi	a7,a7,255
1c00e300:	00c7fb63          	bleu	a2,a5,1c00e316 <PQCLEAN_KYBER1024_CLEAN_verify+0xa2>
1c00e304:	95be                	add	a1,a1,a5
1c00e306:	97aa                	add	a5,a5,a0
1c00e308:	0005c703          	lbu	a4,0(a1)
1c00e30c:	0007c783          	lbu	a5,0(a5)
1c00e310:	8fb9                	xor	a5,a5,a4
1c00e312:	00f8e8b3          	or	a7,a7,a5
1c00e316:	01103533          	snez	a0,a7
1c00e31a:	8082                	ret
1c00e31c:	4501                	li	a0,0
1c00e31e:	8082                	ret
1c00e320:	4881                	li	a7,0
1c00e322:	4781                	li	a5,0
1c00e324:	b74d                	j	1c00e2c6 <PQCLEAN_KYBER1024_CLEAN_verify+0x52>

1c00e326 <PQCLEAN_KYBER1024_CLEAN_cmov>:
1c00e326:	40d00833          	neg	a6,a3
1c00e32a:	0ff87813          	andi	a6,a6,255
1c00e32e:	1c060463          	beqz	a2,1c00e4f6 <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00e332:	00458793          	addi	a5,a1,4
1c00e336:	00450693          	addi	a3,a0,4
1c00e33a:	00f537b3          	sltu	a5,a0,a5
1c00e33e:	00d5b6b3          	sltu	a3,a1,a3
1c00e342:	0017c793          	xori	a5,a5,1
1c00e346:	0016c693          	xori	a3,a3,1
1c00e34a:	873e                	mv	a4,a5
1c00e34c:	87b6                	mv	a5,a3
1c00e34e:	8fd9                	or	a5,a5,a4
1c00e350:	0ff7f793          	andi	a5,a5,255
1c00e354:	1a078263          	beqz	a5,1c00e4f8 <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d2>
1c00e358:	00663793          	sltiu	a5,a2,6
1c00e35c:	0017c793          	xori	a5,a5,1
1c00e360:	0ff7f793          	andi	a5,a5,255
1c00e364:	18078a63          	beqz	a5,1c00e4f8 <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d2>
1c00e368:	40a00733          	neg	a4,a0
1c00e36c:	8b0d                	andi	a4,a4,3
1c00e36e:	fff60793          	addi	a5,a2,-1
1c00e372:	00370693          	addi	a3,a4,3
1c00e376:	1ad7e163          	bltu	a5,a3,1c00e518 <PQCLEAN_KYBER1024_CLEAN_cmov+0x1f2>
1c00e37a:	4e81                	li	t4,0
1c00e37c:	c739                	beqz	a4,1c00e3ca <PQCLEAN_KYBER1024_CLEAN_cmov+0xa4>
1c00e37e:	00054683          	lbu	a3,0(a0)
1c00e382:	0005c783          	lbu	a5,0(a1)
1c00e386:	4e85                	li	t4,1
1c00e388:	8fb5                	xor	a5,a5,a3
1c00e38a:	00f877b3          	and	a5,a6,a5
1c00e38e:	8fb5                	xor	a5,a5,a3
1c00e390:	00f50023          	sb	a5,0(a0)
1c00e394:	03d70b63          	beq	a4,t4,1c00e3ca <PQCLEAN_KYBER1024_CLEAN_cmov+0xa4>
1c00e398:	00154683          	lbu	a3,1(a0)
1c00e39c:	0015c783          	lbu	a5,1(a1)
1c00e3a0:	488d                	li	a7,3
1c00e3a2:	8fb5                	xor	a5,a5,a3
1c00e3a4:	00f877b3          	and	a5,a6,a5
1c00e3a8:	8fb5                	xor	a5,a5,a3
1c00e3aa:	00f500a3          	sb	a5,1(a0)
1c00e3ae:	4e89                	li	t4,2
1c00e3b0:	01171d63          	bne	a4,a7,1c00e3ca <PQCLEAN_KYBER1024_CLEAN_cmov+0xa4>
1c00e3b4:	00254683          	lbu	a3,2(a0)
1c00e3b8:	0025c783          	lbu	a5,2(a1)
1c00e3bc:	4e8d                	li	t4,3
1c00e3be:	8fb5                	xor	a5,a5,a3
1c00e3c0:	00f877b3          	and	a5,a6,a5
1c00e3c4:	8fb5                	xor	a5,a5,a3
1c00e3c6:	00f50123          	sb	a5,2(a0)
1c00e3ca:	00881693          	slli	a3,a6,0x8
1c00e3ce:	00d866b3          	or	a3,a6,a3
1c00e3d2:	01081793          	slli	a5,a6,0x10
1c00e3d6:	40e602b3          	sub	t0,a2,a4
1c00e3da:	8fd5                	or	a5,a5,a3
1c00e3dc:	01881f13          	slli	t5,a6,0x18
1c00e3e0:	00e506b3          	add	a3,a0,a4
1c00e3e4:	0022df93          	srli	t6,t0,0x2
1c00e3e8:	01e7ef33          	or	t5,a5,t5
1c00e3ec:	972e                	add	a4,a4,a1
1c00e3ee:	8336                	mv	t1,a3
1c00e3f0:	4881                	li	a7,0
1c00e3f2:	0006ae03          	lw	t3,0(a3)
1c00e3f6:	431c                	lw	a5,0(a4)
1c00e3f8:	0885                	addi	a7,a7,1
1c00e3fa:	00fe47b3          	xor	a5,t3,a5
1c00e3fe:	01e7f7b3          	and	a5,a5,t5
1c00e402:	01c7c7b3          	xor	a5,a5,t3
1c00e406:	00f32023          	sw	a5,0(t1)
1c00e40a:	0691                	addi	a3,a3,4
1c00e40c:	0711                	addi	a4,a4,4
1c00e40e:	0311                	addi	t1,t1,4
1c00e410:	fff8e1e3          	bltu	a7,t6,1c00e3f2 <PQCLEAN_KYBER1024_CLEAN_cmov+0xcc>
1c00e414:	ffc2f793          	andi	a5,t0,-4
1c00e418:	9ebe                	add	t4,t4,a5
1c00e41a:	0cf28e63          	beq	t0,a5,1c00e4f6 <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00e41e:	01d508b3          	add	a7,a0,t4
1c00e422:	01d587b3          	add	a5,a1,t4
1c00e426:	0008c683          	lbu	a3,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00e42a:	0007c703          	lbu	a4,0(a5)
1c00e42e:	001e8793          	addi	a5,t4,1
1c00e432:	8f35                	xor	a4,a4,a3
1c00e434:	00e87733          	and	a4,a6,a4
1c00e438:	8f35                	xor	a4,a4,a3
1c00e43a:	00e88023          	sb	a4,0(a7)
1c00e43e:	0ac7fc63          	bleu	a2,a5,1c00e4f6 <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00e442:	00f508b3          	add	a7,a0,a5
1c00e446:	00f58733          	add	a4,a1,a5
1c00e44a:	0008c303          	lbu	t1,0(a7)
1c00e44e:	00074703          	lbu	a4,0(a4)
1c00e452:	00178693          	addi	a3,a5,1
1c00e456:	00e34733          	xor	a4,t1,a4
1c00e45a:	00e87733          	and	a4,a6,a4
1c00e45e:	00e34733          	xor	a4,t1,a4
1c00e462:	00e88023          	sb	a4,0(a7)
1c00e466:	08c6f863          	bleu	a2,a3,1c00e4f6 <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00e46a:	00d50333          	add	t1,a0,a3
1c00e46e:	96ae                	add	a3,a3,a1
1c00e470:	00034883          	lbu	a7,0(t1)
1c00e474:	0006c703          	lbu	a4,0(a3)
1c00e478:	00278693          	addi	a3,a5,2
1c00e47c:	00e8c733          	xor	a4,a7,a4
1c00e480:	00e87733          	and	a4,a6,a4
1c00e484:	00e8c733          	xor	a4,a7,a4
1c00e488:	00e30023          	sb	a4,0(t1)
1c00e48c:	06c6f563          	bleu	a2,a3,1c00e4f6 <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00e490:	00d50333          	add	t1,a0,a3
1c00e494:	96ae                	add	a3,a3,a1
1c00e496:	00034883          	lbu	a7,0(t1)
1c00e49a:	0006c703          	lbu	a4,0(a3)
1c00e49e:	00378693          	addi	a3,a5,3
1c00e4a2:	00e8c733          	xor	a4,a7,a4
1c00e4a6:	00e87733          	and	a4,a6,a4
1c00e4aa:	00e8c733          	xor	a4,a7,a4
1c00e4ae:	00e30023          	sb	a4,0(t1)
1c00e4b2:	04c6f263          	bleu	a2,a3,1c00e4f6 <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00e4b6:	00d50333          	add	t1,a0,a3
1c00e4ba:	96ae                	add	a3,a3,a1
1c00e4bc:	00034883          	lbu	a7,0(t1)
1c00e4c0:	0006c703          	lbu	a4,0(a3)
1c00e4c4:	0791                	addi	a5,a5,4
1c00e4c6:	00e8c733          	xor	a4,a7,a4
1c00e4ca:	00e87733          	and	a4,a6,a4
1c00e4ce:	00e8c733          	xor	a4,a7,a4
1c00e4d2:	00e30023          	sb	a4,0(t1)
1c00e4d6:	02c7f063          	bleu	a2,a5,1c00e4f6 <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00e4da:	953e                	add	a0,a0,a5
1c00e4dc:	97ae                	add	a5,a5,a1
1c00e4de:	00054703          	lbu	a4,0(a0)
1c00e4e2:	0007c783          	lbu	a5,0(a5)
1c00e4e6:	8fb9                	xor	a5,a5,a4
1c00e4e8:	00f87833          	and	a6,a6,a5
1c00e4ec:	01074833          	xor	a6,a4,a6
1c00e4f0:	01050023          	sb	a6,0(a0)
1c00e4f4:	8082                	ret
1c00e4f6:	8082                	ret
1c00e4f8:	962a                	add	a2,a2,a0
1c00e4fa:	00054703          	lbu	a4,0(a0)
1c00e4fe:	0005c783          	lbu	a5,0(a1)
1c00e502:	0505                	addi	a0,a0,1
1c00e504:	8fb9                	xor	a5,a5,a4
1c00e506:	00f877b3          	and	a5,a6,a5
1c00e50a:	8fb9                	xor	a5,a5,a4
1c00e50c:	fef50fa3          	sb	a5,-1(a0)
1c00e510:	0585                	addi	a1,a1,1
1c00e512:	fec514e3          	bne	a0,a2,1c00e4fa <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d4>
1c00e516:	8082                	ret
1c00e518:	00054683          	lbu	a3,0(a0)
1c00e51c:	0005c703          	lbu	a4,0(a1)
1c00e520:	4785                	li	a5,1
1c00e522:	8f35                	xor	a4,a4,a3
1c00e524:	00e87733          	and	a4,a6,a4
1c00e528:	8f35                	xor	a4,a4,a3
1c00e52a:	00e50023          	sb	a4,0(a0)
1c00e52e:	bf11                	j	1c00e442 <PQCLEAN_KYBER1024_CLEAN_cmov+0x11c>

1c00e530 <pos_wait_forever>:
1c00e530:	f14027f3          	csrr	a5,mhartid
1c00e534:	8795                	srai	a5,a5,0x5
1c00e536:	03f7f793          	andi	a5,a5,63
1c00e53a:	477d                	li	a4,31
1c00e53c:	00e78363          	beq	a5,a4,1c00e542 <pos_wait_forever+0x12>
1c00e540:	a001                	j	1c00e540 <pos_wait_forever+0x10>
1c00e542:	1a10a7b7          	lui	a5,0x1a10a
1c00e546:	577d                	li	a4,-1
1c00e548:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00e54c:	10500073          	wfi
1c00e550:	10500073          	wfi
1c00e554:	bfe5                	j	1c00e54c <pos_wait_forever+0x1c>

1c00e556 <memcpy>:
1c00e556:	00b567b3          	or	a5,a0,a1
1c00e55a:	8b8d                	andi	a5,a5,3
1c00e55c:	10078f63          	beqz	a5,1c00e67a <memcpy+0x124>
1c00e560:	14060063          	beqz	a2,1c00e6a0 <memcpy+0x14a>
1c00e564:	00458793          	addi	a5,a1,4
1c00e568:	00450693          	addi	a3,a0,4
1c00e56c:	00f537b3          	sltu	a5,a0,a5
1c00e570:	00d5b6b3          	sltu	a3,a1,a3
1c00e574:	0017c793          	xori	a5,a5,1
1c00e578:	0016c693          	xori	a3,a3,1
1c00e57c:	873e                	mv	a4,a5
1c00e57e:	87b6                	mv	a5,a3
1c00e580:	8fd9                	or	a5,a5,a4
1c00e582:	0ff7f793          	andi	a5,a5,255
1c00e586:	cff9                	beqz	a5,1c00e664 <memcpy+0x10e>
1c00e588:	00863793          	sltiu	a5,a2,8
1c00e58c:	0017c793          	xori	a5,a5,1
1c00e590:	0ff7f793          	andi	a5,a5,255
1c00e594:	cbe1                	beqz	a5,1c00e664 <memcpy+0x10e>
1c00e596:	40b007b3          	neg	a5,a1
1c00e59a:	8b8d                	andi	a5,a5,3
1c00e59c:	fff60313          	addi	t1,a2,-1
1c00e5a0:	cfe5                	beqz	a5,1c00e698 <memcpy+0x142>
1c00e5a2:	0005c683          	lbu	a3,0(a1)
1c00e5a6:	4705                	li	a4,1
1c00e5a8:	00d50023          	sb	a3,0(a0)
1c00e5ac:	00158893          	addi	a7,a1,1
1c00e5b0:	00150813          	addi	a6,a0,1
1c00e5b4:	02e78963          	beq	a5,a4,1c00e5e6 <memcpy+0x90>
1c00e5b8:	0015c683          	lbu	a3,1(a1)
1c00e5bc:	470d                	li	a4,3
1c00e5be:	00d500a3          	sb	a3,1(a0)
1c00e5c2:	00258893          	addi	a7,a1,2
1c00e5c6:	00250813          	addi	a6,a0,2
1c00e5ca:	ffe60313          	addi	t1,a2,-2
1c00e5ce:	00e79c63          	bne	a5,a4,1c00e5e6 <memcpy+0x90>
1c00e5d2:	0025c703          	lbu	a4,2(a1)
1c00e5d6:	00358893          	addi	a7,a1,3
1c00e5da:	00350813          	addi	a6,a0,3
1c00e5de:	00e50123          	sb	a4,2(a0)
1c00e5e2:	ffd60313          	addi	t1,a2,-3
1c00e5e6:	8e1d                	sub	a2,a2,a5
1c00e5e8:	95be                	add	a1,a1,a5
1c00e5ea:	00265e13          	srli	t3,a2,0x2
1c00e5ee:	97aa                	add	a5,a5,a0
1c00e5f0:	4701                	li	a4,0
1c00e5f2:	4194                	lw	a3,0(a1)
1c00e5f4:	0705                	addi	a4,a4,1
1c00e5f6:	c394                	sw	a3,0(a5)
1c00e5f8:	0591                	addi	a1,a1,4
1c00e5fa:	0791                	addi	a5,a5,4
1c00e5fc:	ffc76be3          	bltu	a4,t3,1c00e5f2 <memcpy+0x9c>
1c00e600:	ffc67593          	andi	a1,a2,-4
1c00e604:	40b306b3          	sub	a3,t1,a1
1c00e608:	00b807b3          	add	a5,a6,a1
1c00e60c:	00b88733          	add	a4,a7,a1
1c00e610:	06b60463          	beq	a2,a1,1c00e678 <memcpy+0x122>
1c00e614:	00074583          	lbu	a1,0(a4)
1c00e618:	fff68613          	addi	a2,a3,-1
1c00e61c:	00b78023          	sb	a1,0(a5)
1c00e620:	ce21                	beqz	a2,1c00e678 <memcpy+0x122>
1c00e622:	00174583          	lbu	a1,1(a4)
1c00e626:	ffe68613          	addi	a2,a3,-2
1c00e62a:	00b780a3          	sb	a1,1(a5)
1c00e62e:	c629                	beqz	a2,1c00e678 <memcpy+0x122>
1c00e630:	00274583          	lbu	a1,2(a4)
1c00e634:	ffd68613          	addi	a2,a3,-3
1c00e638:	00b78123          	sb	a1,2(a5)
1c00e63c:	ce15                	beqz	a2,1c00e678 <memcpy+0x122>
1c00e63e:	00374583          	lbu	a1,3(a4)
1c00e642:	ffc68613          	addi	a2,a3,-4
1c00e646:	00b781a3          	sb	a1,3(a5)
1c00e64a:	c61d                	beqz	a2,1c00e678 <memcpy+0x122>
1c00e64c:	00474583          	lbu	a1,4(a4)
1c00e650:	4615                	li	a2,5
1c00e652:	00b78223          	sb	a1,4(a5)
1c00e656:	02c68163          	beq	a3,a2,1c00e678 <memcpy+0x122>
1c00e65a:	00574703          	lbu	a4,5(a4)
1c00e65e:	00e782a3          	sb	a4,5(a5)
1c00e662:	8082                	ret
1c00e664:	962e                	add	a2,a2,a1
1c00e666:	87aa                	mv	a5,a0
1c00e668:	0585                	addi	a1,a1,1
1c00e66a:	fff5c703          	lbu	a4,-1(a1)
1c00e66e:	0785                	addi	a5,a5,1
1c00e670:	fee78fa3          	sb	a4,-1(a5)
1c00e674:	fec59ae3          	bne	a1,a2,1c00e668 <memcpy+0x112>
1c00e678:	8082                	ret
1c00e67a:	00367793          	andi	a5,a2,3
1c00e67e:	ee0793e3          	bnez	a5,1c00e564 <memcpy+0xe>
1c00e682:	da7d                	beqz	a2,1c00e678 <memcpy+0x122>
1c00e684:	87aa                	mv	a5,a0
1c00e686:	0591                	addi	a1,a1,4
1c00e688:	ffc5a703          	lw	a4,-4(a1)
1c00e68c:	0791                	addi	a5,a5,4
1c00e68e:	fee7ae23          	sw	a4,-4(a5)
1c00e692:	1671                	addi	a2,a2,-4
1c00e694:	fa6d                	bnez	a2,1c00e686 <memcpy+0x130>
1c00e696:	8082                	ret
1c00e698:	88ae                	mv	a7,a1
1c00e69a:	882a                	mv	a6,a0
1c00e69c:	8332                	mv	t1,a2
1c00e69e:	b7a1                	j	1c00e5e6 <memcpy+0x90>
1c00e6a0:	8082                	ret

1c00e6a2 <memmove>:
1c00e6a2:	40b507b3          	sub	a5,a0,a1
1c00e6a6:	10c7e463          	bltu	a5,a2,1c00e7ae <memmove+0x10c>
1c00e6aa:	12060b63          	beqz	a2,1c00e7e0 <memmove+0x13e>
1c00e6ae:	00458793          	addi	a5,a1,4
1c00e6b2:	00450693          	addi	a3,a0,4
1c00e6b6:	00f537b3          	sltu	a5,a0,a5
1c00e6ba:	00d5b6b3          	sltu	a3,a1,a3
1c00e6be:	0017c793          	xori	a5,a5,1
1c00e6c2:	0016c693          	xori	a3,a3,1
1c00e6c6:	873e                	mv	a4,a5
1c00e6c8:	87b6                	mv	a5,a3
1c00e6ca:	8fd9                	or	a5,a5,a4
1c00e6cc:	0ff7f793          	andi	a5,a5,255
1c00e6d0:	cfed                	beqz	a5,1c00e7ca <memmove+0x128>
1c00e6d2:	00863793          	sltiu	a5,a2,8
1c00e6d6:	0017c793          	xori	a5,a5,1
1c00e6da:	0ff7f793          	andi	a5,a5,255
1c00e6de:	c7f5                	beqz	a5,1c00e7ca <memmove+0x128>
1c00e6e0:	40b007b3          	neg	a5,a1
1c00e6e4:	8b8d                	andi	a5,a5,3
1c00e6e6:	fff60313          	addi	t1,a2,-1
1c00e6ea:	cfe5                	beqz	a5,1c00e7e2 <memmove+0x140>
1c00e6ec:	0005c683          	lbu	a3,0(a1)
1c00e6f0:	4705                	li	a4,1
1c00e6f2:	00d50023          	sb	a3,0(a0)
1c00e6f6:	00150813          	addi	a6,a0,1
1c00e6fa:	00158893          	addi	a7,a1,1
1c00e6fe:	02e78963          	beq	a5,a4,1c00e730 <memmove+0x8e>
1c00e702:	0015c683          	lbu	a3,1(a1)
1c00e706:	470d                	li	a4,3
1c00e708:	00d500a3          	sb	a3,1(a0)
1c00e70c:	00250813          	addi	a6,a0,2
1c00e710:	00258893          	addi	a7,a1,2
1c00e714:	ffe60313          	addi	t1,a2,-2
1c00e718:	00e79c63          	bne	a5,a4,1c00e730 <memmove+0x8e>
1c00e71c:	0025c703          	lbu	a4,2(a1)
1c00e720:	00350813          	addi	a6,a0,3
1c00e724:	00e50123          	sb	a4,2(a0)
1c00e728:	00358893          	addi	a7,a1,3
1c00e72c:	ffd60313          	addi	t1,a2,-3
1c00e730:	8e1d                	sub	a2,a2,a5
1c00e732:	95be                	add	a1,a1,a5
1c00e734:	00265e13          	srli	t3,a2,0x2
1c00e738:	97aa                	add	a5,a5,a0
1c00e73a:	4701                	li	a4,0
1c00e73c:	4194                	lw	a3,0(a1)
1c00e73e:	0705                	addi	a4,a4,1
1c00e740:	c394                	sw	a3,0(a5)
1c00e742:	0591                	addi	a1,a1,4
1c00e744:	0791                	addi	a5,a5,4
1c00e746:	ffc76be3          	bltu	a4,t3,1c00e73c <memmove+0x9a>
1c00e74a:	ffc67593          	andi	a1,a2,-4
1c00e74e:	40b306b3          	sub	a3,t1,a1
1c00e752:	00b807b3          	add	a5,a6,a1
1c00e756:	00b88733          	add	a4,a7,a1
1c00e75a:	08b60263          	beq	a2,a1,1c00e7de <memmove+0x13c>
1c00e75e:	00074583          	lbu	a1,0(a4)
1c00e762:	fff68613          	addi	a2,a3,-1
1c00e766:	00b78023          	sb	a1,0(a5)
1c00e76a:	ca35                	beqz	a2,1c00e7de <memmove+0x13c>
1c00e76c:	00174583          	lbu	a1,1(a4)
1c00e770:	ffe68613          	addi	a2,a3,-2
1c00e774:	00b780a3          	sb	a1,1(a5)
1c00e778:	c23d                	beqz	a2,1c00e7de <memmove+0x13c>
1c00e77a:	00274583          	lbu	a1,2(a4)
1c00e77e:	ffd68613          	addi	a2,a3,-3
1c00e782:	00b78123          	sb	a1,2(a5)
1c00e786:	ce21                	beqz	a2,1c00e7de <memmove+0x13c>
1c00e788:	00374583          	lbu	a1,3(a4)
1c00e78c:	ffc68613          	addi	a2,a3,-4
1c00e790:	00b781a3          	sb	a1,3(a5)
1c00e794:	c629                	beqz	a2,1c00e7de <memmove+0x13c>
1c00e796:	00474583          	lbu	a1,4(a4)
1c00e79a:	4615                	li	a2,5
1c00e79c:	00b78223          	sb	a1,4(a5)
1c00e7a0:	02c68f63          	beq	a3,a2,1c00e7de <memmove+0x13c>
1c00e7a4:	00574703          	lbu	a4,5(a4)
1c00e7a8:	00e782a3          	sb	a4,5(a5)
1c00e7ac:	8082                	ret
1c00e7ae:	167d                	addi	a2,a2,-1
1c00e7b0:	00c587b3          	add	a5,a1,a2
1c00e7b4:	962a                	add	a2,a2,a0
1c00e7b6:	15fd                	addi	a1,a1,-1
1c00e7b8:	0007c703          	lbu	a4,0(a5)
1c00e7bc:	17fd                	addi	a5,a5,-1
1c00e7be:	00e60023          	sb	a4,0(a2)
1c00e7c2:	167d                	addi	a2,a2,-1
1c00e7c4:	feb79ae3          	bne	a5,a1,1c00e7b8 <memmove+0x116>
1c00e7c8:	8082                	ret
1c00e7ca:	962a                	add	a2,a2,a0
1c00e7cc:	87aa                	mv	a5,a0
1c00e7ce:	0005c703          	lbu	a4,0(a1)
1c00e7d2:	0785                	addi	a5,a5,1
1c00e7d4:	fee78fa3          	sb	a4,-1(a5)
1c00e7d8:	0585                	addi	a1,a1,1
1c00e7da:	fec79ae3          	bne	a5,a2,1c00e7ce <memmove+0x12c>
1c00e7de:	8082                	ret
1c00e7e0:	8082                	ret
1c00e7e2:	88ae                	mv	a7,a1
1c00e7e4:	882a                	mv	a6,a0
1c00e7e6:	8332                	mv	t1,a2
1c00e7e8:	b7a1                	j	1c00e730 <memmove+0x8e>

1c00e7ea <strchr>:
1c00e7ea:	00054783          	lbu	a5,0(a0)
1c00e7ee:	0ff5f593          	andi	a1,a1,255
1c00e7f2:	00b78863          	beq	a5,a1,1c00e802 <strchr+0x18>
1c00e7f6:	c799                	beqz	a5,1c00e804 <strchr+0x1a>
1c00e7f8:	0505                	addi	a0,a0,1
1c00e7fa:	00054783          	lbu	a5,0(a0)
1c00e7fe:	feb79ce3          	bne	a5,a1,1c00e7f6 <strchr+0xc>
1c00e802:	8082                	ret
1c00e804:	0015b593          	seqz	a1,a1
1c00e808:	40b005b3          	neg	a1,a1
1c00e80c:	8d6d                	and	a0,a0,a1
1c00e80e:	8082                	ret

1c00e810 <puts>:
1c00e810:	00054783          	lbu	a5,0(a0)
1c00e814:	c78d                	beqz	a5,1c00e83e <puts+0x2e>
1c00e816:	f14026f3          	csrr	a3,mhartid
1c00e81a:	00369713          	slli	a4,a3,0x3
1c00e81e:	1a10f637          	lui	a2,0x1a10f
1c00e822:	0ff77713          	andi	a4,a4,255
1c00e826:	9732                	add	a4,a4,a2
1c00e828:	6609                	lui	a2,0x2
1c00e82a:	068a                	slli	a3,a3,0x2
1c00e82c:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00e830:	8ef1                	and	a3,a3,a2
1c00e832:	9736                	add	a4,a4,a3
1c00e834:	c31c                	sw	a5,0(a4)
1c00e836:	0505                	addi	a0,a0,1
1c00e838:	00054783          	lbu	a5,0(a0)
1c00e83c:	ffe5                	bnez	a5,1c00e834 <puts+0x24>
1c00e83e:	f1402773          	csrr	a4,mhartid
1c00e842:	00371793          	slli	a5,a4,0x3
1c00e846:	1a10f6b7          	lui	a3,0x1a10f
1c00e84a:	0ff7f793          	andi	a5,a5,255
1c00e84e:	97b6                	add	a5,a5,a3
1c00e850:	6689                	lui	a3,0x2
1c00e852:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00e856:	070a                	slli	a4,a4,0x2
1c00e858:	8f75                	and	a4,a4,a3
1c00e85a:	97ba                	add	a5,a5,a4
1c00e85c:	4729                	li	a4,10
1c00e85e:	c398                	sw	a4,0(a5)
1c00e860:	4501                	li	a0,0
1c00e862:	8082                	ret

1c00e864 <pos_libc_fputc_locked>:
1c00e864:	6689                	lui	a3,0x2
1c00e866:	f14027f3          	csrr	a5,mhartid
1c00e86a:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00e86e:	00379713          	slli	a4,a5,0x3
1c00e872:	078a                	slli	a5,a5,0x2
1c00e874:	8ff5                	and	a5,a5,a3
1c00e876:	0ff77713          	andi	a4,a4,255
1c00e87a:	1a10f6b7          	lui	a3,0x1a10f
1c00e87e:	9736                	add	a4,a4,a3
1c00e880:	0ff57513          	andi	a0,a0,255
1c00e884:	97ba                	add	a5,a5,a4
1c00e886:	c388                	sw	a0,0(a5)
1c00e888:	4501                	li	a0,0
1c00e88a:	8082                	ret

1c00e88c <putchar>:
1c00e88c:	6689                	lui	a3,0x2
1c00e88e:	f14027f3          	csrr	a5,mhartid
1c00e892:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00e896:	00379713          	slli	a4,a5,0x3
1c00e89a:	078a                	slli	a5,a5,0x2
1c00e89c:	8ff5                	and	a5,a5,a3
1c00e89e:	0ff77713          	andi	a4,a4,255
1c00e8a2:	1a10f6b7          	lui	a3,0x1a10f
1c00e8a6:	9736                	add	a4,a4,a3
1c00e8a8:	0ff57513          	andi	a0,a0,255
1c00e8ac:	97ba                	add	a5,a5,a4
1c00e8ae:	c388                	sw	a0,0(a5)
1c00e8b0:	4501                	li	a0,0
1c00e8b2:	8082                	ret

1c00e8b4 <pos_libc_prf_locked>:
1c00e8b4:	a0b1                	j	1c00e900 <pos_libc_prf>

1c00e8b6 <exit>:
1c00e8b6:	800007b7          	lui	a5,0x80000
1c00e8ba:	1141                	addi	sp,sp,-16
1c00e8bc:	8d5d                	or	a0,a0,a5
1c00e8be:	c606                	sw	ra,12(sp)
1c00e8c0:	1a1047b7          	lui	a5,0x1a104
1c00e8c4:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00e8c8:	31a5                	jal	1c00e530 <pos_wait_forever>

1c00e8ca <pos_io_start>:
1c00e8ca:	4501                	li	a0,0
1c00e8cc:	8082                	ret

1c00e8ce <pos_io_stop>:
1c00e8ce:	4501                	li	a0,0
1c00e8d0:	8082                	ret

1c00e8d2 <printf>:
1c00e8d2:	7139                	addi	sp,sp,-64
1c00e8d4:	02410313          	addi	t1,sp,36
1c00e8d8:	d432                	sw	a2,40(sp)
1c00e8da:	862a                	mv	a2,a0
1c00e8dc:	1c00f537          	lui	a0,0x1c00f
1c00e8e0:	d22e                	sw	a1,36(sp)
1c00e8e2:	d636                	sw	a3,44(sp)
1c00e8e4:	4589                	li	a1,2
1c00e8e6:	869a                	mv	a3,t1
1c00e8e8:	86450513          	addi	a0,a0,-1948 # 1c00e864 <pos_libc_fputc_locked>
1c00e8ec:	ce06                	sw	ra,28(sp)
1c00e8ee:	d83a                	sw	a4,48(sp)
1c00e8f0:	da3e                	sw	a5,52(sp)
1c00e8f2:	dc42                	sw	a6,56(sp)
1c00e8f4:	de46                	sw	a7,60(sp)
1c00e8f6:	c61a                	sw	t1,12(sp)
1c00e8f8:	3f75                	jal	1c00e8b4 <pos_libc_prf_locked>
1c00e8fa:	40f2                	lw	ra,28(sp)
1c00e8fc:	6121                	addi	sp,sp,64
1c00e8fe:	8082                	ret

1c00e900 <pos_libc_prf>:
1c00e900:	7169                	addi	sp,sp,-304
1c00e902:	12812423          	sw	s0,296(sp)
1c00e906:	12912223          	sw	s1,292(sp)
1c00e90a:	11612823          	sw	s6,272(sp)
1c00e90e:	11712623          	sw	s7,268(sp)
1c00e912:	11812423          	sw	s8,264(sp)
1c00e916:	11912223          	sw	s9,260(sp)
1c00e91a:	11a12023          	sw	s10,256(sp)
1c00e91e:	12112623          	sw	ra,300(sp)
1c00e922:	13212023          	sw	s2,288(sp)
1c00e926:	11312e23          	sw	s3,284(sp)
1c00e92a:	11412c23          	sw	s4,280(sp)
1c00e92e:	11512a23          	sw	s5,276(sp)
1c00e932:	dfee                	sw	s11,252(sp)
1c00e934:	8b2a                	mv	s6,a0
1c00e936:	8d2e                	mv	s10,a1
1c00e938:	84b2                	mv	s1,a2
1c00e93a:	8c36                	mv	s8,a3
1c00e93c:	4401                	li	s0,0
1c00e93e:	1c000bb7          	lui	s7,0x1c000
1c00e942:	02410c93          	addi	s9,sp,36
1c00e946:	0004c503          	lbu	a0,0(s1)
1c00e94a:	0485                	addi	s1,s1,1
1c00e94c:	cd19                	beqz	a0,1c00e96a <pos_libc_prf+0x6a>
1c00e94e:	02500793          	li	a5,37
1c00e952:	04f50863          	beq	a0,a5,1c00e9a2 <pos_libc_prf+0xa2>
1c00e956:	85ea                	mv	a1,s10
1c00e958:	9b02                	jalr	s6
1c00e95a:	57fd                	li	a5,-1
1c00e95c:	24f50863          	beq	a0,a5,1c00ebac <pos_libc_prf+0x2ac>
1c00e960:	0405                	addi	s0,s0,1
1c00e962:	0004c503          	lbu	a0,0(s1)
1c00e966:	0485                	addi	s1,s1,1
1c00e968:	f17d                	bnez	a0,1c00e94e <pos_libc_prf+0x4e>
1c00e96a:	8522                	mv	a0,s0
1c00e96c:	12c12083          	lw	ra,300(sp)
1c00e970:	12812403          	lw	s0,296(sp)
1c00e974:	12412483          	lw	s1,292(sp)
1c00e978:	12012903          	lw	s2,288(sp)
1c00e97c:	11c12983          	lw	s3,284(sp)
1c00e980:	11812a03          	lw	s4,280(sp)
1c00e984:	11412a83          	lw	s5,276(sp)
1c00e988:	11012b03          	lw	s6,272(sp)
1c00e98c:	10c12b83          	lw	s7,268(sp)
1c00e990:	10812c03          	lw	s8,264(sp)
1c00e994:	10412c83          	lw	s9,260(sp)
1c00e998:	10012d03          	lw	s10,256(sp)
1c00e99c:	5dfe                	lw	s11,252(sp)
1c00e99e:	6155                	addi	sp,sp,304
1c00e9a0:	8082                	ret
1c00e9a2:	00148a93          	addi	s5,s1,1
1c00e9a6:	fffacd83          	lbu	s11,-1(s5)
1c00e9aa:	02000713          	li	a4,32
1c00e9ae:	24cb8513          	addi	a0,s7,588 # 1c00024c <PQCLEAN_KYBER1024_CLEAN_zetas+0x104>
1c00e9b2:	85ee                	mv	a1,s11
1c00e9b4:	c83a                	sw	a4,16(sp)
1c00e9b6:	cc02                	sw	zero,24(sp)
1c00e9b8:	ca02                	sw	zero,20(sp)
1c00e9ba:	ce02                	sw	zero,28(sp)
1c00e9bc:	c602                	sw	zero,12(sp)
1c00e9be:	02300913          	li	s2,35
1c00e9c2:	02d00a13          	li	s4,45
1c00e9c6:	89d6                	mv	s3,s5
1c00e9c8:	350d                	jal	1c00e7ea <strchr>
1c00e9ca:	c915                	beqz	a0,1c00e9fe <pos_libc_prf+0xfe>
1c00e9cc:	212d8963          	beq	s11,s2,1c00ebde <pos_libc_prf+0x2de>
1c00e9d0:	1fb97063          	bleu	s11,s2,1c00ebb0 <pos_libc_prf+0x2b0>
1c00e9d4:	214d8163          	beq	s11,s4,1c00ebd6 <pos_libc_prf+0x2d6>
1c00e9d8:	03000613          	li	a2,48
1c00e9dc:	1ecd8863          	beq	s11,a2,1c00ebcc <pos_libc_prf+0x2cc>
1c00e9e0:	02b00693          	li	a3,43
1c00e9e4:	1edd8063          	beq	s11,a3,1c00ebc4 <pos_libc_prf+0x2c4>
1c00e9e8:	84d6                	mv	s1,s5
1c00e9ea:	00148a93          	addi	s5,s1,1
1c00e9ee:	fffacd83          	lbu	s11,-1(s5)
1c00e9f2:	24cb8513          	addi	a0,s7,588
1c00e9f6:	85ee                	mv	a1,s11
1c00e9f8:	89d6                	mv	s3,s5
1c00e9fa:	3bc5                	jal	1c00e7ea <strchr>
1c00e9fc:	f961                	bnez	a0,1c00e9cc <pos_libc_prf+0xcc>
1c00e9fe:	02a00613          	li	a2,42
1c00ea02:	20cd8463          	beq	s11,a2,1c00ec0a <pos_libc_prf+0x30a>
1c00ea06:	fd0d8613          	addi	a2,s11,-48
1c00ea0a:	45a5                	li	a1,9
1c00ea0c:	4901                	li	s2,0
1c00ea0e:	1cc5fe63          	bleu	a2,a1,1c00ebea <pos_libc_prf+0x2ea>
1c00ea12:	02e00713          	li	a4,46
1c00ea16:	5a7d                	li	s4,-1
1c00ea18:	24ed8463          	beq	s11,a4,1c00ec60 <pos_libc_prf+0x360>
1c00ea1c:	1c000837          	lui	a6,0x1c000
1c00ea20:	85ee                	mv	a1,s11
1c00ea22:	25480513          	addi	a0,a6,596 # 1c000254 <PQCLEAN_KYBER1024_CLEAN_zetas+0x10c>
1c00ea26:	33d1                	jal	1c00e7ea <strchr>
1c00ea28:	84ce                	mv	s1,s3
1c00ea2a:	c509                	beqz	a0,1c00ea34 <pos_libc_prf+0x134>
1c00ea2c:	0009cd83          	lbu	s11,0(s3)
1c00ea30:	00198493          	addi	s1,s3,1
1c00ea34:	06700713          	li	a4,103
1c00ea38:	1fb75963          	ble	s11,a4,1c00ec2a <pos_libc_prf+0x32a>
1c00ea3c:	07000713          	li	a4,112
1c00ea40:	12ed89e3          	beq	s11,a4,1c00f372 <pos_libc_prf+0xa72>
1c00ea44:	25b75263          	ble	s11,a4,1c00ec88 <pos_libc_prf+0x388>
1c00ea48:	07500713          	li	a4,117
1c00ea4c:	0aed89e3          	beq	s11,a4,1c00f2fe <pos_libc_prf+0x9fe>
1c00ea50:	07800713          	li	a4,120
1c00ea54:	72ed8b63          	beq	s11,a4,1c00f18a <pos_libc_prf+0x88a>
1c00ea58:	07300713          	li	a4,115
1c00ea5c:	1aed9ce3          	bne	s11,a4,1c00f414 <pos_libc_prf+0xb14>
1c00ea60:	000c2583          	lw	a1,0(s8)
1c00ea64:	004c0a93          	addi	s5,s8,4
1c00ea68:	87ae                	mv	a5,a1
1c00ea6a:	4981                	li	s3,0
1c00ea6c:	0c800693          	li	a3,200
1c00ea70:	a021                	j	1c00ea78 <pos_libc_prf+0x178>
1c00ea72:	0985                	addi	s3,s3,1
1c00ea74:	5ad98be3          	beq	s3,a3,1c00f82a <pos_libc_prf+0xf2a>
1c00ea78:	0007c703          	lbu	a4,0(a5)
1c00ea7c:	0785                	addi	a5,a5,1
1c00ea7e:	fb75                	bnez	a4,1c00ea72 <pos_libc_prf+0x172>
1c00ea80:	000a4563          	bltz	s4,1c00ea8a <pos_libc_prf+0x18a>
1c00ea84:	013a5363          	ble	s3,s4,1c00ea8a <pos_libc_prf+0x18a>
1c00ea88:	89d2                	mv	s3,s4
1c00ea8a:	8c56                	mv	s8,s5
1c00ea8c:	ea098de3          	beqz	s3,1c00e946 <pos_libc_prf+0x46>
1c00ea90:	864e                	mv	a2,s3
1c00ea92:	8566                	mv	a0,s9
1c00ea94:	34c9                	jal	1c00e556 <memcpy>
1c00ea96:	8c56                	mv	s8,s5
1c00ea98:	0f29d963          	ble	s2,s3,1c00eb8a <pos_libc_prf+0x28a>
1c00ea9c:	c602                	sw	zero,12(sp)
1c00ea9e:	48f2                	lw	a7,28(sp)
1c00eaa0:	1a0885e3          	beqz	a7,1c00f44a <pos_libc_prf+0xb4a>
1c00eaa4:	013c87b3          	add	a5,s9,s3
1c00eaa8:	40f007b3          	neg	a5,a5
1c00eaac:	8b8d                	andi	a5,a5,3
1c00eaae:	00378693          	addi	a3,a5,3
1c00eab2:	4715                	li	a4,5
1c00eab4:	413905b3          	sub	a1,s2,s3
1c00eab8:	00e6f363          	bleu	a4,a3,1c00eabe <pos_libc_prf+0x1be>
1c00eabc:	4695                	li	a3,5
1c00eabe:	fff90713          	addi	a4,s2,-1
1c00eac2:	41370733          	sub	a4,a4,s3
1c00eac6:	06d76663          	bltu	a4,a3,1c00eb32 <pos_libc_prf+0x232>
1c00eaca:	86ce                	mv	a3,s3
1c00eacc:	cb9d                	beqz	a5,1c00eb02 <pos_libc_prf+0x202>
1c00eace:	0f010813          	addi	a6,sp,240
1c00ead2:	013806b3          	add	a3,a6,s3
1c00ead6:	02000713          	li	a4,32
1c00eada:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c00eade:	4605                	li	a2,1
1c00eae0:	00198693          	addi	a3,s3,1
1c00eae4:	00c78f63          	beq	a5,a2,1c00eb02 <pos_libc_prf+0x202>
1c00eae8:	96c2                	add	a3,a3,a6
1c00eaea:	f2e68a23          	sb	a4,-204(a3)
1c00eaee:	460d                	li	a2,3
1c00eaf0:	00298693          	addi	a3,s3,2
1c00eaf4:	00c79763          	bne	a5,a2,1c00eb02 <pos_libc_prf+0x202>
1c00eaf8:	96c2                	add	a3,a3,a6
1c00eafa:	f2e68a23          	sb	a4,-204(a3)
1c00eafe:	00398693          	addi	a3,s3,3
1c00eb02:	8d9d                	sub	a1,a1,a5
1c00eb04:	97ce                	add	a5,a5,s3
1c00eb06:	0025d613          	srli	a2,a1,0x2
1c00eb0a:	97e6                	add	a5,a5,s9
1c00eb0c:	4701                	li	a4,0
1c00eb0e:	1c0008b7          	lui	a7,0x1c000
1c00eb12:	24888893          	addi	a7,a7,584 # 1c000248 <PQCLEAN_KYBER1024_CLEAN_zetas+0x100>
1c00eb16:	0008a883          	lw	a7,0(a7)
1c00eb1a:	0705                	addi	a4,a4,1
1c00eb1c:	0117a023          	sw	a7,0(a5)
1c00eb20:	0791                	addi	a5,a5,4
1c00eb22:	fec766e3          	bltu	a4,a2,1c00eb0e <pos_libc_prf+0x20e>
1c00eb26:	ffc5f793          	andi	a5,a1,-4
1c00eb2a:	00d789b3          	add	s3,a5,a3
1c00eb2e:	04b78b63          	beq	a5,a1,1c00eb84 <pos_libc_prf+0x284>
1c00eb32:	1988                	addi	a0,sp,240
1c00eb34:	01350733          	add	a4,a0,s3
1c00eb38:	02000793          	li	a5,32
1c00eb3c:	f2f70a23          	sb	a5,-204(a4)
1c00eb40:	00198713          	addi	a4,s3,1
1c00eb44:	05275063          	ble	s2,a4,1c00eb84 <pos_libc_prf+0x284>
1c00eb48:	972a                	add	a4,a4,a0
1c00eb4a:	f2f70a23          	sb	a5,-204(a4)
1c00eb4e:	00298713          	addi	a4,s3,2
1c00eb52:	03275963          	ble	s2,a4,1c00eb84 <pos_libc_prf+0x284>
1c00eb56:	972a                	add	a4,a4,a0
1c00eb58:	f2f70a23          	sb	a5,-204(a4)
1c00eb5c:	00398713          	addi	a4,s3,3
1c00eb60:	03275263          	ble	s2,a4,1c00eb84 <pos_libc_prf+0x284>
1c00eb64:	972a                	add	a4,a4,a0
1c00eb66:	f2f70a23          	sb	a5,-204(a4)
1c00eb6a:	00498713          	addi	a4,s3,4
1c00eb6e:	01275b63          	ble	s2,a4,1c00eb84 <pos_libc_prf+0x284>
1c00eb72:	972a                	add	a4,a4,a0
1c00eb74:	f2f70a23          	sb	a5,-204(a4)
1c00eb78:	0995                	addi	s3,s3,5
1c00eb7a:	0129d563          	ble	s2,s3,1c00eb84 <pos_libc_prf+0x284>
1c00eb7e:	99aa                	add	s3,s3,a0
1c00eb80:	f2f98a23          	sb	a5,-204(s3)
1c00eb84:	89ca                	mv	s3,s2
1c00eb86:	dc0980e3          	beqz	s3,1c00e946 <pos_libc_prf+0x46>
1c00eb8a:	8966                	mv	s2,s9
1c00eb8c:	5a7d                	li	s4,-1
1c00eb8e:	41940ab3          	sub	s5,s0,s9
1c00eb92:	a029                	j	1c00eb9c <pos_libc_prf+0x29c>
1c00eb94:	01590433          	add	s0,s2,s5
1c00eb98:	da0987e3          	beqz	s3,1c00e946 <pos_libc_prf+0x46>
1c00eb9c:	00094503          	lbu	a0,0(s2)
1c00eba0:	85ea                	mv	a1,s10
1c00eba2:	9b02                	jalr	s6
1c00eba4:	0905                	addi	s2,s2,1
1c00eba6:	19fd                	addi	s3,s3,-1
1c00eba8:	ff4516e3          	bne	a0,s4,1c00eb94 <pos_libc_prf+0x294>
1c00ebac:	547d                	li	s0,-1
1c00ebae:	bb75                	j	1c00e96a <pos_libc_prf+0x6a>
1c00ebb0:	da0d8de3          	beqz	s11,1c00e96a <pos_libc_prf+0x6a>
1c00ebb4:	02000513          	li	a0,32
1c00ebb8:	e2ad98e3          	bne	s11,a0,1c00e9e8 <pos_libc_prf+0xe8>
1c00ebbc:	4785                	li	a5,1
1c00ebbe:	cc3e                	sw	a5,24(sp)
1c00ebc0:	84d6                	mv	s1,s5
1c00ebc2:	b525                	j	1c00e9ea <pos_libc_prf+0xea>
1c00ebc4:	4705                	li	a4,1
1c00ebc6:	ca3a                	sw	a4,20(sp)
1c00ebc8:	84d6                	mv	s1,s5
1c00ebca:	b505                	j	1c00e9ea <pos_libc_prf+0xea>
1c00ebcc:	03000893          	li	a7,48
1c00ebd0:	c846                	sw	a7,16(sp)
1c00ebd2:	84d6                	mv	s1,s5
1c00ebd4:	bd19                	j	1c00e9ea <pos_libc_prf+0xea>
1c00ebd6:	4685                	li	a3,1
1c00ebd8:	ce36                	sw	a3,28(sp)
1c00ebda:	84d6                	mv	s1,s5
1c00ebdc:	b539                	j	1c00e9ea <pos_libc_prf+0xea>
1c00ebde:	4805                	li	a6,1
1c00ebe0:	c642                	sw	a6,12(sp)
1c00ebe2:	84d6                	mv	s1,s5
1c00ebe4:	b519                	j	1c00e9ea <pos_libc_prf+0xea>
1c00ebe6:	84d6                	mv	s1,s5
1c00ebe8:	0a85                	addi	s5,s5,1
1c00ebea:	00291793          	slli	a5,s2,0x2
1c00ebee:	97ca                	add	a5,a5,s2
1c00ebf0:	0786                	slli	a5,a5,0x1
1c00ebf2:	97ee                	add	a5,a5,s11
1c00ebf4:	000acd83          	lbu	s11,0(s5)
1c00ebf8:	fd078913          	addi	s2,a5,-48
1c00ebfc:	fd0d8793          	addi	a5,s11,-48
1c00ec00:	fef5f3e3          	bleu	a5,a1,1c00ebe6 <pos_libc_prf+0x2e6>
1c00ec04:	00248993          	addi	s3,s1,2
1c00ec08:	a811                	j	1c00ec1c <pos_libc_prf+0x31c>
1c00ec0a:	000c2903          	lw	s2,0(s8)
1c00ec0e:	0c11                	addi	s8,s8,4
1c00ec10:	14094663          	bltz	s2,1c00ed5c <pos_libc_prf+0x45c>
1c00ec14:	000acd83          	lbu	s11,0(s5)
1c00ec18:	00248993          	addi	s3,s1,2
1c00ec1c:	0c800713          	li	a4,200
1c00ec20:	df2779e3          	bleu	s2,a4,1c00ea12 <pos_libc_prf+0x112>
1c00ec24:	0c800913          	li	s2,200
1c00ec28:	b3ed                	j	1c00ea12 <pos_libc_prf+0x112>
1c00ec2a:	06500713          	li	a4,101
1c00ec2e:	12eddc63          	ble	a4,s11,1c00ed66 <pos_libc_prf+0x466>
1c00ec32:	04700713          	li	a4,71
1c00ec36:	55b74063          	blt	a4,s11,1c00f176 <pos_libc_prf+0x876>
1c00ec3a:	04500713          	li	a4,69
1c00ec3e:	12edd463          	ble	a4,s11,1c00ed66 <pos_libc_prf+0x466>
1c00ec42:	d20d84e3          	beqz	s11,1c00e96a <pos_libc_prf+0x6a>
1c00ec46:	02500713          	li	a4,37
1c00ec4a:	7ced9563          	bne	s11,a4,1c00f414 <pos_libc_prf+0xb14>
1c00ec4e:	85ea                	mv	a1,s10
1c00ec50:	02500513          	li	a0,37
1c00ec54:	9b02                	jalr	s6
1c00ec56:	57fd                	li	a5,-1
1c00ec58:	f4f50ae3          	beq	a0,a5,1c00ebac <pos_libc_prf+0x2ac>
1c00ec5c:	0405                	addi	s0,s0,1
1c00ec5e:	b311                	j	1c00e962 <pos_libc_prf+0x62>
1c00ec60:	0009c783          	lbu	a5,0(s3)
1c00ec64:	02a00713          	li	a4,42
1c00ec68:	00198693          	addi	a3,s3,1
1c00ec6c:	0ae79d63          	bne	a5,a4,1c00ed26 <pos_libc_prf+0x426>
1c00ec70:	000c2a03          	lw	s4,0(s8)
1c00ec74:	0019cd83          	lbu	s11,1(s3)
1c00ec78:	0c11                	addi	s8,s8,4
1c00ec7a:	0989                	addi	s3,s3,2
1c00ec7c:	0c800713          	li	a4,200
1c00ec80:	d9475ee3          	ble	s4,a4,1c00ea1c <pos_libc_prf+0x11c>
1c00ec84:	5a7d                	li	s4,-1
1c00ec86:	bb59                	j	1c00ea1c <pos_libc_prf+0x11c>
1c00ec88:	06e00713          	li	a4,110
1c00ec8c:	76ed8e63          	beq	s11,a4,1c00f408 <pos_libc_prf+0xb08>
1c00ec90:	5bb75663          	ble	s11,a4,1c00f23c <pos_libc_prf+0x93c>
1c00ec94:	4732                	lw	a4,12(sp)
1c00ec96:	004c0513          	addi	a0,s8,4
1c00ec9a:	000c2683          	lw	a3,0(s8)
1c00ec9e:	1c070de3          	beqz	a4,1c00f678 <pos_libc_prf+0xd78>
1c00eca2:	03000793          	li	a5,48
1c00eca6:	02f10223          	sb	a5,36(sp)
1c00ecaa:	16068de3          	beqz	a3,1c00f624 <pos_libc_prf+0xd24>
1c00ecae:	02510593          	addi	a1,sp,37
1c00ecb2:	872e                	mv	a4,a1
1c00ecb4:	87ba                	mv	a5,a4
1c00ecb6:	0076f613          	andi	a2,a3,7
1c00ecba:	0785                	addi	a5,a5,1
1c00ecbc:	03060613          	addi	a2,a2,48
1c00ecc0:	828d                	srli	a3,a3,0x3
1c00ecc2:	fec78fa3          	sb	a2,-1(a5)
1c00ecc6:	fae5                	bnez	a3,1c00ecb6 <pos_libc_prf+0x3b6>
1c00ecc8:	40b789b3          	sub	s3,a5,a1
1c00eccc:	0149db63          	ble	s4,s3,1c00ece2 <pos_libc_prf+0x3e2>
1c00ecd0:	03000693          	li	a3,48
1c00ecd4:	0785                	addi	a5,a5,1
1c00ecd6:	fed78fa3          	sb	a3,-1(a5)
1c00ecda:	40b789b3          	sub	s3,a5,a1
1c00ecde:	ff49cbe3          	blt	s3,s4,1c00ecd4 <pos_libc_prf+0x3d4>
1c00ece2:	00078023          	sb	zero,0(a5)
1c00ece6:	17fd                	addi	a5,a5,-1
1c00ece8:	00f77e63          	bleu	a5,a4,1c00ed04 <pos_libc_prf+0x404>
1c00ecec:	00074603          	lbu	a2,0(a4)
1c00ecf0:	0007c683          	lbu	a3,0(a5)
1c00ecf4:	00c78023          	sb	a2,0(a5)
1c00ecf8:	00d70023          	sb	a3,0(a4)
1c00ecfc:	17fd                	addi	a5,a5,-1
1c00ecfe:	0705                	addi	a4,a4,1
1c00ed00:	fef766e3          	bltu	a4,a5,1c00ecec <pos_libc_prf+0x3ec>
1c00ed04:	4832                	lw	a6,12(sp)
1c00ed06:	57fd                	li	a5,-1
1c00ed08:	99c2                	add	s3,s3,a6
1c00ed0a:	22fa0ee3          	beq	s4,a5,1c00f746 <pos_libc_prf+0xe46>
1c00ed0e:	0c800793          	li	a5,200
1c00ed12:	e937cde3          	blt	a5,s3,1c00ebac <pos_libc_prf+0x2ac>
1c00ed16:	02000693          	li	a3,32
1c00ed1a:	8c2a                	mv	s8,a0
1c00ed1c:	c602                	sw	zero,12(sp)
1c00ed1e:	c836                	sw	a3,16(sp)
1c00ed20:	d729cfe3          	blt	s3,s2,1c00ea9e <pos_libc_prf+0x19e>
1c00ed24:	b58d                	j	1c00eb86 <pos_libc_prf+0x286>
1c00ed26:	fd078593          	addi	a1,a5,-48
1c00ed2a:	4725                	li	a4,9
1c00ed2c:	8dbe                	mv	s11,a5
1c00ed2e:	4a01                	li	s4,0
1c00ed30:	4625                	li	a2,9
1c00ed32:	00b77663          	bleu	a1,a4,1c00ed3e <pos_libc_prf+0x43e>
1c00ed36:	1070006f          	j	1c00f63c <pos_libc_prf+0xd3c>
1c00ed3a:	89b6                	mv	s3,a3
1c00ed3c:	0685                	addi	a3,a3,1
1c00ed3e:	002a1793          	slli	a5,s4,0x2
1c00ed42:	97d2                	add	a5,a5,s4
1c00ed44:	0786                	slli	a5,a5,0x1
1c00ed46:	97ee                	add	a5,a5,s11
1c00ed48:	0006cd83          	lbu	s11,0(a3)
1c00ed4c:	fd078a13          	addi	s4,a5,-48
1c00ed50:	fd0d8793          	addi	a5,s11,-48
1c00ed54:	fef673e3          	bleu	a5,a2,1c00ed3a <pos_libc_prf+0x43a>
1c00ed58:	0989                	addi	s3,s3,2
1c00ed5a:	b70d                	j	1c00ec7c <pos_libc_prf+0x37c>
1c00ed5c:	4785                	li	a5,1
1c00ed5e:	41200933          	neg	s2,s2
1c00ed62:	ce3e                	sw	a5,28(sp)
1c00ed64:	bd45                	j	1c00ec14 <pos_libc_prf+0x314>
1c00ed66:	0c1d                	addi	s8,s8,7
1c00ed68:	ff8c7c13          	andi	s8,s8,-8
1c00ed6c:	000c2703          	lw	a4,0(s8)
1c00ed70:	004c2803          	lw	a6,4(s8)
1c00ed74:	01575693          	srli	a3,a4,0x15
1c00ed78:	00b81613          	slli	a2,a6,0xb
1c00ed7c:	8e55                	or	a2,a2,a3
1c00ed7e:	01485513          	srli	a0,a6,0x14
1c00ed82:	00b71693          	slli	a3,a4,0xb
1c00ed86:	80000737          	lui	a4,0x80000
1c00ed8a:	fff74713          	not	a4,a4
1c00ed8e:	7ff57513          	andi	a0,a0,2047
1c00ed92:	7ff00593          	li	a1,2047
1c00ed96:	0c21                	addi	s8,s8,8
1c00ed98:	8e79                	and	a2,a2,a4
1c00ed9a:	0ab504e3          	beq	a0,a1,1c00f642 <pos_libc_prf+0xd42>
1c00ed9e:	04600593          	li	a1,70
1c00eda2:	00bd9463          	bne	s11,a1,1c00edaa <pos_libc_prf+0x4aa>
1c00eda6:	06600d93          	li	s11,102
1c00edaa:	00d56733          	or	a4,a0,a3
1c00edae:	8f51                	or	a4,a4,a2
1c00edb0:	7e070963          	beqz	a4,1c00f5a2 <pos_libc_prf+0xca2>
1c00edb4:	800005b7          	lui	a1,0x80000
1c00edb8:	c0250513          	addi	a0,a0,-1022
1c00edbc:	8dd1                	or	a1,a1,a2
1c00edbe:	26084ae3          	bltz	a6,1c00f832 <pos_libc_prf+0xf32>
1c00edc2:	4852                	lw	a6,20(sp)
1c00edc4:	220808e3          	beqz	a6,1c00f7f4 <pos_libc_prf+0xef4>
1c00edc8:	02b00713          	li	a4,43
1c00edcc:	02e10223          	sb	a4,36(sp)
1c00edd0:	02510e93          	addi	t4,sp,37
1c00edd4:	5779                	li	a4,-2
1c00edd6:	4301                	li	t1,0
1c00edd8:	06e55763          	ble	a4,a0,1c00ee46 <pos_libc_prf+0x546>
1c00eddc:	33333837          	lui	a6,0x33333
1c00ede0:	800008b7          	lui	a7,0x80000
1c00ede4:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c00ede8:	fff8c893          	not	a7,a7
1c00edec:	5e79                	li	t3,-2
1c00edee:	a011                	j	1c00edf2 <pos_libc_prf+0x4f2>
1c00edf0:	853e                	mv	a0,a5
1c00edf2:	01f59613          	slli	a2,a1,0x1f
1c00edf6:	0016d713          	srli	a4,a3,0x1
1c00edfa:	0016f793          	andi	a5,a3,1
1c00edfe:	8f51                	or	a4,a4,a2
1c00ee00:	00e786b3          	add	a3,a5,a4
1c00ee04:	00f6b7b3          	sltu	a5,a3,a5
1c00ee08:	8185                	srli	a1,a1,0x1
1c00ee0a:	95be                	add	a1,a1,a5
1c00ee0c:	00150793          	addi	a5,a0,1
1c00ee10:	feb860e3          	bltu	a6,a1,1c00edf0 <pos_libc_prf+0x4f0>
1c00ee14:	00269613          	slli	a2,a3,0x2
1c00ee18:	01e6df13          	srli	t5,a3,0x1e
1c00ee1c:	00259713          	slli	a4,a1,0x2
1c00ee20:	96b2                	add	a3,a3,a2
1c00ee22:	00ef6733          	or	a4,t5,a4
1c00ee26:	95ba                	add	a1,a1,a4
1c00ee28:	00c6b633          	sltu	a2,a3,a2
1c00ee2c:	95b2                	add	a1,a1,a2
1c00ee2e:	01f6d713          	srli	a4,a3,0x1f
1c00ee32:	0509                	addi	a0,a0,2
1c00ee34:	137d                	addi	t1,t1,-1
1c00ee36:	01159663          	bne	a1,a7,1c00ee42 <pos_libc_prf+0x542>
1c00ee3a:	0686                	slli	a3,a3,0x1
1c00ee3c:	ffe76593          	ori	a1,a4,-2
1c00ee40:	853e                	mv	a0,a5
1c00ee42:	fbc548e3          	blt	a0,t3,1c00edf2 <pos_libc_prf+0x4f2>
1c00ee46:	06a05563          	blez	a0,1c00eeb0 <pos_libc_prf+0x5b0>
1c00ee4a:	800008b7          	lui	a7,0x80000
1c00ee4e:	4e15                	li	t3,5
1c00ee50:	fff8c893          	not	a7,a7
1c00ee54:	00268613          	addi	a2,a3,2
1c00ee58:	00d636b3          	sltu	a3,a2,a3
1c00ee5c:	95b6                	add	a1,a1,a3
1c00ee5e:	03c5d7b3          	divu	a5,a1,t3
1c00ee62:	00279713          	slli	a4,a5,0x2
1c00ee66:	973e                	add	a4,a4,a5
1c00ee68:	8d99                	sub	a1,a1,a4
1c00ee6a:	01d59713          	slli	a4,a1,0x1d
1c00ee6e:	00365593          	srli	a1,a2,0x3
1c00ee72:	8dd9                	or	a1,a1,a4
1c00ee74:	03c5d5b3          	divu	a1,a1,t3
1c00ee78:	00359693          	slli	a3,a1,0x3
1c00ee7c:	00559713          	slli	a4,a1,0x5
1c00ee80:	9736                	add	a4,a4,a3
1c00ee82:	40e60733          	sub	a4,a2,a4
1c00ee86:	03c75733          	divu	a4,a4,t3
1c00ee8a:	81f5                	srli	a1,a1,0x1d
1c00ee8c:	96ba                	add	a3,a3,a4
1c00ee8e:	97ae                	add	a5,a5,a1
1c00ee90:	00e6b733          	sltu	a4,a3,a4
1c00ee94:	00f705b3          	add	a1,a4,a5
1c00ee98:	157d                	addi	a0,a0,-1
1c00ee9a:	0305                	addi	t1,t1,1
1c00ee9c:	01f6d793          	srli	a5,a3,0x1f
1c00eea0:	0586                	slli	a1,a1,0x1
1c00eea2:	8ddd                	or	a1,a1,a5
1c00eea4:	0686                	slli	a3,a3,0x1
1c00eea6:	157d                	addi	a0,a0,-1
1c00eea8:	feb8fae3          	bleu	a1,a7,1c00ee9c <pos_libc_prf+0x59c>
1c00eeac:	faa044e3          	bgtz	a0,1c00ee54 <pos_libc_prf+0x554>
1c00eeb0:	4611                	li	a2,4
1c00eeb2:	01f59713          	slli	a4,a1,0x1f
1c00eeb6:	0016d793          	srli	a5,a3,0x1
1c00eeba:	8fd9                	or	a5,a5,a4
1c00eebc:	8a85                	andi	a3,a3,1
1c00eebe:	00f688b3          	add	a7,a3,a5
1c00eec2:	8185                	srli	a1,a1,0x1
1c00eec4:	00d8b6b3          	sltu	a3,a7,a3
1c00eec8:	00b68733          	add	a4,a3,a1
1c00eecc:	0505                	addi	a0,a0,1
1c00eece:	86c6                	mv	a3,a7
1c00eed0:	85ba                	mv	a1,a4
1c00eed2:	fec510e3          	bne	a0,a2,1c00eeb2 <pos_libc_prf+0x5b2>
1c00eed6:	06700693          	li	a3,103
1c00eeda:	040a48e3          	bltz	s4,1c00f72a <pos_libc_prf+0xe2a>
1c00eede:	70dd8b63          	beq	s11,a3,1c00f5f4 <pos_libc_prf+0xcf4>
1c00eee2:	04700693          	li	a3,71
1c00eee6:	70dd8763          	beq	s11,a3,1c00f5f4 <pos_libc_prf+0xcf4>
1c00eeea:	06600693          	li	a3,102
1c00eeee:	08dd89e3          	beq	s11,a3,1c00f780 <pos_libc_prf+0xe80>
1c00eef2:	001a0e13          	addi	t3,s4,1
1c00eef6:	46c1                	li	a3,16
1c00eef8:	01c6d363          	ble	t3,a3,1c00eefe <pos_libc_prf+0x5fe>
1c00eefc:	4e41                	li	t3,16
1c00eefe:	1e7d                	addi	t3,t3,-1
1c00ef00:	4f81                	li	t6,0
1c00ef02:	4681                	li	a3,0
1c00ef04:	08000637          	lui	a2,0x8000
1c00ef08:	4f15                	li	t5,5
1c00ef0a:	52fd                	li	t0,-1
1c00ef0c:	00268593          	addi	a1,a3,2
1c00ef10:	00d5b7b3          	sltu	a5,a1,a3
1c00ef14:	97b2                	add	a5,a5,a2
1c00ef16:	03e7d633          	divu	a2,a5,t5
1c00ef1a:	00261693          	slli	a3,a2,0x2
1c00ef1e:	96b2                	add	a3,a3,a2
1c00ef20:	8f95                	sub	a5,a5,a3
1c00ef22:	07f6                	slli	a5,a5,0x1d
1c00ef24:	0035d513          	srli	a0,a1,0x3
1c00ef28:	8d5d                	or	a0,a0,a5
1c00ef2a:	03e55533          	divu	a0,a0,t5
1c00ef2e:	00351693          	slli	a3,a0,0x3
1c00ef32:	00551793          	slli	a5,a0,0x5
1c00ef36:	97b6                	add	a5,a5,a3
1c00ef38:	40f587b3          	sub	a5,a1,a5
1c00ef3c:	03e7d7b3          	divu	a5,a5,t5
1c00ef40:	8175                	srli	a0,a0,0x1d
1c00ef42:	96be                	add	a3,a3,a5
1c00ef44:	00f6b7b3          	sltu	a5,a3,a5
1c00ef48:	962a                	add	a2,a2,a0
1c00ef4a:	963e                	add	a2,a2,a5
1c00ef4c:	01f61513          	slli	a0,a2,0x1f
1c00ef50:	0016d793          	srli	a5,a3,0x1
1c00ef54:	0016f593          	andi	a1,a3,1
1c00ef58:	8fc9                	or	a5,a5,a0
1c00ef5a:	00f586b3          	add	a3,a1,a5
1c00ef5e:	8205                	srli	a2,a2,0x1
1c00ef60:	00b6b7b3          	sltu	a5,a3,a1
1c00ef64:	1e7d                	addi	t3,t3,-1
1c00ef66:	963e                	add	a2,a2,a5
1c00ef68:	fa5e12e3          	bne	t3,t0,1c00ef0c <pos_libc_prf+0x60c>
1c00ef6c:	96c6                	add	a3,a3,a7
1c00ef6e:	963a                	add	a2,a2,a4
1c00ef70:	0116b8b3          	sltu	a7,a3,a7
1c00ef74:	9646                	add	a2,a2,a7
1c00ef76:	f00005b7          	lui	a1,0xf0000
1c00ef7a:	8df1                	and	a1,a1,a2
1c00ef7c:	8736                	mv	a4,a3
1c00ef7e:	cdb9                	beqz	a1,1c00efdc <pos_libc_prf+0x6dc>
1c00ef80:	0689                	addi	a3,a3,2
1c00ef82:	00e6b733          	sltu	a4,a3,a4
1c00ef86:	963a                	add	a2,a2,a4
1c00ef88:	4815                	li	a6,5
1c00ef8a:	03065533          	divu	a0,a2,a6
1c00ef8e:	00251713          	slli	a4,a0,0x2
1c00ef92:	972a                	add	a4,a4,a0
1c00ef94:	8e19                	sub	a2,a2,a4
1c00ef96:	01d61713          	slli	a4,a2,0x1d
1c00ef9a:	0036d593          	srli	a1,a3,0x3
1c00ef9e:	8dd9                	or	a1,a1,a4
1c00efa0:	0305d5b3          	divu	a1,a1,a6
1c00efa4:	00359613          	slli	a2,a1,0x3
1c00efa8:	00559713          	slli	a4,a1,0x5
1c00efac:	9732                	add	a4,a4,a2
1c00efae:	40e68733          	sub	a4,a3,a4
1c00efb2:	03075733          	divu	a4,a4,a6
1c00efb6:	81f5                	srli	a1,a1,0x1d
1c00efb8:	963a                	add	a2,a2,a4
1c00efba:	00e63733          	sltu	a4,a2,a4
1c00efbe:	95aa                	add	a1,a1,a0
1c00efc0:	00b706b3          	add	a3,a4,a1
1c00efc4:	01f69593          	slli	a1,a3,0x1f
1c00efc8:	00165713          	srli	a4,a2,0x1
1c00efcc:	8f4d                	or	a4,a4,a1
1c00efce:	8a05                	andi	a2,a2,1
1c00efd0:	9732                	add	a4,a4,a2
1c00efd2:	8285                	srli	a3,a3,0x1
1c00efd4:	00c73633          	sltu	a2,a4,a2
1c00efd8:	9636                	add	a2,a2,a3
1c00efda:	0305                	addi	t1,t1,1
1c00efdc:	001e8993          	addi	s3,t4,1
1c00efe0:	06600693          	li	a3,102
1c00efe4:	85ce                	mv	a1,s3
1c00efe6:	6add8663          	beq	s11,a3,1c00f692 <pos_libc_prf+0xd92>
1c00efea:	00271693          	slli	a3,a4,0x2
1c00efee:	01e75593          	srli	a1,a4,0x1e
1c00eff2:	00261513          	slli	a0,a2,0x2
1c00eff6:	9736                	add	a4,a4,a3
1c00eff8:	8d4d                	or	a0,a0,a1
1c00effa:	962a                	add	a2,a2,a0
1c00effc:	00d735b3          	sltu	a1,a4,a3
1c00f000:	95b2                	add	a1,a1,a2
1c00f002:	01f75693          	srli	a3,a4,0x1f
1c00f006:	0586                	slli	a1,a1,0x1
1c00f008:	8dd5                	or	a1,a1,a3
1c00f00a:	01c5d693          	srli	a3,a1,0x1c
1c00f00e:	03068613          	addi	a2,a3,48
1c00f012:	00d036b3          	snez	a3,a3
1c00f016:	10000537          	lui	a0,0x10000
1c00f01a:	40d30333          	sub	t1,t1,a3
1c00f01e:	46b2                	lw	a3,12(sp)
1c00f020:	157d                	addi	a0,a0,-1
1c00f022:	00ce8023          	sb	a2,0(t4)
1c00f026:	0706                	slli	a4,a4,0x1
1c00f028:	8de9                	and	a1,a1,a0
1c00f02a:	64068b63          	beqz	a3,1c00f680 <pos_libc_prf+0xd80>
1c00f02e:	02e00693          	li	a3,46
1c00f032:	00de80a3          	sb	a3,1(t4)
1c00f036:	002e8513          	addi	a0,t4,2
1c00f03a:	020a00e3          	beqz	s4,1c00f85a <pos_libc_prf+0xf5a>
1c00f03e:	014509b3          	add	s3,a0,s4
1c00f042:	48bd                	li	a7,15
1c00f044:	03000e13          	li	t3,48
1c00f048:	00271793          	slli	a5,a4,0x2
1c00f04c:	01e75813          	srli	a6,a4,0x1e
1c00f050:	00259693          	slli	a3,a1,0x2
1c00f054:	00e78633          	add	a2,a5,a4
1c00f058:	00d866b3          	or	a3,a6,a3
1c00f05c:	96ae                	add	a3,a3,a1
1c00f05e:	00f637b3          	sltu	a5,a2,a5
1c00f062:	97b6                	add	a5,a5,a3
1c00f064:	0786                	slli	a5,a5,0x1
1c00f066:	01f65693          	srli	a3,a2,0x1f
1c00f06a:	8fd5                	or	a5,a5,a3
1c00f06c:	01c7d693          	srli	a3,a5,0x1c
1c00f070:	03068693          	addi	a3,a3,48
1c00f074:	0505                	addi	a0,a0,1
1c00f076:	3b105663          	blez	a7,1c00f422 <pos_libc_prf+0xb22>
1c00f07a:	10000837          	lui	a6,0x10000
1c00f07e:	187d                	addi	a6,a6,-1
1c00f080:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c00f084:	18fd                	addi	a7,a7,-1
1c00f086:	00161713          	slli	a4,a2,0x1
1c00f08a:	0107f5b3          	and	a1,a5,a6
1c00f08e:	faa99de3          	bne	s3,a0,1c00f048 <pos_libc_prf+0x748>
1c00f092:	0c0f9263          	bnez	t6,1c00f156 <pos_libc_prf+0x856>
1c00f096:	fdfdf713          	andi	a4,s11,-33
1c00f09a:	04500693          	li	a3,69
1c00f09e:	02d71963          	bne	a4,a3,1c00f0d0 <pos_libc_prf+0x7d0>
1c00f0a2:	87ee                	mv	a5,s11
1c00f0a4:	00f98023          	sb	a5,0(s3)
1c00f0a8:	6a034763          	bltz	t1,1c00f756 <pos_libc_prf+0xe56>
1c00f0ac:	02b00793          	li	a5,43
1c00f0b0:	00f980a3          	sb	a5,1(s3)
1c00f0b4:	47a9                	li	a5,10
1c00f0b6:	02f34733          	div	a4,t1,a5
1c00f0ba:	02f367b3          	rem	a5,t1,a5
1c00f0be:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c00f0c2:	03078793          	addi	a5,a5,48
1c00f0c6:	00e98123          	sb	a4,2(s3)
1c00f0ca:	00f981a3          	sb	a5,3(s3)
1c00f0ce:	0991                	addi	s3,s3,4
1c00f0d0:	00098023          	sb	zero,0(s3)
1c00f0d4:	419989b3          	sub	s3,s3,s9
1c00f0d8:	48d2                	lw	a7,20(sp)
1c00f0da:	4662                	lw	a2,24(sp)
1c00f0dc:	00c8e8b3          	or	a7,a7,a2
1c00f0e0:	c646                	sw	a7,12(sp)
1c00f0e2:	34089d63          	bnez	a7,1c00f43c <pos_libc_prf+0xb3c>
1c00f0e6:	02414703          	lbu	a4,36(sp)
1c00f0ea:	02d00793          	li	a5,45
1c00f0ee:	34f70763          	beq	a4,a5,1c00f43c <pos_libc_prf+0xb3c>
1c00f0f2:	0c800793          	li	a5,200
1c00f0f6:	ab37cbe3          	blt	a5,s3,1c00ebac <pos_libc_prf+0x2ac>
1c00f0fa:	9b29c2e3          	blt	s3,s2,1c00ea9e <pos_libc_prf+0x19e>
1c00f0fe:	b461                	j	1c00eb86 <pos_libc_prf+0x286>
1c00f100:	0585                	addi	a1,a1,1
1c00f102:	00271793          	slli	a5,a4,0x2
1c00f106:	01e75e13          	srli	t3,a4,0x1e
1c00f10a:	00261693          	slli	a3,a2,0x2
1c00f10e:	00e788b3          	add	a7,a5,a4
1c00f112:	00de66b3          	or	a3,t3,a3
1c00f116:	96b2                	add	a3,a3,a2
1c00f118:	00f8b7b3          	sltu	a5,a7,a5
1c00f11c:	97b6                	add	a5,a5,a3
1c00f11e:	0786                	slli	a5,a5,0x1
1c00f120:	01f8d693          	srli	a3,a7,0x1f
1c00f124:	8fd5                	or	a5,a5,a3
1c00f126:	01c7de13          	srli	t3,a5,0x1c
1c00f12a:	03000693          	li	a3,48
1c00f12e:	00a05c63          	blez	a0,1c00f146 <pos_libc_prf+0x846>
1c00f132:	00189713          	slli	a4,a7,0x1
1c00f136:	100008b7          	lui	a7,0x10000
1c00f13a:	18fd                	addi	a7,a7,-1
1c00f13c:	030e0693          	addi	a3,t3,48
1c00f140:	157d                	addi	a0,a0,-1
1c00f142:	0117f633          	and	a2,a5,a7
1c00f146:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c00f14a:	fab99be3          	bne	s3,a1,1c00f100 <pos_libc_prf+0x800>
1c00f14e:	014809b3          	add	s3,a6,s4
1c00f152:	f60f8fe3          	beqz	t6,1c00f0d0 <pos_libc_prf+0x7d0>
1c00f156:	03000613          	li	a2,48
1c00f15a:	a011                	j	1c00f15e <pos_libc_prf+0x85e>
1c00f15c:	89ba                	mv	s3,a4
1c00f15e:	fff9c683          	lbu	a3,-1(s3)
1c00f162:	fff98713          	addi	a4,s3,-1
1c00f166:	fec68be3          	beq	a3,a2,1c00f15c <pos_libc_prf+0x85c>
1c00f16a:	02e00613          	li	a2,46
1c00f16e:	f2c694e3          	bne	a3,a2,1c00f096 <pos_libc_prf+0x796>
1c00f172:	89ba                	mv	s3,a4
1c00f174:	b70d                	j	1c00f096 <pos_libc_prf+0x796>
1c00f176:	06300713          	li	a4,99
1c00f17a:	16ed8863          	beq	s11,a4,1c00f2ea <pos_libc_prf+0x9ea>
1c00f17e:	0db74363          	blt	a4,s11,1c00f244 <pos_libc_prf+0x944>
1c00f182:	05800713          	li	a4,88
1c00f186:	28ed9763          	bne	s11,a4,1c00f414 <pos_libc_prf+0xb14>
1c00f18a:	48b2                	lw	a7,12(sp)
1c00f18c:	004c0813          	addi	a6,s8,4
1c00f190:	000c2583          	lw	a1,0(s8)
1c00f194:	3c088a63          	beqz	a7,1c00f568 <pos_libc_prf+0xc68>
1c00f198:	7761                	lui	a4,0xffff8
1c00f19a:	83074713          	xori	a4,a4,-2000
1c00f19e:	02e11223          	sh	a4,36(sp)
1c00f1a2:	4889                	li	a7,2
1c00f1a4:	02610693          	addi	a3,sp,38
1c00f1a8:	8736                	mv	a4,a3
1c00f1aa:	4e25                	li	t3,9
1c00f1ac:	00f5f613          	andi	a2,a1,15
1c00f1b0:	0ff67793          	andi	a5,a2,255
1c00f1b4:	03078513          	addi	a0,a5,48
1c00f1b8:	8191                	srli	a1,a1,0x4
1c00f1ba:	05778793          	addi	a5,a5,87
1c00f1be:	0705                	addi	a4,a4,1
1c00f1c0:	06ce6a63          	bltu	t3,a2,1c00f234 <pos_libc_prf+0x934>
1c00f1c4:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00f1c8:	f1f5                	bnez	a1,1c00f1ac <pos_libc_prf+0x8ac>
1c00f1ca:	40d709b3          	sub	s3,a4,a3
1c00f1ce:	0149db63          	ble	s4,s3,1c00f1e4 <pos_libc_prf+0x8e4>
1c00f1d2:	03000613          	li	a2,48
1c00f1d6:	0705                	addi	a4,a4,1
1c00f1d8:	fec70fa3          	sb	a2,-1(a4)
1c00f1dc:	40d709b3          	sub	s3,a4,a3
1c00f1e0:	ff49cbe3          	blt	s3,s4,1c00f1d6 <pos_libc_prf+0x8d6>
1c00f1e4:	00070023          	sb	zero,0(a4)
1c00f1e8:	177d                	addi	a4,a4,-1
1c00f1ea:	00e6fe63          	bleu	a4,a3,1c00f206 <pos_libc_prf+0x906>
1c00f1ee:	0006c603          	lbu	a2,0(a3)
1c00f1f2:	00074783          	lbu	a5,0(a4)
1c00f1f6:	00c70023          	sb	a2,0(a4)
1c00f1fa:	00f68023          	sb	a5,0(a3)
1c00f1fe:	177d                	addi	a4,a4,-1
1c00f200:	0685                	addi	a3,a3,1
1c00f202:	fee6e6e3          	bltu	a3,a4,1c00f1ee <pos_libc_prf+0x8ee>
1c00f206:	05800713          	li	a4,88
1c00f20a:	36ed8263          	beq	s11,a4,1c00f56e <pos_libc_prf+0xc6e>
1c00f20e:	46b2                	lw	a3,12(sp)
1c00f210:	99c6                	add	s3,s3,a7
1c00f212:	c299                	beqz	a3,1c00f218 <pos_libc_prf+0x918>
1c00f214:	4709                	li	a4,2
1c00f216:	c63a                	sw	a4,12(sp)
1c00f218:	57fd                	li	a5,-1
1c00f21a:	3afa0263          	beq	s4,a5,1c00f5be <pos_libc_prf+0xcbe>
1c00f21e:	0c800793          	li	a5,200
1c00f222:	9937c5e3          	blt	a5,s3,1c00ebac <pos_libc_prf+0x2ac>
1c00f226:	02000793          	li	a5,32
1c00f22a:	c83e                	sw	a5,16(sp)
1c00f22c:	8c42                	mv	s8,a6
1c00f22e:	8729c8e3          	blt	s3,s2,1c00ea9e <pos_libc_prf+0x19e>
1c00f232:	ba91                	j	1c00eb86 <pos_libc_prf+0x286>
1c00f234:	fef70fa3          	sb	a5,-1(a4)
1c00f238:	f9b5                	bnez	a1,1c00f1ac <pos_libc_prf+0x8ac>
1c00f23a:	bf41                	j	1c00f1ca <pos_libc_prf+0x8ca>
1c00f23c:	06900713          	li	a4,105
1c00f240:	1ced9a63          	bne	s11,a4,1c00f414 <pos_libc_prf+0xb14>
1c00f244:	000c2583          	lw	a1,0(s8)
1c00f248:	0c11                	addi	s8,s8,4
1c00f24a:	3805c863          	bltz	a1,1c00f5da <pos_libc_prf+0xcda>
1c00f24e:	48d2                	lw	a7,20(sp)
1c00f250:	872e                	mv	a4,a1
1c00f252:	36089d63          	bnez	a7,1c00f5cc <pos_libc_prf+0xccc>
1c00f256:	4662                	lw	a2,24(sp)
1c00f258:	87e6                	mv	a5,s9
1c00f25a:	c619                	beqz	a2,1c00f268 <pos_libc_prf+0x968>
1c00f25c:	02000793          	li	a5,32
1c00f260:	02f10223          	sb	a5,36(sp)
1c00f264:	02510793          	addi	a5,sp,37
1c00f268:	89be                	mv	s3,a5
1c00f26a:	4629                	li	a2,10
1c00f26c:	02c776b3          	remu	a3,a4,a2
1c00f270:	02c75733          	divu	a4,a4,a2
1c00f274:	0985                	addi	s3,s3,1
1c00f276:	03068693          	addi	a3,a3,48
1c00f27a:	fed98fa3          	sb	a3,-1(s3)
1c00f27e:	f77d                	bnez	a4,1c00f26c <pos_libc_prf+0x96c>
1c00f280:	40f98733          	sub	a4,s3,a5
1c00f284:	01475b63          	ble	s4,a4,1c00f29a <pos_libc_prf+0x99a>
1c00f288:	03000693          	li	a3,48
1c00f28c:	0985                	addi	s3,s3,1
1c00f28e:	fed98fa3          	sb	a3,-1(s3)
1c00f292:	40f98733          	sub	a4,s3,a5
1c00f296:	ff474be3          	blt	a4,s4,1c00f28c <pos_libc_prf+0x98c>
1c00f29a:	00098023          	sb	zero,0(s3)
1c00f29e:	fff98713          	addi	a4,s3,-1
1c00f2a2:	00e7fe63          	bleu	a4,a5,1c00f2be <pos_libc_prf+0x9be>
1c00f2a6:	0007c603          	lbu	a2,0(a5)
1c00f2aa:	00074683          	lbu	a3,0(a4)
1c00f2ae:	00c70023          	sb	a2,0(a4)
1c00f2b2:	00d78023          	sb	a3,0(a5)
1c00f2b6:	177d                	addi	a4,a4,-1
1c00f2b8:	0785                	addi	a5,a5,1
1c00f2ba:	fee7e6e3          	bltu	a5,a4,1c00f2a6 <pos_libc_prf+0x9a6>
1c00f2be:	46d2                	lw	a3,20(sp)
1c00f2c0:	4762                	lw	a4,24(sp)
1c00f2c2:	419989b3          	sub	s3,s3,s9
1c00f2c6:	8ed9                	or	a3,a3,a4
1c00f2c8:	c636                	sw	a3,12(sp)
1c00f2ca:	e299                	bnez	a3,1c00f2d0 <pos_libc_prf+0x9d0>
1c00f2cc:	81fd                	srli	a1,a1,0x1f
1c00f2ce:	c62e                	sw	a1,12(sp)
1c00f2d0:	57fd                	li	a5,-1
1c00f2d2:	e2fa00e3          	beq	s4,a5,1c00f0f2 <pos_libc_prf+0x7f2>
1c00f2d6:	0c800793          	li	a5,200
1c00f2da:	8d37c9e3          	blt	a5,s3,1c00ebac <pos_libc_prf+0x2ac>
1c00f2de:	02000793          	li	a5,32
1c00f2e2:	c83e                	sw	a5,16(sp)
1c00f2e4:	fb29cd63          	blt	s3,s2,1c00ea9e <pos_libc_prf+0x19e>
1c00f2e8:	b879                	j	1c00eb86 <pos_libc_prf+0x286>
1c00f2ea:	000c2783          	lw	a5,0(s8)
1c00f2ee:	020102a3          	sb	zero,37(sp)
1c00f2f2:	02f10223          	sb	a5,36(sp)
1c00f2f6:	0c11                	addi	s8,s8,4
1c00f2f8:	4985                	li	s3,1
1c00f2fa:	f9eff06f          	j	1c00ea98 <pos_libc_prf+0x198>
1c00f2fe:	000c2703          	lw	a4,0(s8)
1c00f302:	87e6                	mv	a5,s9
1c00f304:	0c11                	addi	s8,s8,4
1c00f306:	4629                	li	a2,10
1c00f308:	02c776b3          	remu	a3,a4,a2
1c00f30c:	02c75733          	divu	a4,a4,a2
1c00f310:	0785                	addi	a5,a5,1
1c00f312:	03068693          	addi	a3,a3,48
1c00f316:	fed78fa3          	sb	a3,-1(a5)
1c00f31a:	f77d                	bnez	a4,1c00f308 <pos_libc_prf+0xa08>
1c00f31c:	419789b3          	sub	s3,a5,s9
1c00f320:	0149db63          	ble	s4,s3,1c00f336 <pos_libc_prf+0xa36>
1c00f324:	03000713          	li	a4,48
1c00f328:	0785                	addi	a5,a5,1
1c00f32a:	fee78fa3          	sb	a4,-1(a5)
1c00f32e:	419789b3          	sub	s3,a5,s9
1c00f332:	ff49cbe3          	blt	s3,s4,1c00f328 <pos_libc_prf+0xa28>
1c00f336:	00078023          	sb	zero,0(a5)
1c00f33a:	17fd                	addi	a5,a5,-1
1c00f33c:	00fcff63          	bleu	a5,s9,1c00f35a <pos_libc_prf+0xa5a>
1c00f340:	8766                	mv	a4,s9
1c00f342:	00074603          	lbu	a2,0(a4)
1c00f346:	0007c683          	lbu	a3,0(a5)
1c00f34a:	00c78023          	sb	a2,0(a5)
1c00f34e:	00d70023          	sb	a3,0(a4)
1c00f352:	17fd                	addi	a5,a5,-1
1c00f354:	0705                	addi	a4,a4,1
1c00f356:	fef766e3          	bltu	a4,a5,1c00f342 <pos_libc_prf+0xa42>
1c00f35a:	57fd                	li	a5,-1
1c00f35c:	0cfa0a63          	beq	s4,a5,1c00f430 <pos_libc_prf+0xb30>
1c00f360:	0c800793          	li	a5,200
1c00f364:	8537c4e3          	blt	a5,s3,1c00ebac <pos_libc_prf+0x2ac>
1c00f368:	02000813          	li	a6,32
1c00f36c:	c602                	sw	zero,12(sp)
1c00f36e:	c842                	sw	a6,16(sp)
1c00f370:	ba45                	j	1c00ed20 <pos_libc_prf+0x420>
1c00f372:	77e1                	lui	a5,0xffff8
1c00f374:	8307c793          	xori	a5,a5,-2000
1c00f378:	02610713          	addi	a4,sp,38
1c00f37c:	000c2603          	lw	a2,0(s8)
1c00f380:	02f11223          	sh	a5,36(sp)
1c00f384:	0c11                	addi	s8,s8,4
1c00f386:	87ba                	mv	a5,a4
1c00f388:	4825                	li	a6,9
1c00f38a:	00f67593          	andi	a1,a2,15
1c00f38e:	0ff5f693          	andi	a3,a1,255
1c00f392:	03068513          	addi	a0,a3,48
1c00f396:	8211                	srli	a2,a2,0x4
1c00f398:	05768693          	addi	a3,a3,87
1c00f39c:	0785                	addi	a5,a5,1
1c00f39e:	06b86163          	bltu	a6,a1,1c00f400 <pos_libc_prf+0xb00>
1c00f3a2:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c00f3a6:	f275                	bnez	a2,1c00f38a <pos_libc_prf+0xa8a>
1c00f3a8:	40e789b3          	sub	s3,a5,a4
1c00f3ac:	469d                	li	a3,7
1c00f3ae:	0136cb63          	blt	a3,s3,1c00f3c4 <pos_libc_prf+0xac4>
1c00f3b2:	03000613          	li	a2,48
1c00f3b6:	0785                	addi	a5,a5,1
1c00f3b8:	fec78fa3          	sb	a2,-1(a5)
1c00f3bc:	40e789b3          	sub	s3,a5,a4
1c00f3c0:	ff36dbe3          	ble	s3,a3,1c00f3b6 <pos_libc_prf+0xab6>
1c00f3c4:	00078023          	sb	zero,0(a5)
1c00f3c8:	17fd                	addi	a5,a5,-1
1c00f3ca:	00f77e63          	bleu	a5,a4,1c00f3e6 <pos_libc_prf+0xae6>
1c00f3ce:	00074603          	lbu	a2,0(a4)
1c00f3d2:	0007c683          	lbu	a3,0(a5)
1c00f3d6:	00c78023          	sb	a2,0(a5)
1c00f3da:	00d70023          	sb	a3,0(a4)
1c00f3de:	17fd                	addi	a5,a5,-1
1c00f3e0:	0705                	addi	a4,a4,1
1c00f3e2:	fef766e3          	bltu	a4,a5,1c00f3ce <pos_libc_prf+0xace>
1c00f3e6:	57fd                	li	a5,-1
1c00f3e8:	0989                	addi	s3,s3,2
1c00f3ea:	04fa0363          	beq	s4,a5,1c00f430 <pos_libc_prf+0xb30>
1c00f3ee:	0c800793          	li	a5,200
1c00f3f2:	fb37cd63          	blt	a5,s3,1c00ebac <pos_libc_prf+0x2ac>
1c00f3f6:	02000893          	li	a7,32
1c00f3fa:	c602                	sw	zero,12(sp)
1c00f3fc:	c846                	sw	a7,16(sp)
1c00f3fe:	b20d                	j	1c00ed20 <pos_libc_prf+0x420>
1c00f400:	fed78fa3          	sb	a3,-1(a5)
1c00f404:	f259                	bnez	a2,1c00f38a <pos_libc_prf+0xa8a>
1c00f406:	b74d                	j	1c00f3a8 <pos_libc_prf+0xaa8>
1c00f408:	000c2783          	lw	a5,0(s8)
1c00f40c:	0c11                	addi	s8,s8,4
1c00f40e:	c380                	sw	s0,0(a5)
1c00f410:	d36ff06f          	j	1c00e946 <pos_libc_prf+0x46>
1c00f414:	0c800713          	li	a4,200
1c00f418:	d3b75763          	ble	s11,a4,1c00e946 <pos_libc_prf+0x46>
1c00f41c:	547d                	li	s0,-1
1c00f41e:	d4cff06f          	j	1c00e96a <pos_libc_prf+0x6a>
1c00f422:	ffc50fa3          	sb	t3,-1(a0)
1c00f426:	c2a991e3          	bne	s3,a0,1c00f048 <pos_libc_prf+0x748>
1c00f42a:	c60f86e3          	beqz	t6,1c00f096 <pos_libc_prf+0x796>
1c00f42e:	b325                	j	1c00f156 <pos_libc_prf+0x856>
1c00f430:	0c800793          	li	a5,200
1c00f434:	f737cc63          	blt	a5,s3,1c00ebac <pos_libc_prf+0x2ac>
1c00f438:	c602                	sw	zero,12(sp)
1c00f43a:	b0dd                	j	1c00ed20 <pos_libc_prf+0x420>
1c00f43c:	0c800793          	li	a5,200
1c00f440:	f737c663          	blt	a5,s3,1c00ebac <pos_libc_prf+0x2ac>
1c00f444:	4705                	li	a4,1
1c00f446:	c63a                	sw	a4,12(sp)
1c00f448:	b8e1                	j	1c00ed20 <pos_libc_prf+0x420>
1c00f44a:	41390a33          	sub	s4,s2,s3
1c00f44e:	00198613          	addi	a2,s3,1
1c00f452:	85e6                	mv	a1,s9
1c00f454:	014c8533          	add	a0,s9,s4
1c00f458:	a4aff0ef          	jal	ra,1c00e6a2 <memmove>
1c00f45c:	46c2                	lw	a3,16(sp)
1c00f45e:	02000793          	li	a5,32
1c00f462:	30f68163          	beq	a3,a5,1c00f764 <pos_libc_prf+0xe64>
1c00f466:	4732                	lw	a4,12(sp)
1c00f468:	89ca                	mv	s3,s2
1c00f46a:	9a3a                	add	s4,s4,a4
1c00f46c:	f1475d63          	ble	s4,a4,1c00eb86 <pos_libc_prf+0x286>
1c00f470:	4832                	lw	a6,12(sp)
1c00f472:	4715                	li	a4,5
1c00f474:	010c87b3          	add	a5,s9,a6
1c00f478:	40f007b3          	neg	a5,a5
1c00f47c:	8b8d                	andi	a5,a5,3
1c00f47e:	00378693          	addi	a3,a5,3
1c00f482:	410a05b3          	sub	a1,s4,a6
1c00f486:	00e6f363          	bleu	a4,a3,1c00f48c <pos_libc_prf+0xb8c>
1c00f48a:	4695                	li	a3,5
1c00f48c:	48b2                	lw	a7,12(sp)
1c00f48e:	fffa0713          	addi	a4,s4,-1
1c00f492:	41170733          	sub	a4,a4,a7
1c00f496:	06d76b63          	bltu	a4,a3,1c00f50c <pos_libc_prf+0xc0c>
1c00f49a:	86c6                	mv	a3,a7
1c00f49c:	cb9d                	beqz	a5,1c00f4d2 <pos_libc_prf+0xbd2>
1c00f49e:	46c2                	lw	a3,16(sp)
1c00f4a0:	1988                	addi	a0,sp,240
1c00f4a2:	01150733          	add	a4,a0,a7
1c00f4a6:	f2d70a23          	sb	a3,-204(a4)
1c00f4aa:	4705                	li	a4,1
1c00f4ac:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c00f4b0:	02e78163          	beq	a5,a4,1c00f4d2 <pos_libc_prf+0xbd2>
1c00f4b4:	4742                	lw	a4,16(sp)
1c00f4b6:	96aa                	add	a3,a3,a0
1c00f4b8:	f2e68a23          	sb	a4,-204(a3)
1c00f4bc:	470d                	li	a4,3
1c00f4be:	00288693          	addi	a3,a7,2
1c00f4c2:	00e79863          	bne	a5,a4,1c00f4d2 <pos_libc_prf+0xbd2>
1c00f4c6:	4842                	lw	a6,16(sp)
1c00f4c8:	96aa                	add	a3,a3,a0
1c00f4ca:	f3068a23          	sb	a6,-204(a3)
1c00f4ce:	00388693          	addi	a3,a7,3
1c00f4d2:	48c2                	lw	a7,16(sp)
1c00f4d4:	4832                	lw	a6,12(sp)
1c00f4d6:	00889713          	slli	a4,a7,0x8
1c00f4da:	01089513          	slli	a0,a7,0x10
1c00f4de:	00e8e733          	or	a4,a7,a4
1c00f4e2:	8d9d                	sub	a1,a1,a5
1c00f4e4:	01889613          	slli	a2,a7,0x18
1c00f4e8:	8f49                	or	a4,a4,a0
1c00f4ea:	97c2                	add	a5,a5,a6
1c00f4ec:	8f51                	or	a4,a4,a2
1c00f4ee:	0025d513          	srli	a0,a1,0x2
1c00f4f2:	97e6                	add	a5,a5,s9
1c00f4f4:	4601                	li	a2,0
1c00f4f6:	c398                	sw	a4,0(a5)
1c00f4f8:	0605                	addi	a2,a2,1
1c00f4fa:	0791                	addi	a5,a5,4
1c00f4fc:	fea66de3          	bltu	a2,a0,1c00f4f6 <pos_libc_prf+0xbf6>
1c00f500:	ffc5f793          	andi	a5,a1,-4
1c00f504:	96be                	add	a3,a3,a5
1c00f506:	c636                	sw	a3,12(sp)
1c00f508:	e6b78e63          	beq	a5,a1,1c00eb84 <pos_libc_prf+0x284>
1c00f50c:	46b2                	lw	a3,12(sp)
1c00f50e:	0f010893          	addi	a7,sp,240
1c00f512:	4742                	lw	a4,16(sp)
1c00f514:	00d887b3          	add	a5,a7,a3
1c00f518:	f2e78a23          	sb	a4,-204(a5)
1c00f51c:	00168793          	addi	a5,a3,1
1c00f520:	e747d263          	ble	s4,a5,1c00eb84 <pos_libc_prf+0x284>
1c00f524:	97c6                	add	a5,a5,a7
1c00f526:	f2e78a23          	sb	a4,-204(a5)
1c00f52a:	00268793          	addi	a5,a3,2
1c00f52e:	e547db63          	ble	s4,a5,1c00eb84 <pos_libc_prf+0x284>
1c00f532:	97c6                	add	a5,a5,a7
1c00f534:	f2e78a23          	sb	a4,-204(a5)
1c00f538:	00368793          	addi	a5,a3,3
1c00f53c:	e547d463          	ble	s4,a5,1c00eb84 <pos_libc_prf+0x284>
1c00f540:	97c6                	add	a5,a5,a7
1c00f542:	f2e78a23          	sb	a4,-204(a5)
1c00f546:	00468793          	addi	a5,a3,4
1c00f54a:	e347dd63          	ble	s4,a5,1c00eb84 <pos_libc_prf+0x284>
1c00f54e:	97c6                	add	a5,a5,a7
1c00f550:	f2e78a23          	sb	a4,-204(a5)
1c00f554:	00568a93          	addi	s5,a3,5
1c00f558:	e34ad663          	ble	s4,s5,1c00eb84 <pos_libc_prf+0x284>
1c00f55c:	9ac6                	add	s5,s5,a7
1c00f55e:	f2ea8a23          	sb	a4,-204(s5)
1c00f562:	89ca                	mv	s3,s2
1c00f564:	e22ff06f          	j	1c00eb86 <pos_libc_prf+0x286>
1c00f568:	4881                	li	a7,0
1c00f56a:	1054                	addi	a3,sp,36
1c00f56c:	b935                	j	1c00f1a8 <pos_libc_prf+0x8a8>
1c00f56e:	02414783          	lbu	a5,36(sp)
1c00f572:	1058                	addi	a4,sp,36
1c00f574:	46e5                	li	a3,25
1c00f576:	c8078ce3          	beqz	a5,1c00f20e <pos_libc_prf+0x90e>
1c00f57a:	fe078613          	addi	a2,a5,-32
1c00f57e:	f9f78793          	addi	a5,a5,-97
1c00f582:	0ff7f793          	andi	a5,a5,255
1c00f586:	00f6e963          	bltu	a3,a5,1c00f598 <pos_libc_prf+0xc98>
1c00f58a:	00c70023          	sb	a2,0(a4)
1c00f58e:	0705                	addi	a4,a4,1
1c00f590:	00074783          	lbu	a5,0(a4)
1c00f594:	f3fd                	bnez	a5,1c00f57a <pos_libc_prf+0xc7a>
1c00f596:	b9a5                	j	1c00f20e <pos_libc_prf+0x90e>
1c00f598:	0705                	addi	a4,a4,1
1c00f59a:	00074783          	lbu	a5,0(a4)
1c00f59e:	fff1                	bnez	a5,1c00f57a <pos_libc_prf+0xc7a>
1c00f5a0:	b1bd                	j	1c00f20e <pos_libc_prf+0x90e>
1c00f5a2:	47d2                	lw	a5,20(sp)
1c00f5a4:	20078263          	beqz	a5,1c00f7a8 <pos_libc_prf+0xea8>
1c00f5a8:	02b00713          	li	a4,43
1c00f5ac:	02e10223          	sb	a4,36(sp)
1c00f5b0:	02510e93          	addi	t4,sp,37
1c00f5b4:	4301                	li	t1,0
1c00f5b6:	4501                	li	a0,0
1c00f5b8:	4681                	li	a3,0
1c00f5ba:	4581                	li	a1,0
1c00f5bc:	b8d5                	j	1c00eeb0 <pos_libc_prf+0x5b0>
1c00f5be:	0c800793          	li	a5,200
1c00f5c2:	df37c563          	blt	a5,s3,1c00ebac <pos_libc_prf+0x2ac>
1c00f5c6:	8c42                	mv	s8,a6
1c00f5c8:	f58ff06f          	j	1c00ed20 <pos_libc_prf+0x420>
1c00f5cc:	02b00793          	li	a5,43
1c00f5d0:	02f10223          	sb	a5,36(sp)
1c00f5d4:	02510793          	addi	a5,sp,37
1c00f5d8:	b941                	j	1c00f268 <pos_libc_prf+0x968>
1c00f5da:	02d00793          	li	a5,45
1c00f5de:	02f10223          	sb	a5,36(sp)
1c00f5e2:	800007b7          	lui	a5,0x80000
1c00f5e6:	22f58363          	beq	a1,a5,1c00f80c <pos_libc_prf+0xf0c>
1c00f5ea:	40b00733          	neg	a4,a1
1c00f5ee:	02510793          	addi	a5,sp,37
1c00f5f2:	b99d                	j	1c00f268 <pos_libc_prf+0x968>
1c00f5f4:	47b2                	lw	a5,12(sp)
1c00f5f6:	4f81                	li	t6,0
1c00f5f8:	e399                	bnez	a5,1c00f5fe <pos_libc_prf+0xcfe>
1c00f5fa:	01403fb3          	snez	t6,s4
1c00f5fe:	56f5                	li	a3,-3
1c00f600:	001a0e13          	addi	t3,s4,1
1c00f604:	00d34463          	blt	t1,a3,1c00f60c <pos_libc_prf+0xd0c>
1c00f608:	166e5d63          	ble	t1,t3,1c00f782 <pos_libc_prf+0xe82>
1c00f60c:	46c1                	li	a3,16
1c00f60e:	01c6d363          	ble	t3,a3,1c00f614 <pos_libc_prf+0xd14>
1c00f612:	4e41                	li	t3,16
1c00f614:	06700693          	li	a3,103
1c00f618:	1e7d                	addi	t3,t3,-1
1c00f61a:	1add8963          	beq	s11,a3,1c00f7cc <pos_libc_prf+0xecc>
1c00f61e:	04500d93          	li	s11,69
1c00f622:	b0c5                	j	1c00ef02 <pos_libc_prf+0x602>
1c00f624:	020102a3          	sb	zero,37(sp)
1c00f628:	57fd                	li	a5,-1
1c00f62a:	89ba                	mv	s3,a4
1c00f62c:	8c2a                	mv	s8,a0
1c00f62e:	c6fa0563          	beq	s4,a5,1c00ea98 <pos_libc_prf+0x198>
1c00f632:	02000813          	li	a6,32
1c00f636:	c842                	sw	a6,16(sp)
1c00f638:	c60ff06f          	j	1c00ea98 <pos_libc_prf+0x198>
1c00f63c:	89b6                	mv	s3,a3
1c00f63e:	bdeff06f          	j	1c00ea1c <pos_libc_prf+0x11c>
1c00f642:	8766                	mv	a4,s9
1c00f644:	1c084c63          	bltz	a6,1c00f81c <pos_libc_prf+0xf1c>
1c00f648:	8e55                	or	a2,a2,a3
1c00f64a:	fbfd8793          	addi	a5,s11,-65
1c00f64e:	00370993          	addi	s3,a4,3
1c00f652:	46e5                	li	a3,25
1c00f654:	10061a63          	bnez	a2,1c00f768 <pos_libc_prf+0xe68>
1c00f658:	16f6ee63          	bltu	a3,a5,1c00f7d4 <pos_libc_prf+0xed4>
1c00f65c:	6795                	lui	a5,0x5
1c00f65e:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c00f662:	00f71023          	sh	a5,0(a4)
1c00f666:	04600793          	li	a5,70
1c00f66a:	00f70123          	sb	a5,2(a4)
1c00f66e:	000701a3          	sb	zero,3(a4)
1c00f672:	419989b3          	sub	s3,s3,s9
1c00f676:	b48d                	j	1c00f0d8 <pos_libc_prf+0x7d8>
1c00f678:	85e6                	mv	a1,s9
1c00f67a:	8766                	mv	a4,s9
1c00f67c:	e38ff06f          	j	1c00ecb4 <pos_libc_prf+0x3b4>
1c00f680:	a00a09e3          	beqz	s4,1c00f092 <pos_libc_prf+0x792>
1c00f684:	02e00693          	li	a3,46
1c00f688:	002e8513          	addi	a0,t4,2
1c00f68c:	00de80a3          	sb	a3,1(t4)
1c00f690:	b27d                	j	1c00f03e <pos_libc_prf+0x73e>
1c00f692:	14605b63          	blez	t1,1c00f7e8 <pos_libc_prf+0xee8>
1c00f696:	006e89b3          	add	s3,t4,t1
1c00f69a:	4541                	li	a0,16
1c00f69c:	03000893          	li	a7,48
1c00f6a0:	00271793          	slli	a5,a4,0x2
1c00f6a4:	01e75313          	srli	t1,a4,0x1e
1c00f6a8:	00261693          	slli	a3,a2,0x2
1c00f6ac:	00e78833          	add	a6,a5,a4
1c00f6b0:	00d366b3          	or	a3,t1,a3
1c00f6b4:	96b2                	add	a3,a3,a2
1c00f6b6:	00f837b3          	sltu	a5,a6,a5
1c00f6ba:	97b6                	add	a5,a5,a3
1c00f6bc:	0786                	slli	a5,a5,0x1
1c00f6be:	01f85693          	srli	a3,a6,0x1f
1c00f6c2:	8fd5                	or	a5,a5,a3
1c00f6c4:	01c7d693          	srli	a3,a5,0x1c
1c00f6c8:	03068693          	addi	a3,a3,48
1c00f6cc:	02a05063          	blez	a0,1c00f6ec <pos_libc_prf+0xdec>
1c00f6d0:	00181713          	slli	a4,a6,0x1
1c00f6d4:	10000837          	lui	a6,0x10000
1c00f6d8:	187d                	addi	a6,a6,-1
1c00f6da:	fed58fa3          	sb	a3,-1(a1)
1c00f6de:	157d                	addi	a0,a0,-1
1c00f6e0:	0107f633          	and	a2,a5,a6
1c00f6e4:	00b98863          	beq	s3,a1,1c00f6f4 <pos_libc_prf+0xdf4>
1c00f6e8:	0585                	addi	a1,a1,1
1c00f6ea:	bf5d                	j	1c00f6a0 <pos_libc_prf+0xda0>
1c00f6ec:	ff158fa3          	sb	a7,-1(a1)
1c00f6f0:	feb99ce3          	bne	s3,a1,1c00f6e8 <pos_libc_prf+0xde8>
1c00f6f4:	4301                	li	t1,0
1c00f6f6:	48b2                	lw	a7,12(sp)
1c00f6f8:	00089463          	bnez	a7,1c00f700 <pos_libc_prf+0xe00>
1c00f6fc:	a40a0be3          	beqz	s4,1c00f152 <pos_libc_prf+0x852>
1c00f700:	00198813          	addi	a6,s3,1
1c00f704:	001a0693          	addi	a3,s4,1
1c00f708:	02e00593          	li	a1,46
1c00f70c:	00b98023          	sb	a1,0(s3)
1c00f710:	99b6                	add	s3,s3,a3
1c00f712:	85c2                	mv	a1,a6
1c00f714:	03000693          	li	a3,48
1c00f718:	a2b98be3          	beq	s3,a1,1c00f14e <pos_libc_prf+0x84e>
1c00f71c:	0585                	addi	a1,a1,1
1c00f71e:	9e0302e3          	beqz	t1,1c00f102 <pos_libc_prf+0x802>
1c00f722:	fed58fa3          	sb	a3,-1(a1)
1c00f726:	0305                	addi	t1,t1,1
1c00f728:	bfc5                	j	1c00f718 <pos_libc_prf+0xe18>
1c00f72a:	4a19                	li	s4,6
1c00f72c:	fadd9b63          	bne	s11,a3,1c00eee2 <pos_libc_prf+0x5e2>
1c00f730:	46b2                	lw	a3,12(sp)
1c00f732:	57f5                	li	a5,-3
1c00f734:	0016cf93          	xori	t6,a3,1
1c00f738:	08f35663          	ble	a5,t1,1c00f7c4 <pos_libc_prf+0xec4>
1c00f73c:	06500d93          	li	s11,101
1c00f740:	4e19                	li	t3,6
1c00f742:	fc0ff06f          	j	1c00ef02 <pos_libc_prf+0x602>
1c00f746:	0c800793          	li	a5,200
1c00f74a:	c737c163          	blt	a5,s3,1c00ebac <pos_libc_prf+0x2ac>
1c00f74e:	8c2a                	mv	s8,a0
1c00f750:	c602                	sw	zero,12(sp)
1c00f752:	dceff06f          	j	1c00ed20 <pos_libc_prf+0x420>
1c00f756:	02d00793          	li	a5,45
1c00f75a:	40600333          	neg	t1,t1
1c00f75e:	00f980a3          	sb	a5,1(s3)
1c00f762:	ba89                	j	1c00f0b4 <pos_libc_prf+0x7b4>
1c00f764:	c602                	sw	zero,12(sp)
1c00f766:	b329                	j	1c00f470 <pos_libc_prf+0xb70>
1c00f768:	0cf6ed63          	bltu	a3,a5,1c00f842 <pos_libc_prf+0xf42>
1c00f76c:	6791                	lui	a5,0x4
1c00f76e:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c00f772:	00f71023          	sh	a5,0(a4)
1c00f776:	04e00793          	li	a5,78
1c00f77a:	00f70123          	sb	a5,2(a4)
1c00f77e:	bdc5                	j	1c00f66e <pos_libc_prf+0xd6e>
1c00f780:	4f81                	li	t6,0
1c00f782:	014307b3          	add	a5,t1,s4
1c00f786:	0807c863          	bltz	a5,1c00f816 <pos_libc_prf+0xf16>
1c00f78a:	46c1                	li	a3,16
1c00f78c:	8e3e                	mv	t3,a5
1c00f78e:	00f6d363          	ble	a5,a3,1c00f794 <pos_libc_prf+0xe94>
1c00f792:	4e41                	li	t3,16
1c00f794:	1e7d                	addi	t3,t3,-1
1c00f796:	06600d93          	li	s11,102
1c00f79a:	f6079463          	bnez	a5,1c00ef02 <pos_libc_prf+0x602>
1c00f79e:	4681                	li	a3,0
1c00f7a0:	08000637          	lui	a2,0x8000
1c00f7a4:	fc8ff06f          	j	1c00ef6c <pos_libc_prf+0x66c>
1c00f7a8:	47e2                	lw	a5,24(sp)
1c00f7aa:	c7d5                	beqz	a5,1c00f856 <pos_libc_prf+0xf56>
1c00f7ac:	02000713          	li	a4,32
1c00f7b0:	02e10223          	sb	a4,36(sp)
1c00f7b4:	02510e93          	addi	t4,sp,37
1c00f7b8:	4301                	li	t1,0
1c00f7ba:	4501                	li	a0,0
1c00f7bc:	4681                	li	a3,0
1c00f7be:	4581                	li	a1,0
1c00f7c0:	ef0ff06f          	j	1c00eeb0 <pos_libc_prf+0x5b0>
1c00f7c4:	479d                	li	a5,7
1c00f7c6:	fa67dee3          	ble	t1,a5,1c00f782 <pos_libc_prf+0xe82>
1c00f7ca:	4e19                	li	t3,6
1c00f7cc:	06500d93          	li	s11,101
1c00f7d0:	f32ff06f          	j	1c00ef02 <pos_libc_prf+0x602>
1c00f7d4:	679d                	lui	a5,0x7
1c00f7d6:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c00f7da:	00f71023          	sh	a5,0(a4)
1c00f7de:	06600793          	li	a5,102
1c00f7e2:	00f70123          	sb	a5,2(a4)
1c00f7e6:	b561                	j	1c00f66e <pos_libc_prf+0xd6e>
1c00f7e8:	03000693          	li	a3,48
1c00f7ec:	00de8023          	sb	a3,0(t4)
1c00f7f0:	4541                	li	a0,16
1c00f7f2:	b711                	j	1c00f6f6 <pos_libc_prf+0xdf6>
1c00f7f4:	48e2                	lw	a7,24(sp)
1c00f7f6:	8ee6                	mv	t4,s9
1c00f7f8:	dc088e63          	beqz	a7,1c00edd4 <pos_libc_prf+0x4d4>
1c00f7fc:	02000713          	li	a4,32
1c00f800:	02e10223          	sb	a4,36(sp)
1c00f804:	02510e93          	addi	t4,sp,37
1c00f808:	dccff06f          	j	1c00edd4 <pos_libc_prf+0x4d4>
1c00f80c:	80000737          	lui	a4,0x80000
1c00f810:	02510793          	addi	a5,sp,37
1c00f814:	bc91                	j	1c00f268 <pos_libc_prf+0x968>
1c00f816:	06600d93          	li	s11,102
1c00f81a:	b751                	j	1c00f79e <pos_libc_prf+0xe9e>
1c00f81c:	02d00713          	li	a4,45
1c00f820:	02e10223          	sb	a4,36(sp)
1c00f824:	02510713          	addi	a4,sp,37
1c00f828:	b505                	j	1c00f648 <pos_libc_prf+0xd48>
1c00f82a:	a40a5d63          	bgez	s4,1c00ea84 <pos_libc_prf+0x184>
1c00f82e:	a62ff06f          	j	1c00ea90 <pos_libc_prf+0x190>
1c00f832:	02d00713          	li	a4,45
1c00f836:	02e10223          	sb	a4,36(sp)
1c00f83a:	02510e93          	addi	t4,sp,37
1c00f83e:	d96ff06f          	j	1c00edd4 <pos_libc_prf+0x4d4>
1c00f842:	6799                	lui	a5,0x6
1c00f844:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c00f848:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00f84c:	06e00793          	li	a5,110
1c00f850:	00f70123          	sb	a5,2(a4)
1c00f854:	bd29                	j	1c00f66e <pos_libc_prf+0xd6e>
1c00f856:	8ee6                	mv	t4,s9
1c00f858:	b785                	j	1c00f7b8 <pos_libc_prf+0xeb8>
1c00f85a:	89aa                	mv	s3,a0
1c00f85c:	820f8de3          	beqz	t6,1c00f096 <pos_libc_prf+0x796>
1c00f860:	b8dd                	j	1c00f156 <pos_libc_prf+0x856>

1c00f862 <pos_init_start>:
1c00f862:	1141                	addi	sp,sp,-16
1c00f864:	c422                	sw	s0,8(sp)
1c00f866:	1c000437          	lui	s0,0x1c000
1c00f86a:	c606                	sw	ra,12(sp)
1c00f86c:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00f870:	a86fc0ef          	jal	ra,1c00baf6 <pos_soc_init>
1c00f874:	2275                	jal	1c00fa20 <pos_irq_init>
1c00f876:	2ae1                	jal	1c00fa4e <pos_soc_event_init>
1c00f878:	2a31                	jal	1c00f994 <pos_allocs_init>
1c00f87a:	405c                	lw	a5,4(s0)
1c00f87c:	c791                	beqz	a5,1c00f888 <pos_init_start+0x26>
1c00f87e:	0411                	addi	s0,s0,4
1c00f880:	0411                	addi	s0,s0,4
1c00f882:	9782                	jalr	a5
1c00f884:	401c                	lw	a5,0(s0)
1c00f886:	ffed                	bnez	a5,1c00f880 <pos_init_start+0x1e>
1c00f888:	842ff0ef          	jal	ra,1c00e8ca <pos_io_start>
1c00f88c:	300467f3          	csrrsi	a5,mstatus,8
1c00f890:	40b2                	lw	ra,12(sp)
1c00f892:	4422                	lw	s0,8(sp)
1c00f894:	0141                	addi	sp,sp,16
1c00f896:	8082                	ret

1c00f898 <pos_init_stop>:
1c00f898:	1141                	addi	sp,sp,-16
1c00f89a:	c422                	sw	s0,8(sp)
1c00f89c:	1c000437          	lui	s0,0x1c000
1c00f8a0:	c606                	sw	ra,12(sp)
1c00f8a2:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00f8a6:	828ff0ef          	jal	ra,1c00e8ce <pos_io_stop>
1c00f8aa:	405c                	lw	a5,4(s0)
1c00f8ac:	c791                	beqz	a5,1c00f8b8 <pos_init_stop+0x20>
1c00f8ae:	0411                	addi	s0,s0,4
1c00f8b0:	0411                	addi	s0,s0,4
1c00f8b2:	9782                	jalr	a5
1c00f8b4:	401c                	lw	a5,0(s0)
1c00f8b6:	ffed                	bnez	a5,1c00f8b0 <pos_init_stop+0x18>
1c00f8b8:	40b2                	lw	ra,12(sp)
1c00f8ba:	4422                	lw	s0,8(sp)
1c00f8bc:	0141                	addi	sp,sp,16
1c00f8be:	8082                	ret

1c00f8c0 <pos_alloc_init>:
1c00f8c0:	00758793          	addi	a5,a1,7
1c00f8c4:	9be1                	andi	a5,a5,-8
1c00f8c6:	40b785b3          	sub	a1,a5,a1
1c00f8ca:	c11c                	sw	a5,0(a0)
1c00f8cc:	8e0d                	sub	a2,a2,a1
1c00f8ce:	00c05663          	blez	a2,1c00f8da <pos_alloc_init+0x1a>
1c00f8d2:	9a61                	andi	a2,a2,-8
1c00f8d4:	c390                	sw	a2,0(a5)
1c00f8d6:	0007a223          	sw	zero,4(a5)
1c00f8da:	8082                	ret

1c00f8dc <pos_alloc>:
1c00f8dc:	4110                	lw	a2,0(a0)
1c00f8de:	059d                	addi	a1,a1,7
1c00f8e0:	99e1                	andi	a1,a1,-8
1c00f8e2:	ca31                	beqz	a2,1c00f936 <pos_alloc+0x5a>
1c00f8e4:	4218                	lw	a4,0(a2)
1c00f8e6:	425c                	lw	a5,4(a2)
1c00f8e8:	02b75963          	ble	a1,a4,1c00f91a <pos_alloc+0x3e>
1c00f8ec:	cb81                	beqz	a5,1c00f8fc <pos_alloc+0x20>
1c00f8ee:	4398                	lw	a4,0(a5)
1c00f8f0:	43d4                	lw	a3,4(a5)
1c00f8f2:	00b75763          	ble	a1,a4,1c00f900 <pos_alloc+0x24>
1c00f8f6:	863e                	mv	a2,a5
1c00f8f8:	87b6                	mv	a5,a3
1c00f8fa:	fbf5                	bnez	a5,1c00f8ee <pos_alloc+0x12>
1c00f8fc:	853e                	mv	a0,a5
1c00f8fe:	8082                	ret
1c00f900:	00b70a63          	beq	a4,a1,1c00f914 <pos_alloc+0x38>
1c00f904:	00b78533          	add	a0,a5,a1
1c00f908:	8f0d                	sub	a4,a4,a1
1c00f90a:	c118                	sw	a4,0(a0)
1c00f90c:	c154                	sw	a3,4(a0)
1c00f90e:	c248                	sw	a0,4(a2)
1c00f910:	853e                	mv	a0,a5
1c00f912:	8082                	ret
1c00f914:	c254                	sw	a3,4(a2)
1c00f916:	853e                	mv	a0,a5
1c00f918:	8082                	ret
1c00f91a:	00e58b63          	beq	a1,a4,1c00f930 <pos_alloc+0x54>
1c00f91e:	00b606b3          	add	a3,a2,a1
1c00f922:	8f0d                	sub	a4,a4,a1
1c00f924:	c2dc                	sw	a5,4(a3)
1c00f926:	c298                	sw	a4,0(a3)
1c00f928:	87b2                	mv	a5,a2
1c00f92a:	c114                	sw	a3,0(a0)
1c00f92c:	853e                	mv	a0,a5
1c00f92e:	8082                	ret
1c00f930:	c11c                	sw	a5,0(a0)
1c00f932:	87b2                	mv	a5,a2
1c00f934:	b7e1                	j	1c00f8fc <pos_alloc+0x20>
1c00f936:	4781                	li	a5,0
1c00f938:	b7d1                	j	1c00f8fc <pos_alloc+0x20>

1c00f93a <pos_free>:
1c00f93a:	4118                	lw	a4,0(a0)
1c00f93c:	061d                	addi	a2,a2,7
1c00f93e:	9a61                	andi	a2,a2,-8
1c00f940:	c729                	beqz	a4,1c00f98a <pos_free+0x50>
1c00f942:	00b76663          	bltu	a4,a1,1c00f94e <pos_free+0x14>
1c00f946:	a0a1                	j	1c00f98e <pos_free+0x54>
1c00f948:	00b7f563          	bleu	a1,a5,1c00f952 <pos_free+0x18>
1c00f94c:	873e                	mv	a4,a5
1c00f94e:	435c                	lw	a5,4(a4)
1c00f950:	ffe5                	bnez	a5,1c00f948 <pos_free+0xe>
1c00f952:	00c586b3          	add	a3,a1,a2
1c00f956:	02d78463          	beq	a5,a3,1c00f97e <pos_free+0x44>
1c00f95a:	c190                	sw	a2,0(a1)
1c00f95c:	c1dc                	sw	a5,4(a1)
1c00f95e:	cf11                	beqz	a4,1c00f97a <pos_free+0x40>
1c00f960:	431c                	lw	a5,0(a4)
1c00f962:	00f706b3          	add	a3,a4,a5
1c00f966:	00d58463          	beq	a1,a3,1c00f96e <pos_free+0x34>
1c00f96a:	c34c                	sw	a1,4(a4)
1c00f96c:	8082                	ret
1c00f96e:	4194                	lw	a3,0(a1)
1c00f970:	41d0                	lw	a2,4(a1)
1c00f972:	97b6                	add	a5,a5,a3
1c00f974:	c31c                	sw	a5,0(a4)
1c00f976:	c350                	sw	a2,4(a4)
1c00f978:	8082                	ret
1c00f97a:	c10c                	sw	a1,0(a0)
1c00f97c:	8082                	ret
1c00f97e:	4394                	lw	a3,0(a5)
1c00f980:	43dc                	lw	a5,4(a5)
1c00f982:	9636                	add	a2,a2,a3
1c00f984:	c190                	sw	a2,0(a1)
1c00f986:	c1dc                	sw	a5,4(a1)
1c00f988:	bfd9                	j	1c00f95e <pos_free+0x24>
1c00f98a:	4781                	li	a5,0
1c00f98c:	b7d9                	j	1c00f952 <pos_free+0x18>
1c00f98e:	87ba                	mv	a5,a4
1c00f990:	4701                	li	a4,0
1c00f992:	b7c1                	j	1c00f952 <pos_free+0x18>

1c00f994 <pos_allocs_init>:
1c00f994:	1141                	addi	sp,sp,-16
1c00f996:	1c0075b7          	lui	a1,0x1c007
1c00f99a:	c606                	sw	ra,12(sp)
1c00f99c:	54458793          	addi	a5,a1,1348 # 1c007544 <__l2_priv0_end>
1c00f9a0:	1c008637          	lui	a2,0x1c008
1c00f9a4:	04c7cc63          	blt	a5,a2,1c00f9fc <pos_allocs_init+0x68>
1c00f9a8:	4581                	li	a1,0
1c00f9aa:	4601                	li	a2,0
1c00f9ac:	1c007537          	lui	a0,0x1c007
1c00f9b0:	53850513          	addi	a0,a0,1336 # 1c007538 <pos_alloc_l2>
1c00f9b4:	3731                	jal	1c00f8c0 <pos_alloc_init>
1c00f9b6:	1c0105b7          	lui	a1,0x1c010
1c00f9ba:	a6858793          	addi	a5,a1,-1432 # 1c00fa68 <__l2_priv1_end>
1c00f9be:	1c010637          	lui	a2,0x1c010
1c00f9c2:	02c7c963          	blt	a5,a2,1c00f9f4 <pos_allocs_init+0x60>
1c00f9c6:	4581                	li	a1,0
1c00f9c8:	4601                	li	a2,0
1c00f9ca:	1c007537          	lui	a0,0x1c007
1c00f9ce:	53c50513          	addi	a0,a0,1340 # 1c00753c <pos_alloc_l2+0x4>
1c00f9d2:	35fd                	jal	1c00f8c0 <pos_alloc_init>
1c00f9d4:	1c0105b7          	lui	a1,0x1c010
1c00f9d8:	00058793          	mv	a5,a1
1c00f9dc:	40b2                	lw	ra,12(sp)
1c00f9de:	1c080637          	lui	a2,0x1c080
1c00f9e2:	1c007537          	lui	a0,0x1c007
1c00f9e6:	8e1d                	sub	a2,a2,a5
1c00f9e8:	00058593          	mv	a1,a1
1c00f9ec:	54050513          	addi	a0,a0,1344 # 1c007540 <pos_alloc_l2+0x8>
1c00f9f0:	0141                	addi	sp,sp,16
1c00f9f2:	b5f9                	j	1c00f8c0 <pos_alloc_init>
1c00f9f4:	8e1d                	sub	a2,a2,a5
1c00f9f6:	a6858593          	addi	a1,a1,-1432 # 1c00fa68 <__l2_priv1_end>
1c00f9fa:	bfc1                	j	1c00f9ca <pos_allocs_init+0x36>
1c00f9fc:	8e1d                	sub	a2,a2,a5
1c00f9fe:	54458593          	addi	a1,a1,1348
1c00fa02:	b76d                	j	1c00f9ac <pos_allocs_init+0x18>

1c00fa04 <pi_l2_malloc>:
1c00fa04:	85aa                	mv	a1,a0
1c00fa06:	1c007537          	lui	a0,0x1c007
1c00fa0a:	53850513          	addi	a0,a0,1336 # 1c007538 <pos_alloc_l2>
1c00fa0e:	b5f9                	j	1c00f8dc <pos_alloc>

1c00fa10 <pi_l2_free>:
1c00fa10:	862e                	mv	a2,a1
1c00fa12:	85aa                	mv	a1,a0
1c00fa14:	1c007537          	lui	a0,0x1c007
1c00fa18:	53850513          	addi	a0,a0,1336 # 1c007538 <pos_alloc_l2>
1c00fa1c:	bf39                	j	1c00f93a <pos_free>

1c00fa1e <__rt_handle_illegal_instr>:
1c00fa1e:	8082                	ret

1c00fa20 <pos_irq_init>:
1c00fa20:	1a10a737          	lui	a4,0x1a10a
1c00fa24:	f14027f3          	csrr	a5,mhartid
1c00fa28:	56fd                	li	a3,-1
1c00fa2a:	8795                	srai	a5,a5,0x5
1c00fa2c:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00fa30:	03f7f793          	andi	a5,a5,63
1c00fa34:	477d                	li	a4,31
1c00fa36:	00e78363          	beq	a5,a4,1c00fa3c <pos_irq_init+0x1c>
1c00fa3a:	8082                	ret
1c00fa3c:	1c0087b7          	lui	a5,0x1c008
1c00fa40:	00078793          	mv	a5,a5
1c00fa44:	0017e793          	ori	a5,a5,1
1c00fa48:	30579073          	csrw	mtvec,a5
1c00fa4c:	8082                	ret

1c00fa4e <pos_soc_event_init>:
1c00fa4e:	1a1067b7          	lui	a5,0x1a106
1c00fa52:	577d                	li	a4,-1
1c00fa54:	c3d8                	sw	a4,4(a5)
1c00fa56:	c798                	sw	a4,8(a5)
1c00fa58:	c7d8                	sw	a4,12(a5)
1c00fa5a:	cb98                	sw	a4,16(a5)
1c00fa5c:	cbd8                	sw	a4,20(a5)
1c00fa5e:	cf98                	sw	a4,24(a5)
1c00fa60:	cfd8                	sw	a4,28(a5)
1c00fa62:	d398                	sw	a4,32(a5)
1c00fa64:	8082                	ret

1c00fa66 <_endtext>:
	...
