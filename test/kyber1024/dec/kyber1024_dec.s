riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber1024/dec/build/dec/dec

/home/alessandra.dolmeta/pqc_riscv/test/kyber1024/dec/build/dec/dec:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	4e30706f          	j	1c00fce2 <__rt_handle_illegal_instr>
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
1c008084:	45f0706f          	j	1c00fce2 <__rt_handle_illegal_instr>

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
1c0080c4:	1a028293          	addi	t0,t0,416 # 1c006260 <key_a.1588>
1c0080c8:	fffff317          	auipc	t1,0xfffff
1c0080cc:	47c30313          	addi	t1,t1,1148 # 1c007544 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	18610113          	addi	sp,sp,390 # 1c006260 <key_a.1588>
1c0080e2:	235070ef          	jal	ra,1c00fb16 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	06638393          	addi	t2,t2,102 # 1c008154 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	251070ef          	jal	ra,1c00fb4c <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	293060ef          	jal	ra,1c00eb94 <exit>
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

1c008154 <main>:
1c008154:	1101                	addi	sp,sp,-32
1c008156:	1c0067b7          	lui	a5,0x1c006
1c00815a:	ca26                	sw	s1,20(sp)
1c00815c:	28078493          	addi	s1,a5,640 # 1c006280 <key_b.1589>
1c008160:	fa39c7b7          	lui	a5,0xfa39c
1c008164:	31978793          	addi	a5,a5,793 # fa39c319 <__l2_shared_end+0xde38c319>
1c008168:	c09c                	sw	a5,0(s1)
1c00816a:	594ef7b7          	lui	a5,0x594ef
1c00816e:	a0a78793          	addi	a5,a5,-1526 # 594eea0a <__l2_shared_end+0x3d4dea0a>
1c008172:	c0dc                	sw	a5,4(s1)
1c008174:	ac2a87b7          	lui	a5,0xac2a8
1c008178:	96678793          	addi	a5,a5,-1690 # ac2a7966 <__l2_shared_end+0x90297966>
1c00817c:	c49c                	sw	a5,8(s1)
1c00817e:	17cf17b7          	lui	a5,0x17cf1
1c008182:	3eb78793          	addi	a5,a5,1003 # 17cf13eb <__CTOR_LIST__-0x430ec19>
1c008186:	c4dc                	sw	a5,12(s1)
1c008188:	4a6ea7b7          	lui	a5,0x4a6ea
1c00818c:	05b78793          	addi	a5,a5,91 # 4a6ea05b <__l2_shared_end+0x2e6da05b>
1c008190:	c89c                	sw	a5,16(s1)
1c008192:	ae0e07b7          	lui	a5,0xae0e0
1c008196:	39578793          	addi	a5,a5,917 # ae0e0395 <__l2_shared_end+0x920d0395>
1c00819a:	c8dc                	sw	a5,20(s1)
1c00819c:	a610c7b7          	lui	a5,0xa610c
1c0081a0:	f9f78793          	addi	a5,a5,-97 # a610bf9f <__l2_shared_end+0x8a0fbf9f>
1c0081a4:	cc9c                	sw	a5,24(s1)
1c0081a6:	0d4687b7          	lui	a5,0xd468
1c0081aa:	e2b78793          	addi	a5,a5,-469 # d467e2b <__CTOR_LIST__-0xeb981d9>
1c0081ae:	1c0065b7          	lui	a1,0x1c006
1c0081b2:	ccdc                	sw	a5,28(s1)
1c0081b4:	267867b7          	lui	a5,0x26786
1c0081b8:	2a058713          	addi	a4,a1,672 # 1c0062a0 <sendb.1591>
1c0081bc:	ce06                	sw	ra,28(sp)
1c0081be:	cc22                	sw	s0,24(sp)
1c0081c0:	c84a                	sw	s2,16(sp)
1c0081c2:	c64e                	sw	s3,12(sp)
1c0081c4:	c452                	sw	s4,8(sp)
1c0081c6:	13578793          	addi	a5,a5,309 # 26786135 <__l2_shared_end+0xa776135>
1c0081ca:	c31c                	sw	a5,0(a4)
1c0081cc:	f56e97b7          	lui	a5,0xf56e9
1c0081d0:	82a78793          	addi	a5,a5,-2006 # f56e882a <__l2_shared_end+0xd96d882a>
1c0081d4:	c35c                	sw	a5,4(a4)
1c0081d6:	dcdbd7b7          	lui	a5,0xdcdbd
1c0081da:	93078793          	addi	a5,a5,-1744 # dcdbc930 <__l2_shared_end+0xc0dac930>
1c0081de:	c71c                	sw	a5,8(a4)
1c0081e0:	11db87b7          	lui	a5,0x11db8
1c0081e4:	ef578793          	addi	a5,a5,-267 # 11db7ef5 <__CTOR_LIST__-0xa24810f>
1c0081e8:	c75c                	sw	a5,12(a4)
1c0081ea:	d6d177b7          	lui	a5,0xd6d17
1c0081ee:	b4178793          	addi	a5,a5,-1215 # d6d16b41 <__l2_shared_end+0xbad06b41>
1c0081f2:	cb1c                	sw	a5,16(a4)
1c0081f4:	95b7d7b7          	lui	a5,0x95b7d
1c0081f8:	a8878793          	addi	a5,a5,-1400 # 95b7ca88 <__l2_shared_end+0x79b6ca88>
1c0081fc:	cb5c                	sw	a5,20(a4)
1c0081fe:	4a7117b7          	lui	a5,0x4a711
1c008202:	d4e78793          	addi	a5,a5,-690 # 4a710d4e <__l2_shared_end+0x2e700d4e>
1c008206:	cf1c                	sw	a5,24(a4)
1c008208:	83d897b7          	lui	a5,0x83d89
1c00820c:	7ec78793          	addi	a5,a5,2028 # 83d897ec <__l2_shared_end+0x67d797ec>
1c008210:	cf5c                	sw	a5,28(a4)
1c008212:	5b47a7b7          	lui	a5,0x5b47a
1c008216:	a5878793          	addi	a5,a5,-1448 # 5b479a58 <__l2_shared_end+0x3f469a58>
1c00821a:	d31c                	sw	a5,32(a4)
1c00821c:	904667b7          	lui	a5,0x90466
1c008220:	41878793          	addi	a5,a5,1048 # 90466418 <__l2_shared_end+0x74456418>
1c008224:	d35c                	sw	a5,36(a4)
1c008226:	24ab67b7          	lui	a5,0x24ab6
1c00822a:	24478793          	addi	a5,a5,580 # 24ab6244 <__l2_shared_end+0x8aa6244>
1c00822e:	d71c                	sw	a5,40(a4)
1c008230:	461ef7b7          	lui	a5,0x461ef
1c008234:	7bf78793          	addi	a5,a5,1983 # 461ef7bf <__l2_shared_end+0x2a1df7bf>
1c008238:	d75c                	sw	a5,44(a4)
1c00823a:	80d077b7          	lui	a5,0x80d07
1c00823e:	e1378793          	addi	a5,a5,-493 # 80d06e13 <__l2_shared_end+0x64cf6e13>
1c008242:	db1c                	sw	a5,48(a4)
1c008244:	4f5767b7          	lui	a5,0x4f576
1c008248:	f4478793          	addi	a5,a5,-188 # 4f575f44 <__l2_shared_end+0x33565f44>
1c00824c:	db5c                	sw	a5,52(a4)
1c00824e:	953ce7b7          	lui	a5,0x953ce
1c008252:	4f378793          	addi	a5,a5,1267 # 953ce4f3 <__l2_shared_end+0x793be4f3>
1c008256:	df1c                	sw	a5,56(a4)
1c008258:	a32ed7b7          	lui	a5,0xa32ed
1c00825c:	b9078793          	addi	a5,a5,-1136 # a32ecb90 <__l2_shared_end+0x872dcb90>
1c008260:	df5c                	sw	a5,60(a4)
1c008262:	bd8ab7b7          	lui	a5,0xbd8ab
1c008266:	71a78793          	addi	a5,a5,1818 # bd8ab71a <__l2_shared_end+0xa189b71a>
1c00826a:	c33c                	sw	a5,64(a4)
1c00826c:	f38f87b7          	lui	a5,0xf38f8
1c008270:	79978793          	addi	a5,a5,1945 # f38f8799 <__l2_shared_end+0xd78e8799>
1c008274:	c37c                	sw	a5,68(a4)
1c008276:	57a417b7          	lui	a5,0x57a41
1c00827a:	72378793          	addi	a5,a5,1827 # 57a41723 <__l2_shared_end+0x3ba31723>
1c00827e:	c73c                	sw	a5,72(a4)
1c008280:	bff737b7          	lui	a5,0xbff73
1c008284:	47178793          	addi	a5,a5,1137 # bff73471 <__l2_shared_end+0xa3f63471>
1c008288:	c77c                	sw	a5,76(a4)
1c00828a:	7ce557b7          	lui	a5,0x7ce55
1c00828e:	7e378793          	addi	a5,a5,2019 # 7ce557e3 <__l2_shared_end+0x60e457e3>
1c008292:	cb3c                	sw	a5,80(a4)
1c008294:	79dee7b7          	lui	a5,0x79dee
1c008298:	db978793          	addi	a5,a5,-583 # 79deddb9 <__l2_shared_end+0x5dddddb9>
1c00829c:	cb7c                	sw	a5,84(a4)
1c00829e:	99dfa7b7          	lui	a5,0x99dfa
1c0082a2:	bb878793          	addi	a5,a5,-1096 # 99df9bb8 <__l2_shared_end+0x7dde9bb8>
1c0082a6:	cf3c                	sw	a5,88(a4)
1c0082a8:	7fb3a7b7          	lui	a5,0x7fb3a
1c0082ac:	64478793          	addi	a5,a5,1604 # 7fb3a644 <__l2_shared_end+0x63b2a644>
1c0082b0:	cf7c                	sw	a5,92(a4)
1c0082b2:	454cc7b7          	lui	a5,0x454cc
1c0082b6:	9e078793          	addi	a5,a5,-1568 # 454cb9e0 <__l2_shared_end+0x294bb9e0>
1c0082ba:	d33c                	sw	a5,96(a4)
1c0082bc:	e40327b7          	lui	a5,0xe4032
1c0082c0:	09278793          	addi	a5,a5,146 # e4032092 <__l2_shared_end+0xc8022092>
1c0082c4:	d37c                	sw	a5,100(a4)
1c0082c6:	7878c7b7          	lui	a5,0x7878c
1c0082ca:	deb78793          	addi	a5,a5,-533 # 7878bdeb <__l2_shared_end+0x5c77bdeb>
1c0082ce:	d73c                	sw	a5,104(a4)
1c0082d0:	5430f7b7          	lui	a5,0x5430f
1c0082d4:	83978793          	addi	a5,a5,-1991 # 5430e839 <__l2_shared_end+0x382fe839>
1c0082d8:	d77c                	sw	a5,108(a4)
1c0082da:	9bc107b7          	lui	a5,0x9bc10
1c0082de:	c9d78793          	addi	a5,a5,-867 # 9bc0fc9d <__l2_shared_end+0x7fbffc9d>
1c0082e2:	db3c                	sw	a5,112(a4)
1c0082e4:	e75887b7          	lui	a5,0xe7588
1c0082e8:	41c78793          	addi	a5,a5,1052 # e758841c <__l2_shared_end+0xcb57841c>
1c0082ec:	db7c                	sw	a5,116(a4)
1c0082ee:	c2cea7b7          	lui	a5,0xc2cea
1c0082f2:	bfc78793          	addi	a5,a5,-1028 # c2ce9bfc <__l2_shared_end+0xa6cd9bfc>
1c0082f6:	df3c                	sw	a5,120(a4)
1c0082f8:	d087c7b7          	lui	a5,0xd087c
1c0082fc:	40478793          	addi	a5,a5,1028 # d087c404 <__l2_shared_end+0xb486c404>
1c008300:	df7c                	sw	a5,124(a4)
1c008302:	1f4117b7          	lui	a5,0x1f411
1c008306:	ace78793          	addi	a5,a5,-1330 # 1f410ace <__l2_shared_end+0x3400ace>
1c00830a:	08f72023          	sw	a5,128(a4) # 1000080 <__CTOR_LIST__-0x1affff84>
1c00830e:	5fc307b7          	lui	a5,0x5fc30
1c008312:	d3e78793          	addi	a5,a5,-706 # 5fc2fd3e <__l2_shared_end+0x43c1fd3e>
1c008316:	08f72223          	sw	a5,132(a4)
1c00831a:	2a8837b7          	lui	a5,0x2a883
1c00831e:	e5878793          	addi	a5,a5,-424 # 2a882e58 <__l2_shared_end+0xe872e58>
1c008322:	08f72423          	sw	a5,136(a4)
1c008326:	55f4e7b7          	lui	a5,0x55f4e
1c00832a:	f6978793          	addi	a5,a5,-151 # 55f4df69 <__l2_shared_end+0x39f3df69>
1c00832e:	08f72623          	sw	a5,140(a4)
1c008332:	36f227b7          	lui	a5,0x36f22
1c008336:	bd978793          	addi	a5,a5,-1063 # 36f21bd9 <__l2_shared_end+0x1af11bd9>
1c00833a:	08f72823          	sw	a5,144(a4)
1c00833e:	95e707b7          	lui	a5,0x95e70
1c008342:	0e478793          	addi	a5,a5,228 # 95e700e4 <__l2_shared_end+0x79e600e4>
1c008346:	08f72a23          	sw	a5,148(a4)
1c00834a:	e6a227b7          	lui	a5,0xe6a22
1c00834e:	3b778793          	addi	a5,a5,951 # e6a223b7 <__l2_shared_end+0xcaa123b7>
1c008352:	08f72c23          	sw	a5,152(a4)
1c008356:	37c5d7b7          	lui	a5,0x37c5d
1c00835a:	52178793          	addi	a5,a5,1313 # 37c5d521 <__l2_shared_end+0x1bc4d521>
1c00835e:	08f72e23          	sw	a5,156(a4)
1c008362:	1eff37b7          	lui	a5,0x1eff3
1c008366:	f5478793          	addi	a5,a5,-172 # 1eff2f54 <__l2_shared_end+0x2fe2f54>
1c00836a:	0af72023          	sw	a5,160(a4)
1c00836e:	4aed87b7          	lui	a5,0x4aed8
1c008372:	0a478793          	addi	a5,a5,164 # 4aed80a4 <__l2_shared_end+0x2eec80a4>
1c008376:	0af72223          	sw	a5,164(a4)
1c00837a:	6c9ca7b7          	lui	a5,0x6c9ca
1c00837e:	c5178793          	addi	a5,a5,-943 # 6c9c9c51 <__l2_shared_end+0x509b9c51>
1c008382:	0af72423          	sw	a5,168(a4)
1c008386:	ac44e7b7          	lui	a5,0xac44e
1c00838a:	e0278793          	addi	a5,a5,-510 # ac44de02 <__l2_shared_end+0x9043de02>
1c00838e:	0af72623          	sw	a5,172(a4)
1c008392:	8728f7b7          	lui	a5,0x8728f
1c008396:	12978793          	addi	a5,a5,297 # 8728f129 <__l2_shared_end+0x6b27f129>
1c00839a:	0af72823          	sw	a5,176(a4)
1c00839e:	82e4a7b7          	lui	a5,0x82e4a
1c0083a2:	abb78793          	addi	a5,a5,-1349 # 82e49abb <__l2_shared_end+0x66e39abb>
1c0083a6:	0af72a23          	sw	a5,180(a4)
1c0083aa:	50b137b7          	lui	a5,0x50b13
1c0083ae:	62078793          	addi	a5,a5,1568 # 50b13620 <__l2_shared_end+0x34b03620>
1c0083b2:	0af72c23          	sw	a5,184(a4)
1c0083b6:	d225d7b7          	lui	a5,0xd225d
1c0083ba:	4cf78793          	addi	a5,a5,1231 # d225d4cf <__l2_shared_end+0xb624d4cf>
1c0083be:	0af72e23          	sw	a5,188(a4)
1c0083c2:	3ad8d7b7          	lui	a5,0x3ad8d
1c0083c6:	50b78793          	addi	a5,a5,1291 # 3ad8d50b <__l2_shared_end+0x1ed7d50b>
1c0083ca:	0cf72023          	sw	a5,192(a4)
1c0083ce:	070797b7          	lui	a5,0x7079
1c0083d2:	b6e78793          	addi	a5,a5,-1170 # 7078b6e <__CTOR_LIST__-0x14f87496>
1c0083d6:	0cf72223          	sw	a5,196(a4)
1c0083da:	3a2d37b7          	lui	a5,0x3a2d3
1c0083de:	6fe78793          	addi	a5,a5,1790 # 3a2d36fe <__l2_shared_end+0x1e2c36fe>
1c0083e2:	0cf72423          	sw	a5,200(a4)
1c0083e6:	b894f7b7          	lui	a5,0xb894f
1c0083ea:	4ec78793          	addi	a5,a5,1260 # b894f4ec <__l2_shared_end+0x9c93f4ec>
1c0083ee:	0cf72623          	sw	a5,204(a4)
1c0083f2:	846427b7          	lui	a5,0x84642
1c0083f6:	68978793          	addi	a5,a5,1673 # 84642689 <__l2_shared_end+0x68632689>
1c0083fa:	0cf72823          	sw	a5,208(a4)
1c0083fe:	ba8487b7          	lui	a5,0xba848
1c008402:	e1678793          	addi	a5,a5,-490 # ba847e16 <__l2_shared_end+0x9e837e16>
1c008406:	0cf72a23          	sw	a5,212(a4)
1c00840a:	bf7877b7          	lui	a5,0xbf787
1c00840e:	27d78793          	addi	a5,a5,637 # bf78727d <__l2_shared_end+0xa377727d>
1c008412:	0cf72c23          	sw	a5,216(a4)
1c008416:	70e897b7          	lui	a5,0x70e89
1c00841a:	28c78793          	addi	a5,a5,652 # 70e8928c <__l2_shared_end+0x54e7928c>
1c00841e:	0cf72e23          	sw	a5,220(a4)
1c008422:	34cf17b7          	lui	a5,0x34cf1
1c008426:	98b78793          	addi	a5,a5,-1653 # 34cf098b <__l2_shared_end+0x18ce098b>
1c00842a:	0ef72023          	sw	a5,224(a4)
1c00842e:	f296d7b7          	lui	a5,0xf296d
1c008432:	e7d78793          	addi	a5,a5,-387 # f296ce7d <__l2_shared_end+0xd695ce7d>
1c008436:	0ef72223          	sw	a5,228(a4)
1c00843a:	788367b7          	lui	a5,0x78836
1c00843e:	d1978793          	addi	a5,a5,-743 # 78835d19 <__l2_shared_end+0x5c825d19>
1c008442:	0ef72423          	sw	a5,232(a4)
1c008446:	0bc9f7b7          	lui	a5,0xbc9f
1c00844a:	22c78793          	addi	a5,a5,556 # bc9f22c <__CTOR_LIST__-0x10360dd8>
1c00844e:	0ef72623          	sw	a5,236(a4)
1c008452:	0deeb7b7          	lui	a5,0xdeeb
1c008456:	92678793          	addi	a5,a5,-1754 # deea926 <__CTOR_LIST__-0xe1156de>
1c00845a:	0ef72823          	sw	a5,240(a4)
1c00845e:	028067b7          	lui	a5,0x2806
1c008462:	50978793          	addi	a5,a5,1289 # 2806509 <__CTOR_LIST__-0x197f9afb>
1c008466:	0ef72a23          	sw	a5,244(a4)
1c00846a:	05f00793          	li	a5,95
1c00846e:	0ef70d23          	sb	a5,250(a4)
1c008472:	05b00793          	li	a5,91
1c008476:	0ef70da3          	sb	a5,251(a4)
1c00847a:	1f6897b7          	lui	a5,0x1f689
1c00847e:	52b78793          	addi	a5,a5,1323 # 1f68952b <__l2_shared_end+0x367952b>
1c008482:	0ef72e23          	sw	a5,252(a4)
1c008486:	80f257b7          	lui	a5,0x80f25
1c00848a:	aad78793          	addi	a5,a5,-1363 # 80f24aad <__l2_shared_end+0x64f14aad>
1c00848e:	10f72023          	sw	a5,256(a4)
1c008492:	bbaae7b7          	lui	a5,0xbbaae
1c008496:	c0778793          	addi	a5,a5,-1017 # bbaadc07 <__l2_shared_end+0x9fa9dc07>
1c00849a:	10f72223          	sw	a5,260(a4)
1c00849e:	34fc17b7          	lui	a5,0x34fc1
1c0084a2:	0cd78793          	addi	a5,a5,205 # 34fc10cd <__l2_shared_end+0x18fb10cd>
1c0084a6:	10f72423          	sw	a5,264(a4)
1c0084aa:	67c0b7b7          	lui	a5,0x67c0b
1c0084ae:	71178793          	addi	a5,a5,1809 # 67c0b711 <__l2_shared_end+0x4bbfb711>
1c0084b2:	10f72623          	sw	a5,268(a4)
1c0084b6:	c2b127b7          	lui	a5,0xc2b12
1c0084ba:	25678793          	addi	a5,a5,598 # c2b12256 <__l2_shared_end+0xa6b02256>
1c0084be:	10f72823          	sw	a5,272(a4)
1c0084c2:	045f97b7          	lui	a5,0x45f9
1c0084c6:	66878793          	addi	a5,a5,1640 # 45f9668 <__CTOR_LIST__-0x17a0699c>
1c0084ca:	10f72a23          	sw	a5,276(a4)
1c0084ce:	967b17b7          	lui	a5,0x967b1
1c0084d2:	8ad78793          	addi	a5,a5,-1875 # 967b08ad <__l2_shared_end+0x7a7a08ad>
1c0084d6:	10f72c23          	sw	a5,280(a4)
1c0084da:	b71377b7          	lui	a5,0xb7137
1c0084de:	38b78793          	addi	a5,a5,907 # b713738b <__l2_shared_end+0x9b12738b>
1c0084e2:	10f72e23          	sw	a5,284(a4)
1c0084e6:	e91d37b7          	lui	a5,0xe91d3
1c0084ea:	e9c78793          	addi	a5,a5,-356 # e91d2e9c <__l2_shared_end+0xcd1c2e9c>
1c0084ee:	12f72023          	sw	a5,288(a4)
1c0084f2:	e12007b7          	lui	a5,0xe1200
1c0084f6:	80578793          	addi	a5,a5,-2043 # e11ff805 <__l2_shared_end+0xc51ef805>
1c0084fa:	12f72223          	sw	a5,292(a4)
1c0084fe:	480987b7          	lui	a5,0x48098
1c008502:	c3578793          	addi	a5,a5,-971 # 48097c35 <__l2_shared_end+0x2c087c35>
1c008506:	12f72423          	sw	a5,296(a4)
1c00850a:	6134d7b7          	lui	a5,0x6134d
1c00850e:	cca78793          	addi	a5,a5,-822 # 6134ccca <__l2_shared_end+0x4533ccca>
1c008512:	12f72623          	sw	a5,300(a4)
1c008516:	2eb507b7          	lui	a5,0x2eb50
1c00851a:	b6a78793          	addi	a5,a5,-1174 # 2eb4fb6a <__l2_shared_end+0x12b3fb6a>
1c00851e:	12f72823          	sw	a5,304(a4)
1c008522:	5995c7b7          	lui	a5,0x5995c
1c008526:	d9678793          	addi	a5,a5,-618 # 5995bd96 <__l2_shared_end+0x3d94bd96>
1c00852a:	12f72a23          	sw	a5,308(a4)
1c00852e:	80e8c7b7          	lui	a5,0x80e8c
1c008532:	25078793          	addi	a5,a5,592 # 80e8c250 <__l2_shared_end+0x64e7c250>
1c008536:	12f72c23          	sw	a5,312(a4)
1c00853a:	c58d07b7          	lui	a5,0xc58d0
1c00853e:	47b78793          	addi	a5,a5,1147 # c58d047b <__l2_shared_end+0xa98c047b>
1c008542:	12f72e23          	sw	a5,316(a4)
1c008546:	52ac47b7          	lui	a5,0x52ac4
1c00854a:	bdb78793          	addi	a5,a5,-1061 # 52ac3bdb <__l2_shared_end+0x36ab3bdb>
1c00854e:	14f72023          	sw	a5,320(a4)
1c008552:	2708d7b7          	lui	a5,0x2708d
1c008556:	6815                	lui	a6,0x5
1c008558:	eea78793          	addi	a5,a5,-278 # 2708ceea <__l2_shared_end+0xb07ceea>
1c00855c:	44580693          	addi	a3,a6,1093 # 5445 <__CTOR_LIST__-0x1bffabbf>
1c008560:	14f72223          	sw	a5,324(a4)
1c008564:	254017b7          	lui	a5,0x25401
1c008568:	0ed71c23          	sh	a3,248(a4)
1c00856c:	e4878793          	addi	a5,a5,-440 # 25400e48 <__l2_shared_end+0x93f0e48>
1c008570:	14f72423          	sw	a5,328(a4)
1c008574:	f91bf7b7          	lui	a5,0xf91bf
1c008578:	e7e78793          	addi	a5,a5,-386 # f91bee7e <__l2_shared_end+0xdd1aee7e>
1c00857c:	14f72623          	sw	a5,332(a4)
1c008580:	2d7a37b7          	lui	a5,0x2d7a3
1c008584:	51f78793          	addi	a5,a5,1311 # 2d7a351f <__l2_shared_end+0x1179351f>
1c008588:	14f72823          	sw	a5,336(a4)
1c00858c:	64d3c7b7          	lui	a5,0x64d3c
1c008590:	acb78793          	addi	a5,a5,-1333 # 64d3bacb <__l2_shared_end+0x48d2bacb>
1c008594:	14f72a23          	sw	a5,340(a4)
1c008598:	7c0057b7          	lui	a5,0x7c005
1c00859c:	fc978793          	addi	a5,a5,-55 # 7c004fc9 <__l2_shared_end+0x5fff4fc9>
1c0085a0:	14f72c23          	sw	a5,344(a4)
1c0085a4:	d70077b7          	lui	a5,0xd7007
1c0085a8:	12978793          	addi	a5,a5,297 # d7007129 <__l2_shared_end+0xbaff7129>
1c0085ac:	14f72e23          	sw	a5,348(a4)
1c0085b0:	495f77b7          	lui	a5,0x495f7
1c0085b4:	f6778793          	addi	a5,a5,-153 # 495f6f67 <__l2_shared_end+0x2d5e6f67>
1c0085b8:	16f72023          	sw	a5,352(a4)
1c0085bc:	c89947b7          	lui	a5,0xc8994
1c0085c0:	85978793          	addi	a5,a5,-1959 # c8993859 <__l2_shared_end+0xac983859>
1c0085c4:	16f72223          	sw	a5,356(a4)
1c0085c8:	e848a7b7          	lui	a5,0xe848a
1c0085cc:	0a978793          	addi	a5,a5,169 # e848a0a9 <__l2_shared_end+0xcc47a0a9>
1c0085d0:	16f72423          	sw	a5,360(a4)
1c0085d4:	a22df7b7          	lui	a5,0xa22df
1c0085d8:	b2478793          	addi	a5,a5,-1244 # a22deb24 <__l2_shared_end+0x862ceb24>
1c0085dc:	16f72623          	sw	a5,364(a4)
1c0085e0:	bec087b7          	lui	a5,0xbec08
1c0085e4:	0d078793          	addi	a5,a5,208 # bec080d0 <__l2_shared_end+0xa2bf80d0>
1c0085e8:	16f72823          	sw	a5,368(a4)
1c0085ec:	a7c1a7b7          	lui	a5,0xa7c1a
1c0085f0:	b7d78793          	addi	a5,a5,-1155 # a7c19b7d <__l2_shared_end+0x8bc09b7d>
1c0085f4:	16f72a23          	sw	a5,372(a4)
1c0085f8:	c7f877b7          	lui	a5,0xc7f87
1c0085fc:	8e678793          	addi	a5,a5,-1818 # c7f868e6 <__l2_shared_end+0xabf768e6>
1c008600:	16f72c23          	sw	a5,376(a4)
1c008604:	518d77b7          	lui	a5,0x518d7
1c008608:	c2178793          	addi	a5,a5,-991 # 518d6c21 <__l2_shared_end+0x358c6c21>
1c00860c:	16f72e23          	sw	a5,380(a4)
1c008610:	305997b7          	lui	a5,0x30599
1c008614:	17d9                	addi	a5,a5,-10
1c008616:	18f72023          	sw	a5,384(a4)
1c00861a:	816fc7b7          	lui	a5,0x816fc
1c00861e:	25678793          	addi	a5,a5,598 # 816fc256 <__l2_shared_end+0x656ec256>
1c008622:	18f72223          	sw	a5,388(a4)
1c008626:	5aabe7b7          	lui	a5,0x5aabe
1c00862a:	8b678793          	addi	a5,a5,-1866 # 5aabd8b6 <__l2_shared_end+0x3eaad8b6>
1c00862e:	18f72423          	sw	a5,392(a4)
1c008632:	826157b7          	lui	a5,0x82615
1c008636:	aeb78793          	addi	a5,a5,-1301 # 82614aeb <__l2_shared_end+0x66604aeb>
1c00863a:	18f72623          	sw	a5,396(a4)
1c00863e:	aca707b7          	lui	a5,0xaca70
1c008642:	b6f78793          	addi	a5,a5,-1169 # aca6fb6f <__l2_shared_end+0x90a5fb6f>
1c008646:	18f72823          	sw	a5,400(a4)
1c00864a:	c43df7b7          	lui	a5,0xc43df
1c00864e:	1ac78793          	addi	a5,a5,428 # c43df1ac <__l2_shared_end+0xa83cf1ac>
1c008652:	18f72a23          	sw	a5,404(a4)
1c008656:	882e07b7          	lui	a5,0x882e0
1c00865a:	9a478793          	addi	a5,a5,-1628 # 882df9a4 <__l2_shared_end+0x6c2cf9a4>
1c00865e:	18f72c23          	sw	a5,408(a4)
1c008662:	df1457b7          	lui	a5,0xdf145
1c008666:	06078793          	addi	a5,a5,96 # df145060 <__l2_shared_end+0xc3135060>
1c00866a:	18f72e23          	sw	a5,412(a4)
1c00866e:	be6de7b7          	lui	a5,0xbe6de
1c008672:	88478793          	addi	a5,a5,-1916 # be6dd884 <__l2_shared_end+0xa26cd884>
1c008676:	1af72023          	sw	a5,416(a4)
1c00867a:	86aef7b7          	lui	a5,0x86aef
1c00867e:	d1b78793          	addi	a5,a5,-741 # 86aeed1b <__l2_shared_end+0x6aaded1b>
1c008682:	1af72223          	sw	a5,420(a4)
1c008686:	dbafb7b7          	lui	a5,0xdbafb
1c00868a:	88978793          	addi	a5,a5,-1911 # dbafa889 <__l2_shared_end+0xbfaea889>
1c00868e:	1af72423          	sw	a5,424(a4)
1c008692:	c3d977b7          	lui	a5,0xc3d97
1c008696:	39878793          	addi	a5,a5,920 # c3d97398 <__l2_shared_end+0xa7d87398>
1c00869a:	1af72623          	sw	a5,428(a4)
1c00869e:	ccf2c7b7          	lui	a5,0xccf2c
1c0086a2:	8de78793          	addi	a5,a5,-1826 # ccf2b8de <__l2_shared_end+0xb0f1b8de>
1c0086a6:	1af72823          	sw	a5,432(a4)
1c0086aa:	ba75f7b7          	lui	a5,0xba75f
1c0086ae:	3bb78793          	addi	a5,a5,955 # ba75f3bb <__l2_shared_end+0x9e74f3bb>
1c0086b2:	1af72a23          	sw	a5,436(a4)
1c0086b6:	38dc77b7          	lui	a5,0x38dc7
1c0086ba:	4c378793          	addi	a5,a5,1219 # 38dc74c3 <__l2_shared_end+0x1cdb74c3>
1c0086be:	1af72c23          	sw	a5,440(a4)
1c0086c2:	d87ef7b7          	lui	a5,0xd87ef
1c0086c6:	17b78793          	addi	a5,a5,379 # d87ef17b <__l2_shared_end+0xbc7df17b>
1c0086ca:	1af72e23          	sw	a5,444(a4)
1c0086ce:	2e4c57b7          	lui	a5,0x2e4c5
1c0086d2:	49e78793          	addi	a5,a5,1182 # 2e4c549e <__l2_shared_end+0x124b549e>
1c0086d6:	1cf72023          	sw	a5,448(a4)
1c0086da:	9fa387b7          	lui	a5,0x9fa38
1c0086de:	98e78793          	addi	a5,a5,-1650 # 9fa3798e <__l2_shared_end+0x83a2798e>
1c0086e2:	1cf72223          	sw	a5,452(a4)
1c0086e6:	37ae17b7          	lui	a5,0x37ae1
1c0086ea:	49d78793          	addi	a5,a5,1181 # 37ae149d <__l2_shared_end+0x1bad149d>
1c0086ee:	1cf72423          	sw	a5,456(a4)
1c0086f2:	2c8647b7          	lui	a5,0x2c864
1c0086f6:	e4f78793          	addi	a5,a5,-433 # 2c863e4f <__l2_shared_end+0x10853e4f>
1c0086fa:	1cf72623          	sw	a5,460(a4)
1c0086fe:	5b87a7b7          	lui	a5,0x5b87a
1c008702:	f2078793          	addi	a5,a5,-224 # 5b879f20 <__l2_shared_end+0x3f869f20>
1c008706:	1cf72823          	sw	a5,464(a4)
1c00870a:	0f2e17b7          	lui	a5,0xf2e1
1c00870e:	4a778793          	addi	a5,a5,1191 # f2e14a7 <__CTOR_LIST__-0xcd1eb5d>
1c008712:	1cf72a23          	sw	a5,468(a4)
1c008716:	d1e417b7          	lui	a5,0xd1e41
1c00871a:	60378793          	addi	a5,a5,1539 # d1e41603 <__l2_shared_end+0xb5e31603>
1c00871e:	1cf72c23          	sw	a5,472(a4)
1c008722:	84aae7b7          	lui	a5,0x84aae
1c008726:	0d078793          	addi	a5,a5,208 # 84aae0d0 <__l2_shared_end+0x68a9e0d0>
1c00872a:	1cf72e23          	sw	a5,476(a4)
1c00872e:	0f85b7b7          	lui	a5,0xf85b
1c008732:	86478793          	addi	a5,a5,-1948 # f85a864 <__CTOR_LIST__-0xc7a57a0>
1c008736:	1ef72023          	sw	a5,480(a4)
1c00873a:	16c097b7          	lui	a5,0x16c09
1c00873e:	6d178793          	addi	a5,a5,1745 # 16c096d1 <__CTOR_LIST__-0x53f6933>
1c008742:	1ef72223          	sw	a5,484(a4)
1c008746:	e82417b7          	lui	a5,0xe8241
1c00874a:	45e78793          	addi	a5,a5,1118 # e824145e <__l2_shared_end+0xcc23145e>
1c00874e:	1ef72423          	sw	a5,488(a4)
1c008752:	46d907b7          	lui	a5,0x46d90
1c008756:	f4e78793          	addi	a5,a5,-178 # 46d8ff4e <__l2_shared_end+0x2ad7ff4e>
1c00875a:	1ef72623          	sw	a5,492(a4)
1c00875e:	03500793          	li	a5,53
1c008762:	1ef70923          	sb	a5,498(a4)
1c008766:	627af7b7          	lui	a5,0x627af
1c00876a:	a4078793          	addi	a5,a5,-1472 # 627aea40 <__l2_shared_end+0x4679ea40>
1c00876e:	1ef72a23          	sw	a5,500(a4)
1c008772:	e53577b7          	lui	a5,0xe5357
1c008776:	18d78793          	addi	a5,a5,397 # e535718d <__l2_shared_end+0xc934718d>
1c00877a:	1ef72c23          	sw	a5,504(a4)
1c00877e:	7f4c17b7          	lui	a5,0x7f4c1
1c008782:	e5778793          	addi	a5,a5,-425 # 7f4c0e57 <__l2_shared_end+0x634b0e57>
1c008786:	1ef72e23          	sw	a5,508(a4)
1c00878a:	198277b7          	lui	a5,0x19827
1c00878e:	8b778793          	addi	a5,a5,-1865 # 198268b7 <__CTOR_LIST__-0x27d974d>
1c008792:	20f72023          	sw	a5,512(a4)
1c008796:	ace3a7b7          	lui	a5,0xace3a
1c00879a:	61c78793          	addi	a5,a5,1564 # ace3a61c <__l2_shared_end+0x90e2a61c>
1c00879e:	20f72223          	sw	a5,516(a4)
1c0087a2:	e8b567b7          	lui	a5,0xe8b56
1c0087a6:	66878793          	addi	a5,a5,1640 # e8b56668 <__l2_shared_end+0xccb46668>
1c0087aa:	20f72423          	sw	a5,520(a4)
1c0087ae:	38ce37b7          	lui	a5,0x38ce3
1c0087b2:	b7178793          	addi	a5,a5,-1167 # 38ce2b71 <__l2_shared_end+0x1ccd2b71>
1c0087b6:	20f72623          	sw	a5,524(a4)
1c0087ba:	2d1a57b7          	lui	a5,0x2d1a5
1c0087be:	45b78793          	addi	a5,a5,1115 # 2d1a545b <__l2_shared_end+0x1119545b>
1c0087c2:	20f72823          	sw	a5,528(a4)
1c0087c6:	945e17b7          	lui	a5,0x945e1
1c0087ca:	fce78793          	addi	a5,a5,-50 # 945e0fce <__l2_shared_end+0x785d0fce>
1c0087ce:	20f72a23          	sw	a5,532(a4)
1c0087d2:	cdd447b7          	lui	a5,0xcdd44
1c0087d6:	e6178793          	addi	a5,a5,-415 # cdd43e61 <__l2_shared_end+0xb1d33e61>
1c0087da:	20f72c23          	sw	a5,536(a4)
1c0087de:	525747b7          	lui	a5,0x52574
1c0087e2:	cec78793          	addi	a5,a5,-788 # 52573cec <__l2_shared_end+0x36563cec>
1c0087e6:	20f72e23          	sw	a5,540(a4)
1c0087ea:	c87117b7          	lui	a5,0xc8711
1c0087ee:	4a278793          	addi	a5,a5,1186 # c87114a2 <__l2_shared_end+0xac7014a2>
1c0087f2:	22f72023          	sw	a5,544(a4)
1c0087f6:	1bfae7b7          	lui	a5,0x1bfae
1c0087fa:	89e78793          	addi	a5,a5,-1890 # 1bfad89e <__CTOR_LIST__-0x52766>
1c0087fe:	22f72223          	sw	a5,548(a4)
1c008802:	61dff7b7          	lui	a5,0x61dff
1c008806:	22d78793          	addi	a5,a5,557 # 61dff22d <__l2_shared_end+0x45def22d>
1c00880a:	22f72423          	sw	a5,552(a4)
1c00880e:	527d77b7          	lui	a5,0x527d7
1c008812:	09478793          	addi	a5,a5,148 # 527d7094 <__l2_shared_end+0x367c7094>
1c008816:	22f72623          	sw	a5,556(a4)
1c00881a:	ae0d47b7          	lui	a5,0xae0d4
1c00881e:	11278793          	addi	a5,a5,274 # ae0d4112 <__l2_shared_end+0x920c4112>
1c008822:	22f72823          	sw	a5,560(a4)
1c008826:	73e3d7b7          	lui	a5,0x73e3d
1c00882a:	f9878793          	addi	a5,a5,-104 # 73e3cf98 <__l2_shared_end+0x57e2cf98>
1c00882e:	22f72a23          	sw	a5,564(a4)
1c008832:	8ff3c7b7          	lui	a5,0x8ff3c
1c008836:	fd378793          	addi	a5,a5,-45 # 8ff3bfd3 <__l2_shared_end+0x73f2bfd3>
1c00883a:	22f72c23          	sw	a5,568(a4)
1c00883e:	990617b7          	lui	a5,0x99061
1c008842:	4b478793          	addi	a5,a5,1204 # 990614b4 <__l2_shared_end+0x7d0514b4>
1c008846:	22f72e23          	sw	a5,572(a4)
1c00884a:	63bca7b7          	lui	a5,0x63bca
1c00884e:	deb78793          	addi	a5,a5,-533 # 63bc9deb <__l2_shared_end+0x47bb9deb>
1c008852:	24f72023          	sw	a5,576(a4)
1c008856:	d63767b7          	lui	a5,0xd6376
1c00885a:	6899                	lui	a7,0x6
1c00885c:	92078793          	addi	a5,a5,-1760 # d6375920 <__l2_shared_end+0xba365920>
1c008860:	4ff5                	li	t6,29
1c008862:	7d488693          	addi	a3,a7,2004 # 67d4 <__CTOR_LIST__-0x1bff9830>
1c008866:	24f72223          	sw	a5,580(a4)
1c00886a:	9ebbf7b7          	lui	a5,0x9ebbf
1c00886e:	1ff709a3          	sb	t6,499(a4)
1c008872:	1ed71823          	sh	a3,496(a4)
1c008876:	69a78793          	addi	a5,a5,1690 # 9ebbf69a <__l2_shared_end+0x82baf69a>
1c00887a:	24f72423          	sw	a5,584(a4)
1c00887e:	845097b7          	lui	a5,0x84509
1c008882:	6d378793          	addi	a5,a5,1747 # 845096d3 <__l2_shared_end+0x684f96d3>
1c008886:	24f72623          	sw	a5,588(a4)
1c00888a:	e65487b7          	lui	a5,0xe6548
1c00888e:	3b178793          	addi	a5,a5,945 # e65483b1 <__l2_shared_end+0xca5383b1>
1c008892:	24f72823          	sw	a5,592(a4)
1c008896:	3d5647b7          	lui	a5,0x3d564
1c00889a:	1c278793          	addi	a5,a5,450 # 3d5641c2 <__l2_shared_end+0x215541c2>
1c00889e:	24f72a23          	sw	a5,596(a4)
1c0088a2:	c3fd07b7          	lui	a5,0xc3fd0
1c0088a6:	17178793          	addi	a5,a5,369 # c3fd0171 <__l2_shared_end+0xa7fc0171>
1c0088aa:	24f72c23          	sw	a5,600(a4)
1c0088ae:	6310a7b7          	lui	a5,0x6310a
1c0088b2:	1f978793          	addi	a5,a5,505 # 6310a1f9 <__l2_shared_end+0x470fa1f9>
1c0088b6:	24f72e23          	sw	a5,604(a4)
1c0088ba:	764cb7b7          	lui	a5,0x764cb
1c0088be:	f0778793          	addi	a5,a5,-249 # 764caf07 <__l2_shared_end+0x5a4baf07>
1c0088c2:	26f72023          	sw	a5,608(a4)
1c0088c6:	b42e17b7          	lui	a5,0xb42e1
1c0088ca:	ae878793          	addi	a5,a5,-1304 # b42e0ae8 <__l2_shared_end+0x982d0ae8>
1c0088ce:	26f72223          	sw	a5,612(a4)
1c0088d2:	65fb07b7          	lui	a5,0x65fb0
1c0088d6:	c1a78793          	addi	a5,a5,-998 # 65fafc1a <__l2_shared_end+0x49f9fc1a>
1c0088da:	26f72423          	sw	a5,616(a4)
1c0088de:	87f3f7b7          	lui	a5,0x87f3f
1c0088e2:	52f78793          	addi	a5,a5,1327 # 87f3f52f <__l2_shared_end+0x6bf2f52f>
1c0088e6:	26f72623          	sw	a5,620(a4)
1c0088ea:	a814e7b7          	lui	a5,0xa814e
1c0088ee:	21478793          	addi	a5,a5,532 # a814e214 <__l2_shared_end+0x8c13e214>
1c0088f2:	26f72823          	sw	a5,624(a4)
1c0088f6:	02f337b7          	lui	a5,0x2f33
1c0088fa:	cb378793          	addi	a5,a5,-845 # 2f32cb3 <__CTOR_LIST__-0x190cd351>
1c0088fe:	26f72a23          	sw	a5,628(a4)
1c008902:	526597b7          	lui	a5,0x52659
1c008906:	07978793          	addi	a5,a5,121 # 52659079 <__l2_shared_end+0x36649079>
1c00890a:	26f72c23          	sw	a5,632(a4)
1c00890e:	de3317b7          	lui	a5,0xde331
1c008912:	e8278793          	addi	a5,a5,-382 # de330e82 <__l2_shared_end+0xc2320e82>
1c008916:	26f72e23          	sw	a5,636(a4)
1c00891a:	7e1777b7          	lui	a5,0x7e177
1c00891e:	20578793          	addi	a5,a5,517 # 7e177205 <__l2_shared_end+0x62167205>
1c008922:	28f72023          	sw	a5,640(a4)
1c008926:	205837b7          	lui	a5,0x20583
1c00892a:	cd478793          	addi	a5,a5,-812 # 20582cd4 <__l2_shared_end+0x4572cd4>
1c00892e:	28f72223          	sw	a5,644(a4)
1c008932:	1f91e7b7          	lui	a5,0x1f91e
1c008936:	28b78793          	addi	a5,a5,651 # 1f91e28b <__l2_shared_end+0x390e28b>
1c00893a:	28f72423          	sw	a5,648(a4)
1c00893e:	6d94b7b7          	lui	a5,0x6d94b
1c008942:	99178793          	addi	a5,a5,-1647 # 6d94a991 <__l2_shared_end+0x5193a991>
1c008946:	28f72623          	sw	a5,652(a4)
1c00894a:	946447b7          	lui	a5,0x94644
1c00894e:	a6778793          	addi	a5,a5,-1433 # 94643a67 <__l2_shared_end+0x78633a67>
1c008952:	28f72823          	sw	a5,656(a4)
1c008956:	be1327b7          	lui	a5,0xbe132
1c00895a:	0cc78793          	addi	a5,a5,204 # be1320cc <__l2_shared_end+0xa21220cc>
1c00895e:	28f72a23          	sw	a5,660(a4)
1c008962:	b81457b7          	lui	a5,0xb8145
1c008966:	8dc78793          	addi	a5,a5,-1828 # b81448dc <__l2_shared_end+0x9c1348dc>
1c00896a:	28f72c23          	sw	a5,664(a4)
1c00896e:	f5c147b7          	lui	a5,0xf5c14
1c008972:	17cd                	addi	a5,a5,-13
1c008974:	28f72e23          	sw	a5,668(a4)
1c008978:	14f4f7b7          	lui	a5,0x14f4f
1c00897c:	d9478793          	addi	a5,a5,-620 # 14f4ed94 <__CTOR_LIST__-0x70b1270>
1c008980:	2af72023          	sw	a5,672(a4)
1c008984:	85c197b7          	lui	a5,0x85c19
1c008988:	bf278793          	addi	a5,a5,-1038 # 85c18bf2 <__l2_shared_end+0x69c08bf2>
1c00898c:	2af72223          	sw	a5,676(a4)
1c008990:	e7bfa7b7          	lui	a5,0xe7bfa
1c008994:	35e78793          	addi	a5,a5,862 # e7bfa35e <__l2_shared_end+0xcbbea35e>
1c008998:	2af72423          	sw	a5,680(a4)
1c00899c:	bb7877b7          	lui	a5,0xbb787
1c0089a0:	a0d78793          	addi	a5,a5,-1523 # bb786a0d <__l2_shared_end+0x9f776a0d>
1c0089a4:	2af72623          	sw	a5,684(a4)
1c0089a8:	4141a7b7          	lui	a5,0x4141a
1c0089ac:	93f78793          	addi	a5,a5,-1729 # 4141993f <__l2_shared_end+0x2540993f>
1c0089b0:	2af72823          	sw	a5,688(a4)
1c0089b4:	61d4e7b7          	lui	a5,0x61d4e
1c0089b8:	e6378793          	addi	a5,a5,-413 # 61d4de63 <__l2_shared_end+0x45d3de63>
1c0089bc:	2af72a23          	sw	a5,692(a4)
1c0089c0:	dccd17b7          	lui	a5,0xdccd1
1c0089c4:	72e78793          	addi	a5,a5,1838 # dccd172e <__l2_shared_end+0xc0cc172e>
1c0089c8:	2af72c23          	sw	a5,696(a4)
1c0089cc:	50f927b7          	lui	a5,0x50f92
1c0089d0:	078d                	addi	a5,a5,3
1c0089d2:	2af72e23          	sw	a5,700(a4)
1c0089d6:	fdd957b7          	lui	a5,0xfdd95
1c0089da:	7b278793          	addi	a5,a5,1970 # fdd957b2 <__l2_shared_end+0xe1d857b2>
1c0089de:	2cf72023          	sw	a5,704(a4)
1c0089e2:	fbfad7b7          	lui	a5,0xfbfad
1c0089e6:	a3e78793          	addi	a5,a5,-1474 # fbfaca3e <__l2_shared_end+0xdff9ca3e>
1c0089ea:	2cf72223          	sw	a5,708(a4)
1c0089ee:	c64ef7b7          	lui	a5,0xc64ef
1c0089f2:	2cd78793          	addi	a5,a5,717 # c64ef2cd <__l2_shared_end+0xaa4df2cd>
1c0089f6:	2cf72423          	sw	a5,712(a4)
1c0089fa:	e4e777b7          	lui	a5,0xe4e77
1c0089fe:	27b78793          	addi	a5,a5,635 # e4e7727b <__l2_shared_end+0xc8e6727b>
1c008a02:	2cf72623          	sw	a5,716(a4)
1c008a06:	6f3cb7b7          	lui	a5,0x6f3cb
1c008a0a:	ae878793          	addi	a5,a5,-1304 # 6f3caae8 <__l2_shared_end+0x533baae8>
1c008a0e:	2cf72823          	sw	a5,720(a4)
1c008a12:	d27be7b7          	lui	a5,0xd27be
1c008a16:	7d778793          	addi	a5,a5,2007 # d27be7d7 <__l2_shared_end+0xb67ae7d7>
1c008a1a:	2cf72a23          	sw	a5,724(a4)
1c008a1e:	a04527b7          	lui	a5,0xa0452
1c008a22:	6da78793          	addi	a5,a5,1754 # a04526da <__l2_shared_end+0x844426da>
1c008a26:	f34ef437          	lui	s0,0xf34ef
1c008a2a:	2cf72c23          	sw	a5,728(a4)
1c008a2e:	45240413          	addi	s0,s0,1106 # f34ef452 <__l2_shared_end+0xd74df452>
1c008a32:	3bb9e7b7          	lui	a5,0x3bb9e
1c008a36:	34872e23          	sw	s0,860(a4)
1c008a3a:	5c378793          	addi	a5,a5,1475 # 3bb9e5c3 <__l2_shared_end+0x1fb8e5c3>
1c008a3e:	541de437          	lui	s0,0x541de
1c008a42:	2cf72e23          	sw	a5,732(a4)
1c008a46:	ed240413          	addi	s0,s0,-302 # 541dded2 <__l2_shared_end+0x381cded2>
1c008a4a:	c08b27b7          	lui	a5,0xc08b2
1c008a4e:	34872c23          	sw	s0,856(a4)
1c008a52:	e2278793          	addi	a5,a5,-478 # c08b1e22 <__l2_shared_end+0xa48a1e22>
1c008a56:	0b438437          	lui	s0,0xb438
1c008a5a:	2ef72023          	sw	a5,736(a4)
1c008a5e:	3f940413          	addi	s0,s0,1017 # b4383f9 <__CTOR_LIST__-0x10bc7c0b>
1c008a62:	926317b7          	lui	a5,0x92631
1c008a66:	30872a23          	sw	s0,788(a4)
1c008a6a:	73a78793          	addi	a5,a5,1850 # 9263173a <__l2_shared_end+0x7662173a>
1c008a6e:	4dcbc437          	lui	s0,0x4dcbc
1c008a72:	2ef72223          	sw	a5,740(a4)
1c008a76:	4fc40413          	addi	s0,s0,1276 # 4dcbc4fc <__l2_shared_end+0x31cac4fc>
1c008a7a:	678d                	lui	a5,0x3
1c008a7c:	34872a23          	sw	s0,852(a4)
1c008a80:	4cb78793          	addi	a5,a5,1227 # 34cb <__CTOR_LIST__-0x1bffcb39>
1c008a84:	da88c437          	lui	s0,0xda88c
1c008a88:	2ef71423          	sh	a5,744(a4)
1c008a8c:	8cb40413          	addi	s0,s0,-1845 # da88b8cb <__l2_shared_end+0xbe87b8cb>
1c008a90:	faaa77b7          	lui	a5,0xfaaa7
1c008a94:	30872c23          	sw	s0,792(a4)
1c008a98:	31b78793          	addi	a5,a5,795 # faaa731b <__l2_shared_end+0xdea9731b>
1c008a9c:	23c7e437          	lui	s0,0x23c7e
1c008aa0:	2ef72623          	sw	a5,748(a4)
1c008aa4:	60240413          	addi	s0,s0,1538 # 23c7e602 <__l2_shared_end+0x7c6e602>
1c008aa8:	f42557b7          	lui	a5,0xf4255
1c008aac:	34872823          	sw	s0,848(a4)
1c008ab0:	5b278793          	addi	a5,a5,1458 # f42555b2 <__l2_shared_end+0xd82455b2>
1c008ab4:	b2d7b437          	lui	s0,0xb2d7b
1c008ab8:	2ef72823          	sw	a5,752(a4)
1c008abc:	e1f40413          	addi	s0,s0,-481 # b2d7ae1f <__l2_shared_end+0x96d6ae1f>
1c008ac0:	001d57b7          	lui	a5,0x1d5
1c008ac4:	30872e23          	sw	s0,796(a4)
1c008ac8:	ca378793          	addi	a5,a5,-861 # 1d4ca3 <__CTOR_LIST__-0x1be2b361>
1c008acc:	9c673437          	lui	s0,0x9c673
1c008ad0:	2ef72a23          	sw	a5,756(a4)
1c008ad4:	2d940413          	addi	s0,s0,729 # 9c6732d9 <__l2_shared_end+0x806632d9>
1c008ad8:	e016d7b7          	lui	a5,0xe016d
1c008adc:	34872623          	sw	s0,844(a4)
1c008ae0:	1d678793          	addi	a5,a5,470 # e016d1d6 <__l2_shared_end+0xc415d1d6>
1c008ae4:	c65d6437          	lui	s0,0xc65d6
1c008ae8:	2ef72c23          	sw	a5,760(a4)
1c008aec:	4de40413          	addi	s0,s0,1246 # c65d64de <__l2_shared_end+0xaa5c64de>
1c008af0:	7714a7b7          	lui	a5,0x7714a
1c008af4:	32872023          	sw	s0,800(a4)
1c008af8:	07d78793          	addi	a5,a5,125 # 7714a07d <__l2_shared_end+0x5b13a07d>
1c008afc:	58630437          	lui	s0,0x58630
1c008b00:	2ef72e23          	sw	a5,764(a4)
1c008b04:	a0740413          	addi	s0,s0,-1529 # 5862fa07 <__l2_shared_end+0x3c61fa07>
1c008b08:	3f4e37b7          	lui	a5,0x3f4e3
1c008b0c:	34872423          	sw	s0,840(a4)
1c008b10:	cb778793          	addi	a5,a5,-841 # 3f4e2cb7 <__l2_shared_end+0x234d2cb7>
1c008b14:	c803a437          	lui	s0,0xc803a
1c008b18:	30f72023          	sw	a5,768(a4)
1c008b1c:	25b40413          	addi	s0,s0,603 # c803a25b <__l2_shared_end+0xac02a25b>
1c008b20:	ac5597b7          	lui	a5,0xac559
1c008b24:	32872223          	sw	s0,804(a4)
1c008b28:	ecf78793          	addi	a5,a5,-305 # ac558ecf <__l2_shared_end+0x90548ecf>
1c008b2c:	036d1437          	lui	s0,0x36d1
1c008b30:	30f72223          	sw	a5,772(a4)
1c008b34:	e6a40413          	addi	s0,s0,-406 # 36d0e6a <__CTOR_LIST__-0x1892f19a>
1c008b38:	06a367b7          	lui	a5,0x6a36
1c008b3c:	542b76b7          	lui	a3,0x542b7
1c008b40:	34872223          	sw	s0,836(a4)
1c008b44:	3b778793          	addi	a5,a5,951 # 6a363b7 <__CTOR_LIST__-0x155c9c4d>
1c008b48:	37968693          	addi	a3,a3,889 # 542b7379 <__l2_shared_end+0x382a7379>
1c008b4c:	4fd93437          	lui	s0,0x4fd93
1c008b50:	30f72423          	sw	a5,776(a4)
1c008b54:	30d72823          	sw	a3,784(a4)
1c008b58:	1f240413          	addi	s0,s0,498 # 4fd931f2 <__l2_shared_end+0x33d831f2>
1c008b5c:	02d00693          	li	a3,45
1c008b60:	954367b7          	lui	a5,0x95436
1c008b64:	2ed705a3          	sb	a3,747(a4)
1c008b68:	32872423          	sw	s0,808(a4)
1c008b6c:	9b078793          	addi	a5,a5,-1616 # 954359b0 <__l2_shared_end+0x794259b0>
1c008b70:	04700693          	li	a3,71
1c008b74:	a5c47437          	lui	s0,0xa5c47
1c008b78:	30f72623          	sw	a5,780(a4)
1c008b7c:	2ed70523          	sb	a3,746(a4)
1c008b80:	f9040413          	addi	s0,s0,-112 # a5c46f90 <__l2_shared_end+0x89c36f90>
1c008b84:	34872023          	sw	s0,832(a4)
1c008b88:	40622437          	lui	s0,0x40622
1c008b8c:	82040413          	addi	s0,s0,-2016 # 40621820 <__l2_shared_end+0x24611820>
1c008b90:	32872623          	sw	s0,812(a4)
1c008b94:	8010e437          	lui	s0,0x8010e
1c008b98:	d2840413          	addi	s0,s0,-728 # 8010dd28 <__l2_shared_end+0x640fdd28>
1c008b9c:	32872e23          	sw	s0,828(a4)
1c008ba0:	3c6c1437          	lui	s0,0x3c6c1
1c008ba4:	84b40413          	addi	s0,s0,-1973 # 3c6c084b <__l2_shared_end+0x206b084b>
1c008ba8:	32872823          	sw	s0,816(a4)
1c008bac:	86976437          	lui	s0,0x86976
1c008bb0:	60f40413          	addi	s0,s0,1551 # 8697660f <__l2_shared_end+0x6a96660f>
1c008bb4:	32872c23          	sw	s0,824(a4)
1c008bb8:	f3e51437          	lui	s0,0xf3e51
1c008bbc:	f7540413          	addi	s0,s0,-139 # f3e50f75 <__l2_shared_end+0xd7e40f75>
1c008bc0:	32872a23          	sw	s0,820(a4)
1c008bc4:	611e7437          	lui	s0,0x611e7
1c008bc8:	b8d40413          	addi	s0,s0,-1139 # 611e6b8d <__l2_shared_end+0x451d6b8d>
1c008bcc:	36872023          	sw	s0,864(a4)
1c008bd0:	a113e437          	lui	s0,0xa113e
1c008bd4:	05a40413          	addi	s0,s0,90 # a113e05a <__l2_shared_end+0x8512e05a>
1c008bd8:	36872223          	sw	s0,868(a4)
1c008bdc:	83a18437          	lui	s0,0x83a18
1c008be0:	3e940413          	addi	s0,s0,1001 # 83a183e9 <__l2_shared_end+0x67a083e9>
1c008be4:	36872423          	sw	s0,872(a4)
1c008be8:	ff4ec437          	lui	s0,0xff4ec
1c008bec:	d0340413          	addi	s0,s0,-765 # ff4ebd03 <__l2_shared_end+0xe34dbd03>
1c008bf0:	36872623          	sw	s0,876(a4)
1c008bf4:	a498d437          	lui	s0,0xa498d
1c008bf8:	95a40413          	addi	s0,s0,-1702 # a498c95a <__l2_shared_end+0x8897c95a>
1c008bfc:	36872823          	sw	s0,880(a4)
1c008c00:	20579437          	lui	s0,0x20579
1c008c04:	20840413          	addi	s0,s0,520 # 20579208 <__l2_shared_end+0x4569208>
1c008c08:	36872a23          	sw	s0,884(a4)
1c008c0c:	a067d437          	lui	s0,0xa067d
1c008c10:	80340413          	addi	s0,s0,-2045 # a067c803 <__l2_shared_end+0x8466c803>
1c008c14:	36872c23          	sw	s0,888(a4)
1c008c18:	93c4f437          	lui	s0,0x93c4f
1c008c1c:	c1940413          	addi	s0,s0,-999 # 93c4ec19 <__l2_shared_end+0x77c3ec19>
1c008c20:	36872e23          	sw	s0,892(a4)
1c008c24:	35dba437          	lui	s0,0x35dba
1c008c28:	dff40413          	addi	s0,s0,-513 # 35db9dff <__l2_shared_end+0x19da9dff>
1c008c2c:	38872023          	sw	s0,896(a4)
1c008c30:	00bb3437          	lui	s0,0xbb3
1c008c34:	f8e40413          	addi	s0,s0,-114 # bb2f8e <__CTOR_LIST__-0x1b44d076>
1c008c38:	38872223          	sw	s0,900(a4)
1c008c3c:	7c4f7437          	lui	s0,0x7c4f7
1c008c40:	75f40413          	addi	s0,s0,1887 # 7c4f775f <__l2_shared_end+0x604e775f>
1c008c44:	38872423          	sw	s0,904(a4)
1c008c48:	e1d8c437          	lui	s0,0xe1d8c
1c008c4c:	d5d40413          	addi	s0,s0,-675 # e1d8bd5d <__l2_shared_end+0xc5d7bd5d>
1c008c50:	38872623          	sw	s0,908(a4)
1c008c54:	70402437          	lui	s0,0x70402
1c008c58:	b7340413          	addi	s0,s0,-1165 # 70401b73 <__l2_shared_end+0x543f1b73>
1c008c5c:	38872823          	sw	s0,912(a4)
1c008c60:	96c86437          	lui	s0,0x96c86
1c008c64:	bbb40413          	addi	s0,s0,-1093 # 96c85bbb <__l2_shared_end+0x7ac75bbb>
1c008c68:	38872a23          	sw	s0,916(a4)
1c008c6c:	9fde3437          	lui	s0,0x9fde3
1c008c70:	06440413          	addi	s0,s0,100 # 9fde3064 <__l2_shared_end+0x83dd3064>
1c008c74:	38872c23          	sw	s0,920(a4)
1c008c78:	4455f437          	lui	s0,0x4455f
1c008c7c:	f7140413          	addi	s0,s0,-143 # 4455ef71 <__l2_shared_end+0x2854ef71>
1c008c80:	38872e23          	sw	s0,924(a4)
1c008c84:	7be67437          	lui	s0,0x7be67
1c008c88:	d8040413          	addi	s0,s0,-640 # 7be66d80 <__l2_shared_end+0x5fe56d80>
1c008c8c:	3a872023          	sw	s0,928(a4)
1c008c90:	23dd8437          	lui	s0,0x23dd8
1c008c94:	dfc40413          	addi	s0,s0,-516 # 23dd7dfc <__l2_shared_end+0x7dc7dfc>
1c008c98:	3a872223          	sw	s0,932(a4)
1c008c9c:	edca8437          	lui	s0,0xedca8
1c008ca0:	e3440413          	addi	s0,s0,-460 # edca7e34 <__l2_shared_end+0xd1c97e34>
1c008ca4:	3a872423          	sw	s0,936(a4)
1c008ca8:	413af437          	lui	s0,0x413af
1c008cac:	58b40413          	addi	s0,s0,1419 # 413af58b <__l2_shared_end+0x2539f58b>
1c008cb0:	3a872623          	sw	s0,940(a4)
1c008cb4:	638e0437          	lui	s0,0x638e0
1c008cb8:	18140413          	addi	s0,s0,385 # 638e0181 <__l2_shared_end+0x478d0181>
1c008cbc:	3a872823          	sw	s0,944(a4)
1c008cc0:	8c806437          	lui	s0,0x8c806
1c008cc4:	f1b40413          	addi	s0,s0,-229 # 8c805f1b <__l2_shared_end+0x707f5f1b>
1c008cc8:	3a872a23          	sw	s0,948(a4)
1c008ccc:	643ca437          	lui	s0,0x643ca
1c008cd0:	72840413          	addi	s0,s0,1832 # 643ca728 <__l2_shared_end+0x483ba728>
1c008cd4:	3a872c23          	sw	s0,952(a4)
1c008cd8:	26234437          	lui	s0,0x26234
1c008cdc:	49d40413          	addi	s0,s0,1181 # 2623449d <__l2_shared_end+0xa22449d>
1c008ce0:	3a872e23          	sw	s0,956(a4)
1c008ce4:	3cf4f437          	lui	s0,0x3cf4f
1c008ce8:	a9140413          	addi	s0,s0,-1391 # 3cf4ea91 <__l2_shared_end+0x20f3ea91>
1c008cec:	3c872023          	sw	s0,960(a4)
1c008cf0:	b4046437          	lui	s0,0xb4046
1c008cf4:	e9040413          	addi	s0,s0,-368 # b4045e90 <__l2_shared_end+0x98035e90>
1c008cf8:	3c872223          	sw	s0,964(a4)
1c008cfc:	d0b62437          	lui	s0,0xd0b62
1c008d00:	61940413          	addi	s0,s0,1561 # d0b62619 <__l2_shared_end+0xb4b52619>
1c008d04:	3c872423          	sw	s0,968(a4)
1c008d08:	11bfc437          	lui	s0,0x11bfc
1c008d0c:	c2040413          	addi	s0,s0,-992 # 11bfbc20 <__CTOR_LIST__-0xa4043e4>
1c008d10:	3c872623          	sw	s0,972(a4)
1c008d14:	c0bf9437          	lui	s0,0xc0bf9
1c008d18:	c4e40413          	addi	s0,s0,-946 # c0bf8c4e <__l2_shared_end+0xa4be8c4e>
1c008d1c:	3c872823          	sw	s0,976(a4)
1c008d20:	0732f437          	lui	s0,0x732f
1c008d24:	ef340413          	addi	s0,s0,-269 # 732eef3 <__CTOR_LIST__-0x14cd1111>
1c008d28:	3c872a23          	sw	s0,980(a4)
1c008d2c:	91eb4437          	lui	s0,0x91eb4
1c008d30:	72d40413          	addi	s0,s0,1837 # 91eb472d <__l2_shared_end+0x75ea472d>
1c008d34:	3c872c23          	sw	s0,984(a4)
1c008d38:	f06cb437          	lui	s0,0xf06cb
1c008d3c:	e7340413          	addi	s0,s0,-397 # f06cae73 <__l2_shared_end+0xd46bae73>
1c008d40:	3c872e23          	sw	s0,988(a4)
1c008d44:	fc400413          	li	s0,-60
1c008d48:	3e8701a3          	sb	s0,995(a4)
1c008d4c:	ce574437          	lui	s0,0xce574
1c008d50:	92240413          	addi	s0,s0,-1758 # ce573922 <__l2_shared_end+0xb2563922>
1c008d54:	3e872223          	sw	s0,996(a4)
1c008d58:	ed9bd437          	lui	s0,0xed9bd
1c008d5c:	f9540413          	addi	s0,s0,-107 # ed9bcf95 <__l2_shared_end+0xd19acf95>
1c008d60:	3e872423          	sw	s0,1000(a4)
1c008d64:	2605d437          	lui	s0,0x2605d
1c008d68:	eb940413          	addi	s0,s0,-327 # 2605ceb9 <__l2_shared_end+0xa04ceb9>
1c008d6c:	3e872623          	sw	s0,1004(a4)
1c008d70:	9277f437          	lui	s0,0x9277f
1c008d74:	93240413          	addi	s0,s0,-1742 # 9277e932 <__l2_shared_end+0x7676e932>
1c008d78:	3e872823          	sw	s0,1008(a4)
1c008d7c:	d2d32437          	lui	s0,0xd2d32
1c008d80:	e4e40413          	addi	s0,s0,-434 # d2d31e4e <__l2_shared_end+0xb6d21e4e>
1c008d84:	3e872a23          	sw	s0,1012(a4)
1c008d88:	5274c437          	lui	s0,0x5274c
1c008d8c:	cbd40413          	addi	s0,s0,-835 # 5274bcbd <__l2_shared_end+0x3673bcbd>
1c008d90:	3e872c23          	sw	s0,1016(a4)
1c008d94:	bf059437          	lui	s0,0xbf059
1c008d98:	7ef40413          	addi	s0,s0,2031 # bf0597ef <__l2_shared_end+0xa30497ef>
1c008d9c:	3e872e23          	sw	s0,1020(a4)
1c008da0:	d9bfb437          	lui	s0,0xd9bfb
1c008da4:	90240413          	addi	s0,s0,-1790 # d9bfa902 <__l2_shared_end+0xbdbea902>
1c008da8:	40872023          	sw	s0,1024(a4)
1c008dac:	9dae4437          	lui	s0,0x9dae4
1c008db0:	86340413          	addi	s0,s0,-1949 # 9dae3863 <__l2_shared_end+0x81ad3863>
1c008db4:	40872223          	sw	s0,1028(a4)
1c008db8:	d3937437          	lui	s0,0xd3937
1c008dbc:	3a740413          	addi	s0,s0,935 # d39373a7 <__l2_shared_end+0xb79273a7>
1c008dc0:	40872423          	sw	s0,1032(a4)
1c008dc4:	f6360437          	lui	s0,0xf6360
1c008dc8:	d0e40413          	addi	s0,s0,-754 # f635fd0e <__l2_shared_end+0xda34fd0e>
1c008dcc:	40872623          	sw	s0,1036(a4)
1c008dd0:	1913e437          	lui	s0,0x1913e
1c008dd4:	c1b40413          	addi	s0,s0,-997 # 1913dc1b <__CTOR_LIST__-0x2ec23e9>
1c008dd8:	40872823          	sw	s0,1040(a4)
1c008ddc:	b4f6f437          	lui	s0,0xb4f6f
1c008de0:	b3b40413          	addi	s0,s0,-1221 # b4f6eb3b <__l2_shared_end+0x98f5eb3b>
1c008de4:	40872a23          	sw	s0,1044(a4)
1c008de8:	e1ecd437          	lui	s0,0xe1ecd
1c008dec:	9bd40413          	addi	s0,s0,-1603 # e1ecc9bd <__l2_shared_end+0xc5ebc9bd>
1c008df0:	40872c23          	sw	s0,1048(a4)
1c008df4:	1d757437          	lui	s0,0x1d757
1c008df8:	d8440413          	addi	s0,s0,-636 # 1d756d84 <__l2_shared_end+0x1746d84>
1c008dfc:	40872e23          	sw	s0,1052(a4)
1c008e00:	bc591437          	lui	s0,0xbc591
1c008e04:	40c40413          	addi	s0,s0,1036 # bc59140c <__l2_shared_end+0xa058140c>
1c008e08:	42872023          	sw	s0,1056(a4)
1c008e0c:	0857c437          	lui	s0,0x857c
1c008e10:	9bb40413          	addi	s0,s0,-1605 # 857b9bb <__CTOR_LIST__-0x13a84649>
1c008e14:	42872223          	sw	s0,1060(a4)
1c008e18:	b6ea6437          	lui	s0,0xb6ea6
1c008e1c:	0aa40413          	addi	s0,s0,170 # b6ea60aa <__l2_shared_end+0x9ae960aa>
1c008e20:	42872423          	sw	s0,1064(a4)
1c008e24:	66fc4437          	lui	s0,0x66fc4
1c008e28:	ab340413          	addi	s0,s0,-1357 # 66fc3ab3 <__l2_shared_end+0x4afb3ab3>
1c008e2c:	42872623          	sw	s0,1068(a4)
1c008e30:	d946f437          	lui	s0,0xd946f
1c008e34:	d5f40413          	addi	s0,s0,-673 # d946ed5f <__l2_shared_end+0xbd45ed5f>
1c008e38:	42872823          	sw	s0,1072(a4)
1c008e3c:	f69f8437          	lui	s0,0xf69f8
1c008e40:	bde40413          	addi	s0,s0,-1058 # f69f7bde <__l2_shared_end+0xda9e7bde>
1c008e44:	42872a23          	sw	s0,1076(a4)
1c008e48:	4e06e437          	lui	s0,0x4e06e
1c008e4c:	6f340413          	addi	s0,s0,1779 # 4e06e6f3 <__l2_shared_end+0x3205e6f3>
1c008e50:	42872c23          	sw	s0,1080(a4)
1c008e54:	7223c437          	lui	s0,0x7223c
1c008e58:	f4e40413          	addi	s0,s0,-178 # 7223bf4e <__l2_shared_end+0x5622bf4e>
1c008e5c:	42872e23          	sw	s0,1084(a4)
1c008e60:	8aa32437          	lui	s0,0x8aa32
1c008e64:	bc040413          	addi	s0,s0,-1088 # 8aa31bc0 <__l2_shared_end+0x6ea21bc0>
1c008e68:	44872023          	sw	s0,1088(a4)
1c008e6c:	d1266437          	lui	s0,0xd1266
1c008e70:	6685                	lui	a3,0x1
1c008e72:	5dd40413          	addi	s0,s0,1501 # d12665dd <__l2_shared_end+0xb52565dd>
1c008e76:	f9a00f13          	li	t5,-102
1c008e7a:	c6f68a13          	addi	s4,a3,-913 # c6f <__CTOR_LIST__-0x1bfff395>
1c008e7e:	44872223          	sw	s0,1092(a4)
1c008e82:	776c5437          	lui	s0,0x776c5
1c008e86:	3fe70123          	sb	t5,994(a4)
1c008e8a:	3f471023          	sh	s4,992(a4)
1c008e8e:	aba40413          	addi	s0,s0,-1350 # 776c4aba <__l2_shared_end+0x5b6b4aba>
1c008e92:	44872423          	sw	s0,1096(a4)
1c008e96:	80786437          	lui	s0,0x80786
1c008e9a:	5e640413          	addi	s0,s0,1510 # 807865e6 <__l2_shared_end+0x647765e6>
1c008e9e:	44872623          	sw	s0,1100(a4)
1c008ea2:	89409437          	lui	s0,0x89409
1c008ea6:	83340413          	addi	s0,s0,-1997 # 89408833 <__l2_shared_end+0x6d3f8833>
1c008eaa:	44872823          	sw	s0,1104(a4)
1c008eae:	2b6d6437          	lui	s0,0x2b6d6
1c008eb2:	2e640413          	addi	s0,s0,742 # 2b6d62e6 <__l2_shared_end+0xf6c62e6>
1c008eb6:	44872a23          	sw	s0,1108(a4)
1c008eba:	4c4e8437          	lui	s0,0x4c4e8
1c008ebe:	eb040413          	addi	s0,s0,-336 # 4c4e7eb0 <__l2_shared_end+0x304d7eb0>
1c008ec2:	44872c23          	sw	s0,1112(a4)
1c008ec6:	67d4f437          	lui	s0,0x67d4f
1c008eca:	77740413          	addi	s0,s0,1911 # 67d4f777 <__l2_shared_end+0x4bd3f777>
1c008ece:	44872e23          	sw	s0,1116(a4)
1c008ed2:	b60ea437          	lui	s0,0xb60ea
1c008ed6:	db640413          	addi	s0,s0,-586 # b60e9db6 <__l2_shared_end+0x9a0d9db6>
1c008eda:	46872023          	sw	s0,1120(a4)
1c008ede:	22eee437          	lui	s0,0x22eee
1c008ee2:	bf540413          	addi	s0,s0,-1035 # 22eedbf5 <__l2_shared_end+0x6eddbf5>
1c008ee6:	46872223          	sw	s0,1124(a4)
1c008eea:	4decf437          	lui	s0,0x4decf
1c008eee:	5fb40413          	addi	s0,s0,1531 # 4decf5fb <__l2_shared_end+0x31ebf5fb>
1c008ef2:	46872423          	sw	s0,1128(a4)
1c008ef6:	e0761437          	lui	s0,0xe0761
1c008efa:	0e740413          	addi	s0,s0,231 # e07610e7 <__l2_shared_end+0xc47510e7>
1c008efe:	46872623          	sw	s0,1132(a4)
1c008f02:	17e7b437          	lui	s0,0x17e7b
1c008f06:	70840413          	addi	s0,s0,1800 # 17e7b708 <__CTOR_LIST__-0x41848fc>
1c008f0a:	46872823          	sw	s0,1136(a4)
1c008f0e:	b2fd0437          	lui	s0,0xb2fd0
1c008f12:	9eb40413          	addi	s0,s0,-1557 # b2fcf9eb <__l2_shared_end+0x96fbf9eb>
1c008f16:	46872a23          	sw	s0,1140(a4)
1c008f1a:	69a6e437          	lui	s0,0x69a6e
1c008f1e:	e6940413          	addi	s0,s0,-407 # 69a6de69 <__l2_shared_end+0x4da5de69>
1c008f22:	46872c23          	sw	s0,1144(a4)
1c008f26:	8697e437          	lui	s0,0x8697e
1c008f2a:	cf040413          	addi	s0,s0,-784 # 8697dcf0 <__l2_shared_end+0x6a96dcf0>
1c008f2e:	46872e23          	sw	s0,1148(a4)
1c008f32:	aae02437          	lui	s0,0xaae02
1c008f36:	63740413          	addi	s0,s0,1591 # aae02637 <__l2_shared_end+0x8edf2637>
1c008f3a:	48872023          	sw	s0,1152(a4)
1c008f3e:	856a9437          	lui	s0,0x856a9
1c008f42:	46040413          	addi	s0,s0,1120 # 856a9460 <__l2_shared_end+0x69699460>
1c008f46:	48872223          	sw	s0,1156(a4)
1c008f4a:	f2981437          	lui	s0,0xf2981
1c008f4e:	dd440413          	addi	s0,s0,-556 # f2980dd4 <__l2_shared_end+0xd6970dd4>
1c008f52:	48872423          	sw	s0,1160(a4)
1c008f56:	eba60437          	lui	s0,0xeba60
1c008f5a:	38d40413          	addi	s0,s0,909 # eba6038d <__l2_shared_end+0xcfa5038d>
1c008f5e:	48872623          	sw	s0,1164(a4)
1c008f62:	34f44437          	lui	s0,0x34f44
1c008f66:	b7340413          	addi	s0,s0,-1165 # 34f43b73 <__l2_shared_end+0x18f33b73>
1c008f6a:	48872823          	sw	s0,1168(a4)
1c008f6e:	7beb8437          	lui	s0,0x7beb8
1c008f72:	fac40413          	addi	s0,s0,-84 # 7beb7fac <__l2_shared_end+0x5fea7fac>
1c008f76:	48872a23          	sw	s0,1172(a4)
1c008f7a:	deef9437          	lui	s0,0xdeef9
1c008f7e:	26140413          	addi	s0,s0,609 # deef9261 <__l2_shared_end+0xc2ee9261>
1c008f82:	48872c23          	sw	s0,1176(a4)
1c008f86:	e7b81437          	lui	s0,0xe7b81
1c008f8a:	7bf40413          	addi	s0,s0,1983 # e7b817bf <__l2_shared_end+0xcbb717bf>
1c008f8e:	48872e23          	sw	s0,1180(a4)
1c008f92:	46a99437          	lui	s0,0x46a99
1c008f96:	13e40413          	addi	s0,s0,318 # 46a9913e <__l2_shared_end+0x2aa8913e>
1c008f9a:	4a872023          	sw	s0,1184(a4)
1c008f9e:	7e6ad437          	lui	s0,0x7e6ad
1c008fa2:	da440413          	addi	s0,s0,-604 # 7e6acda4 <__l2_shared_end+0x6269cda4>
1c008fa6:	4a872223          	sw	s0,1188(a4)
1c008faa:	860d3437          	lui	s0,0x860d3
1c008fae:	8f140413          	addi	s0,s0,-1807 # 860d28f1 <__l2_shared_end+0x6a0c28f1>
1c008fb2:	4a872423          	sw	s0,1192(a4)
1c008fb6:	c6866437          	lui	s0,0xc6866
1c008fba:	76b40413          	addi	s0,s0,1899 # c686676b <__l2_shared_end+0xaa85676b>
1c008fbe:	4a872623          	sw	s0,1196(a4)
1c008fc2:	f0daa437          	lui	s0,0xf0daa
1c008fc6:	8bd40413          	addi	s0,s0,-1859 # f0da98bd <__l2_shared_end+0xd4d998bd>
1c008fca:	4a872823          	sw	s0,1200(a4)
1c008fce:	d47d7437          	lui	s0,0xd47d7
1c008fd2:	9ec40413          	addi	s0,s0,-1556 # d47d69ec <__l2_shared_end+0xb87c69ec>
1c008fd6:	4a872a23          	sw	s0,1204(a4)
1c008fda:	ca113437          	lui	s0,0xca113
1c008fde:	1ce40413          	addi	s0,s0,462 # ca1131ce <__l2_shared_end+0xae1031ce>
1c008fe2:	4a872c23          	sw	s0,1208(a4)
1c008fe6:	afbea437          	lui	s0,0xafbea
1c008fea:	17640413          	addi	s0,s0,374 # afbea176 <__l2_shared_end+0x93bda176>
1c008fee:	4a872e23          	sw	s0,1212(a4)
1c008ff2:	d1707437          	lui	s0,0xd1707
1c008ff6:	7a340413          	addi	s0,s0,1955 # d17077a3 <__l2_shared_end+0xb56f77a3>
1c008ffa:	4c872023          	sw	s0,1216(a4)
1c008ffe:	68f1d437          	lui	s0,0x68f1d
1c009002:	2ca40413          	addi	s0,s0,714 # 68f1d2ca <__l2_shared_end+0x4cf0d2ca>
1c009006:	4c872223          	sw	s0,1220(a4)
1c00900a:	ca22b437          	lui	s0,0xca22b
1c00900e:	6cf40413          	addi	s0,s0,1743 # ca22b6cf <__l2_shared_end+0xae21b6cf>
1c009012:	4c872423          	sw	s0,1224(a4)
1c009016:	619a3437          	lui	s0,0x619a3
1c00901a:	c3440413          	addi	s0,s0,-972 # 619a2c34 <__l2_shared_end+0x45992c34>
1c00901e:	4c872623          	sw	s0,1228(a4)
1c009022:	ae468437          	lui	s0,0xae468
1c009026:	cb240413          	addi	s0,s0,-846 # ae467cb2 <__l2_shared_end+0x92457cb2>
1c00902a:	4c872823          	sw	s0,1232(a4)
1c00902e:	51e8d437          	lui	s0,0x51e8d
1c009032:	a2740413          	addi	s0,s0,-1497 # 51e8ca27 <__l2_shared_end+0x35e7ca27>
1c009036:	4c872a23          	sw	s0,1236(a4)
1c00903a:	4469                	li	s0,26
1c00903c:	4c870d23          	sb	s0,1242(a4)
1c009040:	4409                	li	s0,2
1c009042:	4c870da3          	sb	s0,1243(a4)
1c009046:	f14c4437          	lui	s0,0xf14c4
1c00904a:	26840413          	addi	s0,s0,616 # f14c4268 <__l2_shared_end+0xd54b4268>
1c00904e:	4c872e23          	sw	s0,1244(a4)
1c009052:	4098b437          	lui	s0,0x4098b
1c009056:	b8640413          	addi	s0,s0,-1146 # 4098ab86 <__l2_shared_end+0x2497ab86>
1c00905a:	4e872023          	sw	s0,1248(a4)
1c00905e:	07d7b437          	lui	s0,0x7d7b
1c009062:	9d140413          	addi	s0,s0,-1583 # 7d7a9d1 <__CTOR_LIST__-0x14285633>
1c009066:	4e872223          	sw	s0,1252(a4)
1c00906a:	87873437          	lui	s0,0x87873
1c00906e:	66540413          	addi	s0,s0,1637 # 87873665 <__l2_shared_end+0x6b863665>
1c009072:	4e872423          	sw	s0,1256(a4)
1c009076:	0b97f437          	lui	s0,0xb97f
1c00907a:	12840413          	addi	s0,s0,296 # b97f128 <__CTOR_LIST__-0x10680edc>
1c00907e:	4e872623          	sw	s0,1260(a4)
1c009082:	1b5ad437          	lui	s0,0x1b5ad
1c009086:	0d240413          	addi	s0,s0,210 # 1b5ad0d2 <__CTOR_LIST__-0xa52f32>
1c00908a:	4e872823          	sw	s0,1264(a4)
1c00908e:	c8495437          	lui	s0,0xc8495
1c009092:	3c540413          	addi	s0,s0,965 # c84953c5 <__l2_shared_end+0xac4853c5>
1c009096:	4e872a23          	sw	s0,1268(a4)
1c00909a:	9e932437          	lui	s0,0x9e932
1c00909e:	19640413          	addi	s0,s0,406 # 9e932196 <__l2_shared_end+0x82922196>
1c0090a2:	4e872c23          	sw	s0,1272(a4)
1c0090a6:	f6804437          	lui	s0,0xf6804
1c0090aa:	e4440413          	addi	s0,s0,-444 # f6803e44 <__l2_shared_end+0xda7f3e44>
1c0090ae:	4e872e23          	sw	s0,1276(a4)
1c0090b2:	ef19c437          	lui	s0,0xef19c
1c0090b6:	71140413          	addi	s0,s0,1809 # ef19c711 <__l2_shared_end+0xd318c711>
1c0090ba:	50872023          	sw	s0,1280(a4)
1c0090be:	7ccc9437          	lui	s0,0x7ccc9
1c0090c2:	4a340413          	addi	s0,s0,1187 # 7ccc94a3 <__l2_shared_end+0x60cb94a3>
1c0090c6:	50872223          	sw	s0,1284(a4)
1c0090ca:	8ed83437          	lui	s0,0x8ed83
1c0090ce:	2f240413          	addi	s0,s0,754 # 8ed832f2 <__l2_shared_end+0x72d732f2>
1c0090d2:	50872423          	sw	s0,1288(a4)
1c0090d6:	d6773437          	lui	s0,0xd6773
1c0090da:	dd940413          	addi	s0,s0,-551 # d6772dd9 <__l2_shared_end+0xba762dd9>
1c0090de:	50872623          	sw	s0,1292(a4)
1c0090e2:	60e61437          	lui	s0,0x60e61
1c0090e6:	38a40413          	addi	s0,s0,906 # 60e6138a <__l2_shared_end+0x44e5138a>
1c0090ea:	50872823          	sw	s0,1296(a4)
1c0090ee:	da9e6437          	lui	s0,0xda9e6
1c0090f2:	70f40413          	addi	s0,s0,1807 # da9e670f <__l2_shared_end+0xbe9d670f>
1c0090f6:	50872a23          	sw	s0,1300(a4)
1c0090fa:	87d66437          	lui	s0,0x87d66
1c0090fe:	7b740413          	addi	s0,s0,1975 # 87d667b7 <__l2_shared_end+0x6bd567b7>
1c009102:	50872c23          	sw	s0,1304(a4)
1c009106:	3d3b6437          	lui	s0,0x3d3b6
1c00910a:	be440413          	addi	s0,s0,-1052 # 3d3b5be4 <__l2_shared_end+0x213a5be4>
1c00910e:	50872e23          	sw	s0,1308(a4)
1c009112:	be010437          	lui	s0,0xbe010
1c009116:	c7840413          	addi	s0,s0,-904 # be00fc78 <__l2_shared_end+0xa1fffc78>
1c00911a:	52872023          	sw	s0,1312(a4)
1c00911e:	2da14437          	lui	s0,0x2da14
1c009122:	8a740413          	addi	s0,s0,-1881 # 2da138a7 <__l2_shared_end+0x11a038a7>
1c009126:	52872223          	sw	s0,1316(a4)
1c00912a:	482fd437          	lui	s0,0x482fd
1c00912e:	a0240413          	addi	s0,s0,-1534 # 482fca02 <__l2_shared_end+0x2c2eca02>
1c009132:	52872423          	sw	s0,1320(a4)
1c009136:	4aadd437          	lui	s0,0x4aadd
1c00913a:	11e40413          	addi	s0,s0,286 # 4aadd11e <__l2_shared_end+0x2eacd11e>
1c00913e:	52872623          	sw	s0,1324(a4)
1c009142:	8c4eb437          	lui	s0,0x8c4eb
1c009146:	62240413          	addi	s0,s0,1570 # 8c4eb622 <__l2_shared_end+0x704db622>
1c00914a:	52872823          	sw	s0,1328(a4)
1c00914e:	c7ebc437          	lui	s0,0xc7ebc
1c009152:	97f40413          	addi	s0,s0,-1665 # c7ebb97f <__l2_shared_end+0xabeab97f>
1c009156:	52872a23          	sw	s0,1332(a4)
1c00915a:	55528437          	lui	s0,0x55528
1c00915e:	57140413          	addi	s0,s0,1393 # 55528571 <__l2_shared_end+0x39518571>
1c009162:	52872c23          	sw	s0,1336(a4)
1c009166:	69c2b437          	lui	s0,0x69c2b
1c00916a:	2ab40413          	addi	s0,s0,683 # 69c2b2ab <__l2_shared_end+0x4dc1b2ab>
1c00916e:	52872e23          	sw	s0,1340(a4)
1c009172:	4406d437          	lui	s0,0x4406d
1c009176:	f0840413          	addi	s0,s0,-248 # 4406cf08 <__l2_shared_end+0x2805cf08>
1c00917a:	54872023          	sw	s0,1344(a4)
1c00917e:	22a6b437          	lui	s0,0x22a6b
1c009182:	7efd                	lui	t4,0xfffff
1c009184:	aa240413          	addi	s0,s0,-1374 # 22a6aaa2 <__l2_shared_end+0x6a5aaa2>
1c009188:	c7ee8993          	addi	s3,t4,-898 # ffffec7e <__l2_shared_end+0xe3feec7e>
1c00918c:	54872223          	sw	s0,1348(a4)
1c009190:	656a7437          	lui	s0,0x656a7
1c009194:	4d371c23          	sh	s3,1240(a4)
1c009198:	e0440413          	addi	s0,s0,-508 # 656a6e04 <__l2_shared_end+0x49696e04>
1c00919c:	54872423          	sw	s0,1352(a4)
1c0091a0:	c182b437          	lui	s0,0xc182b
1c0091a4:	aea40413          	addi	s0,s0,-1302 # c182aaea <__l2_shared_end+0xa581aaea>
1c0091a8:	54872623          	sw	s0,1356(a4)
1c0091ac:	a344b437          	lui	s0,0xa344b
1c0091b0:	4ac40413          	addi	s0,s0,1196 # a344b4ac <__l2_shared_end+0x8743b4ac>
1c0091b4:	54872823          	sw	s0,1360(a4)
1c0091b8:	0b1ad437          	lui	s0,0xb1ad
1c0091bc:	45240413          	addi	s0,s0,1106 # b1ad452 <__CTOR_LIST__-0x10e52bb2>
1c0091c0:	54872a23          	sw	s0,1364(a4)
1c0091c4:	233a3437          	lui	s0,0x233a3
1c0091c8:	3e640413          	addi	s0,s0,998 # 233a33e6 <__l2_shared_end+0x73933e6>
1c0091cc:	54872c23          	sw	s0,1368(a4)
1c0091d0:	95afc437          	lui	s0,0x95afc
1c0091d4:	f2840413          	addi	s0,s0,-216 # 95afbf28 <__l2_shared_end+0x79aebf28>
1c0091d8:	54872e23          	sw	s0,1372(a4)
1c0091dc:	148ce437          	lui	s0,0x148ce
1c0091e0:	62c40413          	addi	s0,s0,1580 # 148ce62c <__CTOR_LIST__-0x77319d8>
1c0091e4:	56872023          	sw	s0,1376(a4)
1c0091e8:	92402437          	lui	s0,0x92402
1c0091ec:	95f40413          	addi	s0,s0,-1697 # 9240195f <__l2_shared_end+0x763f195f>
1c0091f0:	56872223          	sw	s0,1380(a4)
1c0091f4:	7b981437          	lui	s0,0x7b981
1c0091f8:	dd040413          	addi	s0,s0,-560 # 7b980dd0 <__l2_shared_end+0x5f970dd0>
1c0091fc:	56872423          	sw	s0,1384(a4)
1c009200:	1591f437          	lui	s0,0x1591f
1c009204:	07d40413          	addi	s0,s0,125 # 1591f07d <__CTOR_LIST__-0x66e0f87>
1c009208:	56872623          	sw	s0,1388(a4)
1c00920c:	6a342437          	lui	s0,0x6a342
1c009210:	70740413          	addi	s0,s0,1799 # 6a342707 <__l2_shared_end+0x4e332707>
1c009214:	56872823          	sw	s0,1392(a4)
1c009218:	f8783437          	lui	s0,0xf8783
1c00921c:	f7940413          	addi	s0,s0,-135 # f8782f79 <__l2_shared_end+0xdc772f79>
1c009220:	56872a23          	sw	s0,1396(a4)
1c009224:	c7680437          	lui	s0,0xc7680
1c009228:	6ea40413          	addi	s0,s0,1770 # c76806ea <__l2_shared_end+0xab6706ea>
1c00922c:	56872c23          	sw	s0,1400(a4)
1c009230:	35f81437          	lui	s0,0x35f81
1c009234:	ce040413          	addi	s0,s0,-800 # 35f80ce0 <__l2_shared_end+0x19f70ce0>
1c009238:	56872e23          	sw	s0,1404(a4)
1c00923c:	0a67c437          	lui	s0,0xa67c
1c009240:	76e40413          	addi	s0,s0,1902 # a67c76e <__CTOR_LIST__-0x11983896>
1c009244:	58872023          	sw	s0,1408(a4)
1c009248:	358f4437          	lui	s0,0x358f4
1c00924c:	b0440413          	addi	s0,s0,-1276 # 358f3b04 <__l2_shared_end+0x198e3b04>
1c009250:	58872223          	sw	s0,1412(a4)
1c009254:	6f97a437          	lui	s0,0x6f97a
1c009258:	4a240413          	addi	s0,s0,1186 # 6f97a4a2 <__l2_shared_end+0x5396a4a2>
1c00925c:	58872423          	sw	s0,1416(a4)
1c009260:	1a41e437          	lui	s0,0x1a41e
1c009264:	db540413          	addi	s0,s0,-587 # 1a41ddb5 <__CTOR_LIST__-0x1be224f>
1c009268:	58872623          	sw	s0,1420(a4)
1c00926c:	d4878437          	lui	s0,0xd4878
1c009270:	21240413          	addi	s0,s0,530 # d4878212 <__l2_shared_end+0xb8868212>
1c009274:	58872823          	sw	s0,1424(a4)
1c009278:	2083f437          	lui	s0,0x2083f
1c00927c:	0cd40413          	addi	s0,s0,205 # 2083f0cd <__l2_shared_end+0x482f0cd>
1c009280:	58872a23          	sw	s0,1428(a4)
1c009284:	e2a99437          	lui	s0,0xe2a99
1c009288:	1a740413          	addi	s0,s0,423 # e2a991a7 <__l2_shared_end+0xc6a891a7>
1c00928c:	58872c23          	sw	s0,1432(a4)
1c009290:	e3845437          	lui	s0,0xe3845
1c009294:	2b740413          	addi	s0,s0,695 # e38452b7 <__l2_shared_end+0xc78352b7>
1c009298:	58872e23          	sw	s0,1436(a4)
1c00929c:	d01f1437          	lui	s0,0xd01f1
1c0092a0:	46140413          	addi	s0,s0,1121 # d01f1461 <__l2_shared_end+0xb41e1461>
1c0092a4:	5a872023          	sw	s0,1440(a4)
1c0092a8:	db0e4437          	lui	s0,0xdb0e4
1c0092ac:	a4240413          	addi	s0,s0,-1470 # db0e3a42 <__l2_shared_end+0xbf0d3a42>
1c0092b0:	5a872223          	sw	s0,1444(a4)
1c0092b4:	57a74437          	lui	s0,0x57a74
1c0092b8:	4c740413          	addi	s0,s0,1223 # 57a744c7 <__l2_shared_end+0x3ba644c7>
1c0092bc:	5a872423          	sw	s0,1448(a4)
1c0092c0:	281f9437          	lui	s0,0x281f9
1c0092c4:	047d                	addi	s0,s0,31
1c0092c6:	5a872623          	sw	s0,1452(a4)
1c0092ca:	7cc23437          	lui	s0,0x7cc23
1c0092ce:	9dd40413          	addi	s0,s0,-1571 # 7cc229dd <__l2_shared_end+0x60c129dd>
1c0092d2:	5a872823          	sw	s0,1456(a4)
1c0092d6:	593c7437          	lui	s0,0x593c7
1c0092da:	1f840413          	addi	s0,s0,504 # 593c71f8 <__l2_shared_end+0x3d3b71f8>
1c0092de:	5a872a23          	sw	s0,1460(a4)
1c0092e2:	b7364437          	lui	s0,0xb7364
1c0092e6:	e7440413          	addi	s0,s0,-396 # b7363e74 <__l2_shared_end+0x9b353e74>
1c0092ea:	5a872c23          	sw	s0,1464(a4)
1c0092ee:	29e9d437          	lui	s0,0x29e9d
1c0092f2:	b9940413          	addi	s0,s0,-1127 # 29e9cb99 <__l2_shared_end+0xde8cb99>
1c0092f6:	5a872e23          	sw	s0,1468(a4)
1c0092fa:	23259437          	lui	s0,0x23259
1c0092fe:	7c240413          	addi	s0,s0,1986 # 232597c2 <__l2_shared_end+0x72497c2>
1c009302:	5c872023          	sw	s0,1472(a4)
1c009306:	fa16b437          	lui	s0,0xfa16b
1c00930a:	51140413          	addi	s0,s0,1297 # fa16b511 <__l2_shared_end+0xde15b511>
1c00930e:	5c872223          	sw	s0,1476(a4)
1c009312:	43c69437          	lui	s0,0x43c69
1c009316:	29f40413          	addi	s0,s0,671 # 43c6929f <__l2_shared_end+0x27c5929f>
1c00931a:	5c872423          	sw	s0,1480(a4)
1c00931e:	e1d41437          	lui	s0,0xe1d41
1c009322:	e6f40413          	addi	s0,s0,-401 # e1d40e6f <__l2_shared_end+0xc5d30e6f>
1c009326:	5c872623          	sw	s0,1484(a4)
1c00932a:	fd500413          	li	s0,-43
1c00932e:	5c870923          	sb	s0,1490(a4)
1c009332:	07d00413          	li	s0,125
1c009336:	5c8709a3          	sb	s0,1491(a4)
1c00933a:	f256c437          	lui	s0,0xf256c
1c00933e:	e8440413          	addi	s0,s0,-380 # f256be84 <__l2_shared_end+0xd655be84>
1c009342:	5c872a23          	sw	s0,1492(a4)
1c009346:	9d0d3437          	lui	s0,0x9d0d3
1c00934a:	81b40413          	addi	s0,s0,-2021 # 9d0d281b <__l2_shared_end+0x810c281b>
1c00934e:	5c872c23          	sw	s0,1496(a4)
1c009352:	684e6437          	lui	s0,0x684e6
1c009356:	80a40413          	addi	s0,s0,-2038 # 684e580a <__l2_shared_end+0x4c4d580a>
1c00935a:	5c872e23          	sw	s0,1500(a4)
1c00935e:	70b6f437          	lui	s0,0x70b6f
1c009362:	a8c40413          	addi	s0,s0,-1396 # 70b6ea8c <__l2_shared_end+0x54b5ea8c>
1c009366:	5e872023          	sw	s0,1504(a4)
1c00936a:	a1bd2437          	lui	s0,0xa1bd2
1c00936e:	5a540413          	addi	s0,s0,1445 # a1bd25a5 <__l2_shared_end+0x85bc25a5>
1c009372:	5e872223          	sw	s0,1508(a4)
1c009376:	b02fd437          	lui	s0,0xb02fd
1c00937a:	3ef40413          	addi	s0,s0,1007 # b02fd3ef <__l2_shared_end+0x942ed3ef>
1c00937e:	5e872423          	sw	s0,1512(a4)
1c009382:	0ef41437          	lui	s0,0xef41
1c009386:	21440413          	addi	s0,s0,532 # ef41214 <__CTOR_LIST__-0xd0bedf0>
1c00938a:	5e872623          	sw	s0,1516(a4)
1c00938e:	c2f4b437          	lui	s0,0xc2f4b
1c009392:	05840413          	addi	s0,s0,88 # c2f4b058 <__l2_shared_end+0xa6f3b058>
1c009396:	5e872823          	sw	s0,1520(a4)
1c00939a:	af928437          	lui	s0,0xaf928
1c00939e:	73940413          	addi	s0,s0,1849 # af928739 <__l2_shared_end+0x93918739>
1c0093a2:	5e872a23          	sw	s0,1524(a4)
1c0093a6:	924b3437          	lui	s0,0x924b3
1c0093aa:	3de40413          	addi	s0,s0,990 # 924b33de <__l2_shared_end+0x764a33de>
1c0093ae:	5e872c23          	sw	s0,1528(a4)
1c0093b2:	47670437          	lui	s0,0x47670
1c0093b6:	40240413          	addi	s0,s0,1026 # 47670402 <__l2_shared_end+0x2b660402>
1c0093ba:	5e872e23          	sw	s0,1532(a4)
1c0093be:	607c6437          	lui	s0,0x607c6
1c0093c2:	78e40413          	addi	s0,s0,1934 # 607c678e <__l2_shared_end+0x447b678e>
1c0093c6:	60872023          	sw	s0,1536(a4)
1c0093ca:	8e5c2437          	lui	s0,0x8e5c2
1c0093ce:	dd140413          	addi	s0,s0,-559 # 8e5c1dd1 <__l2_shared_end+0x725b1dd1>
1c0093d2:	60872223          	sw	s0,1540(a4)
1c0093d6:	05021437          	lui	s0,0x5021
1c0093da:	e6840413          	addi	s0,s0,-408 # 5020e68 <__CTOR_LIST__-0x16fdf19c>
1c0093de:	60872423          	sw	s0,1544(a4)
1c0093e2:	95e08437          	lui	s0,0x95e08
1c0093e6:	3d540413          	addi	s0,s0,981 # 95e083d5 <__l2_shared_end+0x79df83d5>
1c0093ea:	60872623          	sw	s0,1548(a4)
1c0093ee:	712e8437          	lui	s0,0x712e8
1c0093f2:	27240413          	addi	s0,s0,626 # 712e8272 <__l2_shared_end+0x552d8272>
1c0093f6:	60872823          	sw	s0,1552(a4)
1c0093fa:	cc463437          	lui	s0,0xcc463
1c0093fe:	17740413          	addi	s0,s0,375 # cc463177 <__l2_shared_end+0xb0453177>
1c009402:	60872a23          	sw	s0,1556(a4)
1c009406:	9f2cc437          	lui	s0,0x9f2cc
1c00940a:	4e340413          	addi	s0,s0,1251 # 9f2cc4e3 <__l2_shared_end+0x832bc4e3>
1c00940e:	60872c23          	sw	s0,1560(a4)
1c009412:	7365                	lui	t1,0xffff9
1c009414:	93ae7437          	lui	s0,0x93ae7
1c009418:	27730913          	addi	s2,t1,631 # ffff9277 <__l2_shared_end+0xe3fe9277>
1c00941c:	30440413          	addi	s0,s0,772 # 93ae7304 <__l2_shared_end+0x77ad7304>
1c009420:	5d271823          	sh	s2,1488(a4)
1c009424:	60872e23          	sw	s0,1564(a4)
1c009428:	f6962737          	lui	a4,0xf6962
1c00942c:	1c007637          	lui	a2,0x1c007
1c009430:	34670713          	addi	a4,a4,838 # f6962346 <__l2_shared_end+0xda952346>
1c009434:	8ce62023          	sw	a4,-1856(a2) # 1c0068c0 <sk_a.1592>
1c009438:	25f62737          	lui	a4,0x25f62
1c00943c:	8c060793          	addi	a5,a2,-1856
1c009440:	fb270713          	addi	a4,a4,-78 # 25f61fb2 <__l2_shared_end+0x9f51fb2>
1c009444:	c3d8                	sw	a4,4(a5)
1c009446:	1f4b7737          	lui	a4,0x1f4b7
1c00944a:	bb970713          	addi	a4,a4,-1095 # 1f4b6bb9 <__l2_shared_end+0x34a6bb9>
1c00944e:	c798                	sw	a4,8(a5)
1c009450:	b3384737          	lui	a4,0xb3384
1c009454:	a5c70713          	addi	a4,a4,-1444 # b3383a5c <__l2_shared_end+0x97373a5c>
1c009458:	c7d8                	sw	a4,12(a5)
1c00945a:	f3080737          	lui	a4,0xf3080
1c00945e:	7c870713          	addi	a4,a4,1992 # f30807c8 <__l2_shared_end+0xd70707c8>
1c009462:	cb98                	sw	a4,16(a5)
1c009464:	8417d737          	lui	a4,0x8417d
1c009468:	c3b70713          	addi	a4,a4,-965 # 8417cc3b <__l2_shared_end+0x6816cc3b>
1c00946c:	cbd8                	sw	a4,20(a5)
1c00946e:	be48e737          	lui	a4,0xbe48e
1c009472:	bbe70713          	addi	a4,a4,-1090 # be48dbbe <__l2_shared_end+0xa247dbbe>
1c009476:	cf98                	sw	a4,24(a5)
1c009478:	423b2737          	lui	a4,0x423b2
1c00947c:	5e070713          	addi	a4,a4,1504 # 423b25e0 <__l2_shared_end+0x263a25e0>
1c009480:	cfd8                	sw	a4,28(a5)
1c009482:	61960737          	lui	a4,0x61960
1c009486:	b6c70713          	addi	a4,a4,-1172 # 6195fb6c <__l2_shared_end+0x4594fb6c>
1c00948a:	d398                	sw	a4,32(a5)
1c00948c:	98ce1737          	lui	a4,0x98ce1
1c009490:	28770713          	addi	a4,a4,647 # 98ce1287 <__l2_shared_end+0x7ccd1287>
1c009494:	d3d8                	sw	a4,36(a5)
1c009496:	5c3ba737          	lui	a4,0x5c3ba
1c00949a:	52570713          	addi	a4,a4,1317 # 5c3ba525 <__l2_shared_end+0x403aa525>
1c00949e:	d798                	sw	a4,40(a5)
1c0094a0:	43818737          	lui	a4,0x43818
1c0094a4:	cc870713          	addi	a4,a4,-824 # 43817cc8 <__l2_shared_end+0x27807cc8>
1c0094a8:	d7d8                	sw	a4,44(a5)
1c0094aa:	406bc737          	lui	a4,0x406bc
1c0094ae:	4af70713          	addi	a4,a4,1199 # 406bc4af <__l2_shared_end+0x246ac4af>
1c0094b2:	db98                	sw	a4,48(a5)
1c0094b4:	4b4c8737          	lui	a4,0x4b4c8
1c0094b8:	b6270713          	addi	a4,a4,-1182 # 4b4c7b62 <__l2_shared_end+0x2f4b7b62>
1c0094bc:	dbd8                	sw	a4,52(a5)
1c0094be:	2c383737          	lui	a4,0x2c383
1c0094c2:	ebd70713          	addi	a4,a4,-323 # 2c382ebd <__l2_shared_end+0x10372ebd>
1c0094c6:	df98                	sw	a4,56(a5)
1c0094c8:	487e4737          	lui	a4,0x487e4
1c0094cc:	5ec70713          	addi	a4,a4,1516 # 487e45ec <__l2_shared_end+0x2c7d45ec>
1c0094d0:	dfd8                	sw	a4,60(a5)
1c0094d2:	840c1737          	lui	a4,0x840c1
1c0094d6:	3a770713          	addi	a4,a4,935 # 840c13a7 <__l2_shared_end+0x680b13a7>
1c0094da:	c3b8                	sw	a4,64(a5)
1c0094dc:	5c60c737          	lui	a4,0x5c60c
1c0094e0:	21270713          	addi	a4,a4,530 # 5c60c212 <__l2_shared_end+0x405fc212>
1c0094e4:	c3f8                	sw	a4,68(a5)
1c0094e6:	bf156737          	lui	a4,0xbf156
1c0094ea:	94770713          	addi	a4,a4,-1721 # bf155947 <__l2_shared_end+0xa3145947>
1c0094ee:	c7b8                	sw	a4,72(a5)
1c0094f0:	e46d4737          	lui	a4,0xe46d4
1c0094f4:	70870713          	addi	a4,a4,1800 # e46d4708 <__l2_shared_end+0xc86c4708>
1c0094f8:	c7f8                	sw	a4,76(a5)
1c0094fa:	2970b737          	lui	a4,0x2970b
1c0094fe:	ab870713          	addi	a4,a4,-1352 # 2970aab8 <__l2_shared_end+0xd6faab8>
1c009502:	cbb8                	sw	a4,80(a5)
1c009504:	ef9dc737          	lui	a4,0xef9dc
1c009508:	98a70713          	addi	a4,a4,-1654 # ef9db98a <__l2_shared_end+0xd39cb98a>
1c00950c:	cbf8                	sw	a4,84(a5)
1c00950e:	f1c18737          	lui	a4,0xf1c18
1c009512:	69370713          	addi	a4,a4,1683 # f1c18693 <__l2_shared_end+0xd5c08693>
1c009516:	cfb8                	sw	a4,88(a5)
1c009518:	98c35737          	lui	a4,0x98c35
1c00951c:	31270713          	addi	a4,a4,786 # 98c35312 <__l2_shared_end+0x7cc25312>
1c009520:	cff8                	sw	a4,92(a5)
1c009522:	f9add737          	lui	a4,0xf9add
1c009526:	0c670713          	addi	a4,a4,198 # f9add0c6 <__l2_shared_end+0xddacd0c6>
1c00952a:	d3b8                	sw	a4,96(a5)
1c00952c:	64228737          	lui	a4,0x64228
1c009530:	ed970713          	addi	a4,a4,-295 # 64227ed9 <__l2_shared_end+0x48217ed9>
1c009534:	d3f8                	sw	a4,100(a5)
1c009536:	02e42737          	lui	a4,0x2e42
1c00953a:	6a070713          	addi	a4,a4,1696 # 2e426a0 <__CTOR_LIST__-0x191bd964>
1c00953e:	d7b8                	sw	a4,104(a5)
1c009540:	269ab737          	lui	a4,0x269ab
1c009544:	51170713          	addi	a4,a4,1297 # 269ab511 <__l2_shared_end+0xa99b511>
1c009548:	d7f8                	sw	a4,108(a5)
1c00954a:	10164737          	lui	a4,0x10164
1c00954e:	fa270713          	addi	a4,a4,-94 # 10163fa2 <__CTOR_LIST__-0xbe9c062>
1c009552:	dbb8                	sw	a4,112(a5)
1c009554:	6f0a2737          	lui	a4,0x6f0a2
1c009558:	22a70713          	addi	a4,a4,554 # 6f0a222a <__l2_shared_end+0x5309222a>
1c00955c:	dbf8                	sw	a4,116(a5)
1c00955e:	147af737          	lui	a4,0x147af
1c009562:	22b70713          	addi	a4,a4,555 # 147af22b <__CTOR_LIST__-0x7850dd9>
1c009566:	dfb8                	sw	a4,120(a5)
1c009568:	326f6737          	lui	a4,0x326f6
1c00956c:	f0170713          	addi	a4,a4,-255 # 326f5f01 <__l2_shared_end+0x166e5f01>
1c009570:	dff8                	sw	a4,124(a5)
1c009572:	7574e737          	lui	a4,0x7574e
1c009576:	26170713          	addi	a4,a4,609 # 7574e261 <__l2_shared_end+0x5973e261>
1c00957a:	08e7a023          	sw	a4,128(a5)
1c00957e:	57b7d737          	lui	a4,0x57b7d
1c009582:	c8c70713          	addi	a4,a4,-884 # 57b7cc8c <__l2_shared_end+0x3bb6cc8c>
1c009586:	08e7a223          	sw	a4,132(a5)
1c00958a:	53000737          	lui	a4,0x53000
1c00958e:	6a470713          	addi	a4,a4,1700 # 530006a4 <__l2_shared_end+0x36ff06a4>
1c009592:	08e7a423          	sw	a4,136(a5)
1c009596:	c250a737          	lui	a4,0xc250a
1c00959a:	075d                	addi	a4,a4,23
1c00959c:	08e7a623          	sw	a4,140(a5)
1c0095a0:	999f4737          	lui	a4,0x999f4
1c0095a4:	92d70713          	addi	a4,a4,-1747 # 999f392d <__l2_shared_end+0x7d9e392d>
1c0095a8:	08e7a823          	sw	a4,144(a5)
1c0095ac:	73aa7737          	lui	a4,0x73aa7
1c0095b0:	44970713          	addi	a4,a4,1097 # 73aa7449 <__l2_shared_end+0x57a97449>
1c0095b4:	08e7aa23          	sw	a4,148(a5)
1c0095b8:	bafbf737          	lui	a4,0xbafbf
1c0095bc:	d1370713          	addi	a4,a4,-749 # bafbed13 <__l2_shared_end+0x9efaed13>
1c0095c0:	08e7ac23          	sw	a4,152(a5)
1c0095c4:	16371737          	lui	a4,0x16371
1c0095c8:	84670713          	addi	a4,a4,-1978 # 16370846 <__CTOR_LIST__-0x5c8f7be>
1c0095cc:	08e7ae23          	sw	a4,156(a5)
1c0095d0:	8154a737          	lui	a4,0x8154a
1c0095d4:	81370713          	addi	a4,a4,-2029 # 81549813 <__l2_shared_end+0x65539813>
1c0095d8:	0ae7a023          	sw	a4,160(a5)
1c0095dc:	9ec8b737          	lui	a4,0x9ec8b
1c0095e0:	eb070713          	addi	a4,a4,-336 # 9ec8aeb0 <__l2_shared_end+0x82c7aeb0>
1c0095e4:	0ae7a223          	sw	a4,164(a5)
1c0095e8:	75026737          	lui	a4,0x75026
1c0095ec:	0dd70713          	addi	a4,a4,221 # 750260dd <__l2_shared_end+0x590160dd>
1c0095f0:	0ae7a423          	sw	a4,168(a5)
1c0095f4:	75e22737          	lui	a4,0x75e22
1c0095f8:	84b70713          	addi	a4,a4,-1973 # 75e2184b <__l2_shared_end+0x59e1184b>
1c0095fc:	0ae7a623          	sw	a4,172(a5)
1c009600:	b4f88737          	lui	a4,0xb4f88
1c009604:	ab970713          	addi	a4,a4,-1351 # b4f87ab9 <__l2_shared_end+0x98f77ab9>
1c009608:	0ae7a823          	sw	a4,176(a5)
1c00960c:	b582c737          	lui	a4,0xb582c
1c009610:	6ad70713          	addi	a4,a4,1709 # b582c6ad <__l2_shared_end+0x9981c6ad>
1c009614:	0ae7aa23          	sw	a4,180(a5)
1c009618:	68a5c737          	lui	a4,0x68a5c
1c00961c:	97370713          	addi	a4,a4,-1677 # 68a5b973 <__l2_shared_end+0x4ca4b973>
1c009620:	0ae7ac23          	sw	a4,184(a5)
1c009624:	b2232737          	lui	a4,0xb2232
1c009628:	47370713          	addi	a4,a4,1139 # b2232473 <__l2_shared_end+0x96222473>
1c00962c:	0ae7ae23          	sw	a4,188(a5)
1c009630:	da18f737          	lui	a4,0xda18f
1c009634:	40d70713          	addi	a4,a4,1037 # da18f40d <__l2_shared_end+0xbe17f40d>
1c009638:	0ce7a023          	sw	a4,192(a5)
1c00963c:	08691737          	lui	a4,0x8691
1c009640:	f0a70713          	addi	a4,a4,-246 # 8690f0a <__CTOR_LIST__-0x1396f0fa>
1c009644:	0ce7a223          	sw	a4,196(a5)
1c009648:	83e94737          	lui	a4,0x83e94
1c00964c:	b6670713          	addi	a4,a4,-1178 # 83e93b66 <__l2_shared_end+0x67e83b66>
1c009650:	0ce7a423          	sw	a4,200(a5)
1c009654:	6912e737          	lui	a4,0x6912e
1c009658:	a3e70713          	addi	a4,a4,-1474 # 6912da3e <__l2_shared_end+0x4d11da3e>
1c00965c:	0ce7a623          	sw	a4,204(a5)
1c009660:	e9027737          	lui	a4,0xe9027
1c009664:	71270713          	addi	a4,a4,1810 # e9027712 <__l2_shared_end+0xcd017712>
1c009668:	0ce7a823          	sw	a4,208(a5)
1c00966c:	b12bc737          	lui	a4,0xb12bc
1c009670:	87d70713          	addi	a4,a4,-1923 # b12bb87d <__l2_shared_end+0x952ab87d>
1c009674:	0ce7aa23          	sw	a4,212(a5)
1c009678:	c02ce737          	lui	a4,0xc02ce
1c00967c:	21d70713          	addi	a4,a4,541 # c02ce21d <__l2_shared_end+0xa42be21d>
1c009680:	0ce7ac23          	sw	a4,216(a5)
1c009684:	ca266737          	lui	a4,0xca266
1c009688:	e7670713          	addi	a4,a4,-394 # ca265e76 <__l2_shared_end+0xae255e76>
1c00968c:	0ce7ae23          	sw	a4,220(a5)
1c009690:	6c251737          	lui	a4,0x6c251
1c009694:	db670713          	addi	a4,a4,-586 # 6c250db6 <__l2_shared_end+0x50240db6>
1c009698:	0ee7a023          	sw	a4,224(a5)
1c00969c:	13222737          	lui	a4,0x13222
1c0096a0:	7bb70713          	addi	a4,a4,1979 # 132227bb <__CTOR_LIST__-0x8ddd849>
1c0096a4:	0ee7a223          	sw	a4,228(a5)
1c0096a8:	d7c1c737          	lui	a4,0xd7c1c
1c0096ac:	21570713          	addi	a4,a4,533 # d7c1c215 <__l2_shared_end+0xbbc0c215>
1c0096b0:	0ee7a423          	sw	a4,232(a5)
1c0096b4:	aae65737          	lui	a4,0xaae65
1c0096b8:	65f70713          	addi	a4,a4,1631 # aae6565f <__l2_shared_end+0x8ee5565f>
1c0096bc:	0ee7a623          	sw	a4,236(a5)
1c0096c0:	83cc1737          	lui	a4,0x83cc1
1c0096c4:	84c70713          	addi	a4,a4,-1972 # 83cc084c <__l2_shared_end+0x67cb084c>
1c0096c8:	0ee7a823          	sw	a4,240(a5)
1c0096cc:	686ba737          	lui	a4,0x686ba
1c0096d0:	14570713          	addi	a4,a4,325 # 686ba145 <__l2_shared_end+0x4c6aa145>
1c0096d4:	0ee7aa23          	sw	a4,244(a5)
1c0096d8:	03000713          	li	a4,48
1c0096dc:	0ee78d23          	sb	a4,250(a5)
1c0096e0:	07500713          	li	a4,117
1c0096e4:	0ee78da3          	sb	a4,251(a5)
1c0096e8:	6702f737          	lui	a4,0x6702f
1c0096ec:	c6c70713          	addi	a4,a4,-916 # 6702ec6c <__l2_shared_end+0x4b01ec6c>
1c0096f0:	0ee7ae23          	sw	a4,252(a5)
1c0096f4:	e11d3737          	lui	a4,0xe11d3
1c0096f8:	dc070713          	addi	a4,a4,-576 # e11d2dc0 <__l2_shared_end+0xc51c2dc0>
1c0096fc:	10e7a023          	sw	a4,256(a5)
1c009700:	73a84737          	lui	a4,0x73a84
1c009704:	cca70713          	addi	a4,a4,-822 # 73a83cca <__l2_shared_end+0x57a73cca>
1c009708:	10e7a223          	sw	a4,260(a5)
1c00970c:	8ec85737          	lui	a4,0x8ec85
1c009710:	68170713          	addi	a4,a4,1665 # 8ec85681 <__l2_shared_end+0x72c75681>
1c009714:	10e7a423          	sw	a4,264(a5)
1c009718:	f890b737          	lui	a4,0xf890b
1c00971c:	ed670713          	addi	a4,a4,-298 # f890aed6 <__l2_shared_end+0xdc8faed6>
1c009720:	10e7a623          	sw	a4,268(a5)
1c009724:	ad5aa737          	lui	a4,0xad5aa
1c009728:	b4270713          	addi	a4,a4,-1214 # ad5a9b42 <__l2_shared_end+0x91599b42>
1c00972c:	10e7a823          	sw	a4,272(a5)
1c009730:	fe536737          	lui	a4,0xfe536
1c009734:	a8c70713          	addi	a4,a4,-1396 # fe535a8c <__l2_shared_end+0xe2525a8c>
1c009738:	10e7aa23          	sw	a4,276(a5)
1c00973c:	07d28737          	lui	a4,0x7d28
1c009740:	72670713          	addi	a4,a4,1830 # 7d28726 <__CTOR_LIST__-0x142d78de>
1c009744:	10e7ac23          	sw	a4,280(a5)
1c009748:	b118e737          	lui	a4,0xb118e
1c00974c:	b4f70713          	addi	a4,a4,-1201 # b118db4f <__l2_shared_end+0x9517db4f>
1c009750:	10e7ae23          	sw	a4,284(a5)
1c009754:	9e482737          	lui	a4,0x9e482
1c009758:	a2470713          	addi	a4,a4,-1500 # 9e481a24 <__l2_shared_end+0x82471a24>
1c00975c:	12e7a023          	sw	a4,288(a5)
1c009760:	aaab5737          	lui	a4,0xaaab5
1c009764:	7e79                	lui	t3,0xffffe
1c009766:	08570713          	addi	a4,a4,133 # aaab5085 <__l2_shared_end+0x8eaa5085>
1c00976a:	300e0393          	addi	t2,t3,768 # ffffe300 <__l2_shared_end+0xe3fee300>
1c00976e:	12e7a223          	sw	a4,292(a5)
1c009772:	cc9a5737          	lui	a4,0xcc9a5
1c009776:	0e779c23          	sh	t2,248(a5)
1c00977a:	57b70713          	addi	a4,a4,1403 # cc9a557b <__l2_shared_end+0xb099557b>
1c00977e:	12e7a423          	sw	a4,296(a5)
1c009782:	39b5b737          	lui	a4,0x39b5b
1c009786:	46a70713          	addi	a4,a4,1130 # 39b5b46a <__l2_shared_end+0x1db4b46a>
1c00978a:	12e7a623          	sw	a4,300(a5)
1c00978e:	851b8737          	lui	a4,0x851b8
1c009792:	26c70713          	addi	a4,a4,620 # 851b826c <__l2_shared_end+0x691a826c>
1c009796:	12e7a823          	sw	a4,304(a5)
1c00979a:	a6ca0737          	lui	a4,0xa6ca0
1c00979e:	54370713          	addi	a4,a4,1347 # a6ca0543 <__l2_shared_end+0x8ac90543>
1c0097a2:	12e7aa23          	sw	a4,308(a5)
1c0097a6:	39804737          	lui	a4,0x39804
1c0097aa:	76a70713          	addi	a4,a4,1898 # 3980476a <__l2_shared_end+0x1d7f476a>
1c0097ae:	12e7ac23          	sw	a4,312(a5)
1c0097b2:	36f73737          	lui	a4,0x36f73
1c0097b6:	ccc70713          	addi	a4,a4,-820 # 36f72ccc <__l2_shared_end+0x1af62ccc>
1c0097ba:	12e7ae23          	sw	a4,316(a5)
1c0097be:	44a35737          	lui	a4,0x44a35
1c0097c2:	65f70713          	addi	a4,a4,1631 # 44a3565f <__l2_shared_end+0x28a2565f>
1c0097c6:	14e7a023          	sw	a4,320(a5)
1c0097ca:	a79af737          	lui	a4,0xa79af
1c0097ce:	0d170713          	addi	a4,a4,209 # a79af0d1 <__l2_shared_end+0x8b99f0d1>
1c0097d2:	14e7a223          	sw	a4,324(a5)
1c0097d6:	157a6737          	lui	a4,0x157a6
1c0097da:	63a70713          	addi	a4,a4,1594 # 157a663a <__CTOR_LIST__-0x68599ca>
1c0097de:	14e7a423          	sw	a4,328(a5)
1c0097e2:	10b27737          	lui	a4,0x10b27
1c0097e6:	1ce70713          	addi	a4,a4,462 # 10b271ce <__CTOR_LIST__-0xb4d8e36>
1c0097ea:	14e7a623          	sw	a4,332(a5)
1c0097ee:	4030c737          	lui	a4,0x4030c
1c0097f2:	9d970713          	addi	a4,a4,-1575 # 4030b9d9 <__l2_shared_end+0x242fb9d9>
1c0097f6:	14e7a823          	sw	a4,336(a5)
1c0097fa:	a1a24737          	lui	a4,0xa1a24
1c0097fe:	83a70713          	addi	a4,a4,-1990 # a1a2383a <__l2_shared_end+0x85a1383a>
1c009802:	14e7aa23          	sw	a4,340(a5)
1c009806:	9bf3e737          	lui	a4,0x9bf3e
1c00980a:	e0c70713          	addi	a4,a4,-500 # 9bf3de0c <__l2_shared_end+0x7ff2de0c>
1c00980e:	14e7ac23          	sw	a4,344(a5)
1c009812:	ad609737          	lui	a4,0xad609
1c009816:	99e70713          	addi	a4,a4,-1634 # ad60899e <__l2_shared_end+0x915f899e>
1c00981a:	14e7ae23          	sw	a4,348(a5)
1c00981e:	b7133737          	lui	a4,0xb7133
1c009822:	34670713          	addi	a4,a4,838 # b7133346 <__l2_shared_end+0x9b123346>
1c009826:	16e7a023          	sw	a4,352(a5)
1c00982a:	3a724737          	lui	a4,0x3a724
1c00982e:	dab70713          	addi	a4,a4,-597 # 3a723dab <__l2_shared_end+0x1e713dab>
1c009832:	16e7a223          	sw	a4,356(a5)
1c009836:	721d6737          	lui	a4,0x721d6
1c00983a:	c7170713          	addi	a4,a4,-911 # 721d5c71 <__l2_shared_end+0x561c5c71>
1c00983e:	16e7a423          	sw	a4,360(a5)
1c009842:	6bb48737          	lui	a4,0x6bb48
1c009846:	99b70713          	addi	a4,a4,-1637 # 6bb4799b <__l2_shared_end+0x4fb3799b>
1c00984a:	16e7a623          	sw	a4,364(a5)
1c00984e:	31dbd737          	lui	a4,0x31dbd
1c009852:	e7b70713          	addi	a4,a4,-389 # 31dbce7b <__l2_shared_end+0x15dace7b>
1c009856:	16e7a823          	sw	a4,368(a5)
1c00985a:	86773737          	lui	a4,0x86773
1c00985e:	bb970713          	addi	a4,a4,-1095 # 86772bb9 <__l2_shared_end+0x6a762bb9>
1c009862:	16e7aa23          	sw	a4,372(a5)
1c009866:	6c14d737          	lui	a4,0x6c14d
1c00986a:	94a70713          	addi	a4,a4,-1718 # 6c14c94a <__l2_shared_end+0x5013c94a>
1c00986e:	16e7ac23          	sw	a4,376(a5)
1c009872:	af9bb737          	lui	a4,0xaf9bb
1c009876:	81570713          	addi	a4,a4,-2027 # af9ba815 <__l2_shared_end+0x939aa815>
1c00987a:	16e7ae23          	sw	a4,380(a5)
1c00987e:	cc1f6737          	lui	a4,0xcc1f6
1c009882:	0e170713          	addi	a4,a4,225 # cc1f60e1 <__l2_shared_end+0xb01e60e1>
1c009886:	18e7a023          	sw	a4,384(a5)
1c00988a:	57e63737          	lui	a4,0x57e63
1c00988e:	88370713          	addi	a4,a4,-1917 # 57e62883 <__l2_shared_end+0x3be52883>
1c009892:	18e7a223          	sw	a4,388(a5)
1c009896:	bebaf737          	lui	a4,0xbebaf
1c00989a:	ba670713          	addi	a4,a4,-1114 # bebaeba6 <__l2_shared_end+0xa2b9eba6>
1c00989e:	18e7a423          	sw	a4,392(a5)
1c0098a2:	86591737          	lui	a4,0x86591
1c0098a6:	1f870713          	addi	a4,a4,504 # 865911f8 <__l2_shared_end+0x6a5811f8>
1c0098aa:	18e7a623          	sw	a4,396(a5)
1c0098ae:	72f18737          	lui	a4,0x72f18
1c0098b2:	7dc70713          	addi	a4,a4,2012 # 72f187dc <__l2_shared_end+0x56f087dc>
1c0098b6:	18e7a823          	sw	a4,400(a5)
1c0098ba:	88a3c737          	lui	a4,0x88a3c
1c0098be:	a3470713          	addi	a4,a4,-1484 # 88a3ba34 <__l2_shared_end+0x6ca2ba34>
1c0098c2:	18e7aa23          	sw	a4,404(a5)
1c0098c6:	85a13737          	lui	a4,0x85a13
1c0098ca:	35e70713          	addi	a4,a4,862 # 85a1335e <__l2_shared_end+0x69a0335e>
1c0098ce:	18e7ac23          	sw	a4,408(a5)
1c0098d2:	58919737          	lui	a4,0x58919
1c0098d6:	b6870713          	addi	a4,a4,-1176 # 58918b68 <__l2_shared_end+0x3c908b68>
1c0098da:	18e7ae23          	sw	a4,412(a5)
1c0098de:	0948f737          	lui	a4,0x948f
1c0098e2:	c8370713          	addi	a4,a4,-893 # 948ec83 <__CTOR_LIST__-0x12b71381>
1c0098e6:	1ae7a023          	sw	a4,416(a5)
1c0098ea:	1b69d737          	lui	a4,0x1b69d
1c0098ee:	9c570713          	addi	a4,a4,-1595 # 1b69c9c5 <__CTOR_LIST__-0x96363f>
1c0098f2:	1ae7a223          	sw	a4,420(a5)
1c0098f6:	7981a737          	lui	a4,0x7981a
1c0098fa:	09570713          	addi	a4,a4,149 # 7981a095 <__l2_shared_end+0x5d80a095>
1c0098fe:	1ae7a423          	sw	a4,424(a5)
1c009902:	c1778737          	lui	a4,0xc1778
1c009906:	5a470713          	addi	a4,a4,1444 # c17785a4 <__l2_shared_end+0xa57685a4>
1c00990a:	1ae7a623          	sw	a4,428(a5)
1c00990e:	bca15737          	lui	a4,0xbca15
1c009912:	a7270713          	addi	a4,a4,-1422 # bca14a72 <__l2_shared_end+0xa0a04a72>
1c009916:	1ae7a823          	sw	a4,432(a5)
1c00991a:	ead56737          	lui	a4,0xead56
1c00991e:	4f670713          	addi	a4,a4,1270 # ead564f6 <__l2_shared_end+0xced464f6>
1c009922:	1ae7aa23          	sw	a4,436(a5)
1c009926:	729ac737          	lui	a4,0x729ac
1c00992a:	64970713          	addi	a4,a4,1609 # 729ac649 <__l2_shared_end+0x5699c649>
1c00992e:	1ae7ac23          	sw	a4,440(a5)
1c009932:	313ee737          	lui	a4,0x313ee
1c009936:	a7c70713          	addi	a4,a4,-1412 # 313eda7c <__l2_shared_end+0x153dda7c>
1c00993a:	1ae7ae23          	sw	a4,444(a5)
1c00993e:	25672737          	lui	a4,0x25672
1c009942:	ee770713          	addi	a4,a4,-281 # 25671ee7 <__l2_shared_end+0x9661ee7>
1c009946:	1ce7a023          	sw	a4,448(a5)
1c00994a:	47e86737          	lui	a4,0x47e86
1c00994e:	57e70713          	addi	a4,a4,1406 # 47e8657e <__l2_shared_end+0x2be7657e>
1c009952:	1ce7a223          	sw	a4,452(a5)
1c009956:	ab476737          	lui	a4,0xab476
1c00995a:	9df70713          	addi	a4,a4,-1569 # ab4759df <__l2_shared_end+0x8f4659df>
1c00995e:	1ce7a423          	sw	a4,456(a5)
1c009962:	73759737          	lui	a4,0x73759
1c009966:	6e270713          	addi	a4,a4,1762 # 737596e2 <__l2_shared_end+0x577496e2>
1c00996a:	1ce7a623          	sw	a4,460(a5)
1c00996e:	59613737          	lui	a4,0x59613
1c009972:	dac70713          	addi	a4,a4,-596 # 59612dac <__l2_shared_end+0x3d602dac>
1c009976:	1ce7a823          	sw	a4,464(a5)
1c00997a:	ae996737          	lui	a4,0xae996
1c00997e:	6f970713          	addi	a4,a4,1785 # ae9966f9 <__l2_shared_end+0x929866f9>
1c009982:	1ce7aa23          	sw	a4,468(a5)
1c009986:	655fa737          	lui	a4,0x655fa
1c00998a:	51670713          	addi	a4,a4,1302 # 655fa516 <__l2_shared_end+0x495ea516>
1c00998e:	1ce7ac23          	sw	a4,472(a5)
1c009992:	0be09737          	lui	a4,0xbe09
1c009996:	f4e70713          	addi	a4,a4,-178 # be08f4e <__CTOR_LIST__-0x101f70b6>
1c00999a:	1ce7ae23          	sw	a4,476(a5)
1c00999e:	13916737          	lui	a4,0x13916
1c0099a2:	7ea70713          	addi	a4,a4,2026 # 139167ea <__CTOR_LIST__-0x86e981a>
1c0099a6:	1ee7a023          	sw	a4,480(a5)
1c0099aa:	d845a737          	lui	a4,0xd845a
1c0099ae:	05a70713          	addi	a4,a4,90 # d845a05a <__l2_shared_end+0xbc44a05a>
1c0099b2:	1ee7a223          	sw	a4,484(a5)
1c0099b6:	3cd7d737          	lui	a4,0x3cd7d
1c0099ba:	05170713          	addi	a4,a4,81 # 3cd7d051 <__l2_shared_end+0x20d6d051>
1c0099be:	1ee7a423          	sw	a4,488(a5)
1c0099c2:	5cbe6737          	lui	a4,0x5cbe6
1c0099c6:	9d170713          	addi	a4,a4,-1583 # 5cbe59d1 <__l2_shared_end+0x40bd59d1>
1c0099ca:	1ee7a623          	sw	a4,492(a5)
1c0099ce:	40000713          	li	a4,1024
1c0099d2:	1ee79823          	sh	a4,496(a5)
1c0099d6:	476d                	li	a4,27
1c0099d8:	1ee78923          	sb	a4,498(a5)
1c0099dc:	4741                	li	a4,16
1c0099de:	1ee789a3          	sb	a4,499(a5)
1c0099e2:	5018b737          	lui	a4,0x5018b
1c0099e6:	f3370713          	addi	a4,a4,-205 # 5018af33 <__l2_shared_end+0x3417af33>
1c0099ea:	1ee7aa23          	sw	a4,500(a5)
1c0099ee:	8d2bc737          	lui	a4,0x8d2bc
1c0099f2:	60c70713          	addi	a4,a4,1548 # 8d2bc60c <__l2_shared_end+0x712ac60c>
1c0099f6:	1ee7ac23          	sw	a4,504(a5)
1c0099fa:	d7be3737          	lui	a4,0xd7be3
1c0099fe:	6c670713          	addi	a4,a4,1734 # d7be36c6 <__l2_shared_end+0xbbbd36c6>
1c009a02:	1ee7ae23          	sw	a4,508(a5)
1c009a06:	98d45737          	lui	a4,0x98d45
1c009a0a:	d0e70713          	addi	a4,a4,-754 # 98d44d0e <__l2_shared_end+0x7cd34d0e>
1c009a0e:	20e7a023          	sw	a4,512(a5)
1c009a12:	20883737          	lui	a4,0x20883
1c009a16:	71e70713          	addi	a4,a4,1822 # 2088371e <__l2_shared_end+0x487371e>
1c009a1a:	20e7a223          	sw	a4,516(a5)
1c009a1e:	d3a77737          	lui	a4,0xd3a77
1c009a22:	3eb70713          	addi	a4,a4,1003 # d3a773eb <__l2_shared_end+0xb7a673eb>
1c009a26:	20e7a423          	sw	a4,520(a5)
1c009a2a:	2da47737          	lui	a4,0x2da47
1c009a2e:	9bc70713          	addi	a4,a4,-1604 # 2da469bc <__l2_shared_end+0x11a369bc>
1c009a32:	20e7a623          	sw	a4,524(a5)
1c009a36:	ec039737          	lui	a4,0xec039
1c009a3a:	1cb70713          	addi	a4,a4,459 # ec0391cb <__l2_shared_end+0xd00291cb>
1c009a3e:	20e7a823          	sw	a4,528(a5)
1c009a42:	0702c737          	lui	a4,0x702c
1c009a46:	88b70713          	addi	a4,a4,-1909 # 702b88b <__CTOR_LIST__-0x14fd4779>
1c009a4a:	20e7aa23          	sw	a4,532(a5)
1c009a4e:	b476c737          	lui	a4,0xb476c
1c009a52:	a6370713          	addi	a4,a4,-1437 # b476ba63 <__l2_shared_end+0x9875ba63>
1c009a56:	20e7ac23          	sw	a4,536(a5)
1c009a5a:	65801737          	lui	a4,0x65801
1c009a5e:	18270713          	addi	a4,a4,386 # 65801182 <__l2_shared_end+0x497f1182>
1c009a62:	20e7ae23          	sw	a4,540(a5)
1c009a66:	a63d5737          	lui	a4,0xa63d5
1c009a6a:	52970713          	addi	a4,a4,1321 # a63d5529 <__l2_shared_end+0x8a3c5529>
1c009a6e:	22e7a023          	sw	a4,544(a5)
1c009a72:	89397737          	lui	a4,0x89397
1c009a76:	54870713          	addi	a4,a4,1352 # 89397548 <__l2_shared_end+0x6d387548>
1c009a7a:	22e7a223          	sw	a4,548(a5)
1c009a7e:	36442737          	lui	a4,0x36442
1c009a82:	24770713          	addi	a4,a4,583 # 36442247 <__l2_shared_end+0x1a432247>
1c009a86:	22e7a423          	sw	a4,552(a5)
1c009a8a:	c37ec737          	lui	a4,0xc37ec
1c009a8e:	c7270713          	addi	a4,a4,-910 # c37ebc72 <__l2_shared_end+0xa77dbc72>
1c009a92:	22e7a623          	sw	a4,556(a5)
1c009a96:	8c154737          	lui	a4,0x8c154
1c009a9a:	61670713          	addi	a4,a4,1558 # 8c154616 <__l2_shared_end+0x70144616>
1c009a9e:	22e7a823          	sw	a4,560(a5)
1c009aa2:	e2436737          	lui	a4,0xe2436
1c009aa6:	3a670713          	addi	a4,a4,934 # e24363a6 <__l2_shared_end+0xc64263a6>
1c009aaa:	22e7aa23          	sw	a4,564(a5)
1c009aae:	38d6a737          	lui	a4,0x38d6a
1c009ab2:	be670713          	addi	a4,a4,-1050 # 38d69be6 <__l2_shared_end+0x1cd59be6>
1c009ab6:	22e7ac23          	sw	a4,568(a5)
1c009aba:	713c5737          	lui	a4,0x713c5
1c009abe:	acc70713          	addi	a4,a4,-1332 # 713c4acc <__l2_shared_end+0x553b4acc>
1c009ac2:	22e7ae23          	sw	a4,572(a5)
1c009ac6:	ce753737          	lui	a4,0xce753
1c009aca:	71e70713          	addi	a4,a4,1822 # ce75371e <__l2_shared_end+0xb274371e>
1c009ace:	24e7a023          	sw	a4,576(a5)
1c009ad2:	8a96b737          	lui	a4,0x8a96b
1c009ad6:	48870713          	addi	a4,a4,1160 # 8a96b488 <__l2_shared_end+0x6e95b488>
1c009ada:	24e7a223          	sw	a4,580(a5)
1c009ade:	72b7e737          	lui	a4,0x72b7e
1c009ae2:	b2c70713          	addi	a4,a4,-1236 # 72b7db2c <__l2_shared_end+0x56b6db2c>
1c009ae6:	24e7a423          	sw	a4,584(a5)
1c009aea:	6aafe737          	lui	a4,0x6aafe
1c009aee:	9a070713          	addi	a4,a4,-1632 # 6aafd9a0 <__l2_shared_end+0x4eaed9a0>
1c009af2:	24e7a623          	sw	a4,588(a5)
1c009af6:	55689737          	lui	a4,0x55689
1c009afa:	1a370713          	addi	a4,a4,419 # 556891a3 <__l2_shared_end+0x396791a3>
1c009afe:	24e7a823          	sw	a4,592(a5)
1c009b02:	58a67737          	lui	a4,0x58a67
1c009b06:	40070713          	addi	a4,a4,1024 # 58a67400 <__l2_shared_end+0x3ca57400>
1c009b0a:	24e7aa23          	sw	a4,596(a5)
1c009b0e:	6693a737          	lui	a4,0x6693a
1c009b12:	12d70713          	addi	a4,a4,301 # 6693a12d <__l2_shared_end+0x4a92a12d>
1c009b16:	24e7ac23          	sw	a4,600(a5)
1c009b1a:	74e12737          	lui	a4,0x74e12
1c009b1e:	bf670713          	addi	a4,a4,-1034 # 74e11bf6 <__l2_shared_end+0x58e01bf6>
1c009b22:	24e7ae23          	sw	a4,604(a5)
1c009b26:	18724737          	lui	a4,0x18724
1c009b2a:	40370713          	addi	a4,a4,1027 # 18724403 <__CTOR_LIST__-0x38dbc01>
1c009b2e:	26e7a023          	sw	a4,608(a5)
1c009b32:	050c9737          	lui	a4,0x50c9
1c009b36:	02d70713          	addi	a4,a4,45 # 50c902d <__CTOR_LIST__-0x16f36fd7>
1c009b3a:	26e7a223          	sw	a4,612(a5)
1c009b3e:	6c9a3737          	lui	a4,0x6c9a3
1c009b42:	69870713          	addi	a4,a4,1688 # 6c9a3698 <__l2_shared_end+0x50993698>
1c009b46:	26e7a423          	sw	a4,616(a5)
1c009b4a:	c9307737          	lui	a4,0xc9307
1c009b4e:	d6570713          	addi	a4,a4,-667 # c9306d65 <__l2_shared_end+0xad2f6d65>
1c009b52:	26e7a623          	sw	a4,620(a5)
1c009b56:	f6aa5737          	lui	a4,0xf6aa5
1c009b5a:	79570713          	addi	a4,a4,1941 # f6aa5795 <__l2_shared_end+0xdaa95795>
1c009b5e:	26e7a823          	sw	a4,624(a5)
1c009b62:	f4233737          	lui	a4,0xf4233
1c009b66:	0e470713          	addi	a4,a4,228 # f42330e4 <__l2_shared_end+0xd82230e4>
1c009b6a:	26e7aa23          	sw	a4,628(a5)
1c009b6e:	2d4ac737          	lui	a4,0x2d4ac
1c009b72:	c1770713          	addi	a4,a4,-1001 # 2d4abc17 <__l2_shared_end+0x1149bc17>
1c009b76:	26e7ac23          	sw	a4,632(a5)
1c009b7a:	c4443737          	lui	a4,0xc4443
1c009b7e:	98e70713          	addi	a4,a4,-1650 # c444298e <__l2_shared_end+0xa843298e>
1c009b82:	26e7ae23          	sw	a4,636(a5)
1c009b86:	52010737          	lui	a4,0x52010
1c009b8a:	1e670713          	addi	a4,a4,486 # 520101e6 <__l2_shared_end+0x360001e6>
1c009b8e:	28e7a023          	sw	a4,640(a5)
1c009b92:	21eb3737          	lui	a4,0x21eb3
1c009b96:	8bf70713          	addi	a4,a4,-1857 # 21eb28bf <__l2_shared_end+0x5ea28bf>
1c009b9a:	28e7a223          	sw	a4,644(a5)
1c009b9e:	6704b737          	lui	a4,0x6704b
1c009ba2:	91970713          	addi	a4,a4,-1767 # 6704a919 <__l2_shared_end+0x4b03a919>
1c009ba6:	28e7a423          	sw	a4,648(a5)
1c009baa:	06572737          	lui	a4,0x6572
1c009bae:	8aa70713          	addi	a4,a4,-1878 # 65718aa <__CTOR_LIST__-0x15a8e75a>
1c009bb2:	28e7a623          	sw	a4,652(a5)
1c009bb6:	37937737          	lui	a4,0x37937
1c009bba:	f3970713          	addi	a4,a4,-199 # 37936f39 <__l2_shared_end+0x1b926f39>
1c009bbe:	28e7a823          	sw	a4,656(a5)
1c009bc2:	7393f737          	lui	a4,0x7393f
1c009bc6:	12270713          	addi	a4,a4,290 # 7393f122 <__l2_shared_end+0x5792f122>
1c009bca:	28e7aa23          	sw	a4,660(a5)
1c009bce:	011b4737          	lui	a4,0x11b4
1c009bd2:	3d370713          	addi	a4,a4,979 # 11b43d3 <__CTOR_LIST__-0x1ae4bc31>
1c009bd6:	28e7ac23          	sw	a4,664(a5)
1c009bda:	194a8737          	lui	a4,0x194a8
1c009bde:	97b70713          	addi	a4,a4,-1669 # 194a797b <__CTOR_LIST__-0x2b58689>
1c009be2:	28e7ae23          	sw	a4,668(a5)
1c009be6:	90399737          	lui	a4,0x90399
1c009bea:	bb970713          	addi	a4,a4,-1095 # 90398bb9 <__l2_shared_end+0x74388bb9>
1c009bee:	2ae7a023          	sw	a4,672(a5)
1c009bf2:	71cc9737          	lui	a4,0x71cc9
1c009bf6:	b1870713          	addi	a4,a4,-1256 # 71cc8b18 <__l2_shared_end+0x55cb8b18>
1c009bfa:	2ae7a223          	sw	a4,676(a5)
1c009bfe:	a723d737          	lui	a4,0xa723d
1c009c02:	d4270713          	addi	a4,a4,-702 # a723cd42 <__l2_shared_end+0x8b22cd42>
1c009c06:	2ae7a423          	sw	a4,680(a5)
1c009c0a:	5da93737          	lui	a4,0x5da93
1c009c0e:	85a70713          	addi	a4,a4,-1958 # 5da9285a <__l2_shared_end+0x41a8285a>
1c009c12:	2ae7a623          	sw	a4,684(a5)
1c009c16:	f7aa2737          	lui	a4,0xf7aa2
1c009c1a:	52c70713          	addi	a4,a4,1324 # f7aa252c <__l2_shared_end+0xdba9252c>
1c009c1e:	2ae7a823          	sw	a4,688(a5)
1c009c22:	bad8e737          	lui	a4,0xbad8e
1c009c26:	fc270713          	addi	a4,a4,-62 # bad8dfc2 <__l2_shared_end+0x9ed7dfc2>
1c009c2a:	2ae7aa23          	sw	a4,692(a5)
1c009c2e:	6670e737          	lui	a4,0x6670e
1c009c32:	40670713          	addi	a4,a4,1030 # 6670e406 <__l2_shared_end+0x4a6fe406>
1c009c36:	2ae7ac23          	sw	a4,696(a5)
1c009c3a:	a51f1737          	lui	a4,0xa51f1
1c009c3e:	c9470713          	addi	a4,a4,-876 # a51f0c94 <__l2_shared_end+0x891e0c94>
1c009c42:	2ae7ae23          	sw	a4,700(a5)
1c009c46:	b9da5737          	lui	a4,0xb9da5
1c009c4a:	55670713          	addi	a4,a4,1366 # b9da5556 <__l2_shared_end+0x9dd95556>
1c009c4e:	2ce7a023          	sw	a4,704(a5)
1c009c52:	4286b737          	lui	a4,0x4286b
1c009c56:	6be70713          	addi	a4,a4,1726 # 4286b6be <__l2_shared_end+0x2685b6be>
1c009c5a:	2ce7a223          	sw	a4,708(a5)
1c009c5e:	00e97737          	lui	a4,0xe97
1c009c62:	28c70713          	addi	a4,a4,652 # e9728c <__CTOR_LIST__-0x1b168d78>
1c009c66:	2ce7a423          	sw	a4,712(a5)
1c009c6a:	6b1b0737          	lui	a4,0x6b1b0
1c009c6e:	87070713          	addi	a4,a4,-1936 # 6b1af870 <__l2_shared_end+0x4f19f870>
1c009c72:	2ce7a623          	sw	a4,716(a5)
1c009c76:	76456737          	lui	a4,0x76456
1c009c7a:	3fb70713          	addi	a4,a4,1019 # 764563fb <__l2_shared_end+0x5a4463fb>
1c009c7e:	2ce7a823          	sw	a4,720(a5)
1c009c82:	c0ff5737          	lui	a4,0xc0ff5
1c009c86:	16170713          	addi	a4,a4,353 # c0ff5161 <__l2_shared_end+0xa4fe5161>
1c009c8a:	2ce7aa23          	sw	a4,724(a5)
1c009c8e:	2564f737          	lui	a4,0x2564f
1c009c92:	a5970713          	addi	a4,a4,-1447 # 2564ea59 <__l2_shared_end+0x963ea59>
1c009c96:	2ce7ac23          	sw	a4,728(a5)
1c009c9a:	a34ab737          	lui	a4,0xa34ab
1c009c9e:	25f70713          	addi	a4,a4,607 # a34ab25f <__l2_shared_end+0x8749b25f>
1c009ca2:	2ce7ae23          	sw	a4,732(a5)
1c009ca6:	01fc8737          	lui	a4,0x1fc8
1c009caa:	ce470713          	addi	a4,a4,-796 # 1fc7ce4 <__CTOR_LIST__-0x1a038320>
1c009cae:	2ee7a023          	sw	a4,736(a5)
1c009cb2:	91431737          	lui	a4,0x91431
1c009cb6:	f3070713          	addi	a4,a4,-208 # 91430f30 <__l2_shared_end+0x75420f30>
1c009cba:	2ee7a223          	sw	a4,740(a5)
1c009cbe:	f9300713          	li	a4,-109
1c009cc2:	2ee78523          	sb	a4,746(a5)
1c009cc6:	5719                	li	a4,-26
1c009cc8:	2ee785a3          	sb	a4,747(a5)
1c009ccc:	1c9eb737          	lui	a4,0x1c9eb
1c009cd0:	8d770713          	addi	a4,a4,-1833 # 1c9ea8d7 <__l2_shared_end+0x9da8d7>
1c009cd4:	2ee7a623          	sw	a4,748(a5)
1c009cd8:	553b9737          	lui	a4,0x553b9
1c009cdc:	f2270713          	addi	a4,a4,-222 # 553b8f22 <__l2_shared_end+0x393a8f22>
1c009ce0:	2ee7a823          	sw	a4,752(a5)
1c009ce4:	9d9d1737          	lui	a4,0x9d9d1
1c009ce8:	bd770713          	addi	a4,a4,-1065 # 9d9d0bd7 <__l2_shared_end+0x819c0bd7>
1c009cec:	2ee7aa23          	sw	a4,756(a5)
1c009cf0:	06c06737          	lui	a4,0x6c06
1c009cf4:	c4b70713          	addi	a4,a4,-949 # 6c05c4b <__CTOR_LIST__-0x153fa3b9>
1c009cf8:	2ee7ac23          	sw	a4,760(a5)
1c009cfc:	690bb737          	lui	a4,0x690bb
1c009d00:	d7170713          	addi	a4,a4,-655 # 690bad71 <__l2_shared_end+0x4d0aad71>
1c009d04:	2ee7ae23          	sw	a4,764(a5)
1c009d08:	294a6737          	lui	a4,0x294a6
1c009d0c:	74870713          	addi	a4,a4,1864 # 294a6748 <__l2_shared_end+0xd496748>
1c009d10:	30e7a023          	sw	a4,768(a5)
1c009d14:	57ff5737          	lui	a4,0x57ff5
1c009d18:	26970713          	addi	a4,a4,617 # 57ff5269 <__l2_shared_end+0x3bfe5269>
1c009d1c:	30e7a223          	sw	a4,772(a5)
1c009d20:	2c75a737          	lui	a4,0x2c75a
1c009d24:	36570713          	addi	a4,a4,869 # 2c75a365 <__l2_shared_end+0x1074a365>
1c009d28:	30e7a423          	sw	a4,776(a5)
1c009d2c:	e67ed737          	lui	a4,0xe67ed
1c009d30:	89370713          	addi	a4,a4,-1901 # e67ec893 <__l2_shared_end+0xca7dc893>
1c009d34:	30e7a623          	sw	a4,780(a5)
1c009d38:	e383c737          	lui	a4,0xe383c
1c009d3c:	61570713          	addi	a4,a4,1557 # e383c615 <__l2_shared_end+0xc782c615>
1c009d40:	30e7a823          	sw	a4,784(a5)
1c009d44:	4d91f737          	lui	a4,0x4d91f
1c009d48:	7a170713          	addi	a4,a4,1953 # 4d91f7a1 <__l2_shared_end+0x3190f7a1>
1c009d4c:	30e7aa23          	sw	a4,788(a5)
1c009d50:	4e537737          	lui	a4,0x4e537
1c009d54:	22c70713          	addi	a4,a4,556 # 4e53722c <__l2_shared_end+0x3252722c>
1c009d58:	30e7ac23          	sw	a4,792(a5)
1c009d5c:	bb31b737          	lui	a4,0xbb31b
1c009d60:	26b70713          	addi	a4,a4,619 # bb31b26b <__l2_shared_end+0x9f30b26b>
1c009d64:	30e7ae23          	sw	a4,796(a5)
1c009d68:	60ea1737          	lui	a4,0x60ea1
1c009d6c:	61070713          	addi	a4,a4,1552 # 60ea1610 <__l2_shared_end+0x44e91610>
1c009d70:	32e7a023          	sw	a4,800(a5)
1c009d74:	97b8a737          	lui	a4,0x97b8a
1c009d78:	5e770713          	addi	a4,a4,1511 # 97b8a5e7 <__l2_shared_end+0x7bb7a5e7>
1c009d7c:	31ae0e13          	addi	t3,t3,794
1c009d80:	32e7a223          	sw	a4,804(a5)
1c009d84:	624d3737          	lui	a4,0x624d3
1c009d88:	2fc79423          	sh	t3,744(a5)
1c009d8c:	ee370713          	addi	a4,a4,-285 # 624d2ee3 <__l2_shared_end+0x464c2ee3>
1c009d90:	32e7a423          	sw	a4,808(a5)
1c009d94:	5f948737          	lui	a4,0x5f948
1c009d98:	3a370713          	addi	a4,a4,931 # 5f9483a3 <__l2_shared_end+0x439383a3>
1c009d9c:	32e7a623          	sw	a4,812(a5)
1c009da0:	bf369737          	lui	a4,0xbf369
1c009da4:	1d970713          	addi	a4,a4,473 # bf3691d9 <__l2_shared_end+0xa33591d9>
1c009da8:	32e7a823          	sw	a4,816(a5)
1c009dac:	4814d737          	lui	a4,0x4814d
1c009db0:	171d                	addi	a4,a4,-25
1c009db2:	32e7aa23          	sw	a4,820(a5)
1c009db6:	4aaaf737          	lui	a4,0x4aaaf
1c009dba:	c4970713          	addi	a4,a4,-951 # 4aaaec49 <__l2_shared_end+0x2ea9ec49>
1c009dbe:	32e7ac23          	sw	a4,824(a5)
1c009dc2:	40c04737          	lui	a4,0x40c04
1c009dc6:	70570713          	addi	a4,a4,1797 # 40c04705 <__l2_shared_end+0x24bf4705>
1c009dca:	32e7ae23          	sw	a4,828(a5)
1c009dce:	f255a737          	lui	a4,0xf255a
1c009dd2:	a9970713          	addi	a4,a4,-1383 # f2559a99 <__l2_shared_end+0xd6549a99>
1c009dd6:	34e7a023          	sw	a4,832(a5)
1c009dda:	c5277737          	lui	a4,0xc5277
1c009dde:	54970713          	addi	a4,a4,1353 # c5277549 <__l2_shared_end+0xa9267549>
1c009de2:	34e7a223          	sw	a4,836(a5)
1c009de6:	2fcbf737          	lui	a4,0x2fcbf
1c009dea:	b7270713          	addi	a4,a4,-1166 # 2fcbeb72 <__l2_shared_end+0x13caeb72>
1c009dee:	34e7a423          	sw	a4,840(a5)
1c009df2:	29eb4737          	lui	a4,0x29eb4
1c009df6:	6ec70713          	addi	a4,a4,1772 # 29eb46ec <__l2_shared_end+0xdea46ec>
1c009dfa:	34e7a623          	sw	a4,844(a5)
1c009dfe:	bff40737          	lui	a4,0xbff40
1c009e02:	74170713          	addi	a4,a4,1857 # bff40741 <__l2_shared_end+0xa3f30741>
1c009e06:	34e7a823          	sw	a4,848(a5)
1c009e0a:	e46b8737          	lui	a4,0xe46b8
1c009e0e:	96470713          	addi	a4,a4,-1692 # e46b7964 <__l2_shared_end+0xc86a7964>
1c009e12:	34e7aa23          	sw	a4,852(a5)
1c009e16:	6bbca737          	lui	a4,0x6bbca
1c009e1a:	9bc70713          	addi	a4,a4,-1604 # 6bbc99bc <__l2_shared_end+0x4fbb99bc>
1c009e1e:	34e7ac23          	sw	a4,856(a5)
1c009e22:	6098b737          	lui	a4,0x6098b
1c009e26:	28670713          	addi	a4,a4,646 # 6098b286 <__l2_shared_end+0x4497b286>
1c009e2a:	34e7ae23          	sw	a4,860(a5)
1c009e2e:	f5455737          	lui	a4,0xf5455
1c009e32:	75170713          	addi	a4,a4,1873 # f5455751 <__l2_shared_end+0xd9445751>
1c009e36:	36e7a023          	sw	a4,864(a5)
1c009e3a:	79ec0737          	lui	a4,0x79ec0
1c009e3e:	4b470713          	addi	a4,a4,1204 # 79ec04b4 <__l2_shared_end+0x5deb04b4>
1c009e42:	36e7a223          	sw	a4,868(a5)
1c009e46:	6fb34737          	lui	a4,0x6fb34
1c009e4a:	b0970713          	addi	a4,a4,-1271 # 6fb33b09 <__l2_shared_end+0x53b23b09>
1c009e4e:	36e7a423          	sw	a4,872(a5)
1c009e52:	79adc737          	lui	a4,0x79adc
1c009e56:	bc770713          	addi	a4,a4,-1081 # 79adbbc7 <__l2_shared_end+0x5dacbbc7>
1c009e5a:	36e7a623          	sw	a4,876(a5)
1c009e5e:	a3c8c737          	lui	a4,0xa3c8c
1c009e62:	0b670713          	addi	a4,a4,182 # a3c8c0b6 <__l2_shared_end+0x87c7c0b6>
1c009e66:	36e7a823          	sw	a4,880(a5)
1c009e6a:	56db5737          	lui	a4,0x56db5
1c009e6e:	eba70713          	addi	a4,a4,-326 # 56db4eba <__l2_shared_end+0x3ada4eba>
1c009e72:	36e7aa23          	sw	a4,884(a5)
1c009e76:	f98fd737          	lui	a4,0xf98fd
1c009e7a:	8a470713          	addi	a4,a4,-1884 # f98fc8a4 <__l2_shared_end+0xdd8ec8a4>
1c009e7e:	36e7ac23          	sw	a4,888(a5)
1c009e82:	e7749737          	lui	a4,0xe7749
1c009e86:	b4770713          	addi	a4,a4,-1209 # e7748b47 <__l2_shared_end+0xcb738b47>
1c009e8a:	36e7ae23          	sw	a4,892(a5)
1c009e8e:	252c1737          	lui	a4,0x252c1
1c009e92:	bc970713          	addi	a4,a4,-1079 # 252c0bc9 <__l2_shared_end+0x92b0bc9>
1c009e96:	38e7a023          	sw	a4,896(a5)
1c009e9a:	ac821737          	lui	a4,0xac821
1c009e9e:	86970713          	addi	a4,a4,-1943 # ac820869 <__l2_shared_end+0x90810869>
1c009ea2:	38e7a223          	sw	a4,900(a5)
1c009ea6:	518d5737          	lui	a4,0x518d5
1c009eaa:	18470713          	addi	a4,a4,388 # 518d5184 <__l2_shared_end+0x358c5184>
1c009eae:	38e7a423          	sw	a4,904(a5)
1c009eb2:	6fa40737          	lui	a4,0x6fa40
1c009eb6:	f1170713          	addi	a4,a4,-239 # 6fa3ff11 <__l2_shared_end+0x53a2ff11>
1c009eba:	38e7a623          	sw	a4,908(a5)
1c009ebe:	5b9be737          	lui	a4,0x5b9be
1c009ec2:	4f170713          	addi	a4,a4,1265 # 5b9be4f1 <__l2_shared_end+0x3f9ae4f1>
1c009ec6:	38e7a823          	sw	a4,912(a5)
1c009eca:	e5f46737          	lui	a4,0xe5f46
1c009ece:	abc70713          	addi	a4,a4,-1348 # e5f45abc <__l2_shared_end+0xc9f35abc>
1c009ed2:	38e7aa23          	sw	a4,916(a5)
1c009ed6:	af02c737          	lui	a4,0xaf02c
1c009eda:	27b70713          	addi	a4,a4,635 # af02c27b <__l2_shared_end+0x9301c27b>
1c009ede:	38e7ac23          	sw	a4,920(a5)
1c009ee2:	08666737          	lui	a4,0x8666
1c009ee6:	c1270713          	addi	a4,a4,-1006 # 8665c12 <__CTOR_LIST__-0x1399a3f2>
1c009eea:	38e7ae23          	sw	a4,924(a5)
1c009eee:	da4d3737          	lui	a4,0xda4d3
1c009ef2:	02a70713          	addi	a4,a4,42 # da4d302a <__l2_shared_end+0xbe4c302a>
1c009ef6:	3ae7a023          	sw	a4,928(a5)
1c009efa:	06b6f737          	lui	a4,0x6b6f
1c009efe:	d8670713          	addi	a4,a4,-634 # 6b6ed86 <__CTOR_LIST__-0x1549127e>
1c009f02:	3ae7a223          	sw	a4,932(a5)
1c009f06:	ab734737          	lui	a4,0xab734
1c009f0a:	3b670713          	addi	a4,a4,950 # ab7343b6 <__l2_shared_end+0x8f7243b6>
1c009f0e:	3ae7a423          	sw	a4,936(a5)
1c009f12:	563b7737          	lui	a4,0x563b7
1c009f16:	8b670713          	addi	a4,a4,-1866 # 563b68b6 <__l2_shared_end+0x3a3a68b6>
1c009f1a:	3ae7a623          	sw	a4,940(a5)
1c009f1e:	ab619737          	lui	a4,0xab619
1c009f22:	69470713          	addi	a4,a4,1684 # ab619694 <__l2_shared_end+0x8f609694>
1c009f26:	3ae7a823          	sw	a4,944(a5)
1c009f2a:	e111c737          	lui	a4,0xe111c
1c009f2e:	06070713          	addi	a4,a4,96 # e111c060 <__l2_shared_end+0xc510c060>
1c009f32:	3ae7aa23          	sw	a4,948(a5)
1c009f36:	c8233737          	lui	a4,0xc8233
1c009f3a:	b4c70713          	addi	a4,a4,-1204 # c8232b4c <__l2_shared_end+0xac222b4c>
1c009f3e:	3ae7ac23          	sw	a4,952(a5)
1c009f42:	a9873737          	lui	a4,0xa9873
1c009f46:	59270713          	addi	a4,a4,1426 # a9873592 <__l2_shared_end+0x8d863592>
1c009f4a:	3ae7ae23          	sw	a4,956(a5)
1c009f4e:	5779d737          	lui	a4,0x5779d
1c009f52:	c7470713          	addi	a4,a4,-908 # 5779cc74 <__l2_shared_end+0x3b78cc74>
1c009f56:	3ce7a023          	sw	a4,960(a5)
1c009f5a:	62958737          	lui	a4,0x62958
1c009f5e:	24c70713          	addi	a4,a4,588 # 6295824c <__l2_shared_end+0x4694824c>
1c009f62:	3ce7a223          	sw	a4,964(a5)
1c009f66:	1d809737          	lui	a4,0x1d809
1c009f6a:	11070713          	addi	a4,a4,272 # 1d809110 <__l2_shared_end+0x17f9110>
1c009f6e:	3ce7a423          	sw	a4,968(a5)
1c009f72:	57972737          	lui	a4,0x57972
1c009f76:	33770713          	addi	a4,a4,823 # 57972337 <__l2_shared_end+0x3b962337>
1c009f7a:	3ce7a623          	sw	a4,972(a5)
1c009f7e:	69316737          	lui	a4,0x69316
1c009f82:	88570713          	addi	a4,a4,-1915 # 69315885 <__l2_shared_end+0x4d305885>
1c009f86:	3ce7a823          	sw	a4,976(a5)
1c009f8a:	82d16737          	lui	a4,0x82d16
1c009f8e:	8c370713          	addi	a4,a4,-1853 # 82d158c3 <__l2_shared_end+0x66d058c3>
1c009f92:	3ce7aa23          	sw	a4,980(a5)
1c009f96:	4b347737          	lui	a4,0x4b347
1c009f9a:	c5970713          	addi	a4,a4,-935 # 4b346c59 <__l2_shared_end+0x2f336c59>
1c009f9e:	3ce7ac23          	sw	a4,984(a5)
1c009fa2:	404a9737          	lui	a4,0x404a9
1c009fa6:	62270713          	addi	a4,a4,1570 # 404a9622 <__l2_shared_end+0x24499622>
1c009faa:	3ce7ae23          	sw	a4,988(a5)
1c009fae:	02200713          	li	a4,34
1c009fb2:	3ee78123          	sb	a4,994(a5)
1c009fb6:	07200713          	li	a4,114
1c009fba:	3ee781a3          	sb	a4,995(a5)
1c009fbe:	fd100737          	lui	a4,0xfd100
1c009fc2:	bba70713          	addi	a4,a4,-1094 # fd0ffbba <__l2_shared_end+0xe10efbba>
1c009fc6:	3ee7a223          	sw	a4,996(a5)
1c009fca:	b1e4d737          	lui	a4,0xb1e4d
1c009fce:	c2b70713          	addi	a4,a4,-981 # b1e4cc2b <__l2_shared_end+0x95e3cc2b>
1c009fd2:	3ee7a423          	sw	a4,1000(a5)
1c009fd6:	cb100737          	lui	a4,0xcb100
1c009fda:	24f70713          	addi	a4,a4,591 # cb10024f <__l2_shared_end+0xaf0f024f>
1c009fde:	3ee7a623          	sw	a4,1004(a5)
1c009fe2:	6f471737          	lui	a4,0x6f471
1c009fe6:	4c870713          	addi	a4,a4,1224 # 6f4714c8 <__l2_shared_end+0x534614c8>
1c009fea:	3ee7a823          	sw	a4,1008(a5)
1c009fee:	80f44737          	lui	a4,0x80f44
1c009ff2:	74070713          	addi	a4,a4,1856 # 80f44740 <__l2_shared_end+0x64f34740>
1c009ff6:	3ee7aa23          	sw	a4,1012(a5)
1c009ffa:	74968737          	lui	a4,0x74968
1c009ffe:	35670713          	addi	a4,a4,854 # 74968356 <__l2_shared_end+0x58958356>
1c00a002:	3ee7ac23          	sw	a4,1016(a5)
1c00a006:	32230737          	lui	a4,0x32230
1c00a00a:	12b70713          	addi	a4,a4,299 # 3223012b <__l2_shared_end+0x1622012b>
1c00a00e:	3ee7ae23          	sw	a4,1020(a5)
1c00a012:	1019a737          	lui	a4,0x1019a
1c00a016:	1a170713          	addi	a4,a4,417 # 1019a1a1 <__CTOR_LIST__-0xbe65e63>
1c00a01a:	40e7a023          	sw	a4,1024(a5)
1c00a01e:	b4b9e737          	lui	a4,0xb4b9e
1c00a022:	f5670713          	addi	a4,a4,-170 # b4b9df56 <__l2_shared_end+0x98b8df56>
1c00a026:	40e7a223          	sw	a4,1028(a5)
1c00a02a:	a67b7737          	lui	a4,0xa67b7
1c00a02e:	53a70713          	addi	a4,a4,1338 # a67b753a <__l2_shared_end+0x8a7a753a>
1c00a032:	40e7a423          	sw	a4,1032(a5)
1c00a036:	66bc3737          	lui	a4,0x66bc3
1c00a03a:	7ac70713          	addi	a4,a4,1964 # 66bc37ac <__l2_shared_end+0x4abb37ac>
1c00a03e:	40e7a623          	sw	a4,1036(a5)
1c00a042:	ca33e737          	lui	a4,0xca33e
1c00a046:	46270713          	addi	a4,a4,1122 # ca33e462 <__l2_shared_end+0xae32e462>
1c00a04a:	40e7a823          	sw	a4,1040(a5)
1c00a04e:	95836737          	lui	a4,0x95836
1c00a052:	9f170713          	addi	a4,a4,-1551 # 958359f1 <__l2_shared_end+0x798259f1>
1c00a056:	40e7aa23          	sw	a4,1044(a5)
1c00a05a:	a7a95737          	lui	a4,0xa7a95
1c00a05e:	1719                	addi	a4,a4,-26
1c00a060:	40e7ac23          	sw	a4,1048(a5)
1c00a064:	00714737          	lui	a4,0x714
1c00a068:	b2f70713          	addi	a4,a4,-1233 # 713b2f <__CTOR_LIST__-0x1b8ec4d5>
1c00a06c:	40e7ae23          	sw	a4,1052(a5)
1c00a070:	b38ef737          	lui	a4,0xb38ef
1c00a074:	b6a70713          	addi	a4,a4,-1174 # b38eeb6a <__l2_shared_end+0x978deb6a>
1c00a078:	42e7a023          	sw	a4,1056(a5)
1c00a07c:	d6fd7737          	lui	a4,0xd6fd7
1c00a080:	67370713          	addi	a4,a4,1651 # d6fd7673 <__l2_shared_end+0xbafc7673>
1c00a084:	b9530313          	addi	t1,t1,-1131
1c00a088:	42e7a223          	sw	a4,1060(a5)
1c00a08c:	60e05737          	lui	a4,0x60e05
1c00a090:	3e679023          	sh	t1,992(a5)
1c00a094:	a1770713          	addi	a4,a4,-1513 # 60e04a17 <__l2_shared_end+0x44df4a17>
1c00a098:	42e7a423          	sw	a4,1064(a5)
1c00a09c:	2a537737          	lui	a4,0x2a537
1c00a0a0:	b5a70713          	addi	a4,a4,-1190 # 2a536b5a <__l2_shared_end+0xe526b5a>
1c00a0a4:	42e7a623          	sw	a4,1068(a5)
1c00a0a8:	26f01737          	lui	a4,0x26f01
1c00a0ac:	4b670713          	addi	a4,a4,1206 # 26f014b6 <__l2_shared_end+0xaef14b6>
1c00a0b0:	42e7a823          	sw	a4,1072(a5)
1c00a0b4:	3b56b737          	lui	a4,0x3b56b
1c00a0b8:	e4170713          	addi	a4,a4,-447 # 3b56ae41 <__l2_shared_end+0x1f55ae41>
1c00a0bc:	42e7aa23          	sw	a4,1076(a5)
1c00a0c0:	00193737          	lui	a4,0x193
1c00a0c4:	0f270713          	addi	a4,a4,242 # 1930f2 <__CTOR_LIST__-0x1be6cf12>
1c00a0c8:	42e7ac23          	sw	a4,1080(a5)
1c00a0cc:	d3ed0737          	lui	a4,0xd3ed0
1c00a0d0:	1f470713          	addi	a4,a4,500 # d3ed01f4 <__l2_shared_end+0xb7ec01f4>
1c00a0d4:	42e7ae23          	sw	a4,1084(a5)
1c00a0d8:	90d33737          	lui	a4,0x90d33
1c00a0dc:	1b470713          	addi	a4,a4,436 # 90d331b4 <__l2_shared_end+0x74d231b4>
1c00a0e0:	44e7a023          	sw	a4,1088(a5)
1c00a0e4:	2b4af737          	lui	a4,0x2b4af
1c00a0e8:	aa970713          	addi	a4,a4,-1367 # 2b4aeaa9 <__l2_shared_end+0xf49eaa9>
1c00a0ec:	44e7a223          	sw	a4,1092(a5)
1c00a0f0:	f4cfa737          	lui	a4,0xf4cfa
1c00a0f4:	b3670713          	addi	a4,a4,-1226 # f4cf9b36 <__l2_shared_end+0xd8ce9b36>
1c00a0f8:	44e7a423          	sw	a4,1096(a5)
1c00a0fc:	4ae84737          	lui	a4,0x4ae84
1c00a100:	8b870713          	addi	a4,a4,-1864 # 4ae838b8 <__l2_shared_end+0x2ee738b8>
1c00a104:	44e7a623          	sw	a4,1100(a5)
1c00a108:	a1918737          	lui	a4,0xa1918
1c00a10c:	98870713          	addi	a4,a4,-1656 # a1917988 <__l2_shared_end+0x85907988>
1c00a110:	44e7a823          	sw	a4,1104(a5)
1c00a114:	cc68d737          	lui	a4,0xcc68d
1c00a118:	86770713          	addi	a4,a4,-1945 # cc68c867 <__l2_shared_end+0xb067c867>
1c00a11c:	44e7aa23          	sw	a4,1108(a5)
1c00a120:	3c6ba737          	lui	a4,0x3c6ba
1c00a124:	19b70713          	addi	a4,a4,411 # 3c6ba19b <__l2_shared_end+0x206aa19b>
1c00a128:	44e7ac23          	sw	a4,1112(a5)
1c00a12c:	e1b39737          	lui	a4,0xe1b39
1c00a130:	93170713          	addi	a4,a4,-1743 # e1b38931 <__l2_shared_end+0xc5b28931>
1c00a134:	44e7ae23          	sw	a4,1116(a5)
1c00a138:	64739737          	lui	a4,0x64739
1c00a13c:	f9070713          	addi	a4,a4,-112 # 64738f90 <__l2_shared_end+0x48728f90>
1c00a140:	46e7a023          	sw	a4,1120(a5)
1c00a144:	2a385737          	lui	a4,0x2a385
1c00a148:	f6070713          	addi	a4,a4,-160 # 2a384f60 <__l2_shared_end+0xe374f60>
1c00a14c:	46e7a223          	sw	a4,1124(a5)
1c00a150:	c8851737          	lui	a4,0xc8851
1c00a154:	a2a70713          	addi	a4,a4,-1494 # c8850a2a <__l2_shared_end+0xac840a2a>
1c00a158:	46e7a423          	sw	a4,1128(a5)
1c00a15c:	1b984737          	lui	a4,0x1b984
1c00a160:	1e370713          	addi	a4,a4,483 # 1b9841e3 <__CTOR_LIST__-0x67be21>
1c00a164:	46e7a623          	sw	a4,1132(a5)
1c00a168:	3347f737          	lui	a4,0x3347f
1c00a16c:	c9f70713          	addi	a4,a4,-865 # 3347ec9f <__l2_shared_end+0x1746ec9f>
1c00a170:	46e7a823          	sw	a4,1136(a5)
1c00a174:	db1e3737          	lui	a4,0xdb1e3
1c00a178:	a3070713          	addi	a4,a4,-1488 # db1e2a30 <__l2_shared_end+0xbf1d2a30>
1c00a17c:	46e7aa23          	sw	a4,1140(a5)
1c00a180:	3b9e7737          	lui	a4,0x3b9e7
1c00a184:	14470713          	addi	a4,a4,324 # 3b9e7144 <__l2_shared_end+0x1f9d7144>
1c00a188:	46e7ac23          	sw	a4,1144(a5)
1c00a18c:	0b778737          	lui	a4,0xb778
1c00a190:	b5370713          	addi	a4,a4,-1197 # b777b53 <__CTOR_LIST__-0x108884b1>
1c00a194:	46e7ae23          	sw	a4,1148(a5)
1c00a198:	687a8737          	lui	a4,0x687a8
1c00a19c:	52370713          	addi	a4,a4,1315 # 687a8523 <__l2_shared_end+0x4c798523>
1c00a1a0:	48e7a023          	sw	a4,1152(a5)
1c00a1a4:	bc914737          	lui	a4,0xbc914
1c00a1a8:	174d                	addi	a4,a4,-13
1c00a1aa:	48e7a223          	sw	a4,1156(a5)
1c00a1ae:	931c3737          	lui	a4,0x931c3
1c00a1b2:	18070713          	addi	a4,a4,384 # 931c3180 <__l2_shared_end+0x771b3180>
1c00a1b6:	48e7a423          	sw	a4,1160(a5)
1c00a1ba:	00590737          	lui	a4,0x590
1c00a1be:	02a70713          	addi	a4,a4,42 # 59002a <__CTOR_LIST__-0x1ba6ffda>
1c00a1c2:	48e7a623          	sw	a4,1164(a5)
1c00a1c6:	d3e17737          	lui	a4,0xd3e17
1c00a1ca:	cfb70713          	addi	a4,a4,-773 # d3e16cfb <__l2_shared_end+0xb7e06cfb>
1c00a1ce:	48e7a823          	sw	a4,1168(a5)
1c00a1d2:	95334737          	lui	a4,0x95334
1c00a1d6:	aa770713          	addi	a4,a4,-1369 # 95333aa7 <__l2_shared_end+0x79323aa7>
1c00a1da:	48e7aa23          	sw	a4,1172(a5)
1c00a1de:	543de737          	lui	a4,0x543de
1c00a1e2:	0e070713          	addi	a4,a4,224 # 543de0e0 <__l2_shared_end+0x383ce0e0>
1c00a1e6:	48e7ac23          	sw	a4,1176(a5)
1c00a1ea:	37a62737          	lui	a4,0x37a62
1c00a1ee:	5dc70713          	addi	a4,a4,1500 # 37a625dc <__l2_shared_end+0x1ba525dc>
1c00a1f2:	48e7ae23          	sw	a4,1180(a5)
1c00a1f6:	0974f737          	lui	a4,0x974f
1c00a1fa:	7b670713          	addi	a4,a4,1974 # 974f7b6 <__CTOR_LIST__-0x128b084e>
1c00a1fe:	4ae7a023          	sw	a4,1184(a5)
1c00a202:	4c78c737          	lui	a4,0x4c78c
1c00a206:	1b570713          	addi	a4,a4,437 # 4c78c1b5 <__l2_shared_end+0x3077c1b5>
1c00a20a:	4ae7a223          	sw	a4,1188(a5)
1c00a20e:	aa151737          	lui	a4,0xaa151
1c00a212:	a8270713          	addi	a4,a4,-1406 # aa150a82 <__l2_shared_end+0x8e140a82>
1c00a216:	4ae7a423          	sw	a4,1192(a5)
1c00a21a:	c651b737          	lui	a4,0xc651b
1c00a21e:	36570713          	addi	a4,a4,869 # c651b365 <__l2_shared_end+0xaa50b365>
1c00a222:	4ae7a623          	sw	a4,1196(a5)
1c00a226:	63a00737          	lui	a4,0x63a00
1c00a22a:	41b70713          	addi	a4,a4,1051 # 63a0041b <__l2_shared_end+0x479f041b>
1c00a22e:	4ae7a823          	sw	a4,1200(a5)
1c00a232:	5974d737          	lui	a4,0x5974d
1c00a236:	bcc70713          	addi	a4,a4,-1076 # 5974cbcc <__l2_shared_end+0x3d73cbcc>
1c00a23a:	4ae7aa23          	sw	a4,1204(a5)
1c00a23e:	9b077737          	lui	a4,0x9b077
1c00a242:	d4d70713          	addi	a4,a4,-691 # 9b076d4d <__l2_shared_end+0x7f066d4d>
1c00a246:	4ae7ac23          	sw	a4,1208(a5)
1c00a24a:	40bcc737          	lui	a4,0x40bcc
1c00a24e:	28270713          	addi	a4,a4,642 # 40bcc282 <__l2_shared_end+0x24bbc282>
1c00a252:	4ae7ae23          	sw	a4,1212(a5)
1c00a256:	72ec0737          	lui	a4,0x72ec0
1c00a25a:	15470713          	addi	a4,a4,340 # 72ec0154 <__l2_shared_end+0x56eb0154>
1c00a25e:	4ce7a023          	sw	a4,1216(a5)
1c00a262:	9d396737          	lui	a4,0x9d396
1c00a266:	ebf70713          	addi	a4,a4,-321 # 9d395ebf <__l2_shared_end+0x81385ebf>
1c00a26a:	4ce7a223          	sw	a4,1220(a5)
1c00a26e:	86321737          	lui	a4,0x86321
1c00a272:	92070713          	addi	a4,a4,-1760 # 86320920 <__l2_shared_end+0x6a310920>
1c00a276:	4ce7a423          	sw	a4,1224(a5)
1c00a27a:	c9b42737          	lui	a4,0xc9b42
1c00a27e:	28c70713          	addi	a4,a4,652 # c9b4228c <__l2_shared_end+0xadb3228c>
1c00a282:	4ce7a623          	sw	a4,1228(a5)
1c00a286:	7f87a737          	lui	a4,0x7f87a
1c00a28a:	b1b70713          	addi	a4,a4,-1253 # 7f879b1b <__l2_shared_end+0x63869b1b>
1c00a28e:	4ce7a823          	sw	a4,1232(a5)
1c00a292:	61817737          	lui	a4,0x61817
1c00a296:	61d70713          	addi	a4,a4,1565 # 6181761d <__l2_shared_end+0x4580761d>
1c00a29a:	4ce7aa23          	sw	a4,1236(a5)
1c00a29e:	62a00713          	li	a4,1578
1c00a2a2:	4ce79c23          	sh	a4,1240(a5)
1c00a2a6:	f8e00713          	li	a4,-114
1c00a2aa:	4ce78d23          	sb	a4,1242(a5)
1c00a2ae:	f8b00713          	li	a4,-117
1c00a2b2:	4ce78da3          	sb	a4,1243(a5)
1c00a2b6:	2cd2d737          	lui	a4,0x2cd2d
1c00a2ba:	07970713          	addi	a4,a4,121 # 2cd2d079 <__l2_shared_end+0x10d1d079>
1c00a2be:	4ce7ae23          	sw	a4,1244(a5)
1c00a2c2:	eda42737          	lui	a4,0xeda42
1c00a2c6:	64270713          	addi	a4,a4,1602 # eda42642 <__l2_shared_end+0xd1a32642>
1c00a2ca:	4ee7a023          	sw	a4,1248(a5)
1c00a2ce:	505a7737          	lui	a4,0x505a7
1c00a2d2:	be170713          	addi	a4,a4,-1055 # 505a6be1 <__l2_shared_end+0x34596be1>
1c00a2d6:	4ee7a223          	sw	a4,1252(a5)
1c00a2da:	78b48737          	lui	a4,0x78b48
1c00a2de:	76970713          	addi	a4,a4,1897 # 78b48769 <__l2_shared_end+0x5cb38769>
1c00a2e2:	4ee7a423          	sw	a4,1256(a5)
1c00a2e6:	fc442737          	lui	a4,0xfc442
1c00a2ea:	41a70713          	addi	a4,a4,1050 # fc44241a <__l2_shared_end+0xe043241a>
1c00a2ee:	4ee7a623          	sw	a4,1260(a5)
1c00a2f2:	5a84c737          	lui	a4,0x5a84c
1c00a2f6:	27570713          	addi	a4,a4,629 # 5a84c275 <__l2_shared_end+0x3e83c275>
1c00a2fa:	4ee7a823          	sw	a4,1264(a5)
1c00a2fe:	63571737          	lui	a4,0x63571
1c00a302:	7ac70713          	addi	a4,a4,1964 # 635717ac <__l2_shared_end+0x475617ac>
1c00a306:	4ee7aa23          	sw	a4,1268(a5)
1c00a30a:	23324737          	lui	a4,0x23324
1c00a30e:	58170713          	addi	a4,a4,1409 # 23324581 <__l2_shared_end+0x7314581>
1c00a312:	4ee7ac23          	sw	a4,1272(a5)
1c00a316:	43890737          	lui	a4,0x43890
1c00a31a:	35670713          	addi	a4,a4,854 # 43890356 <__l2_shared_end+0x27880356>
1c00a31e:	4ee7ae23          	sw	a4,1276(a5)
1c00a322:	82ab0737          	lui	a4,0x82ab0
1c00a326:	0a270713          	addi	a4,a4,162 # 82ab00a2 <__l2_shared_end+0x66aa00a2>
1c00a32a:	50e7a023          	sw	a4,1280(a5)
1c00a32e:	54a31737          	lui	a4,0x54a31
1c00a332:	7e470713          	addi	a4,a4,2020 # 54a317e4 <__l2_shared_end+0x38a217e4>
1c00a336:	50e7a223          	sw	a4,1284(a5)
1c00a33a:	f9dea737          	lui	a4,0xf9dea
1c00a33e:	7ea70713          	addi	a4,a4,2026 # f9dea7ea <__l2_shared_end+0xdddda7ea>
1c00a342:	50e7a423          	sw	a4,1288(a5)
1c00a346:	672b4737          	lui	a4,0x672b4
1c00a34a:	55070713          	addi	a4,a4,1360 # 672b4550 <__l2_shared_end+0x4b2a4550>
1c00a34e:	50e7a623          	sw	a4,1292(a5)
1c00a352:	fd33f737          	lui	a4,0xfd33f
1c00a356:	8ce70713          	addi	a4,a4,-1842 # fd33e8ce <__l2_shared_end+0xe132e8ce>
1c00a35a:	50e7a823          	sw	a4,1296(a5)
1c00a35e:	a6fb1737          	lui	a4,0xa6fb1
1c00a362:	66770713          	addi	a4,a4,1639 # a6fb1667 <__l2_shared_end+0x8afa1667>
1c00a366:	50e7aa23          	sw	a4,1300(a5)
1c00a36a:	c526c737          	lui	a4,0xc526c
1c00a36e:	09170713          	addi	a4,a4,145 # c526c091 <__l2_shared_end+0xa925c091>
1c00a372:	50e7ac23          	sw	a4,1304(a5)
1c00a376:	214c6737          	lui	a4,0x214c6
1c00a37a:	5df70713          	addi	a4,a4,1503 # 214c65df <__l2_shared_end+0x54b65df>
1c00a37e:	50e7ae23          	sw	a4,1308(a5)
1c00a382:	a2a01737          	lui	a4,0xa2a01
1c00a386:	7f470713          	addi	a4,a4,2036 # a2a017f4 <__l2_shared_end+0x869f17f4>
1c00a38a:	52e7a023          	sw	a4,1312(a5)
1c00a38e:	4a4ac737          	lui	a4,0x4a4ac
1c00a392:	e4b70713          	addi	a4,a4,-437 # 4a4abe4b <__l2_shared_end+0x2e49be4b>
1c00a396:	52e7a223          	sw	a4,1316(a5)
1c00a39a:	46c6c737          	lui	a4,0x46c6c
1c00a39e:	39470713          	addi	a4,a4,916 # 46c6c394 <__l2_shared_end+0x2ac5c394>
1c00a3a2:	52e7a423          	sw	a4,1320(a5)
1c00a3a6:	a8d1c737          	lui	a4,0xa8d1c
1c00a3aa:	0d570713          	addi	a4,a4,213 # a8d1c0d5 <__l2_shared_end+0x8cd0c0d5>
1c00a3ae:	52e7a623          	sw	a4,1324(a5)
1c00a3b2:	275be737          	lui	a4,0x275be
1c00a3b6:	8a370713          	addi	a4,a4,-1885 # 275bd8a3 <__l2_shared_end+0xb5ad8a3>
1c00a3ba:	52e7a823          	sw	a4,1328(a5)
1c00a3be:	fe2a2737          	lui	a4,0xfe2a2
1c00a3c2:	24970713          	addi	a4,a4,585 # fe2a2249 <__l2_shared_end+0xe2292249>
1c00a3c6:	52e7aa23          	sw	a4,1332(a5)
1c00a3ca:	010f1737          	lui	a4,0x10f1
1c00a3ce:	b0770713          	addi	a4,a4,-1273 # 10f0b07 <__CTOR_LIST__-0x1af0f4fd>
1c00a3d2:	52e7ac23          	sw	a4,1336(a5)
1c00a3d6:	1b899737          	lui	a4,0x1b899
1c00a3da:	45c70713          	addi	a4,a4,1116 # 1b89945c <__CTOR_LIST__-0x766ba8>
1c00a3de:	52e7ae23          	sw	a4,1340(a5)
1c00a3e2:	58b62737          	lui	a4,0x58b62
1c00a3e6:	9d970713          	addi	a4,a4,-1575 # 58b619d9 <__l2_shared_end+0x3cb519d9>
1c00a3ea:	54e7a023          	sw	a4,1344(a5)
1c00a3ee:	55752737          	lui	a4,0x55752
1c00a3f2:	1f170713          	addi	a4,a4,497 # 557521f1 <__l2_shared_end+0x397421f1>
1c00a3f6:	54e7a223          	sw	a4,1348(a5)
1c00a3fa:	9d72d737          	lui	a4,0x9d72d
1c00a3fe:	7cc70713          	addi	a4,a4,1996 # 9d72d7cc <__l2_shared_end+0x8171d7cc>
1c00a402:	54e7a423          	sw	a4,1352(a5)
1c00a406:	3f591737          	lui	a4,0x3f591
1c00a40a:	b9270713          	addi	a4,a4,-1134 # 3f590b92 <__l2_shared_end+0x23580b92>
1c00a40e:	54e7a623          	sw	a4,1356(a5)
1c00a412:	c0ca3737          	lui	a4,0xc0ca3
1c00a416:	1f670713          	addi	a4,a4,502 # c0ca31f6 <__l2_shared_end+0xa4c931f6>
1c00a41a:	54e7a823          	sw	a4,1360(a5)
1c00a41e:	53e93737          	lui	a4,0x53e93
1c00a422:	d7e70713          	addi	a4,a4,-642 # 53e92d7e <__l2_shared_end+0x37e82d7e>
1c00a426:	54e7aa23          	sw	a4,1364(a5)
1c00a42a:	a0bed737          	lui	a4,0xa0bed
1c00a42e:	6cd70713          	addi	a4,a4,1741 # a0bed6cd <__l2_shared_end+0x84bdd6cd>
1c00a432:	54e7ac23          	sw	a4,1368(a5)
1c00a436:	93581737          	lui	a4,0x93581
1c00a43a:	66170713          	addi	a4,a4,1633 # 93581661 <__l2_shared_end+0x77571661>
1c00a43e:	54e7ae23          	sw	a4,1372(a5)
1c00a442:	79b90737          	lui	a4,0x79b90
1c00a446:	da270713          	addi	a4,a4,-606 # 79b8fda2 <__l2_shared_end+0x5db7fda2>
1c00a44a:	56e7a023          	sw	a4,1376(a5)
1c00a44e:	34081737          	lui	a4,0x34081
1c00a452:	a1970713          	addi	a4,a4,-1511 # 34080a19 <__l2_shared_end+0x18070a19>
1c00a456:	56e7a223          	sw	a4,1380(a5)
1c00a45a:	cca69737          	lui	a4,0xcca69
1c00a45e:	63c70713          	addi	a4,a4,1596 # cca6963c <__l2_shared_end+0xb0a5963c>
1c00a462:	56e7a423          	sw	a4,1384(a5)
1c00a466:	49267737          	lui	a4,0x49267
1c00a46a:	6ca70713          	addi	a4,a4,1738 # 492676ca <__l2_shared_end+0x2d2576ca>
1c00a46e:	56e7a623          	sw	a4,1388(a5)
1c00a472:	272bd737          	lui	a4,0x272bd
1c00a476:	23870713          	addi	a4,a4,568 # 272bd238 <__l2_shared_end+0xb2ad238>
1c00a47a:	56e7a823          	sw	a4,1392(a5)
1c00a47e:	61025737          	lui	a4,0x61025
1c00a482:	81670713          	addi	a4,a4,-2026 # 61024816 <__l2_shared_end+0x45014816>
1c00a486:	56e7aa23          	sw	a4,1396(a5)
1c00a48a:	819b8737          	lui	a4,0x819b8
1c00a48e:	0cf70713          	addi	a4,a4,207 # 819b80cf <__l2_shared_end+0x659a80cf>
1c00a492:	56e7ac23          	sw	a4,1400(a5)
1c00a496:	68970737          	lui	a4,0x68970
1c00a49a:	3a870713          	addi	a4,a4,936 # 689703a8 <__l2_shared_end+0x4c9603a8>
1c00a49e:	56e7ae23          	sw	a4,1404(a5)
1c00a4a2:	f9b1d737          	lui	a4,0xf9b1d
1c00a4a6:	cb370713          	addi	a4,a4,-845 # f9b1ccb3 <__l2_shared_end+0xddb0ccb3>
1c00a4aa:	58e7a023          	sw	a4,1408(a5)
1c00a4ae:	5e5d0737          	lui	a4,0x5e5d0
1c00a4b2:	a1070713          	addi	a4,a4,-1520 # 5e5cfa10 <__l2_shared_end+0x425bfa10>
1c00a4b6:	58e7a223          	sw	a4,1412(a5)
1c00a4ba:	eb5cb737          	lui	a4,0xeb5cb
1c00a4be:	20370713          	addi	a4,a4,515 # eb5cb203 <__l2_shared_end+0xcf5bb203>
1c00a4c2:	58e7a423          	sw	a4,1416(a5)
1c00a4c6:	5b8f4737          	lui	a4,0x5b8f4
1c00a4ca:	17b70713          	addi	a4,a4,379 # 5b8f417b <__l2_shared_end+0x3f8e417b>
1c00a4ce:	58e7a623          	sw	a4,1420(a5)
1c00a4d2:	718ca737          	lui	a4,0x718ca
1c00a4d6:	ba370713          	addi	a4,a4,-1117 # 718c9ba3 <__l2_shared_end+0x558b9ba3>
1c00a4da:	58e7a823          	sw	a4,1424(a5)
1c00a4de:	04926737          	lui	a4,0x4926
1c00a4e2:	33e70713          	addi	a4,a4,830 # 492633e <__CTOR_LIST__-0x176d9cc6>
1c00a4e6:	58e7aa23          	sw	a4,1428(a5)
1c00a4ea:	c9e16737          	lui	a4,0xc9e16
1c00a4ee:	85b70713          	addi	a4,a4,-1957 # c9e1585b <__l2_shared_end+0xade0585b>
1c00a4f2:	58e7ac23          	sw	a4,1432(a5)
1c00a4f6:	4ea47737          	lui	a4,0x4ea47
1c00a4fa:	32d70713          	addi	a4,a4,813 # 4ea4732d <__l2_shared_end+0x32a3732d>
1c00a4fe:	58e7ae23          	sw	a4,1436(a5)
1c00a502:	2e288737          	lui	a4,0x2e288
1c00a506:	0e170713          	addi	a4,a4,225 # 2e2880e1 <__l2_shared_end+0x122780e1>
1c00a50a:	5ae7a023          	sw	a4,1440(a5)
1c00a50e:	d374b737          	lui	a4,0xd374b
1c00a512:	4b270713          	addi	a4,a4,1202 # d374b4b2 <__l2_shared_end+0xb773b4b2>
1c00a516:	5ae7a223          	sw	a4,1444(a5)
1c00a51a:	aaf45737          	lui	a4,0xaaf45
1c00a51e:	c4670713          	addi	a4,a4,-954 # aaf44c46 <__l2_shared_end+0x8ef34c46>
1c00a522:	5ae7a423          	sw	a4,1448(a5)
1c00a526:	cbaf2737          	lui	a4,0xcbaf2
1c00a52a:	34870713          	addi	a4,a4,840 # cbaf2348 <__l2_shared_end+0xafae2348>
1c00a52e:	5ae7a623          	sw	a4,1452(a5)
1c00a532:	014a6737          	lui	a4,0x14a6
1c00a536:	e2870713          	addi	a4,a4,-472 # 14a5e28 <__CTOR_LIST__-0x1ab5a1dc>
1c00a53a:	5ae7a823          	sw	a4,1456(a5)
1c00a53e:	c4a7b737          	lui	a4,0xc4a7b
1c00a542:	88b70713          	addi	a4,a4,-1909 # c4a7a88b <__l2_shared_end+0xa8a6a88b>
1c00a546:	5ae7aa23          	sw	a4,1460(a5)
1c00a54a:	a00d9737          	lui	a4,0xa00d9
1c00a54e:	77670713          	addi	a4,a4,1910 # a00d9776 <__l2_shared_end+0x840c9776>
1c00a552:	5ae7ac23          	sw	a4,1464(a5)
1c00a556:	f6e5a737          	lui	a4,0xf6e5a
1c00a55a:	de270713          	addi	a4,a4,-542 # f6e59de2 <__l2_shared_end+0xdae49de2>
1c00a55e:	5ae7ae23          	sw	a4,1468(a5)
1c00a562:	4668f737          	lui	a4,0x4668f
1c00a566:	09970713          	addi	a4,a4,153 # 4668f099 <__l2_shared_end+0x2a67f099>
1c00a56a:	5ce7a023          	sw	a4,1472(a5)
1c00a56e:	d0367737          	lui	a4,0xd0367
1c00a572:	a5d70713          	addi	a4,a4,-1443 # d0366a5d <__l2_shared_end+0xb4356a5d>
1c00a576:	5ce7a223          	sw	a4,1476(a5)
1c00a57a:	461f3737          	lui	a4,0x461f3
1c00a57e:	51270713          	addi	a4,a4,1298 # 461f3512 <__l2_shared_end+0x2a1e3512>
1c00a582:	5ce7a423          	sw	a4,1480(a5)
1c00a586:	307c6737          	lui	a4,0x307c6
1c00a58a:	a9970713          	addi	a4,a4,-1383 # 307c5a99 <__l2_shared_end+0x147b5a99>
1c00a58e:	5ce7a623          	sw	a4,1484(a5)
1c00a592:	fae00713          	li	a4,-82
1c00a596:	5ce78923          	sb	a4,1490(a5)
1c00a59a:	02600713          	li	a4,38
1c00a59e:	5ce789a3          	sb	a4,1491(a5)
1c00a5a2:	99bdb737          	lui	a4,0x99bdb
1c00a5a6:	fa770713          	addi	a4,a4,-89 # 99bdafa7 <__l2_shared_end+0x7dbcafa7>
1c00a5aa:	5ce7aa23          	sw	a4,1492(a5)
1c00a5ae:	a960f737          	lui	a4,0xa960f
1c00a5b2:	d6270713          	addi	a4,a4,-670 # a960ed62 <__l2_shared_end+0x8d5fed62>
1c00a5b6:	5ce7ac23          	sw	a4,1496(a5)
1c00a5ba:	4b5bf737          	lui	a4,0x4b5bf
1c00a5be:	9dd70713          	addi	a4,a4,-1571 # 4b5be9dd <__l2_shared_end+0x2f5ae9dd>
1c00a5c2:	5ce7ae23          	sw	a4,1500(a5)
1c00a5c6:	477ab737          	lui	a4,0x477ab
1c00a5ca:	cf870713          	addi	a4,a4,-776 # 477aacf8 <__l2_shared_end+0x2b79acf8>
1c00a5ce:	5ee7a023          	sw	a4,1504(a5)
1c00a5d2:	1ef64737          	lui	a4,0x1ef64
1c00a5d6:	c4970713          	addi	a4,a4,-951 # 1ef63c49 <__l2_shared_end+0x2f53c49>
1c00a5da:	5ee7a223          	sw	a4,1508(a5)
1c00a5de:	a09bf737          	lui	a4,0xa09bf
1c00a5e2:	2e370713          	addi	a4,a4,739 # a09bf2e3 <__l2_shared_end+0x849af2e3>
1c00a5e6:	5ee7a423          	sw	a4,1512(a5)
1c00a5ea:	a115d737          	lui	a4,0xa115d
1c00a5ee:	e4670713          	addi	a4,a4,-442 # a115ce46 <__l2_shared_end+0x8514ce46>
1c00a5f2:	5ee7a623          	sw	a4,1516(a5)
1c00a5f6:	210c4737          	lui	a4,0x210c4
1c00a5fa:	f7670713          	addi	a4,a4,-138 # 210c3f76 <__l2_shared_end+0x50b3f76>
1c00a5fe:	5ee7a823          	sw	a4,1520(a5)
1c00a602:	6724c737          	lui	a4,0x6724c
1c00a606:	afa70713          	addi	a4,a4,-1286 # 6724bafa <__l2_shared_end+0x4b23bafa>
1c00a60a:	5ee7aa23          	sw	a4,1524(a5)
1c00a60e:	0954b737          	lui	a4,0x954b
1c00a612:	d0070713          	addi	a4,a4,-768 # 954ad00 <__CTOR_LIST__-0x12ab5304>
1c00a616:	5ee7ac23          	sw	a4,1528(a5)
1c00a61a:	ccdcb737          	lui	a4,0xccdcb
1c00a61e:	db070713          	addi	a4,a4,-592 # ccdcadb0 <__l2_shared_end+0xb0dbadb0>
1c00a622:	5ee7ae23          	sw	a4,1532(a5)
1c00a626:	d1a48737          	lui	a4,0xd1a48
1c00a62a:	99770713          	addi	a4,a4,-1641 # d1a47997 <__l2_shared_end+0xb5a37997>
1c00a62e:	60e7a023          	sw	a4,1536(a5)
1c00a632:	26ec4737          	lui	a4,0x26ec4
1c00a636:	5fc70713          	addi	a4,a4,1532 # 26ec45fc <__l2_shared_end+0xaeb45fc>
1c00a63a:	60e7a223          	sw	a4,1540(a5)
1c00a63e:	9c8b0737          	lui	a4,0x9c8b0
1c00a642:	41f70713          	addi	a4,a4,1055 # 9c8b041f <__l2_shared_end+0x808a041f>
1c00a646:	60e7a423          	sw	a4,1544(a5)
1c00a64a:	c938b737          	lui	a4,0xc938b
1c00a64e:	a9d70713          	addi	a4,a4,-1379 # c938aa9d <__l2_shared_end+0xad37aa9d>
1c00a652:	60e7a623          	sw	a4,1548(a5)
1c00a656:	658b2737          	lui	a4,0x658b2
1c00a65a:	2ec70713          	addi	a4,a4,748 # 658b22ec <__l2_shared_end+0x498a22ec>
1c00a65e:	60e7a823          	sw	a4,1552(a5)
1c00a662:	5290f737          	lui	a4,0x5290f
1c00a666:	80570713          	addi	a4,a4,-2043 # 5290e805 <__l2_shared_end+0x368fe805>
1c00a66a:	60e7aa23          	sw	a4,1556(a5)
1c00a66e:	8684b737          	lui	a4,0x8684b
1c00a672:	32670713          	addi	a4,a4,806 # 8684b326 <__l2_shared_end+0x6a83b326>
1c00a676:	60e7ac23          	sw	a4,1560(a5)
1c00a67a:	c2592737          	lui	a4,0xc2592
1c00a67e:	08070713          	addi	a4,a4,128 # c2592080 <__l2_shared_end+0xa6582080>
1c00a682:	60e7ae23          	sw	a4,1564(a5)
1c00a686:	0196d737          	lui	a4,0x196d
1c00a68a:	8c570713          	addi	a4,a4,-1851 # 196c8c5 <__CTOR_LIST__-0x1a69373f>
1c00a68e:	62e7a023          	sw	a4,1568(a5)
1c00a692:	cb340737          	lui	a4,0xcb340
1c00a696:	6511                	lui	a0,0x4
1c00a698:	65670713          	addi	a4,a4,1622 # cb340656 <__l2_shared_end+0xaf330656>
1c00a69c:	a3a50293          	addi	t0,a0,-1478 # 3a3a <__CTOR_LIST__-0x1bffc5ca>
1c00a6a0:	62e7a223          	sw	a4,1572(a5)
1c00a6a4:	31b13737          	lui	a4,0x31b13
1c00a6a8:	5c579823          	sh	t0,1488(a5)
1c00a6ac:	71370713          	addi	a4,a4,1811 # 31b13713 <__l2_shared_end+0x15b03713>
1c00a6b0:	62e7a423          	sw	a4,1576(a5)
1c00a6b4:	48146737          	lui	a4,0x48146
1c00a6b8:	55370713          	addi	a4,a4,1363 # 48146553 <__l2_shared_end+0x2c136553>
1c00a6bc:	62e7a623          	sw	a4,1580(a5)
1c00a6c0:	5a40c737          	lui	a4,0x5a40c
1c00a6c4:	c4270713          	addi	a4,a4,-958 # 5a40bc42 <__l2_shared_end+0x3e3fbc42>
1c00a6c8:	62e7a823          	sw	a4,1584(a5)
1c00a6cc:	3c683737          	lui	a4,0x3c683
1c00a6d0:	e2970713          	addi	a4,a4,-471 # 3c682e29 <__l2_shared_end+0x20672e29>
1c00a6d4:	62e7aa23          	sw	a4,1588(a5)
1c00a6d8:	4551a737          	lui	a4,0x4551a
1c00a6dc:	4af70713          	addi	a4,a4,1199 # 4551a4af <__l2_shared_end+0x2950a4af>
1c00a6e0:	62e7ac23          	sw	a4,1592(a5)
1c00a6e4:	4d5c9737          	lui	a4,0x4d5c9
1c00a6e8:	42670713          	addi	a4,a4,1062 # 4d5c9426 <__l2_shared_end+0x315b9426>
1c00a6ec:	62e7ae23          	sw	a4,1596(a5)
1c00a6f0:	2aee7737          	lui	a4,0x2aee7
1c00a6f4:	8fb70713          	addi	a4,a4,-1797 # 2aee68fb <__l2_shared_end+0xeed68fb>
1c00a6f8:	64e7a023          	sw	a4,1600(a5)
1c00a6fc:	95b7c737          	lui	a4,0x95b7c
1c00a700:	8cd70713          	addi	a4,a4,-1843 # 95b7b8cd <__l2_shared_end+0x79b6b8cd>
1c00a704:	64e7a223          	sw	a4,1604(a5)
1c00a708:	96668737          	lui	a4,0x96668
1c00a70c:	33270713          	addi	a4,a4,818 # 96668332 <__l2_shared_end+0x7a658332>
1c00a710:	64e7a423          	sw	a4,1608(a5)
1c00a714:	a0253737          	lui	a4,0xa0253
1c00a718:	1d570713          	addi	a4,a4,469 # a02531d5 <__l2_shared_end+0x842431d5>
1c00a71c:	64e7a623          	sw	a4,1612(a5)
1c00a720:	8abbc737          	lui	a4,0x8abbc
1c00a724:	d4570713          	addi	a4,a4,-699 # 8abbbd45 <__l2_shared_end+0x6ebabd45>
1c00a728:	64e7a823          	sw	a4,1616(a5)
1c00a72c:	2381d737          	lui	a4,0x2381d
1c00a730:	c3b70713          	addi	a4,a4,-965 # 2381cc3b <__l2_shared_end+0x780cc3b>
1c00a734:	64e7aa23          	sw	a4,1620(a5)
1c00a738:	681e4737          	lui	a4,0x681e4
1c00a73c:	d0870713          	addi	a4,a4,-760 # 681e3d08 <__l2_shared_end+0x4c1d3d08>
1c00a740:	64e7ac23          	sw	a4,1624(a5)
1c00a744:	82d76737          	lui	a4,0x82d76
1c00a748:	b2c70713          	addi	a4,a4,-1236 # 82d75b2c <__l2_shared_end+0x66d65b2c>
1c00a74c:	64e7ae23          	sw	a4,1628(a5)
1c00a750:	48c47737          	lui	a4,0x48c47
1c00a754:	60c70713          	addi	a4,a4,1548 # 48c4760c <__l2_shared_end+0x2cc3760c>
1c00a758:	66e7a023          	sw	a4,1632(a5)
1c00a75c:	47511737          	lui	a4,0x47511
1c00a760:	13570713          	addi	a4,a4,309 # 47511135 <__l2_shared_end+0x2b501135>
1c00a764:	66e7a223          	sw	a4,1636(a5)
1c00a768:	01d67737          	lui	a4,0x1d67
1c00a76c:	94f70713          	addi	a4,a4,-1713 # 1d6694f <__CTOR_LIST__-0x1a2996b5>
1c00a770:	66e7a423          	sw	a4,1640(a5)
1c00a774:	bb8d7737          	lui	a4,0xbb8d7
1c00a778:	0d770713          	addi	a4,a4,215 # bb8d70d7 <__l2_shared_end+0x9f8c70d7>
1c00a77c:	66e7a623          	sw	a4,1644(a5)
1c00a780:	779d9737          	lui	a4,0x779d9
1c00a784:	72c70713          	addi	a4,a4,1836 # 779d972c <__l2_shared_end+0x5b9c972c>
1c00a788:	66e7a823          	sw	a4,1648(a5)
1c00a78c:	b6947737          	lui	a4,0xb6947
1c00a790:	45270713          	addi	a4,a4,1106 # b6947452 <__l2_shared_end+0x9a937452>
1c00a794:	66e7aa23          	sw	a4,1652(a5)
1c00a798:	ffa82737          	lui	a4,0xffa82
1c00a79c:	08570713          	addi	a4,a4,133 # ffa82085 <__l2_shared_end+0xe3a72085>
1c00a7a0:	66e7ac23          	sw	a4,1656(a5)
1c00a7a4:	6241c737          	lui	a4,0x6241c
1c00a7a8:	36670713          	addi	a4,a4,870 # 6241c366 <__l2_shared_end+0x4640c366>
1c00a7ac:	66e7ae23          	sw	a4,1660(a5)
1c00a7b0:	80ec3737          	lui	a4,0x80ec3
1c00a7b4:	aca70713          	addi	a4,a4,-1334 # 80ec2aca <__l2_shared_end+0x64eb2aca>
1c00a7b8:	68e7a023          	sw	a4,1664(a5)
1c00a7bc:	1fa5a737          	lui	a4,0x1fa5a
1c00a7c0:	27270713          	addi	a4,a4,626 # 1fa5a272 <__l2_shared_end+0x3a4a272>
1c00a7c4:	68e7a223          	sw	a4,1668(a5)
1c00a7c8:	96386737          	lui	a4,0x96386
1c00a7cc:	9f270713          	addi	a4,a4,-1550 # 963859f2 <__l2_shared_end+0x7a3759f2>
1c00a7d0:	68e7a423          	sw	a4,1672(a5)
1c00a7d4:	955be737          	lui	a4,0x955be
1c00a7d8:	74870713          	addi	a4,a4,1864 # 955be748 <__l2_shared_end+0x795ae748>
1c00a7dc:	68e7a623          	sw	a4,1676(a5)
1c00a7e0:	14be7737          	lui	a4,0x14be7
1c00a7e4:	ac170713          	addi	a4,a4,-1343 # 14be6ac1 <__CTOR_LIST__-0x7419543>
1c00a7e8:	68e7a823          	sw	a4,1680(a5)
1c00a7ec:	fadb5737          	lui	a4,0xfadb5
1c00a7f0:	e6070713          	addi	a4,a4,-416 # fadb4e60 <__l2_shared_end+0xdeda4e60>
1c00a7f4:	68e7aa23          	sw	a4,1684(a5)
1c00a7f8:	b700f737          	lui	a4,0xb700f
1c00a7fc:	4ba70713          	addi	a4,a4,1210 # b700f4ba <__l2_shared_end+0x9afff4ba>
1c00a800:	68e7ac23          	sw	a4,1688(a5)
1c00a804:	070f8737          	lui	a4,0x70f8
1c00a808:	a6a70713          	addi	a4,a4,-1430 # 70f7a6a <__CTOR_LIST__-0x14f0859a>
1c00a80c:	68e7ae23          	sw	a4,1692(a5)
1c00a810:	e1dc6737          	lui	a4,0xe1dc6
1c00a814:	1db70713          	addi	a4,a4,475 # e1dc61db <__l2_shared_end+0xc5db61db>
1c00a818:	6ae7a023          	sw	a4,1696(a5)
1c00a81c:	3bf40737          	lui	a4,0x3bf40
1c00a820:	29170713          	addi	a4,a4,657 # 3bf40291 <__l2_shared_end+0x1ff30291>
1c00a824:	6ae7a223          	sw	a4,1700(a5)
1c00a828:	74601737          	lui	a4,0x74601
1c00a82c:	02d70713          	addi	a4,a4,45 # 7460102d <__l2_shared_end+0x585f102d>
1c00a830:	6ae7a423          	sw	a4,1704(a5)
1c00a834:	42c40737          	lui	a4,0x42c40
1c00a838:	27b70713          	addi	a4,a4,635 # 42c4027b <__l2_shared_end+0x26c3027b>
1c00a83c:	6ae7a623          	sw	a4,1708(a5)
1c00a840:	1f348737          	lui	a4,0x1f348
1c00a844:	55470713          	addi	a4,a4,1364 # 1f348554 <__l2_shared_end+0x3338554>
1c00a848:	6ae7a823          	sw	a4,1712(a5)
1c00a84c:	fabfe737          	lui	a4,0xfabfe
1c00a850:	9d570713          	addi	a4,a4,-1579 # fabfd9d5 <__l2_shared_end+0xdebed9d5>
1c00a854:	6ae7aa23          	sw	a4,1716(a5)
1c00a858:	61600737          	lui	a4,0x61600
1c00a85c:	1a770713          	addi	a4,a4,423 # 616001a7 <__l2_shared_end+0x455f01a7>
1c00a860:	6ae7ac23          	sw	a4,1720(a5)
1c00a864:	b9635737          	lui	a4,0xb9635
1c00a868:	93770713          	addi	a4,a4,-1737 # b9634937 <__l2_shared_end+0x9d624937>
1c00a86c:	6ae7ae23          	sw	a4,1724(a5)
1c00a870:	6b9c2737          	lui	a4,0x6b9c2
1c00a874:	08570713          	addi	a4,a4,133 # 6b9c2085 <__l2_shared_end+0x4f9b2085>
1c00a878:	6ce7a023          	sw	a4,1728(a5)
1c00a87c:	f9b38737          	lui	a4,0xf9b38
1c00a880:	d9a70713          	addi	a4,a4,-614 # f9b37d9a <__l2_shared_end+0xddb27d9a>
1c00a884:	6ce7a223          	sw	a4,1732(a5)
1c00a888:	03100713          	li	a4,49
1c00a88c:	6ce78523          	sb	a4,1738(a5)
1c00a890:	a3008737          	lui	a4,0xa3008
1c00a894:	90270713          	addi	a4,a4,-1790 # a3007902 <__l2_shared_end+0x86ff7902>
1c00a898:	6ce7a623          	sw	a4,1740(a5)
1c00a89c:	844fc737          	lui	a4,0x844fc
1c00a8a0:	4d870713          	addi	a4,a4,1240 # 844fc4d8 <__l2_shared_end+0x684ec4d8>
1c00a8a4:	6ce7a823          	sw	a4,1744(a5)
1c00a8a8:	a293b737          	lui	a4,0xa293b
1c00a8ac:	03570713          	addi	a4,a4,53 # a293b035 <__l2_shared_end+0x8692b035>
1c00a8b0:	6ce7aa23          	sw	a4,1748(a5)
1c00a8b4:	9f50a737          	lui	a4,0x9f50a
1c00a8b8:	03670713          	addi	a4,a4,54 # 9f50a036 <__l2_shared_end+0x834fa036>
1c00a8bc:	6ce7ac23          	sw	a4,1752(a5)
1c00a8c0:	77df3737          	lui	a4,0x77df3
1c00a8c4:	81970713          	addi	a4,a4,-2023 # 77df2819 <__l2_shared_end+0x5bde2819>
1c00a8c8:	6ce7ae23          	sw	a4,1756(a5)
1c00a8cc:	4e8cd737          	lui	a4,0x4e8cd
1c00a8d0:	e1970713          	addi	a4,a4,-487 # 4e8cce19 <__l2_shared_end+0x328bce19>
1c00a8d4:	6ee7a023          	sw	a4,1760(a5)
1c00a8d8:	4d8f2737          	lui	a4,0x4d8f2
1c00a8dc:	29070713          	addi	a4,a4,656 # 4d8f2290 <__l2_shared_end+0x318e2290>
1c00a8e0:	6ee7a223          	sw	a4,1764(a5)
1c00a8e4:	e8b98737          	lui	a4,0xe8b98
1c00a8e8:	cb870713          	addi	a4,a4,-840 # e8b97cb8 <__l2_shared_end+0xccb87cb8>
1c00a8ec:	6ee7a423          	sw	a4,1768(a5)
1c00a8f0:	2171f737          	lui	a4,0x2171f
1c00a8f4:	28270713          	addi	a4,a4,642 # 2171f282 <__l2_shared_end+0x570f282>
1c00a8f8:	6ee7a623          	sw	a4,1772(a5)
1c00a8fc:	45882737          	lui	a4,0x45882
1c00a900:	38070713          	addi	a4,a4,896 # 45882380 <__l2_shared_end+0x29872380>
1c00a904:	6ee7a823          	sw	a4,1776(a5)
1c00a908:	06b92737          	lui	a4,0x6b92
1c00a90c:	ed370713          	addi	a4,a4,-301 # 6b91ed3 <__CTOR_LIST__-0x1546e131>
1c00a910:	6ee7aa23          	sw	a4,1780(a5)
1c00a914:	3eb61737          	lui	a4,0x3eb61
1c00a918:	ec670713          	addi	a4,a4,-314 # 3eb60ec6 <__l2_shared_end+0x22b50ec6>
1c00a91c:	6ee7ac23          	sw	a4,1784(a5)
1c00a920:	845ef737          	lui	a4,0x845ef
1c00a924:	50f70713          	addi	a4,a4,1295 # 845ef50f <__l2_shared_end+0x685df50f>
1c00a928:	6ee7ae23          	sw	a4,1788(a5)
1c00a92c:	1ba96737          	lui	a4,0x1ba96
1c00a930:	7b870713          	addi	a4,a4,1976 # 1ba967b8 <__CTOR_LIST__-0x56984c>
1c00a934:	70e7a023          	sw	a4,1792(a5)
1c00a938:	a074b737          	lui	a4,0xa074b
1c00a93c:	e7970713          	addi	a4,a4,-391 # a074ae79 <__l2_shared_end+0x8473ae79>
1c00a940:	70e7a223          	sw	a4,1796(a5)
1c00a944:	7304c737          	lui	a4,0x7304c
1c00a948:	03a70713          	addi	a4,a4,58 # 7304c03a <__l2_shared_end+0x5703c03a>
1c00a94c:	70e7a423          	sw	a4,1800(a5)
1c00a950:	e6b3c737          	lui	a4,0xe6b3c
1c00a954:	1c870713          	addi	a4,a4,456 # e6b3c1c8 <__l2_shared_end+0xcab2c1c8>
1c00a958:	70e7a623          	sw	a4,1804(a5)
1c00a95c:	7fc3e737          	lui	a4,0x7fc3e
1c00a960:	cae70713          	addi	a4,a4,-850 # 7fc3dcae <__l2_shared_end+0x63c2dcae>
1c00a964:	70e7a823          	sw	a4,1808(a5)
1c00a968:	e1b87737          	lui	a4,0xe1b87
1c00a96c:	91e70713          	addi	a4,a4,-1762 # e1b8691e <__l2_shared_end+0xc5b7691e>
1c00a970:	70e7aa23          	sw	a4,1812(a5)
1c00a974:	db9b0737          	lui	a4,0xdb9b0
1c00a978:	13670713          	addi	a4,a4,310 # db9b0136 <__l2_shared_end+0xbf9a0136>
1c00a97c:	70e7ac23          	sw	a4,1816(a5)
1c00a980:	a174c737          	lui	a4,0xa174c
1c00a984:	30170713          	addi	a4,a4,769 # a174c301 <__l2_shared_end+0x8573c301>
1c00a988:	70e7ae23          	sw	a4,1820(a5)
1c00a98c:	c364e737          	lui	a4,0xc364e
1c00a990:	12270713          	addi	a4,a4,290 # c364e122 <__l2_shared_end+0xa763e122>
1c00a994:	72e7a023          	sw	a4,1824(a5)
1c00a998:	fbb28737          	lui	a4,0xfbb28
1c00a99c:	42570713          	addi	a4,a4,1061 # fbb28425 <__l2_shared_end+0xdfb18425>
1c00a9a0:	84988893          	addi	a7,a7,-1975
1c00a9a4:	72e7a223          	sw	a4,1828(a5)
1c00a9a8:	3a016737          	lui	a4,0x3a016
1c00a9ac:	6d179423          	sh	a7,1736(a5)
1c00a9b0:	6df785a3          	sb	t6,1739(a5)
1c00a9b4:	ecf70713          	addi	a4,a4,-305 # 3a015ecf <__l2_shared_end+0x1e005ecf>
1c00a9b8:	72e7a423          	sw	a4,1832(a5)
1c00a9bc:	897c1737          	lui	a4,0x897c1
1c00a9c0:	24570713          	addi	a4,a4,581 # 897c1245 <__l2_shared_end+0x6d7b1245>
1c00a9c4:	72e7a623          	sw	a4,1836(a5)
1c00a9c8:	86b62737          	lui	a4,0x86b62
1c00a9cc:	63370713          	addi	a4,a4,1587 # 86b62633 <__l2_shared_end+0x6ab52633>
1c00a9d0:	72e7a823          	sw	a4,1840(a5)
1c00a9d4:	55cb8737          	lui	a4,0x55cb8
1c00a9d8:	80370713          	addi	a4,a4,-2045 # 55cb7803 <__l2_shared_end+0x39ca7803>
1c00a9dc:	72e7aa23          	sw	a4,1844(a5)
1c00a9e0:	528ba737          	lui	a4,0x528ba
1c00a9e4:	42570713          	addi	a4,a4,1061 # 528ba425 <__l2_shared_end+0x368aa425>
1c00a9e8:	72e7ac23          	sw	a4,1848(a5)
1c00a9ec:	2b133737          	lui	a4,0x2b133
1c00a9f0:	02b70713          	addi	a4,a4,43 # 2b13302b <__l2_shared_end+0xf12302b>
1c00a9f4:	72e7ae23          	sw	a4,1852(a5)
1c00a9f8:	4b219737          	lui	a4,0x4b219
1c00a9fc:	87670713          	addi	a4,a4,-1930 # 4b218876 <__l2_shared_end+0x2f208876>
1c00aa00:	74e7a023          	sw	a4,1856(a5)
1c00aa04:	d18d8737          	lui	a4,0xd18d8
1c00aa08:	06970713          	addi	a4,a4,105 # d18d8069 <__l2_shared_end+0xb58c8069>
1c00aa0c:	74e7a223          	sw	a4,1860(a5)
1c00aa10:	03ffa737          	lui	a4,0x3ffa
1c00aa14:	49a70713          	addi	a4,a4,1178 # 3ffa49a <__CTOR_LIST__-0x18005b6a>
1c00aa18:	74e7a423          	sw	a4,1864(a5)
1c00aa1c:	20251737          	lui	a4,0x20251
1c00aa20:	63e70713          	addi	a4,a4,1598 # 2025163e <__l2_shared_end+0x424163e>
1c00aa24:	74e7a623          	sw	a4,1868(a5)
1c00aa28:	79950737          	lui	a4,0x79950
1c00aa2c:	c1670713          	addi	a4,a4,-1002 # 7994fc16 <__l2_shared_end+0x5d93fc16>
1c00aa30:	74e7a823          	sw	a4,1872(a5)
1c00aa34:	39242737          	lui	a4,0x39242
1c00aa38:	42270713          	addi	a4,a4,1058 # 39242422 <__l2_shared_end+0x1d232422>
1c00aa3c:	74e7aa23          	sw	a4,1876(a5)
1c00aa40:	71db5737          	lui	a4,0x71db5
1c00aa44:	13e70713          	addi	a4,a4,318 # 71db513e <__l2_shared_end+0x55da513e>
1c00aa48:	74e7ac23          	sw	a4,1880(a5)
1c00aa4c:	1481e737          	lui	a4,0x1481e
1c00aa50:	31570713          	addi	a4,a4,789 # 1481e315 <__CTOR_LIST__-0x77e1cef>
1c00aa54:	74e7ae23          	sw	a4,1884(a5)
1c00aa58:	dc3c9737          	lui	a4,0xdc3c9
1c00aa5c:	9e670713          	addi	a4,a4,-1562 # dc3c89e6 <__l2_shared_end+0xc03b89e6>
1c00aa60:	76e7a023          	sw	a4,1888(a5)
1c00aa64:	1711b737          	lui	a4,0x1711b
1c00aa68:	ec870713          	addi	a4,a4,-312 # 1711aec8 <__CTOR_LIST__-0x4ee513c>
1c00aa6c:	76e7a223          	sw	a4,1892(a5)
1c00aa70:	48653737          	lui	a4,0x48653
1c00aa74:	1a470713          	addi	a4,a4,420 # 486531a4 <__l2_shared_end+0x2c6431a4>
1c00aa78:	76e7a423          	sw	a4,1896(a5)
1c00aa7c:	62b41737          	lui	a4,0x62b41
1c00aa80:	a0170713          	addi	a4,a4,-1535 # 62b40a01 <__l2_shared_end+0x46b30a01>
1c00aa84:	76e7a623          	sw	a4,1900(a5)
1c00aa88:	1472b737          	lui	a4,0x1472b
1c00aa8c:	69f70713          	addi	a4,a4,1695 # 1472b69f <__CTOR_LIST__-0x78d4965>
1c00aa90:	76e7a823          	sw	a4,1904(a5)
1c00aa94:	6c1a0737          	lui	a4,0x6c1a0
1c00aa98:	38d70713          	addi	a4,a4,909 # 6c1a038d <__l2_shared_end+0x5019038d>
1c00aa9c:	76e7aa23          	sw	a4,1908(a5)
1c00aaa0:	4a6a2737          	lui	a4,0x4a6a2
1c00aaa4:	a6070713          	addi	a4,a4,-1440 # 4a6a1a60 <__l2_shared_end+0x2e691a60>
1c00aaa8:	76e7ac23          	sw	a4,1912(a5)
1c00aaac:	2d872737          	lui	a4,0x2d872
1c00aab0:	d6670713          	addi	a4,a4,-666 # 2d871d66 <__l2_shared_end+0x11861d66>
1c00aab4:	76e7ae23          	sw	a4,1916(a5)
1c00aab8:	7593f737          	lui	a4,0x7593f
1c00aabc:	68e70713          	addi	a4,a4,1678 # 7593f68e <__l2_shared_end+0x5992f68e>
1c00aac0:	78e7a023          	sw	a4,1920(a5)
1c00aac4:	58591737          	lui	a4,0x58591
1c00aac8:	10a70713          	addi	a4,a4,266 # 5859110a <__l2_shared_end+0x3c58110a>
1c00aacc:	78e7a223          	sw	a4,1924(a5)
1c00aad0:	26b97737          	lui	a4,0x26b97
1c00aad4:	a7170713          	addi	a4,a4,-1423 # 26b96a71 <__l2_shared_end+0xab86a71>
1c00aad8:	78e7a423          	sw	a4,1928(a5)
1c00aadc:	6351b737          	lui	a4,0x6351b
1c00aae0:	03e70713          	addi	a4,a4,62 # 6351b03e <__l2_shared_end+0x4750b03e>
1c00aae4:	78e7a623          	sw	a4,1932(a5)
1c00aae8:	58231737          	lui	a4,0x58231
1c00aaec:	05770713          	addi	a4,a4,87 # 58231057 <__l2_shared_end+0x3c221057>
1c00aaf0:	78e7a823          	sw	a4,1936(a5)
1c00aaf4:	6425e737          	lui	a4,0x6425e
1c00aaf8:	5cd70713          	addi	a4,a4,1485 # 6425e5cd <__l2_shared_end+0x4824e5cd>
1c00aafc:	78e7aa23          	sw	a4,1940(a5)
1c00ab00:	a85c8737          	lui	a4,0xa85c8
1c00ab04:	06470713          	addi	a4,a4,100 # a85c8064 <__l2_shared_end+0x8c5b8064>
1c00ab08:	78e7ac23          	sw	a4,1944(a5)
1c00ab0c:	75619737          	lui	a4,0x75619
1c00ab10:	6f570713          	addi	a4,a4,1781 # 756196f5 <__l2_shared_end+0x596096f5>
1c00ab14:	78e7ae23          	sw	a4,1948(a5)
1c00ab18:	75a4d737          	lui	a4,0x75a4d
1c00ab1c:	61a70713          	addi	a4,a4,1562 # 75a4d61a <__l2_shared_end+0x59a3d61a>
1c00ab20:	7ae7a023          	sw	a4,1952(a5)
1c00ab24:	cb78f737          	lui	a4,0xcb78f
1c00ab28:	ca770713          	addi	a4,a4,-857 # cb78eca7 <__l2_shared_end+0xaf77eca7>
1c00ab2c:	7ae7a223          	sw	a4,1956(a5)
1c00ab30:	bbc32737          	lui	a4,0xbbc32
1c00ab34:	97370713          	addi	a4,a4,-1677 # bbc31973 <__l2_shared_end+0x9fc21973>
1c00ab38:	7ae7a423          	sw	a4,1960(a5)
1c00ab3c:	bbe14737          	lui	a4,0xbbe14
1c00ab40:	4c570713          	addi	a4,a4,1221 # bbe144c5 <__l2_shared_end+0x9fe044c5>
1c00ab44:	7ae7a623          	sw	a4,1964(a5)
1c00ab48:	aeaa8737          	lui	a4,0xaeaa8
1c00ab4c:	51170713          	addi	a4,a4,1297 # aeaa8511 <__l2_shared_end+0x92a98511>
1c00ab50:	7ae7a823          	sw	a4,1968(a5)
1c00ab54:	0bba5737          	lui	a4,0xbba5
1c00ab58:	1b770713          	addi	a4,a4,439 # bba51b7 <__CTOR_LIST__-0x1045ae4d>
1c00ab5c:	7ae7aa23          	sw	a4,1972(a5)
1c00ab60:	6e242737          	lui	a4,0x6e242
1c00ab64:	33970713          	addi	a4,a4,825 # 6e242339 <__l2_shared_end+0x52232339>
1c00ab68:	7ae7ac23          	sw	a4,1976(a5)
1c00ab6c:	4f0af737          	lui	a4,0x4f0af
1c00ab70:	43370713          	addi	a4,a4,1075 # 4f0af433 <__l2_shared_end+0x3309f433>
1c00ab74:	7ae7ae23          	sw	a4,1980(a5)
1c00ab78:	7761                	lui	a4,0xffff8
1c00ab7a:	8f474713          	xori	a4,a4,-1804
1c00ab7e:	7ce79023          	sh	a4,1984(a5)
1c00ab82:	472d                	li	a4,11
1c00ab84:	7ce78123          	sb	a4,1986(a5)
1c00ab88:	07400713          	li	a4,116
1c00ab8c:	7ce781a3          	sb	a4,1987(a5)
1c00ab90:	18a26737          	lui	a4,0x18a26
1c00ab94:	25370713          	addi	a4,a4,595 # 18a26253 <__CTOR_LIST__-0x35d9db1>
1c00ab98:	7ce7a223          	sw	a4,1988(a5)
1c00ab9c:	4d477737          	lui	a4,0x4d477
1c00aba0:	9d170713          	addi	a4,a4,-1583 # 4d4769d1 <__l2_shared_end+0x314669d1>
1c00aba4:	7ce7a423          	sw	a4,1992(a5)
1c00aba8:	f7a91737          	lui	a4,0xf7a91
1c00abac:	87270713          	addi	a4,a4,-1934 # f7a90872 <__l2_shared_end+0xdba80872>
1c00abb0:	7ce7a623          	sw	a4,1996(a5)
1c00abb4:	30287737          	lui	a4,0x30287
1c00abb8:	25770713          	addi	a4,a4,599 # 30287257 <__l2_shared_end+0x14277257>
1c00abbc:	7ce7a823          	sw	a4,2000(a5)
1c00abc0:	8d0ff737          	lui	a4,0x8d0ff
1c00abc4:	28a70713          	addi	a4,a4,650 # 8d0ff28a <__l2_shared_end+0x710ef28a>
1c00abc8:	7ce7aa23          	sw	a4,2004(a5)
1c00abcc:	74a20737          	lui	a4,0x74a20
1c00abd0:	32470713          	addi	a4,a4,804 # 74a20324 <__l2_shared_end+0x58a10324>
1c00abd4:	7ce7ac23          	sw	a4,2008(a5)
1c00abd8:	cf53d737          	lui	a4,0xcf53d
1c00abdc:	f7770713          	addi	a4,a4,-137 # cf53cf77 <__l2_shared_end+0xb352cf77>
1c00abe0:	7ce7ae23          	sw	a4,2012(a5)
1c00abe4:	47a23737          	lui	a4,0x47a23
1c00abe8:	3f170713          	addi	a4,a4,1009 # 47a233f1 <__l2_shared_end+0x2ba133f1>
1c00abec:	7ee7a023          	sw	a4,2016(a5)
1c00abf0:	98b2c737          	lui	a4,0x98b2c
1c00abf4:	2d570713          	addi	a4,a4,725 # 98b2c2d5 <__l2_shared_end+0x7cb1c2d5>
1c00abf8:	7ee7a223          	sw	a4,2020(a5)
1c00abfc:	c6ba2737          	lui	a4,0xc6ba2
1c00ac00:	1bf70713          	addi	a4,a4,447 # c6ba21bf <__l2_shared_end+0xaab921bf>
1c00ac04:	7ee7a423          	sw	a4,2024(a5)
1c00ac08:	9e644737          	lui	a4,0x9e644
1c00ac0c:	4dc70713          	addi	a4,a4,1244 # 9e6444dc <__l2_shared_end+0x826344dc>
1c00ac10:	7ee7a623          	sw	a4,2028(a5)
1c00ac14:	f5ceb737          	lui	a4,0xf5ceb
1c00ac18:	f6370713          	addi	a4,a4,-157 # f5ceaf63 <__l2_shared_end+0xd9cdaf63>
1c00ac1c:	7ee7a823          	sw	a4,2032(a5)
1c00ac20:	7aa0d737          	lui	a4,0x7aa0d
1c00ac24:	34a70713          	addi	a4,a4,842 # 7aa0d34a <__l2_shared_end+0x5e9fd34a>
1c00ac28:	7ee7aa23          	sw	a4,2036(a5)
1c00ac2c:	b347e737          	lui	a4,0xb347e
1c00ac30:	47470713          	addi	a4,a4,1140 # b347e474 <__l2_shared_end+0x9746e474>
1c00ac34:	7ee7ac23          	sw	a4,2040(a5)
1c00ac38:	29cab737          	lui	a4,0x29cab
1c00ac3c:	c6b70713          	addi	a4,a4,-917 # 29caac6b <__l2_shared_end+0xdc9ac6b>
1c00ac40:	96be                	add	a3,a3,a5
1c00ac42:	7ee7ae23          	sw	a4,2044(a5)
1c00ac46:	683307b7          	lui	a5,0x68330
1c00ac4a:	55e78793          	addi	a5,a5,1374 # 6833055e <__l2_shared_end+0x4c32055e>
1c00ac4e:	80f6a023          	sw	a5,-2048(a3)
1c00ac52:	6e1487b7          	lui	a5,0x6e148
1c00ac56:	cef78793          	addi	a5,a5,-785 # 6e147cef <__l2_shared_end+0x52137cef>
1c00ac5a:	80f6a223          	sw	a5,-2044(a3)
1c00ac5e:	b3ed37b7          	lui	a5,0xb3ed3
1c00ac62:	81c78793          	addi	a5,a5,-2020 # b3ed281c <__l2_shared_end+0x97ec281c>
1c00ac66:	80f6a423          	sw	a5,-2040(a3)
1c00ac6a:	c97737b7          	lui	a5,0xc9773
1c00ac6e:	71b78793          	addi	a5,a5,1819 # c977371b <__l2_shared_end+0xad76371b>
1c00ac72:	80f6a623          	sw	a5,-2036(a3)
1c00ac76:	7dc2a7b7          	lui	a5,0x7dc2a
1c00ac7a:	74178793          	addi	a5,a5,1857 # 7dc2a741 <__l2_shared_end+0x61c1a741>
1c00ac7e:	80f6a823          	sw	a5,-2032(a3)
1c00ac82:	7b4367b7          	lui	a5,0x7b436
1c00ac86:	9c578793          	addi	a5,a5,-1595 # 7b4359c5 <__l2_shared_end+0x5f4259c5>
1c00ac8a:	80f6aa23          	sw	a5,-2028(a3)
1c00ac8e:	293d07b7          	lui	a5,0x293d0
1c00ac92:	80f78793          	addi	a5,a5,-2033 # 293cf80f <__l2_shared_end+0xd3bf80f>
1c00ac96:	80f6ac23          	sw	a5,-2024(a3)
1c00ac9a:	ef2807b7          	lui	a5,0xef280
1c00ac9e:	81078793          	addi	a5,a5,-2032 # ef27f810 <__l2_shared_end+0xd326f810>
1c00aca2:	80f6ae23          	sw	a5,-2020(a3)
1c00aca6:	267757b7          	lui	a5,0x26775
1c00acaa:	d2478793          	addi	a5,a5,-732 # 26774d24 <__l2_shared_end+0xa764d24>
1c00acae:	82f6a023          	sw	a5,-2016(a3)
1c00acb2:	089737b7          	lui	a5,0x8973
1c00acb6:	baf78793          	addi	a5,a5,-1105 # 8972baf <__CTOR_LIST__-0x1368d455>
1c00acba:	82f6a223          	sw	a5,-2012(a3)
1c00acbe:	b1cf57b7          	lui	a5,0xb1cf5
1c00acc2:	b6578793          	addi	a5,a5,-1179 # b1cf4b65 <__l2_shared_end+0x95ce4b65>
1c00acc6:	82f6a423          	sw	a5,-2008(a3)
1c00acca:	4468a7b7          	lui	a5,0x4468a
1c00acce:	23978793          	addi	a5,a5,569 # 4468a239 <__l2_shared_end+0x2867a239>
1c00acd2:	82f6a623          	sw	a5,-2004(a3)
1c00acd6:	9cb7f7b7          	lui	a5,0x9cb7f
1c00acda:	4c678793          	addi	a5,a5,1222 # 9cb7f4c6 <__l2_shared_end+0x80b6f4c6>
1c00acde:	82f6a823          	sw	a5,-2000(a3)
1c00ace2:	7074e7b7          	lui	a5,0x7074e
1c00ace6:	4d978793          	addi	a5,a5,1241 # 7074e4d9 <__l2_shared_end+0x5473e4d9>
1c00acea:	82f6aa23          	sw	a5,-1996(a3)
1c00acee:	9675a7b7          	lui	a5,0x9675a
1c00acf2:	76578793          	addi	a5,a5,1893 # 9675a765 <__l2_shared_end+0x7a74a765>
1c00acf6:	82f6ac23          	sw	a5,-1992(a3)
1c00acfa:	6cf927b7          	lui	a5,0x6cf92
1c00acfe:	7b978793          	addi	a5,a5,1977 # 6cf927b9 <__l2_shared_end+0x50f827b9>
1c00ad02:	82f6ae23          	sw	a5,-1988(a3)
1c00ad06:	6772c7b7          	lui	a5,0x6772c
1c00ad0a:	cbd78793          	addi	a5,a5,-835 # 6772bcbd <__l2_shared_end+0x4b71bcbd>
1c00ad0e:	84f6a023          	sw	a5,-1984(a3)
1c00ad12:	ac32a7b7          	lui	a5,0xac32a
1c00ad16:	eac78793          	addi	a5,a5,-340 # ac329eac <__l2_shared_end+0x90319eac>
1c00ad1a:	84f6a223          	sw	a5,-1980(a3)
1c00ad1e:	4c6c77b7          	lui	a5,0x4c6c7
1c00ad22:	f3978793          	addi	a5,a5,-199 # 4c6c6f39 <__l2_shared_end+0x306b6f39>
1c00ad26:	84f6a423          	sw	a5,-1976(a3)
1c00ad2a:	0aaa47b7          	lui	a5,0xaaa4
1c00ad2e:	9e778793          	addi	a5,a5,-1561 # aaa39e7 <__CTOR_LIST__-0x1155c61d>
1c00ad32:	84f6a623          	sw	a5,-1972(a3)
1c00ad36:	accc17b7          	lui	a5,0xaccc1
1c00ad3a:	fa678793          	addi	a5,a5,-90 # accc0fa6 <__l2_shared_end+0x90cb0fa6>
1c00ad3e:	84f6a823          	sw	a5,-1968(a3)
1c00ad42:	b1da97b7          	lui	a5,0xb1da9
1c00ad46:	e1778793          	addi	a5,a5,-489 # b1da8e17 <__l2_shared_end+0x95d98e17>
1c00ad4a:	84f6aa23          	sw	a5,-1964(a3)
1c00ad4e:	fe8847b7          	lui	a5,0xfe884
1c00ad52:	6e078793          	addi	a5,a5,1760 # fe8846e0 <__l2_shared_end+0xe28746e0>
1c00ad56:	84f6ac23          	sw	a5,-1960(a3)
1c00ad5a:	0142a7b7          	lui	a5,0x142a
1c00ad5e:	77178793          	addi	a5,a5,1905 # 142a771 <__CTOR_LIST__-0x1abd5893>
1c00ad62:	84f6ae23          	sw	a5,-1956(a3)
1c00ad66:	4bc6a7b7          	lui	a5,0x4bc6a
1c00ad6a:	ba978793          	addi	a5,a5,-1111 # 4bc69ba9 <__l2_shared_end+0x2fc59ba9>
1c00ad6e:	86f6a023          	sw	a5,-1952(a3)
1c00ad72:	89cc07b7          	lui	a5,0x89cc0
1c00ad76:	85578793          	addi	a5,a5,-1963 # 89cbf855 <__l2_shared_end+0x6dcaf855>
1c00ad7a:	86f6a223          	sw	a5,-1948(a3)
1c00ad7e:	e54517b7          	lui	a5,0xe5451
1c00ad82:	5e178793          	addi	a5,a5,1505 # e54515e1 <__l2_shared_end+0xc94415e1>
1c00ad86:	86f6a423          	sw	a5,-1944(a3)
1c00ad8a:	86f467b7          	lui	a5,0x86f46
1c00ad8e:	a2778793          	addi	a5,a5,-1497 # 86f45a27 <__l2_shared_end+0x6af35a27>
1c00ad92:	86f6a623          	sw	a5,-1940(a3)
1c00ad96:	7566f7b7          	lui	a5,0x7566f
1c00ad9a:	c2678793          	addi	a5,a5,-986 # 7566ec26 <__l2_shared_end+0x5965ec26>
1c00ad9e:	86f6a823          	sw	a5,-1936(a3)
1c00ada2:	7c8ac7b7          	lui	a5,0x7c8ac
1c00ada6:	a2078793          	addi	a5,a5,-1504 # 7c8aba20 <__l2_shared_end+0x6089ba20>
1c00adaa:	86f6aa23          	sw	a5,-1932(a3)
1c00adae:	7e30c7b7          	lui	a5,0x7e30c
1c00adb2:	28878793          	addi	a5,a5,648 # 7e30c288 <__l2_shared_end+0x622fc288>
1c00adb6:	86f6ac23          	sw	a5,-1928(a3)
1c00adba:	ef5537b7          	lui	a5,0xef553
1c00adbe:	47978793          	addi	a5,a5,1145 # ef553479 <__l2_shared_end+0xd3543479>
1c00adc2:	86f6ae23          	sw	a5,-1924(a3)
1c00adc6:	e1fa87b7          	lui	a5,0xe1fa8
1c00adca:	08778793          	addi	a5,a5,135 # e1fa8087 <__l2_shared_end+0xc5f98087>
1c00adce:	88f6a023          	sw	a5,-1920(a3)
1c00add2:	59ea17b7          	lui	a5,0x59ea1
1c00add6:	26478793          	addi	a5,a5,612 # 59ea1264 <__l2_shared_end+0x3de91264>
1c00adda:	88f6a223          	sw	a5,-1916(a3)
1c00adde:	f50627b7          	lui	a5,0xf5062
1c00ade2:	4e978793          	addi	a5,a5,1257 # f50624e9 <__l2_shared_end+0xd90524e9>
1c00ade6:	88f6a423          	sw	a5,-1912(a3)
1c00adea:	c22d97b7          	lui	a5,0xc22d9
1c00adee:	09578793          	addi	a5,a5,149 # c22d9095 <__l2_shared_end+0xa62c9095>
1c00adf2:	88f6a623          	sw	a5,-1908(a3)
1c00adf6:	142b67b7          	lui	a5,0x142b6
1c00adfa:	11c78793          	addi	a5,a5,284 # 142b611c <__CTOR_LIST__-0x7d49ee8>
1c00adfe:	88f6a823          	sw	a5,-1904(a3)
1c00ae02:	31cf07b7          	lui	a5,0x31cf0
1c00ae06:	12878793          	addi	a5,a5,296 # 31cf0128 <__l2_shared_end+0x15ce0128>
1c00ae0a:	88f6aa23          	sw	a5,-1900(a3)
1c00ae0e:	5c47c7b7          	lui	a5,0x5c47c
1c00ae12:	0ab78793          	addi	a5,a5,171 # 5c47c0ab <__l2_shared_end+0x4046c0ab>
1c00ae16:	88f6ac23          	sw	a5,-1896(a3)
1c00ae1a:	2d77e7b7          	lui	a5,0x2d77e
1c00ae1e:	e7b78793          	addi	a5,a5,-389 # 2d77de7b <__l2_shared_end+0x1176de7b>
1c00ae22:	88f6ae23          	sw	a5,-1892(a3)
1c00ae26:	2d5ac7b7          	lui	a5,0x2d5ac
1c00ae2a:	55178793          	addi	a5,a5,1361 # 2d5ac551 <__l2_shared_end+0x1159c551>
1c00ae2e:	8af6a023          	sw	a5,-1888(a3)
1c00ae32:	c51b67b7          	lui	a5,0xc51b6
1c00ae36:	5fc78793          	addi	a5,a5,1532 # c51b65fc <__l2_shared_end+0xa91a65fc>
1c00ae3a:	8af6a223          	sw	a5,-1884(a3)
1c00ae3e:	024347b7          	lui	a5,0x2434
1c00ae42:	1ab78793          	addi	a5,a5,427 # 24341ab <__CTOR_LIST__-0x19bcbe59>
1c00ae46:	8af6a423          	sw	a5,-1880(a3)
1c00ae4a:	4ccc17b7          	lui	a5,0x4ccc1
1c00ae4e:	32878793          	addi	a5,a5,808 # 4ccc1328 <__l2_shared_end+0x30cb1328>
1c00ae52:	8af6a623          	sw	a5,-1876(a3)
1c00ae56:	2cf5c7b7          	lui	a5,0x2cf5c
1c00ae5a:	68c78793          	addi	a5,a5,1676 # 2cf5c68c <__l2_shared_end+0x10f4c68c>
1c00ae5e:	8af6a823          	sw	a5,-1872(a3)
1c00ae62:	cde327b7          	lui	a5,0xcde32
1c00ae66:	78d78793          	addi	a5,a5,1933 # cde3278d <__l2_shared_end+0xb1e2278d>
1c00ae6a:	8af6aa23          	sw	a5,-1868(a3)
1c00ae6e:	f8400793          	li	a5,-124
1c00ae72:	8af68d23          	sb	a5,-1862(a3)
1c00ae76:	f04347b7          	lui	a5,0xf0434
1c00ae7a:	38c78793          	addi	a5,a5,908 # f043438c <__l2_shared_end+0xd442438c>
1c00ae7e:	8af6ae23          	sw	a5,-1860(a3)
1c00ae82:	6c6cf7b7          	lui	a5,0x6c6cf
1c00ae86:	dc778793          	addi	a5,a5,-569 # 6c6cedc7 <__l2_shared_end+0x506bedc7>
1c00ae8a:	8cf6a023          	sw	a5,-1856(a3)
1c00ae8e:	c565f7b7          	lui	a5,0xc565f
1c00ae92:	7b978793          	addi	a5,a5,1977 # c565f7b9 <__l2_shared_end+0xa964f7b9>
1c00ae96:	8cf6a223          	sw	a5,-1852(a3)
1c00ae9a:	bc5587b7          	lui	a5,0xbc558
1c00ae9e:	e0478793          	addi	a5,a5,-508 # bc557e04 <__l2_shared_end+0xa0547e04>
1c00aea2:	8cf6a423          	sw	a5,-1848(a3)
1c00aea6:	b9d5b7b7          	lui	a5,0xb9d5b
1c00aeaa:	a4878793          	addi	a5,a5,-1464 # b9d5aa48 <__l2_shared_end+0x9dd4aa48>
1c00aeae:	8cf6a623          	sw	a5,-1844(a3)
1c00aeb2:	878217b7          	lui	a5,0x87821
1c00aeb6:	23278793          	addi	a5,a5,562 # 87821232 <__l2_shared_end+0x6b811232>
1c00aeba:	8cf6a823          	sw	a5,-1840(a3)
1c00aebe:	db3917b7          	lui	a5,0xdb391
1c00aec2:	9f778793          	addi	a5,a5,-1545 # db3909f7 <__l2_shared_end+0xbf3809f7>
1c00aec6:	8cf6aa23          	sw	a5,-1836(a3)
1c00aeca:	c06147b7          	lui	a5,0xc0614
1c00aece:	a7578793          	addi	a5,a5,-1419 # c0613a75 <__l2_shared_end+0xa4603a75>
1c00aed2:	8cf6ac23          	sw	a5,-1832(a3)
1c00aed6:	3018e7b7          	lui	a5,0x3018e
1c00aeda:	bd778793          	addi	a5,a5,-1065 # 3018dbd7 <__l2_shared_end+0x1417dbd7>
1c00aede:	8cf6ae23          	sw	a5,-1828(a3)
1c00aee2:	8c2857b7          	lui	a5,0x8c285
1c00aee6:	6c278793          	addi	a5,a5,1730 # 8c2856c2 <__l2_shared_end+0x702756c2>
1c00aeea:	8ef6a023          	sw	a5,-1824(a3)
1c00aeee:	9bcc87b7          	lui	a5,0x9bcc8
1c00aef2:	51c78793          	addi	a5,a5,1308 # 9bcc851c <__l2_shared_end+0x7fcb851c>
1c00aef6:	8ef6a223          	sw	a5,-1820(a3)
1c00aefa:	6683e7b7          	lui	a5,0x6683e
1c00aefe:	5bc78793          	addi	a5,a5,1468 # 6683e5bc <__l2_shared_end+0x4a82e5bc>
1c00af02:	8ef6a423          	sw	a5,-1816(a3)
1c00af06:	c828c7b7          	lui	a5,0xc828c
1c00af0a:	5da78793          	addi	a5,a5,1498 # c828c5da <__l2_shared_end+0xac27c5da>
1c00af0e:	8ef6a623          	sw	a5,-1812(a3)
1c00af12:	691bd7b7          	lui	a5,0x691bd
1c00af16:	69378793          	addi	a5,a5,1683 # 691bd693 <__l2_shared_end+0x4d1ad693>
1c00af1a:	8ef6a823          	sw	a5,-1808(a3)
1c00af1e:	82cb17b7          	lui	a5,0x82cb1
1c00af22:	b8578793          	addi	a5,a5,-1147 # 82cb0b85 <__l2_shared_end+0x66ca0b85>
1c00af26:	8ef6aa23          	sw	a5,-1804(a3)
1c00af2a:	698397b7          	lui	a5,0x69839
1c00af2e:	e7578793          	addi	a5,a5,-395 # 69838e75 <__l2_shared_end+0x4d828e75>
1c00af32:	8ef6ac23          	sw	a5,-1800(a3)
1c00af36:	16f8e7b7          	lui	a5,0x16f8e
1c00af3a:	13678793          	addi	a5,a5,310 # 16f8e136 <__CTOR_LIST__-0x5071ece>
1c00af3e:	8ef6ae23          	sw	a5,-1796(a3)
1c00af42:	645867b7          	lui	a5,0x64586
1c00af46:	13878793          	addi	a5,a5,312 # 64586138 <__l2_shared_end+0x48576138>
1c00af4a:	90f6a023          	sw	a5,-1792(a3)
1c00af4e:	5bd3d7b7          	lui	a5,0x5bd3d
1c00af52:	a8278793          	addi	a5,a5,-1406 # 5bd3ca82 <__l2_shared_end+0x3fd2ca82>
1c00af56:	90f6a223          	sw	a5,-1788(a3)
1c00af5a:	7f43b7b7          	lui	a5,0x7f43b
1c00af5e:	14d78793          	addi	a5,a5,333 # 7f43b14d <__l2_shared_end+0x6342b14d>
1c00af62:	90f6a423          	sw	a5,-1784(a3)
1c00af66:	b68077b7          	lui	a5,0xb6807
1c00af6a:	9ad78793          	addi	a5,a5,-1619 # b68069ad <__l2_shared_end+0x9a7f69ad>
1c00af6e:	90f6a623          	sw	a5,-1780(a3)
1c00af72:	65b187b7          	lui	a5,0x65b18
1c00af76:	06278793          	addi	a5,a5,98 # 65b18062 <__l2_shared_end+0x49b08062>
1c00af7a:	90f6a823          	sw	a5,-1776(a3)
1c00af7e:	24f577b7          	lui	a5,0x24f57
1c00af82:	22d78793          	addi	a5,a5,557 # 24f5722d <__l2_shared_end+0x8f4722d>
1c00af86:	90f6aa23          	sw	a5,-1772(a3)
1c00af8a:	5f01b7b7          	lui	a5,0x5f01b
1c00af8e:	80778793          	addi	a5,a5,-2041 # 5f01a807 <__l2_shared_end+0x4300a807>
1c00af92:	90f6ac23          	sw	a5,-1768(a3)
1c00af96:	759ec7b7          	lui	a5,0x759ec
1c00af9a:	28578793          	addi	a5,a5,645 # 759ec285 <__l2_shared_end+0x599dc285>
1c00af9e:	90f6ae23          	sw	a5,-1764(a3)
1c00afa2:	338917b7          	lui	a5,0x33891
1c00afa6:	5b278793          	addi	a5,a5,1458 # 338915b2 <__l2_shared_end+0x178815b2>
1c00afaa:	92f6a023          	sw	a5,-1760(a3)
1c00afae:	7d88f7b7          	lui	a5,0x7d88f
1c00afb2:	5a478793          	addi	a5,a5,1444 # 7d88f5a4 <__l2_shared_end+0x6187f5a4>
1c00afb6:	17880813          	addi	a6,a6,376
1c00afba:	92f6a223          	sw	a5,-1756(a3)
1c00afbe:	83b527b7          	lui	a5,0x83b52
1c00afc2:	8b069c23          	sh	a6,-1864(a3)
1c00afc6:	8be68da3          	sb	t5,-1861(a3)
1c00afca:	0b378793          	addi	a5,a5,179 # 83b520b3 <__l2_shared_end+0x67b420b3>
1c00afce:	92f6a423          	sw	a5,-1752(a3)
1c00afd2:	27cad7b7          	lui	a5,0x27cad
1c00afd6:	bcd78793          	addi	a5,a5,-1075 # 27cacbcd <__l2_shared_end+0xbc9cbcd>
1c00afda:	92f6a623          	sw	a5,-1748(a3)
1c00afde:	f821b7b7          	lui	a5,0xf821b
1c00afe2:	c4e78793          	addi	a5,a5,-946 # f821ac4e <__l2_shared_end+0xdc20ac4e>
1c00afe6:	92f6a823          	sw	a5,-1744(a3)
1c00afea:	b87937b7          	lui	a5,0xb8793
1c00afee:	87078793          	addi	a5,a5,-1936 # b8792870 <__l2_shared_end+0x9c782870>
1c00aff2:	92f6aa23          	sw	a5,-1740(a3)
1c00aff6:	62fb57b7          	lui	a5,0x62fb5
1c00affa:	abc78793          	addi	a5,a5,-1348 # 62fb4abc <__l2_shared_end+0x46fa4abc>
1c00affe:	92f6ac23          	sw	a5,-1736(a3)
1c00b002:	146d07b7          	lui	a5,0x146d0
1c00b006:	5ba78793          	addi	a5,a5,1466 # 146d05ba <__CTOR_LIST__-0x792fa4a>
1c00b00a:	92f6ae23          	sw	a5,-1732(a3)
1c00b00e:	159217b7          	lui	a5,0x15921
1c00b012:	26578793          	addi	a5,a5,613 # 15921265 <__CTOR_LIST__-0x66ded9f>
1c00b016:	94f6a023          	sw	a5,-1728(a3)
1c00b01a:	4665c7b7          	lui	a5,0x4665c
1c00b01e:	75478793          	addi	a5,a5,1876 # 4665c754 <__l2_shared_end+0x2a64c754>
1c00b022:	94f6a223          	sw	a5,-1724(a3)
1c00b026:	bd9657b7          	lui	a5,0xbd965
1c00b02a:	c4d78793          	addi	a5,a5,-947 # bd964c4d <__l2_shared_end+0xa1954c4d>
1c00b02e:	94f6a423          	sw	a5,-1720(a3)
1c00b032:	2097a7b7          	lui	a5,0x2097a
1c00b036:	a3c78793          	addi	a5,a5,-1476 # 20979a3c <__l2_shared_end+0x4969a3c>
1c00b03a:	94f6a623          	sw	a5,-1716(a3)
1c00b03e:	393387b7          	lui	a5,0x39338
1c00b042:	c1878793          	addi	a5,a5,-1000 # 39337c18 <__l2_shared_end+0x1d327c18>
1c00b046:	94f6a823          	sw	a5,-1712(a3)
1c00b04a:	c43b67b7          	lui	a5,0xc43b6
1c00b04e:	9d078793          	addi	a5,a5,-1584 # c43b59d0 <__l2_shared_end+0xa83a59d0>
1c00b052:	94f6aa23          	sw	a5,-1708(a3)
1c00b056:	5591a7b7          	lui	a5,0x5591a
1c00b05a:	5bb78793          	addi	a5,a5,1467 # 5591a5bb <__l2_shared_end+0x3990a5bb>
1c00b05e:	94f6ac23          	sw	a5,-1704(a3)
1c00b062:	b8f6a7b7          	lui	a5,0xb8f6a
1c00b066:	f4678793          	addi	a5,a5,-186 # b8f69f46 <__l2_shared_end+0x9cf59f46>
1c00b06a:	94f6ae23          	sw	a5,-1700(a3)
1c00b06e:	c55f97b7          	lui	a5,0xc55f9
1c00b072:	a6878793          	addi	a5,a5,-1432 # c55f8a68 <__l2_shared_end+0xa95e8a68>
1c00b076:	96f6a023          	sw	a5,-1696(a3)
1c00b07a:	d44677b7          	lui	a5,0xd4467
1c00b07e:	bfa78793          	addi	a5,a5,-1030 # d4466bfa <__l2_shared_end+0xb8456bfa>
1c00b082:	96f6a223          	sw	a5,-1692(a3)
1c00b086:	bd6807b7          	lui	a5,0xbd680
1c00b08a:	60778793          	addi	a5,a5,1543 # bd680607 <__l2_shared_end+0xa1670607>
1c00b08e:	96f6a423          	sw	a5,-1688(a3)
1c00b092:	795f97b7          	lui	a5,0x795f9
1c00b096:	c1678793          	addi	a5,a5,-1002 # 795f8c16 <__l2_shared_end+0x5d5e8c16>
1c00b09a:	96f6a623          	sw	a5,-1684(a3)
1c00b09e:	097697b7          	lui	a5,0x9769
1c00b0a2:	26478793          	addi	a5,a5,612 # 9769264 <__CTOR_LIST__-0x12896da0>
1c00b0a6:	96f6a823          	sw	a5,-1680(a3)
1c00b0aa:	2799a7b7          	lui	a5,0x2799a
1c00b0ae:	94078793          	addi	a5,a5,-1728 # 27999940 <__l2_shared_end+0xb989940>
1c00b0b2:	96f6aa23          	sw	a5,-1676(a3)
1c00b0b6:	b23687b7          	lui	a5,0xb2368
1c00b0ba:	26278793          	addi	a5,a5,610 # b2368262 <__l2_shared_end+0x96358262>
1c00b0be:	96f6ac23          	sw	a5,-1672(a3)
1c00b0c2:	436837b7          	lui	a5,0x43683
1c00b0c6:	94178793          	addi	a5,a5,-1727 # 43682941 <__l2_shared_end+0x27672941>
1c00b0ca:	96f6ae23          	sw	a5,-1668(a3)
1c00b0ce:	2abc37b7          	lui	a5,0x2abc3
1c00b0d2:	c8d78793          	addi	a5,a5,-883 # 2abc2c8d <__l2_shared_end+0xebb2c8d>
1c00b0d6:	98f6a023          	sw	a5,-1664(a3)
1c00b0da:	09bc97b7          	lui	a5,0x9bc9
1c00b0de:	a9778793          	addi	a5,a5,-1385 # 9bc8a97 <__CTOR_LIST__-0x1243756d>
1c00b0e2:	98f6a223          	sw	a5,-1660(a3)
1c00b0e6:	1b2927b7          	lui	a5,0x1b292
1c00b0ea:	07378793          	addi	a5,a5,115 # 1b292073 <__CTOR_LIST__-0xd6df91>
1c00b0ee:	98f6a423          	sw	a5,-1656(a3)
1c00b0f2:	63e4d7b7          	lui	a5,0x63e4d
1c00b0f6:	70e78793          	addi	a5,a5,1806 # 63e4d70e <__l2_shared_end+0x47e3d70e>
1c00b0fa:	98f6a623          	sw	a5,-1652(a3)
1c00b0fe:	e2bbd7b7          	lui	a5,0xe2bbd
1c00b102:	91e78793          	addi	a5,a5,-1762 # e2bbc91e <__l2_shared_end+0xc6bac91e>
1c00b106:	98f6a823          	sw	a5,-1648(a3)
1c00b10a:	b63ac7b7          	lui	a5,0xb63ac
1c00b10e:	68a78793          	addi	a5,a5,1674 # b63ac68a <__l2_shared_end+0x9a39c68a>
1c00b112:	98f6aa23          	sw	a5,-1644(a3)
1c00b116:	6a9717b7          	lui	a5,0x6a971
1c00b11a:	e8678793          	addi	a5,a5,-378 # 6a970e86 <__l2_shared_end+0x4e960e86>
1c00b11e:	98f6ac23          	sw	a5,-1640(a3)
1c00b122:	fc2a57b7          	lui	a5,0xfc2a5
1c00b126:	5c178793          	addi	a5,a5,1473 # fc2a55c1 <__l2_shared_end+0xe02955c1>
1c00b12a:	98f6ae23          	sw	a5,-1636(a3)
1c00b12e:	697d97b7          	lui	a5,0x697d9
1c00b132:	94378793          	addi	a5,a5,-1725 # 697d8943 <__l2_shared_end+0x4d7c8943>
1c00b136:	9af6a023          	sw	a5,-1632(a3)
1c00b13a:	4392a7b7          	lui	a5,0x4392a
1c00b13e:	03778793          	addi	a5,a5,55 # 4392a037 <__l2_shared_end+0x2791a037>
1c00b142:	9af6a223          	sw	a5,-1628(a3)
1c00b146:	a981c7b7          	lui	a5,0xa981c
1c00b14a:	42d78793          	addi	a5,a5,1069 # a981c42d <__l2_shared_end+0x8d80c42d>
1c00b14e:	9af6a423          	sw	a5,-1624(a3)
1c00b152:	27a1c7b7          	lui	a5,0x27a1c
1c00b156:	31478793          	addi	a5,a5,788 # 27a1c314 <__l2_shared_end+0xba0c314>
1c00b15a:	9af6a623          	sw	a5,-1620(a3)
1c00b15e:	f9e00793          	li	a5,-98
1c00b162:	9af689a3          	sb	a5,-1613(a3)
1c00b166:	cb23c7b7          	lui	a5,0xcb23c
1c00b16a:	58e78793          	addi	a5,a5,1422 # cb23c58e <__l2_shared_end+0xaf22c58e>
1c00b16e:	9af6aa23          	sw	a5,-1612(a3)
1c00b172:	89d9d7b7          	lui	a5,0x89d9d
1c00b176:	e9378793          	addi	a5,a5,-365 # 89d9ce93 <__l2_shared_end+0x6dd8ce93>
1c00b17a:	9af6ac23          	sw	a5,-1608(a3)
1c00b17e:	539097b7          	lui	a5,0x53909
1c00b182:	08f78793          	addi	a5,a5,143 # 5390908f <__l2_shared_end+0x378f908f>
1c00b186:	9af6ae23          	sw	a5,-1604(a3)
1c00b18a:	016ec7b7          	lui	a5,0x16ec
1c00b18e:	a4078793          	addi	a5,a5,-1472 # 16eba40 <__CTOR_LIST__-0x1a9145c4>
1c00b192:	9cf6a023          	sw	a5,-1600(a3)
1c00b196:	032d57b7          	lui	a5,0x32d5
1c00b19a:	7bc78793          	addi	a5,a5,1980 # 32d57bc <__CTOR_LIST__-0x18d2a848>
1c00b19e:	9cf6a223          	sw	a5,-1596(a3)
1c00b1a2:	21fa97b7          	lui	a5,0x21fa9
1c00b1a6:	3a878793          	addi	a5,a5,936 # 21fa93a8 <__l2_shared_end+0x5f993a8>
1c00b1aa:	9cf6a423          	sw	a5,-1592(a3)
1c00b1ae:	882d37b7          	lui	a5,0x882d3
1c00b1b2:	4c478793          	addi	a5,a5,1220 # 882d34c4 <__l2_shared_end+0x6c2c34c4>
1c00b1b6:	9cf6a623          	sw	a5,-1588(a3)
1c00b1ba:	b37747b7          	lui	a5,0xb3774
1c00b1be:	edc78793          	addi	a5,a5,-292 # b3773edc <__l2_shared_end+0x97763edc>
1c00b1c2:	9cf6a823          	sw	a5,-1584(a3)
1c00b1c6:	63c027b7          	lui	a5,0x63c02
1c00b1ca:	f3b78793          	addi	a5,a5,-197 # 63c01f3b <__l2_shared_end+0x47bf1f3b>
1c00b1ce:	9cf6aa23          	sw	a5,-1580(a3)
1c00b1d2:	9d68e7b7          	lui	a5,0x9d68e
1c00b1d6:	bdc78793          	addi	a5,a5,-1060 # 9d68dbdc <__l2_shared_end+0x8167dbdc>
1c00b1da:	9cf6ac23          	sw	a5,-1576(a3)
1c00b1de:	84fc57b7          	lui	a5,0x84fc5
1c00b1e2:	f8c78793          	addi	a5,a5,-116 # 84fc4f8c <__l2_shared_end+0x68fb4f8c>
1c00b1e6:	9cf6ae23          	sw	a5,-1572(a3)
1c00b1ea:	cf79f7b7          	lui	a5,0xcf79f
1c00b1ee:	80c78793          	addi	a5,a5,-2036 # cf79e80c <__l2_shared_end+0xb378e80c>
1c00b1f2:	9ef6a023          	sw	a5,-1568(a3)
1c00b1f6:	851347b7          	lui	a5,0x85134
1c00b1fa:	7b378793          	addi	a5,a5,1971 # 851347b3 <__l2_shared_end+0x691247b3>
1c00b1fe:	9ef6a223          	sw	a5,-1564(a3)
1c00b202:	c7c737b7          	lui	a5,0xc7c73
1c00b206:	c5178793          	addi	a5,a5,-943 # c7c72c51 <__l2_shared_end+0xabc62c51>
1c00b20a:	9ef6a423          	sw	a5,-1560(a3)
1c00b20e:	b18317b7          	lui	a5,0xb1831
1c00b212:	35978793          	addi	a5,a5,857 # b1831359 <__l2_shared_end+0x95821359>
1c00b216:	9ef6a623          	sw	a5,-1556(a3)
1c00b21a:	3298d7b7          	lui	a5,0x3298d
1c00b21e:	8fa78793          	addi	a5,a5,-1798 # 3298c8fa <__l2_shared_end+0x1697c8fa>
1c00b222:	9ef6a823          	sw	a5,-1552(a3)
1c00b226:	32b327b7          	lui	a5,0x32b32
1c00b22a:	cbb78793          	addi	a5,a5,-837 # 32b31cbb <__l2_shared_end+0x16b21cbb>
1c00b22e:	9ef6aa23          	sw	a5,-1548(a3)
1c00b232:	682877b7          	lui	a5,0x68287
1c00b236:	d4e78793          	addi	a5,a5,-690 # 68286d4e <__l2_shared_end+0x4c276d4e>
1c00b23a:	9ef6ac23          	sw	a5,-1544(a3)
1c00b23e:	cb4497b7          	lui	a5,0xcb449
1c00b242:	89178793          	addi	a5,a5,-1903 # cb448891 <__l2_shared_end+0xaf438891>
1c00b246:	9ef6ae23          	sw	a5,-1540(a3)
1c00b24a:	f84dd7b7          	lui	a5,0xf84dd
1c00b24e:	a2078793          	addi	a5,a5,-1504 # f84dca20 <__l2_shared_end+0xdc4cca20>
1c00b252:	a0f6a023          	sw	a5,-1536(a3)
1c00b256:	2428b7b7          	lui	a5,0x2428b
1c00b25a:	41278793          	addi	a5,a5,1042 # 2428b412 <__l2_shared_end+0x827b412>
1c00b25e:	a0f6a223          	sw	a5,-1532(a3)
1c00b262:	384337b7          	lui	a5,0x38433
1c00b266:	a1978793          	addi	a5,a5,-1511 # 38432a19 <__l2_shared_end+0x1c422a19>
1c00b26a:	a0f6a423          	sw	a5,-1528(a3)
1c00b26e:	7aa337b7          	lui	a5,0x7aa33
1c00b272:	0791                	addi	a5,a5,4
1c00b274:	a0f6a623          	sw	a5,-1524(a3)
1c00b278:	1ec447b7          	lui	a5,0x1ec44
1c00b27c:	a7f78793          	addi	a5,a5,-1409 # 1ec43a7f <__l2_shared_end+0x2c33a7f>
1c00b280:	a0f6a823          	sw	a5,-1520(a3)
1c00b284:	e0cf67b7          	lui	a5,0xe0cf6
1c00b288:	4d078793          	addi	a5,a5,1232 # e0cf64d0 <__l2_shared_end+0xc4ce64d0>
1c00b28c:	a0f6aa23          	sw	a5,-1516(a3)
1c00b290:	917b17b7          	lui	a5,0x917b1
1c00b294:	55578793          	addi	a5,a5,1365 # 917b1555 <__l2_shared_end+0x757a1555>
1c00b298:	a0f6ac23          	sw	a5,-1512(a3)
1c00b29c:	8f10c7b7          	lui	a5,0x8f10c
1c00b2a0:	0b578793          	addi	a5,a5,181 # 8f10c0b5 <__l2_shared_end+0x730fc0b5>
1c00b2a4:	a0f6ae23          	sw	a5,-1508(a3)
1c00b2a8:	a013a7b7          	lui	a5,0xa013a
1c00b2ac:	6b778793          	addi	a5,a5,1719 # a013a6b7 <__l2_shared_end+0x8412a6b7>
1c00b2b0:	a2f6a023          	sw	a5,-1504(a3)
1c00b2b4:	d6f437b7          	lui	a5,0xd6f43
1c00b2b8:	a1178793          	addi	a5,a5,-1519 # d6f42a11 <__l2_shared_end+0xbaf32a11>
1c00b2bc:	a2f6a223          	sw	a5,-1500(a3)
1c00b2c0:	33c50513          	addi	a0,a0,828
1c00b2c4:	a3f857b7          	lui	a5,0xa3f85
1c00b2c8:	9aa69823          	sh	a0,-1616(a3)
1c00b2cc:	9a068923          	sb	zero,-1614(a3)
1c00b2d0:	84e78793          	addi	a5,a5,-1970 # a3f8484e <__l2_shared_end+0x87f7484e>
1c00b2d4:	a2f6a423          	sw	a5,-1496(a3)
1c00b2d8:	998a37b7          	lui	a5,0x998a3
1c00b2dc:	24578793          	addi	a5,a5,581 # 998a3245 <__l2_shared_end+0x7d893245>
1c00b2e0:	a2f6a623          	sw	a5,-1492(a3)
1c00b2e4:	910cc7b7          	lui	a5,0x910cc
1c00b2e8:	fb778793          	addi	a5,a5,-73 # 910cbfb7 <__l2_shared_end+0x750bbfb7>
1c00b2ec:	a2f6a823          	sw	a5,-1488(a3)
1c00b2f0:	157207b7          	lui	a5,0x15720
1c00b2f4:	3cb78793          	addi	a5,a5,971 # 157203cb <__CTOR_LIST__-0x68dfc39>
1c00b2f8:	a2f6aa23          	sw	a5,-1484(a3)
1c00b2fc:	d47a17b7          	lui	a5,0xd47a1
1c00b300:	7b078793          	addi	a5,a5,1968 # d47a17b0 <__l2_shared_end+0xb87917b0>
1c00b304:	a2f6ac23          	sw	a5,-1480(a3)
1c00b308:	d7e667b7          	lui	a5,0xd7e66
1c00b30c:	3c278793          	addi	a5,a5,962 # d7e663c2 <__l2_shared_end+0xbbe563c2>
1c00b310:	a2f6ae23          	sw	a5,-1476(a3)
1c00b314:	c85867b7          	lui	a5,0xc8586
1c00b318:	98f78793          	addi	a5,a5,-1649 # c858598f <__l2_shared_end+0xac57598f>
1c00b31c:	a4f6a023          	sw	a5,-1472(a3)
1c00b320:	4f8e17b7          	lui	a5,0x4f8e1
1c00b324:	54878793          	addi	a5,a5,1352 # 4f8e1548 <__l2_shared_end+0x338d1548>
1c00b328:	a4f6a223          	sw	a5,-1468(a3)
1c00b32c:	247c17b7          	lui	a5,0x247c1
1c00b330:	1d278793          	addi	a5,a5,466 # 247c11d2 <__l2_shared_end+0x87b11d2>
1c00b334:	a4f6a423          	sw	a5,-1464(a3)
1c00b338:	3cab17b7          	lui	a5,0x3cab1
1c00b33c:	c8e78793          	addi	a5,a5,-882 # 3cab0c8e <__l2_shared_end+0x20aa0c8e>
1c00b340:	a4f6a623          	sw	a5,-1460(a3)
1c00b344:	271e97b7          	lui	a5,0x271e9
1c00b348:	cf978793          	addi	a5,a5,-775 # 271e8cf9 <__l2_shared_end+0xb1d8cf9>
1c00b34c:	a4f6a823          	sw	a5,-1456(a3)
1c00b350:	f83897b7          	lui	a5,0xf8389
1c00b354:	88678793          	addi	a5,a5,-1914 # f8388886 <__l2_shared_end+0xdc378886>
1c00b358:	a4f6aa23          	sw	a5,-1452(a3)
1c00b35c:	56a097b7          	lui	a5,0x56a09
1c00b360:	b4278793          	addi	a5,a5,-1214 # 56a08b42 <__l2_shared_end+0x3a9f8b42>
1c00b364:	a4f6ac23          	sw	a5,-1448(a3)
1c00b368:	1eb6f7b7          	lui	a5,0x1eb6f
1c00b36c:	62d78793          	addi	a5,a5,1581 # 1eb6f62d <__l2_shared_end+0x2b5f62d>
1c00b370:	a4f6ae23          	sw	a5,-1444(a3)
1c00b374:	b8e237b7          	lui	a5,0xb8e23
1c00b378:	68778793          	addi	a5,a5,1671 # b8e23687 <__l2_shared_end+0x9ce13687>
1c00b37c:	a6f6a023          	sw	a5,-1440(a3)
1c00b380:	796067b7          	lui	a5,0x79606
1c00b384:	6b278793          	addi	a5,a5,1714 # 796066b2 <__l2_shared_end+0x5d5f66b2>
1c00b388:	a6f6a223          	sw	a5,-1436(a3)
1c00b38c:	2ccee7b7          	lui	a5,0x2ccee
1c00b390:	07e1                	addi	a5,a5,24
1c00b392:	a6f6a423          	sw	a5,-1432(a3)
1c00b396:	c867b7b7          	lui	a5,0xc867b
1c00b39a:	178d                	addi	a5,a5,-29
1c00b39c:	a6f6a623          	sw	a5,-1428(a3)
1c00b3a0:	a4c2a7b7          	lui	a5,0xa4c2a
1c00b3a4:	51f78793          	addi	a5,a5,1311 # a4c2a51f <__l2_shared_end+0x88c1a51f>
1c00b3a8:	a6f6a823          	sw	a5,-1424(a3)
1c00b3ac:	878ec7b7          	lui	a5,0x878ec
1c00b3b0:	cd278793          	addi	a5,a5,-814 # 878ebcd2 <__l2_shared_end+0x6b8dbcd2>
1c00b3b4:	a6f6aa23          	sw	a5,-1420(a3)
1c00b3b8:	02b727b7          	lui	a5,0x2b72
1c00b3bc:	51878793          	addi	a5,a5,1304 # 2b72518 <__CTOR_LIST__-0x1948daec>
1c00b3c0:	a6f6ac23          	sw	a5,-1416(a3)
1c00b3c4:	39cac7b7          	lui	a5,0x39cac
1c00b3c8:	eb378793          	addi	a5,a5,-333 # 39cabeb3 <__l2_shared_end+0x1dc9beb3>
1c00b3cc:	a6f6ae23          	sw	a5,-1412(a3)
1c00b3d0:	18a537b7          	lui	a5,0x18a53
1c00b3d4:	37b78793          	addi	a5,a5,891 # 18a5337b <__CTOR_LIST__-0x35acc89>
1c00b3d8:	a8f6a023          	sw	a5,-1408(a3)
1c00b3dc:	39b1d7b7          	lui	a5,0x39b1d
1c00b3e0:	8da78793          	addi	a5,a5,-1830 # 39b1c8da <__l2_shared_end+0x1db0c8da>
1c00b3e4:	a8f6a223          	sw	a5,-1404(a3)
1c00b3e8:	904a57b7          	lui	a5,0x904a5
1c00b3ec:	93d78793          	addi	a5,a5,-1731 # 904a493d <__l2_shared_end+0x7449493d>
1c00b3f0:	a8f6a423          	sw	a5,-1400(a3)
1c00b3f4:	b50117b7          	lui	a5,0xb5011
1c00b3f8:	c9078793          	addi	a5,a5,-880 # b5010c90 <__l2_shared_end+0x99000c90>
1c00b3fc:	a8f6a623          	sw	a5,-1396(a3)
1c00b400:	7c8527b7          	lui	a5,0x7c852
1c00b404:	55978793          	addi	a5,a5,1369 # 7c852559 <__l2_shared_end+0x60842559>
1c00b408:	a8f6a823          	sw	a5,-1392(a3)
1c00b40c:	052787b7          	lui	a5,0x5278
1c00b410:	0bf78793          	addi	a5,a5,191 # 52780bf <__CTOR_LIST__-0x16d87f45>
1c00b414:	a8f6aa23          	sw	a5,-1388(a3)
1c00b418:	f1a437b7          	lui	a5,0xf1a43
1c00b41c:	61d78793          	addi	a5,a5,1565 # f1a4361d <__l2_shared_end+0xd5a3361d>
1c00b420:	a8f6ac23          	sw	a5,-1384(a3)
1c00b424:	dcd2a7b7          	lui	a5,0xdcd2a
1c00b428:	44178793          	addi	a5,a5,1089 # dcd2a441 <__l2_shared_end+0xc0d1a441>
1c00b42c:	a8f6ae23          	sw	a5,-1380(a3)
1c00b430:	304107b7          	lui	a5,0x30410
1c00b434:	34478793          	addi	a5,a5,836 # 30410344 <__l2_shared_end+0x14400344>
1c00b438:	aaf6a023          	sw	a5,-1376(a3)
1c00b43c:	b53c07b7          	lui	a5,0xb53c0
1c00b440:	35e78793          	addi	a5,a5,862 # b53c035e <__l2_shared_end+0x993b035e>
1c00b444:	aaf6a223          	sw	a5,-1372(a3)
1c00b448:	70a00793          	li	a5,1802
1c00b44c:	aaf69423          	sh	a5,-1368(a3)
1c00b450:	04b00793          	li	a5,75
1c00b454:	aaf68523          	sb	a5,-1366(a3)
1c00b458:	5791                	li	a5,-28
1c00b45a:	aaf685a3          	sb	a5,-1365(a3)
1c00b45e:	336ac7b7          	lui	a5,0x336ac
1c00b462:	75978793          	addi	a5,a5,1881 # 336ac759 <__l2_shared_end+0x1769c759>
1c00b466:	aaf6a623          	sw	a5,-1364(a3)
1c00b46a:	c452a7b7          	lui	a5,0xc452a
1c00b46e:	a9a78793          	addi	a5,a5,-1382 # c4529a9a <__l2_shared_end+0xa8519a9a>
1c00b472:	aaf6a823          	sw	a5,-1360(a3)
1c00b476:	ea0d37b7          	lui	a5,0xea0d3
1c00b47a:	64778793          	addi	a5,a5,1607 # ea0d3647 <__l2_shared_end+0xce0c3647>
1c00b47e:	aaf6aa23          	sw	a5,-1356(a3)
1c00b482:	cc9957b7          	lui	a5,0xcc995
1c00b486:	62a78793          	addi	a5,a5,1578 # cc99562a <__l2_shared_end+0xb098562a>
1c00b48a:	aaf6ac23          	sw	a5,-1352(a3)
1c00b48e:	423a77b7          	lui	a5,0x423a7
1c00b492:	8ea78793          	addi	a5,a5,-1814 # 423a68ea <__l2_shared_end+0x263968ea>
1c00b496:	aaf6ae23          	sw	a5,-1348(a3)
1c00b49a:	fca617b7          	lui	a5,0xfca61
1c00b49e:	a4378793          	addi	a5,a5,-1469 # fca60a43 <__l2_shared_end+0xe0a50a43>
1c00b4a2:	acf6a023          	sw	a5,-1344(a3)
1c00b4a6:	5cc747b7          	lui	a5,0x5cc74
1c00b4aa:	59578793          	addi	a5,a5,1429 # 5cc74595 <__l2_shared_end+0x40c64595>
1c00b4ae:	acf6a223          	sw	a5,-1340(a3)
1c00b4b2:	1a6497b7          	lui	a5,0x1a649
1c00b4b6:	20478793          	addi	a5,a5,516 # 1a649204 <__CTOR_LIST__-0x19b6e00>
1c00b4ba:	acf6a423          	sw	a5,-1336(a3)
1c00b4be:	26e9a7b7          	lui	a5,0x26e9a
1c00b4c2:	4f778793          	addi	a5,a5,1271 # 26e9a4f7 <__l2_shared_end+0xae8a4f7>
1c00b4c6:	acf6a623          	sw	a5,-1332(a3)
1c00b4ca:	4e38d7b7          	lui	a5,0x4e38d
1c00b4ce:	c7b78793          	addi	a5,a5,-901 # 4e38cc7b <__l2_shared_end+0x3237cc7b>
1c00b4d2:	acf6a823          	sw	a5,-1328(a3)
1c00b4d6:	f44c77b7          	lui	a5,0xf44c7
1c00b4da:	15578793          	addi	a5,a5,341 # f44c7155 <__l2_shared_end+0xd84b7155>
1c00b4de:	acf6aa23          	sw	a5,-1324(a3)
1c00b4e2:	a3eb47b7          	lui	a5,0xa3eb4
1c00b4e6:	19778793          	addi	a5,a5,407 # a3eb4197 <__l2_shared_end+0x87ea4197>
1c00b4ea:	acf6ac23          	sw	a5,-1320(a3)
1c00b4ee:	1764a7b7          	lui	a5,0x1764a
1c00b4f2:	db678793          	addi	a5,a5,-586 # 17649db6 <__CTOR_LIST__-0x49b624e>
1c00b4f6:	acf6ae23          	sw	a5,-1316(a3)
1c00b4fa:	5d4757b7          	lui	a5,0x5d475
1c00b4fe:	5a578793          	addi	a5,a5,1445 # 5d4755a5 <__l2_shared_end+0x414655a5>
1c00b502:	aef6a023          	sw	a5,-1312(a3)
1c00b506:	121107b7          	lui	a5,0x12110
1c00b50a:	23c78793          	addi	a5,a5,572 # 1211023c <__CTOR_LIST__-0x9eefdc8>
1c00b50e:	aef6a223          	sw	a5,-1308(a3)
1c00b512:	8c58b7b7          	lui	a5,0x8c58b
1c00b516:	3b878793          	addi	a5,a5,952 # 8c58b3b8 <__l2_shared_end+0x7057b3b8>
1c00b51a:	aef6a423          	sw	a5,-1304(a3)
1c00b51e:	5c7b77b7          	lui	a5,0x5c7b7
1c00b522:	46378793          	addi	a5,a5,1123 # 5c7b7463 <__l2_shared_end+0x407a7463>
1c00b526:	aef6a623          	sw	a5,-1300(a3)
1c00b52a:	e9fed7b7          	lui	a5,0xe9fed
1c00b52e:	ce278793          	addi	a5,a5,-798 # e9fecce2 <__l2_shared_end+0xcdfdcce2>
1c00b532:	aef6a823          	sw	a5,-1296(a3)
1c00b536:	41fa97b7          	lui	a5,0x41fa9
1c00b53a:	71278793          	addi	a5,a5,1810 # 41fa9712 <__l2_shared_end+0x25f99712>
1c00b53e:	aef6aa23          	sw	a5,-1292(a3)
1c00b542:	9842a7b7          	lui	a5,0x9842a
1c00b546:	c9f78793          	addi	a5,a5,-865 # 98429c9f <__l2_shared_end+0x7c419c9f>
1c00b54a:	aef6ac23          	sw	a5,-1288(a3)
1c00b54e:	08ff97b7          	lui	a5,0x8ff9
1c00b552:	f9778793          	addi	a5,a5,-105 # 8ff8f97 <__CTOR_LIST__-0x1300706d>
1c00b556:	aef6ae23          	sw	a5,-1284(a3)
1c00b55a:	55a8e7b7          	lui	a5,0x55a8e
1c00b55e:	87078793          	addi	a5,a5,-1936 # 55a8d870 <__l2_shared_end+0x39a7d870>
1c00b562:	b0f6a023          	sw	a5,-1280(a3)
1c00b566:	ca9997b7          	lui	a5,0xca999
1c00b56a:	8b478793          	addi	a5,a5,-1868 # ca9988b4 <__l2_shared_end+0xae9888b4>
1c00b56e:	b0f6a223          	sw	a5,-1276(a3)
1c00b572:	837db7b7          	lui	a5,0x837db
1c00b576:	49b78793          	addi	a5,a5,1179 # 837db49b <__l2_shared_end+0x677cb49b>
1c00b57a:	b0f6a423          	sw	a5,-1272(a3)
1c00b57e:	03d267b7          	lui	a5,0x3d26
1c00b582:	26d78793          	addi	a5,a5,621 # 3d2626d <__CTOR_LIST__-0x182d9d97>
1c00b586:	b0f6a623          	sw	a5,-1268(a3)
1c00b58a:	6f81c7b7          	lui	a5,0x6f81c
1c00b58e:	38c78793          	addi	a5,a5,908 # 6f81c38c <__l2_shared_end+0x5380c38c>
1c00b592:	b0f6a823          	sw	a5,-1264(a3)
1c00b596:	b38b77b7          	lui	a5,0xb38b7
1c00b59a:	93a78793          	addi	a5,a5,-1734 # b38b693a <__l2_shared_end+0x978a693a>
1c00b59e:	42636737          	lui	a4,0x42636
1c00b5a2:	b0f6aa23          	sw	a5,-1260(a3)
1c00b5a6:	0765                	addi	a4,a4,25
1c00b5a8:	c77907b7          	lui	a5,0xc7790
1c00b5ac:	b2e6a023          	sw	a4,-1248(a3)
1c00b5b0:	fbb78793          	addi	a5,a5,-69 # c778ffbb <__l2_shared_end+0xab77ffbb>
1c00b5b4:	0bd5e737          	lui	a4,0xbd5e
1c00b5b8:	b0f6ac23          	sw	a5,-1256(a3)
1c00b5bc:	19270713          	addi	a4,a4,402 # bd5e192 <__CTOR_LIST__-0x102a1e72>
1c00b5c0:	eab017b7          	lui	a5,0xeab01
1c00b5c4:	b2e6a223          	sw	a4,-1244(a3)
1c00b5c8:	5a078793          	addi	a5,a5,1440 # eab015a0 <__l2_shared_end+0xceaf15a0>
1c00b5cc:	3a04e737          	lui	a4,0x3a04e
1c00b5d0:	b0f6ae23          	sw	a5,-1252(a3)
1c00b5d4:	10370713          	addi	a4,a4,259 # 3a04e103 <__l2_shared_end+0x1e03e103>
1c00b5d8:	b2e6a423          	sw	a4,-1240(a3)
1c00b5dc:	279bd737          	lui	a4,0x279bd
1c00b5e0:	a9870713          	addi	a4,a4,-1384 # 279bca98 <__l2_shared_end+0xb9aca98>
1c00b5e4:	b2e6a623          	sw	a4,-1236(a3)
1c00b5e8:	8b664737          	lui	a4,0x8b664
1c00b5ec:	e0670713          	addi	a4,a4,-506 # 8b663e06 <__l2_shared_end+0x6f653e06>
1c00b5f0:	b2e6a823          	sw	a4,-1232(a3)
1c00b5f4:	7dc1e737          	lui	a4,0x7dc1e
1c00b5f8:	20570713          	addi	a4,a4,517 # 7dc1e205 <__l2_shared_end+0x61c0e205>
1c00b5fc:	b2e6aa23          	sw	a4,-1228(a3)
1c00b600:	2b383737          	lui	a4,0x2b383
1c00b604:	d6970713          	addi	a4,a4,-663 # 2b382d69 <__l2_shared_end+0xf372d69>
1c00b608:	b2e6ac23          	sw	a4,-1224(a3)
1c00b60c:	a8651737          	lui	a4,0xa8651
1c00b610:	31870713          	addi	a4,a4,792 # a8651318 <__l2_shared_end+0x8c641318>
1c00b614:	b2e6ae23          	sw	a4,-1220(a3)
1c00b618:	c78e5737          	lui	a4,0xc78e5
1c00b61c:	11870713          	addi	a4,a4,280 # c78e5118 <__l2_shared_end+0xab8d5118>
1c00b620:	b4e6a023          	sw	a4,-1216(a3)
1c00b624:	37037737          	lui	a4,0x37037
1c00b628:	24770713          	addi	a4,a4,583 # 37037247 <__l2_shared_end+0x1b027247>
1c00b62c:	b4e6a223          	sw	a4,-1212(a3)
1c00b630:	59682737          	lui	a4,0x59682
1c00b634:	8ca70713          	addi	a4,a4,-1846 # 596818ca <__l2_shared_end+0x3d6718ca>
1c00b638:	b4e6a423          	sw	a4,-1208(a3)
1c00b63c:	902af737          	lui	a4,0x902af
1c00b640:	46a70713          	addi	a4,a4,1130 # 902af46a <__l2_shared_end+0x7429f46a>
1c00b644:	b4e6a623          	sw	a4,-1204(a3)
1c00b648:	0387b737          	lui	a4,0x387b
1c00b64c:	1fa70713          	addi	a4,a4,506 # 387b1fa <__CTOR_LIST__-0x18784e0a>
1c00b650:	b4e6a823          	sw	a4,-1200(a3)
1c00b654:	8f4bd737          	lui	a4,0x8f4bd
1c00b658:	77370713          	addi	a4,a4,1907 # 8f4bd773 <__l2_shared_end+0x734ad773>
1c00b65c:	b4e6aa23          	sw	a4,-1196(a3)
1c00b660:	86ac4737          	lui	a4,0x86ac4
1c00b664:	26d70713          	addi	a4,a4,621 # 86ac426d <__l2_shared_end+0x6aab426d>
1c00b668:	b4e6ac23          	sw	a4,-1192(a3)
1c00b66c:	3aca9737          	lui	a4,0x3aca9
1c00b670:	bb170713          	addi	a4,a4,-1103 # 3aca8bb1 <__l2_shared_end+0x1ec98bb1>
1c00b674:	b4e6ae23          	sw	a4,-1188(a3)
1c00b678:	68644737          	lui	a4,0x68644
1c00b67c:	7b070713          	addi	a4,a4,1968 # 686447b0 <__l2_shared_end+0x4c6347b0>
1c00b680:	b6e6a023          	sw	a4,-1184(a3)
1c00b684:	0c06f737          	lui	a4,0xc06f
1c00b688:	20c70713          	addi	a4,a4,524 # c06f20c <__CTOR_LIST__-0xff90df8>
1c00b68c:	b6e6a223          	sw	a4,-1180(a3)
1c00b690:	5bbea737          	lui	a4,0x5bbea
1c00b694:	a5270713          	addi	a4,a4,-1454 # 5bbe9a52 <__l2_shared_end+0x3fbd9a52>
1c00b698:	b6e6a423          	sw	a4,-1176(a3)
1c00b69c:	4d47f737          	lui	a4,0x4d47f
1c00b6a0:	48e70713          	addi	a4,a4,1166 # 4d47f48e <__l2_shared_end+0x3146f48e>
1c00b6a4:	b6e6a623          	sw	a4,-1172(a3)
1c00b6a8:	a847d737          	lui	a4,0xa847d
1c00b6ac:	cc870713          	addi	a4,a4,-824 # a847ccc8 <__l2_shared_end+0x8c46ccc8>
1c00b6b0:	b6e6a823          	sw	a4,-1168(a3)
1c00b6b4:	88bd4737          	lui	a4,0x88bd4
1c00b6b8:	e0370713          	addi	a4,a4,-509 # 88bd3e03 <__l2_shared_end+0x6cbc3e03>
1c00b6bc:	b6e6aa23          	sw	a4,-1164(a3)
1c00b6c0:	0f0a4737          	lui	a4,0xf0a4
1c00b6c4:	e4d70713          	addi	a4,a4,-435 # f0a3e4d <__CTOR_LIST__-0xcf5c1b7>
1c00b6c8:	b6e6ac23          	sw	a4,-1160(a3)
1c00b6cc:	0d429737          	lui	a4,0xd429
1c00b6d0:	41a70713          	addi	a4,a4,1050 # d42941a <__CTOR_LIST__-0xebd6bea>
1c00b6d4:	b6e6ae23          	sw	a4,-1156(a3)
1c00b6d8:	62914737          	lui	a4,0x62914
1c00b6dc:	c8a70713          	addi	a4,a4,-886 # 62913c8a <__l2_shared_end+0x46903c8a>
1c00b6e0:	b8e6a023          	sw	a4,-1152(a3)
1c00b6e4:	a287b737          	lui	a4,0xa287b
1c00b6e8:	fb770713          	addi	a4,a4,-73 # a287afb7 <__l2_shared_end+0x8686afb7>
1c00b6ec:	b8e6a223          	sw	a4,-1148(a3)
1c00b6f0:	6494a737          	lui	a4,0x6494a
1c00b6f4:	3c870713          	addi	a4,a4,968 # 6494a3c8 <__l2_shared_end+0x4893a3c8>
1c00b6f8:	b8e6a423          	sw	a4,-1144(a3)
1c00b6fc:	a3f43737          	lui	a4,0xa3f43
1c00b700:	47470713          	addi	a4,a4,1140 # a3f43474 <__l2_shared_end+0x87f33474>
1c00b704:	b8e6a623          	sw	a4,-1140(a3)
1c00b708:	78473737          	lui	a4,0x78473
1c00b70c:	bbc70713          	addi	a4,a4,-1092 # 78472bbc <__l2_shared_end+0x5c462bbc>
1c00b710:	b8e6a823          	sw	a4,-1136(a3)
1c00b714:	cf82b737          	lui	a4,0xcf82b
1c00b718:	c1370713          	addi	a4,a4,-1005 # cf82ac13 <__l2_shared_end+0xb381ac13>
1c00b71c:	c38e8793          	addi	a5,t4,-968
1c00b720:	b8e6aa23          	sw	a4,-1132(a3)
1c00b724:	b5857737          	lui	a4,0xb5857
1c00b728:	baf69023          	sh	a5,-1120(a3)
1c00b72c:	13870713          	addi	a4,a4,312 # b5857138 <__l2_shared_end+0x99847138>
1c00b730:	fcd00793          	li	a5,-51
1c00b734:	b8e6ac23          	sw	a4,-1128(a3)
1c00b738:	baf68123          	sb	a5,-1118(a3)
1c00b73c:	89f6f737          	lui	a4,0x89f6f
1c00b740:	fdd00793          	li	a5,-35
1c00b744:	78770713          	addi	a4,a4,1927 # 89f6f787 <__l2_shared_end+0x6df5f787>
1c00b748:	baf681a3          	sb	a5,-1117(a3)
1c00b74c:	43d137b7          	lui	a5,0x43d13
1c00b750:	b8e6ae23          	sw	a4,-1124(a3)
1c00b754:	46978793          	addi	a5,a5,1129 # 43d13469 <__l2_shared_end+0x27d03469>
1c00b758:	baf6a223          	sw	a5,-1116(a3)
1c00b75c:	4abb17b7          	lui	a5,0x4abb1
1c00b760:	7ba78793          	addi	a5,a5,1978 # 4abb17ba <__l2_shared_end+0x2eba17ba>
1c00b764:	baf6a423          	sw	a5,-1112(a3)
1c00b768:	d26627b7          	lui	a5,0xd2662
1c00b76c:	57178793          	addi	a5,a5,1393 # d2662571 <__l2_shared_end+0xb6652571>
1c00b770:	baf6a623          	sw	a5,-1108(a3)
1c00b774:	dbad67b7          	lui	a5,0xdbad6
1c00b778:	aa578793          	addi	a5,a5,-1371 # dbad5aa5 <__l2_shared_end+0xbfac5aa5>
1c00b77c:	baf6a823          	sw	a5,-1104(a3)
1c00b780:	367127b7          	lui	a5,0x36712
1c00b784:	33378793          	addi	a5,a5,819 # 36712333 <__l2_shared_end+0x1a702333>
1c00b788:	baf6aa23          	sw	a5,-1100(a3)
1c00b78c:	4a1b47b7          	lui	a5,0x4a1b4
1c00b790:	06778793          	addi	a5,a5,103 # 4a1b4067 <__l2_shared_end+0x2e1a4067>
1c00b794:	baf6ac23          	sw	a5,-1096(a3)
1c00b798:	236cc7b7          	lui	a5,0x236cc
1c00b79c:	82078793          	addi	a5,a5,-2016 # 236cb820 <__l2_shared_end+0x76bb820>
1c00b7a0:	baf6ae23          	sw	a5,-1092(a3)
1c00b7a4:	437617b7          	lui	a5,0x43761
1c00b7a8:	0bf78793          	addi	a5,a5,191 # 437610bf <__l2_shared_end+0x277510bf>
1c00b7ac:	bcf6a023          	sw	a5,-1088(a3)
1c00b7b0:	c1b8b7b7          	lui	a5,0xc1b8b
1c00b7b4:	69c78793          	addi	a5,a5,1692 # c1b8b69c <__l2_shared_end+0xa5b7b69c>
1c00b7b8:	bcf6a223          	sw	a5,-1084(a3)
1c00b7bc:	ba9d47b7          	lui	a5,0xba9d4
1c00b7c0:	81578793          	addi	a5,a5,-2027 # ba9d3815 <__l2_shared_end+0x9e9c3815>
1c00b7c4:	bcf6a423          	sw	a5,-1080(a3)
1c00b7c8:	910c77b7          	lui	a5,0x910c7
1c00b7cc:	f4e78793          	addi	a5,a5,-178 # 910c6f4e <__l2_shared_end+0x750b6f4e>
1c00b7d0:	bcf6a623          	sw	a5,-1076(a3)
1c00b7d4:	2b60e7b7          	lui	a5,0x2b60e
1c00b7d8:	75b78793          	addi	a5,a5,1883 # 2b60e75b <__l2_shared_end+0xf5fe75b>
1c00b7dc:	bcf6a823          	sw	a5,-1072(a3)
1c00b7e0:	35b507b7          	lui	a5,0x35b50
1c00b7e4:	39778793          	addi	a5,a5,919 # 35b50397 <__l2_shared_end+0x19b40397>
1c00b7e8:	bcf6aa23          	sw	a5,-1068(a3)
1c00b7ec:	5c4a17b7          	lui	a5,0x5c4a1
1c00b7f0:	e0778793          	addi	a5,a5,-505 # 5c4a0e07 <__l2_shared_end+0x40490e07>
1c00b7f4:	bcf6ac23          	sw	a5,-1064(a3)
1c00b7f8:	d7a557b7          	lui	a5,0xd7a55
1c00b7fc:	95678793          	addi	a5,a5,-1706 # d7a54956 <__l2_shared_end+0xbba44956>
1c00b800:	bcf6ae23          	sw	a5,-1060(a3)
1c00b804:	021507b7          	lui	a5,0x2150
1c00b808:	50878793          	addi	a5,a5,1288 # 2150508 <__CTOR_LIST__-0x19eafafc>
1c00b80c:	bef6a023          	sw	a5,-1056(a3)
1c00b810:	60b207b7          	lui	a5,0x60b20
1c00b814:	66778793          	addi	a5,a5,1639 # 60b20667 <__l2_shared_end+0x44b10667>
1c00b818:	bef6a223          	sw	a5,-1052(a3)
1c00b81c:	d0cb77b7          	lui	a5,0xd0cb7
1c00b820:	54578793          	addi	a5,a5,1349 # d0cb7545 <__l2_shared_end+0xb4ca7545>
1c00b824:	bef6a423          	sw	a5,-1048(a3)
1c00b828:	292787b7          	lui	a5,0x29278
1c00b82c:	f6878793          	addi	a5,a5,-152 # 29277f68 <__l2_shared_end+0xd267f68>
1c00b830:	bef6a623          	sw	a5,-1044(a3)
1c00b834:	7d9937b7          	lui	a5,0x7d993
1c00b838:	aa978793          	addi	a5,a5,-1367 # 7d992aa9 <__l2_shared_end+0x61982aa9>
1c00b83c:	bef6a823          	sw	a5,-1040(a3)
1c00b840:	0072f7b7          	lui	a5,0x72f
1c00b844:	a2178793          	addi	a5,a5,-1503 # 72ea21 <__CTOR_LIST__-0x1b8d15e3>
1c00b848:	bef6aa23          	sw	a5,-1036(a3)
1c00b84c:	31d827b7          	lui	a5,0x31d82
1c00b850:	ec478793          	addi	a5,a5,-316 # 31d81ec4 <__l2_shared_end+0x15d71ec4>
1c00b854:	bef6ac23          	sw	a5,-1032(a3)
1c00b858:	c7f477b7          	lui	a5,0xc7f47
1c00b85c:	55278793          	addi	a5,a5,1362 # c7f47552 <__l2_shared_end+0xabf37552>
1c00b860:	bef6ae23          	sw	a5,-1028(a3)
1c00b864:	c89b37b7          	lui	a5,0xc89b3
1c00b868:	fb778793          	addi	a5,a5,-73 # c89b2fb7 <__l2_shared_end+0xac9a2fb7>
1c00b86c:	c0f6a023          	sw	a5,-1024(a3)
1c00b870:	b91317b7          	lui	a5,0xb9131
1c00b874:	a5c78793          	addi	a5,a5,-1444 # b9130a5c <__l2_shared_end+0x9d120a5c>
1c00b878:	c0f6a223          	sw	a5,-1020(a3)
1c00b87c:	6f5847b7          	lui	a5,0x6f584
1c00b880:	1d078793          	addi	a5,a5,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c00b884:	c0f6a423          	sw	a5,-1016(a3)
1c00b888:	b1fe87b7          	lui	a5,0xb1fe8
1c00b88c:	3d578793          	addi	a5,a5,981 # b1fe83d5 <__l2_shared_end+0x95fd83d5>
1c00b890:	c0f6a623          	sw	a5,-1012(a3)
1c00b894:	405b07b7          	lui	a5,0x405b0
1c00b898:	d2a78793          	addi	a5,a5,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c00b89c:	c0f6a823          	sw	a5,-1008(a3)
1c00b8a0:	433bd7b7          	lui	a5,0x433bd
1c00b8a4:	32d78793          	addi	a5,a5,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c00b8a8:	c0f6aa23          	sw	a5,-1004(a3)
1c00b8ac:	a45f47b7          	lui	a5,0xa45f4
1c00b8b0:	f5478793          	addi	a5,a5,-172 # a45f3f54 <__l2_shared_end+0x885e3f54>
1c00b8b4:	c0f6ac23          	sw	a5,-1000(a3)
1c00b8b8:	8d6c47b7          	lui	a5,0x8d6c4
1c00b8bc:	3eb78793          	addi	a5,a5,1003 # 8d6c43eb <__l2_shared_end+0x716b43eb>
1c00b8c0:	c0f6ae23          	sw	a5,-996(a3)
1c00b8c4:	955337b7          	lui	a5,0x95533
1c00b8c8:	f9a78793          	addi	a5,a5,-102 # 95532f9a <__l2_shared_end+0x79522f9a>
1c00b8cc:	c2f6a023          	sw	a5,-992(a3)
1c00b8d0:	d51187b7          	lui	a5,0xd5118
1c00b8d4:	f0878793          	addi	a5,a5,-248 # d5117f08 <__l2_shared_end+0xb9107f08>
1c00b8d8:	c2f6a223          	sw	a5,-988(a3)
1c00b8dc:	251dc7b7          	lui	a5,0x251dc
1c00b8e0:	c8d78793          	addi	a5,a5,-883 # 251dbc8d <__l2_shared_end+0x91cbc8d>
1c00b8e4:	c2f6a423          	sw	a5,-984(a3)
1c00b8e8:	10e197b7          	lui	a5,0x10e19
1c00b8ec:	a5878793          	addi	a5,a5,-1448 # 10e18a58 <__CTOR_LIST__-0xb1e75ac>
1c00b8f0:	c2f6a623          	sw	a5,-980(a3)
1c00b8f4:	abaaa7b7          	lui	a5,0xabaaa
1c00b8f8:	d2078793          	addi	a5,a5,-736 # abaa9d20 <__l2_shared_end+0x8fa99d20>
1c00b8fc:	c2f6a823          	sw	a5,-976(a3)
1c00b900:	4595e7b7          	lui	a5,0x4595e
1c00b904:	d7578793          	addi	a5,a5,-651 # 4595dd75 <__l2_shared_end+0x2994dd75>
1c00b908:	c2f6aa23          	sw	a5,-972(a3)
1c00b90c:	aa40b7b7          	lui	a5,0xaa40b
1c00b910:	b7678793          	addi	a5,a5,-1162 # aa40ab76 <__l2_shared_end+0x8e3fab76>
1c00b914:	c2f6ac23          	sw	a5,-968(a3)
1c00b918:	d479a7b7          	lui	a5,0xd479a
1c00b91c:	97078793          	addi	a5,a5,-1680 # d4799970 <__l2_shared_end+0xb8789970>
1c00b920:	c2f6ae23          	sw	a5,-964(a3)
1c00b924:	a62e37b7          	lui	a5,0xa62e3
1c00b928:	a3e78793          	addi	a5,a5,-1474 # a62e2a3e <__l2_shared_end+0x8a2d2a3e>
1c00b92c:	c4f6a023          	sw	a5,-960(a3)
1c00b930:	fc76c7b7          	lui	a5,0xfc76c
1c00b934:	4c978793          	addi	a5,a5,1225 # fc76c4c9 <__l2_shared_end+0xe075c4c9>
1c00b938:	c4f6a223          	sw	a5,-956(a3)
1c00b93c:	13b037b7          	lui	a5,0x13b03
1c00b940:	74978793          	addi	a5,a5,1865 # 13b03749 <__CTOR_LIST__-0x84fc8bb>
1c00b944:	c4f6a423          	sw	a5,-952(a3)
1c00b948:	93a797b7          	lui	a5,0x93a79
1c00b94c:	3c978793          	addi	a5,a5,969 # 93a793c9 <__l2_shared_end+0x77a693c9>
1c00b950:	c4f6a623          	sw	a5,-948(a3)
1c00b954:	99abc7b7          	lui	a5,0x99abc
1c00b958:	0d678793          	addi	a5,a5,214 # 99abc0d6 <__l2_shared_end+0x7daac0d6>
1c00b95c:	c4f6a823          	sw	a5,-944(a3)
1c00b960:	a85b77b7          	lui	a5,0xa85b7
1c00b964:	96078793          	addi	a5,a5,-1696 # a85b6960 <__l2_shared_end+0x8c5a6960>
1c00b968:	c4f6aa23          	sw	a5,-940(a3)
1c00b96c:	da49f7b7          	lui	a5,0xda49f
1c00b970:	63878793          	addi	a5,a5,1592 # da49f638 <__l2_shared_end+0xbe48f638>
1c00b974:	c4f6ac23          	sw	a5,-936(a3)
1c00b978:	d0a3a7b7          	lui	a5,0xd0a3a
1c00b97c:	c5378793          	addi	a5,a5,-941 # d0a39c53 <__l2_shared_end+0xb4a29c53>
1c00b980:	1c006937          	lui	s2,0x1c006
1c00b984:	8c060613          	addi	a2,a2,-1856
1c00b988:	2a058593          	addi	a1,a1,672
1c00b98c:	c4f6ae23          	sw	a5,-932(a3)
1c00b990:	26090513          	addi	a0,s2,608 # 1c006260 <key_a.1588>
1c00b994:	67f010ef          	jal	ra,1c00d812 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_dec>
1c00b998:	1c000537          	lui	a0,0x1c000
1c00b99c:	11c50513          	addi	a0,a0,284 # 1c00011c <__clz_tab+0x100>
1c00b9a0:	14e030ef          	jal	ra,1c00eaee <puts>
1c00b9a4:	1c000537          	lui	a0,0x1c000
1c00b9a8:	26090413          	addi	s0,s2,608
1c00b9ac:	13050513          	addi	a0,a0,304 # 1c000130 <__clz_tab+0x114>
1c00b9b0:	13e030ef          	jal	ra,1c00eaee <puts>
1c00b9b4:	02040993          	addi	s3,s0,32
1c00b9b8:	26090913          	addi	s2,s2,608
1c00b9bc:	1c000a37          	lui	s4,0x1c000
1c00b9c0:	00094583          	lbu	a1,0(s2)
1c00b9c4:	138a0513          	addi	a0,s4,312 # 1c000138 <__clz_tab+0x11c>
1c00b9c8:	0905                	addi	s2,s2,1
1c00b9ca:	1e6030ef          	jal	ra,1c00ebb0 <printf>
1c00b9ce:	ff3919e3          	bne	s2,s3,1c00b9c0 <main+0x386c>
1c00b9d2:	4529                	li	a0,10
1c00b9d4:	196030ef          	jal	ra,1c00eb6a <putchar>
1c00b9d8:	87a6                	mv	a5,s1
1c00b9da:	a019                	j	1c00b9e0 <main+0x388c>
1c00b9dc:	03340963          	beq	s0,s3,1c00ba0e <main+0x38ba>
1c00b9e0:	00044683          	lbu	a3,0(s0)
1c00b9e4:	0007c703          	lbu	a4,0(a5)
1c00b9e8:	0405                	addi	s0,s0,1
1c00b9ea:	0785                	addi	a5,a5,1
1c00b9ec:	fee688e3          	beq	a3,a4,1c00b9dc <main+0x3888>
1c00b9f0:	1c000537          	lui	a0,0x1c000
1c00b9f4:	14050513          	addi	a0,a0,320 # 1c000140 <__clz_tab+0x124>
1c00b9f8:	0f6030ef          	jal	ra,1c00eaee <puts>
1c00b9fc:	557d                	li	a0,-1
1c00b9fe:	40f2                	lw	ra,28(sp)
1c00ba00:	4462                	lw	s0,24(sp)
1c00ba02:	44d2                	lw	s1,20(sp)
1c00ba04:	4942                	lw	s2,16(sp)
1c00ba06:	49b2                	lw	s3,12(sp)
1c00ba08:	4a22                	lw	s4,8(sp)
1c00ba0a:	6105                	addi	sp,sp,32
1c00ba0c:	8082                	ret
1c00ba0e:	4501                	li	a0,0
1c00ba10:	b7fd                	j	1c00b9fe <main+0x38aa>

1c00ba12 <pos_fll_init>:
1c00ba12:	1101                	addi	sp,sp,-32
1c00ba14:	1a1005b7          	lui	a1,0x1a100
1c00ba18:	c64e                	sw	s3,12(sp)
1c00ba1a:	00451613          	slli	a2,a0,0x4
1c00ba1e:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c00ba22:	99b2                	add	s3,s3,a2
1c00ba24:	0009a703          	lw	a4,0(s3)
1c00ba28:	ca26                	sw	s1,20(sp)
1c00ba2a:	ce06                	sw	ra,28(sp)
1c00ba2c:	cc22                	sw	s0,24(sp)
1c00ba2e:	c84a                	sw	s2,16(sp)
1c00ba30:	c452                	sw	s4,8(sp)
1c00ba32:	84aa                	mv	s1,a0
1c00ba34:	87ba                	mv	a5,a4
1c00ba36:	04074763          	bltz	a4,1c00ba84 <pos_fll_init+0x72>
1c00ba3a:	00858693          	addi	a3,a1,8
1c00ba3e:	96b2                	add	a3,a3,a2
1c00ba40:	429c                	lw	a5,0(a3)
1c00ba42:	f0000537          	lui	a0,0xf0000
1c00ba46:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c00ba4a:	8fe9                	and	a5,a5,a0
1c00ba4c:	00502537          	lui	a0,0x502
1c00ba50:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c00ba54:	8fc9                	or	a5,a5,a0
1c00ba56:	05b1                	addi	a1,a1,12
1c00ba58:	c29c                	sw	a5,0(a3)
1c00ba5a:	962e                	add	a2,a2,a1
1c00ba5c:	4214                	lw	a3,0(a2)
1c00ba5e:	fc0107b7          	lui	a5,0xfc010
1c00ba62:	17fd                	addi	a5,a5,-1
1c00ba64:	01875593          	srli	a1,a4,0x18
1c00ba68:	8efd                	and	a3,a3,a5
1c00ba6a:	0c05e593          	ori	a1,a1,192
1c00ba6e:	00871793          	slli	a5,a4,0x8
1c00ba72:	014c0537          	lui	a0,0x14c0
1c00ba76:	8ec9                	or	a3,a3,a0
1c00ba78:	05e2                	slli	a1,a1,0x18
1c00ba7a:	83a1                	srli	a5,a5,0x8
1c00ba7c:	c214                	sw	a3,0(a2)
1c00ba7e:	8fcd                	or	a5,a5,a1
1c00ba80:	00f9a023          	sw	a5,0(s3)
1c00ba84:	1c007437          	lui	s0,0x1c007
1c00ba88:	52440413          	addi	s0,s0,1316 # 1c007524 <pos_fll_freq>
1c00ba8c:	00249a13          	slli	s4,s1,0x2
1c00ba90:	014406b3          	add	a3,s0,s4
1c00ba94:	0006a903          	lw	s2,0(a3)
1c00ba98:	02091d63          	bnez	s2,1c00bad2 <pos_fll_init+0xc0>
1c00ba9c:	83e9                	srli	a5,a5,0x1a
1c00ba9e:	0742                	slli	a4,a4,0x10
1c00baa0:	8341                	srli	a4,a4,0x10
1c00baa2:	8bbd                	andi	a5,a5,15
1c00baa4:	073e                	slli	a4,a4,0xf
1c00baa6:	17fd                	addi	a5,a5,-1
1c00baa8:	00f75933          	srl	s2,a4,a5
1c00baac:	0126a023          	sw	s2,0(a3)
1c00bab0:	1c0076b7          	lui	a3,0x1c007
1c00bab4:	52068693          	addi	a3,a3,1312 # 1c007520 <pos_fll_is_on>
1c00bab8:	96a6                	add	a3,a3,s1
1c00baba:	4785                	li	a5,1
1c00babc:	00f68023          	sb	a5,0(a3)
1c00bac0:	40f2                	lw	ra,28(sp)
1c00bac2:	4462                	lw	s0,24(sp)
1c00bac4:	44d2                	lw	s1,20(sp)
1c00bac6:	49b2                	lw	s3,12(sp)
1c00bac8:	4a22                	lw	s4,8(sp)
1c00baca:	854a                	mv	a0,s2
1c00bacc:	4942                	lw	s2,16(sp)
1c00bace:	6105                	addi	sp,sp,32
1c00bad0:	8082                	ret
1c00bad2:	854a                	mv	a0,s2
1c00bad4:	e34fc0ef          	jal	ra,1c008108 <__clzsi2>
1c00bad8:	1579                	addi	a0,a0,-2
1c00bada:	8105                	srli	a0,a0,0x1
1c00badc:	c939                	beqz	a0,1c00bb32 <pos_fll_init+0x120>
1c00bade:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c00bae2:	1c0076b7          	lui	a3,0x1c007
1c00bae6:	4785                	li	a5,1
1c00bae8:	00c797b3          	sll	a5,a5,a2
1c00baec:	00a91733          	sll	a4,s2,a0
1c00baf0:	52068693          	addi	a3,a3,1312 # 1c007520 <pos_fll_is_on>
1c00baf4:	7661                	lui	a2,0xffff8
1c00baf6:	8e79                	and	a2,a2,a4
1c00baf8:	009685b3          	add	a1,a3,s1
1c00bafc:	97b2                	add	a5,a5,a2
1c00bafe:	0005c603          	lbu	a2,0(a1)
1c00bb02:	9452                	add	s0,s0,s4
1c00bb04:	00a7d7b3          	srl	a5,a5,a0
1c00bb08:	c01c                	sw	a5,0(s0)
1c00bb0a:	d65d                	beqz	a2,1c00bab8 <pos_fll_init+0xa6>
1c00bb0c:	0009a783          	lw	a5,0(s3)
1c00bb10:	833d                	srli	a4,a4,0xf
1c00bb12:	0742                	slli	a4,a4,0x10
1c00bb14:	7641                	lui	a2,0xffff0
1c00bb16:	8341                	srli	a4,a4,0x10
1c00bb18:	8ff1                	and	a5,a5,a2
1c00bb1a:	8fd9                	or	a5,a5,a4
1c00bb1c:	0505                	addi	a0,a0,1
1c00bb1e:	c4000737          	lui	a4,0xc4000
1c00bb22:	893d                	andi	a0,a0,15
1c00bb24:	177d                	addi	a4,a4,-1
1c00bb26:	056a                	slli	a0,a0,0x1a
1c00bb28:	8ff9                	and	a5,a5,a4
1c00bb2a:	8d5d                	or	a0,a0,a5
1c00bb2c:	00a9a023          	sw	a0,0(s3)
1c00bb30:	b761                	j	1c00bab8 <pos_fll_init+0xa6>
1c00bb32:	4505                	li	a0,1
1c00bb34:	b76d                	j	1c00bade <pos_fll_init+0xcc>

1c00bb36 <pos_fll_constructor>:
1c00bb36:	1c0077b7          	lui	a5,0x1c007
1c00bb3a:	52478793          	addi	a5,a5,1316 # 1c007524 <pos_fll_freq>
1c00bb3e:	0007a023          	sw	zero,0(a5)
1c00bb42:	0007a223          	sw	zero,4(a5)
1c00bb46:	1c0077b7          	lui	a5,0x1c007
1c00bb4a:	52079023          	sh	zero,1312(a5) # 1c007520 <pos_fll_is_on>
1c00bb4e:	8082                	ret

1c00bb50 <pos_soc_init>:
1c00bb50:	1141                	addi	sp,sp,-16
1c00bb52:	c606                	sw	ra,12(sp)
1c00bb54:	c422                	sw	s0,8(sp)
1c00bb56:	37c5                	jal	1c00bb36 <pos_fll_constructor>
1c00bb58:	4501                	li	a0,0
1c00bb5a:	3d65                	jal	1c00ba12 <pos_fll_init>
1c00bb5c:	1c007437          	lui	s0,0x1c007
1c00bb60:	87aa                	mv	a5,a0
1c00bb62:	52c40413          	addi	s0,s0,1324 # 1c00752c <pos_freq_domains>
1c00bb66:	4505                	li	a0,1
1c00bb68:	c01c                	sw	a5,0(s0)
1c00bb6a:	3565                	jal	1c00ba12 <pos_fll_init>
1c00bb6c:	40b2                	lw	ra,12(sp)
1c00bb6e:	c408                	sw	a0,8(s0)
1c00bb70:	4422                	lw	s0,8(sp)
1c00bb72:	0141                	addi	sp,sp,16
1c00bb74:	8082                	ret

1c00bb76 <KeccakF1600_StatePermute>:
1c00bb76:	1a400837          	lui	a6,0x1a400
1c00bb7a:	87aa                	mv	a5,a0
1c00bb7c:	0c850613          	addi	a2,a0,200
1c00bb80:	1141                	addi	sp,sp,-16
1c00bb82:	40a80533          	sub	a0,a6,a0
1c00bb86:	4394                	lw	a3,0(a5)
1c00bb88:	00f50733          	add	a4,a0,a5
1c00bb8c:	0791                	addi	a5,a5,4
1c00bb8e:	c314                	sw	a3,0(a4)
1c00bb90:	fec79be3          	bne	a5,a2,1c00bb86 <KeccakF1600_StatePermute+0x10>
1c00bb94:	4785                	li	a5,1
1c00bb96:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c00bb9a:	1a400737          	lui	a4,0x1a400
1c00bb9e:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c00bba2:	8b85                	andi	a5,a5,1
1c00bba4:	dfed                	beqz	a5,1c00bb9e <KeccakF1600_StatePermute+0x28>
1c00bba6:	c602                	sw	zero,12(sp)
1c00bba8:	4732                	lw	a4,12(sp)
1c00bbaa:	03100793          	li	a5,49
1c00bbae:	02e7c663          	blt	a5,a4,1c00bbda <KeccakF1600_StatePermute+0x64>
1c00bbb2:	1a400637          	lui	a2,0x1a400
1c00bbb6:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00bbba:	03100513          	li	a0,49
1c00bbbe:	4732                	lw	a4,12(sp)
1c00bbc0:	47b2                	lw	a5,12(sp)
1c00bbc2:	070a                	slli	a4,a4,0x2
1c00bbc4:	9732                	add	a4,a4,a2
1c00bbc6:	4314                	lw	a3,0(a4)
1c00bbc8:	4732                	lw	a4,12(sp)
1c00bbca:	078a                	slli	a5,a5,0x2
1c00bbcc:	97ae                	add	a5,a5,a1
1c00bbce:	0705                	addi	a4,a4,1
1c00bbd0:	c63a                	sw	a4,12(sp)
1c00bbd2:	4732                	lw	a4,12(sp)
1c00bbd4:	c394                	sw	a3,0(a5)
1c00bbd6:	fee554e3          	bge	a0,a4,1c00bbbe <KeccakF1600_StatePermute+0x48>
1c00bbda:	0141                	addi	sp,sp,16
1c00bbdc:	8082                	ret

1c00bbde <KYBER_poly_ntt>:
1c00bbde:	1a4007b7          	lui	a5,0x1a400
1c00bbe2:	4705                	li	a4,1
1c00bbe4:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c00bbe8:	3007a423          	sw	zero,776(a5)
1c00bbec:	20050693          	addi	a3,a0,512
1c00bbf0:	1a400737          	lui	a4,0x1a400
1c00bbf4:	411c                	lw	a5,0(a0)
1c00bbf6:	0511                	addi	a0,a0,4
1c00bbf8:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00bbfc:	fed51ce3          	bne	a0,a3,1c00bbf4 <KYBER_poly_ntt+0x16>
1c00bc00:	08000793          	li	a5,128
1c00bc04:	30f72423          	sw	a5,776(a4)
1c00bc08:	30072423          	sw	zero,776(a4)
1c00bc0c:	1a400737          	lui	a4,0x1a400
1c00bc10:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c00bc14:	8b85                	andi	a5,a5,1
1c00bc16:	dfed                	beqz	a5,1c00bc10 <KYBER_poly_ntt+0x32>
1c00bc18:	47c1                	li	a5,16
1c00bc1a:	30f72423          	sw	a5,776(a4)
1c00bc1e:	30072423          	sw	zero,776(a4)
1c00bc22:	20058693          	addi	a3,a1,512
1c00bc26:	1a400737          	lui	a4,0x1a400
1c00bc2a:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00bc2e:	0591                	addi	a1,a1,4
1c00bc30:	fef5ae23          	sw	a5,-4(a1)
1c00bc34:	fed59be3          	bne	a1,a3,1c00bc2a <KYBER_poly_ntt+0x4c>
1c00bc38:	8082                	ret

1c00bc3a <KYBER_poly_intt>:
1c00bc3a:	1a4007b7          	lui	a5,0x1a400
1c00bc3e:	4709                	li	a4,2
1c00bc40:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c00bc44:	3007a423          	sw	zero,776(a5)
1c00bc48:	20050693          	addi	a3,a0,512
1c00bc4c:	1a400737          	lui	a4,0x1a400
1c00bc50:	411c                	lw	a5,0(a0)
1c00bc52:	0511                	addi	a0,a0,4
1c00bc54:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00bc58:	fed51ce3          	bne	a0,a3,1c00bc50 <KYBER_poly_intt+0x16>
1c00bc5c:	20000793          	li	a5,512
1c00bc60:	30f72423          	sw	a5,776(a4)
1c00bc64:	30072423          	sw	zero,776(a4)
1c00bc68:	1a400737          	lui	a4,0x1a400
1c00bc6c:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c00bc70:	8b85                	andi	a5,a5,1
1c00bc72:	dfed                	beqz	a5,1c00bc6c <KYBER_poly_intt+0x32>
1c00bc74:	47c1                	li	a5,16
1c00bc76:	30f72423          	sw	a5,776(a4)
1c00bc7a:	30072423          	sw	zero,776(a4)
1c00bc7e:	20058693          	addi	a3,a1,512
1c00bc82:	1a400737          	lui	a4,0x1a400
1c00bc86:	0001                	nop
1c00bc88:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00bc8c:	0591                	addi	a1,a1,4
1c00bc8e:	fef5ae23          	sw	a5,-4(a1)
1c00bc92:	fed59ae3          	bne	a1,a3,1c00bc86 <KYBER_poly_intt+0x4c>
1c00bc96:	8082                	ret

1c00bc98 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>:
1c00bc98:	1101                	addi	sp,sp,-32
1c00bc9a:	55555f37          	lui	t5,0x55555
1c00bc9e:	ce22                	sw	s0,28(sp)
1c00bca0:	cc26                	sw	s1,24(sp)
1c00bca2:	ca4a                	sw	s2,20(sp)
1c00bca4:	c84e                	sw	s3,16(sp)
1c00bca6:	c652                	sw	s4,12(sp)
1c00bca8:	20050f93          	addi	t6,a0,512
1c00bcac:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00bcb0:	0015c683          	lbu	a3,1(a1)
1c00bcb4:	0005c603          	lbu	a2,0(a1)
1c00bcb8:	0025c783          	lbu	a5,2(a1)
1c00bcbc:	0035c703          	lbu	a4,3(a1)
1c00bcc0:	06a2                	slli	a3,a3,0x8
1c00bcc2:	8ed1                	or	a3,a3,a2
1c00bcc4:	07c2                	slli	a5,a5,0x10
1c00bcc6:	8fd5                	or	a5,a5,a3
1c00bcc8:	0762                	slli	a4,a4,0x18
1c00bcca:	8f5d                	or	a4,a4,a5
1c00bccc:	00175793          	srli	a5,a4,0x1
1c00bcd0:	01e7f7b3          	and	a5,a5,t5
1c00bcd4:	01e77733          	and	a4,a4,t5
1c00bcd8:	97ba                	add	a5,a5,a4
1c00bcda:	0027da13          	srli	s4,a5,0x2
1c00bcde:	0047d313          	srli	t1,a5,0x4
1c00bce2:	0067d993          	srli	s3,a5,0x6
1c00bce6:	0087d893          	srli	a7,a5,0x8
1c00bcea:	00a7d913          	srli	s2,a5,0xa
1c00bcee:	00c7d813          	srli	a6,a5,0xc
1c00bcf2:	00e7d493          	srli	s1,a5,0xe
1c00bcf6:	0107d613          	srli	a2,a5,0x10
1c00bcfa:	0127d413          	srli	s0,a5,0x12
1c00bcfe:	0147d693          	srli	a3,a5,0x14
1c00bd02:	0167d393          	srli	t2,a5,0x16
1c00bd06:	0187d713          	srli	a4,a5,0x18
1c00bd0a:	01a7d293          	srli	t0,a5,0x1a
1c00bd0e:	01c7de93          	srli	t4,a5,0x1c
1c00bd12:	0037fe13          	andi	t3,a5,3
1c00bd16:	003a7a13          	andi	s4,s4,3
1c00bd1a:	00337313          	andi	t1,t1,3
1c00bd1e:	0039f993          	andi	s3,s3,3
1c00bd22:	0038f893          	andi	a7,a7,3
1c00bd26:	00397913          	andi	s2,s2,3
1c00bd2a:	00387813          	andi	a6,a6,3
1c00bd2e:	888d                	andi	s1,s1,3
1c00bd30:	8a0d                	andi	a2,a2,3
1c00bd32:	880d                	andi	s0,s0,3
1c00bd34:	8a8d                	andi	a3,a3,3
1c00bd36:	0033f393          	andi	t2,t2,3
1c00bd3a:	8b0d                	andi	a4,a4,3
1c00bd3c:	0032f293          	andi	t0,t0,3
1c00bd40:	003efe93          	andi	t4,t4,3
1c00bd44:	83f9                	srli	a5,a5,0x1e
1c00bd46:	414e0e33          	sub	t3,t3,s4
1c00bd4a:	41330333          	sub	t1,t1,s3
1c00bd4e:	412888b3          	sub	a7,a7,s2
1c00bd52:	40980833          	sub	a6,a6,s1
1c00bd56:	8e01                	sub	a2,a2,s0
1c00bd58:	407686b3          	sub	a3,a3,t2
1c00bd5c:	40570733          	sub	a4,a4,t0
1c00bd60:	40fe87b3          	sub	a5,t4,a5
1c00bd64:	01c51023          	sh	t3,0(a0)
1c00bd68:	00651123          	sh	t1,2(a0)
1c00bd6c:	01151223          	sh	a7,4(a0)
1c00bd70:	01051323          	sh	a6,6(a0)
1c00bd74:	00c51423          	sh	a2,8(a0)
1c00bd78:	00d51523          	sh	a3,10(a0)
1c00bd7c:	00e51623          	sh	a4,12(a0)
1c00bd80:	00f51723          	sh	a5,14(a0)
1c00bd84:	0541                	addi	a0,a0,16
1c00bd86:	0591                	addi	a1,a1,4
1c00bd88:	f3f514e3          	bne	a0,t6,1c00bcb0 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1+0x18>
1c00bd8c:	4472                	lw	s0,28(sp)
1c00bd8e:	44e2                	lw	s1,24(sp)
1c00bd90:	4952                	lw	s2,20(sp)
1c00bd92:	49c2                	lw	s3,16(sp)
1c00bd94:	4a32                	lw	s4,12(sp)
1c00bd96:	6105                	addi	sp,sp,32
1c00bd98:	8082                	ret

1c00bd9a <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2>:
1c00bd9a:	1101                	addi	sp,sp,-32
1c00bd9c:	55555f37          	lui	t5,0x55555
1c00bda0:	ce22                	sw	s0,28(sp)
1c00bda2:	cc26                	sw	s1,24(sp)
1c00bda4:	ca4a                	sw	s2,20(sp)
1c00bda6:	c84e                	sw	s3,16(sp)
1c00bda8:	c652                	sw	s4,12(sp)
1c00bdaa:	20050f93          	addi	t6,a0,512
1c00bdae:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00bdb2:	0015c683          	lbu	a3,1(a1)
1c00bdb6:	0005c603          	lbu	a2,0(a1)
1c00bdba:	0025c783          	lbu	a5,2(a1)
1c00bdbe:	0035c703          	lbu	a4,3(a1)
1c00bdc2:	06a2                	slli	a3,a3,0x8
1c00bdc4:	8ed1                	or	a3,a3,a2
1c00bdc6:	07c2                	slli	a5,a5,0x10
1c00bdc8:	8fd5                	or	a5,a5,a3
1c00bdca:	0762                	slli	a4,a4,0x18
1c00bdcc:	8f5d                	or	a4,a4,a5
1c00bdce:	00175793          	srli	a5,a4,0x1
1c00bdd2:	01e7f7b3          	and	a5,a5,t5
1c00bdd6:	01e77733          	and	a4,a4,t5
1c00bdda:	97ba                	add	a5,a5,a4
1c00bddc:	0027da13          	srli	s4,a5,0x2
1c00bde0:	0047d313          	srli	t1,a5,0x4
1c00bde4:	0067d993          	srli	s3,a5,0x6
1c00bde8:	0087d893          	srli	a7,a5,0x8
1c00bdec:	00a7d913          	srli	s2,a5,0xa
1c00bdf0:	00c7d813          	srli	a6,a5,0xc
1c00bdf4:	00e7d493          	srli	s1,a5,0xe
1c00bdf8:	0107d613          	srli	a2,a5,0x10
1c00bdfc:	0127d413          	srli	s0,a5,0x12
1c00be00:	0147d693          	srli	a3,a5,0x14
1c00be04:	0167d393          	srli	t2,a5,0x16
1c00be08:	0187d713          	srli	a4,a5,0x18
1c00be0c:	01a7d293          	srli	t0,a5,0x1a
1c00be10:	01c7de93          	srli	t4,a5,0x1c
1c00be14:	0037fe13          	andi	t3,a5,3
1c00be18:	003a7a13          	andi	s4,s4,3
1c00be1c:	00337313          	andi	t1,t1,3
1c00be20:	0039f993          	andi	s3,s3,3
1c00be24:	0038f893          	andi	a7,a7,3
1c00be28:	00397913          	andi	s2,s2,3
1c00be2c:	00387813          	andi	a6,a6,3
1c00be30:	888d                	andi	s1,s1,3
1c00be32:	8a0d                	andi	a2,a2,3
1c00be34:	880d                	andi	s0,s0,3
1c00be36:	8a8d                	andi	a3,a3,3
1c00be38:	0033f393          	andi	t2,t2,3
1c00be3c:	8b0d                	andi	a4,a4,3
1c00be3e:	0032f293          	andi	t0,t0,3
1c00be42:	003efe93          	andi	t4,t4,3
1c00be46:	83f9                	srli	a5,a5,0x1e
1c00be48:	414e0e33          	sub	t3,t3,s4
1c00be4c:	41330333          	sub	t1,t1,s3
1c00be50:	412888b3          	sub	a7,a7,s2
1c00be54:	40980833          	sub	a6,a6,s1
1c00be58:	8e01                	sub	a2,a2,s0
1c00be5a:	407686b3          	sub	a3,a3,t2
1c00be5e:	40570733          	sub	a4,a4,t0
1c00be62:	40fe87b3          	sub	a5,t4,a5
1c00be66:	01c51023          	sh	t3,0(a0)
1c00be6a:	00651123          	sh	t1,2(a0)
1c00be6e:	01151223          	sh	a7,4(a0)
1c00be72:	01051323          	sh	a6,6(a0)
1c00be76:	00c51423          	sh	a2,8(a0)
1c00be7a:	00d51523          	sh	a3,10(a0)
1c00be7e:	00e51623          	sh	a4,12(a0)
1c00be82:	00f51723          	sh	a5,14(a0)
1c00be86:	0541                	addi	a0,a0,16
1c00be88:	0591                	addi	a1,a1,4
1c00be8a:	f3f514e3          	bne	a0,t6,1c00bdb2 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2+0x18>
1c00be8e:	4472                	lw	s0,28(sp)
1c00be90:	44e2                	lw	s1,24(sp)
1c00be92:	4952                	lw	s2,20(sp)
1c00be94:	49c2                	lw	s3,16(sp)
1c00be96:	4a32                	lw	s4,12(sp)
1c00be98:	6105                	addi	sp,sp,32
1c00be9a:	8082                	ret

1c00be9c <keccak_absorb.constprop.1>:
1c00be9c:	7151                	addi	sp,sp,-240
1c00be9e:	d3a6                	sw	s1,228(sp)
1c00bea0:	cfce                	sw	s3,220(sp)
1c00bea2:	cdd2                	sw	s4,216(sp)
1c00bea4:	cbd6                	sw	s5,212(sp)
1c00bea6:	84b6                	mv	s1,a3
1c00bea8:	d786                	sw	ra,236(sp)
1c00beaa:	d5a2                	sw	s0,232(sp)
1c00beac:	d1ca                	sw	s2,224(sp)
1c00beae:	c9da                	sw	s6,208(sp)
1c00beb0:	8a2a                	mv	s4,a0
1c00beb2:	87ae                	mv	a5,a1
1c00beb4:	8ab2                	mv	s5,a2
1c00beb6:	89aa                	mv	s3,a0
1c00beb8:	0c850693          	addi	a3,a0,200
1c00bebc:	872a                	mv	a4,a0
1c00bebe:	4581                	li	a1,0
1c00bec0:	4601                	li	a2,0
1c00bec2:	c30c                	sw	a1,0(a4)
1c00bec4:	c350                	sw	a2,4(a4)
1c00bec6:	0721                	addi	a4,a4,8
1c00bec8:	fee69be3          	bne	a3,a4,1c00bebe <keccak_absorb.constprop.1+0x22>
1c00becc:	08700713          	li	a4,135
1c00bed0:	09577363          	bgeu	a4,s5,1c00bf56 <keccak_absorb.constprop.1+0xba>
1c00bed4:	08878b13          	addi	s6,a5,136
1c00bed8:	895a                	mv	s2,s6
1c00beda:	08700413          	li	s0,135
1c00bede:	86d2                	mv	a3,s4
1c00bee0:	0017c703          	lbu	a4,1(a5)
1c00bee4:	0027ce03          	lbu	t3,2(a5)
1c00bee8:	0057c803          	lbu	a6,5(a5)
1c00beec:	0047cf03          	lbu	t5,4(a5)
1c00bef0:	0067c503          	lbu	a0,6(a5)
1c00bef4:	0007ce83          	lbu	t4,0(a5)
1c00bef8:	0037c583          	lbu	a1,3(a5)
1c00befc:	0077c603          	lbu	a2,7(a5)
1c00bf00:	0722                	slli	a4,a4,0x8
1c00bf02:	0e42                	slli	t3,t3,0x10
1c00bf04:	0822                	slli	a6,a6,0x8
1c00bf06:	0006a303          	lw	t1,0(a3)
1c00bf0a:	0046a883          	lw	a7,4(a3)
1c00bf0e:	01c76733          	or	a4,a4,t3
1c00bf12:	01e86833          	or	a6,a6,t5
1c00bf16:	0542                	slli	a0,a0,0x10
1c00bf18:	01d76733          	or	a4,a4,t4
1c00bf1c:	05e2                	slli	a1,a1,0x18
1c00bf1e:	01056533          	or	a0,a0,a6
1c00bf22:	0662                	slli	a2,a2,0x18
1c00bf24:	8f4d                	or	a4,a4,a1
1c00bf26:	8e49                	or	a2,a2,a0
1c00bf28:	00e34733          	xor	a4,t1,a4
1c00bf2c:	00c8c633          	xor	a2,a7,a2
1c00bf30:	c298                	sw	a4,0(a3)
1c00bf32:	c2d0                	sw	a2,4(a3)
1c00bf34:	07a1                	addi	a5,a5,8
1c00bf36:	06a1                	addi	a3,a3,8
1c00bf38:	faf914e3          	bne	s2,a5,1c00bee0 <keccak_absorb.constprop.1+0x44>
1c00bf3c:	85d2                	mv	a1,s4
1c00bf3e:	8552                	mv	a0,s4
1c00bf40:	391d                	jal	1c00bb76 <KeccakF1600_StatePermute>
1c00bf42:	f78a8a93          	addi	s5,s5,-136
1c00bf46:	08890913          	addi	s2,s2,136
1c00bf4a:	87da                	mv	a5,s6
1c00bf4c:	01547563          	bgeu	s0,s5,1c00bf56 <keccak_absorb.constprop.1+0xba>
1c00bf50:	088b0b13          	addi	s6,s6,136
1c00bf54:	b769                	j	1c00bede <keccak_absorb.constprop.1+0x42>
1c00bf56:	0038                	addi	a4,sp,8
1c00bf58:	09010e13          	addi	t3,sp,144
1c00bf5c:	86ba                	mv	a3,a4
1c00bf5e:	0006a023          	sw	zero,0(a3)
1c00bf62:	0691                	addi	a3,a3,4
1c00bf64:	fede1de3          	bne	t3,a3,1c00bf5e <keccak_absorb.constprop.1+0xc2>
1c00bf68:	080a8263          	beqz	s5,1c00bfec <keccak_absorb.constprop.1+0x150>
1c00bf6c:	fffa8693          	addi	a3,s5,-1
1c00bf70:	4609                	li	a2,2
1c00bf72:	10d67163          	bgeu	a2,a3,1c00c074 <keccak_absorb.constprop.1+0x1d8>
1c00bf76:	ffcaf313          	andi	t1,s5,-4
1c00bf7a:	86be                	mv	a3,a5
1c00bf7c:	933e                	add	t1,t1,a5
1c00bf7e:	883a                	mv	a6,a4
1c00bf80:	0016c503          	lbu	a0,1(a3)
1c00bf84:	0006c883          	lbu	a7,0(a3)
1c00bf88:	0026c583          	lbu	a1,2(a3)
1c00bf8c:	0036c603          	lbu	a2,3(a3)
1c00bf90:	0522                	slli	a0,a0,0x8
1c00bf92:	01156533          	or	a0,a0,a7
1c00bf96:	05c2                	slli	a1,a1,0x10
1c00bf98:	8dc9                	or	a1,a1,a0
1c00bf9a:	0662                	slli	a2,a2,0x18
1c00bf9c:	8e4d                	or	a2,a2,a1
1c00bf9e:	00c82023          	sw	a2,0(a6)
1c00bfa2:	0691                	addi	a3,a3,4
1c00bfa4:	0811                	addi	a6,a6,4
1c00bfa6:	fcd31de3          	bne	t1,a3,1c00bf80 <keccak_absorb.constprop.1+0xe4>
1c00bfaa:	ffcaf693          	andi	a3,s5,-4
1c00bfae:	02da8f63          	beq	s5,a3,1c00bfec <keccak_absorb.constprop.1+0x150>
1c00bfb2:	00d78633          	add	a2,a5,a3
1c00bfb6:	00064503          	lbu	a0,0(a2)
1c00bfba:	098c                	addi	a1,sp,208
1c00bfbc:	95b6                	add	a1,a1,a3
1c00bfbe:	00168613          	addi	a2,a3,1
1c00bfc2:	f2a58c23          	sb	a0,-200(a1)
1c00bfc6:	03567363          	bgeu	a2,s5,1c00bfec <keccak_absorb.constprop.1+0x150>
1c00bfca:	00c785b3          	add	a1,a5,a2
1c00bfce:	0005c583          	lbu	a1,0(a1)
1c00bfd2:	0988                	addi	a0,sp,208
1c00bfd4:	962a                	add	a2,a2,a0
1c00bfd6:	0689                	addi	a3,a3,2
1c00bfd8:	f2b60c23          	sb	a1,-200(a2)
1c00bfdc:	0156f863          	bgeu	a3,s5,1c00bfec <keccak_absorb.constprop.1+0x150>
1c00bfe0:	97b6                	add	a5,a5,a3
1c00bfe2:	0007c783          	lbu	a5,0(a5)
1c00bfe6:	96aa                	add	a3,a3,a0
1c00bfe8:	f2f68c23          	sb	a5,-200(a3)
1c00bfec:	099c                	addi	a5,sp,208
1c00bfee:	9abe                	add	s5,s5,a5
1c00bff0:	f29a8c23          	sb	s1,-200(s5)
1c00bff4:	08f14783          	lbu	a5,143(sp)
1c00bff8:	f807e793          	ori	a5,a5,-128
1c00bffc:	08f107a3          	sb	a5,143(sp)
1c00c000:	00174783          	lbu	a5,1(a4)
1c00c004:	00274303          	lbu	t1,2(a4)
1c00c008:	00574503          	lbu	a0,5(a4)
1c00c00c:	00474f03          	lbu	t5,4(a4)
1c00c010:	00674583          	lbu	a1,6(a4)
1c00c014:	00074e83          	lbu	t4,0(a4)
1c00c018:	00374603          	lbu	a2,3(a4)
1c00c01c:	00774683          	lbu	a3,7(a4)
1c00c020:	07a2                	slli	a5,a5,0x8
1c00c022:	0342                	slli	t1,t1,0x10
1c00c024:	0522                	slli	a0,a0,0x8
1c00c026:	0009a883          	lw	a7,0(s3)
1c00c02a:	0049a803          	lw	a6,4(s3)
1c00c02e:	0067e7b3          	or	a5,a5,t1
1c00c032:	01e56533          	or	a0,a0,t5
1c00c036:	05c2                	slli	a1,a1,0x10
1c00c038:	01d7e7b3          	or	a5,a5,t4
1c00c03c:	0662                	slli	a2,a2,0x18
1c00c03e:	8dc9                	or	a1,a1,a0
1c00c040:	06e2                	slli	a3,a3,0x18
1c00c042:	8e5d                	or	a2,a2,a5
1c00c044:	00b6e7b3          	or	a5,a3,a1
1c00c048:	00c8c633          	xor	a2,a7,a2
1c00c04c:	00f847b3          	xor	a5,a6,a5
1c00c050:	00c9a023          	sw	a2,0(s3)
1c00c054:	00f9a223          	sw	a5,4(s3)
1c00c058:	0721                	addi	a4,a4,8
1c00c05a:	09a1                	addi	s3,s3,8
1c00c05c:	faee12e3          	bne	t3,a4,1c00c000 <keccak_absorb.constprop.1+0x164>
1c00c060:	50be                	lw	ra,236(sp)
1c00c062:	542e                	lw	s0,232(sp)
1c00c064:	549e                	lw	s1,228(sp)
1c00c066:	590e                	lw	s2,224(sp)
1c00c068:	49fe                	lw	s3,220(sp)
1c00c06a:	4a6e                	lw	s4,216(sp)
1c00c06c:	4ade                	lw	s5,212(sp)
1c00c06e:	4b4e                	lw	s6,208(sp)
1c00c070:	616d                	addi	sp,sp,240
1c00c072:	8082                	ret
1c00c074:	4681                	li	a3,0
1c00c076:	bf35                	j	1c00bfb2 <keccak_absorb.constprop.1+0x116>

1c00c078 <shake128_absorb>:
1c00c078:	7151                	addi	sp,sp,-240
1c00c07a:	cfce                	sw	s3,220(sp)
1c00c07c:	89aa                	mv	s3,a0
1c00c07e:	0c800513          	li	a0,200
1c00c082:	d5a2                	sw	s0,232(sp)
1c00c084:	d3a6                	sw	s1,228(sp)
1c00c086:	d786                	sw	ra,236(sp)
1c00c088:	d1ca                	sw	s2,224(sp)
1c00c08a:	842e                	mv	s0,a1
1c00c08c:	84b2                	mv	s1,a2
1c00c08e:	43b030ef          	jal	ra,1c00fcc8 <pi_l2_malloc>
1c00c092:	00a9a023          	sw	a0,0(s3)
1c00c096:	1c050363          	beqz	a0,1c00c25c <shake128_absorb+0x1e4>
1c00c09a:	892a                	mv	s2,a0
1c00c09c:	0c850713          	addi	a4,a0,200
1c00c0a0:	87aa                	mv	a5,a0
1c00c0a2:	4601                	li	a2,0
1c00c0a4:	4681                	li	a3,0
1c00c0a6:	c390                	sw	a2,0(a5)
1c00c0a8:	c3d4                	sw	a3,4(a5)
1c00c0aa:	07a1                	addi	a5,a5,8
1c00c0ac:	fef71be3          	bne	a4,a5,1c00c0a2 <shake128_absorb+0x2a>
1c00c0b0:	0a700793          	li	a5,167
1c00c0b4:	0897f063          	bgeu	a5,s1,1c00c134 <shake128_absorb+0xbc>
1c00c0b8:	0a700993          	li	s3,167
1c00c0bc:	87a2                	mv	a5,s0
1c00c0be:	40890eb3          	sub	t4,s2,s0
1c00c0c2:	0a840413          	addi	s0,s0,168
1c00c0c6:	0017c703          	lbu	a4,1(a5)
1c00c0ca:	0027ce03          	lbu	t3,2(a5)
1c00c0ce:	0057c503          	lbu	a0,5(a5)
1c00c0d2:	0047cf83          	lbu	t6,4(a5)
1c00c0d6:	0067c583          	lbu	a1,6(a5)
1c00c0da:	0007cf03          	lbu	t5,0(a5)
1c00c0de:	0037c603          	lbu	a2,3(a5)
1c00c0e2:	0077c683          	lbu	a3,7(a5)
1c00c0e6:	00fe8833          	add	a6,t4,a5
1c00c0ea:	0722                	slli	a4,a4,0x8
1c00c0ec:	0e42                	slli	t3,t3,0x10
1c00c0ee:	0522                	slli	a0,a0,0x8
1c00c0f0:	00082303          	lw	t1,0(a6)
1c00c0f4:	00482883          	lw	a7,4(a6)
1c00c0f8:	01c76733          	or	a4,a4,t3
1c00c0fc:	01f56533          	or	a0,a0,t6
1c00c100:	05c2                	slli	a1,a1,0x10
1c00c102:	01e76733          	or	a4,a4,t5
1c00c106:	0662                	slli	a2,a2,0x18
1c00c108:	8dc9                	or	a1,a1,a0
1c00c10a:	06e2                	slli	a3,a3,0x18
1c00c10c:	8f51                	or	a4,a4,a2
1c00c10e:	8ecd                	or	a3,a3,a1
1c00c110:	00e34733          	xor	a4,t1,a4
1c00c114:	00d8c6b3          	xor	a3,a7,a3
1c00c118:	00e82023          	sw	a4,0(a6)
1c00c11c:	00d82223          	sw	a3,4(a6)
1c00c120:	07a1                	addi	a5,a5,8
1c00c122:	faf412e3          	bne	s0,a5,1c00c0c6 <shake128_absorb+0x4e>
1c00c126:	f5848493          	addi	s1,s1,-168
1c00c12a:	85ca                	mv	a1,s2
1c00c12c:	854a                	mv	a0,s2
1c00c12e:	34a1                	jal	1c00bb76 <KeccakF1600_StatePermute>
1c00c130:	f899e6e3          	bltu	s3,s1,1c00c0bc <shake128_absorb+0x44>
1c00c134:	0b010313          	addi	t1,sp,176
1c00c138:	003c                	addi	a5,sp,8
1c00c13a:	0007a023          	sw	zero,0(a5)
1c00c13e:	0791                	addi	a5,a5,4
1c00c140:	fef31de3          	bne	t1,a5,1c00c13a <shake128_absorb+0xc2>
1c00c144:	c0d9                	beqz	s1,1c00c1ca <shake128_absorb+0x152>
1c00c146:	fff48793          	addi	a5,s1,-1
1c00c14a:	4709                	li	a4,2
1c00c14c:	10f77663          	bgeu	a4,a5,1c00c258 <shake128_absorb+0x1e0>
1c00c150:	ffc4f593          	andi	a1,s1,-4
1c00c154:	87a2                	mv	a5,s0
1c00c156:	95a2                	add	a1,a1,s0
1c00c158:	0028                	addi	a0,sp,8
1c00c15a:	0017c603          	lbu	a2,1(a5)
1c00c15e:	0007c803          	lbu	a6,0(a5)
1c00c162:	0027c683          	lbu	a3,2(a5)
1c00c166:	0037c703          	lbu	a4,3(a5)
1c00c16a:	0622                	slli	a2,a2,0x8
1c00c16c:	01066633          	or	a2,a2,a6
1c00c170:	06c2                	slli	a3,a3,0x10
1c00c172:	8ed1                	or	a3,a3,a2
1c00c174:	0762                	slli	a4,a4,0x18
1c00c176:	8f55                	or	a4,a4,a3
1c00c178:	c118                	sw	a4,0(a0)
1c00c17a:	0791                	addi	a5,a5,4
1c00c17c:	0511                	addi	a0,a0,4
1c00c17e:	fcf59ee3          	bne	a1,a5,1c00c15a <shake128_absorb+0xe2>
1c00c182:	ffc4f793          	andi	a5,s1,-4
1c00c186:	04f48263          	beq	s1,a5,1c00c1ca <shake128_absorb+0x152>
1c00c18a:	00f40733          	add	a4,s0,a5
1c00c18e:	00074603          	lbu	a2,0(a4)
1c00c192:	0994                	addi	a3,sp,208
1c00c194:	96be                	add	a3,a3,a5
1c00c196:	00178713          	addi	a4,a5,1
1c00c19a:	f2c68c23          	sb	a2,-200(a3)
1c00c19e:	02977663          	bgeu	a4,s1,1c00c1ca <shake128_absorb+0x152>
1c00c1a2:	00e406b3          	add	a3,s0,a4
1c00c1a6:	0006c603          	lbu	a2,0(a3)
1c00c1aa:	0994                	addi	a3,sp,208
1c00c1ac:	96ba                	add	a3,a3,a4
1c00c1ae:	f2c68c23          	sb	a2,-200(a3)
1c00c1b2:	00278713          	addi	a4,a5,2
1c00c1b6:	00977a63          	bgeu	a4,s1,1c00c1ca <shake128_absorb+0x152>
1c00c1ba:	00e407b3          	add	a5,s0,a4
1c00c1be:	0007c683          	lbu	a3,0(a5)
1c00c1c2:	099c                	addi	a5,sp,208
1c00c1c4:	97ba                	add	a5,a5,a4
1c00c1c6:	f2d78c23          	sb	a3,-200(a5)
1c00c1ca:	099c                	addi	a5,sp,208
1c00c1cc:	00978633          	add	a2,a5,s1
1c00c1d0:	47fd                	li	a5,31
1c00c1d2:	f2f60c23          	sb	a5,-200(a2)
1c00c1d6:	0af14703          	lbu	a4,175(sp)
1c00c1da:	003c                	addi	a5,sp,8
1c00c1dc:	40f90933          	sub	s2,s2,a5
1c00c1e0:	f8076713          	ori	a4,a4,-128
1c00c1e4:	0ae107a3          	sb	a4,175(sp)
1c00c1e8:	0017c703          	lbu	a4,1(a5)
1c00c1ec:	0027cf83          	lbu	t6,2(a5)
1c00c1f0:	0057c883          	lbu	a7,5(a5)
1c00c1f4:	0047c503          	lbu	a0,4(a5)
1c00c1f8:	0067c803          	lbu	a6,6(a5)
1c00c1fc:	0007c583          	lbu	a1,0(a5)
1c00c200:	0037c603          	lbu	a2,3(a5)
1c00c204:	0077c683          	lbu	a3,7(a5)
1c00c208:	00f90e33          	add	t3,s2,a5
1c00c20c:	0722                	slli	a4,a4,0x8
1c00c20e:	0fc2                	slli	t6,t6,0x10
1c00c210:	08a2                	slli	a7,a7,0x8
1c00c212:	000e2f03          	lw	t5,0(t3)
1c00c216:	004e2e83          	lw	t4,4(t3)
1c00c21a:	01f76733          	or	a4,a4,t6
1c00c21e:	00a8e8b3          	or	a7,a7,a0
1c00c222:	0842                	slli	a6,a6,0x10
1c00c224:	8f4d                	or	a4,a4,a1
1c00c226:	0662                	slli	a2,a2,0x18
1c00c228:	01186833          	or	a6,a6,a7
1c00c22c:	06e2                	slli	a3,a3,0x18
1c00c22e:	8f51                	or	a4,a4,a2
1c00c230:	0106e6b3          	or	a3,a3,a6
1c00c234:	00ef4733          	xor	a4,t5,a4
1c00c238:	00dec6b3          	xor	a3,t4,a3
1c00c23c:	00ee2023          	sw	a4,0(t3)
1c00c240:	00de2223          	sw	a3,4(t3)
1c00c244:	07a1                	addi	a5,a5,8
1c00c246:	faf311e3          	bne	t1,a5,1c00c1e8 <shake128_absorb+0x170>
1c00c24a:	50be                	lw	ra,236(sp)
1c00c24c:	542e                	lw	s0,232(sp)
1c00c24e:	549e                	lw	s1,228(sp)
1c00c250:	590e                	lw	s2,224(sp)
1c00c252:	49fe                	lw	s3,220(sp)
1c00c254:	616d                	addi	sp,sp,240
1c00c256:	8082                	ret
1c00c258:	4781                	li	a5,0
1c00c25a:	bf05                	j	1c00c18a <shake128_absorb+0x112>
1c00c25c:	06f00513          	li	a0,111
1c00c260:	135020ef          	jal	ra,1c00eb94 <exit>

1c00c264 <shake128_squeezeblocks>:
1c00c264:	1101                	addi	sp,sp,-32
1c00c266:	c05a                	sw	s6,0(sp)
1c00c268:	ce06                	sw	ra,28(sp)
1c00c26a:	cc22                	sw	s0,24(sp)
1c00c26c:	ca26                	sw	s1,20(sp)
1c00c26e:	c84a                	sw	s2,16(sp)
1c00c270:	c64e                	sw	s3,12(sp)
1c00c272:	c452                	sw	s4,8(sp)
1c00c274:	c256                	sw	s5,4(sp)
1c00c276:	00062b03          	lw	s6,0(a2)
1c00c27a:	c5e9                	beqz	a1,1c00c344 <shake128_squeezeblocks+0xe0>
1c00c27c:	7ac1                	lui	s5,0xffff0
1c00c27e:	ff010a37          	lui	s4,0xff010
1c00c282:	010009b7          	lui	s3,0x1000
1c00c286:	84ae                	mv	s1,a1
1c00c288:	892a                	mv	s2,a0
1c00c28a:	0a8b0413          	addi	s0,s6,168
1c00c28e:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00c292:	1a7d                	addi	s4,s4,-1
1c00c294:	19fd                	addi	s3,s3,-1
1c00c296:	85da                	mv	a1,s6
1c00c298:	855a                	mv	a0,s6
1c00c29a:	38f1                	jal	1c00bb76 <KeccakF1600_StatePermute>
1c00c29c:	85da                	mv	a1,s6
1c00c29e:	00490813          	addi	a6,s2,4
1c00c2a2:	4198                	lw	a4,0(a1)
1c00c2a4:	41dc                	lw	a5,4(a1)
1c00c2a6:	05a1                	addi	a1,a1,8
1c00c2a8:	00875893          	srli	a7,a4,0x8
1c00c2ac:	0087d513          	srli	a0,a5,0x8
1c00c2b0:	0ff77613          	andi	a2,a4,255
1c00c2b4:	0ff7f693          	andi	a3,a5,255
1c00c2b8:	0ff8f893          	andi	a7,a7,255
1c00c2bc:	0ff57513          	andi	a0,a0,255
1c00c2c0:	08a2                	slli	a7,a7,0x8
1c00c2c2:	0522                	slli	a0,a0,0x8
1c00c2c4:	01567633          	and	a2,a2,s5
1c00c2c8:	0156f6b3          	and	a3,a3,s5
1c00c2cc:	01166633          	or	a2,a2,a7
1c00c2d0:	8ec9                	or	a3,a3,a0
1c00c2d2:	00ff08b7          	lui	a7,0xff0
1c00c2d6:	00ff0537          	lui	a0,0xff0
1c00c2da:	011778b3          	and	a7,a4,a7
1c00c2de:	8d7d                	and	a0,a0,a5
1c00c2e0:	01467633          	and	a2,a2,s4
1c00c2e4:	0146f6b3          	and	a3,a3,s4
1c00c2e8:	01166633          	or	a2,a2,a7
1c00c2ec:	8ec9                	or	a3,a3,a0
1c00c2ee:	8361                	srli	a4,a4,0x18
1c00c2f0:	83e1                	srli	a5,a5,0x18
1c00c2f2:	01367633          	and	a2,a2,s3
1c00c2f6:	0136f6b3          	and	a3,a3,s3
1c00c2fa:	0762                	slli	a4,a4,0x18
1c00c2fc:	07e2                	slli	a5,a5,0x18
1c00c2fe:	8f51                	or	a4,a4,a2
1c00c300:	8fd5                	or	a5,a5,a3
1c00c302:	00875e13          	srli	t3,a4,0x8
1c00c306:	01075313          	srli	t1,a4,0x10
1c00c30a:	0087d893          	srli	a7,a5,0x8
1c00c30e:	0107d513          	srli	a0,a5,0x10
1c00c312:	8361                	srli	a4,a4,0x18
1c00c314:	83e1                	srli	a5,a5,0x18
1c00c316:	fec80e23          	sb	a2,-4(a6)
1c00c31a:	ffc80ea3          	sb	t3,-3(a6)
1c00c31e:	fe680f23          	sb	t1,-2(a6)
1c00c322:	fee80fa3          	sb	a4,-1(a6)
1c00c326:	00d80023          	sb	a3,0(a6)
1c00c32a:	011800a3          	sb	a7,1(a6)
1c00c32e:	00a80123          	sb	a0,2(a6)
1c00c332:	00f801a3          	sb	a5,3(a6)
1c00c336:	0821                	addi	a6,a6,8
1c00c338:	f6b415e3          	bne	s0,a1,1c00c2a2 <shake128_squeezeblocks+0x3e>
1c00c33c:	14fd                	addi	s1,s1,-1
1c00c33e:	0a890913          	addi	s2,s2,168
1c00c342:	f8b1                	bnez	s1,1c00c296 <shake128_squeezeblocks+0x32>
1c00c344:	40f2                	lw	ra,28(sp)
1c00c346:	4462                	lw	s0,24(sp)
1c00c348:	44d2                	lw	s1,20(sp)
1c00c34a:	4942                	lw	s2,16(sp)
1c00c34c:	49b2                	lw	s3,12(sp)
1c00c34e:	4a22                	lw	s4,8(sp)
1c00c350:	4a92                	lw	s5,4(sp)
1c00c352:	4b02                	lw	s6,0(sp)
1c00c354:	6105                	addi	sp,sp,32
1c00c356:	8082                	ret

1c00c358 <shake128_ctx_release>:
1c00c358:	4108                	lw	a0,0(a0)
1c00c35a:	0c800593          	li	a1,200
1c00c35e:	1770306f          	j	1c00fcd4 <pi_l2_free>

1c00c362 <shake256>:
1c00c362:	7131                	addi	sp,sp,-192
1c00c364:	db26                	sw	s1,180(sp)
1c00c366:	d74e                	sw	s3,172(sp)
1c00c368:	84aa                	mv	s1,a0
1c00c36a:	08800993          	li	s3,136
1c00c36e:	0c800513          	li	a0,200
1c00c372:	dd22                	sw	s0,184(sp)
1c00c374:	d94a                	sw	s2,176(sp)
1c00c376:	d356                	sw	s5,164(sp)
1c00c378:	df06                	sw	ra,188(sp)
1c00c37a:	d552                	sw	s4,168(sp)
1c00c37c:	d15a                	sw	s6,160(sp)
1c00c37e:	cf5e                	sw	s7,156(sp)
1c00c380:	cd62                	sw	s8,152(sp)
1c00c382:	0335d9b3          	divu	s3,a1,s3
1c00c386:	892e                	mv	s2,a1
1c00c388:	8432                	mv	s0,a2
1c00c38a:	8ab6                	mv	s5,a3
1c00c38c:	13d030ef          	jal	ra,1c00fcc8 <pi_l2_malloc>
1c00c390:	24050763          	beqz	a0,1c00c5de <shake256+0x27c>
1c00c394:	46fd                	li	a3,31
1c00c396:	8656                	mv	a2,s5
1c00c398:	85a2                	mv	a1,s0
1c00c39a:	8a2a                	mv	s4,a0
1c00c39c:	3601                	jal	1c00be9c <keccak_absorb.constprop.1>
1c00c39e:	08700793          	li	a5,135
1c00c3a2:	0d27ff63          	bgeu	a5,s2,1c00c480 <shake256+0x11e>
1c00c3a6:	00499413          	slli	s0,s3,0x4
1c00c3aa:	944e                	add	s0,s0,s3
1c00c3ac:	040e                	slli	s0,s0,0x3
1c00c3ae:	7bc1                	lui	s7,0xffff0
1c00c3b0:	ff010b37          	lui	s6,0xff010
1c00c3b4:	01000ab7          	lui	s5,0x1000
1c00c3b8:	9426                	add	s0,s0,s1
1c00c3ba:	8c26                	mv	s8,s1
1c00c3bc:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00c3c0:	1b7d                	addi	s6,s6,-1
1c00c3c2:	1afd                	addi	s5,s5,-1
1c00c3c4:	85d2                	mv	a1,s4
1c00c3c6:	8552                	mv	a0,s4
1c00c3c8:	faeff0ef          	jal	ra,1c00bb76 <KeccakF1600_StatePermute>
1c00c3cc:	87e2                	mv	a5,s8
1c00c3ce:	418a0533          	sub	a0,s4,s8
1c00c3d2:	088c0593          	addi	a1,s8,136
1c00c3d6:	00f50733          	add	a4,a0,a5
1c00c3da:	4314                	lw	a3,0(a4)
1c00c3dc:	4358                	lw	a4,4(a4)
1c00c3de:	07a1                	addi	a5,a5,8
1c00c3e0:	0086d313          	srli	t1,a3,0x8
1c00c3e4:	00875893          	srli	a7,a4,0x8
1c00c3e8:	0ff6f813          	andi	a6,a3,255
1c00c3ec:	0ff77613          	andi	a2,a4,255
1c00c3f0:	0ff37313          	andi	t1,t1,255
1c00c3f4:	0ff8f893          	andi	a7,a7,255
1c00c3f8:	0322                	slli	t1,t1,0x8
1c00c3fa:	08a2                	slli	a7,a7,0x8
1c00c3fc:	01787833          	and	a6,a6,s7
1c00c400:	01767633          	and	a2,a2,s7
1c00c404:	00686833          	or	a6,a6,t1
1c00c408:	01166633          	or	a2,a2,a7
1c00c40c:	00ff0337          	lui	t1,0xff0
1c00c410:	00ff08b7          	lui	a7,0xff0
1c00c414:	0066f333          	and	t1,a3,t1
1c00c418:	011778b3          	and	a7,a4,a7
1c00c41c:	01687833          	and	a6,a6,s6
1c00c420:	01667633          	and	a2,a2,s6
1c00c424:	00686833          	or	a6,a6,t1
1c00c428:	01166633          	or	a2,a2,a7
1c00c42c:	82e1                	srli	a3,a3,0x18
1c00c42e:	8361                	srli	a4,a4,0x18
1c00c430:	01587833          	and	a6,a6,s5
1c00c434:	01567633          	and	a2,a2,s5
1c00c438:	06e2                	slli	a3,a3,0x18
1c00c43a:	0762                	slli	a4,a4,0x18
1c00c43c:	00d866b3          	or	a3,a6,a3
1c00c440:	8f51                	or	a4,a4,a2
1c00c442:	0086de93          	srli	t4,a3,0x8
1c00c446:	0106de13          	srli	t3,a3,0x10
1c00c44a:	00875313          	srli	t1,a4,0x8
1c00c44e:	01075893          	srli	a7,a4,0x10
1c00c452:	82e1                	srli	a3,a3,0x18
1c00c454:	8361                	srli	a4,a4,0x18
1c00c456:	ff078c23          	sb	a6,-8(a5)
1c00c45a:	ffd78ca3          	sb	t4,-7(a5)
1c00c45e:	ffc78d23          	sb	t3,-6(a5)
1c00c462:	fed78da3          	sb	a3,-5(a5)
1c00c466:	fec78e23          	sb	a2,-4(a5)
1c00c46a:	fe678ea3          	sb	t1,-3(a5)
1c00c46e:	ff178f23          	sb	a7,-2(a5)
1c00c472:	fee78fa3          	sb	a4,-1(a5)
1c00c476:	f6f590e3          	bne	a1,a5,1c00c3d6 <shake256+0x74>
1c00c47a:	8c2e                	mv	s8,a1
1c00c47c:	f48594e3          	bne	a1,s0,1c00c3c4 <shake256+0x62>
1c00c480:	08800593          	li	a1,136
1c00c484:	02b97933          	remu	s2,s2,a1
1c00c488:	02091263          	bnez	s2,1c00c4ac <shake256+0x14a>
1c00c48c:	546a                	lw	s0,184(sp)
1c00c48e:	50fa                	lw	ra,188(sp)
1c00c490:	54da                	lw	s1,180(sp)
1c00c492:	594a                	lw	s2,176(sp)
1c00c494:	59ba                	lw	s3,172(sp)
1c00c496:	5a9a                	lw	s5,164(sp)
1c00c498:	5b0a                	lw	s6,160(sp)
1c00c49a:	4bfa                	lw	s7,156(sp)
1c00c49c:	4c6a                	lw	s8,152(sp)
1c00c49e:	8552                	mv	a0,s4
1c00c4a0:	5a2a                	lw	s4,168(sp)
1c00c4a2:	0c800593          	li	a1,200
1c00c4a6:	6129                	addi	sp,sp,192
1c00c4a8:	02d0306f          	j	1c00fcd4 <pi_l2_free>
1c00c4ac:	85d2                	mv	a1,s4
1c00c4ae:	8552                	mv	a0,s4
1c00c4b0:	ec6ff0ef          	jal	ra,1c00bb76 <KeccakF1600_StatePermute>
1c00c4b4:	002c                	addi	a1,sp,8
1c00c4b6:	78c1                	lui	a7,0xffff0
1c00c4b8:	ff010837          	lui	a6,0xff010
1c00c4bc:	01000537          	lui	a0,0x1000
1c00c4c0:	09010e13          	addi	t3,sp,144
1c00c4c4:	862e                	mv	a2,a1
1c00c4c6:	40ba0333          	sub	t1,s4,a1
1c00c4ca:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00c4ce:	187d                	addi	a6,a6,-1
1c00c4d0:	157d                	addi	a0,a0,-1
1c00c4d2:	00c307b3          	add	a5,t1,a2
1c00c4d6:	0007ae83          	lw	t4,0(a5)
1c00c4da:	43d4                	lw	a3,4(a5)
1c00c4dc:	0621                	addi	a2,a2,8
1c00c4de:	008edf93          	srli	t6,t4,0x8
1c00c4e2:	0086df13          	srli	t5,a3,0x8
1c00c4e6:	0ffef713          	andi	a4,t4,255
1c00c4ea:	0ff6f793          	andi	a5,a3,255
1c00c4ee:	0fffff93          	andi	t6,t6,255
1c00c4f2:	0fff7f13          	andi	t5,t5,255
1c00c4f6:	0fa2                	slli	t6,t6,0x8
1c00c4f8:	0f22                	slli	t5,t5,0x8
1c00c4fa:	01177733          	and	a4,a4,a7
1c00c4fe:	0117f7b3          	and	a5,a5,a7
1c00c502:	01f76733          	or	a4,a4,t6
1c00c506:	01e7e7b3          	or	a5,a5,t5
1c00c50a:	00ff0fb7          	lui	t6,0xff0
1c00c50e:	00ff0f37          	lui	t5,0xff0
1c00c512:	01feffb3          	and	t6,t4,t6
1c00c516:	01e6ff33          	and	t5,a3,t5
1c00c51a:	01077733          	and	a4,a4,a6
1c00c51e:	0107f7b3          	and	a5,a5,a6
1c00c522:	01f76733          	or	a4,a4,t6
1c00c526:	018ede93          	srli	t4,t4,0x18
1c00c52a:	01e7e7b3          	or	a5,a5,t5
1c00c52e:	82e1                	srli	a3,a3,0x18
1c00c530:	0ee2                	slli	t4,t4,0x18
1c00c532:	8f69                	and	a4,a4,a0
1c00c534:	06e2                	slli	a3,a3,0x18
1c00c536:	8fe9                	and	a5,a5,a0
1c00c538:	01d76733          	or	a4,a4,t4
1c00c53c:	8fd5                	or	a5,a5,a3
1c00c53e:	fee62c23          	sw	a4,-8(a2)
1c00c542:	fef62e23          	sw	a5,-4(a2)
1c00c546:	f8ce16e3          	bne	t3,a2,1c00c4d2 <shake256+0x170>
1c00c54a:	fff90793          	addi	a5,s2,-1
1c00c54e:	4709                	li	a4,2
1c00c550:	08f77363          	bgeu	a4,a5,1c00c5d6 <shake256+0x274>
1c00c554:	00499413          	slli	s0,s3,0x4
1c00c558:	013407b3          	add	a5,s0,s3
1c00c55c:	078e                	slli	a5,a5,0x3
1c00c55e:	97a6                	add	a5,a5,s1
1c00c560:	0fc97813          	andi	a6,s2,252
1c00c564:	983e                	add	a6,a6,a5
1c00c566:	4198                	lw	a4,0(a1)
1c00c568:	0791                	addi	a5,a5,4
1c00c56a:	0591                	addi	a1,a1,4
1c00c56c:	00875513          	srli	a0,a4,0x8
1c00c570:	01075613          	srli	a2,a4,0x10
1c00c574:	01875693          	srli	a3,a4,0x18
1c00c578:	fea78ea3          	sb	a0,-3(a5)
1c00c57c:	fec78f23          	sb	a2,-2(a5)
1c00c580:	fed78fa3          	sb	a3,-1(a5)
1c00c584:	fee78e23          	sb	a4,-4(a5)
1c00c588:	fcf81fe3          	bne	a6,a5,1c00c566 <shake256+0x204>
1c00c58c:	ffc97793          	andi	a5,s2,-4
1c00c590:	eef90ee3          	beq	s2,a5,1c00c48c <shake256+0x12a>
1c00c594:	0918                	addi	a4,sp,144
1c00c596:	973e                	add	a4,a4,a5
1c00c598:	99a2                	add	s3,s3,s0
1c00c59a:	f7874683          	lbu	a3,-136(a4)
1c00c59e:	098e                	slli	s3,s3,0x3
1c00c5a0:	99a6                	add	s3,s3,s1
1c00c5a2:	00f98733          	add	a4,s3,a5
1c00c5a6:	00d70023          	sb	a3,0(a4)
1c00c5aa:	00178713          	addi	a4,a5,1
1c00c5ae:	ed277fe3          	bgeu	a4,s2,1c00c48c <shake256+0x12a>
1c00c5b2:	0914                	addi	a3,sp,144
1c00c5b4:	96ba                	add	a3,a3,a4
1c00c5b6:	f786c683          	lbu	a3,-136(a3)
1c00c5ba:	974e                	add	a4,a4,s3
1c00c5bc:	0789                	addi	a5,a5,2
1c00c5be:	00d70023          	sb	a3,0(a4)
1c00c5c2:	ed27f5e3          	bgeu	a5,s2,1c00c48c <shake256+0x12a>
1c00c5c6:	0918                	addi	a4,sp,144
1c00c5c8:	973e                	add	a4,a4,a5
1c00c5ca:	f7874703          	lbu	a4,-136(a4)
1c00c5ce:	99be                	add	s3,s3,a5
1c00c5d0:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00c5d4:	bd65                	j	1c00c48c <shake256+0x12a>
1c00c5d6:	4781                	li	a5,0
1c00c5d8:	00499413          	slli	s0,s3,0x4
1c00c5dc:	bf65                	j	1c00c594 <shake256+0x232>
1c00c5de:	06f00513          	li	a0,111
1c00c5e2:	5b2020ef          	jal	ra,1c00eb94 <exit>

1c00c5e6 <sha3_256>:
1c00c5e6:	712d                	addi	sp,sp,-288
1c00c5e8:	10812c23          	sw	s0,280(sp)
1c00c5ec:	4699                	li	a3,6
1c00c5ee:	842a                	mv	s0,a0
1c00c5f0:	0828                	addi	a0,sp,24
1c00c5f2:	10112e23          	sw	ra,284(sp)
1c00c5f6:	10912a23          	sw	s1,276(sp)
1c00c5fa:	11212823          	sw	s2,272(sp)
1c00c5fe:	11312623          	sw	s3,268(sp)
1c00c602:	11412423          	sw	s4,264(sp)
1c00c606:	11512223          	sw	s5,260(sp)
1c00c60a:	11612023          	sw	s6,256(sp)
1c00c60e:	dfde                	sw	s7,252(sp)
1c00c610:	dde2                	sw	s8,248(sp)
1c00c612:	dbe6                	sw	s9,244(sp)
1c00c614:	d9ea                	sw	s10,240(sp)
1c00c616:	d7ee                	sw	s11,236(sp)
1c00c618:	3051                	jal	1c00be9c <keccak_absorb.constprop.1>
1c00c61a:	082c                	addi	a1,sp,24
1c00c61c:	852e                	mv	a0,a1
1c00c61e:	d58ff0ef          	jal	ra,1c00bb76 <KeccakF1600_StatePermute>
1c00c622:	4372                	lw	t1,28(sp)
1c00c624:	5612                	lw	a2,36(sp)
1c00c626:	5732                	lw	a4,44(sp)
1c00c628:	5582                	lw	a1,32(sp)
1c00c62a:	56a2                	lw	a3,40(sp)
1c00c62c:	59d2                	lw	s3,52(sp)
1c00c62e:	4ae2                	lw	s5,24(sp)
1c00c630:	00835293          	srli	t0,t1,0x8
1c00c634:	00865f13          	srli	t5,a2,0x8
1c00c638:	00875893          	srli	a7,a4,0x8
1c00c63c:	5a42                	lw	s4,48(sp)
1c00c63e:	0085df93          	srli	t6,a1,0x8
1c00c642:	0086de93          	srli	t4,a3,0x8
1c00c646:	0ff2f293          	andi	t0,t0,255
1c00c64a:	0fff7f13          	andi	t5,t5,255
1c00c64e:	0ff8f893          	andi	a7,a7,255
1c00c652:	0ff37b93          	andi	s7,t1,255
1c00c656:	0ff67913          	andi	s2,a2,255
1c00c65a:	0ff77e13          	andi	t3,a4,255
1c00c65e:	008ad393          	srli	t2,s5,0x8
1c00c662:	0089d513          	srli	a0,s3,0x8
1c00c666:	0fffff93          	andi	t6,t6,255
1c00c66a:	0ffefe93          	andi	t4,t4,255
1c00c66e:	02a2                	slli	t0,t0,0x8
1c00c670:	0f22                	slli	t5,t5,0x8
1c00c672:	08a2                	slli	a7,a7,0x8
1c00c674:	ff0107b7          	lui	a5,0xff010
1c00c678:	17fd                	addi	a5,a5,-1
1c00c67a:	0ff5fb13          	andi	s6,a1,255
1c00c67e:	0ff6f493          	andi	s1,a3,255
1c00c682:	005be2b3          	or	t0,s7,t0
1c00c686:	01e96f33          	or	t5,s2,t5
1c00c68a:	011e68b3          	or	a7,t3,a7
1c00c68e:	0ff3f393          	andi	t2,t2,255
1c00c692:	0fa2                	slli	t6,t6,0x8
1c00c694:	0ea2                	slli	t4,t4,0x8
1c00c696:	0ff57513          	andi	a0,a0,255
1c00c69a:	00ff0bb7          	lui	s7,0xff0
1c00c69e:	0ffafc13          	andi	s8,s5,255
1c00c6a2:	0ff9f913          	andi	s2,s3,255
1c00c6a6:	01767bb3          	and	s7,a2,s7
1c00c6aa:	00f8fe33          	and	t3,a7,a5
1c00c6ae:	008a5813          	srli	a6,s4,0x8
1c00c6b2:	01fb6fb3          	or	t6,s6,t6
1c00c6b6:	01d4eeb3          	or	t4,s1,t4
1c00c6ba:	00ff7f33          	and	t5,t5,a5
1c00c6be:	010008b7          	lui	a7,0x1000
1c00c6c2:	03a2                	slli	t2,t2,0x8
1c00c6c4:	0522                	slli	a0,a0,0x8
1c00c6c6:	00ff04b7          	lui	s1,0xff0
1c00c6ca:	00ff0b37          	lui	s6,0xff0
1c00c6ce:	8cf5                	and	s1,s1,a3
1c00c6d0:	01677b33          	and	s6,a4,s6
1c00c6d4:	00a96533          	or	a0,s2,a0
1c00c6d8:	007c63b3          	or	t2,s8,t2
1c00c6dc:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c00c6e0:	00fefeb3          	and	t4,t4,a5
1c00c6e4:	017f6f33          	or	t5,t5,s7
1c00c6e8:	0ff87813          	andi	a6,a6,255
1c00c6ec:	00ff0c37          	lui	s8,0xff0
1c00c6f0:	8261                	srli	a2,a2,0x18
1c00c6f2:	0ffa7d93          	andi	s11,s4,255
1c00c6f6:	0185fc33          	and	s8,a1,s8
1c00c6fa:	012f7f33          	and	t5,t5,s2
1c00c6fe:	00ffffb3          	and	t6,t6,a5
1c00c702:	009eeeb3          	or	t4,t4,s1
1c00c706:	016e6e33          	or	t3,t3,s6
1c00c70a:	8361                	srli	a4,a4,0x18
1c00c70c:	0822                	slli	a6,a6,0x8
1c00c70e:	00ff0d37          	lui	s10,0xff0
1c00c712:	82e1                	srli	a3,a3,0x18
1c00c714:	0662                	slli	a2,a2,0x18
1c00c716:	01aafd33          	and	s10,s5,s10
1c00c71a:	010de833          	or	a6,s11,a6
1c00c71e:	012efeb3          	and	t4,t4,s2
1c00c722:	012e7e33          	and	t3,t3,s2
1c00c726:	00cf6633          	or	a2,t5,a2
1c00c72a:	018ada93          	srli	s5,s5,0x18
1c00c72e:	018fefb3          	or	t6,t6,s8
1c00c732:	06e2                	slli	a3,a3,0x18
1c00c734:	01871c13          	slli	s8,a4,0x18
1c00c738:	00ff0bb7          	lui	s7,0xff0
1c00c73c:	00f87b33          	and	s6,a6,a5
1c00c740:	00dee4b3          	or	s1,t4,a3
1c00c744:	017a7bb3          	and	s7,s4,s7
1c00c748:	018e66b3          	or	a3,t3,s8
1c00c74c:	018a9813          	slli	a6,s5,0x18
1c00c750:	018a5713          	srli	a4,s4,0x18
1c00c754:	00865a93          	srli	s5,a2,0x8
1c00c758:	01065a13          	srli	s4,a2,0x10
1c00c75c:	00ff0cb7          	lui	s9,0xff0
1c00c760:	8261                	srli	a2,a2,0x18
1c00c762:	c232                	sw	a2,4(sp)
1c00c764:	01937cb3          	and	s9,t1,s9
1c00c768:	0086d613          	srli	a2,a3,0x8
1c00c76c:	00f3f3b3          	and	t2,t2,a5
1c00c770:	00f2f2b3          	and	t0,t0,a5
1c00c774:	c432                	sw	a2,8(sp)
1c00c776:	01a3e3b3          	or	t2,t2,s10
1c00c77a:	0106d613          	srli	a2,a3,0x10
1c00c77e:	0192e2b3          	or	t0,t0,s9
1c00c782:	01835313          	srli	t1,t1,0x18
1c00c786:	81e1                	srli	a1,a1,0x18
1c00c788:	00ff08b7          	lui	a7,0xff0
1c00c78c:	8fe9                	and	a5,a5,a0
1c00c78e:	0123f3b3          	and	t2,t2,s2
1c00c792:	0122f2b3          	and	t0,t0,s2
1c00c796:	012fffb3          	and	t6,t6,s2
1c00c79a:	c632                	sw	a2,12(sp)
1c00c79c:	0119f8b3          	and	a7,s3,a7
1c00c7a0:	4612                	lw	a2,4(sp)
1c00c7a2:	01831513          	slli	a0,t1,0x18
1c00c7a6:	05e2                	slli	a1,a1,0x18
1c00c7a8:	017b6333          	or	t1,s6,s7
1c00c7ac:	0103e833          	or	a6,t2,a6
1c00c7b0:	00a2e533          	or	a0,t0,a0
1c00c7b4:	00bfe5b3          	or	a1,t6,a1
1c00c7b8:	0117e8b3          	or	a7,a5,a7
1c00c7bc:	01237333          	and	t1,t1,s2
1c00c7c0:	0128f8b3          	and	a7,a7,s2
1c00c7c4:	00885d93          	srli	s11,a6,0x8
1c00c7c8:	01085d13          	srli	s10,a6,0x10
1c00c7cc:	00855c93          	srli	s9,a0,0x8
1c00c7d0:	01055c13          	srli	s8,a0,0x10
1c00c7d4:	0085db93          	srli	s7,a1,0x8
1c00c7d8:	0105db13          	srli	s6,a1,0x10
1c00c7dc:	0104d913          	srli	s2,s1,0x10
1c00c7e0:	0189d793          	srli	a5,s3,0x18
1c00c7e4:	8161                	srli	a0,a0,0x18
1c00c7e6:	0084d993          	srli	s3,s1,0x8
1c00c7ea:	81e1                	srli	a1,a1,0x18
1c00c7ec:	80e1                	srli	s1,s1,0x18
1c00c7ee:	01885813          	srli	a6,a6,0x18
1c00c7f2:	01b400a3          	sb	s11,1(s0)
1c00c7f6:	01a40123          	sb	s10,2(s0)
1c00c7fa:	019402a3          	sb	s9,5(s0)
1c00c7fe:	01840323          	sb	s8,6(s0)
1c00c802:	00a403a3          	sb	a0,7(s0)
1c00c806:	017404a3          	sb	s7,9(s0)
1c00c80a:	01640523          	sb	s6,10(s0)
1c00c80e:	00b405a3          	sb	a1,11(s0)
1c00c812:	015406a3          	sb	s5,13(s0)
1c00c816:	01440723          	sb	s4,14(s0)
1c00c81a:	00c407a3          	sb	a2,15(s0)
1c00c81e:	013408a3          	sb	s3,17(s0)
1c00c822:	01240923          	sb	s2,18(s0)
1c00c826:	009409a3          	sb	s1,19(s0)
1c00c82a:	00740023          	sb	t2,0(s0)
1c00c82e:	010401a3          	sb	a6,3(s0)
1c00c832:	00540223          	sb	t0,4(s0)
1c00c836:	01f40423          	sb	t6,8(s0)
1c00c83a:	01e40623          	sb	t5,12(s0)
1c00c83e:	01d40823          	sb	t4,16(s0)
1c00c842:	01c40a23          	sb	t3,20(s0)
1c00c846:	4622                	lw	a2,8(sp)
1c00c848:	0762                	slli	a4,a4,0x18
1c00c84a:	07e2                	slli	a5,a5,0x18
1c00c84c:	00c40aa3          	sb	a2,21(s0)
1c00c850:	4632                	lw	a2,12(sp)
1c00c852:	00e36733          	or	a4,t1,a4
1c00c856:	00f8e7b3          	or	a5,a7,a5
1c00c85a:	82e1                	srli	a3,a3,0x18
1c00c85c:	00c40b23          	sb	a2,22(s0)
1c00c860:	00d40ba3          	sb	a3,23(s0)
1c00c864:	00875513          	srli	a0,a4,0x8
1c00c868:	01075593          	srli	a1,a4,0x10
1c00c86c:	0087d613          	srli	a2,a5,0x8
1c00c870:	0107d693          	srli	a3,a5,0x10
1c00c874:	8361                	srli	a4,a4,0x18
1c00c876:	83e1                	srli	a5,a5,0x18
1c00c878:	00640c23          	sb	t1,24(s0)
1c00c87c:	00a40ca3          	sb	a0,25(s0)
1c00c880:	00b40d23          	sb	a1,26(s0)
1c00c884:	00e40da3          	sb	a4,27(s0)
1c00c888:	01140e23          	sb	a7,28(s0)
1c00c88c:	00c40ea3          	sb	a2,29(s0)
1c00c890:	00d40f23          	sb	a3,30(s0)
1c00c894:	00f40fa3          	sb	a5,31(s0)
1c00c898:	11c12083          	lw	ra,284(sp)
1c00c89c:	11812403          	lw	s0,280(sp)
1c00c8a0:	11412483          	lw	s1,276(sp)
1c00c8a4:	11012903          	lw	s2,272(sp)
1c00c8a8:	10c12983          	lw	s3,268(sp)
1c00c8ac:	10812a03          	lw	s4,264(sp)
1c00c8b0:	10412a83          	lw	s5,260(sp)
1c00c8b4:	10012b03          	lw	s6,256(sp)
1c00c8b8:	5bfe                	lw	s7,252(sp)
1c00c8ba:	5c6e                	lw	s8,248(sp)
1c00c8bc:	5cde                	lw	s9,244(sp)
1c00c8be:	5d4e                	lw	s10,240(sp)
1c00c8c0:	5dbe                	lw	s11,236(sp)
1c00c8c2:	6115                	addi	sp,sp,288
1c00c8c4:	8082                	ret

1c00c8c6 <sha3_512>:
1c00c8c6:	7105                	addi	sp,sp,-480
1c00c8c8:	1c812c23          	sw	s0,472(sp)
1c00c8cc:	1d312623          	sw	s3,460(sp)
1c00c8d0:	1d412423          	sw	s4,456(sp)
1c00c8d4:	1c112e23          	sw	ra,476(sp)
1c00c8d8:	1c912a23          	sw	s1,468(sp)
1c00c8dc:	1d212823          	sw	s2,464(sp)
1c00c8e0:	1d512223          	sw	s5,452(sp)
1c00c8e4:	1d612023          	sw	s6,448(sp)
1c00c8e8:	1b712e23          	sw	s7,444(sp)
1c00c8ec:	1b812c23          	sw	s8,440(sp)
1c00c8f0:	1b912a23          	sw	s9,436(sp)
1c00c8f4:	1ba12823          	sw	s10,432(sp)
1c00c8f8:	1bb12623          	sw	s11,428(sp)
1c00c8fc:	842a                	mv	s0,a0
1c00c8fe:	8a32                	mv	s4,a2
1c00c900:	0d810993          	addi	s3,sp,216
1c00c904:	081c                	addi	a5,sp,16
1c00c906:	4681                	li	a3,0
1c00c908:	4701                	li	a4,0
1c00c90a:	c394                	sw	a3,0(a5)
1c00c90c:	c3d8                	sw	a4,4(a5)
1c00c90e:	07a1                	addi	a5,a5,8
1c00c910:	ff379be3          	bne	a5,s3,1c00c906 <sha3_512+0x40>
1c00c914:	04700793          	li	a5,71
1c00c918:	0947f463          	bgeu	a5,s4,1c00c9a0 <sha3_512+0xda>
1c00c91c:	04858a93          	addi	s5,a1,72
1c00c920:	8956                	mv	s2,s5
1c00c922:	04700493          	li	s1,71
1c00c926:	0818                	addi	a4,sp,16
1c00c928:	0015c783          	lbu	a5,1(a1)
1c00c92c:	0025ce03          	lbu	t3,2(a1)
1c00c930:	0055c803          	lbu	a6,5(a1)
1c00c934:	0045cf03          	lbu	t5,4(a1)
1c00c938:	0065c503          	lbu	a0,6(a1)
1c00c93c:	0005ce83          	lbu	t4,0(a1)
1c00c940:	0035c603          	lbu	a2,3(a1)
1c00c944:	0075c683          	lbu	a3,7(a1)
1c00c948:	07a2                	slli	a5,a5,0x8
1c00c94a:	0e42                	slli	t3,t3,0x10
1c00c94c:	0822                	slli	a6,a6,0x8
1c00c94e:	00072303          	lw	t1,0(a4)
1c00c952:	00472883          	lw	a7,4(a4)
1c00c956:	01c7e7b3          	or	a5,a5,t3
1c00c95a:	01e86833          	or	a6,a6,t5
1c00c95e:	0542                	slli	a0,a0,0x10
1c00c960:	01d7e7b3          	or	a5,a5,t4
1c00c964:	0662                	slli	a2,a2,0x18
1c00c966:	01056533          	or	a0,a0,a6
1c00c96a:	06e2                	slli	a3,a3,0x18
1c00c96c:	8fd1                	or	a5,a5,a2
1c00c96e:	8ec9                	or	a3,a3,a0
1c00c970:	00f347b3          	xor	a5,t1,a5
1c00c974:	00d8c6b3          	xor	a3,a7,a3
1c00c978:	c31c                	sw	a5,0(a4)
1c00c97a:	c354                	sw	a3,4(a4)
1c00c97c:	05a1                	addi	a1,a1,8
1c00c97e:	0721                	addi	a4,a4,8
1c00c980:	fb2594e3          	bne	a1,s2,1c00c928 <sha3_512+0x62>
1c00c984:	080c                	addi	a1,sp,16
1c00c986:	852e                	mv	a0,a1
1c00c988:	9eeff0ef          	jal	ra,1c00bb76 <KeccakF1600_StatePermute>
1c00c98c:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c00c990:	04890913          	addi	s2,s2,72
1c00c994:	85d6                	mv	a1,s5
1c00c996:	0144f563          	bgeu	s1,s4,1c00c9a0 <sha3_512+0xda>
1c00c99a:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c00c99e:	b761                	j	1c00c926 <sha3_512+0x60>
1c00c9a0:	1218                	addi	a4,sp,288
1c00c9a2:	87ce                	mv	a5,s3
1c00c9a4:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c00c9a8:	0791                	addi	a5,a5,4
1c00c9aa:	fee79de3          	bne	a5,a4,1c00c9a4 <sha3_512+0xde>
1c00c9ae:	080a0063          	beqz	s4,1c00ca2e <sha3_512+0x168>
1c00c9b2:	fffa0793          	addi	a5,s4,-1
1c00c9b6:	4709                	li	a4,2
1c00c9b8:	68f77563          	bgeu	a4,a5,1c00d042 <sha3_512+0x77c>
1c00c9bc:	ffca7813          	andi	a6,s4,-4
1c00c9c0:	87ae                	mv	a5,a1
1c00c9c2:	982e                	add	a6,a6,a1
1c00c9c4:	0017c603          	lbu	a2,1(a5)
1c00c9c8:	0007c503          	lbu	a0,0(a5)
1c00c9cc:	0027c683          	lbu	a3,2(a5)
1c00c9d0:	0037c703          	lbu	a4,3(a5)
1c00c9d4:	0622                	slli	a2,a2,0x8
1c00c9d6:	8e49                	or	a2,a2,a0
1c00c9d8:	06c2                	slli	a3,a3,0x10
1c00c9da:	8ed1                	or	a3,a3,a2
1c00c9dc:	0762                	slli	a4,a4,0x18
1c00c9de:	8f55                	or	a4,a4,a3
1c00c9e0:	00e9a023          	sw	a4,0(s3)
1c00c9e4:	0791                	addi	a5,a5,4
1c00c9e6:	0991                	addi	s3,s3,4
1c00c9e8:	fd079ee3          	bne	a5,a6,1c00c9c4 <sha3_512+0xfe>
1c00c9ec:	ffca7793          	andi	a5,s4,-4
1c00c9f0:	03478f63          	beq	a5,s4,1c00ca2e <sha3_512+0x168>
1c00c9f4:	00f58733          	add	a4,a1,a5
1c00c9f8:	00074603          	lbu	a2,0(a4)
1c00c9fc:	1314                	addi	a3,sp,416
1c00c9fe:	96be                	add	a3,a3,a5
1c00ca00:	00178713          	addi	a4,a5,1
1c00ca04:	f2c68c23          	sb	a2,-200(a3)
1c00ca08:	03477363          	bgeu	a4,s4,1c00ca2e <sha3_512+0x168>
1c00ca0c:	00e586b3          	add	a3,a1,a4
1c00ca10:	0006c683          	lbu	a3,0(a3)
1c00ca14:	1310                	addi	a2,sp,416
1c00ca16:	9732                	add	a4,a4,a2
1c00ca18:	0789                	addi	a5,a5,2
1c00ca1a:	f2d70c23          	sb	a3,-200(a4)
1c00ca1e:	0147f863          	bgeu	a5,s4,1c00ca2e <sha3_512+0x168>
1c00ca22:	95be                	add	a1,a1,a5
1c00ca24:	0005c703          	lbu	a4,0(a1)
1c00ca28:	97b2                	add	a5,a5,a2
1c00ca2a:	f2e78c23          	sb	a4,-200(a5)
1c00ca2e:	131c                	addi	a5,sp,416
1c00ca30:	9a3e                	add	s4,s4,a5
1c00ca32:	4799                	li	a5,6
1c00ca34:	f2fa0c23          	sb	a5,-200(s4)
1c00ca38:	0da14703          	lbu	a4,218(sp)
1c00ca3c:	0d914f83          	lbu	t6,217(sp)
1c00ca40:	0e214783          	lbu	a5,226(sp)
1c00ca44:	0e114e83          	lbu	t4,225(sp)
1c00ca48:	0e514303          	lbu	t1,229(sp)
1c00ca4c:	0e414383          	lbu	t2,228(sp)
1c00ca50:	0e614803          	lbu	a6,230(sp)
1c00ca54:	0d814283          	lbu	t0,216(sp)
1c00ca58:	0e014f03          	lbu	t5,224(sp)
1c00ca5c:	0db14503          	lbu	a0,219(sp)
1c00ca60:	0e314603          	lbu	a2,227(sp)
1c00ca64:	0e714683          	lbu	a3,231(sp)
1c00ca68:	0fa2                	slli	t6,t6,0x8
1c00ca6a:	0ea2                	slli	t4,t4,0x8
1c00ca6c:	0742                	slli	a4,a4,0x10
1c00ca6e:	07c2                	slli	a5,a5,0x10
1c00ca70:	0322                	slli	t1,t1,0x8
1c00ca72:	00736333          	or	t1,t1,t2
1c00ca76:	01f76733          	or	a4,a4,t6
1c00ca7a:	01d7e7b3          	or	a5,a5,t4
1c00ca7e:	0842                	slli	a6,a6,0x10
1c00ca80:	0dd14e03          	lbu	t3,221(sp)
1c00ca84:	00576733          	or	a4,a4,t0
1c00ca88:	01e7e7b3          	or	a5,a5,t5
1c00ca8c:	00686833          	or	a6,a6,t1
1c00ca90:	0662                	slli	a2,a2,0x18
1c00ca92:	06e2                	slli	a3,a3,0x18
1c00ca94:	0562                	slli	a0,a0,0x18
1c00ca96:	0dc14483          	lbu	s1,220(sp)
1c00ca9a:	0de14883          	lbu	a7,222(sp)
1c00ca9e:	8d59                	or	a0,a0,a4
1c00caa0:	00f66733          	or	a4,a2,a5
1c00caa4:	0106e7b3          	or	a5,a3,a6
1c00caa8:	46c2                	lw	a3,16(sp)
1c00caaa:	0df14583          	lbu	a1,223(sp)
1c00caae:	0e22                	slli	t3,t3,0x8
1c00cab0:	009e6e33          	or	t3,t3,s1
1c00cab4:	8d35                	xor	a0,a0,a3
1c00cab6:	08c2                	slli	a7,a7,0x10
1c00cab8:	46d2                	lw	a3,20(sp)
1c00caba:	01c8e8b3          	or	a7,a7,t3
1c00cabe:	05e2                	slli	a1,a1,0x18
1c00cac0:	0115e5b3          	or	a1,a1,a7
1c00cac4:	8db5                	xor	a1,a1,a3
1c00cac6:	46e2                	lw	a3,24(sp)
1c00cac8:	0ea14803          	lbu	a6,234(sp)
1c00cacc:	0e914483          	lbu	s1,233(sp)
1c00cad0:	8eb9                	xor	a3,a3,a4
1c00cad2:	4772                	lw	a4,28(sp)
1c00cad4:	0e814a83          	lbu	s5,232(sp)
1c00cad8:	0eb14a03          	lbu	s4,235(sp)
1c00cadc:	8f3d                	xor	a4,a4,a5
1c00cade:	0ec14d03          	lbu	s10,236(sp)
1c00cae2:	11f14783          	lbu	a5,287(sp)
1c00cae6:	0ed14903          	lbu	s2,237(sp)
1c00caea:	c82a                	sw	a0,16(sp)
1c00caec:	ca2e                	sw	a1,20(sp)
1c00caee:	cc36                	sw	a3,24(sp)
1c00caf0:	ce3a                	sw	a4,28(sp)
1c00caf2:	0ee14f83          	lbu	t6,238(sp)
1c00caf6:	0f214283          	lbu	t0,242(sp)
1c00cafa:	0f114f03          	lbu	t5,241(sp)
1c00cafe:	0fd14883          	lbu	a7,253(sp)
1c00cb02:	0fc14b83          	lbu	s7,252(sp)
1c00cb06:	04a2                	slli	s1,s1,0x8
1c00cb08:	0842                	slli	a6,a6,0x10
1c00cb0a:	02c2                	slli	t0,t0,0x10
1c00cb0c:	08a2                	slli	a7,a7,0x8
1c00cb0e:	00986833          	or	a6,a6,s1
1c00cb12:	0f22                	slli	t5,t5,0x8
1c00cb14:	01e2ef33          	or	t5,t0,t5
1c00cb18:	01586833          	or	a6,a6,s5
1c00cb1c:	0178e2b3          	or	t0,a7,s7
1c00cb20:	018a1893          	slli	a7,s4,0x18
1c00cb24:	0108e833          	or	a6,a7,a6
1c00cb28:	5882                	lw	a7,32(sp)
1c00cb2a:	0ef14503          	lbu	a0,239(sp)
1c00cb2e:	0922                	slli	s2,s2,0x8
1c00cb30:	01a96933          	or	s2,s2,s10
1c00cb34:	0108c8b3          	xor	a7,a7,a6
1c00cb38:	0fc2                	slli	t6,t6,0x10
1c00cb3a:	5812                	lw	a6,36(sp)
1c00cb3c:	0f014983          	lbu	s3,240(sp)
1c00cb40:	0f314583          	lbu	a1,243(sp)
1c00cb44:	012fefb3          	or	t6,t6,s2
1c00cb48:	0562                	slli	a0,a0,0x18
1c00cb4a:	0f514e83          	lbu	t4,245(sp)
1c00cb4e:	01f56533          	or	a0,a0,t6
1c00cb52:	0f414c83          	lbu	s9,244(sp)
1c00cb56:	0f614c03          	lbu	s8,246(sp)
1c00cb5a:	00a84833          	xor	a6,a6,a0
1c00cb5e:	5522                	lw	a0,40(sp)
1c00cb60:	0f714603          	lbu	a2,247(sp)
1c00cb64:	013f6f33          	or	t5,t5,s3
1c00cb68:	05e2                	slli	a1,a1,0x18
1c00cb6a:	0f914e03          	lbu	t3,249(sp)
1c00cb6e:	0fa14303          	lbu	t1,250(sp)
1c00cb72:	01e5e5b3          	or	a1,a1,t5
1c00cb76:	0ea2                	slli	t4,t4,0x8
1c00cb78:	019ee4b3          	or	s1,t4,s9
1c00cb7c:	8d2d                	xor	a0,a0,a1
1c00cb7e:	010c1e93          	slli	t4,s8,0x10
1c00cb82:	55b2                	lw	a1,44(sp)
1c00cb84:	0f814383          	lbu	t2,248(sp)
1c00cb88:	0fb14683          	lbu	a3,251(sp)
1c00cb8c:	009eeeb3          	or	t4,t4,s1
1c00cb90:	0662                	slli	a2,a2,0x18
1c00cb92:	01d66633          	or	a2,a2,t4
1c00cb96:	0342                	slli	t1,t1,0x10
1c00cb98:	0e22                	slli	t3,t3,0x8
1c00cb9a:	0fe14b03          	lbu	s6,254(sp)
1c00cb9e:	8db1                	xor	a1,a1,a2
1c00cba0:	006e6e33          	or	t3,t3,t1
1c00cba4:	5642                	lw	a2,48(sp)
1c00cba6:	0ff14703          	lbu	a4,255(sp)
1c00cbaa:	007e6e33          	or	t3,t3,t2
1c00cbae:	06e2                	slli	a3,a3,0x18
1c00cbb0:	01c6e6b3          	or	a3,a3,t3
1c00cbb4:	8e35                	xor	a2,a2,a3
1c00cbb6:	010b1313          	slli	t1,s6,0x10
1c00cbba:	56d2                	lw	a3,52(sp)
1c00cbbc:	00536333          	or	t1,t1,t0
1c00cbc0:	0762                	slli	a4,a4,0x18
1c00cbc2:	00676733          	or	a4,a4,t1
1c00cbc6:	8f35                	xor	a4,a4,a3
1c00cbc8:	10114e83          	lbu	t4,257(sp)
1c00cbcc:	10214a83          	lbu	s5,258(sp)
1c00cbd0:	d046                	sw	a7,32(sp)
1c00cbd2:	d242                	sw	a6,36(sp)
1c00cbd4:	d42a                	sw	a0,40(sp)
1c00cbd6:	d62e                	sw	a1,44(sp)
1c00cbd8:	d832                	sw	a2,48(sp)
1c00cbda:	da3a                	sw	a4,52(sp)
1c00cbdc:	10014903          	lbu	s2,256(sp)
1c00cbe0:	10914303          	lbu	t1,265(sp)
1c00cbe4:	10a14983          	lbu	s3,266(sp)
1c00cbe8:	10814383          	lbu	t2,264(sp)
1c00cbec:	10514f83          	lbu	t6,261(sp)
1c00cbf0:	10b14603          	lbu	a2,267(sp)
1c00cbf4:	10414b03          	lbu	s6,260(sp)
1c00cbf8:	10614e03          	lbu	t3,262(sp)
1c00cbfc:	09c2                	slli	s3,s3,0x10
1c00cbfe:	0322                	slli	t1,t1,0x8
1c00cc00:	10714583          	lbu	a1,263(sp)
1c00cc04:	01336333          	or	t1,t1,s3
1c00cc08:	00736333          	or	t1,t1,t2
1c00cc0c:	10d14f03          	lbu	t5,269(sp)
1c00cc10:	0fa2                	slli	t6,t6,0x8
1c00cc12:	0662                	slli	a2,a2,0x18
1c00cc14:	10c14a03          	lbu	s4,268(sp)
1c00cc18:	016fefb3          	or	t6,t6,s6
1c00cc1c:	11114803          	lbu	a6,273(sp)
1c00cc20:	11214483          	lbu	s1,274(sp)
1c00cc24:	10e14883          	lbu	a7,270(sp)
1c00cc28:	00666633          	or	a2,a2,t1
1c00cc2c:	0e42                	slli	t3,t3,0x10
1c00cc2e:	5372                	lw	t1,60(sp)
1c00cc30:	01fe6e33          	or	t3,t3,t6
1c00cc34:	10f14683          	lbu	a3,271(sp)
1c00cc38:	05e2                	slli	a1,a1,0x18
1c00cc3a:	11014283          	lbu	t0,272(sp)
1c00cc3e:	11314703          	lbu	a4,275(sp)
1c00cc42:	01c5e5b3          	or	a1,a1,t3
1c00cc46:	0f22                	slli	t5,t5,0x8
1c00cc48:	014f6f33          	or	t5,t5,s4
1c00cc4c:	00b34333          	xor	t1,t1,a1
1c00cc50:	04c2                	slli	s1,s1,0x10
1c00cc52:	4596                	lw	a1,68(sp)
1c00cc54:	0822                	slli	a6,a6,0x8
1c00cc56:	08c2                	slli	a7,a7,0x10
1c00cc58:	10314503          	lbu	a0,259(sp)
1c00cc5c:	01e8e8b3          	or	a7,a7,t5
1c00cc60:	00986833          	or	a6,a6,s1
1c00cc64:	06e2                	slli	a3,a3,0x18
1c00cc66:	00586833          	or	a6,a6,t0
1c00cc6a:	0116e6b3          	or	a3,a3,a7
1c00cc6e:	0ac2                	slli	s5,s5,0x10
1c00cc70:	0ea2                	slli	t4,t4,0x8
1c00cc72:	0762                	slli	a4,a4,0x18
1c00cc74:	5e62                	lw	t3,56(sp)
1c00cc76:	8db5                	xor	a1,a1,a3
1c00cc78:	015eeeb3          	or	t4,t4,s5
1c00cc7c:	46a6                	lw	a3,72(sp)
1c00cc7e:	01076733          	or	a4,a4,a6
1c00cc82:	4806                	lw	a6,64(sp)
1c00cc84:	012eeeb3          	or	t4,t4,s2
1c00cc88:	0562                	slli	a0,a0,0x18
1c00cc8a:	01d56533          	or	a0,a0,t4
1c00cc8e:	00ae4e33          	xor	t3,t3,a0
1c00cc92:	00c84833          	xor	a6,a6,a2
1c00cc96:	8f35                	xor	a4,a4,a3
1c00cc98:	11414f03          	lbu	t5,276(sp)
1c00cc9c:	11514883          	lbu	a7,277(sp)
1c00cca0:	11614503          	lbu	a0,278(sp)
1c00cca4:	11714603          	lbu	a2,279(sp)
1c00cca8:	dc72                	sw	t3,56(sp)
1c00ccaa:	de1a                	sw	t1,60(sp)
1c00ccac:	c0c2                	sw	a6,64(sp)
1c00ccae:	c2ae                	sw	a1,68(sp)
1c00ccb0:	c4ba                	sw	a4,72(sp)
1c00ccb2:	11914703          	lbu	a4,281(sp)
1c00ccb6:	11a14303          	lbu	t1,282(sp)
1c00ccba:	11814e03          	lbu	t3,280(sp)
1c00ccbe:	11b14683          	lbu	a3,283(sp)
1c00ccc2:	0342                	slli	t1,t1,0x10
1c00ccc4:	0722                	slli	a4,a4,0x8
1c00ccc6:	00676733          	or	a4,a4,t1
1c00ccca:	01c76733          	or	a4,a4,t3
1c00ccce:	06e2                	slli	a3,a3,0x18
1c00ccd0:	08a2                	slli	a7,a7,0x8
1c00ccd2:	01e8e8b3          	or	a7,a7,t5
1c00ccd6:	8f55                	or	a4,a4,a3
1c00ccd8:	0542                	slli	a0,a0,0x10
1c00ccda:	46b6                	lw	a3,76(sp)
1c00ccdc:	01156533          	or	a0,a0,a7
1c00cce0:	0662                	slli	a2,a2,0x18
1c00cce2:	11d14803          	lbu	a6,285(sp)
1c00cce6:	8e49                	or	a2,a2,a0
1c00cce8:	11c14e83          	lbu	t4,284(sp)
1c00ccec:	8e35                	xor	a2,a2,a3
1c00ccee:	11e14583          	lbu	a1,286(sp)
1c00ccf2:	46c6                	lw	a3,80(sp)
1c00ccf4:	0822                	slli	a6,a6,0x8
1c00ccf6:	01d86833          	or	a6,a6,t4
1c00ccfa:	8eb9                	xor	a3,a3,a4
1c00ccfc:	0807e793          	ori	a5,a5,128
1c00cd00:	4756                	lw	a4,84(sp)
1c00cd02:	05c2                	slli	a1,a1,0x10
1c00cd04:	0105e5b3          	or	a1,a1,a6
1c00cd08:	07e2                	slli	a5,a5,0x18
1c00cd0a:	8fcd                	or	a5,a5,a1
1c00cd0c:	080c                	addi	a1,sp,16
1c00cd0e:	8fb9                	xor	a5,a5,a4
1c00cd10:	852e                	mv	a0,a1
1c00cd12:	c6b2                	sw	a2,76(sp)
1c00cd14:	c8b6                	sw	a3,80(sp)
1c00cd16:	cabe                	sw	a5,84(sp)
1c00cd18:	e5ffe0ef          	jal	ra,1c00bb76 <KeccakF1600_StatePermute>
1c00cd1c:	4552                	lw	a0,20(sp)
1c00cd1e:	45f2                	lw	a1,28(sp)
1c00cd20:	5612                	lw	a2,36(sp)
1c00cd22:	56b2                	lw	a3,44(sp)
1c00cd24:	57d2                	lw	a5,52(sp)
1c00cd26:	5772                	lw	a4,60(sp)
1c00cd28:	00855b13          	srli	s6,a0,0x8
1c00cd2c:	01055a93          	srli	s5,a0,0x10
1c00cd30:	01855a13          	srli	s4,a0,0x18
1c00cd34:	0085d993          	srli	s3,a1,0x8
1c00cd38:	0105d913          	srli	s2,a1,0x10
1c00cd3c:	0185d493          	srli	s1,a1,0x18
1c00cd40:	0ca10e23          	sb	a0,220(sp)
1c00cd44:	0d610ea3          	sb	s6,221(sp)
1c00cd48:	0d510f23          	sb	s5,222(sp)
1c00cd4c:	0d410fa3          	sb	s4,223(sp)
1c00cd50:	00865393          	srli	t2,a2,0x8
1c00cd54:	01065293          	srli	t0,a2,0x10
1c00cd58:	01865f93          	srli	t6,a2,0x18
1c00cd5c:	0086df13          	srli	t5,a3,0x8
1c00cd60:	0106de93          	srli	t4,a3,0x10
1c00cd64:	0186de13          	srli	t3,a3,0x18
1c00cd68:	0087d313          	srli	t1,a5,0x8
1c00cd6c:	0107d893          	srli	a7,a5,0x10
1c00cd70:	0187d813          	srli	a6,a5,0x18
1c00cd74:	0eb10223          	sb	a1,228(sp)
1c00cd78:	0f3102a3          	sb	s3,229(sp)
1c00cd7c:	0f210323          	sb	s2,230(sp)
1c00cd80:	0e9103a3          	sb	s1,231(sp)
1c00cd84:	45c2                	lw	a1,16(sp)
1c00cd86:	4536                	lw	a0,76(sp)
1c00cd88:	0ec10623          	sb	a2,236(sp)
1c00cd8c:	0e7106a3          	sb	t2,237(sp)
1c00cd90:	467e                	lw	a2,220(sp)
1c00cd92:	0e510723          	sb	t0,238(sp)
1c00cd96:	0ff107a3          	sb	t6,239(sp)
1c00cd9a:	0ed10a23          	sb	a3,244(sp)
1c00cd9e:	0fe10aa3          	sb	t5,245(sp)
1c00cda2:	46e2                	lw	a3,24(sp)
1c00cda4:	0fd10b23          	sb	t4,246(sp)
1c00cda8:	0fc10ba3          	sb	t3,247(sp)
1c00cdac:	0e610ea3          	sb	t1,253(sp)
1c00cdb0:	0f110f23          	sb	a7,254(sp)
1c00cdb4:	0f010fa3          	sb	a6,255(sp)
1c00cdb8:	10e10223          	sb	a4,260(sp)
1c00cdbc:	4816                	lw	a6,68(sp)
1c00cdbe:	0ef10e23          	sb	a5,252(sp)
1c00cdc2:	579e                	lw	a5,228(sp)
1c00cdc4:	00875d93          	srli	s11,a4,0x8
1c00cdc8:	01075d13          	srli	s10,a4,0x10
1c00cdcc:	00885c93          	srli	s9,a6,0x8
1c00cdd0:	01085c13          	srli	s8,a6,0x10
1c00cdd4:	01885b93          	srli	s7,a6,0x18
1c00cdd8:	00855b13          	srli	s6,a0,0x8
1c00cddc:	01055a93          	srli	s5,a0,0x10
1c00cde0:	01855a13          	srli	s4,a0,0x18
1c00cde4:	0085d993          	srli	s3,a1,0x8
1c00cde8:	0105d913          	srli	s2,a1,0x10
1c00cdec:	0185d493          	srli	s1,a1,0x18
1c00cdf0:	00865393          	srli	t2,a2,0x8
1c00cdf4:	01065293          	srli	t0,a2,0x10
1c00cdf8:	01865f93          	srli	t6,a2,0x18
1c00cdfc:	0086df13          	srli	t5,a3,0x8
1c00ce00:	0106de93          	srli	t4,a3,0x10
1c00ce04:	0186de13          	srli	t3,a3,0x18
1c00ce08:	0087d313          	srli	t1,a5,0x8
1c00ce0c:	0107d893          	srli	a7,a5,0x10
1c00ce10:	00f40623          	sb	a5,12(s0)
1c00ce14:	8361                	srli	a4,a4,0x18
1c00ce16:	83e1                	srli	a5,a5,0x18
1c00ce18:	11b102a3          	sb	s11,261(sp)
1c00ce1c:	11a10323          	sb	s10,262(sp)
1c00ce20:	10e103a3          	sb	a4,263(sp)
1c00ce24:	11010623          	sb	a6,268(sp)
1c00ce28:	4706                	lw	a4,64(sp)
1c00ce2a:	119106a3          	sb	s9,269(sp)
1c00ce2e:	11810723          	sb	s8,270(sp)
1c00ce32:	117107a3          	sb	s7,271(sp)
1c00ce36:	10a10a23          	sb	a0,276(sp)
1c00ce3a:	11610aa3          	sb	s6,277(sp)
1c00ce3e:	11510b23          	sb	s5,278(sp)
1c00ce42:	11410ba3          	sb	s4,279(sp)
1c00ce46:	00b40023          	sb	a1,0(s0)
1c00ce4a:	4a26                	lw	s4,72(sp)
1c00ce4c:	55be                	lw	a1,236(sp)
1c00ce4e:	013400a3          	sb	s3,1(s0)
1c00ce52:	01240123          	sb	s2,2(s0)
1c00ce56:	009401a3          	sb	s1,3(s0)
1c00ce5a:	00c40223          	sb	a2,4(s0)
1c00ce5e:	007402a3          	sb	t2,5(s0)
1c00ce62:	565e                	lw	a2,244(sp)
1c00ce64:	00540323          	sb	t0,6(s0)
1c00ce68:	01f403a3          	sb	t6,7(s0)
1c00ce6c:	01e404a3          	sb	t5,9(s0)
1c00ce70:	01d40523          	sb	t4,10(s0)
1c00ce74:	01c405a3          	sb	t3,11(s0)
1c00ce78:	006406a3          	sb	t1,13(s0)
1c00ce7c:	01140723          	sb	a7,14(s0)
1c00ce80:	00f407a3          	sb	a5,15(s0)
1c00ce84:	00d40423          	sb	a3,8(s0)
1c00ce88:	56fe                	lw	a3,252(sp)
1c00ce8a:	5502                	lw	a0,32(sp)
1c00ce8c:	54a2                	lw	s1,40(sp)
1c00ce8e:	0185db13          	srli	s6,a1,0x18
1c00ce92:	00855d93          	srli	s11,a0,0x8
1c00ce96:	01055d13          	srli	s10,a0,0x10
1c00ce9a:	01855c93          	srli	s9,a0,0x18
1c00ce9e:	5522                	lw	a0,40(sp)
1c00cea0:	5842                	lw	a6,48(sp)
1c00cea2:	0085dc13          	srli	s8,a1,0x8
1c00cea6:	00855a93          	srli	s5,a0,0x8
1c00ceaa:	8141                	srli	a0,a0,0x10
1c00ceac:	c42a                	sw	a0,8(sp)
1c00ceae:	5562                	lw	a0,56(sp)
1c00ceb0:	0105db93          	srli	s7,a1,0x10
1c00ceb4:	00b40a23          	sb	a1,20(s0)
1c00ceb8:	8161                	srli	a0,a0,0x18
1c00ceba:	c22a                	sw	a0,4(sp)
1c00cebc:	5502                	lw	a0,32(sp)
1c00cebe:	45a2                	lw	a1,8(sp)
1c00cec0:	01640ba3          	sb	s6,23(s0)
1c00cec4:	c62a                	sw	a0,12(sp)
1c00cec6:	00c14503          	lbu	a0,12(sp)
1c00ceca:	5b22                	lw	s6,40(sp)
1c00cecc:	0184d993          	srli	s3,s1,0x18
1c00ced0:	00865913          	srli	s2,a2,0x8
1c00ced4:	01065493          	srli	s1,a2,0x10
1c00ced8:	01865393          	srli	t2,a2,0x18
1c00cedc:	00a10623          	sb	a0,12(sp)
1c00cee0:	0ff57513          	andi	a0,a0,255
1c00cee4:	10412783          	lw	a5,260(sp)
1c00cee8:	00885293          	srli	t0,a6,0x8
1c00ceec:	01085f93          	srli	t6,a6,0x10
1c00cef0:	01885f13          	srli	t5,a6,0x18
1c00cef4:	0086de93          	srli	t4,a3,0x8
1c00cef8:	5862                	lw	a6,56(sp)
1c00cefa:	0106de13          	srli	t3,a3,0x10
1c00cefe:	0186d313          	srli	t1,a3,0x18
1c00cf02:	00a40823          	sb	a0,16(s0)
1c00cf06:	01b408a3          	sb	s11,17(s0)
1c00cf0a:	01a40923          	sb	s10,18(s0)
1c00cf0e:	019409a3          	sb	s9,19(s0)
1c00cf12:	01840aa3          	sb	s8,21(s0)
1c00cf16:	01740b23          	sb	s7,22(s0)
1c00cf1a:	01640c23          	sb	s6,24(s0)
1c00cf1e:	01540ca3          	sb	s5,25(s0)
1c00cf22:	00b40d23          	sb	a1,26(s0)
1c00cf26:	01340da3          	sb	s3,27(s0)
1c00cf2a:	01240ea3          	sb	s2,29(s0)
1c00cf2e:	00940f23          	sb	s1,30(s0)
1c00cf32:	00740fa3          	sb	t2,31(s0)
1c00cf36:	00c40e23          	sb	a2,28(s0)
1c00cf3a:	5642                	lw	a2,48(sp)
1c00cf3c:	02d40223          	sb	a3,36(s0)
1c00cf40:	56e2                	lw	a3,56(sp)
1c00cf42:	02c40023          	sb	a2,32(s0)
1c00cf46:	10c12603          	lw	a2,268(sp)
1c00cf4a:	02d40423          	sb	a3,40(s0)
1c00cf4e:	4692                	lw	a3,4(sp)
1c00cf50:	00885893          	srli	a7,a6,0x8
1c00cf54:	025400a3          	sb	t0,33(s0)
1c00cf58:	02d405a3          	sb	a3,43(s0)
1c00cf5c:	11412683          	lw	a3,276(sp)
1c00cf60:	03f40123          	sb	t6,34(s0)
1c00cf64:	03e401a3          	sb	t5,35(s0)
1c00cf68:	03d402a3          	sb	t4,37(s0)
1c00cf6c:	03c40323          	sb	t3,38(s0)
1c00cf70:	026403a3          	sb	t1,39(s0)
1c00cf74:	02f40623          	sb	a5,44(s0)
1c00cf78:	0087d993          	srli	s3,a5,0x8
1c00cf7c:	0107d913          	srli	s2,a5,0x10
1c00cf80:	01085813          	srli	a6,a6,0x10
1c00cf84:	00875493          	srli	s1,a4,0x8
1c00cf88:	008a5e13          	srli	t3,s4,0x8
1c00cf8c:	010a5313          	srli	t1,s4,0x10
1c00cf90:	83e1                	srli	a5,a5,0x18
1c00cf92:	01075393          	srli	t2,a4,0x10
1c00cf96:	01875293          	srli	t0,a4,0x18
1c00cf9a:	00865f93          	srli	t6,a2,0x8
1c00cf9e:	01065f13          	srli	t5,a2,0x10
1c00cfa2:	01865e93          	srli	t4,a2,0x18
1c00cfa6:	031404a3          	sb	a7,41(s0)
1c00cfaa:	03040523          	sb	a6,42(s0)
1c00cfae:	033406a3          	sb	s3,45(s0)
1c00cfb2:	03240723          	sb	s2,46(s0)
1c00cfb6:	029408a3          	sb	s1,49(s0)
1c00cfba:	03440c23          	sb	s4,56(s0)
1c00cfbe:	018a5893          	srli	a7,s4,0x18
1c00cfc2:	02f407a3          	sb	a5,47(s0)
1c00cfc6:	02e40823          	sb	a4,48(s0)
1c00cfca:	02740923          	sb	t2,50(s0)
1c00cfce:	025409a3          	sb	t0,51(s0)
1c00cfd2:	02c40a23          	sb	a2,52(s0)
1c00cfd6:	03f40aa3          	sb	t6,53(s0)
1c00cfda:	03e40b23          	sb	t5,54(s0)
1c00cfde:	03d40ba3          	sb	t4,55(s0)
1c00cfe2:	03c40ca3          	sb	t3,57(s0)
1c00cfe6:	02640d23          	sb	t1,58(s0)
1c00cfea:	0086d813          	srli	a6,a3,0x8
1c00cfee:	0106d513          	srli	a0,a3,0x10
1c00cff2:	0186d593          	srli	a1,a3,0x18
1c00cff6:	03140da3          	sb	a7,59(s0)
1c00cffa:	02d40e23          	sb	a3,60(s0)
1c00cffe:	03040ea3          	sb	a6,61(s0)
1c00d002:	02a40f23          	sb	a0,62(s0)
1c00d006:	02b40fa3          	sb	a1,63(s0)
1c00d00a:	1dc12083          	lw	ra,476(sp)
1c00d00e:	1d812403          	lw	s0,472(sp)
1c00d012:	1d412483          	lw	s1,468(sp)
1c00d016:	1d012903          	lw	s2,464(sp)
1c00d01a:	1cc12983          	lw	s3,460(sp)
1c00d01e:	1c812a03          	lw	s4,456(sp)
1c00d022:	1c412a83          	lw	s5,452(sp)
1c00d026:	1c012b03          	lw	s6,448(sp)
1c00d02a:	1bc12b83          	lw	s7,444(sp)
1c00d02e:	1b812c03          	lw	s8,440(sp)
1c00d032:	1b412c83          	lw	s9,436(sp)
1c00d036:	1b012d03          	lw	s10,432(sp)
1c00d03a:	1ac12d83          	lw	s11,428(sp)
1c00d03e:	613d                	addi	sp,sp,480
1c00d040:	8082                	ret
1c00d042:	4781                	li	a5,0
1c00d044:	ba45                	j	1c00c9f4 <sha3_512+0x12e>

1c00d046 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc>:
1c00d046:	736d                	lui	t1,0xffffb
1c00d048:	715d                	addi	sp,sp,-80
1c00d04a:	3d030313          	addi	t1,t1,976 # ffffb3d0 <__l2_shared_end+0xe3feb3d0>
1c00d04e:	c686                	sw	ra,76(sp)
1c00d050:	c4a2                	sw	s0,72(sp)
1c00d052:	c2a6                	sw	s1,68(sp)
1c00d054:	c0ca                	sw	s2,64(sp)
1c00d056:	de4e                	sw	s3,60(sp)
1c00d058:	dc52                	sw	s4,56(sp)
1c00d05a:	da56                	sw	s5,52(sp)
1c00d05c:	d85a                	sw	s6,48(sp)
1c00d05e:	d65e                	sw	s7,44(sp)
1c00d060:	d462                	sw	s8,40(sp)
1c00d062:	d266                	sw	s9,36(sp)
1c00d064:	d06a                	sw	s10,32(sp)
1c00d066:	ce6e                	sw	s11,28(sp)
1c00d068:	6495                	lui	s1,0x5
1c00d06a:	911a                	add	sp,sp,t1
1c00d06c:	8432                	mv	s0,a2
1c00d06e:	87aa                	mv	a5,a0
1c00d070:	1010                	addi	a2,sp,32
1c00d072:	c2048713          	addi	a4,s1,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00d076:	7575                	lui	a0,0xffffd
1c00d078:	9732                	add	a4,a4,a2
1c00d07a:	80050513          	addi	a0,a0,-2048 # ffffc800 <__l2_shared_end+0xe3fec800>
1c00d07e:	892e                	mv	s2,a1
1c00d080:	953a                	add	a0,a0,a4
1c00d082:	85a2                	mv	a1,s0
1c00d084:	c43e                	sw	a5,8(sp)
1c00d086:	c636                	sw	a3,12(sp)
1c00d088:	2dc010ef          	jal	ra,1c00e364 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>
1c00d08c:	60f44783          	lbu	a5,1551(s0)
1c00d090:	61c44703          	lbu	a4,1564(s0)
1c00d094:	60b44983          	lbu	s3,1547(s0)
1c00d098:	61144283          	lbu	t0,1553(s0)
1c00d09c:	61044b03          	lbu	s6,1552(s0)
1c00d0a0:	61244503          	lbu	a0,1554(s0)
1c00d0a4:	c23e                	sw	a5,4(sp)
1c00d0a6:	61744783          	lbu	a5,1559(s0)
1c00d0aa:	61544f83          	lbu	t6,1557(s0)
1c00d0ae:	cc3a                	sw	a4,24(sp)
1c00d0b0:	c04e                	sw	s3,0(sp)
1c00d0b2:	02a2                	slli	t0,t0,0x8
1c00d0b4:	60844c03          	lbu	s8,1544(s0)
1c00d0b8:	60c44b83          	lbu	s7,1548(s0)
1c00d0bc:	61844a03          	lbu	s4,1560(s0)
1c00d0c0:	60544d03          	lbu	s10,1541(s0)
1c00d0c4:	60944483          	lbu	s1,1545(s0)
1c00d0c8:	60d44383          	lbu	t2,1549(s0)
1c00d0cc:	61944f03          	lbu	t5,1561(s0)
1c00d0d0:	61d44e83          	lbu	t4,1565(s0)
1c00d0d4:	60144e03          	lbu	t3,1537(s0)
1c00d0d8:	60444c83          	lbu	s9,1540(s0)
1c00d0dc:	60644303          	lbu	t1,1542(s0)
1c00d0e0:	60a44883          	lbu	a7,1546(s0)
1c00d0e4:	60e44803          	lbu	a6,1550(s0)
1c00d0e8:	61444a83          	lbu	s5,1556(s0)
1c00d0ec:	61644603          	lbu	a2,1558(s0)
1c00d0f0:	61a44683          	lbu	a3,1562(s0)
1c00d0f4:	61e44703          	lbu	a4,1566(s0)
1c00d0f8:	60044583          	lbu	a1,1536(s0)
1c00d0fc:	60244d83          	lbu	s11,1538(s0)
1c00d100:	60744083          	lbu	ra,1543(s0)
1c00d104:	61344983          	lbu	s3,1555(s0)
1c00d108:	0542                	slli	a0,a0,0x10
1c00d10a:	c83e                	sw	a5,16(sp)
1c00d10c:	0162e2b3          	or	t0,t0,s6
1c00d110:	61b44783          	lbu	a5,1563(s0)
1c00d114:	005562b3          	or	t0,a0,t0
1c00d118:	4542                	lw	a0,16(sp)
1c00d11a:	0fa2                	slli	t6,t6,0x8
1c00d11c:	ca3e                	sw	a5,20(sp)
1c00d11e:	0e22                	slli	t3,t3,0x8
1c00d120:	61f44783          	lbu	a5,1567(s0)
1c00d124:	015fefb3          	or	t6,t6,s5
1c00d128:	0642                	slli	a2,a2,0x10
1c00d12a:	00be65b3          	or	a1,t3,a1
1c00d12e:	01f66633          	or	a2,a2,t6
1c00d132:	4e02                	lw	t3,0(sp)
1c00d134:	01851f93          	slli	t6,a0,0x18
1c00d138:	4552                	lw	a0,20(sp)
1c00d13a:	04a2                	slli	s1,s1,0x8
1c00d13c:	0f22                	slli	t5,t5,0x8
1c00d13e:	ce3e                	sw	a5,28(sp)
1c00d140:	0184e4b3          	or	s1,s1,s8
1c00d144:	014f6f33          	or	t5,t5,s4
1c00d148:	08c2                	slli	a7,a7,0x10
1c00d14a:	4a62                	lw	s4,24(sp)
1c00d14c:	06c2                	slli	a3,a3,0x10
1c00d14e:	0098e8b3          	or	a7,a7,s1
1c00d152:	01e6e6b3          	or	a3,a3,t5
1c00d156:	018e1493          	slli	s1,t3,0x18
1c00d15a:	01851f13          	slli	t5,a0,0x18
1c00d15e:	4e12                	lw	t3,4(sp)
1c00d160:	4572                	lw	a0,28(sp)
1c00d162:	03a2                	slli	t2,t2,0x8
1c00d164:	0ea2                	slli	t4,t4,0x8
1c00d166:	60344783          	lbu	a5,1539(s0)
1c00d16a:	0173e3b3          	or	t2,t2,s7
1c00d16e:	014eeeb3          	or	t4,t4,s4
1c00d172:	0842                	slli	a6,a6,0x10
1c00d174:	0742                	slli	a4,a4,0x10
1c00d176:	00786833          	or	a6,a6,t2
1c00d17a:	0114e8b3          	or	a7,s1,a7
1c00d17e:	018e1393          	slli	t2,t3,0x18
1c00d182:	6495                	lui	s1,0x5
1c00d184:	01851e13          	slli	t3,a0,0x18
1c00d188:	01d76733          	or	a4,a4,t4
1c00d18c:	0d22                	slli	s10,s10,0x8
1c00d18e:	00ee6733          	or	a4,t3,a4
1c00d192:	746d                	lui	s0,0xffffb
1c00d194:	0dc2                	slli	s11,s11,0x10
1c00d196:	02010e93          	addi	t4,sp,32
1c00d19a:	019d6cb3          	or	s9,s10,s9
1c00d19e:	0342                	slli	t1,t1,0x10
1c00d1a0:	c2048e13          	addi	t3,s1,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00d1a4:	00bde5b3          	or	a1,s11,a1
1c00d1a8:	00e2                	slli	ra,ra,0x18
1c00d1aa:	60040513          	addi	a0,s0,1536 # ffffb600 <__l2_shared_end+0xe3feb600>
1c00d1ae:	9e76                	add	t3,t3,t4
1c00d1b0:	01936333          	or	t1,t1,s9
1c00d1b4:	09e2                	slli	s3,s3,0x18
1c00d1b6:	07e2                	slli	a5,a5,0x18
1c00d1b8:	8fcd                	or	a5,a5,a1
1c00d1ba:	0103e3b3          	or	t2,t2,a6
1c00d1be:	00df66b3          	or	a3,t5,a3
1c00d1c2:	0060e333          	or	t1,ra,t1
1c00d1c6:	0059e833          	or	a6,s3,t0
1c00d1ca:	00cfe633          	or	a2,t6,a2
1c00d1ce:	85ca                	mv	a1,s2
1c00d1d0:	9572                	add	a0,a0,t3
1c00d1d2:	d03e                	sw	a5,32(sp)
1c00d1d4:	dc36                	sw	a3,56(sp)
1c00d1d6:	de3a                	sw	a4,60(sp)
1c00d1d8:	d21a                	sw	t1,36(sp)
1c00d1da:	d446                	sw	a7,40(sp)
1c00d1dc:	d61e                	sw	t2,44(sp)
1c00d1de:	d842                	sw	a6,48(sp)
1c00d1e0:	da32                	sw	a2,52(sp)
1c00d1e2:	349000ef          	jal	ra,1c00dd2a <PQCLEAN_KYBER1024_CLEAN_poly_frommsg>
1c00d1e6:	1014                	addi	a3,sp,32
1c00d1e8:	7df9                	lui	s11,0xffffe
1c00d1ea:	c2048713          	addi	a4,s1,-992
1c00d1ee:	9736                	add	a4,a4,a3
1c00d1f0:	800d8913          	addi	s2,s11,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c00d1f4:	993a                	add	s2,s2,a4
1c00d1f6:	c2048713          	addi	a4,s1,-992
1c00d1fa:	9736                	add	a4,a4,a3
1c00d1fc:	c2048793          	addi	a5,s1,-992
1c00d200:	3e040413          	addi	s0,s0,992
1c00d204:	976e                	add	a4,a4,s11
1c00d206:	97b6                	add	a5,a5,a3
1c00d208:	c03a                	sw	a4,0(sp)
1c00d20a:	c202                	sw	zero,4(sp)
1c00d20c:	00878c33          	add	s8,a5,s0
1c00d210:	0a890b93          	addi	s7,s2,168
1c00d214:	6405                	lui	s0,0x1
1c00d216:	fff40993          	addi	s3,s0,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00d21a:	00414d83          	lbu	s11,4(sp)
1c00d21e:	4c82                	lw	s9,0(sp)
1c00d220:	4481                	li	s1,0
1c00d222:	1f890d13          	addi	s10,s2,504
1c00d226:	d0040413          	addi	s0,s0,-768
1c00d22a:	a015                	j	1c00d24e <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x208>
1c00d22c:	00f61023          	sh	a5,0(a2)
1c00d230:	42689863          	bne	a7,t1,1c00d660 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x61a>
1c00d234:	6789                	lui	a5,0x2
1c00d236:	c2078513          	addi	a0,a5,-992 # 1c20 <__CTOR_LIST__-0x1bffe3e4>
1c00d23a:	101c                	addi	a5,sp,32
1c00d23c:	953e                	add	a0,a0,a5
1c00d23e:	91aff0ef          	jal	ra,1c00c358 <shake128_ctx_release>
1c00d242:	0485                	addi	s1,s1,1
1c00d244:	4791                	li	a5,4
1c00d246:	200c8c93          	addi	s9,s9,512 # ff0200 <__CTOR_LIST__-0x1b00fe04>
1c00d24a:	0ef48f63          	beq	s1,a5,1c00d348 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x302>
1c00d24e:	6a09                	lui	s4,0x2
1c00d250:	101c                	addi	a5,sp,32
1c00d252:	c20a0513          	addi	a0,s4,-992 # 1c20 <__CTOR_LIST__-0x1bffe3e4>
1c00d256:	0ff4f693          	andi	a3,s1,255
1c00d25a:	953e                	add	a0,a0,a5
1c00d25c:	85e2                	mv	a1,s8
1c00d25e:	866e                	mv	a2,s11
1c00d260:	3c0010ef          	jal	ra,1c00e620 <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>
1c00d264:	101c                	addi	a5,sp,32
1c00d266:	c20a0613          	addi	a2,s4,-992
1c00d26a:	963e                	add	a2,a2,a5
1c00d26c:	458d                	li	a1,3
1c00d26e:	854a                	mv	a0,s2
1c00d270:	ff5fe0ef          	jal	ra,1c00c264 <shake128_squeezeblocks>
1c00d274:	4b01                	li	s6,0
1c00d276:	86ca                	mv	a3,s2
1c00d278:	10000313          	li	t1,256
1c00d27c:	0016c503          	lbu	a0,1(a3)
1c00d280:	0006c583          	lbu	a1,0(a3)
1c00d284:	001b1613          	slli	a2,s6,0x1
1c00d288:	00851793          	slli	a5,a0,0x8
1c00d28c:	8fcd                	or	a5,a5,a1
1c00d28e:	0137f7b3          	and	a5,a5,s3
1c00d292:	0026c583          	lbu	a1,2(a3)
1c00d296:	9666                	add	a2,a2,s9
1c00d298:	00455e13          	srli	t3,a0,0x4
1c00d29c:	001b0893          	addi	a7,s6,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00d2a0:	f8f476e3          	bgeu	s0,a5,1c00d22c <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1e6>
1c00d2a4:	00459793          	slli	a5,a1,0x4
1c00d2a8:	01c7e7b3          	or	a5,a5,t3
1c00d2ac:	00f44863          	blt	s0,a5,1c00d2bc <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x276>
1c00d2b0:	001b1613          	slli	a2,s6,0x1
1c00d2b4:	9666                	add	a2,a2,s9
1c00d2b6:	00f61023          	sh	a5,0(a2)
1c00d2ba:	0b05                	addi	s6,s6,1
1c00d2bc:	f66b0ce3          	beq	s6,t1,1c00d234 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1ee>
1c00d2c0:	068d                	addi	a3,a3,3
1c00d2c2:	fba69de3          	bne	a3,s10,1c00d27c <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x236>
1c00d2c6:	10000a93          	li	s5,256
1c00d2ca:	0ff00a13          	li	s4,255
1c00d2ce:	a821                	j	1c00d2e6 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2a0>
1c00d2d0:	00179893          	slli	a7,a5,0x1
1c00d2d4:	98aa                	add	a7,a7,a0
1c00d2d6:	0785                	addi	a5,a5,1
1c00d2d8:	00b89023          	sh	a1,0(a7) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00d2dc:	3867ea63          	bltu	a5,t1,1c00d670 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x62a>
1c00d2e0:	9b3e                	add	s6,s6,a5
1c00d2e2:	f56a69e3          	bltu	s4,s6,1c00d234 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1ee>
1c00d2e6:	6789                	lui	a5,0x2
1c00d2e8:	c2078613          	addi	a2,a5,-992 # 1c20 <__CTOR_LIST__-0x1bffe3e4>
1c00d2ec:	101c                	addi	a5,sp,32
1c00d2ee:	963e                	add	a2,a2,a5
1c00d2f0:	854a                	mv	a0,s2
1c00d2f2:	4585                	li	a1,1
1c00d2f4:	f71fe0ef          	jal	ra,1c00c264 <shake128_squeezeblocks>
1c00d2f8:	001b1513          	slli	a0,s6,0x1
1c00d2fc:	9566                	add	a0,a0,s9
1c00d2fe:	416a8333          	sub	t1,s5,s6
1c00d302:	864a                	mv	a2,s2
1c00d304:	4781                	li	a5,0
1c00d306:	00164883          	lbu	a7,1(a2)
1c00d30a:	00064e03          	lbu	t3,0(a2)
1c00d30e:	00264683          	lbu	a3,2(a2)
1c00d312:	00889593          	slli	a1,a7,0x8
1c00d316:	01c5e5b3          	or	a1,a1,t3
1c00d31a:	0692                	slli	a3,a3,0x4
1c00d31c:	0048d893          	srli	a7,a7,0x4
1c00d320:	0135f5b3          	and	a1,a1,s3
1c00d324:	0116e6b3          	or	a3,a3,a7
1c00d328:	fab474e3          	bgeu	s0,a1,1c00d2d0 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x28a>
1c00d32c:	00d44863          	blt	s0,a3,1c00d33c <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2f6>
1c00d330:	00179593          	slli	a1,a5,0x1
1c00d334:	95aa                	add	a1,a1,a0
1c00d336:	00d59023          	sh	a3,0(a1)
1c00d33a:	0785                	addi	a5,a5,1
1c00d33c:	fa67f2e3          	bgeu	a5,t1,1c00d2e0 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x29a>
1c00d340:	060d                	addi	a2,a2,3
1c00d342:	fd7612e3          	bne	a2,s7,1c00d306 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2c0>
1c00d346:	bf69                	j	1c00d2e0 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x29a>
1c00d348:	4792                	lw	a5,4(sp)
1c00d34a:	4702                	lw	a4,0(sp)
1c00d34c:	6405                	lui	s0,0x1
1c00d34e:	80040993          	addi	s3,s0,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c00d352:	0785                	addi	a5,a5,1
1c00d354:	974e                	add	a4,a4,s3
1c00d356:	c23e                	sw	a5,4(sp)
1c00d358:	c03a                	sw	a4,0(sp)
1c00d35a:	ea979de3          	bne	a5,s1,1c00d214 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1ce>
1c00d35e:	4a32                	lw	s4,12(sp)
1c00d360:	6905                	lui	s2,0x1
1c00d362:	101c                	addi	a5,sp,32
1c00d364:	c2090513          	addi	a0,s2,-992 # c20 <__CTOR_LIST__-0x1bfff3e4>
1c00d368:	85d2                	mv	a1,s4
1c00d36a:	953e                	add	a0,a0,a5
1c00d36c:	4601                	li	a2,0
1c00d36e:	393000ef          	jal	ra,1c00df00 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00d372:	1018                	addi	a4,sp,32
1c00d374:	c2090793          	addi	a5,s2,-992
1c00d378:	97ba                	add	a5,a5,a4
1c00d37a:	85d2                	mv	a1,s4
1c00d37c:	20078513          	addi	a0,a5,512
1c00d380:	4605                	li	a2,1
1c00d382:	37f000ef          	jal	ra,1c00df00 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00d386:	1018                	addi	a4,sp,32
1c00d388:	c2090793          	addi	a5,s2,-992
1c00d38c:	97ba                	add	a5,a5,a4
1c00d38e:	85d2                	mv	a1,s4
1c00d390:	40078513          	addi	a0,a5,1024
1c00d394:	4609                	li	a2,2
1c00d396:	36b000ef          	jal	ra,1c00df00 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00d39a:	1018                	addi	a4,sp,32
1c00d39c:	c2090793          	addi	a5,s2,-992
1c00d3a0:	97ba                	add	a5,a5,a4
1c00d3a2:	85d2                	mv	a1,s4
1c00d3a4:	60078513          	addi	a0,a5,1536
1c00d3a8:	460d                	li	a2,3
1c00d3aa:	357000ef          	jal	ra,1c00df00 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00d3ae:	6a89                	lui	s5,0x2
1c00d3b0:	101c                	addi	a5,sp,32
1c00d3b2:	c20a8513          	addi	a0,s5,-992 # 1c20 <__CTOR_LIST__-0x1bffe3e4>
1c00d3b6:	85d2                	mv	a1,s4
1c00d3b8:	953e                	add	a0,a0,a5
1c00d3ba:	4611                	li	a2,4
1c00d3bc:	369000ef          	jal	ra,1c00df24 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00d3c0:	1018                	addi	a4,sp,32
1c00d3c2:	c20a8793          	addi	a5,s5,-992
1c00d3c6:	97ba                	add	a5,a5,a4
1c00d3c8:	85d2                	mv	a1,s4
1c00d3ca:	20078513          	addi	a0,a5,512
1c00d3ce:	4615                	li	a2,5
1c00d3d0:	355000ef          	jal	ra,1c00df24 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00d3d4:	1018                	addi	a4,sp,32
1c00d3d6:	c20a8793          	addi	a5,s5,-992
1c00d3da:	97ba                	add	a5,a5,a4
1c00d3dc:	85d2                	mv	a1,s4
1c00d3de:	40078513          	addi	a0,a5,1024
1c00d3e2:	4619                	li	a2,6
1c00d3e4:	341000ef          	jal	ra,1c00df24 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00d3e8:	1018                	addi	a4,sp,32
1c00d3ea:	c20a8793          	addi	a5,s5,-992
1c00d3ee:	97ba                	add	a5,a5,a4
1c00d3f0:	85d2                	mv	a1,s4
1c00d3f2:	60078513          	addi	a0,a5,1536
1c00d3f6:	461d                	li	a2,7
1c00d3f8:	32d000ef          	jal	ra,1c00df24 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00d3fc:	85d2                	mv	a1,s4
1c00d3fe:	6a15                	lui	s4,0x5
1c00d400:	1018                	addi	a4,sp,32
1c00d402:	74f1                	lui	s1,0xffffc
1c00d404:	c20a0793          	addi	a5,s4,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00d408:	97ba                	add	a5,a5,a4
1c00d40a:	80048513          	addi	a0,s1,-2048 # ffffb800 <__l2_shared_end+0xe3feb800>
1c00d40e:	4621                	li	a2,8
1c00d410:	953e                	add	a0,a0,a5
1c00d412:	313000ef          	jal	ra,1c00df24 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00d416:	101c                	addi	a5,sp,32
1c00d418:	c2090513          	addi	a0,s2,-992
1c00d41c:	953e                	add	a0,a0,a5
1c00d41e:	777000ef          	jal	ra,1c00e394 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c00d422:	1014                	addi	a3,sp,32
1c00d424:	77f9                	lui	a5,0xffffe
1c00d426:	c20a0713          	addi	a4,s4,-992
1c00d42a:	9736                	add	a4,a4,a3
1c00d42c:	80078493          	addi	s1,a5,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c00d430:	94ba                	add	s1,s1,a4
1c00d432:	c20a0713          	addi	a4,s4,-992
1c00d436:	9736                	add	a4,a4,a3
1c00d438:	97ba                	add	a5,a5,a4
1c00d43a:	c2090613          	addi	a2,s2,-992
1c00d43e:	9636                	add	a2,a2,a3
1c00d440:	85be                	mv	a1,a5
1c00d442:	8526                	mv	a0,s1
1c00d444:	c03e                	sw	a5,0(sp)
1c00d446:	0de010ef          	jal	ra,1c00e524 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00d44a:	101c                	addi	a5,sp,32
1c00d44c:	c2090613          	addi	a2,s2,-992
1c00d450:	963e                	add	a2,a2,a5
1c00d452:	4782                	lw	a5,0(sp)
1c00d454:	20048513          	addi	a0,s1,512
1c00d458:	013785b3          	add	a1,a5,s3
1c00d45c:	0c8010ef          	jal	ra,1c00e524 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00d460:	101c                	addi	a5,sp,32
1c00d462:	c2090613          	addi	a2,s2,-992
1c00d466:	963e                	add	a2,a2,a5
1c00d468:	4782                	lw	a5,0(sp)
1c00d46a:	40048513          	addi	a0,s1,1024
1c00d46e:	008785b3          	add	a1,a5,s0
1c00d472:	0b2010ef          	jal	ra,1c00e524 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00d476:	101c                	addi	a5,sp,32
1c00d478:	c2090613          	addi	a2,s2,-992
1c00d47c:	963e                	add	a2,a2,a5
1c00d47e:	6791                	lui	a5,0x4
1c00d480:	42078793          	addi	a5,a5,1056 # 4420 <__CTOR_LIST__-0x1bffbbe4>
1c00d484:	1018                	addi	a4,sp,32
1c00d486:	00f705b3          	add	a1,a4,a5
1c00d48a:	60048513          	addi	a0,s1,1536
1c00d48e:	096010ef          	jal	ra,1c00e524 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00d492:	77f5                	lui	a5,0xffffd
1c00d494:	80078593          	addi	a1,a5,-2048 # ffffc800 <__l2_shared_end+0xe3fec800>
1c00d498:	c2090613          	addi	a2,s2,-992
1c00d49c:	101c                	addi	a5,sp,32
1c00d49e:	1018                	addi	a4,sp,32
1c00d4a0:	963e                	add	a2,a2,a5
1c00d4a2:	c20a0793          	addi	a5,s4,-992
1c00d4a6:	97ba                	add	a5,a5,a4
1c00d4a8:	95be                	add	a1,a1,a5
1c00d4aa:	746d                	lui	s0,0xffffb
1c00d4ac:	c20a0793          	addi	a5,s4,-992
1c00d4b0:	97ba                	add	a5,a5,a4
1c00d4b2:	40040513          	addi	a0,s0,1024 # ffffb400 <__l2_shared_end+0xe3feb400>
1c00d4b6:	953e                	add	a0,a0,a5
1c00d4b8:	06c010ef          	jal	ra,1c00e524 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00d4bc:	8526                	mv	a0,s1
1c00d4be:	793000ef          	jal	ra,1c00e450 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont>
1c00d4c2:	1018                	addi	a4,sp,32
1c00d4c4:	c20a0793          	addi	a5,s4,-992
1c00d4c8:	97ba                	add	a5,a5,a4
1c00d4ca:	97a2                	add	a5,a5,s0
1c00d4cc:	c03e                	sw	a5,0(sp)
1c00d4ce:	1014                	addi	a3,sp,32
1c00d4d0:	40078713          	addi	a4,a5,1024
1c00d4d4:	c2090793          	addi	a5,s2,-992
1c00d4d8:	97b6                	add	a5,a5,a3
1c00d4da:	4682                	lw	a3,0(sp)
1c00d4dc:	a0078793          	addi	a5,a5,-1536
1c00d4e0:	60068693          	addi	a3,a3,1536
1c00d4e4:	00072803          	lw	a6,0(a4)
1c00d4e8:	4348                	lw	a0,4(a4)
1c00d4ea:	470c                	lw	a1,8(a4)
1c00d4ec:	4750                	lw	a2,12(a4)
1c00d4ee:	0107a023          	sw	a6,0(a5)
1c00d4f2:	c3c8                	sw	a0,4(a5)
1c00d4f4:	c78c                	sw	a1,8(a5)
1c00d4f6:	c7d0                	sw	a2,12(a5)
1c00d4f8:	0741                	addi	a4,a4,16
1c00d4fa:	07c1                	addi	a5,a5,16
1c00d4fc:	fed714e3          	bne	a4,a3,1c00d4e4 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x49e>
1c00d500:	6795                	lui	a5,0x5
1c00d502:	7771                	lui	a4,0xffffc
1c00d504:	c2078793          	addi	a5,a5,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00d508:	1014                	addi	a3,sp,32
1c00d50a:	a0070713          	addi	a4,a4,-1536 # ffffba00 <__l2_shared_end+0xe3feba00>
1c00d50e:	97b6                	add	a5,a5,a3
1c00d510:	6341                	lui	t1,0x10
1c00d512:	7ef1                	lui	t4,0xffffc
1c00d514:	973e                	add	a4,a4,a5
1c00d516:	4581                	li	a1,0
1c00d518:	137d                	addi	t1,t1,-1
1c00d51a:	10000e13          	li	t3,256
1c00d51e:	00071603          	lh	a2,0(a4)
1c00d522:	00471883          	lh	a7,4(a4)
1c00d526:	00271683          	lh	a3,2(a4)
1c00d52a:	00671803          	lh	a6,6(a4)
1c00d52e:	6485                	lui	s1,0x1
1c00d530:	4015d793          	srai	a5,a1,0x1
1c00d534:	c2048413          	addi	s0,s1,-992 # c20 <__CTOR_LIST__-0x1bfff3e4>
1c00d538:	02010f13          	addi	t5,sp,32
1c00d53c:	00279513          	slli	a0,a5,0x2
1c00d540:	947a                	add	s0,s0,t5
1c00d542:	0642                	slli	a2,a2,0x10
1c00d544:	0068f8b3          	and	a7,a7,t1
1c00d548:	0785                	addi	a5,a5,1
1c00d54a:	06c2                	slli	a3,a3,0x10
1c00d54c:	00687833          	and	a6,a6,t1
1c00d550:	9522                	add	a0,a0,s0
1c00d552:	01166633          	or	a2,a2,a7
1c00d556:	078a                	slli	a5,a5,0x2
1c00d558:	0106e6b3          	or	a3,a3,a6
1c00d55c:	c0c52023          	sw	a2,-1024(a0)
1c00d560:	97a2                	add	a5,a5,s0
1c00d562:	c0d7a023          	sw	a3,-1024(a5)
1c00d566:	0591                	addi	a1,a1,4
1c00d568:	0721                	addi	a4,a4,8
1c00d56a:	fbc59ae3          	bne	a1,t3,1c00d51e <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x4d8>
1c00d56e:	6495                	lui	s1,0x5
1c00d570:	c2048793          	addi	a5,s1,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00d574:	e00e8593          	addi	a1,t4,-512 # ffffbe00 <__l2_shared_end+0xe3febe00>
1c00d578:	97fa                	add	a5,a5,t5
1c00d57a:	00b78433          	add	s0,a5,a1
1c00d57e:	c2048793          	addi	a5,s1,-992
1c00d582:	97fa                	add	a5,a5,t5
1c00d584:	c00e8513          	addi	a0,t4,-1024
1c00d588:	85a2                	mv	a1,s0
1c00d58a:	953e                	add	a0,a0,a5
1c00d58c:	eaefe0ef          	jal	ra,1c00bc3a <KYBER_poly_intt>
1c00d590:	77ed                	lui	a5,0xffffb
1c00d592:	c2048713          	addi	a4,s1,-992
1c00d596:	1014                	addi	a3,sp,32
1c00d598:	40078793          	addi	a5,a5,1024 # ffffb400 <__l2_shared_end+0xe3feb400>
1c00d59c:	9736                	add	a4,a4,a3
1c00d59e:	97ba                	add	a5,a5,a4
1c00d5a0:	85a2                	mv	a1,s0
1c00d5a2:	10078613          	addi	a2,a5,256
1c00d5a6:	4198                	lw	a4,0(a1)
1c00d5a8:	0789                	addi	a5,a5,2
1c00d5aa:	0591                	addi	a1,a1,4
1c00d5ac:	01075693          	srli	a3,a4,0x10
1c00d5b0:	fed79f23          	sh	a3,-2(a5)
1c00d5b4:	0ee79f23          	sh	a4,254(a5)
1c00d5b8:	fec797e3          	bne	a5,a2,1c00d5a6 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x560>
1c00d5bc:	6995                	lui	s3,0x5
1c00d5be:	1018                	addi	a4,sp,32
1c00d5c0:	c2098793          	addi	a5,s3,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00d5c4:	74f9                	lui	s1,0xffffe
1c00d5c6:	97ba                	add	a5,a5,a4
1c00d5c8:	80048493          	addi	s1,s1,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c00d5cc:	94be                	add	s1,s1,a5
1c00d5ce:	c2098793          	addi	a5,s3,-992
1c00d5d2:	97ba                	add	a5,a5,a4
1c00d5d4:	7675                	lui	a2,0xffffd
1c00d5d6:	963e                	add	a2,a2,a5
1c00d5d8:	85a6                	mv	a1,s1
1c00d5da:	8526                	mv	a0,s1
1c00d5dc:	7cb000ef          	jal	ra,1c00e5a6 <PQCLEAN_KYBER1024_CLEAN_polyvec_add>
1c00d5e0:	1014                	addi	a3,sp,32
1c00d5e2:	796d                	lui	s2,0xffffb
1c00d5e4:	c2098713          	addi	a4,s3,-992
1c00d5e8:	9736                	add	a4,a4,a3
1c00d5ea:	40090413          	addi	s0,s2,1024 # ffffb400 <__l2_shared_end+0xe3feb400>
1c00d5ee:	c2098793          	addi	a5,s3,-992
1c00d5f2:	7671                	lui	a2,0xffffc
1c00d5f4:	943a                	add	s0,s0,a4
1c00d5f6:	97b6                	add	a5,a5,a3
1c00d5f8:	80060613          	addi	a2,a2,-2048 # ffffb800 <__l2_shared_end+0xe3feb800>
1c00d5fc:	963e                	add	a2,a2,a5
1c00d5fe:	85a2                	mv	a1,s0
1c00d600:	8522                	mv	a0,s0
1c00d602:	1dd000ef          	jal	ra,1c00dfde <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00d606:	1018                	addi	a4,sp,32
1c00d608:	c2098793          	addi	a5,s3,-992
1c00d60c:	97ba                	add	a5,a5,a4
1c00d60e:	60090613          	addi	a2,s2,1536
1c00d612:	963e                	add	a2,a2,a5
1c00d614:	85a2                	mv	a1,s0
1c00d616:	8522                	mv	a0,s0
1c00d618:	1c7000ef          	jal	ra,1c00dfde <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00d61c:	8526                	mv	a0,s1
1c00d61e:	767000ef          	jal	ra,1c00e584 <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>
1c00d622:	8522                	mv	a0,s0
1c00d624:	193000ef          	jal	ra,1c00dfb6 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00d628:	85a6                	mv	a1,s1
1c00d62a:	44a2                	lw	s1,8(sp)
1c00d62c:	8526                	mv	a0,s1
1c00d62e:	203000ef          	jal	ra,1c00e030 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress>
1c00d632:	85a2                	mv	a1,s0
1c00d634:	58048513          	addi	a0,s1,1408
1c00d638:	29b1                	jal	1c00da94 <PQCLEAN_KYBER1024_CLEAN_poly_compress>
1c00d63a:	6315                	lui	t1,0x5
1c00d63c:	c3030313          	addi	t1,t1,-976 # 4c30 <__CTOR_LIST__-0x1bffb3d4>
1c00d640:	911a                	add	sp,sp,t1
1c00d642:	40b6                	lw	ra,76(sp)
1c00d644:	4426                	lw	s0,72(sp)
1c00d646:	4496                	lw	s1,68(sp)
1c00d648:	4906                	lw	s2,64(sp)
1c00d64a:	59f2                	lw	s3,60(sp)
1c00d64c:	5a62                	lw	s4,56(sp)
1c00d64e:	5ad2                	lw	s5,52(sp)
1c00d650:	5b42                	lw	s6,48(sp)
1c00d652:	5bb2                	lw	s7,44(sp)
1c00d654:	5c22                	lw	s8,40(sp)
1c00d656:	5c92                	lw	s9,36(sp)
1c00d658:	5d02                	lw	s10,32(sp)
1c00d65a:	4df2                	lw	s11,28(sp)
1c00d65c:	6161                	addi	sp,sp,80
1c00d65e:	8082                	ret
1c00d660:	8111                	srli	a0,a0,0x4
1c00d662:	00459793          	slli	a5,a1,0x4
1c00d666:	8fc9                	or	a5,a5,a0
1c00d668:	8b46                	mv	s6,a7
1c00d66a:	c4f453e3          	bge	s0,a5,1c00d2b0 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x26a>
1c00d66e:	b989                	j	1c00d2c0 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x27a>
1c00d670:	ccd450e3          	bge	s0,a3,1c00d330 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2ea>
1c00d674:	b1f1                	j	1c00d340 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2fa>

1c00d676 <PQCLEAN_KYBER1024_CLEAN_indcpa_dec>:
1c00d676:	7179                	addi	sp,sp,-48
1c00d678:	7379                	lui	t1,0xffffe
1c00d67a:	61030313          	addi	t1,t1,1552 # ffffe610 <__l2_shared_end+0xe3fee610>
1c00d67e:	cc52                	sw	s4,24(sp)
1c00d680:	6a05                	lui	s4,0x1
1c00d682:	d606                	sw	ra,44(sp)
1c00d684:	d422                	sw	s0,40(sp)
1c00d686:	d226                	sw	s1,36(sp)
1c00d688:	d04a                	sw	s2,32(sp)
1c00d68a:	ce4e                	sw	s3,28(sp)
1c00d68c:	84aa                	mv	s1,a0
1c00d68e:	911a                	add	sp,sp,t1
1c00d690:	a00a0513          	addi	a0,s4,-1536 # a00 <__CTOR_LIST__-0x1bfff604>
1c00d694:	950a                	add	a0,a0,sp
1c00d696:	8932                	mv	s2,a2
1c00d698:	89ae                	mv	s3,a1
1c00d69a:	365000ef          	jal	ra,1c00e1fe <PQCLEAN_KYBER1024_CLEAN_polyvec_decompress>
1c00d69e:	58098593          	addi	a1,s3,1408
1c00d6a2:	6989                	lui	s3,0x2
1c00d6a4:	7579                	lui	a0,0xffffe
1c00d6a6:	a0098793          	addi	a5,s3,-1536 # 1a00 <__CTOR_LIST__-0x1bffe604>
1c00d6aa:	978a                	add	a5,a5,sp
1c00d6ac:	60050513          	addi	a0,a0,1536 # ffffe600 <__l2_shared_end+0xe3fee600>
1c00d6b0:	953e                	add	a0,a0,a5
1c00d6b2:	2bb9                	jal	1c00dc10 <PQCLEAN_KYBER1024_CLEAN_poly_decompress>
1c00d6b4:	200a0513          	addi	a0,s4,512
1c00d6b8:	85ca                	mv	a1,s2
1c00d6ba:	950a                	add	a0,a0,sp
1c00d6bc:	4a9000ef          	jal	ra,1c00e364 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>
1c00d6c0:	a00a0513          	addi	a0,s4,-1536
1c00d6c4:	950a                	add	a0,a0,sp
1c00d6c6:	4cf000ef          	jal	ra,1c00e394 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c00d6ca:	747d                	lui	s0,0xfffff
1c00d6cc:	a0098793          	addi	a5,s3,-1536
1c00d6d0:	978a                	add	a5,a5,sp
1c00d6d2:	80040513          	addi	a0,s0,-2048 # ffffe800 <__l2_shared_end+0xe3fee800>
1c00d6d6:	a00a0613          	addi	a2,s4,-1536
1c00d6da:	200a0593          	addi	a1,s4,512
1c00d6de:	953e                	add	a0,a0,a5
1c00d6e0:	960a                	add	a2,a2,sp
1c00d6e2:	958a                	add	a1,a1,sp
1c00d6e4:	641000ef          	jal	ra,1c00e524 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00d6e8:	a00a0793          	addi	a5,s4,-1536
1c00d6ec:	978a                	add	a5,a5,sp
1c00d6ee:	a0078713          	addi	a4,a5,-1536
1c00d6f2:	a00a0793          	addi	a5,s4,-1536
1c00d6f6:	978a                	add	a5,a5,sp
1c00d6f8:	80078793          	addi	a5,a5,-2048
1c00d6fc:	883a                	mv	a6,a4
1c00d6fe:	4388                	lw	a0,0(a5)
1c00d700:	43cc                	lw	a1,4(a5)
1c00d702:	4790                	lw	a2,8(a5)
1c00d704:	47d4                	lw	a3,12(a5)
1c00d706:	c308                	sw	a0,0(a4)
1c00d708:	c34c                	sw	a1,4(a4)
1c00d70a:	c710                	sw	a2,8(a4)
1c00d70c:	c754                	sw	a3,12(a4)
1c00d70e:	07c1                	addi	a5,a5,16
1c00d710:	0741                	addi	a4,a4,16
1c00d712:	ff0796e3          	bne	a5,a6,1c00d6fe <PQCLEAN_KYBER1024_CLEAN_indcpa_dec+0x88>
1c00d716:	6789                	lui	a5,0x2
1c00d718:	777d                	lui	a4,0xfffff
1c00d71a:	a0078793          	addi	a5,a5,-1536 # 1a00 <__CTOR_LIST__-0x1bffe604>
1c00d71e:	a0070713          	addi	a4,a4,-1536 # ffffea00 <__l2_shared_end+0xe3feea00>
1c00d722:	978a                	add	a5,a5,sp
1c00d724:	6341                	lui	t1,0x10
1c00d726:	747d                	lui	s0,0xfffff
1c00d728:	973e                	add	a4,a4,a5
1c00d72a:	4581                	li	a1,0
1c00d72c:	137d                	addi	t1,t1,-1
1c00d72e:	10000e13          	li	t3,256
1c00d732:	00071603          	lh	a2,0(a4)
1c00d736:	00471883          	lh	a7,4(a4)
1c00d73a:	00271683          	lh	a3,2(a4)
1c00d73e:	00671803          	lh	a6,6(a4)
1c00d742:	6f05                	lui	t5,0x1
1c00d744:	4015d793          	srai	a5,a1,0x1
1c00d748:	a00f0e93          	addi	t4,t5,-1536 # a00 <__CTOR_LIST__-0x1bfff604>
1c00d74c:	00279513          	slli	a0,a5,0x2
1c00d750:	9e8a                	add	t4,t4,sp
1c00d752:	0642                	slli	a2,a2,0x10
1c00d754:	0068f8b3          	and	a7,a7,t1
1c00d758:	0785                	addi	a5,a5,1
1c00d75a:	06c2                	slli	a3,a3,0x10
1c00d75c:	00687833          	and	a6,a6,t1
1c00d760:	9576                	add	a0,a0,t4
1c00d762:	01166633          	or	a2,a2,a7
1c00d766:	078a                	slli	a5,a5,0x2
1c00d768:	0106e6b3          	or	a3,a3,a6
1c00d76c:	c0c52023          	sw	a2,-1024(a0)
1c00d770:	97f6                	add	a5,a5,t4
1c00d772:	c0d7a023          	sw	a3,-1024(a5)
1c00d776:	0591                	addi	a1,a1,4
1c00d778:	0721                	addi	a4,a4,8
1c00d77a:	fbc59ce3          	bne	a1,t3,1c00d732 <PQCLEAN_KYBER1024_CLEAN_indcpa_dec+0xbc>
1c00d77e:	6989                	lui	s3,0x2
1c00d780:	a0098793          	addi	a5,s3,-1536 # 1a00 <__CTOR_LIST__-0x1bffe604>
1c00d784:	e0040593          	addi	a1,s0,-512 # ffffee00 <__l2_shared_end+0xe3feee00>
1c00d788:	978a                	add	a5,a5,sp
1c00d78a:	00b78933          	add	s2,a5,a1
1c00d78e:	a0098793          	addi	a5,s3,-1536
1c00d792:	978a                	add	a5,a5,sp
1c00d794:	c0040513          	addi	a0,s0,-1024
1c00d798:	85ca                	mv	a1,s2
1c00d79a:	953e                	add	a0,a0,a5
1c00d79c:	c9efe0ef          	jal	ra,1c00bc3a <KYBER_poly_intt>
1c00d7a0:	a0098713          	addi	a4,s3,-1536
1c00d7a4:	80040793          	addi	a5,s0,-2048
1c00d7a8:	970a                	add	a4,a4,sp
1c00d7aa:	97ba                	add	a5,a5,a4
1c00d7ac:	85ca                	mv	a1,s2
1c00d7ae:	10078613          	addi	a2,a5,256
1c00d7b2:	4198                	lw	a4,0(a1)
1c00d7b4:	0789                	addi	a5,a5,2
1c00d7b6:	0591                	addi	a1,a1,4
1c00d7b8:	01075693          	srli	a3,a4,0x10
1c00d7bc:	fed79f23          	sh	a3,-2(a5)
1c00d7c0:	0ee79f23          	sh	a4,254(a5)
1c00d7c4:	fef617e3          	bne	a2,a5,1c00d7b2 <PQCLEAN_KYBER1024_CLEAN_indcpa_dec+0x13c>
1c00d7c8:	6709                	lui	a4,0x2
1c00d7ca:	a0070793          	addi	a5,a4,-1536 # 1a00 <__CTOR_LIST__-0x1bffe604>
1c00d7ce:	747d                	lui	s0,0xfffff
1c00d7d0:	978a                	add	a5,a5,sp
1c00d7d2:	80040413          	addi	s0,s0,-2048 # ffffe800 <__l2_shared_end+0xe3fee800>
1c00d7d6:	943e                	add	s0,s0,a5
1c00d7d8:	75f9                	lui	a1,0xffffe
1c00d7da:	a0070793          	addi	a5,a4,-1536
1c00d7de:	978a                	add	a5,a5,sp
1c00d7e0:	60058593          	addi	a1,a1,1536 # ffffe600 <__l2_shared_end+0xe3fee600>
1c00d7e4:	8622                	mv	a2,s0
1c00d7e6:	95be                	add	a1,a1,a5
1c00d7e8:	8522                	mv	a0,s0
1c00d7ea:	01d000ef          	jal	ra,1c00e006 <PQCLEAN_KYBER1024_CLEAN_poly_sub>
1c00d7ee:	8522                	mv	a0,s0
1c00d7f0:	7c6000ef          	jal	ra,1c00dfb6 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00d7f4:	85a2                	mv	a1,s0
1c00d7f6:	8526                	mv	a0,s1
1c00d7f8:	23d1                	jal	1c00ddbc <PQCLEAN_KYBER1024_CLEAN_poly_tomsg>
1c00d7fa:	6309                	lui	t1,0x2
1c00d7fc:	9f030313          	addi	t1,t1,-1552 # 19f0 <__CTOR_LIST__-0x1bffe614>
1c00d800:	911a                	add	sp,sp,t1
1c00d802:	50b2                	lw	ra,44(sp)
1c00d804:	5422                	lw	s0,40(sp)
1c00d806:	5492                	lw	s1,36(sp)
1c00d808:	5902                	lw	s2,32(sp)
1c00d80a:	49f2                	lw	s3,28(sp)
1c00d80c:	4a62                	lw	s4,24(sp)
1c00d80e:	6145                	addi	sp,sp,48
1c00d810:	8082                	ret

1c00d812 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_dec>:
1c00d812:	92010113          	addi	sp,sp,-1760
1c00d816:	6d612023          	sw	s6,1728(sp)
1c00d81a:	8b2a                	mv	s6,a0
1c00d81c:	850a                	mv	a0,sp
1c00d81e:	6c112e23          	sw	ra,1756(sp)
1c00d822:	6c812c23          	sw	s0,1752(sp)
1c00d826:	6c912a23          	sw	s1,1748(sp)
1c00d82a:	6d212823          	sw	s2,1744(sp)
1c00d82e:	6d312623          	sw	s3,1740(sp)
1c00d832:	6d412423          	sw	s4,1736(sp)
1c00d836:	6d512223          	sw	s5,1732(sp)
1c00d83a:	6b712e23          	sw	s7,1724(sp)
1c00d83e:	6b812c23          	sw	s8,1720(sp)
1c00d842:	6b912a23          	sw	s9,1716(sp)
1c00d846:	6ba12823          	sw	s10,1712(sp)
1c00d84a:	6bb12623          	sw	s11,1708(sp)
1c00d84e:	8432                	mv	s0,a2
1c00d850:	8aae                	mv	s5,a1
1c00d852:	3515                	jal	1c00d676 <PQCLEAN_KYBER1024_CLEAN_indcpa_dec>
1c00d854:	6785                	lui	a5,0x1
1c00d856:	97a2                	add	a5,a5,s0
1c00d858:	c217ca03          	lbu	s4,-991(a5) # c21 <__CTOR_LIST__-0x1bfff3e3>
1c00d85c:	c257c983          	lbu	s3,-987(a5)
1c00d860:	c297c903          	lbu	s2,-983(a5)
1c00d864:	c2d7c083          	lbu	ra,-979(a5)
1c00d868:	c317c583          	lbu	a1,-975(a5)
1c00d86c:	c357c383          	lbu	t2,-971(a5)
1c00d870:	c207cd83          	lbu	s11,-992(a5)
1c00d874:	c247cd03          	lbu	s10,-988(a5)
1c00d878:	c287cc83          	lbu	s9,-984(a5)
1c00d87c:	c2c7cc03          	lbu	s8,-980(a5)
1c00d880:	c307cb83          	lbu	s7,-976(a5)
1c00d884:	c347c503          	lbu	a0,-972(a5)
1c00d888:	c227c283          	lbu	t0,-990(a5)
1c00d88c:	c267cf83          	lbu	t6,-986(a5)
1c00d890:	c2a7cf03          	lbu	t5,-982(a5)
1c00d894:	c2e7ce83          	lbu	t4,-978(a5)
1c00d898:	c327ce03          	lbu	t3,-974(a5)
1c00d89c:	c367c303          	lbu	t1,-970(a5)
1c00d8a0:	c377c483          	lbu	s1,-969(a5)
1c00d8a4:	c237c883          	lbu	a7,-989(a5)
1c00d8a8:	c277c803          	lbu	a6,-985(a5)
1c00d8ac:	c2b7c603          	lbu	a2,-981(a5)
1c00d8b0:	c2f7c683          	lbu	a3,-977(a5)
1c00d8b4:	c337c703          	lbu	a4,-973(a5)
1c00d8b8:	0a22                	slli	s4,s4,0x8
1c00d8ba:	09a2                	slli	s3,s3,0x8
1c00d8bc:	0922                	slli	s2,s2,0x8
1c00d8be:	00a2                	slli	ra,ra,0x8
1c00d8c0:	05a2                	slli	a1,a1,0x8
1c00d8c2:	03a2                	slli	t2,t2,0x8
1c00d8c4:	02c2                	slli	t0,t0,0x10
1c00d8c6:	0fc2                	slli	t6,t6,0x10
1c00d8c8:	0f42                	slli	t5,t5,0x10
1c00d8ca:	0ec2                	slli	t4,t4,0x10
1c00d8cc:	0175e5b3          	or	a1,a1,s7
1c00d8d0:	01ba6a33          	or	s4,s4,s11
1c00d8d4:	01a9e9b3          	or	s3,s3,s10
1c00d8d8:	01996933          	or	s2,s2,s9
1c00d8dc:	0180e0b3          	or	ra,ra,s8
1c00d8e0:	00a3e3b3          	or	t2,t2,a0
1c00d8e4:	0342                	slli	t1,t1,0x10
1c00d8e6:	0e42                	slli	t3,t3,0x10
1c00d8e8:	0142ea33          	or	s4,t0,s4
1c00d8ec:	013fe9b3          	or	s3,t6,s3
1c00d8f0:	012f6933          	or	s2,t5,s2
1c00d8f4:	001ee0b3          	or	ra,t4,ra
1c00d8f8:	00be6e33          	or	t3,t3,a1
1c00d8fc:	007363b3          	or	t2,t1,t2
1c00d900:	01849593          	slli	a1,s1,0x18
1c00d904:	08e2                	slli	a7,a7,0x18
1c00d906:	0862                	slli	a6,a6,0x18
1c00d908:	0662                	slli	a2,a2,0x18
1c00d90a:	06e2                	slli	a3,a3,0x18
1c00d90c:	0762                	slli	a4,a4,0x18
1c00d90e:	0016e6b3          	or	a3,a3,ra
1c00d912:	0148e8b3          	or	a7,a7,s4
1c00d916:	01c76733          	or	a4,a4,t3
1c00d91a:	0075e5b3          	or	a1,a1,t2
1c00d91e:	01386833          	or	a6,a6,s3
1c00d922:	01266633          	or	a2,a2,s2
1c00d926:	c387c303          	lbu	t1,-968(a5)
1c00d92a:	d046                	sw	a7,32(sp)
1c00d92c:	c397c503          	lbu	a0,-967(a5)
1c00d930:	d242                	sw	a6,36(sp)
1c00d932:	d636                	sw	a3,44(sp)
1c00d934:	d83a                	sw	a4,48(sp)
1c00d936:	da2e                	sw	a1,52(sp)
1c00d938:	d432                	sw	a2,40(sp)
1c00d93a:	c3a7c603          	lbu	a2,-966(a5)
1c00d93e:	c3d7c583          	lbu	a1,-963(a5)
1c00d942:	c3c7c803          	lbu	a6,-964(a5)
1c00d946:	c3e7c683          	lbu	a3,-962(a5)
1c00d94a:	c3b7c703          	lbu	a4,-965(a5)
1c00d94e:	c3f7c783          	lbu	a5,-961(a5)
1c00d952:	0522                	slli	a0,a0,0x8
1c00d954:	05a2                	slli	a1,a1,0x8
1c00d956:	00656533          	or	a0,a0,t1
1c00d95a:	0105e5b3          	or	a1,a1,a6
1c00d95e:	0642                	slli	a2,a2,0x10
1c00d960:	06c2                	slli	a3,a3,0x10
1c00d962:	8ecd                	or	a3,a3,a1
1c00d964:	8e49                	or	a2,a2,a0
1c00d966:	0762                	slli	a4,a4,0x18
1c00d968:	07e2                	slli	a5,a5,0x18
1c00d96a:	8f51                	or	a4,a4,a2
1c00d96c:	8fd5                	or	a5,a5,a3
1c00d96e:	858a                	mv	a1,sp
1c00d970:	0088                	addi	a0,sp,64
1c00d972:	04000613          	li	a2,64
1c00d976:	dc3a                	sw	a4,56(sp)
1c00d978:	de3e                	sw	a5,60(sp)
1c00d97a:	f4dfe0ef          	jal	ra,1c00c8c6 <sha3_512>
1c00d97e:	1094                	addi	a3,sp,96
1c00d980:	60040613          	addi	a2,s0,1536
1c00d984:	858a                	mv	a1,sp
1c00d986:	0108                	addi	a0,sp,128
1c00d988:	ebeff0ef          	jal	ra,1c00d046 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc>
1c00d98c:	010c                	addi	a1,sp,128
1c00d98e:	62000613          	li	a2,1568
1c00d992:	8556                	mv	a0,s5
1c00d994:	4ff000ef          	jal	ra,1c00e692 <PQCLEAN_KYBER1024_CLEAN_verify>
1c00d998:	892a                	mv	s2,a0
1c00d99a:	85d6                	mv	a1,s5
1c00d99c:	1088                	addi	a0,sp,96
1c00d99e:	62000613          	li	a2,1568
1c00d9a2:	c45fe0ef          	jal	ra,1c00c5e6 <sha3_256>
1c00d9a6:	6785                	lui	a5,0x1
1c00d9a8:	c4078593          	addi	a1,a5,-960 # c40 <__CTOR_LIST__-0x1bfff3c4>
1c00d9ac:	0ff97693          	andi	a3,s2,255
1c00d9b0:	95a2                	add	a1,a1,s0
1c00d9b2:	0088                	addi	a0,sp,64
1c00d9b4:	02000613          	li	a2,32
1c00d9b8:	5f5000ef          	jal	ra,1c00e7ac <PQCLEAN_KYBER1024_CLEAN_cmov>
1c00d9bc:	855a                	mv	a0,s6
1c00d9be:	0090                	addi	a2,sp,64
1c00d9c0:	04000693          	li	a3,64
1c00d9c4:	02000593          	li	a1,32
1c00d9c8:	99bfe0ef          	jal	ra,1c00c362 <shake256>
1c00d9cc:	6dc12083          	lw	ra,1756(sp)
1c00d9d0:	6d812403          	lw	s0,1752(sp)
1c00d9d4:	6d412483          	lw	s1,1748(sp)
1c00d9d8:	6d012903          	lw	s2,1744(sp)
1c00d9dc:	6cc12983          	lw	s3,1740(sp)
1c00d9e0:	6c812a03          	lw	s4,1736(sp)
1c00d9e4:	6c412a83          	lw	s5,1732(sp)
1c00d9e8:	6c012b03          	lw	s6,1728(sp)
1c00d9ec:	6bc12b83          	lw	s7,1724(sp)
1c00d9f0:	6b812c03          	lw	s8,1720(sp)
1c00d9f4:	6b412c83          	lw	s9,1716(sp)
1c00d9f8:	6b012d03          	lw	s10,1712(sp)
1c00d9fc:	6ac12d83          	lw	s11,1708(sp)
1c00da00:	4501                	li	a0,0
1c00da02:	6e010113          	addi	sp,sp,1760
1c00da06:	8082                	ret

1c00da08 <PQCLEAN_KYBER1024_CLEAN_basemul>:
1c00da08:	00261783          	lh	a5,2(a2)
1c00da0c:	00259703          	lh	a4,2(a1)
1c00da10:	1101                	addi	sp,sp,-32
1c00da12:	cc22                	sw	s0,24(sp)
1c00da14:	842a                	mv	s0,a0
1c00da16:	02f70533          	mul	a0,a4,a5
1c00da1a:	ce06                	sw	ra,28(sp)
1c00da1c:	ca26                	sw	s1,20(sp)
1c00da1e:	c84a                	sw	s2,16(sp)
1c00da20:	c64e                	sw	s3,12(sp)
1c00da22:	892e                	mv	s2,a1
1c00da24:	84b2                	mv	s1,a2
1c00da26:	89b6                	mv	s3,a3
1c00da28:	3b9000ef          	jal	ra,1c00e5e0 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00da2c:	87aa                	mv	a5,a0
1c00da2e:	03350533          	mul	a0,a0,s3
1c00da32:	00f41023          	sh	a5,0(s0)
1c00da36:	3ab000ef          	jal	ra,1c00e5e0 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00da3a:	00a41023          	sh	a0,0(s0)
1c00da3e:	00049783          	lh	a5,0(s1)
1c00da42:	00091503          	lh	a0,0(s2)
1c00da46:	02f50533          	mul	a0,a0,a5
1c00da4a:	397000ef          	jal	ra,1c00e5e0 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00da4e:	00045783          	lhu	a5,0(s0)
1c00da52:	953e                	add	a0,a0,a5
1c00da54:	00a41023          	sh	a0,0(s0)
1c00da58:	00249783          	lh	a5,2(s1)
1c00da5c:	00091503          	lh	a0,0(s2)
1c00da60:	02f50533          	mul	a0,a0,a5
1c00da64:	37d000ef          	jal	ra,1c00e5e0 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00da68:	00a41123          	sh	a0,2(s0)
1c00da6c:	00049783          	lh	a5,0(s1)
1c00da70:	00291503          	lh	a0,2(s2)
1c00da74:	02f50533          	mul	a0,a0,a5
1c00da78:	369000ef          	jal	ra,1c00e5e0 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00da7c:	00245783          	lhu	a5,2(s0)
1c00da80:	40f2                	lw	ra,28(sp)
1c00da82:	44d2                	lw	s1,20(sp)
1c00da84:	953e                	add	a0,a0,a5
1c00da86:	00a41123          	sh	a0,2(s0)
1c00da8a:	4462                	lw	s0,24(sp)
1c00da8c:	4942                	lw	s2,16(sp)
1c00da8e:	49b2                	lw	s3,12(sp)
1c00da90:	6105                	addi	sp,sp,32
1c00da92:	8082                	ret

1c00da94 <PQCLEAN_KYBER1024_CLEAN_poly_compress>:
1c00da94:	1101                	addi	sp,sp,-32
1c00da96:	6605                	lui	a2,0x1
1c00da98:	ce22                	sw	s0,28(sp)
1c00da9a:	cc26                	sw	s1,24(sp)
1c00da9c:	ca4a                	sw	s2,20(sp)
1c00da9e:	c84e                	sw	s3,16(sp)
1c00daa0:	c652                	sw	s4,12(sp)
1c00daa2:	0a050813          	addi	a6,a0,160
1c00daa6:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00daaa:	00459a03          	lh	s4,4(a1)
1c00daae:	00659983          	lh	s3,6(a1)
1c00dab2:	00a59903          	lh	s2,10(a1)
1c00dab6:	00c59483          	lh	s1,12(a1)
1c00daba:	00259403          	lh	s0,2(a1)
1c00dabe:	40fa5713          	srai	a4,s4,0xf
1c00dac2:	40f9d893          	srai	a7,s3,0xf
1c00dac6:	40f95793          	srai	a5,s2,0xf
1c00daca:	40f4d693          	srai	a3,s1,0xf
1c00dace:	40f45f13          	srai	t5,s0,0xf
1c00dad2:	8f71                	and	a4,a4,a2
1c00dad4:	00c8f8b3          	and	a7,a7,a2
1c00dad8:	8ff1                	and	a5,a5,a2
1c00dada:	8ef1                	and	a3,a3,a2
1c00dadc:	00cf7f33          	and	t5,t5,a2
1c00dae0:	9752                	add	a4,a4,s4
1c00dae2:	98ce                	add	a7,a7,s3
1c00dae4:	97ca                	add	a5,a5,s2
1c00dae6:	96a6                	add	a3,a3,s1
1c00dae8:	9f22                	add	t5,t5,s0
1c00daea:	08c2                	slli	a7,a7,0x10
1c00daec:	06c2                	slli	a3,a3,0x10
1c00daee:	0742                	slli	a4,a4,0x10
1c00daf0:	07c2                	slli	a5,a5,0x10
1c00daf2:	4108d893          	srai	a7,a7,0x10
1c00daf6:	86c1                	srai	a3,a3,0x10
1c00daf8:	8741                	srai	a4,a4,0x10
1c00dafa:	87c1                	srai	a5,a5,0x10
1c00dafc:	0f42                	slli	t5,t5,0x10
1c00dafe:	410f5f13          	srai	t5,t5,0x10
1c00db02:	0896                	slli	a7,a7,0x5
1c00db04:	0696                	slli	a3,a3,0x5
1c00db06:	0716                	slli	a4,a4,0x5
1c00db08:	0796                	slli	a5,a5,0x5
1c00db0a:	0f16                	slli	t5,t5,0x5
1c00db0c:	68088893          	addi	a7,a7,1664
1c00db10:	68068693          	addi	a3,a3,1664
1c00db14:	68070713          	addi	a4,a4,1664
1c00db18:	68078793          	addi	a5,a5,1664
1c00db1c:	02c8d8b3          	divu	a7,a7,a2
1c00db20:	680f0f13          	addi	t5,t5,1664
1c00db24:	00859383          	lh	t2,8(a1)
1c00db28:	00e59283          	lh	t0,14(a1)
1c00db2c:	00059f83          	lh	t6,0(a1)
1c00db30:	40f3de93          	srai	t4,t2,0xf
1c00db34:	00cefeb3          	and	t4,t4,a2
1c00db38:	9e9e                	add	t4,t4,t2
1c00db3a:	40f2d313          	srai	t1,t0,0xf
1c00db3e:	0ec2                	slli	t4,t4,0x10
1c00db40:	40ffde13          	srai	t3,t6,0xf
1c00db44:	00c37333          	and	t1,t1,a2
1c00db48:	410ede93          	srai	t4,t4,0x10
1c00db4c:	9316                	add	t1,t1,t0
1c00db4e:	00ce7e33          	and	t3,t3,a2
1c00db52:	0e96                	slli	t4,t4,0x5
1c00db54:	9e7e                	add	t3,t3,t6
1c00db56:	0342                	slli	t1,t1,0x10
1c00db58:	680e8e93          	addi	t4,t4,1664
1c00db5c:	41035313          	srai	t1,t1,0x10
1c00db60:	0e42                	slli	t3,t3,0x10
1c00db62:	410e5e13          	srai	t3,t3,0x10
1c00db66:	0316                	slli	t1,t1,0x5
1c00db68:	0515                	addi	a0,a0,5
1c00db6a:	68030313          	addi	t1,t1,1664
1c00db6e:	0e16                	slli	t3,t3,0x5
1c00db70:	680e0e13          	addi	t3,t3,1664
1c00db74:	05c1                	addi	a1,a1,16
1c00db76:	02c6d6b3          	divu	a3,a3,a2
1c00db7a:	01f8f893          	andi	a7,a7,31
1c00db7e:	00789293          	slli	t0,a7,0x7
1c00db82:	0018d893          	srli	a7,a7,0x1
1c00db86:	02c75733          	divu	a4,a4,a2
1c00db8a:	8afd                	andi	a3,a3,31
1c00db8c:	00669f93          	slli	t6,a3,0x6
1c00db90:	8289                	srli	a3,a3,0x2
1c00db92:	02c7d7b3          	divu	a5,a5,a2
1c00db96:	8b7d                	andi	a4,a4,31
1c00db98:	070a                	slli	a4,a4,0x2
1c00db9a:	00576733          	or	a4,a4,t0
1c00db9e:	02cf5f33          	divu	t5,t5,a2
1c00dba2:	8bfd                	andi	a5,a5,31
1c00dba4:	0786                	slli	a5,a5,0x1
1c00dba6:	01f7e7b3          	or	a5,a5,t6
1c00dbaa:	01ff7f13          	andi	t5,t5,31
1c00dbae:	02cedeb3          	divu	t4,t4,a2
1c00dbb2:	005f1f93          	slli	t6,t5,0x5
1c00dbb6:	003f5f13          	srli	t5,t5,0x3
1c00dbba:	01e76733          	or	a4,a4,t5
1c00dbbe:	fee50e23          	sb	a4,-4(a0)
1c00dbc2:	02c35733          	divu	a4,t1,a2
1c00dbc6:	01fefe93          	andi	t4,t4,31
1c00dbca:	004e9313          	slli	t1,t4,0x4
1c00dbce:	004ede93          	srli	t4,t4,0x4
1c00dbd2:	01d7e7b3          	or	a5,a5,t4
1c00dbd6:	fef50f23          	sb	a5,-2(a0)
1c00dbda:	0068e8b3          	or	a7,a7,t1
1c00dbde:	ff150ea3          	sb	a7,-3(a0)
1c00dbe2:	02ce5e33          	divu	t3,t3,a2
1c00dbe6:	01f77793          	andi	a5,a4,31
1c00dbea:	078e                	slli	a5,a5,0x3
1c00dbec:	8edd                	or	a3,a3,a5
1c00dbee:	fed50fa3          	sb	a3,-1(a0)
1c00dbf2:	01fe7e13          	andi	t3,t3,31
1c00dbf6:	01fe6e33          	or	t3,t3,t6
1c00dbfa:	ffc50da3          	sb	t3,-5(a0)
1c00dbfe:	eb0516e3          	bne	a0,a6,1c00daaa <PQCLEAN_KYBER1024_CLEAN_poly_compress+0x16>
1c00dc02:	4472                	lw	s0,28(sp)
1c00dc04:	44e2                	lw	s1,24(sp)
1c00dc06:	4952                	lw	s2,20(sp)
1c00dc08:	49c2                	lw	s3,16(sp)
1c00dc0a:	4a32                	lw	s4,12(sp)
1c00dc0c:	6105                	addi	sp,sp,32
1c00dc0e:	8082                	ret

1c00dc10 <PQCLEAN_KYBER1024_CLEAN_poly_decompress>:
1c00dc10:	1141                	addi	sp,sp,-16
1c00dc12:	6885                	lui	a7,0x1
1c00dc14:	c622                	sw	s0,12(sp)
1c00dc16:	0a058313          	addi	t1,a1,160
1c00dc1a:	d0188893          	addi	a7,a7,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00dc1e:	0035c703          	lbu	a4,3(a1)
1c00dc22:	0025c783          	lbu	a5,2(a1)
1c00dc26:	0015c683          	lbu	a3,1(a1)
1c00dc2a:	0005cf03          	lbu	t5,0(a1)
1c00dc2e:	0045ce83          	lbu	t4,4(a1)
1c00dc32:	00179393          	slli	t2,a5,0x1
1c00dc36:	00471293          	slli	t0,a4,0x4
1c00dc3a:	8391                	srli	a5,a5,0x4
1c00dc3c:	00369413          	slli	s0,a3,0x3
1c00dc40:	0076d813          	srli	a6,a3,0x7
1c00dc44:	0057e7b3          	or	a5,a5,t0
1c00dc48:	8289                	srli	a3,a3,0x2
1c00dc4a:	005f5e13          	srli	t3,t5,0x5
1c00dc4e:	00675613          	srli	a2,a4,0x6
1c00dc52:	002e9f93          	slli	t6,t4,0x2
1c00dc56:	8afd                	andi	a3,a3,31
1c00dc58:	8bfd                	andi	a5,a5,31
1c00dc5a:	031686b3          	mul	a3,a3,a7
1c00dc5e:	008e6e33          	or	t3,t3,s0
1c00dc62:	00786833          	or	a6,a6,t2
1c00dc66:	8305                	srli	a4,a4,0x1
1c00dc68:	01f66633          	or	a2,a2,t6
1c00dc6c:	01ff7f13          	andi	t5,t5,31
1c00dc70:	01fe7e13          	andi	t3,t3,31
1c00dc74:	01f87813          	andi	a6,a6,31
1c00dc78:	8b7d                	andi	a4,a4,31
1c00dc7a:	8a7d                	andi	a2,a2,31
1c00dc7c:	031787b3          	mul	a5,a5,a7
1c00dc80:	003ede93          	srli	t4,t4,0x3
1c00dc84:	06c1                	addi	a3,a3,16
1c00dc86:	0541                	addi	a0,a0,16
1c00dc88:	8295                	srli	a3,a3,0x5
1c00dc8a:	fed51a23          	sh	a3,-12(a0)
1c00dc8e:	0595                	addi	a1,a1,5
1c00dc90:	031f0f33          	mul	t5,t5,a7
1c00dc94:	07c1                	addi	a5,a5,16
1c00dc96:	8395                	srli	a5,a5,0x5
1c00dc98:	fef51c23          	sh	a5,-8(a0)
1c00dc9c:	031e0e33          	mul	t3,t3,a7
1c00dca0:	0f41                	addi	t5,t5,16
1c00dca2:	005f5f13          	srli	t5,t5,0x5
1c00dca6:	ffe51823          	sh	t5,-16(a0)
1c00dcaa:	03180833          	mul	a6,a6,a7
1c00dcae:	0e41                	addi	t3,t3,16
1c00dcb0:	005e5e13          	srli	t3,t3,0x5
1c00dcb4:	ffc51923          	sh	t3,-14(a0)
1c00dcb8:	03170733          	mul	a4,a4,a7
1c00dcbc:	01080693          	addi	a3,a6,16 # ff010010 <__l2_shared_end+0xe3000010>
1c00dcc0:	8295                	srli	a3,a3,0x5
1c00dcc2:	fed51b23          	sh	a3,-10(a0)
1c00dcc6:	03160633          	mul	a2,a2,a7
1c00dcca:	01070793          	addi	a5,a4,16
1c00dcce:	8395                	srli	a5,a5,0x5
1c00dcd0:	fef51d23          	sh	a5,-6(a0)
1c00dcd4:	031e8eb3          	mul	t4,t4,a7
1c00dcd8:	0641                	addi	a2,a2,16
1c00dcda:	8215                	srli	a2,a2,0x5
1c00dcdc:	fec51e23          	sh	a2,-4(a0)
1c00dce0:	0ec1                	addi	t4,t4,16
1c00dce2:	005ede93          	srli	t4,t4,0x5
1c00dce6:	ffd51f23          	sh	t4,-2(a0)
1c00dcea:	f2659ae3          	bne	a1,t1,1c00dc1e <PQCLEAN_KYBER1024_CLEAN_poly_decompress+0xe>
1c00dcee:	4432                	lw	s0,12(sp)
1c00dcf0:	0141                	addi	sp,sp,16
1c00dcf2:	8082                	ret

1c00dcf4 <PQCLEAN_KYBER1024_CLEAN_poly_frombytes>:
1c00dcf4:	6685                	lui	a3,0x1
1c00dcf6:	18058613          	addi	a2,a1,384
1c00dcfa:	16fd                	addi	a3,a3,-1
1c00dcfc:	0015c783          	lbu	a5,1(a1)
1c00dd00:	0005c703          	lbu	a4,0(a1)
1c00dd04:	058d                	addi	a1,a1,3
1c00dd06:	07a2                	slli	a5,a5,0x8
1c00dd08:	8fd9                	or	a5,a5,a4
1c00dd0a:	8ff5                	and	a5,a5,a3
1c00dd0c:	00f51023          	sh	a5,0(a0)
1c00dd10:	ffe5c703          	lbu	a4,-2(a1)
1c00dd14:	fff5c783          	lbu	a5,-1(a1)
1c00dd18:	0511                	addi	a0,a0,4
1c00dd1a:	8311                	srli	a4,a4,0x4
1c00dd1c:	0792                	slli	a5,a5,0x4
1c00dd1e:	8fd9                	or	a5,a5,a4
1c00dd20:	fef51f23          	sh	a5,-2(a0)
1c00dd24:	fcb61ce3          	bne	a2,a1,1c00dcfc <PQCLEAN_KYBER1024_CLEAN_poly_frombytes+0x8>
1c00dd28:	8082                	ret

1c00dd2a <PQCLEAN_KYBER1024_CLEAN_poly_frommsg>:
1c00dd2a:	20050713          	addi	a4,a0,512
1c00dd2e:	0005c783          	lbu	a5,0(a1)
1c00dd32:	0541                	addi	a0,a0,16
1c00dd34:	0585                	addi	a1,a1,1
1c00dd36:	8b85                	andi	a5,a5,1
1c00dd38:	40f007b3          	neg	a5,a5
1c00dd3c:	6817f793          	andi	a5,a5,1665
1c00dd40:	fef51823          	sh	a5,-16(a0)
1c00dd44:	fff5c783          	lbu	a5,-1(a1)
1c00dd48:	07fa                	slli	a5,a5,0x1e
1c00dd4a:	87fd                	srai	a5,a5,0x1f
1c00dd4c:	6817f793          	andi	a5,a5,1665
1c00dd50:	fef51923          	sh	a5,-14(a0)
1c00dd54:	fff5c783          	lbu	a5,-1(a1)
1c00dd58:	07f6                	slli	a5,a5,0x1d
1c00dd5a:	87fd                	srai	a5,a5,0x1f
1c00dd5c:	6817f793          	andi	a5,a5,1665
1c00dd60:	fef51a23          	sh	a5,-12(a0)
1c00dd64:	fff5c783          	lbu	a5,-1(a1)
1c00dd68:	07f2                	slli	a5,a5,0x1c
1c00dd6a:	87fd                	srai	a5,a5,0x1f
1c00dd6c:	6817f793          	andi	a5,a5,1665
1c00dd70:	fef51b23          	sh	a5,-10(a0)
1c00dd74:	fff5c783          	lbu	a5,-1(a1)
1c00dd78:	07ee                	slli	a5,a5,0x1b
1c00dd7a:	87fd                	srai	a5,a5,0x1f
1c00dd7c:	6817f793          	andi	a5,a5,1665
1c00dd80:	fef51c23          	sh	a5,-8(a0)
1c00dd84:	fff5c783          	lbu	a5,-1(a1)
1c00dd88:	07ea                	slli	a5,a5,0x1a
1c00dd8a:	87fd                	srai	a5,a5,0x1f
1c00dd8c:	6817f793          	andi	a5,a5,1665
1c00dd90:	fef51d23          	sh	a5,-6(a0)
1c00dd94:	fff5c783          	lbu	a5,-1(a1)
1c00dd98:	07e6                	slli	a5,a5,0x19
1c00dd9a:	87fd                	srai	a5,a5,0x1f
1c00dd9c:	6817f793          	andi	a5,a5,1665
1c00dda0:	fef51e23          	sh	a5,-4(a0)
1c00dda4:	fff5c783          	lbu	a5,-1(a1)
1c00dda8:	879d                	srai	a5,a5,0x7
1c00ddaa:	40f007b3          	neg	a5,a5
1c00ddae:	6817f793          	andi	a5,a5,1665
1c00ddb2:	fef51f23          	sh	a5,-2(a0)
1c00ddb6:	f6a71ce3          	bne	a4,a0,1c00dd2e <PQCLEAN_KYBER1024_CLEAN_poly_frommsg+0x4>
1c00ddba:	8082                	ret

1c00ddbc <PQCLEAN_KYBER1024_CLEAN_poly_tomsg>:
1c00ddbc:	6685                	lui	a3,0x1
1c00ddbe:	20058613          	addi	a2,a1,512
1c00ddc2:	d0168693          	addi	a3,a3,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00ddc6:	00050023          	sb	zero,0(a0)
1c00ddca:	00059783          	lh	a5,0(a1)
1c00ddce:	0505                	addi	a0,a0,1
1c00ddd0:	05c1                	addi	a1,a1,16
1c00ddd2:	40f7d713          	srai	a4,a5,0xf
1c00ddd6:	8f75                	and	a4,a4,a3
1c00ddd8:	97ba                	add	a5,a5,a4
1c00ddda:	07c2                	slli	a5,a5,0x10
1c00dddc:	83c1                	srli	a5,a5,0x10
1c00ddde:	0786                	slli	a5,a5,0x1
1c00dde0:	68078793          	addi	a5,a5,1664
1c00dde4:	02d7c7b3          	div	a5,a5,a3
1c00dde8:	0017f813          	andi	a6,a5,1
1c00ddec:	ff050fa3          	sb	a6,-1(a0)
1c00ddf0:	ff259703          	lh	a4,-14(a1)
1c00ddf4:	40f75793          	srai	a5,a4,0xf
1c00ddf8:	8ff5                	and	a5,a5,a3
1c00ddfa:	97ba                	add	a5,a5,a4
1c00ddfc:	07c2                	slli	a5,a5,0x10
1c00ddfe:	83c1                	srli	a5,a5,0x10
1c00de00:	0786                	slli	a5,a5,0x1
1c00de02:	68078793          	addi	a5,a5,1664
1c00de06:	02d7c7b3          	div	a5,a5,a3
1c00de0a:	8b85                	andi	a5,a5,1
1c00de0c:	0786                	slli	a5,a5,0x1
1c00de0e:	0107e7b3          	or	a5,a5,a6
1c00de12:	fef50fa3          	sb	a5,-1(a0)
1c00de16:	ff459703          	lh	a4,-12(a1)
1c00de1a:	40f75813          	srai	a6,a4,0xf
1c00de1e:	00d87833          	and	a6,a6,a3
1c00de22:	9742                	add	a4,a4,a6
1c00de24:	0742                	slli	a4,a4,0x10
1c00de26:	8341                	srli	a4,a4,0x10
1c00de28:	0706                	slli	a4,a4,0x1
1c00de2a:	68070713          	addi	a4,a4,1664
1c00de2e:	02d74733          	div	a4,a4,a3
1c00de32:	8b05                	andi	a4,a4,1
1c00de34:	070a                	slli	a4,a4,0x2
1c00de36:	8fd9                	or	a5,a5,a4
1c00de38:	fef50fa3          	sb	a5,-1(a0)
1c00de3c:	ff659703          	lh	a4,-10(a1)
1c00de40:	40f75813          	srai	a6,a4,0xf
1c00de44:	00d87833          	and	a6,a6,a3
1c00de48:	9742                	add	a4,a4,a6
1c00de4a:	0742                	slli	a4,a4,0x10
1c00de4c:	8341                	srli	a4,a4,0x10
1c00de4e:	0706                	slli	a4,a4,0x1
1c00de50:	68070713          	addi	a4,a4,1664
1c00de54:	02d74733          	div	a4,a4,a3
1c00de58:	8b05                	andi	a4,a4,1
1c00de5a:	070e                	slli	a4,a4,0x3
1c00de5c:	8fd9                	or	a5,a5,a4
1c00de5e:	fef50fa3          	sb	a5,-1(a0)
1c00de62:	ff859703          	lh	a4,-8(a1)
1c00de66:	40f75813          	srai	a6,a4,0xf
1c00de6a:	00d87833          	and	a6,a6,a3
1c00de6e:	9742                	add	a4,a4,a6
1c00de70:	0742                	slli	a4,a4,0x10
1c00de72:	8341                	srli	a4,a4,0x10
1c00de74:	0706                	slli	a4,a4,0x1
1c00de76:	68070713          	addi	a4,a4,1664
1c00de7a:	02d74733          	div	a4,a4,a3
1c00de7e:	8b05                	andi	a4,a4,1
1c00de80:	0712                	slli	a4,a4,0x4
1c00de82:	8fd9                	or	a5,a5,a4
1c00de84:	fef50fa3          	sb	a5,-1(a0)
1c00de88:	ffa59703          	lh	a4,-6(a1)
1c00de8c:	40f75813          	srai	a6,a4,0xf
1c00de90:	00d87833          	and	a6,a6,a3
1c00de94:	9742                	add	a4,a4,a6
1c00de96:	0742                	slli	a4,a4,0x10
1c00de98:	8341                	srli	a4,a4,0x10
1c00de9a:	0706                	slli	a4,a4,0x1
1c00de9c:	68070713          	addi	a4,a4,1664
1c00dea0:	02d74733          	div	a4,a4,a3
1c00dea4:	8b05                	andi	a4,a4,1
1c00dea6:	0716                	slli	a4,a4,0x5
1c00dea8:	8fd9                	or	a5,a5,a4
1c00deaa:	fef50fa3          	sb	a5,-1(a0)
1c00deae:	ffc59703          	lh	a4,-4(a1)
1c00deb2:	40f75813          	srai	a6,a4,0xf
1c00deb6:	00d87833          	and	a6,a6,a3
1c00deba:	9742                	add	a4,a4,a6
1c00debc:	0742                	slli	a4,a4,0x10
1c00debe:	8341                	srli	a4,a4,0x10
1c00dec0:	0706                	slli	a4,a4,0x1
1c00dec2:	68070713          	addi	a4,a4,1664
1c00dec6:	02d74733          	div	a4,a4,a3
1c00deca:	8b05                	andi	a4,a4,1
1c00decc:	071a                	slli	a4,a4,0x6
1c00dece:	8fd9                	or	a5,a5,a4
1c00ded0:	fef50fa3          	sb	a5,-1(a0)
1c00ded4:	ffe59703          	lh	a4,-2(a1)
1c00ded8:	40f75813          	srai	a6,a4,0xf
1c00dedc:	00d87833          	and	a6,a6,a3
1c00dee0:	9742                	add	a4,a4,a6
1c00dee2:	0742                	slli	a4,a4,0x10
1c00dee4:	8341                	srli	a4,a4,0x10
1c00dee6:	0706                	slli	a4,a4,0x1
1c00dee8:	68070713          	addi	a4,a4,1664
1c00deec:	02d74733          	div	a4,a4,a3
1c00def0:	8b05                	andi	a4,a4,1
1c00def2:	071e                	slli	a4,a4,0x7
1c00def4:	8fd9                	or	a5,a5,a4
1c00def6:	fef50fa3          	sb	a5,-1(a0)
1c00defa:	ecb616e3          	bne	a2,a1,1c00ddc6 <PQCLEAN_KYBER1024_CLEAN_poly_tomsg+0xa>
1c00defe:	8082                	ret

1c00df00 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>:
1c00df00:	7175                	addi	sp,sp,-144
1c00df02:	c522                	sw	s0,136(sp)
1c00df04:	86b2                	mv	a3,a2
1c00df06:	842a                	mv	s0,a0
1c00df08:	862e                	mv	a2,a1
1c00df0a:	850a                	mv	a0,sp
1c00df0c:	08000593          	li	a1,128
1c00df10:	c706                	sw	ra,140(sp)
1c00df12:	2799                	jal	1c00e658 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c00df14:	858a                	mv	a1,sp
1c00df16:	8522                	mv	a0,s0
1c00df18:	d81fd0ef          	jal	ra,1c00bc98 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>
1c00df1c:	40ba                	lw	ra,140(sp)
1c00df1e:	442a                	lw	s0,136(sp)
1c00df20:	6149                	addi	sp,sp,144
1c00df22:	8082                	ret

1c00df24 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>:
1c00df24:	7175                	addi	sp,sp,-144
1c00df26:	c522                	sw	s0,136(sp)
1c00df28:	86b2                	mv	a3,a2
1c00df2a:	842a                	mv	s0,a0
1c00df2c:	862e                	mv	a2,a1
1c00df2e:	850a                	mv	a0,sp
1c00df30:	08000593          	li	a1,128
1c00df34:	c706                	sw	ra,140(sp)
1c00df36:	270d                	jal	1c00e658 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c00df38:	858a                	mv	a1,sp
1c00df3a:	8522                	mv	a0,s0
1c00df3c:	e5ffd0ef          	jal	ra,1c00bd9a <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2>
1c00df40:	40ba                	lw	ra,140(sp)
1c00df42:	442a                	lw	s0,136(sp)
1c00df44:	6149                	addi	sp,sp,144
1c00df46:	8082                	ret

1c00df48 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>:
1c00df48:	1101                	addi	sp,sp,-32
1c00df4a:	c452                	sw	s4,8(sp)
1c00df4c:	c256                	sw	s5,4(sp)
1c00df4e:	1c000a37          	lui	s4,0x1c000
1c00df52:	1c000ab7          	lui	s5,0x1c000
1c00df56:	ca26                	sw	s1,20(sp)
1c00df58:	c84a                	sw	s2,16(sp)
1c00df5a:	c64e                	sw	s3,12(sp)
1c00df5c:	ce06                	sw	ra,28(sp)
1c00df5e:	cc22                	sw	s0,24(sp)
1c00df60:	1c8a0a13          	addi	s4,s4,456 # 1c0001c8 <PQCLEAN_KYBER1024_CLEAN_zetas+0x80>
1c00df64:	00450993          	addi	s3,a0,4
1c00df68:	00458913          	addi	s2,a1,4
1c00df6c:	00460493          	addi	s1,a2,4
1c00df70:	248a8a93          	addi	s5,s5,584 # 1c000248 <PQCLEAN_KYBER1024_CLEAN_zetas+0x100>
1c00df74:	000a1403          	lh	s0,0(s4)
1c00df78:	ffc48613          	addi	a2,s1,-4
1c00df7c:	ffc90593          	addi	a1,s2,-4
1c00df80:	ffc98513          	addi	a0,s3,-4
1c00df84:	86a2                	mv	a3,s0
1c00df86:	3449                	jal	1c00da08 <PQCLEAN_KYBER1024_CLEAN_basemul>
1c00df88:	408006b3          	neg	a3,s0
1c00df8c:	06c2                	slli	a3,a3,0x10
1c00df8e:	8626                	mv	a2,s1
1c00df90:	85ca                	mv	a1,s2
1c00df92:	854e                	mv	a0,s3
1c00df94:	86c1                	srai	a3,a3,0x10
1c00df96:	0a09                	addi	s4,s4,2
1c00df98:	3c85                	jal	1c00da08 <PQCLEAN_KYBER1024_CLEAN_basemul>
1c00df9a:	09a1                	addi	s3,s3,8
1c00df9c:	0921                	addi	s2,s2,8
1c00df9e:	04a1                	addi	s1,s1,8
1c00dfa0:	fd4a9ae3          	bne	s5,s4,1c00df74 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery+0x2c>
1c00dfa4:	40f2                	lw	ra,28(sp)
1c00dfa6:	4462                	lw	s0,24(sp)
1c00dfa8:	44d2                	lw	s1,20(sp)
1c00dfaa:	4942                	lw	s2,16(sp)
1c00dfac:	49b2                	lw	s3,12(sp)
1c00dfae:	4a22                	lw	s4,8(sp)
1c00dfb0:	4a92                	lw	s5,4(sp)
1c00dfb2:	6105                	addi	sp,sp,32
1c00dfb4:	8082                	ret

1c00dfb6 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>:
1c00dfb6:	1141                	addi	sp,sp,-16
1c00dfb8:	c422                	sw	s0,8(sp)
1c00dfba:	c226                	sw	s1,4(sp)
1c00dfbc:	c606                	sw	ra,12(sp)
1c00dfbe:	842a                	mv	s0,a0
1c00dfc0:	20050493          	addi	s1,a0,512
1c00dfc4:	00041503          	lh	a0,0(s0)
1c00dfc8:	0409                	addi	s0,s0,2
1c00dfca:	2d0d                	jal	1c00e5fc <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c00dfcc:	fea41f23          	sh	a0,-2(s0)
1c00dfd0:	fe941ae3          	bne	s0,s1,1c00dfc4 <PQCLEAN_KYBER1024_CLEAN_poly_reduce+0xe>
1c00dfd4:	40b2                	lw	ra,12(sp)
1c00dfd6:	4422                	lw	s0,8(sp)
1c00dfd8:	4492                	lw	s1,4(sp)
1c00dfda:	0141                	addi	sp,sp,16
1c00dfdc:	8082                	ret

1c00dfde <PQCLEAN_KYBER1024_CLEAN_poly_add>:
1c00dfde:	4781                	li	a5,0
1c00dfe0:	20000893          	li	a7,512
1c00dfe4:	00f606b3          	add	a3,a2,a5
1c00dfe8:	00f58733          	add	a4,a1,a5
1c00dfec:	0006d803          	lhu	a6,0(a3)
1c00dff0:	00075703          	lhu	a4,0(a4)
1c00dff4:	00f506b3          	add	a3,a0,a5
1c00dff8:	0789                	addi	a5,a5,2
1c00dffa:	9742                	add	a4,a4,a6
1c00dffc:	00e69023          	sh	a4,0(a3)
1c00e000:	ff1792e3          	bne	a5,a7,1c00dfe4 <PQCLEAN_KYBER1024_CLEAN_poly_add+0x6>
1c00e004:	8082                	ret

1c00e006 <PQCLEAN_KYBER1024_CLEAN_poly_sub>:
1c00e006:	4781                	li	a5,0
1c00e008:	20000893          	li	a7,512
1c00e00c:	00f606b3          	add	a3,a2,a5
1c00e010:	00f58733          	add	a4,a1,a5
1c00e014:	0006d803          	lhu	a6,0(a3)
1c00e018:	00075703          	lhu	a4,0(a4)
1c00e01c:	00f506b3          	add	a3,a0,a5
1c00e020:	0789                	addi	a5,a5,2
1c00e022:	41070733          	sub	a4,a4,a6
1c00e026:	00e69023          	sh	a4,0(a3)
1c00e02a:	ff1791e3          	bne	a5,a7,1c00e00c <PQCLEAN_KYBER1024_CLEAN_poly_sub+0x6>
1c00e02e:	8082                	ret

1c00e030 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress>:
1c00e030:	1101                	addi	sp,sp,-32
1c00e032:	6605                	lui	a2,0x1
1c00e034:	ce22                	sw	s0,28(sp)
1c00e036:	cc26                	sw	s1,24(sp)
1c00e038:	ca4a                	sw	s2,20(sp)
1c00e03a:	c84e                	sw	s3,16(sp)
1c00e03c:	c652                	sw	s4,12(sp)
1c00e03e:	c456                	sw	s5,8(sp)
1c00e040:	c25a                	sw	s6,4(sp)
1c00e042:	16050813          	addi	a6,a0,352
1c00e046:	88ae                	mv	a7,a1
1c00e048:	6e050313          	addi	t1,a0,1760
1c00e04c:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00e050:	ea080593          	addi	a1,a6,-352
1c00e054:	8546                	mv	a0,a7
1c00e056:	00051b03          	lh	s6,0(a0)
1c00e05a:	00251a83          	lh	s5,2(a0)
1c00e05e:	00451a03          	lh	s4,4(a0)
1c00e062:	40fb5e13          	srai	t3,s6,0xf
1c00e066:	40fad713          	srai	a4,s5,0xf
1c00e06a:	40fa5693          	srai	a3,s4,0xf
1c00e06e:	00ce7e33          	and	t3,t3,a2
1c00e072:	8f71                	and	a4,a4,a2
1c00e074:	8ef1                	and	a3,a3,a2
1c00e076:	9e5a                	add	t3,t3,s6
1c00e078:	9756                	add	a4,a4,s5
1c00e07a:	96d2                	add	a3,a3,s4
1c00e07c:	0e42                	slli	t3,t3,0x10
1c00e07e:	0742                	slli	a4,a4,0x10
1c00e080:	010e5e13          	srli	t3,t3,0x10
1c00e084:	8341                	srli	a4,a4,0x10
1c00e086:	06c2                	slli	a3,a3,0x10
1c00e088:	82c1                	srli	a3,a3,0x10
1c00e08a:	0e2e                	slli	t3,t3,0xb
1c00e08c:	072e                	slli	a4,a4,0xb
1c00e08e:	06ae                	slli	a3,a3,0xb
1c00e090:	680e0e13          	addi	t3,t3,1664
1c00e094:	68070713          	addi	a4,a4,1664
1c00e098:	02ce5e33          	divu	t3,t3,a2
1c00e09c:	68068693          	addi	a3,a3,1664
1c00e0a0:	00651983          	lh	s3,6(a0)
1c00e0a4:	00851903          	lh	s2,8(a0)
1c00e0a8:	00e51383          	lh	t2,14(a0)
1c00e0ac:	40f9d793          	srai	a5,s3,0xf
1c00e0b0:	8ff1                	and	a5,a5,a2
1c00e0b2:	40f95f93          	srai	t6,s2,0xf
1c00e0b6:	97ce                	add	a5,a5,s3
1c00e0b8:	00cfffb3          	and	t6,t6,a2
1c00e0bc:	07c2                	slli	a5,a5,0x10
1c00e0be:	40f3df13          	srai	t5,t2,0xf
1c00e0c2:	9fca                	add	t6,t6,s2
1c00e0c4:	83c1                	srli	a5,a5,0x10
1c00e0c6:	05ad                	addi	a1,a1,11
1c00e0c8:	00cf7f33          	and	t5,t5,a2
1c00e0cc:	0fc2                	slli	t6,t6,0x10
1c00e0ce:	07ae                	slli	a5,a5,0xb
1c00e0d0:	00a51483          	lh	s1,10(a0)
1c00e0d4:	00c51403          	lh	s0,12(a0)
1c00e0d8:	9f1e                	add	t5,t5,t2
1c00e0da:	010fdf93          	srli	t6,t6,0x10
1c00e0de:	68078793          	addi	a5,a5,1664
1c00e0e2:	0fae                	slli	t6,t6,0xb
1c00e0e4:	680f8f93          	addi	t6,t6,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00e0e8:	40f4d293          	srai	t0,s1,0xf
1c00e0ec:	00c2f2b3          	and	t0,t0,a2
1c00e0f0:	40f45e93          	srai	t4,s0,0xf
1c00e0f4:	92a6                	add	t0,t0,s1
1c00e0f6:	00cefeb3          	and	t4,t4,a2
1c00e0fa:	02c2                	slli	t0,t0,0x10
1c00e0fc:	9ea2                	add	t4,t4,s0
1c00e0fe:	0102d293          	srli	t0,t0,0x10
1c00e102:	0ec2                	slli	t4,t4,0x10
1c00e104:	02c75733          	divu	a4,a4,a2
1c00e108:	7ffe7e13          	andi	t3,t3,2047
1c00e10c:	008e5393          	srli	t2,t3,0x8
1c00e110:	ffc58aa3          	sb	t3,-11(a1)
1c00e114:	02ae                	slli	t0,t0,0xb
1c00e116:	010ede93          	srli	t4,t4,0x10
1c00e11a:	68028293          	addi	t0,t0,1664
1c00e11e:	0f42                	slli	t5,t5,0x10
1c00e120:	0eae                	slli	t4,t4,0xb
1c00e122:	680e8e93          	addi	t4,t4,1664
1c00e126:	010f5f13          	srli	t5,t5,0x10
1c00e12a:	0f2e                	slli	t5,t5,0xb
1c00e12c:	680f0f13          	addi	t5,t5,1664
1c00e130:	0541                	addi	a0,a0,16
1c00e132:	02c6d6b3          	divu	a3,a3,a2
1c00e136:	7ff77713          	andi	a4,a4,2047
1c00e13a:	00371e13          	slli	t3,a4,0x3
1c00e13e:	01c3ee33          	or	t3,t2,t3
1c00e142:	8315                	srli	a4,a4,0x5
1c00e144:	ffc58b23          	sb	t3,-10(a1)
1c00e148:	7ff6f693          	andi	a3,a3,2047
1c00e14c:	00669393          	slli	t2,a3,0x6
1c00e150:	02c7d7b3          	divu	a5,a5,a2
1c00e154:	00776733          	or	a4,a4,t2
1c00e158:	fee58ba3          	sb	a4,-9(a1)
1c00e15c:	00a6de13          	srli	t3,a3,0xa
1c00e160:	8289                	srli	a3,a3,0x2
1c00e162:	fed58c23          	sb	a3,-8(a1)
1c00e166:	02cfd733          	divu	a4,t6,a2
1c00e16a:	7ff7f793          	andi	a5,a5,2047
1c00e16e:	00179693          	slli	a3,a5,0x1
1c00e172:	00de66b3          	or	a3,t3,a3
1c00e176:	839d                	srli	a5,a5,0x7
1c00e178:	fed58ca3          	sb	a3,-7(a1)
1c00e17c:	7ff77713          	andi	a4,a4,2047
1c00e180:	00471e13          	slli	t3,a4,0x4
1c00e184:	02c2d6b3          	divu	a3,t0,a2
1c00e188:	01c7e7b3          	or	a5,a5,t3
1c00e18c:	fef58d23          	sb	a5,-6(a1)
1c00e190:	8311                	srli	a4,a4,0x4
1c00e192:	02ced7b3          	divu	a5,t4,a2
1c00e196:	7ff6f693          	andi	a3,a3,2047
1c00e19a:	00769e93          	slli	t4,a3,0x7
1c00e19e:	01d76733          	or	a4,a4,t4
1c00e1a2:	0096de13          	srli	t3,a3,0x9
1c00e1a6:	fee58da3          	sb	a4,-5(a1)
1c00e1aa:	8285                	srli	a3,a3,0x1
1c00e1ac:	fed58e23          	sb	a3,-4(a1)
1c00e1b0:	02cf5f33          	divu	t5,t5,a2
1c00e1b4:	7ff7f793          	andi	a5,a5,2047
1c00e1b8:	00279713          	slli	a4,a5,0x2
1c00e1bc:	00ee6733          	or	a4,t3,a4
1c00e1c0:	8399                	srli	a5,a5,0x6
1c00e1c2:	fee58ea3          	sb	a4,-3(a1)
1c00e1c6:	7fff7f13          	andi	t5,t5,2047
1c00e1ca:	005f1713          	slli	a4,t5,0x5
1c00e1ce:	8fd9                	or	a5,a5,a4
1c00e1d0:	003f5f13          	srli	t5,t5,0x3
1c00e1d4:	fef58f23          	sb	a5,-2(a1)
1c00e1d8:	ffe58fa3          	sb	t5,-1(a1)
1c00e1dc:	e7059de3          	bne	a1,a6,1c00e056 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress+0x26>
1c00e1e0:	16058813          	addi	a6,a1,352
1c00e1e4:	20088893          	addi	a7,a7,512
1c00e1e8:	e70314e3          	bne	t1,a6,1c00e050 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress+0x20>
1c00e1ec:	4472                	lw	s0,28(sp)
1c00e1ee:	44e2                	lw	s1,24(sp)
1c00e1f0:	4952                	lw	s2,20(sp)
1c00e1f2:	49c2                	lw	s3,16(sp)
1c00e1f4:	4a32                	lw	s4,12(sp)
1c00e1f6:	4aa2                	lw	s5,8(sp)
1c00e1f8:	4b12                	lw	s6,4(sp)
1c00e1fa:	6105                	addi	sp,sp,32
1c00e1fc:	8082                	ret

1c00e1fe <PQCLEAN_KYBER1024_CLEAN_polyvec_decompress>:
1c00e1fe:	1101                	addi	sp,sp,-32
1c00e200:	6885                	lui	a7,0x1
1c00e202:	ce22                	sw	s0,28(sp)
1c00e204:	cc26                	sw	s1,24(sp)
1c00e206:	ca4a                	sw	s2,20(sp)
1c00e208:	c84e                	sw	s3,16(sp)
1c00e20a:	c652                	sw	s4,12(sp)
1c00e20c:	c456                	sw	s5,8(sp)
1c00e20e:	c25a                	sw	s6,4(sp)
1c00e210:	16058313          	addi	t1,a1,352
1c00e214:	8e2a                	mv	t3,a0
1c00e216:	6e058e93          	addi	t4,a1,1760
1c00e21a:	d0188893          	addi	a7,a7,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00e21e:	ea030593          	addi	a1,t1,-352
1c00e222:	8872                	mv	a6,t3
1c00e224:	0045c703          	lbu	a4,4(a1)
1c00e228:	0035c603          	lbu	a2,3(a1)
1c00e22c:	0055c783          	lbu	a5,5(a1)
1c00e230:	00a71993          	slli	s3,a4,0xa
1c00e234:	060a                	slli	a2,a2,0x2
1c00e236:	01366633          	or	a2,a2,s3
1c00e23a:	00175993          	srli	s3,a4,0x1
1c00e23e:	00779713          	slli	a4,a5,0x7
1c00e242:	01376733          	or	a4,a4,s3
1c00e246:	7ff77713          	andi	a4,a4,2047
1c00e24a:	03170733          	mul	a4,a4,a7
1c00e24e:	0085cf03          	lbu	t5,8(a1)
1c00e252:	0075c283          	lbu	t0,7(a1)
1c00e256:	0065c403          	lbu	s0,6(a1)
1c00e25a:	0015c483          	lbu	s1,1(a1)
1c00e25e:	0025c683          	lbu	a3,2(a1)
1c00e262:	0095c503          	lbu	a0,9(a1)
1c00e266:	009f1913          	slli	s2,t5,0x9
1c00e26a:	0286                	slli	t0,t0,0x1
1c00e26c:	0005cf83          	lbu	t6,0(a1)
1c00e270:	00a5c383          	lbu	t2,10(a1)
1c00e274:	00849b13          	slli	s6,s1,0x8
1c00e278:	0066da93          	srli	s5,a3,0x6
1c00e27c:	0122e2b3          	or	t0,t0,s2
1c00e280:	808d                	srli	s1,s1,0x3
1c00e282:	0047d913          	srli	s2,a5,0x4
1c00e286:	0696                	slli	a3,a3,0x5
1c00e288:	00441793          	slli	a5,s0,0x4
1c00e28c:	8ec5                	or	a3,a3,s1
1c00e28e:	0127e7b3          	or	a5,a5,s2
1c00e292:	00745a13          	srli	s4,s0,0x7
1c00e296:	002f5f13          	srli	t5,t5,0x2
1c00e29a:	00651413          	slli	s0,a0,0x6
1c00e29e:	7ff6f693          	andi	a3,a3,2047
1c00e2a2:	7ff7f793          	andi	a5,a5,2047
1c00e2a6:	031686b3          	mul	a3,a3,a7
1c00e2aa:	01fb6fb3          	or	t6,s6,t6
1c00e2ae:	01566633          	or	a2,a2,s5
1c00e2b2:	0142e2b3          	or	t0,t0,s4
1c00e2b6:	038e                	slli	t2,t2,0x3
1c00e2b8:	8115                	srli	a0,a0,0x5
1c00e2ba:	01e46f33          	or	t5,s0,t5
1c00e2be:	40070713          	addi	a4,a4,1024
1c00e2c2:	0841                	addi	a6,a6,16
1c00e2c4:	832d                	srli	a4,a4,0xb
1c00e2c6:	031787b3          	mul	a5,a5,a7
1c00e2ca:	00a3e533          	or	a0,t2,a0
1c00e2ce:	7fffff93          	andi	t6,t6,2047
1c00e2d2:	7ff67613          	andi	a2,a2,2047
1c00e2d6:	7ff2f293          	andi	t0,t0,2047
1c00e2da:	7fff7f13          	andi	t5,t5,2047
1c00e2de:	fee81b23          	sh	a4,-10(a6)
1c00e2e2:	40068693          	addi	a3,a3,1024
1c00e2e6:	82ad                	srli	a3,a3,0xb
1c00e2e8:	fed81923          	sh	a3,-14(a6)
1c00e2ec:	031f8fb3          	mul	t6,t6,a7
1c00e2f0:	40078793          	addi	a5,a5,1024
1c00e2f4:	83ad                	srli	a5,a5,0xb
1c00e2f6:	fef81c23          	sh	a5,-8(a6)
1c00e2fa:	05ad                	addi	a1,a1,11
1c00e2fc:	03160633          	mul	a2,a2,a7
1c00e300:	400f8f93          	addi	t6,t6,1024
1c00e304:	00bfdf93          	srli	t6,t6,0xb
1c00e308:	fff81823          	sh	t6,-16(a6)
1c00e30c:	03128733          	mul	a4,t0,a7
1c00e310:	40060693          	addi	a3,a2,1024
1c00e314:	82ad                	srli	a3,a3,0xb
1c00e316:	fed81a23          	sh	a3,-12(a6)
1c00e31a:	031f0f33          	mul	t5,t5,a7
1c00e31e:	40070793          	addi	a5,a4,1024
1c00e322:	83ad                	srli	a5,a5,0xb
1c00e324:	fef81d23          	sh	a5,-6(a6)
1c00e328:	03150533          	mul	a0,a0,a7
1c00e32c:	400f0f13          	addi	t5,t5,1024
1c00e330:	00bf5f13          	srli	t5,t5,0xb
1c00e334:	ffe81e23          	sh	t5,-4(a6)
1c00e338:	40050513          	addi	a0,a0,1024
1c00e33c:	812d                	srli	a0,a0,0xb
1c00e33e:	fea81f23          	sh	a0,-2(a6)
1c00e342:	ee6591e3          	bne	a1,t1,1c00e224 <PQCLEAN_KYBER1024_CLEAN_polyvec_decompress+0x26>
1c00e346:	16058313          	addi	t1,a1,352
1c00e34a:	200e0e13          	addi	t3,t3,512
1c00e34e:	edd318e3          	bne	t1,t4,1c00e21e <PQCLEAN_KYBER1024_CLEAN_polyvec_decompress+0x20>
1c00e352:	4472                	lw	s0,28(sp)
1c00e354:	44e2                	lw	s1,24(sp)
1c00e356:	4952                	lw	s2,20(sp)
1c00e358:	49c2                	lw	s3,16(sp)
1c00e35a:	4a32                	lw	s4,12(sp)
1c00e35c:	4aa2                	lw	s5,8(sp)
1c00e35e:	4b12                	lw	s6,4(sp)
1c00e360:	6105                	addi	sp,sp,32
1c00e362:	8082                	ret

1c00e364 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>:
1c00e364:	1141                	addi	sp,sp,-16
1c00e366:	c422                	sw	s0,8(sp)
1c00e368:	c226                	sw	s1,4(sp)
1c00e36a:	c04a                	sw	s2,0(sp)
1c00e36c:	c606                	sw	ra,12(sp)
1c00e36e:	842e                	mv	s0,a1
1c00e370:	84aa                	mv	s1,a0
1c00e372:	60058913          	addi	s2,a1,1536
1c00e376:	85a2                	mv	a1,s0
1c00e378:	8526                	mv	a0,s1
1c00e37a:	18040413          	addi	s0,s0,384
1c00e37e:	3a9d                	jal	1c00dcf4 <PQCLEAN_KYBER1024_CLEAN_poly_frombytes>
1c00e380:	20048493          	addi	s1,s1,512
1c00e384:	ff2419e3          	bne	s0,s2,1c00e376 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes+0x12>
1c00e388:	40b2                	lw	ra,12(sp)
1c00e38a:	4422                	lw	s0,8(sp)
1c00e38c:	4492                	lw	s1,4(sp)
1c00e38e:	4902                	lw	s2,0(sp)
1c00e390:	0141                	addi	sp,sp,16
1c00e392:	8082                	ret

1c00e394 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>:
1c00e394:	9e010113          	addi	sp,sp,-1568
1c00e398:	60812c23          	sw	s0,1560(sp)
1c00e39c:	6405                	lui	s0,0x1
1c00e39e:	60912a23          	sw	s1,1556(sp)
1c00e3a2:	80040413          	addi	s0,s0,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c00e3a6:	64c1                	lui	s1,0x10
1c00e3a8:	61212823          	sw	s2,1552(sp)
1c00e3ac:	61312623          	sw	s3,1548(sp)
1c00e3b0:	61412423          	sw	s4,1544(sp)
1c00e3b4:	60112e23          	sw	ra,1564(sp)
1c00e3b8:	8a2a                	mv	s4,a0
1c00e3ba:	942a                	add	s0,s0,a0
1c00e3bc:	40010993          	addi	s3,sp,1024
1c00e3c0:	14fd                	addi	s1,s1,-1
1c00e3c2:	10000913          	li	s2,256
1c00e3c6:	20000613          	li	a2,512
1c00e3ca:	85d2                	mv	a1,s4
1c00e3cc:	854e                	mv	a0,s3
1c00e3ce:	2b91                	jal	1c00e922 <memcpy>
1c00e3d0:	864e                	mv	a2,s3
1c00e3d2:	4681                	li	a3,0
1c00e3d4:	00061703          	lh	a4,0(a2)
1c00e3d8:	00261583          	lh	a1,2(a2)
1c00e3dc:	4016d793          	srai	a5,a3,0x1
1c00e3e0:	078a                	slli	a5,a5,0x2
1c00e3e2:	0742                	slli	a4,a4,0x10
1c00e3e4:	8de5                	and	a1,a1,s1
1c00e3e6:	60010513          	addi	a0,sp,1536
1c00e3ea:	97aa                	add	a5,a5,a0
1c00e3ec:	8f4d                	or	a4,a4,a1
1c00e3ee:	a0e7a023          	sw	a4,-1536(a5)
1c00e3f2:	0689                	addi	a3,a3,2
1c00e3f4:	0611                	addi	a2,a2,4
1c00e3f6:	fd269fe3          	bne	a3,s2,1c00e3d4 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x40>
1c00e3fa:	040c                	addi	a1,sp,512
1c00e3fc:	850a                	mv	a0,sp
1c00e3fe:	fe0fd0ef          	jal	ra,1c00bbde <KYBER_poly_ntt>
1c00e402:	0418                	addi	a4,sp,512
1c00e404:	87d2                	mv	a5,s4
1c00e406:	4310                	lw	a2,0(a4)
1c00e408:	4354                	lw	a3,4(a4)
1c00e40a:	0721                	addi	a4,a4,8
1c00e40c:	01065813          	srli	a6,a2,0x10
1c00e410:	0106d593          	srli	a1,a3,0x10
1c00e414:	01079023          	sh	a6,0(a5)
1c00e418:	00b79123          	sh	a1,2(a5)
1c00e41c:	00c79223          	sh	a2,4(a5)
1c00e420:	00d79323          	sh	a3,6(a5)
1c00e424:	07a1                	addi	a5,a5,8
1c00e426:	fee990e3          	bne	s3,a4,1c00e406 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x72>
1c00e42a:	200a0a13          	addi	s4,s4,512
1c00e42e:	f9441ce3          	bne	s0,s4,1c00e3c6 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x32>
1c00e432:	61c12083          	lw	ra,1564(sp)
1c00e436:	61812403          	lw	s0,1560(sp)
1c00e43a:	61412483          	lw	s1,1556(sp)
1c00e43e:	61012903          	lw	s2,1552(sp)
1c00e442:	60c12983          	lw	s3,1548(sp)
1c00e446:	60812a03          	lw	s4,1544(sp)
1c00e44a:	62010113          	addi	sp,sp,1568
1c00e44e:	8082                	ret

1c00e450 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont>:
1c00e450:	9e010113          	addi	sp,sp,-1568
1c00e454:	60812c23          	sw	s0,1560(sp)
1c00e458:	6405                	lui	s0,0x1
1c00e45a:	60912a23          	sw	s1,1556(sp)
1c00e45e:	90040413          	addi	s0,s0,-1792 # 900 <__CTOR_LIST__-0x1bfff704>
1c00e462:	64c1                	lui	s1,0x10
1c00e464:	61212823          	sw	s2,1552(sp)
1c00e468:	61312623          	sw	s3,1548(sp)
1c00e46c:	61412423          	sw	s4,1544(sp)
1c00e470:	60112e23          	sw	ra,1564(sp)
1c00e474:	10050a13          	addi	s4,a0,256
1c00e478:	942a                	add	s0,s0,a0
1c00e47a:	40010913          	addi	s2,sp,1024
1c00e47e:	14fd                	addi	s1,s1,-1
1c00e480:	10000993          	li	s3,256
1c00e484:	f00a0593          	addi	a1,s4,-256
1c00e488:	20000613          	li	a2,512
1c00e48c:	854a                	mv	a0,s2
1c00e48e:	2951                	jal	1c00e922 <memcpy>
1c00e490:	874a                	mv	a4,s2
1c00e492:	4581                	li	a1,0
1c00e494:	00071603          	lh	a2,0(a4)
1c00e498:	00471883          	lh	a7,4(a4)
1c00e49c:	00271683          	lh	a3,2(a4)
1c00e4a0:	00671803          	lh	a6,6(a4)
1c00e4a4:	4015d793          	srai	a5,a1,0x1
1c00e4a8:	00279513          	slli	a0,a5,0x2
1c00e4ac:	60010313          	addi	t1,sp,1536
1c00e4b0:	0642                	slli	a2,a2,0x10
1c00e4b2:	0098f8b3          	and	a7,a7,s1
1c00e4b6:	0785                	addi	a5,a5,1
1c00e4b8:	06c2                	slli	a3,a3,0x10
1c00e4ba:	00987833          	and	a6,a6,s1
1c00e4be:	951a                	add	a0,a0,t1
1c00e4c0:	01166633          	or	a2,a2,a7
1c00e4c4:	078a                	slli	a5,a5,0x2
1c00e4c6:	0106e6b3          	or	a3,a3,a6
1c00e4ca:	a0c52023          	sw	a2,-1536(a0)
1c00e4ce:	979a                	add	a5,a5,t1
1c00e4d0:	a0d7a023          	sw	a3,-1536(a5)
1c00e4d4:	0591                	addi	a1,a1,4
1c00e4d6:	0721                	addi	a4,a4,8
1c00e4d8:	fb359ee3          	bne	a1,s3,1c00e494 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont+0x44>
1c00e4dc:	040c                	addi	a1,sp,512
1c00e4de:	850a                	mv	a0,sp
1c00e4e0:	f5afd0ef          	jal	ra,1c00bc3a <KYBER_poly_intt>
1c00e4e4:	0418                	addi	a4,sp,512
1c00e4e6:	87d2                	mv	a5,s4
1c00e4e8:	4314                	lw	a3,0(a4)
1c00e4ea:	0711                	addi	a4,a4,4
1c00e4ec:	0789                	addi	a5,a5,2
1c00e4ee:	0106d613          	srli	a2,a3,0x10
1c00e4f2:	eec79f23          	sh	a2,-258(a5)
1c00e4f6:	fed79f23          	sh	a3,-2(a5)
1c00e4fa:	fee917e3          	bne	s2,a4,1c00e4e8 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont+0x98>
1c00e4fe:	200a0a13          	addi	s4,s4,512
1c00e502:	f94411e3          	bne	s0,s4,1c00e484 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont+0x34>
1c00e506:	61c12083          	lw	ra,1564(sp)
1c00e50a:	61812403          	lw	s0,1560(sp)
1c00e50e:	61412483          	lw	s1,1556(sp)
1c00e512:	61012903          	lw	s2,1552(sp)
1c00e516:	60c12983          	lw	s3,1548(sp)
1c00e51a:	60812a03          	lw	s4,1544(sp)
1c00e51e:	62010113          	addi	sp,sp,1568
1c00e522:	8082                	ret

1c00e524 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>:
1c00e524:	de010113          	addi	sp,sp,-544
1c00e528:	20812c23          	sw	s0,536(sp)
1c00e52c:	20912a23          	sw	s1,532(sp)
1c00e530:	21212823          	sw	s2,528(sp)
1c00e534:	21312623          	sw	s3,524(sp)
1c00e538:	20112e23          	sw	ra,540(sp)
1c00e53c:	84aa                	mv	s1,a0
1c00e53e:	89ae                	mv	s3,a1
1c00e540:	8932                	mv	s2,a2
1c00e542:	20000413          	li	s0,512
1c00e546:	3409                	jal	1c00df48 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c00e548:	00890633          	add	a2,s2,s0
1c00e54c:	008985b3          	add	a1,s3,s0
1c00e550:	850a                	mv	a0,sp
1c00e552:	3add                	jal	1c00df48 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c00e554:	860a                	mv	a2,sp
1c00e556:	85a6                	mv	a1,s1
1c00e558:	8526                	mv	a0,s1
1c00e55a:	20040413          	addi	s0,s0,512
1c00e55e:	3441                	jal	1c00dfde <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00e560:	80040793          	addi	a5,s0,-2048
1c00e564:	f3f5                	bnez	a5,1c00e548 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery+0x24>
1c00e566:	8526                	mv	a0,s1
1c00e568:	34b9                	jal	1c00dfb6 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00e56a:	21c12083          	lw	ra,540(sp)
1c00e56e:	21812403          	lw	s0,536(sp)
1c00e572:	21412483          	lw	s1,532(sp)
1c00e576:	21012903          	lw	s2,528(sp)
1c00e57a:	20c12983          	lw	s3,524(sp)
1c00e57e:	22010113          	addi	sp,sp,544
1c00e582:	8082                	ret

1c00e584 <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>:
1c00e584:	1141                	addi	sp,sp,-16
1c00e586:	c606                	sw	ra,12(sp)
1c00e588:	c422                	sw	s0,8(sp)
1c00e58a:	842a                	mv	s0,a0
1c00e58c:	342d                	jal	1c00dfb6 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00e58e:	20040513          	addi	a0,s0,512
1c00e592:	3415                	jal	1c00dfb6 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00e594:	40040513          	addi	a0,s0,1024
1c00e598:	3c39                	jal	1c00dfb6 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00e59a:	60040513          	addi	a0,s0,1536
1c00e59e:	4422                	lw	s0,8(sp)
1c00e5a0:	40b2                	lw	ra,12(sp)
1c00e5a2:	0141                	addi	sp,sp,16
1c00e5a4:	bc09                	j	1c00dfb6 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>

1c00e5a6 <PQCLEAN_KYBER1024_CLEAN_polyvec_add>:
1c00e5a6:	1101                	addi	sp,sp,-32
1c00e5a8:	cc22                	sw	s0,24(sp)
1c00e5aa:	ca26                	sw	s1,20(sp)
1c00e5ac:	c84a                	sw	s2,16(sp)
1c00e5ae:	c64e                	sw	s3,12(sp)
1c00e5b0:	ce06                	sw	ra,28(sp)
1c00e5b2:	89aa                	mv	s3,a0
1c00e5b4:	892e                	mv	s2,a1
1c00e5b6:	84b2                	mv	s1,a2
1c00e5b8:	4401                	li	s0,0
1c00e5ba:	00848633          	add	a2,s1,s0
1c00e5be:	008905b3          	add	a1,s2,s0
1c00e5c2:	00898533          	add	a0,s3,s0
1c00e5c6:	3c21                	jal	1c00dfde <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00e5c8:	20040413          	addi	s0,s0,512
1c00e5cc:	80040793          	addi	a5,s0,-2048
1c00e5d0:	f7ed                	bnez	a5,1c00e5ba <PQCLEAN_KYBER1024_CLEAN_polyvec_add+0x14>
1c00e5d2:	40f2                	lw	ra,28(sp)
1c00e5d4:	4462                	lw	s0,24(sp)
1c00e5d6:	44d2                	lw	s1,20(sp)
1c00e5d8:	4942                	lw	s2,16(sp)
1c00e5da:	49b2                	lw	s3,12(sp)
1c00e5dc:	6105                	addi	sp,sp,32
1c00e5de:	8082                	ret

1c00e5e0 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>:
1c00e5e0:	777d                	lui	a4,0xfffff
1c00e5e2:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00e5e6:	02f507b3          	mul	a5,a0,a5
1c00e5ea:	2ff70713          	addi	a4,a4,767
1c00e5ee:	07c2                	slli	a5,a5,0x10
1c00e5f0:	87c1                	srai	a5,a5,0x10
1c00e5f2:	02e787b3          	mul	a5,a5,a4
1c00e5f6:	953e                	add	a0,a0,a5
1c00e5f8:	8541                	srai	a0,a0,0x10
1c00e5fa:	8082                	ret

1c00e5fc <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>:
1c00e5fc:	6795                	lui	a5,0x5
1c00e5fe:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00e602:	02f507b3          	mul	a5,a0,a5
1c00e606:	02000737          	lui	a4,0x2000
1c00e60a:	97ba                	add	a5,a5,a4
1c00e60c:	6705                	lui	a4,0x1
1c00e60e:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00e612:	87e9                	srai	a5,a5,0x1a
1c00e614:	02e787b3          	mul	a5,a5,a4
1c00e618:	8d1d                	sub	a0,a0,a5
1c00e61a:	0542                	slli	a0,a0,0x10
1c00e61c:	8541                	srai	a0,a0,0x10
1c00e61e:	8082                	ret

1c00e620 <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>:
1c00e620:	7139                	addi	sp,sp,-64
1c00e622:	da26                	sw	s1,52(sp)
1c00e624:	d84a                	sw	s2,48(sp)
1c00e626:	84b2                	mv	s1,a2
1c00e628:	892a                	mv	s2,a0
1c00e62a:	02000613          	li	a2,32
1c00e62e:	0068                	addi	a0,sp,12
1c00e630:	de06                	sw	ra,60(sp)
1c00e632:	dc22                	sw	s0,56(sp)
1c00e634:	8436                	mv	s0,a3
1c00e636:	24f5                	jal	1c00e922 <memcpy>
1c00e638:	006c                	addi	a1,sp,12
1c00e63a:	854a                	mv	a0,s2
1c00e63c:	02200613          	li	a2,34
1c00e640:	02910623          	sb	s1,44(sp)
1c00e644:	028106a3          	sb	s0,45(sp)
1c00e648:	a31fd0ef          	jal	ra,1c00c078 <shake128_absorb>
1c00e64c:	50f2                	lw	ra,60(sp)
1c00e64e:	5462                	lw	s0,56(sp)
1c00e650:	54d2                	lw	s1,52(sp)
1c00e652:	5942                	lw	s2,48(sp)
1c00e654:	6121                	addi	sp,sp,64
1c00e656:	8082                	ret

1c00e658 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>:
1c00e658:	7139                	addi	sp,sp,-64
1c00e65a:	87b2                	mv	a5,a2
1c00e65c:	da26                	sw	s1,52(sp)
1c00e65e:	d84a                	sw	s2,48(sp)
1c00e660:	84aa                	mv	s1,a0
1c00e662:	892e                	mv	s2,a1
1c00e664:	02000613          	li	a2,32
1c00e668:	85be                	mv	a1,a5
1c00e66a:	0068                	addi	a0,sp,12
1c00e66c:	de06                	sw	ra,60(sp)
1c00e66e:	dc22                	sw	s0,56(sp)
1c00e670:	8436                	mv	s0,a3
1c00e672:	2c45                	jal	1c00e922 <memcpy>
1c00e674:	0070                	addi	a2,sp,12
1c00e676:	85ca                	mv	a1,s2
1c00e678:	8526                	mv	a0,s1
1c00e67a:	02100693          	li	a3,33
1c00e67e:	02810623          	sb	s0,44(sp)
1c00e682:	ce1fd0ef          	jal	ra,1c00c362 <shake256>
1c00e686:	50f2                	lw	ra,60(sp)
1c00e688:	5462                	lw	s0,56(sp)
1c00e68a:	54d2                	lw	s1,52(sp)
1c00e68c:	5942                	lw	s2,48(sp)
1c00e68e:	6121                	addi	sp,sp,64
1c00e690:	8082                	ret

1c00e692 <PQCLEAN_KYBER1024_CLEAN_verify>:
1c00e692:	10060863          	beqz	a2,1c00e7a2 <PQCLEAN_KYBER1024_CLEAN_verify+0x110>
1c00e696:	fff60793          	addi	a5,a2,-1
1c00e69a:	470d                	li	a4,3
1c00e69c:	10f77563          	bgeu	a4,a5,1c00e7a6 <PQCLEAN_KYBER1024_CLEAN_verify+0x114>
1c00e6a0:	ffc67293          	andi	t0,a2,-4
1c00e6a4:	872e                	mv	a4,a1
1c00e6a6:	86aa                	mv	a3,a0
1c00e6a8:	92ae                	add	t0,t0,a1
1c00e6aa:	4f01                	li	t5,0
1c00e6ac:	0016ce83          	lbu	t4,1(a3)
1c00e6b0:	00174e03          	lbu	t3,1(a4)
1c00e6b4:	0006c383          	lbu	t2,0(a3)
1c00e6b8:	0026c303          	lbu	t1,2(a3)
1c00e6bc:	00074f83          	lbu	t6,0(a4)
1c00e6c0:	00274883          	lbu	a7,2(a4)
1c00e6c4:	0036c783          	lbu	a5,3(a3)
1c00e6c8:	00374803          	lbu	a6,3(a4)
1c00e6cc:	0ea2                	slli	t4,t4,0x8
1c00e6ce:	0e22                	slli	t3,t3,0x8
1c00e6d0:	007eeeb3          	or	t4,t4,t2
1c00e6d4:	0342                	slli	t1,t1,0x10
1c00e6d6:	01fe6e33          	or	t3,t3,t6
1c00e6da:	08c2                	slli	a7,a7,0x10
1c00e6dc:	01d36333          	or	t1,t1,t4
1c00e6e0:	07e2                	slli	a5,a5,0x18
1c00e6e2:	01c8e8b3          	or	a7,a7,t3
1c00e6e6:	0862                	slli	a6,a6,0x18
1c00e6e8:	0067e7b3          	or	a5,a5,t1
1c00e6ec:	01186833          	or	a6,a6,a7
1c00e6f0:	0107c7b3          	xor	a5,a5,a6
1c00e6f4:	0711                	addi	a4,a4,4
1c00e6f6:	01e7ef33          	or	t5,a5,t5
1c00e6fa:	0691                	addi	a3,a3,4
1c00e6fc:	fa5718e3          	bne	a4,t0,1c00e6ac <PQCLEAN_KYBER1024_CLEAN_verify+0x1a>
1c00e700:	008f5793          	srli	a5,t5,0x8
1c00e704:	01e7e7b3          	or	a5,a5,t5
1c00e708:	010f5713          	srli	a4,t5,0x10
1c00e70c:	8fd9                	or	a5,a5,a4
1c00e70e:	018f5f13          	srli	t5,t5,0x18
1c00e712:	01e7ef33          	or	t5,a5,t5
1c00e716:	ffc67793          	andi	a5,a2,-4
1c00e71a:	0fff7f13          	andi	t5,t5,255
1c00e71e:	06f60f63          	beq	a2,a5,1c00e79c <PQCLEAN_KYBER1024_CLEAN_verify+0x10a>
1c00e722:	00f586b3          	add	a3,a1,a5
1c00e726:	00f50733          	add	a4,a0,a5
1c00e72a:	0006c803          	lbu	a6,0(a3)
1c00e72e:	00074703          	lbu	a4,0(a4)
1c00e732:	00178693          	addi	a3,a5,1
1c00e736:	01074733          	xor	a4,a4,a6
1c00e73a:	00ef6f33          	or	t5,t5,a4
1c00e73e:	0fff7f13          	andi	t5,t5,255
1c00e742:	04c6fd63          	bgeu	a3,a2,1c00e79c <PQCLEAN_KYBER1024_CLEAN_verify+0x10a>
1c00e746:	00d50733          	add	a4,a0,a3
1c00e74a:	96ae                	add	a3,a3,a1
1c00e74c:	0006c803          	lbu	a6,0(a3)
1c00e750:	00074703          	lbu	a4,0(a4)
1c00e754:	00278693          	addi	a3,a5,2
1c00e758:	01074733          	xor	a4,a4,a6
1c00e75c:	00ef6f33          	or	t5,t5,a4
1c00e760:	0fff7f13          	andi	t5,t5,255
1c00e764:	02c6fc63          	bgeu	a3,a2,1c00e79c <PQCLEAN_KYBER1024_CLEAN_verify+0x10a>
1c00e768:	00d50733          	add	a4,a0,a3
1c00e76c:	96ae                	add	a3,a3,a1
1c00e76e:	00074703          	lbu	a4,0(a4)
1c00e772:	0006c683          	lbu	a3,0(a3)
1c00e776:	078d                	addi	a5,a5,3
1c00e778:	8f35                	xor	a4,a4,a3
1c00e77a:	00ef6f33          	or	t5,t5,a4
1c00e77e:	0fff7f13          	andi	t5,t5,255
1c00e782:	00c7fd63          	bgeu	a5,a2,1c00e79c <PQCLEAN_KYBER1024_CLEAN_verify+0x10a>
1c00e786:	95be                	add	a1,a1,a5
1c00e788:	97aa                	add	a5,a5,a0
1c00e78a:	0005c703          	lbu	a4,0(a1)
1c00e78e:	0007c783          	lbu	a5,0(a5)
1c00e792:	8fb9                	xor	a5,a5,a4
1c00e794:	00ff6f33          	or	t5,t5,a5
1c00e798:	0fff7f13          	andi	t5,t5,255
1c00e79c:	01e03533          	snez	a0,t5
1c00e7a0:	8082                	ret
1c00e7a2:	4501                	li	a0,0
1c00e7a4:	8082                	ret
1c00e7a6:	4f01                	li	t5,0
1c00e7a8:	4781                	li	a5,0
1c00e7aa:	bfa5                	j	1c00e722 <PQCLEAN_KYBER1024_CLEAN_verify+0x90>

1c00e7ac <PQCLEAN_KYBER1024_CLEAN_cmov>:
1c00e7ac:	14060763          	beqz	a2,1c00e8fa <PQCLEAN_KYBER1024_CLEAN_cmov+0x14e>
1c00e7b0:	00350793          	addi	a5,a0,3
1c00e7b4:	8f8d                	sub	a5,a5,a1
1c00e7b6:	40d006b3          	neg	a3,a3
1c00e7ba:	0077b793          	sltiu	a5,a5,7
1c00e7be:	0ff6ff13          	andi	t5,a3,255
1c00e7c2:	10079c63          	bnez	a5,1c00e8da <PQCLEAN_KYBER1024_CLEAN_cmov+0x12e>
1c00e7c6:	fff60793          	addi	a5,a2,-1
1c00e7ca:	0037b793          	sltiu	a5,a5,3
1c00e7ce:	10079663          	bnez	a5,1c00e8da <PQCLEAN_KYBER1024_CLEAN_cmov+0x12e>
1c00e7d2:	008f1713          	slli	a4,t5,0x8
1c00e7d6:	00ef6733          	or	a4,t5,a4
1c00e7da:	010f1793          	slli	a5,t5,0x10
1c00e7de:	8fd9                	or	a5,a5,a4
1c00e7e0:	1141                	addi	sp,sp,-16
1c00e7e2:	018f1f93          	slli	t6,t5,0x18
1c00e7e6:	ffc67293          	andi	t0,a2,-4
1c00e7ea:	c622                	sw	s0,12(sp)
1c00e7ec:	01f7efb3          	or	t6,a5,t6
1c00e7f0:	872a                	mv	a4,a0
1c00e7f2:	882e                	mv	a6,a1
1c00e7f4:	92aa                	add	t0,t0,a0
1c00e7f6:	00184e03          	lbu	t3,1(a6)
1c00e7fa:	00174e83          	lbu	t4,1(a4)
1c00e7fe:	00084383          	lbu	t2,0(a6)
1c00e802:	00284883          	lbu	a7,2(a6)
1c00e806:	00074403          	lbu	s0,0(a4)
1c00e80a:	00274303          	lbu	t1,2(a4)
1c00e80e:	00384783          	lbu	a5,3(a6)
1c00e812:	00374683          	lbu	a3,3(a4)
1c00e816:	0ea2                	slli	t4,t4,0x8
1c00e818:	0e22                	slli	t3,t3,0x8
1c00e81a:	008eeeb3          	or	t4,t4,s0
1c00e81e:	0342                	slli	t1,t1,0x10
1c00e820:	007e6e33          	or	t3,t3,t2
1c00e824:	08c2                	slli	a7,a7,0x10
1c00e826:	01d36333          	or	t1,t1,t4
1c00e82a:	01c8e8b3          	or	a7,a7,t3
1c00e82e:	06e2                	slli	a3,a3,0x18
1c00e830:	07e2                	slli	a5,a5,0x18
1c00e832:	0066e6b3          	or	a3,a3,t1
1c00e836:	0117e7b3          	or	a5,a5,a7
1c00e83a:	8fb5                	xor	a5,a5,a3
1c00e83c:	01f7f7b3          	and	a5,a5,t6
1c00e840:	8fb5                	xor	a5,a5,a3
1c00e842:	0087d313          	srli	t1,a5,0x8
1c00e846:	0107d893          	srli	a7,a5,0x10
1c00e84a:	0187d693          	srli	a3,a5,0x18
1c00e84e:	00f70023          	sb	a5,0(a4)
1c00e852:	006700a3          	sb	t1,1(a4)
1c00e856:	01170123          	sb	a7,2(a4)
1c00e85a:	00d701a3          	sb	a3,3(a4)
1c00e85e:	0711                	addi	a4,a4,4
1c00e860:	0811                	addi	a6,a6,4
1c00e862:	f8571ae3          	bne	a4,t0,1c00e7f6 <PQCLEAN_KYBER1024_CLEAN_cmov+0x4a>
1c00e866:	ffc67793          	andi	a5,a2,-4
1c00e86a:	06f60563          	beq	a2,a5,1c00e8d4 <PQCLEAN_KYBER1024_CLEAN_cmov+0x128>
1c00e86e:	00f50833          	add	a6,a0,a5
1c00e872:	00f58733          	add	a4,a1,a5
1c00e876:	00084883          	lbu	a7,0(a6)
1c00e87a:	00074703          	lbu	a4,0(a4)
1c00e87e:	00178693          	addi	a3,a5,1
1c00e882:	00e8c733          	xor	a4,a7,a4
1c00e886:	00ef7733          	and	a4,t5,a4
1c00e88a:	00e8c733          	xor	a4,a7,a4
1c00e88e:	00e80023          	sb	a4,0(a6)
1c00e892:	04c6f163          	bgeu	a3,a2,1c00e8d4 <PQCLEAN_KYBER1024_CLEAN_cmov+0x128>
1c00e896:	00d508b3          	add	a7,a0,a3
1c00e89a:	96ae                	add	a3,a3,a1
1c00e89c:	0008c803          	lbu	a6,0(a7)
1c00e8a0:	0006c703          	lbu	a4,0(a3)
1c00e8a4:	0789                	addi	a5,a5,2
1c00e8a6:	00e84733          	xor	a4,a6,a4
1c00e8aa:	00ef7733          	and	a4,t5,a4
1c00e8ae:	00e84733          	xor	a4,a6,a4
1c00e8b2:	00e88023          	sb	a4,0(a7)
1c00e8b6:	00c7ff63          	bgeu	a5,a2,1c00e8d4 <PQCLEAN_KYBER1024_CLEAN_cmov+0x128>
1c00e8ba:	953e                	add	a0,a0,a5
1c00e8bc:	97ae                	add	a5,a5,a1
1c00e8be:	00054703          	lbu	a4,0(a0)
1c00e8c2:	0007c783          	lbu	a5,0(a5)
1c00e8c6:	8fb9                	xor	a5,a5,a4
1c00e8c8:	00ff7f33          	and	t5,t5,a5
1c00e8cc:	01e74f33          	xor	t5,a4,t5
1c00e8d0:	01e50023          	sb	t5,0(a0)
1c00e8d4:	4432                	lw	s0,12(sp)
1c00e8d6:	0141                	addi	sp,sp,16
1c00e8d8:	8082                	ret
1c00e8da:	962a                	add	a2,a2,a0
1c00e8dc:	00054703          	lbu	a4,0(a0)
1c00e8e0:	0005c783          	lbu	a5,0(a1)
1c00e8e4:	0505                	addi	a0,a0,1
1c00e8e6:	0585                	addi	a1,a1,1
1c00e8e8:	8fb9                	xor	a5,a5,a4
1c00e8ea:	00ff77b3          	and	a5,t5,a5
1c00e8ee:	8fb9                	xor	a5,a5,a4
1c00e8f0:	fef50fa3          	sb	a5,-1(a0)
1c00e8f4:	fec514e3          	bne	a0,a2,1c00e8dc <PQCLEAN_KYBER1024_CLEAN_cmov+0x130>
1c00e8f8:	8082                	ret
1c00e8fa:	8082                	ret

1c00e8fc <pos_wait_forever>:
1c00e8fc:	f14027f3          	csrr	a5,mhartid
1c00e900:	8795                	srai	a5,a5,0x5
1c00e902:	03f7f793          	andi	a5,a5,63
1c00e906:	477d                	li	a4,31
1c00e908:	00e78363          	beq	a5,a4,1c00e90e <pos_wait_forever+0x12>
1c00e90c:	a001                	j	1c00e90c <pos_wait_forever+0x10>
1c00e90e:	1a10a7b7          	lui	a5,0x1a10a
1c00e912:	577d                	li	a4,-1
1c00e914:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00e918:	10500073          	wfi
1c00e91c:	10500073          	wfi
1c00e920:	bfe5                	j	1c00e918 <pos_wait_forever+0x1c>

1c00e922 <memcpy>:
1c00e922:	00c5e7b3          	or	a5,a1,a2
1c00e926:	8fc9                	or	a5,a5,a0
1c00e928:	8b8d                	andi	a5,a5,3
1c00e92a:	872e                	mv	a4,a1
1c00e92c:	882a                	mv	a6,a0
1c00e92e:	cbc5                	beqz	a5,1c00e9de <memcpy+0xbc>
1c00e930:	c279                	beqz	a2,1c00e9f6 <memcpy+0xd4>
1c00e932:	00350793          	addi	a5,a0,3
1c00e936:	8f8d                	sub	a5,a5,a1
1c00e938:	0077b793          	sltiu	a5,a5,7
1c00e93c:	e7d1                	bnez	a5,1c00e9c8 <memcpy+0xa6>
1c00e93e:	fff60793          	addi	a5,a2,-1
1c00e942:	0047b793          	sltiu	a5,a5,4
1c00e946:	e3c9                	bnez	a5,1c00e9c8 <memcpy+0xa6>
1c00e948:	ffc67e13          	andi	t3,a2,-4
1c00e94c:	9e2e                	add	t3,t3,a1
1c00e94e:	00174883          	lbu	a7,1(a4)
1c00e952:	00074303          	lbu	t1,0(a4)
1c00e956:	00274683          	lbu	a3,2(a4)
1c00e95a:	00374783          	lbu	a5,3(a4)
1c00e95e:	08a2                	slli	a7,a7,0x8
1c00e960:	0068e8b3          	or	a7,a7,t1
1c00e964:	06c2                	slli	a3,a3,0x10
1c00e966:	0116e6b3          	or	a3,a3,a7
1c00e96a:	07e2                	slli	a5,a5,0x18
1c00e96c:	8fd5                	or	a5,a5,a3
1c00e96e:	0087d313          	srli	t1,a5,0x8
1c00e972:	0107d893          	srli	a7,a5,0x10
1c00e976:	83e1                	srli	a5,a5,0x18
1c00e978:	00d80023          	sb	a3,0(a6)
1c00e97c:	006800a3          	sb	t1,1(a6)
1c00e980:	01180123          	sb	a7,2(a6)
1c00e984:	00f801a3          	sb	a5,3(a6)
1c00e988:	0711                	addi	a4,a4,4
1c00e98a:	0811                	addi	a6,a6,4
1c00e98c:	fdc711e3          	bne	a4,t3,1c00e94e <memcpy+0x2c>
1c00e990:	ffc67793          	andi	a5,a2,-4
1c00e994:	00367693          	andi	a3,a2,3
1c00e998:	00f50733          	add	a4,a0,a5
1c00e99c:	95be                	add	a1,a1,a5
1c00e99e:	02f60f63          	beq	a2,a5,1c00e9dc <memcpy+0xba>
1c00e9a2:	0005c603          	lbu	a2,0(a1)
1c00e9a6:	fff68793          	addi	a5,a3,-1
1c00e9aa:	00c70023          	sb	a2,0(a4)
1c00e9ae:	c79d                	beqz	a5,1c00e9dc <memcpy+0xba>
1c00e9b0:	0015c603          	lbu	a2,1(a1)
1c00e9b4:	4789                	li	a5,2
1c00e9b6:	00c700a3          	sb	a2,1(a4)
1c00e9ba:	02f68163          	beq	a3,a5,1c00e9dc <memcpy+0xba>
1c00e9be:	0025c783          	lbu	a5,2(a1)
1c00e9c2:	00f70123          	sb	a5,2(a4)
1c00e9c6:	8082                	ret
1c00e9c8:	962e                	add	a2,a2,a1
1c00e9ca:	87aa                	mv	a5,a0
1c00e9cc:	0005c703          	lbu	a4,0(a1)
1c00e9d0:	0585                	addi	a1,a1,1
1c00e9d2:	0785                	addi	a5,a5,1
1c00e9d4:	fee78fa3          	sb	a4,-1(a5)
1c00e9d8:	fec59ae3          	bne	a1,a2,1c00e9cc <memcpy+0xaa>
1c00e9dc:	8082                	ret
1c00e9de:	de7d                	beqz	a2,1c00e9dc <memcpy+0xba>
1c00e9e0:	87aa                	mv	a5,a0
1c00e9e2:	4194                	lw	a3,0(a1)
1c00e9e4:	0791                	addi	a5,a5,4
1c00e9e6:	40c78733          	sub	a4,a5,a2
1c00e9ea:	fed7ae23          	sw	a3,-4(a5)
1c00e9ee:	0591                	addi	a1,a1,4
1c00e9f0:	fea719e3          	bne	a4,a0,1c00e9e2 <memcpy+0xc0>
1c00e9f4:	8082                	ret
1c00e9f6:	8082                	ret

1c00e9f8 <memmove>:
1c00e9f8:	40b507b3          	sub	a5,a0,a1
1c00e9fc:	0ac7e063          	bltu	a5,a2,1c00ea9c <memmove+0xa4>
1c00ea00:	c661                	beqz	a2,1c00eac8 <memmove+0xd0>
1c00ea02:	00350793          	addi	a5,a0,3
1c00ea06:	8f8d                	sub	a5,a5,a1
1c00ea08:	0077b793          	sltiu	a5,a5,7
1c00ea0c:	e3dd                	bnez	a5,1c00eab2 <memmove+0xba>
1c00ea0e:	fff60793          	addi	a5,a2,-1
1c00ea12:	0047b793          	sltiu	a5,a5,4
1c00ea16:	efd1                	bnez	a5,1c00eab2 <memmove+0xba>
1c00ea18:	ffc67e13          	andi	t3,a2,-4
1c00ea1c:	872e                	mv	a4,a1
1c00ea1e:	882a                	mv	a6,a0
1c00ea20:	9e2e                	add	t3,t3,a1
1c00ea22:	00174883          	lbu	a7,1(a4)
1c00ea26:	00074303          	lbu	t1,0(a4)
1c00ea2a:	00274683          	lbu	a3,2(a4)
1c00ea2e:	00374783          	lbu	a5,3(a4)
1c00ea32:	08a2                	slli	a7,a7,0x8
1c00ea34:	0068e8b3          	or	a7,a7,t1
1c00ea38:	06c2                	slli	a3,a3,0x10
1c00ea3a:	0116e6b3          	or	a3,a3,a7
1c00ea3e:	07e2                	slli	a5,a5,0x18
1c00ea40:	8fd5                	or	a5,a5,a3
1c00ea42:	0087d313          	srli	t1,a5,0x8
1c00ea46:	0107d893          	srli	a7,a5,0x10
1c00ea4a:	83e1                	srli	a5,a5,0x18
1c00ea4c:	00d80023          	sb	a3,0(a6)
1c00ea50:	006800a3          	sb	t1,1(a6)
1c00ea54:	01180123          	sb	a7,2(a6)
1c00ea58:	00f801a3          	sb	a5,3(a6)
1c00ea5c:	0711                	addi	a4,a4,4
1c00ea5e:	0811                	addi	a6,a6,4
1c00ea60:	fdc711e3          	bne	a4,t3,1c00ea22 <memmove+0x2a>
1c00ea64:	ffc67793          	andi	a5,a2,-4
1c00ea68:	00367693          	andi	a3,a2,3
1c00ea6c:	00f50733          	add	a4,a0,a5
1c00ea70:	95be                	add	a1,a1,a5
1c00ea72:	04f60a63          	beq	a2,a5,1c00eac6 <memmove+0xce>
1c00ea76:	0005c603          	lbu	a2,0(a1)
1c00ea7a:	fff68793          	addi	a5,a3,-1
1c00ea7e:	00c70023          	sb	a2,0(a4)
1c00ea82:	c3b1                	beqz	a5,1c00eac6 <memmove+0xce>
1c00ea84:	0015c603          	lbu	a2,1(a1)
1c00ea88:	4789                	li	a5,2
1c00ea8a:	00c700a3          	sb	a2,1(a4)
1c00ea8e:	02f68c63          	beq	a3,a5,1c00eac6 <memmove+0xce>
1c00ea92:	0025c783          	lbu	a5,2(a1)
1c00ea96:	00f70123          	sb	a5,2(a4)
1c00ea9a:	8082                	ret
1c00ea9c:	167d                	addi	a2,a2,-1
1c00ea9e:	00c587b3          	add	a5,a1,a2
1c00eaa2:	0007c703          	lbu	a4,0(a5)
1c00eaa6:	00c507b3          	add	a5,a0,a2
1c00eaaa:	00e78023          	sb	a4,0(a5)
1c00eaae:	f67d                	bnez	a2,1c00ea9c <memmove+0xa4>
1c00eab0:	8082                	ret
1c00eab2:	962a                	add	a2,a2,a0
1c00eab4:	87aa                	mv	a5,a0
1c00eab6:	0005c703          	lbu	a4,0(a1)
1c00eaba:	0785                	addi	a5,a5,1
1c00eabc:	0585                	addi	a1,a1,1
1c00eabe:	fee78fa3          	sb	a4,-1(a5)
1c00eac2:	fec79ae3          	bne	a5,a2,1c00eab6 <memmove+0xbe>
1c00eac6:	8082                	ret
1c00eac8:	8082                	ret

1c00eaca <strchr>:
1c00eaca:	00054703          	lbu	a4,0(a0)
1c00eace:	0ff5f593          	andi	a1,a1,255
1c00ead2:	87aa                	mv	a5,a0
1c00ead4:	00b70863          	beq	a4,a1,1c00eae4 <strchr+0x1a>
1c00ead8:	cb01                	beqz	a4,1c00eae8 <strchr+0x1e>
1c00eada:	0017c703          	lbu	a4,1(a5)
1c00eade:	0785                	addi	a5,a5,1
1c00eae0:	feb71ce3          	bne	a4,a1,1c00ead8 <strchr+0xe>
1c00eae4:	853e                	mv	a0,a5
1c00eae6:	8082                	ret
1c00eae8:	4501                	li	a0,0
1c00eaea:	dded                	beqz	a1,1c00eae4 <strchr+0x1a>
1c00eaec:	8082                	ret

1c00eaee <puts>:
1c00eaee:	00054783          	lbu	a5,0(a0)
1c00eaf2:	c78d                	beqz	a5,1c00eb1c <puts+0x2e>
1c00eaf4:	f14026f3          	csrr	a3,mhartid
1c00eaf8:	00369713          	slli	a4,a3,0x3
1c00eafc:	1a10f637          	lui	a2,0x1a10f
1c00eb00:	0ff77713          	andi	a4,a4,255
1c00eb04:	9732                	add	a4,a4,a2
1c00eb06:	6609                	lui	a2,0x2
1c00eb08:	068a                	slli	a3,a3,0x2
1c00eb0a:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00eb0e:	8ef1                	and	a3,a3,a2
1c00eb10:	9736                	add	a4,a4,a3
1c00eb12:	c31c                	sw	a5,0(a4)
1c00eb14:	00154783          	lbu	a5,1(a0)
1c00eb18:	0505                	addi	a0,a0,1
1c00eb1a:	ffe5                	bnez	a5,1c00eb12 <puts+0x24>
1c00eb1c:	f1402773          	csrr	a4,mhartid
1c00eb20:	00371793          	slli	a5,a4,0x3
1c00eb24:	1a10f6b7          	lui	a3,0x1a10f
1c00eb28:	0ff7f793          	andi	a5,a5,255
1c00eb2c:	97b6                	add	a5,a5,a3
1c00eb2e:	6689                	lui	a3,0x2
1c00eb30:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00eb34:	070a                	slli	a4,a4,0x2
1c00eb36:	8f75                	and	a4,a4,a3
1c00eb38:	97ba                	add	a5,a5,a4
1c00eb3a:	4729                	li	a4,10
1c00eb3c:	c398                	sw	a4,0(a5)
1c00eb3e:	4501                	li	a0,0
1c00eb40:	8082                	ret

1c00eb42 <pos_libc_fputc_locked>:
1c00eb42:	6689                	lui	a3,0x2
1c00eb44:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00eb48:	f14027f3          	csrr	a5,mhartid
1c00eb4c:	00379713          	slli	a4,a5,0x3
1c00eb50:	078a                	slli	a5,a5,0x2
1c00eb52:	8ff5                	and	a5,a5,a3
1c00eb54:	0ff77713          	andi	a4,a4,255
1c00eb58:	1a10f6b7          	lui	a3,0x1a10f
1c00eb5c:	9736                	add	a4,a4,a3
1c00eb5e:	97ba                	add	a5,a5,a4
1c00eb60:	0ff57513          	andi	a0,a0,255
1c00eb64:	c388                	sw	a0,0(a5)
1c00eb66:	4501                	li	a0,0
1c00eb68:	8082                	ret

1c00eb6a <putchar>:
1c00eb6a:	6689                	lui	a3,0x2
1c00eb6c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00eb70:	f14027f3          	csrr	a5,mhartid
1c00eb74:	00379713          	slli	a4,a5,0x3
1c00eb78:	078a                	slli	a5,a5,0x2
1c00eb7a:	8ff5                	and	a5,a5,a3
1c00eb7c:	0ff77713          	andi	a4,a4,255
1c00eb80:	1a10f6b7          	lui	a3,0x1a10f
1c00eb84:	9736                	add	a4,a4,a3
1c00eb86:	97ba                	add	a5,a5,a4
1c00eb88:	0ff57513          	andi	a0,a0,255
1c00eb8c:	c388                	sw	a0,0(a5)
1c00eb8e:	4501                	li	a0,0
1c00eb90:	8082                	ret

1c00eb92 <pos_libc_prf_locked>:
1c00eb92:	a0b1                	j	1c00ebde <pos_libc_prf>

1c00eb94 <exit>:
1c00eb94:	800007b7          	lui	a5,0x80000
1c00eb98:	1141                	addi	sp,sp,-16
1c00eb9a:	8d5d                	or	a0,a0,a5
1c00eb9c:	c606                	sw	ra,12(sp)
1c00eb9e:	1a1047b7          	lui	a5,0x1a104
1c00eba2:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00eba6:	3b99                	jal	1c00e8fc <pos_wait_forever>

1c00eba8 <pos_io_start>:
1c00eba8:	4501                	li	a0,0
1c00ebaa:	8082                	ret

1c00ebac <pos_io_stop>:
1c00ebac:	4501                	li	a0,0
1c00ebae:	8082                	ret

1c00ebb0 <printf>:
1c00ebb0:	7139                	addi	sp,sp,-64
1c00ebb2:	02410313          	addi	t1,sp,36
1c00ebb6:	d432                	sw	a2,40(sp)
1c00ebb8:	862a                	mv	a2,a0
1c00ebba:	1c00f537          	lui	a0,0x1c00f
1c00ebbe:	d22e                	sw	a1,36(sp)
1c00ebc0:	d636                	sw	a3,44(sp)
1c00ebc2:	4589                	li	a1,2
1c00ebc4:	869a                	mv	a3,t1
1c00ebc6:	b4250513          	addi	a0,a0,-1214 # 1c00eb42 <pos_libc_fputc_locked>
1c00ebca:	ce06                	sw	ra,28(sp)
1c00ebcc:	d83a                	sw	a4,48(sp)
1c00ebce:	da3e                	sw	a5,52(sp)
1c00ebd0:	dc42                	sw	a6,56(sp)
1c00ebd2:	de46                	sw	a7,60(sp)
1c00ebd4:	c61a                	sw	t1,12(sp)
1c00ebd6:	3f75                	jal	1c00eb92 <pos_libc_prf_locked>
1c00ebd8:	40f2                	lw	ra,28(sp)
1c00ebda:	6121                	addi	sp,sp,64
1c00ebdc:	8082                	ret

1c00ebde <pos_libc_prf>:
1c00ebde:	7169                	addi	sp,sp,-304
1c00ebe0:	12112623          	sw	ra,300(sp)
1c00ebe4:	12812423          	sw	s0,296(sp)
1c00ebe8:	12912223          	sw	s1,292(sp)
1c00ebec:	13212023          	sw	s2,288(sp)
1c00ebf0:	11312e23          	sw	s3,284(sp)
1c00ebf4:	11412c23          	sw	s4,280(sp)
1c00ebf8:	11512a23          	sw	s5,276(sp)
1c00ebfc:	11612823          	sw	s6,272(sp)
1c00ec00:	11712623          	sw	s7,268(sp)
1c00ec04:	11812423          	sw	s8,264(sp)
1c00ec08:	11912223          	sw	s9,260(sp)
1c00ec0c:	11a12023          	sw	s10,256(sp)
1c00ec10:	dfee                	sw	s11,252(sp)
1c00ec12:	00064783          	lbu	a5,0(a2)
1c00ec16:	c636                	sw	a3,12(sp)
1c00ec18:	3c0781e3          	beqz	a5,1c00f7da <pos_libc_prf+0xbfc>
1c00ec1c:	7741                	lui	a4,0xffff0
1c00ec1e:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00ec22:	cc3a                	sw	a4,24(sp)
1c00ec24:	10000737          	lui	a4,0x10000
1c00ec28:	177d                	addi	a4,a4,-1
1c00ec2a:	8caa                	mv	s9,a0
1c00ec2c:	84ae                	mv	s1,a1
1c00ec2e:	00160c13          	addi	s8,a2,1
1c00ec32:	4401                	li	s0,0
1c00ec34:	1c000d37          	lui	s10,0x1c000
1c00ec38:	ca3a                	sw	a4,20(sp)
1c00ec3a:	853e                	mv	a0,a5
1c00ec3c:	02500793          	li	a5,37
1c00ec40:	04f50863          	beq	a0,a5,1c00ec90 <pos_libc_prf+0xb2>
1c00ec44:	85a6                	mv	a1,s1
1c00ec46:	9c82                	jalr	s9
1c00ec48:	57fd                	li	a5,-1
1c00ec4a:	4cf50b63          	beq	a0,a5,1c00f120 <pos_libc_prf+0x542>
1c00ec4e:	0405                	addi	s0,s0,1
1c00ec50:	000c4503          	lbu	a0,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00ec54:	0c05                	addi	s8,s8,1
1c00ec56:	f17d                	bnez	a0,1c00ec3c <pos_libc_prf+0x5e>
1c00ec58:	12c12083          	lw	ra,300(sp)
1c00ec5c:	8522                	mv	a0,s0
1c00ec5e:	12812403          	lw	s0,296(sp)
1c00ec62:	12412483          	lw	s1,292(sp)
1c00ec66:	12012903          	lw	s2,288(sp)
1c00ec6a:	11c12983          	lw	s3,284(sp)
1c00ec6e:	11812a03          	lw	s4,280(sp)
1c00ec72:	11412a83          	lw	s5,276(sp)
1c00ec76:	11012b03          	lw	s6,272(sp)
1c00ec7a:	10c12b83          	lw	s7,268(sp)
1c00ec7e:	10812c03          	lw	s8,264(sp)
1c00ec82:	10412c83          	lw	s9,260(sp)
1c00ec86:	10012d03          	lw	s10,256(sp)
1c00ec8a:	5dfe                	lw	s11,252(sp)
1c00ec8c:	6155                	addi	sp,sp,304
1c00ec8e:	8082                	ret
1c00ec90:	8de2                	mv	s11,s8
1c00ec92:	000dcc03          	lbu	s8,0(s11)
1c00ec96:	248d0513          	addi	a0,s10,584 # 1c000248 <PQCLEAN_KYBER1024_CLEAN_zetas+0x100>
1c00ec9a:	c826                	sw	s1,16(sp)
1c00ec9c:	85e2                	mv	a1,s8
1c00ec9e:	c202                	sw	zero,4(sp)
1c00eca0:	c402                	sw	zero,8(sp)
1c00eca2:	c002                	sw	zero,0(sp)
1c00eca4:	001d8493          	addi	s1,s11,1
1c00eca8:	350d                	jal	1c00eaca <strchr>
1c00ecaa:	02000913          	li	s2,32
1c00ecae:	4b81                	li	s7,0
1c00ecb0:	02b00993          	li	s3,43
1c00ecb4:	02d00b13          	li	s6,45
1c00ecb8:	03000a93          	li	s5,48
1c00ecbc:	02000a13          	li	s4,32
1c00ecc0:	8626                	mv	a2,s1
1c00ecc2:	c51d                	beqz	a0,1c00ecf0 <pos_libc_prf+0x112>
1c00ecc4:	413c0e63          	beq	s8,s3,1c00f0e0 <pos_libc_prf+0x502>
1c00ecc8:	3f89ec63          	bltu	s3,s8,1c00f0c0 <pos_libc_prf+0x4e2>
1c00eccc:	414c0663          	beq	s8,s4,1c00f0d8 <pos_libc_prf+0x4fa>
1c00ecd0:	02300793          	li	a5,35
1c00ecd4:	3efc1363          	bne	s8,a5,1c00f0ba <pos_libc_prf+0x4dc>
1c00ecd8:	4b85                	li	s7,1
1c00ecda:	8da6                	mv	s11,s1
1c00ecdc:	000dcc03          	lbu	s8,0(s11)
1c00ece0:	248d0513          	addi	a0,s10,584
1c00ece4:	001d8493          	addi	s1,s11,1
1c00ece8:	85e2                	mv	a1,s8
1c00ecea:	33c5                	jal	1c00eaca <strchr>
1c00ecec:	8626                	mv	a2,s1
1c00ecee:	f979                	bnez	a0,1c00ecc4 <pos_libc_prf+0xe6>
1c00ecf0:	87e2                	mv	a5,s8
1c00ecf2:	ce5e                	sw	s7,28(sp)
1c00ecf4:	02a00693          	li	a3,42
1c00ecf8:	8c6e                	mv	s8,s11
1c00ecfa:	8ba6                	mv	s7,s1
1c00ecfc:	8dbe                	mv	s11,a5
1c00ecfe:	44c2                	lw	s1,16(sp)
1c00ed00:	42d78263          	beq	a5,a3,1c00f124 <pos_libc_prf+0x546>
1c00ed04:	fd078693          	addi	a3,a5,-48
1c00ed08:	4525                	li	a0,9
1c00ed0a:	4a01                	li	s4,0
1c00ed0c:	3cd57f63          	bgeu	a0,a3,1c00f0ea <pos_libc_prf+0x50c>
1c00ed10:	02e00793          	li	a5,46
1c00ed14:	5afd                	li	s5,-1
1c00ed16:	74fd8363          	beq	s11,a5,1c00f45c <pos_libc_prf+0x87e>
1c00ed1a:	1c0007b7          	lui	a5,0x1c000
1c00ed1e:	85ee                	mv	a1,s11
1c00ed20:	25078513          	addi	a0,a5,592 # 1c000250 <PQCLEAN_KYBER1024_CLEAN_zetas+0x108>
1c00ed24:	c832                	sw	a2,16(sp)
1c00ed26:	3355                	jal	1c00eaca <strchr>
1c00ed28:	4642                	lw	a2,16(sp)
1c00ed2a:	8c32                	mv	s8,a2
1c00ed2c:	c509                	beqz	a0,1c00ed36 <pos_libc_prf+0x158>
1c00ed2e:	00064d83          	lbu	s11,0(a2)
1c00ed32:	00160c13          	addi	s8,a2,1
1c00ed36:	06900793          	li	a5,105
1c00ed3a:	0afd8ee3          	beq	s11,a5,1c00f5f6 <pos_libc_prf+0xa18>
1c00ed3e:	4db7c763          	blt	a5,s11,1c00f20c <pos_libc_prf+0x62e>
1c00ed42:	05800793          	li	a5,88
1c00ed46:	4efd8163          	beq	s11,a5,1c00f228 <pos_libc_prf+0x64a>
1c00ed4a:	41b7c163          	blt	a5,s11,1c00f14c <pos_libc_prf+0x56e>
1c00ed4e:	02500793          	li	a5,37
1c00ed52:	26fd8ae3          	beq	s11,a5,1c00f7c6 <pos_libc_prf+0xbe8>
1c00ed56:	3fb7d863          	bge	a5,s11,1c00f146 <pos_libc_prf+0x568>
1c00ed5a:	fbbd8793          	addi	a5,s11,-69
1c00ed5e:	4689                	li	a3,2
1c00ed60:	eef6e8e3          	bltu	a3,a5,1c00ec50 <pos_libc_prf+0x72>
1c00ed64:	47b2                	lw	a5,12(sp)
1c00ed66:	7ff00893          	li	a7,2047
1c00ed6a:	00778b13          	addi	s6,a5,7
1c00ed6e:	ff8b7b13          	andi	s6,s6,-8
1c00ed72:	004b2783          	lw	a5,4(s6)
1c00ed76:	000b2603          	lw	a2,0(s6)
1c00ed7a:	0b21                	addi	s6,s6,8
1c00ed7c:	00b79693          	slli	a3,a5,0xb
1c00ed80:	01565513          	srli	a0,a2,0x15
1c00ed84:	8ec9                	or	a3,a3,a0
1c00ed86:	0147d813          	srli	a6,a5,0x14
1c00ed8a:	0686                	slli	a3,a3,0x1
1c00ed8c:	7ff87813          	andi	a6,a6,2047
1c00ed90:	0016d513          	srli	a0,a3,0x1
1c00ed94:	00b61313          	slli	t1,a2,0xb
1c00ed98:	86be                	mv	a3,a5
1c00ed9a:	41180263          	beq	a6,a7,1c00f19e <pos_libc_prf+0x5c0>
1c00ed9e:	04600793          	li	a5,70
1c00eda2:	00fd9463          	bne	s11,a5,1c00edaa <pos_libc_prf+0x1cc>
1c00eda6:	06600d93          	li	s11,102
1c00edaa:	006867b3          	or	a5,a6,t1
1c00edae:	00a7e8b3          	or	a7,a5,a0
1c00edb2:	862a                	mv	a2,a0
1c00edb4:	340885e3          	beqz	a7,1c00f8fe <pos_libc_prf+0xd20>
1c00edb8:	80000637          	lui	a2,0x80000
1c00edbc:	c0280813          	addi	a6,a6,-1022
1c00edc0:	879a                	mv	a5,t1
1c00edc2:	8e49                	or	a2,a2,a0
1c00edc4:	4606c7e3          	bltz	a3,1c00fa32 <pos_libc_prf+0xe54>
1c00edc8:	4722                	lw	a4,8(sp)
1c00edca:	480708e3          	beqz	a4,1c00fa5a <pos_libc_prf+0xe7c>
1c00edce:	02b00693          	li	a3,43
1c00edd2:	02d10223          	sb	a3,36(sp)
1c00edd6:	02510f13          	addi	t5,sp,37
1c00edda:	56f9                	li	a3,-2
1c00eddc:	4301                	li	t1,0
1c00edde:	06d85663          	bge	a6,a3,1c00ee4a <pos_libc_prf+0x26c>
1c00ede2:	333338b7          	lui	a7,0x33333
1c00ede6:	80000e37          	lui	t3,0x80000
1c00edea:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00edee:	fffe4e13          	not	t3,t3
1c00edf2:	5ef9                	li	t4,-2
1c00edf4:	01f61593          	slli	a1,a2,0x1f
1c00edf8:	0017d693          	srli	a3,a5,0x1
1c00edfc:	0017f713          	andi	a4,a5,1
1c00ee00:	8ecd                	or	a3,a3,a1
1c00ee02:	00d707b3          	add	a5,a4,a3
1c00ee06:	00e7b733          	sltu	a4,a5,a4
1c00ee0a:	8205                	srli	a2,a2,0x1
1c00ee0c:	963a                	add	a2,a2,a4
1c00ee0e:	8742                	mv	a4,a6
1c00ee10:	0805                	addi	a6,a6,1
1c00ee12:	fec8e1e3          	bltu	a7,a2,1c00edf4 <pos_libc_prf+0x216>
1c00ee16:	00279593          	slli	a1,a5,0x2
1c00ee1a:	01e7d513          	srli	a0,a5,0x1e
1c00ee1e:	00261693          	slli	a3,a2,0x2
1c00ee22:	97ae                	add	a5,a5,a1
1c00ee24:	8ec9                	or	a3,a3,a0
1c00ee26:	9636                	add	a2,a2,a3
1c00ee28:	00b7b5b3          	sltu	a1,a5,a1
1c00ee2c:	962e                	add	a2,a2,a1
1c00ee2e:	01f7d693          	srli	a3,a5,0x1f
1c00ee32:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00ee36:	137d                	addi	t1,t1,-1
1c00ee38:	01c61763          	bne	a2,t3,1c00ee46 <pos_libc_prf+0x268>
1c00ee3c:	00170813          	addi	a6,a4,1
1c00ee40:	0786                	slli	a5,a5,0x1
1c00ee42:	ffe6e613          	ori	a2,a3,-2
1c00ee46:	fbd847e3          	blt	a6,t4,1c00edf4 <pos_libc_prf+0x216>
1c00ee4a:	07005363          	blez	a6,1c00eeb0 <pos_libc_prf+0x2d2>
1c00ee4e:	800008b7          	lui	a7,0x80000
1c00ee52:	4e15                	li	t3,5
1c00ee54:	fff8c893          	not	a7,a7
1c00ee58:	00278693          	addi	a3,a5,2
1c00ee5c:	00f6b7b3          	sltu	a5,a3,a5
1c00ee60:	963e                	add	a2,a2,a5
1c00ee62:	03c657b3          	divu	a5,a2,t3
1c00ee66:	0036d713          	srli	a4,a3,0x3
1c00ee6a:	187d                	addi	a6,a6,-1
1c00ee6c:	0305                	addi	t1,t1,1
1c00ee6e:	00279593          	slli	a1,a5,0x2
1c00ee72:	95be                	add	a1,a1,a5
1c00ee74:	8e0d                	sub	a2,a2,a1
1c00ee76:	0676                	slli	a2,a2,0x1d
1c00ee78:	8f51                	or	a4,a4,a2
1c00ee7a:	03c75633          	divu	a2,a4,t3
1c00ee7e:	00361713          	slli	a4,a2,0x3
1c00ee82:	00561593          	slli	a1,a2,0x5
1c00ee86:	95ba                	add	a1,a1,a4
1c00ee88:	8e8d                	sub	a3,a3,a1
1c00ee8a:	03c6d6b3          	divu	a3,a3,t3
1c00ee8e:	8275                	srli	a2,a2,0x1d
1c00ee90:	963e                	add	a2,a2,a5
1c00ee92:	00e687b3          	add	a5,a3,a4
1c00ee96:	00d7b6b3          	sltu	a3,a5,a3
1c00ee9a:	9636                	add	a2,a2,a3
1c00ee9c:	01f7d713          	srli	a4,a5,0x1f
1c00eea0:	0606                	slli	a2,a2,0x1
1c00eea2:	8e59                	or	a2,a2,a4
1c00eea4:	0786                	slli	a5,a5,0x1
1c00eea6:	187d                	addi	a6,a6,-1
1c00eea8:	fec8fae3          	bgeu	a7,a2,1c00ee9c <pos_libc_prf+0x2be>
1c00eeac:	fb0046e3          	bgtz	a6,1c00ee58 <pos_libc_prf+0x27a>
1c00eeb0:	4e11                	li	t3,4
1c00eeb2:	01f61693          	slli	a3,a2,0x1f
1c00eeb6:	0017d713          	srli	a4,a5,0x1
1c00eeba:	8f55                	or	a4,a4,a3
1c00eebc:	8b85                	andi	a5,a5,1
1c00eebe:	00e78533          	add	a0,a5,a4
1c00eec2:	8205                	srli	a2,a2,0x1
1c00eec4:	00f537b3          	sltu	a5,a0,a5
1c00eec8:	00c788b3          	add	a7,a5,a2
1c00eecc:	0805                	addi	a6,a6,1
1c00eece:	87aa                	mv	a5,a0
1c00eed0:	8646                	mv	a2,a7
1c00eed2:	ffc810e3          	bne	a6,t3,1c00eeb2 <pos_libc_prf+0x2d4>
1c00eed6:	06700793          	li	a5,103
1c00eeda:	2a0acee3          	bltz	s5,1c00f996 <pos_libc_prf+0xdb8>
1c00eede:	28fd83e3          	beq	s11,a5,1c00f964 <pos_libc_prf+0xd86>
1c00eee2:	04700793          	li	a5,71
1c00eee6:	26fd8fe3          	beq	s11,a5,1c00f964 <pos_libc_prf+0xd86>
1c00eeea:	06600793          	li	a5,102
1c00eeee:	2cfd85e3          	beq	s11,a5,1c00f9b8 <pos_libc_prf+0xdda>
1c00eef2:	001a8813          	addi	a6,s5,1
1c00eef6:	47c1                	li	a5,16
1c00eef8:	0107d363          	bge	a5,a6,1c00eefe <pos_libc_prf+0x320>
1c00eefc:	4841                	li	a6,16
1c00eefe:	187d                	addi	a6,a6,-1
1c00ef00:	4601                	li	a2,0
1c00ef02:	4781                	li	a5,0
1c00ef04:	080006b7          	lui	a3,0x8000
1c00ef08:	4e15                	li	t3,5
1c00ef0a:	5efd                	li	t4,-1
1c00ef0c:	00278713          	addi	a4,a5,2
1c00ef10:	00f737b3          	sltu	a5,a4,a5
1c00ef14:	97b6                	add	a5,a5,a3
1c00ef16:	03c7dfb3          	divu	t6,a5,t3
1c00ef1a:	00375593          	srli	a1,a4,0x3
1c00ef1e:	187d                	addi	a6,a6,-1
1c00ef20:	002f9693          	slli	a3,t6,0x2
1c00ef24:	96fe                	add	a3,a3,t6
1c00ef26:	8f95                	sub	a5,a5,a3
1c00ef28:	07f6                	slli	a5,a5,0x1d
1c00ef2a:	8ddd                	or	a1,a1,a5
1c00ef2c:	03c5d5b3          	divu	a1,a1,t3
1c00ef30:	00359693          	slli	a3,a1,0x3
1c00ef34:	00559793          	slli	a5,a1,0x5
1c00ef38:	97b6                	add	a5,a5,a3
1c00ef3a:	8f1d                	sub	a4,a4,a5
1c00ef3c:	03c757b3          	divu	a5,a4,t3
1c00ef40:	81f5                	srli	a1,a1,0x1d
1c00ef42:	95fe                	add	a1,a1,t6
1c00ef44:	96be                	add	a3,a3,a5
1c00ef46:	00f6b733          	sltu	a4,a3,a5
1c00ef4a:	972e                	add	a4,a4,a1
1c00ef4c:	01f71593          	slli	a1,a4,0x1f
1c00ef50:	0016d793          	srli	a5,a3,0x1
1c00ef54:	8fcd                	or	a5,a5,a1
1c00ef56:	8a85                	andi	a3,a3,1
1c00ef58:	97b6                	add	a5,a5,a3
1c00ef5a:	8305                	srli	a4,a4,0x1
1c00ef5c:	00d7b6b3          	sltu	a3,a5,a3
1c00ef60:	96ba                	add	a3,a3,a4
1c00ef62:	fbd815e3          	bne	a6,t4,1c00ef0c <pos_libc_prf+0x32e>
1c00ef66:	97aa                	add	a5,a5,a0
1c00ef68:	96c6                	add	a3,a3,a7
1c00ef6a:	00a7b533          	sltu	a0,a5,a0
1c00ef6e:	00d508b3          	add	a7,a0,a3
1c00ef72:	f00006b7          	lui	a3,0xf0000
1c00ef76:	0116f6b3          	and	a3,a3,a7
1c00ef7a:	c2b5                	beqz	a3,1c00efde <pos_libc_prf+0x400>
1c00ef7c:	00278813          	addi	a6,a5,2
1c00ef80:	00f836b3          	sltu	a3,a6,a5
1c00ef84:	98b6                	add	a7,a7,a3
1c00ef86:	4e95                	li	t4,5
1c00ef88:	03d8de33          	divu	t3,a7,t4
1c00ef8c:	00385693          	srli	a3,a6,0x3
1c00ef90:	0305                	addi	t1,t1,1
1c00ef92:	002e1513          	slli	a0,t3,0x2
1c00ef96:	9572                	add	a0,a0,t3
1c00ef98:	40a888b3          	sub	a7,a7,a0
1c00ef9c:	01d89513          	slli	a0,a7,0x1d
1c00efa0:	8ec9                	or	a3,a3,a0
1c00efa2:	03d6d6b3          	divu	a3,a3,t4
1c00efa6:	00369513          	slli	a0,a3,0x3
1c00efaa:	00569793          	slli	a5,a3,0x5
1c00efae:	97aa                	add	a5,a5,a0
1c00efb0:	40f807b3          	sub	a5,a6,a5
1c00efb4:	03d7d7b3          	divu	a5,a5,t4
1c00efb8:	82f5                	srli	a3,a3,0x1d
1c00efba:	96f2                	add	a3,a3,t3
1c00efbc:	953e                	add	a0,a0,a5
1c00efbe:	00f537b3          	sltu	a5,a0,a5
1c00efc2:	96be                	add	a3,a3,a5
1c00efc4:	01f69813          	slli	a6,a3,0x1f
1c00efc8:	00155793          	srli	a5,a0,0x1
1c00efcc:	00f867b3          	or	a5,a6,a5
1c00efd0:	8905                	andi	a0,a0,1
1c00efd2:	97aa                	add	a5,a5,a0
1c00efd4:	8285                	srli	a3,a3,0x1
1c00efd6:	00a7b533          	sltu	a0,a5,a0
1c00efda:	00d508b3          	add	a7,a0,a3
1c00efde:	001f0993          	addi	s3,t5,1
1c00efe2:	06600693          	li	a3,102
1c00efe6:	884e                	mv	a6,s3
1c00efe8:	4edd8163          	beq	s11,a3,1c00f4ca <pos_libc_prf+0x8ec>
1c00efec:	00279693          	slli	a3,a5,0x2
1c00eff0:	01e7d513          	srli	a0,a5,0x1e
1c00eff4:	00289e13          	slli	t3,a7,0x2
1c00eff8:	97b6                	add	a5,a5,a3
1c00effa:	01c56e33          	or	t3,a0,t3
1c00effe:	00d7b833          	sltu	a6,a5,a3
1c00f002:	011e06b3          	add	a3,t3,a7
1c00f006:	9836                	add	a6,a6,a3
1c00f008:	0806                	slli	a6,a6,0x1
1c00f00a:	01f7d693          	srli	a3,a5,0x1f
1c00f00e:	0106e833          	or	a6,a3,a6
1c00f012:	01c85693          	srli	a3,a6,0x1c
1c00f016:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00f01a:	4772                	lw	a4,28(sp)
1c00f01c:	00af0023          	sb	a0,0(t5)
1c00f020:	00179513          	slli	a0,a5,0x1
1c00f024:	47d2                	lw	a5,20(sp)
1c00f026:	00d036b3          	snez	a3,a3
1c00f02a:	01576bb3          	or	s7,a4,s5
1c00f02e:	00f87833          	and	a6,a6,a5
1c00f032:	40d30333          	sub	t1,t1,a3
1c00f036:	060b8463          	beqz	s7,1c00f09e <pos_libc_prf+0x4c0>
1c00f03a:	02e00793          	li	a5,46
1c00f03e:	00ff00a3          	sb	a5,1(t5)
1c00f042:	002f0993          	addi	s3,t5,2
1c00f046:	040a8c63          	beqz	s5,1c00f09e <pos_libc_prf+0x4c0>
1c00f04a:	002a8793          	addi	a5,s5,2
1c00f04e:	9f3e                	add	t5,t5,a5
1c00f050:	88ce                	mv	a7,s3
1c00f052:	4ebd                	li	t4,15
1c00f054:	03000f93          	li	t6,48
1c00f058:	00251793          	slli	a5,a0,0x2
1c00f05c:	01e55693          	srli	a3,a0,0x1e
1c00f060:	00281713          	slli	a4,a6,0x2
1c00f064:	00a785b3          	add	a1,a5,a0
1c00f068:	8f55                	or	a4,a4,a3
1c00f06a:	9742                	add	a4,a4,a6
1c00f06c:	00f5b7b3          	sltu	a5,a1,a5
1c00f070:	97ba                	add	a5,a5,a4
1c00f072:	0786                	slli	a5,a5,0x1
1c00f074:	01f5d713          	srli	a4,a1,0x1f
1c00f078:	8fd9                	or	a5,a5,a4
1c00f07a:	01c7d713          	srli	a4,a5,0x1c
1c00f07e:	03070713          	addi	a4,a4,48
1c00f082:	0885                	addi	a7,a7,1
1c00f084:	53d05763          	blez	t4,1c00f5b2 <pos_libc_prf+0x9d4>
1c00f088:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00f08c:	4752                	lw	a4,20(sp)
1c00f08e:	1efd                	addi	t4,t4,-1
1c00f090:	00159513          	slli	a0,a1,0x1
1c00f094:	00e7f833          	and	a6,a5,a4
1c00f098:	fd1f10e3          	bne	t5,a7,1c00f058 <pos_libc_prf+0x47a>
1c00f09c:	99d6                	add	s3,s3,s5
1c00f09e:	4e061c63          	bnez	a2,1c00f596 <pos_libc_prf+0x9b8>
1c00f0a2:	fdfdf793          	andi	a5,s11,-33
1c00f0a6:	04500693          	li	a3,69
1c00f0aa:	00d781e3          	beq	a5,a3,1c00f8ac <pos_libc_prf+0xcce>
1c00f0ae:	105c                	addi	a5,sp,36
1c00f0b0:	00098023          	sb	zero,0(s3)
1c00f0b4:	40f989b3          	sub	s3,s3,a5
1c00f0b8:	aa05                	j	1c00f1e8 <pos_libc_prf+0x60a>
1c00f0ba:	b80c0fe3          	beqz	s8,1c00ec58 <pos_libc_prf+0x7a>
1c00f0be:	b931                	j	1c00ecda <pos_libc_prf+0xfc>
1c00f0c0:	016c0863          	beq	s8,s6,1c00f0d0 <pos_libc_prf+0x4f2>
1c00f0c4:	c15c1be3          	bne	s8,s5,1c00ecda <pos_libc_prf+0xfc>
1c00f0c8:	03000913          	li	s2,48
1c00f0cc:	8da6                	mv	s11,s1
1c00f0ce:	b139                	j	1c00ecdc <pos_libc_prf+0xfe>
1c00f0d0:	4785                	li	a5,1
1c00f0d2:	c03e                	sw	a5,0(sp)
1c00f0d4:	8da6                	mv	s11,s1
1c00f0d6:	b119                	j	1c00ecdc <pos_libc_prf+0xfe>
1c00f0d8:	4785                	li	a5,1
1c00f0da:	c23e                	sw	a5,4(sp)
1c00f0dc:	8da6                	mv	s11,s1
1c00f0de:	befd                	j	1c00ecdc <pos_libc_prf+0xfe>
1c00f0e0:	4785                	li	a5,1
1c00f0e2:	c43e                	sw	a5,8(sp)
1c00f0e4:	8da6                	mv	s11,s1
1c00f0e6:	bedd                	j	1c00ecdc <pos_libc_prf+0xfe>
1c00f0e8:	0b85                	addi	s7,s7,1
1c00f0ea:	002a1793          	slli	a5,s4,0x2
1c00f0ee:	97d2                	add	a5,a5,s4
1c00f0f0:	0786                	slli	a5,a5,0x1
1c00f0f2:	97ee                	add	a5,a5,s11
1c00f0f4:	000bcd83          	lbu	s11,0(s7) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00f0f8:	fd078a13          	addi	s4,a5,-48
1c00f0fc:	8662                	mv	a2,s8
1c00f0fe:	fd0d8793          	addi	a5,s11,-48
1c00f102:	8c5e                	mv	s8,s7
1c00f104:	fef572e3          	bgeu	a0,a5,1c00f0e8 <pos_libc_prf+0x50a>
1c00f108:	0609                	addi	a2,a2,2
1c00f10a:	0c800793          	li	a5,200
1c00f10e:	c147f1e3          	bgeu	a5,s4,1c00ed10 <pos_libc_prf+0x132>
1c00f112:	0c800a13          	li	s4,200
1c00f116:	beed                	j	1c00ed10 <pos_libc_prf+0x132>
1c00f118:	0c800793          	li	a5,200
1c00f11c:	b3b7dae3          	bge	a5,s11,1c00ec50 <pos_libc_prf+0x72>
1c00f120:	547d                	li	s0,-1
1c00f122:	be1d                	j	1c00ec58 <pos_libc_prf+0x7a>
1c00f124:	47b2                	lw	a5,12(sp)
1c00f126:	0007aa03          	lw	s4,0(a5)
1c00f12a:	00478693          	addi	a3,a5,4
1c00f12e:	000a5663          	bgez	s4,1c00f13a <pos_libc_prf+0x55c>
1c00f132:	4785                	li	a5,1
1c00f134:	41400a33          	neg	s4,s4
1c00f138:	c03e                	sw	a5,0(sp)
1c00f13a:	000bcd83          	lbu	s11,0(s7)
1c00f13e:	c636                	sw	a3,12(sp)
1c00f140:	002c0613          	addi	a2,s8,2
1c00f144:	b7d9                	j	1c00f10a <pos_libc_prf+0x52c>
1c00f146:	b00d89e3          	beqz	s11,1c00ec58 <pos_libc_prf+0x7a>
1c00f14a:	b619                	j	1c00ec50 <pos_libc_prf+0x72>
1c00f14c:	06400793          	li	a5,100
1c00f150:	4afd8363          	beq	s11,a5,1c00f5f6 <pos_libc_prf+0xa18>
1c00f154:	19b7d963          	bge	a5,s11,1c00f2e6 <pos_libc_prf+0x708>
1c00f158:	f9bd8793          	addi	a5,s11,-101
1c00f15c:	4689                	li	a3,2
1c00f15e:	aef6e9e3          	bltu	a3,a5,1c00ec50 <pos_libc_prf+0x72>
1c00f162:	47b2                	lw	a5,12(sp)
1c00f164:	7ff00893          	li	a7,2047
1c00f168:	00778b13          	addi	s6,a5,7
1c00f16c:	ff8b7b13          	andi	s6,s6,-8
1c00f170:	004b2783          	lw	a5,4(s6)
1c00f174:	000b2603          	lw	a2,0(s6)
1c00f178:	0b21                	addi	s6,s6,8
1c00f17a:	00b79693          	slli	a3,a5,0xb
1c00f17e:	01565813          	srli	a6,a2,0x15
1c00f182:	0147d513          	srli	a0,a5,0x14
1c00f186:	00d866b3          	or	a3,a6,a3
1c00f18a:	0686                	slli	a3,a3,0x1
1c00f18c:	7ff57813          	andi	a6,a0,2047
1c00f190:	00b61313          	slli	t1,a2,0xb
1c00f194:	0016d513          	srli	a0,a3,0x1
1c00f198:	86be                	mv	a3,a5
1c00f19a:	c11818e3          	bne	a6,a7,1c00edaa <pos_libc_prf+0x1cc>
1c00f19e:	105c                	addi	a5,sp,36
1c00f1a0:	0006d863          	bgez	a3,1c00f1b0 <pos_libc_prf+0x5d2>
1c00f1a4:	02d00793          	li	a5,45
1c00f1a8:	02f10223          	sb	a5,36(sp)
1c00f1ac:	02510793          	addi	a5,sp,37
1c00f1b0:	00a36633          	or	a2,t1,a0
1c00f1b4:	fbfd8593          	addi	a1,s11,-65
1c00f1b8:	00378993          	addi	s3,a5,3
1c00f1bc:	46e5                	li	a3,25
1c00f1be:	0c0612e3          	bnez	a2,1c00fa82 <pos_libc_prf+0xea4>
1c00f1c2:	10b6e5e3          	bltu	a3,a1,1c00facc <pos_libc_prf+0xeee>
1c00f1c6:	04900693          	li	a3,73
1c00f1ca:	00d78023          	sb	a3,0(a5)
1c00f1ce:	04e00693          	li	a3,78
1c00f1d2:	00d780a3          	sb	a3,1(a5)
1c00f1d6:	04600693          	li	a3,70
1c00f1da:	00d78123          	sb	a3,2(a5)
1c00f1de:	000781a3          	sb	zero,3(a5)
1c00f1e2:	105c                	addi	a5,sp,36
1c00f1e4:	40f989b3          	sub	s3,s3,a5
1c00f1e8:	47a2                	lw	a5,8(sp)
1c00f1ea:	4712                	lw	a4,4(sp)
1c00f1ec:	8fd9                	or	a5,a5,a4
1c00f1ee:	ce3e                	sw	a5,28(sp)
1c00f1f0:	5e079b63          	bnez	a5,1c00f7e6 <pos_libc_prf+0xc08>
1c00f1f4:	02414683          	lbu	a3,36(sp)
1c00f1f8:	02d00793          	li	a5,45
1c00f1fc:	5ef68563          	beq	a3,a5,1c00f7e6 <pos_libc_prf+0xc08>
1c00f200:	0c800793          	li	a5,200
1c00f204:	0d37d863          	bge	a5,s3,1c00f2d4 <pos_libc_prf+0x6f6>
1c00f208:	547d                	li	s0,-1
1c00f20a:	b4b9                	j	1c00ec58 <pos_libc_prf+0x7a>
1c00f20c:	07000793          	li	a5,112
1c00f210:	46fd8f63          	beq	s11,a5,1c00f68e <pos_libc_prf+0xab0>
1c00f214:	1bb7d663          	bge	a5,s11,1c00f3c0 <pos_libc_prf+0x7e2>
1c00f218:	07500793          	li	a5,117
1c00f21c:	52fd8763          	beq	s11,a5,1c00f74a <pos_libc_prf+0xb6c>
1c00f220:	07800793          	li	a5,120
1c00f224:	16fd9163          	bne	s11,a5,1c00f386 <pos_libc_prf+0x7a8>
1c00f228:	47b2                	lw	a5,12(sp)
1c00f22a:	1054                	addi	a3,sp,36
1c00f22c:	4390                	lw	a2,0(a5)
1c00f22e:	00478b13          	addi	s6,a5,4
1c00f232:	47f2                	lw	a5,28(sp)
1c00f234:	28079163          	bnez	a5,1c00f4b6 <pos_libc_prf+0x8d8>
1c00f238:	87b6                	mv	a5,a3
1c00f23a:	4ea5                	li	t4,9
1c00f23c:	4e3d                	li	t3,15
1c00f23e:	a039                	j	1c00f24c <pos_libc_prf+0x66e>
1c00f240:	ff098fa3          	sb	a6,-1(s3)
1c00f244:	02ce7663          	bgeu	t3,a2,1c00f270 <pos_libc_prf+0x692>
1c00f248:	862a                	mv	a2,a0
1c00f24a:	87ce                	mv	a5,s3
1c00f24c:	00f67593          	andi	a1,a2,15
1c00f250:	00178993          	addi	s3,a5,1
1c00f254:	05758813          	addi	a6,a1,87
1c00f258:	03058713          	addi	a4,a1,48
1c00f25c:	00465513          	srli	a0,a2,0x4
1c00f260:	febee0e3          	bltu	t4,a1,1c00f240 <pos_libc_prf+0x662>
1c00f264:	00e78023          	sb	a4,0(a5)
1c00f268:	00178993          	addi	s3,a5,1
1c00f26c:	fcce6ee3          	bltu	t3,a2,1c00f248 <pos_libc_prf+0x66a>
1c00f270:	40d98633          	sub	a2,s3,a3
1c00f274:	01565c63          	bge	a2,s5,1c00f28c <pos_libc_prf+0x6ae>
1c00f278:	03000513          	li	a0,48
1c00f27c:	87ce                	mv	a5,s3
1c00f27e:	0985                	addi	s3,s3,1
1c00f280:	40d98733          	sub	a4,s3,a3
1c00f284:	fea98fa3          	sb	a0,-1(s3)
1c00f288:	ff574ae3          	blt	a4,s5,1c00f27c <pos_libc_prf+0x69e>
1c00f28c:	00098023          	sb	zero,0(s3)
1c00f290:	00f6fe63          	bgeu	a3,a5,1c00f2ac <pos_libc_prf+0x6ce>
1c00f294:	0006c603          	lbu	a2,0(a3)
1c00f298:	0007c703          	lbu	a4,0(a5)
1c00f29c:	0685                	addi	a3,a3,1
1c00f29e:	00c78023          	sb	a2,0(a5)
1c00f2a2:	fee68fa3          	sb	a4,-1(a3)
1c00f2a6:	17fd                	addi	a5,a5,-1
1c00f2a8:	fef6e6e3          	bltu	a3,a5,1c00f294 <pos_libc_prf+0x6b6>
1c00f2ac:	05800793          	li	a5,88
1c00f2b0:	66fd8463          	beq	s11,a5,1c00f918 <pos_libc_prf+0xd3a>
1c00f2b4:	105c                	addi	a5,sp,36
1c00f2b6:	40f989b3          	sub	s3,s3,a5
1c00f2ba:	47f2                	lw	a5,28(sp)
1c00f2bc:	c399                	beqz	a5,1c00f2c2 <pos_libc_prf+0x6e4>
1c00f2be:	4789                	li	a5,2
1c00f2c0:	ce3e                	sw	a5,28(sp)
1c00f2c2:	57fd                	li	a5,-1
1c00f2c4:	f2fa8ee3          	beq	s5,a5,1c00f200 <pos_libc_prf+0x622>
1c00f2c8:	0c800793          	li	a5,200
1c00f2cc:	e537cae3          	blt	a5,s3,1c00f120 <pos_libc_prf+0x542>
1c00f2d0:	02000913          	li	s2,32
1c00f2d4:	00198613          	addi	a2,s3,1
1c00f2d8:	0349c963          	blt	s3,s4,1c00f30a <pos_libc_prf+0x72c>
1c00f2dc:	c65a                	sw	s6,12(sp)
1c00f2de:	8a4e                	mv	s4,s3
1c00f2e0:	1a0a1663          	bnez	s4,1c00f48c <pos_libc_prf+0x8ae>
1c00f2e4:	b2b5                	j	1c00ec50 <pos_libc_prf+0x72>
1c00f2e6:	06300793          	li	a5,99
1c00f2ea:	96fd93e3          	bne	s11,a5,1c00ec50 <pos_libc_prf+0x72>
1c00f2ee:	4732                	lw	a4,12(sp)
1c00f2f0:	020102a3          	sb	zero,37(sp)
1c00f2f4:	4785                	li	a5,1
1c00f2f6:	4314                	lw	a3,0(a4)
1c00f2f8:	00470b13          	addi	s6,a4,4
1c00f2fc:	02d10223          	sb	a3,36(sp)
1c00f300:	1947d463          	bge	a5,s4,1c00f488 <pos_libc_prf+0x8aa>
1c00f304:	4609                	li	a2,2
1c00f306:	4985                	li	s3,1
1c00f308:	ce02                	sw	zero,28(sp)
1c00f30a:	4782                	lw	a5,0(sp)
1c00f30c:	4e078463          	beqz	a5,1c00f7f4 <pos_libc_prf+0xc16>
1c00f310:	413a07b3          	sub	a5,s4,s3
1c00f314:	4585                	li	a1,1
1c00f316:	0149d363          	bge	s3,s4,1c00f31c <pos_libc_prf+0x73e>
1c00f31a:	85be                	mv	a1,a5
1c00f31c:	17fd                	addi	a5,a5,-1
1c00f31e:	0037b793          	sltiu	a5,a5,3
1c00f322:	eb95                	bnez	a5,1c00f356 <pos_libc_prf+0x778>
1c00f324:	0349d963          	bge	s3,s4,1c00f356 <pos_libc_prf+0x778>
1c00f328:	105c                	addi	a5,sp,36
1c00f32a:	97ce                	add	a5,a5,s3
1c00f32c:	ffc5f613          	andi	a2,a1,-4
1c00f330:	963e                	add	a2,a2,a5
1c00f332:	02000693          	li	a3,32
1c00f336:	00d78023          	sb	a3,0(a5)
1c00f33a:	00d780a3          	sb	a3,1(a5)
1c00f33e:	00d78123          	sb	a3,2(a5)
1c00f342:	00d781a3          	sb	a3,3(a5)
1c00f346:	0791                	addi	a5,a5,4
1c00f348:	fef617e3          	bne	a2,a5,1c00f336 <pos_libc_prf+0x758>
1c00f34c:	ffc5f793          	andi	a5,a1,-4
1c00f350:	99be                	add	s3,s3,a5
1c00f352:	02b78663          	beq	a5,a1,1c00f37e <pos_libc_prf+0x7a0>
1c00f356:	199c                	addi	a5,sp,240
1c00f358:	97ce                	add	a5,a5,s3
1c00f35a:	02000693          	li	a3,32
1c00f35e:	f2d78a23          	sb	a3,-204(a5)
1c00f362:	00198793          	addi	a5,s3,1
1c00f366:	0147dc63          	bge	a5,s4,1c00f37e <pos_libc_prf+0x7a0>
1c00f36a:	1998                	addi	a4,sp,240
1c00f36c:	97ba                	add	a5,a5,a4
1c00f36e:	f2d78a23          	sb	a3,-204(a5)
1c00f372:	0989                	addi	s3,s3,2
1c00f374:	0149d563          	bge	s3,s4,1c00f37e <pos_libc_prf+0x7a0>
1c00f378:	99ba                	add	s3,s3,a4
1c00f37a:	f2d98a23          	sb	a3,-204(s3)
1c00f37e:	c65a                	sw	s6,12(sp)
1c00f380:	100a1663          	bnez	s4,1c00f48c <pos_libc_prf+0x8ae>
1c00f384:	b0f1                	j	1c00ec50 <pos_libc_prf+0x72>
1c00f386:	07300793          	li	a5,115
1c00f38a:	d8fd97e3          	bne	s11,a5,1c00f118 <pos_libc_prf+0x53a>
1c00f38e:	47b2                	lw	a5,12(sp)
1c00f390:	4981                	li	s3,0
1c00f392:	0c800693          	li	a3,200
1c00f396:	438c                	lw	a1,0(a5)
1c00f398:	00478b13          	addi	s6,a5,4
1c00f39c:	a021                	j	1c00f3a4 <pos_libc_prf+0x7c6>
1c00f39e:	0985                	addi	s3,s3,1
1c00f3a0:	6ad98163          	beq	s3,a3,1c00fa42 <pos_libc_prf+0xe64>
1c00f3a4:	013587b3          	add	a5,a1,s3
1c00f3a8:	0007c783          	lbu	a5,0(a5)
1c00f3ac:	fbed                	bnez	a5,1c00f39e <pos_libc_prf+0x7c0>
1c00f3ae:	000ac563          	bltz	s5,1c00f3b8 <pos_libc_prf+0x7da>
1c00f3b2:	013ad363          	bge	s5,s3,1c00f3b8 <pos_libc_prf+0x7da>
1c00f3b6:	89d6                	mv	s3,s5
1c00f3b8:	5a099163          	bnez	s3,1c00f95a <pos_libc_prf+0xd7c>
1c00f3bc:	c65a                	sw	s6,12(sp)
1c00f3be:	b849                	j	1c00ec50 <pos_libc_prf+0x72>
1c00f3c0:	06e00793          	li	a5,110
1c00f3c4:	36fd8c63          	beq	s11,a5,1c00f73c <pos_libc_prf+0xb5e>
1c00f3c8:	06f00793          	li	a5,111
1c00f3cc:	88fd92e3          	bne	s11,a5,1c00ec50 <pos_libc_prf+0x72>
1c00f3d0:	47b2                	lw	a5,12(sp)
1c00f3d2:	4390                	lw	a2,0(a5)
1c00f3d4:	00478b13          	addi	s6,a5,4
1c00f3d8:	47f2                	lw	a5,28(sp)
1c00f3da:	c7f5                	beqz	a5,1c00f4c6 <pos_libc_prf+0x8e8>
1c00f3dc:	03000793          	li	a5,48
1c00f3e0:	02f10223          	sb	a5,36(sp)
1c00f3e4:	02510693          	addi	a3,sp,37
1c00f3e8:	60060b63          	beqz	a2,1c00f9fe <pos_libc_prf+0xe20>
1c00f3ec:	89b6                	mv	s3,a3
1c00f3ee:	481d                	li	a6,7
1c00f3f0:	00767713          	andi	a4,a2,7
1c00f3f4:	03070713          	addi	a4,a4,48
1c00f3f8:	85b2                	mv	a1,a2
1c00f3fa:	00e98023          	sb	a4,0(s3)
1c00f3fe:	87ce                	mv	a5,s3
1c00f400:	820d                	srli	a2,a2,0x3
1c00f402:	0985                	addi	s3,s3,1
1c00f404:	feb866e3          	bltu	a6,a1,1c00f3f0 <pos_libc_prf+0x812>
1c00f408:	40d98633          	sub	a2,s3,a3
1c00f40c:	01565c63          	bge	a2,s5,1c00f424 <pos_libc_prf+0x846>
1c00f410:	03000593          	li	a1,48
1c00f414:	87ce                	mv	a5,s3
1c00f416:	0985                	addi	s3,s3,1
1c00f418:	40d98733          	sub	a4,s3,a3
1c00f41c:	feb98fa3          	sb	a1,-1(s3)
1c00f420:	ff574ae3          	blt	a4,s5,1c00f414 <pos_libc_prf+0x836>
1c00f424:	00098023          	sb	zero,0(s3)
1c00f428:	00f6fe63          	bgeu	a3,a5,1c00f444 <pos_libc_prf+0x866>
1c00f42c:	0006c603          	lbu	a2,0(a3)
1c00f430:	0007c703          	lbu	a4,0(a5)
1c00f434:	0685                	addi	a3,a3,1
1c00f436:	00c78023          	sb	a2,0(a5)
1c00f43a:	fee68fa3          	sb	a4,-1(a3)
1c00f43e:	17fd                	addi	a5,a5,-1
1c00f440:	fef6e6e3          	bltu	a3,a5,1c00f42c <pos_libc_prf+0x84e>
1c00f444:	1058                	addi	a4,sp,36
1c00f446:	57fd                	li	a5,-1
1c00f448:	40e989b3          	sub	s3,s3,a4
1c00f44c:	36fa8763          	beq	s5,a5,1c00f7ba <pos_libc_prf+0xbdc>
1c00f450:	0c800793          	li	a5,200
1c00f454:	cd37c6e3          	blt	a5,s3,1c00f120 <pos_libc_prf+0x542>
1c00f458:	ce02                	sw	zero,28(sp)
1c00f45a:	bd9d                	j	1c00f2d0 <pos_libc_prf+0x6f2>
1c00f45c:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00f460:	02a00793          	li	a5,42
1c00f464:	00160693          	addi	a3,a2,1
1c00f468:	14f59b63          	bne	a1,a5,1c00f5be <pos_libc_prf+0x9e0>
1c00f46c:	47b2                	lw	a5,12(sp)
1c00f46e:	00164d83          	lbu	s11,1(a2)
1c00f472:	0609                	addi	a2,a2,2
1c00f474:	0007aa83          	lw	s5,0(a5)
1c00f478:	0791                	addi	a5,a5,4
1c00f47a:	c63e                	sw	a5,12(sp)
1c00f47c:	0c800793          	li	a5,200
1c00f480:	8957dde3          	bge	a5,s5,1c00ed1a <pos_libc_prf+0x13c>
1c00f484:	5afd                	li	s5,-1
1c00f486:	b851                	j	1c00ed1a <pos_libc_prf+0x13c>
1c00f488:	c65a                	sw	s6,12(sp)
1c00f48a:	4a05                	li	s4,1
1c00f48c:	02410913          	addi	s2,sp,36
1c00f490:	59fd                	li	s3,-1
1c00f492:	41240ab3          	sub	s5,s0,s2
1c00f496:	9a4a                	add	s4,s4,s2
1c00f498:	a029                	j	1c00f4a2 <pos_libc_prf+0x8c4>
1c00f49a:	012a8433          	add	s0,s5,s2
1c00f49e:	fb490963          	beq	s2,s4,1c00ec50 <pos_libc_prf+0x72>
1c00f4a2:	00094503          	lbu	a0,0(s2)
1c00f4a6:	85a6                	mv	a1,s1
1c00f4a8:	0905                	addi	s2,s2,1
1c00f4aa:	9c82                	jalr	s9
1c00f4ac:	ff3517e3          	bne	a0,s3,1c00f49a <pos_libc_prf+0x8bc>
1c00f4b0:	547d                	li	s0,-1
1c00f4b2:	fa6ff06f          	j	1c00ec58 <pos_libc_prf+0x7a>
1c00f4b6:	77e1                	lui	a5,0xffff8
1c00f4b8:	8307c793          	xori	a5,a5,-2000
1c00f4bc:	02f11223          	sh	a5,36(sp)
1c00f4c0:	02610693          	addi	a3,sp,38
1c00f4c4:	bb95                	j	1c00f238 <pos_libc_prf+0x65a>
1c00f4c6:	1054                	addi	a3,sp,36
1c00f4c8:	b715                	j	1c00f3ec <pos_libc_prf+0x80e>
1c00f4ca:	5c605a63          	blez	t1,1c00fa9e <pos_libc_prf+0xec0>
1c00f4ce:	006f09b3          	add	s3,t5,t1
1c00f4d2:	4541                	li	a0,16
1c00f4d4:	03000e13          	li	t3,48
1c00f4d8:	00279713          	slli	a4,a5,0x2
1c00f4dc:	01e7d593          	srli	a1,a5,0x1e
1c00f4e0:	00289693          	slli	a3,a7,0x2
1c00f4e4:	00f70333          	add	t1,a4,a5
1c00f4e8:	8ecd                	or	a3,a3,a1
1c00f4ea:	96c6                	add	a3,a3,a7
1c00f4ec:	00e33733          	sltu	a4,t1,a4
1c00f4f0:	9736                	add	a4,a4,a3
1c00f4f2:	0706                	slli	a4,a4,0x1
1c00f4f4:	01f35693          	srli	a3,t1,0x1f
1c00f4f8:	8f55                	or	a4,a4,a3
1c00f4fa:	01c75693          	srli	a3,a4,0x1c
1c00f4fe:	03068693          	addi	a3,a3,48
1c00f502:	4ea05463          	blez	a0,1c00f9ea <pos_libc_prf+0xe0c>
1c00f506:	fed80fa3          	sb	a3,-1(a6)
1c00f50a:	46d2                	lw	a3,20(sp)
1c00f50c:	157d                	addi	a0,a0,-1
1c00f50e:	00131793          	slli	a5,t1,0x1
1c00f512:	00d778b3          	and	a7,a4,a3
1c00f516:	4d099e63          	bne	s3,a6,1c00f9f2 <pos_libc_prf+0xe14>
1c00f51a:	4301                	li	t1,0
1c00f51c:	4772                	lw	a4,28(sp)
1c00f51e:	01576bb3          	or	s7,a4,s5
1c00f522:	060b8863          	beqz	s7,1c00f592 <pos_libc_prf+0x9b4>
1c00f526:	02e00693          	li	a3,46
1c00f52a:	00d98023          	sb	a3,0(s3)
1c00f52e:	00198e93          	addi	t4,s3,1
1c00f532:	5c0a8763          	beqz	s5,1c00fb00 <pos_libc_prf+0xf22>
1c00f536:	001a8693          	addi	a3,s5,1
1c00f53a:	99b6                	add	s3,s3,a3
1c00f53c:	8876                	mv	a6,t4
1c00f53e:	03000f13          	li	t5,48
1c00f542:	0805                	addi	a6,a6,1
1c00f544:	4a031963          	bnez	t1,1c00f9f6 <pos_libc_prf+0xe18>
1c00f548:	00279713          	slli	a4,a5,0x2
1c00f54c:	01e7d593          	srli	a1,a5,0x1e
1c00f550:	00289693          	slli	a3,a7,0x2
1c00f554:	00f70e33          	add	t3,a4,a5
1c00f558:	8ecd                	or	a3,a3,a1
1c00f55a:	96c6                	add	a3,a3,a7
1c00f55c:	00ee3733          	sltu	a4,t3,a4
1c00f560:	9736                	add	a4,a4,a3
1c00f562:	0706                	slli	a4,a4,0x1
1c00f564:	01fe5693          	srli	a3,t3,0x1f
1c00f568:	8f55                	or	a4,a4,a3
1c00f56a:	01c75593          	srli	a1,a4,0x1c
1c00f56e:	03000693          	li	a3,48
1c00f572:	00a05a63          	blez	a0,1c00f586 <pos_libc_prf+0x9a8>
1c00f576:	03058693          	addi	a3,a1,48
1c00f57a:	45d2                	lw	a1,20(sp)
1c00f57c:	157d                	addi	a0,a0,-1
1c00f57e:	001e1793          	slli	a5,t3,0x1
1c00f582:	00b778b3          	and	a7,a4,a1
1c00f586:	fed80fa3          	sb	a3,-1(a6)
1c00f58a:	fb099ce3          	bne	s3,a6,1c00f542 <pos_libc_prf+0x964>
1c00f58e:	015e89b3          	add	s3,t4,s5
1c00f592:	b0060ee3          	beqz	a2,1c00f0ae <pos_libc_prf+0x4d0>
1c00f596:	03000613          	li	a2,48
1c00f59a:	fff9c783          	lbu	a5,-1(s3)
1c00f59e:	86ce                	mv	a3,s3
1c00f5a0:	19fd                	addi	s3,s3,-1
1c00f5a2:	fec78ce3          	beq	a5,a2,1c00f59a <pos_libc_prf+0x9bc>
1c00f5a6:	02e00613          	li	a2,46
1c00f5aa:	aec78ce3          	beq	a5,a2,1c00f0a2 <pos_libc_prf+0x4c4>
1c00f5ae:	89b6                	mv	s3,a3
1c00f5b0:	bccd                	j	1c00f0a2 <pos_libc_prf+0x4c4>
1c00f5b2:	fff88fa3          	sb	t6,-1(a7)
1c00f5b6:	ab1f11e3          	bne	t5,a7,1c00f058 <pos_libc_prf+0x47a>
1c00f5ba:	99d6                	add	s3,s3,s5
1c00f5bc:	b4cd                	j	1c00f09e <pos_libc_prf+0x4c0>
1c00f5be:	fd058713          	addi	a4,a1,-48
1c00f5c2:	47a5                	li	a5,9
1c00f5c4:	8dae                	mv	s11,a1
1c00f5c6:	4a81                	li	s5,0
1c00f5c8:	4525                	li	a0,9
1c00f5ca:	00e7f463          	bgeu	a5,a4,1c00f5d2 <pos_libc_prf+0x9f4>
1c00f5ce:	a199                	j	1c00fa14 <pos_libc_prf+0xe36>
1c00f5d0:	0685                	addi	a3,a3,1
1c00f5d2:	002a9793          	slli	a5,s5,0x2
1c00f5d6:	97d6                	add	a5,a5,s5
1c00f5d8:	0786                	slli	a5,a5,0x1
1c00f5da:	97ee                	add	a5,a5,s11
1c00f5dc:	0006cd83          	lbu	s11,0(a3)
1c00f5e0:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00f5e4:	8732                	mv	a4,a2
1c00f5e6:	fd0d8793          	addi	a5,s11,-48
1c00f5ea:	8636                	mv	a2,a3
1c00f5ec:	fef572e3          	bgeu	a0,a5,1c00f5d0 <pos_libc_prf+0x9f2>
1c00f5f0:	00270613          	addi	a2,a4,2
1c00f5f4:	b561                	j	1c00f47c <pos_libc_prf+0x89e>
1c00f5f6:	47b2                	lw	a5,12(sp)
1c00f5f8:	0007a303          	lw	t1,0(a5)
1c00f5fc:	00478b13          	addi	s6,a5,4
1c00f600:	2e034263          	bltz	t1,1c00f8e4 <pos_libc_prf+0xd06>
1c00f604:	47a2                	lw	a5,8(sp)
1c00f606:	861a                	mv	a2,t1
1c00f608:	3c078663          	beqz	a5,1c00f9d4 <pos_libc_prf+0xdf6>
1c00f60c:	02b00793          	li	a5,43
1c00f610:	02f10223          	sb	a5,36(sp)
1c00f614:	02510693          	addi	a3,sp,37
1c00f618:	89b6                	mv	s3,a3
1c00f61a:	4529                	li	a0,10
1c00f61c:	48a5                	li	a7,9
1c00f61e:	02a67733          	remu	a4,a2,a0
1c00f622:	87ce                	mv	a5,s3
1c00f624:	0985                	addi	s3,s3,1
1c00f626:	85b2                	mv	a1,a2
1c00f628:	03070713          	addi	a4,a4,48
1c00f62c:	fee98fa3          	sb	a4,-1(s3)
1c00f630:	02a65633          	divu	a2,a2,a0
1c00f634:	feb8e5e3          	bltu	a7,a1,1c00f61e <pos_libc_prf+0xa40>
1c00f638:	40d98633          	sub	a2,s3,a3
1c00f63c:	01565c63          	bge	a2,s5,1c00f654 <pos_libc_prf+0xa76>
1c00f640:	03000593          	li	a1,48
1c00f644:	87ce                	mv	a5,s3
1c00f646:	0985                	addi	s3,s3,1
1c00f648:	40d98733          	sub	a4,s3,a3
1c00f64c:	feb98fa3          	sb	a1,-1(s3)
1c00f650:	ff574ae3          	blt	a4,s5,1c00f644 <pos_libc_prf+0xa66>
1c00f654:	00098023          	sb	zero,0(s3)
1c00f658:	00f6fe63          	bgeu	a3,a5,1c00f674 <pos_libc_prf+0xa96>
1c00f65c:	0006c603          	lbu	a2,0(a3)
1c00f660:	0007c703          	lbu	a4,0(a5)
1c00f664:	0685                	addi	a3,a3,1
1c00f666:	00c78023          	sb	a2,0(a5)
1c00f66a:	fee68fa3          	sb	a4,-1(a3)
1c00f66e:	17fd                	addi	a5,a5,-1
1c00f670:	fef6e6e3          	bltu	a3,a5,1c00f65c <pos_libc_prf+0xa7e>
1c00f674:	4712                	lw	a4,4(sp)
1c00f676:	47a2                	lw	a5,8(sp)
1c00f678:	8fd9                	or	a5,a5,a4
1c00f67a:	ce3e                	sw	a5,28(sp)
1c00f67c:	1058                	addi	a4,sp,36
1c00f67e:	40e989b3          	sub	s3,s3,a4
1c00f682:	c40790e3          	bnez	a5,1c00f2c2 <pos_libc_prf+0x6e4>
1c00f686:	01f35793          	srli	a5,t1,0x1f
1c00f68a:	ce3e                	sw	a5,28(sp)
1c00f68c:	b91d                	j	1c00f2c2 <pos_libc_prf+0x6e4>
1c00f68e:	47b2                	lw	a5,12(sp)
1c00f690:	02610613          	addi	a2,sp,38
1c00f694:	4ea5                	li	t4,9
1c00f696:	438c                	lw	a1,0(a5)
1c00f698:	00478b13          	addi	s6,a5,4
1c00f69c:	77e1                	lui	a5,0xffff8
1c00f69e:	8307c793          	xori	a5,a5,-2000
1c00f6a2:	02f11223          	sh	a5,36(sp)
1c00f6a6:	4e3d                	li	t3,15
1c00f6a8:	87b2                	mv	a5,a2
1c00f6aa:	a039                	j	1c00f6b8 <pos_libc_prf+0xada>
1c00f6ac:	ff168fa3          	sb	a7,-1(a3)
1c00f6b0:	02be7663          	bgeu	t3,a1,1c00f6dc <pos_libc_prf+0xafe>
1c00f6b4:	85c2                	mv	a1,a6
1c00f6b6:	87b6                	mv	a5,a3
1c00f6b8:	00f5f513          	andi	a0,a1,15
1c00f6bc:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00f6c0:	05750893          	addi	a7,a0,87
1c00f6c4:	03050713          	addi	a4,a0,48
1c00f6c8:	0045d813          	srli	a6,a1,0x4
1c00f6cc:	feaee0e3          	bltu	t4,a0,1c00f6ac <pos_libc_prf+0xace>
1c00f6d0:	00e78023          	sb	a4,0(a5)
1c00f6d4:	00178693          	addi	a3,a5,1
1c00f6d8:	fcbe6ee3          	bltu	t3,a1,1c00f6b4 <pos_libc_prf+0xad6>
1c00f6dc:	40c689b3          	sub	s3,a3,a2
1c00f6e0:	459d                	li	a1,7
1c00f6e2:	0135cc63          	blt	a1,s3,1c00f6fa <pos_libc_prf+0xb1c>
1c00f6e6:	03000513          	li	a0,48
1c00f6ea:	87b6                	mv	a5,a3
1c00f6ec:	0685                	addi	a3,a3,1
1c00f6ee:	40c689b3          	sub	s3,a3,a2
1c00f6f2:	fea68fa3          	sb	a0,-1(a3)
1c00f6f6:	ff35dae3          	bge	a1,s3,1c00f6ea <pos_libc_prf+0xb0c>
1c00f6fa:	00068023          	sb	zero,0(a3)
1c00f6fe:	86b2                	mv	a3,a2
1c00f700:	00f67e63          	bgeu	a2,a5,1c00f71c <pos_libc_prf+0xb3e>
1c00f704:	0006c603          	lbu	a2,0(a3)
1c00f708:	0007c703          	lbu	a4,0(a5)
1c00f70c:	0685                	addi	a3,a3,1
1c00f70e:	00c78023          	sb	a2,0(a5)
1c00f712:	fee68fa3          	sb	a4,-1(a3)
1c00f716:	17fd                	addi	a5,a5,-1
1c00f718:	fef6e6e3          	bltu	a3,a5,1c00f704 <pos_libc_prf+0xb26>
1c00f71c:	57fd                	li	a5,-1
1c00f71e:	0989                	addi	s3,s3,2
1c00f720:	22fa8663          	beq	s5,a5,1c00f94c <pos_libc_prf+0xd6e>
1c00f724:	0c800793          	li	a5,200
1c00f728:	9f37cce3          	blt	a5,s3,1c00f120 <pos_libc_prf+0x542>
1c00f72c:	02000913          	li	s2,32
1c00f730:	0b49d863          	bge	s3,s4,1c00f7e0 <pos_libc_prf+0xc02>
1c00f734:	00198613          	addi	a2,s3,1
1c00f738:	ce02                	sw	zero,28(sp)
1c00f73a:	bec1                	j	1c00f30a <pos_libc_prf+0x72c>
1c00f73c:	4732                	lw	a4,12(sp)
1c00f73e:	431c                	lw	a5,0(a4)
1c00f740:	0711                	addi	a4,a4,4
1c00f742:	c63a                	sw	a4,12(sp)
1c00f744:	c380                	sw	s0,0(a5)
1c00f746:	d0aff06f          	j	1c00ec50 <pos_libc_prf+0x72>
1c00f74a:	47b2                	lw	a5,12(sp)
1c00f74c:	4529                	li	a0,10
1c00f74e:	48a5                	li	a7,9
1c00f750:	4390                	lw	a2,0(a5)
1c00f752:	00478b13          	addi	s6,a5,4
1c00f756:	105c                	addi	a5,sp,36
1c00f758:	02a67733          	remu	a4,a2,a0
1c00f75c:	86be                	mv	a3,a5
1c00f75e:	0785                	addi	a5,a5,1
1c00f760:	85b2                	mv	a1,a2
1c00f762:	03070713          	addi	a4,a4,48
1c00f766:	fee78fa3          	sb	a4,-1(a5)
1c00f76a:	02a65633          	divu	a2,a2,a0
1c00f76e:	feb8e5e3          	bltu	a7,a1,1c00f758 <pos_libc_prf+0xb7a>
1c00f772:	1058                	addi	a4,sp,36
1c00f774:	40e789b3          	sub	s3,a5,a4
1c00f778:	0159dd63          	bge	s3,s5,1c00f792 <pos_libc_prf+0xbb4>
1c00f77c:	03000613          	li	a2,48
1c00f780:	86be                	mv	a3,a5
1c00f782:	1058                	addi	a4,sp,36
1c00f784:	0785                	addi	a5,a5,1
1c00f786:	40e789b3          	sub	s3,a5,a4
1c00f78a:	fec78fa3          	sb	a2,-1(a5)
1c00f78e:	ff59c9e3          	blt	s3,s5,1c00f780 <pos_libc_prf+0xba2>
1c00f792:	00078023          	sb	zero,0(a5)
1c00f796:	105c                	addi	a5,sp,36
1c00f798:	00d7fe63          	bgeu	a5,a3,1c00f7b4 <pos_libc_prf+0xbd6>
1c00f79c:	0007c603          	lbu	a2,0(a5)
1c00f7a0:	0006c703          	lbu	a4,0(a3)
1c00f7a4:	0785                	addi	a5,a5,1
1c00f7a6:	00c68023          	sb	a2,0(a3)
1c00f7aa:	fee78fa3          	sb	a4,-1(a5)
1c00f7ae:	16fd                	addi	a3,a3,-1
1c00f7b0:	fed7e6e3          	bltu	a5,a3,1c00f79c <pos_libc_prf+0xbbe>
1c00f7b4:	57fd                	li	a5,-1
1c00f7b6:	c8fa9de3          	bne	s5,a5,1c00f450 <pos_libc_prf+0x872>
1c00f7ba:	0c800793          	li	a5,200
1c00f7be:	9737c1e3          	blt	a5,s3,1c00f120 <pos_libc_prf+0x542>
1c00f7c2:	ce02                	sw	zero,28(sp)
1c00f7c4:	be01                	j	1c00f2d4 <pos_libc_prf+0x6f6>
1c00f7c6:	85a6                	mv	a1,s1
1c00f7c8:	02500513          	li	a0,37
1c00f7cc:	9c82                	jalr	s9
1c00f7ce:	57fd                	li	a5,-1
1c00f7d0:	c6f51f63          	bne	a0,a5,1c00ec4e <pos_libc_prf+0x70>
1c00f7d4:	547d                	li	s0,-1
1c00f7d6:	c82ff06f          	j	1c00ec58 <pos_libc_prf+0x7a>
1c00f7da:	4401                	li	s0,0
1c00f7dc:	c7cff06f          	j	1c00ec58 <pos_libc_prf+0x7a>
1c00f7e0:	8a4e                	mv	s4,s3
1c00f7e2:	c65a                	sw	s6,12(sp)
1c00f7e4:	b165                	j	1c00f48c <pos_libc_prf+0x8ae>
1c00f7e6:	0c800793          	li	a5,200
1c00f7ea:	9337cbe3          	blt	a5,s3,1c00f120 <pos_libc_prf+0x542>
1c00f7ee:	4785                	li	a5,1
1c00f7f0:	ce3e                	sw	a5,28(sp)
1c00f7f2:	b4cd                	j	1c00f2d4 <pos_libc_prf+0x6f6>
1c00f7f4:	104c                	addi	a1,sp,36
1c00f7f6:	413a09b3          	sub	s3,s4,s3
1c00f7fa:	01358533          	add	a0,a1,s3
1c00f7fe:	9faff0ef          	jal	ra,1c00e9f8 <memmove>
1c00f802:	02000793          	li	a5,32
1c00f806:	24f90863          	beq	s2,a5,1c00fa56 <pos_libc_prf+0xe78>
1c00f80a:	47f2                	lw	a5,28(sp)
1c00f80c:	99be                	add	s3,s3,a5
1c00f80e:	47f2                	lw	a5,28(sp)
1c00f810:	b737d7e3          	bge	a5,s3,1c00f37e <pos_libc_prf+0x7a0>
1c00f814:	4772                	lw	a4,28(sp)
1c00f816:	4789                	li	a5,2
1c00f818:	40e988b3          	sub	a7,s3,a4
1c00f81c:	fff88693          	addi	a3,a7,-1
1c00f820:	06d7f063          	bgeu	a5,a3,1c00f880 <pos_libc_prf+0xca2>
1c00f824:	47e2                	lw	a5,24(sp)
1c00f826:	00891613          	slli	a2,s2,0x8
1c00f82a:	ffc8f593          	andi	a1,a7,-4
1c00f82e:	00f976b3          	and	a3,s2,a5
1c00f832:	8ed1                	or	a3,a3,a2
1c00f834:	01091793          	slli	a5,s2,0x10
1c00f838:	8edd                	or	a3,a3,a5
1c00f83a:	01891613          	slli	a2,s2,0x18
1c00f83e:	8e55                	or	a2,a2,a3
1c00f840:	105c                	addi	a5,sp,36
1c00f842:	00865813          	srli	a6,a2,0x8
1c00f846:	01065513          	srli	a0,a2,0x10
1c00f84a:	97ba                	add	a5,a5,a4
1c00f84c:	95be                	add	a1,a1,a5
1c00f84e:	0306f693          	andi	a3,a3,48
1c00f852:	8261                	srli	a2,a2,0x18
1c00f854:	0ff87813          	andi	a6,a6,255
1c00f858:	0ff57513          	andi	a0,a0,255
1c00f85c:	00d78023          	sb	a3,0(a5)
1c00f860:	010780a3          	sb	a6,1(a5)
1c00f864:	00a78123          	sb	a0,2(a5)
1c00f868:	00c781a3          	sb	a2,3(a5)
1c00f86c:	0791                	addi	a5,a5,4
1c00f86e:	fef597e3          	bne	a1,a5,1c00f85c <pos_libc_prf+0xc7e>
1c00f872:	4772                	lw	a4,28(sp)
1c00f874:	ffc8f793          	andi	a5,a7,-4
1c00f878:	973e                	add	a4,a4,a5
1c00f87a:	ce3a                	sw	a4,28(sp)
1c00f87c:	b11781e3          	beq	a5,a7,1c00f37e <pos_libc_prf+0x7a0>
1c00f880:	4772                	lw	a4,28(sp)
1c00f882:	199c                	addi	a5,sp,240
1c00f884:	97ba                	add	a5,a5,a4
1c00f886:	f3278a23          	sb	s2,-204(a5)
1c00f88a:	00170793          	addi	a5,a4,1
1c00f88e:	af37d8e3          	bge	a5,s3,1c00f37e <pos_libc_prf+0x7a0>
1c00f892:	1994                	addi	a3,sp,240
1c00f894:	97b6                	add	a5,a5,a3
1c00f896:	f3278a23          	sb	s2,-204(a5)
1c00f89a:	00270b93          	addi	s7,a4,2
1c00f89e:	af3bd0e3          	bge	s7,s3,1c00f37e <pos_libc_prf+0x7a0>
1c00f8a2:	9bb6                	add	s7,s7,a3
1c00f8a4:	f32b8a23          	sb	s2,-204(s7)
1c00f8a8:	c65a                	sw	s6,12(sp)
1c00f8aa:	bcd9                	j	1c00f380 <pos_libc_prf+0x7a2>
1c00f8ac:	01b98023          	sb	s11,0(s3)
1c00f8b0:	02b00613          	li	a2,43
1c00f8b4:	00035663          	bgez	t1,1c00f8c0 <pos_libc_prf+0xce2>
1c00f8b8:	40600333          	neg	t1,t1
1c00f8bc:	02d00613          	li	a2,45
1c00f8c0:	47a9                	li	a5,10
1c00f8c2:	02f346b3          	div	a3,t1,a5
1c00f8c6:	00c980a3          	sb	a2,1(s3)
1c00f8ca:	0991                	addi	s3,s3,4
1c00f8cc:	02f367b3          	rem	a5,t1,a5
1c00f8d0:	03068693          	addi	a3,a3,48
1c00f8d4:	fed98f23          	sb	a3,-2(s3)
1c00f8d8:	03078793          	addi	a5,a5,48
1c00f8dc:	fef98fa3          	sb	a5,-1(s3)
1c00f8e0:	fceff06f          	j	1c00f0ae <pos_libc_prf+0x4d0>
1c00f8e4:	02d00793          	li	a5,45
1c00f8e8:	02f10223          	sb	a5,36(sp)
1c00f8ec:	800007b7          	lui	a5,0x80000
1c00f8f0:	14f30e63          	beq	t1,a5,1c00fa4c <pos_libc_prf+0xe6e>
1c00f8f4:	40600633          	neg	a2,t1
1c00f8f8:	02510693          	addi	a3,sp,37
1c00f8fc:	bb31                	j	1c00f618 <pos_libc_prf+0xa3a>
1c00f8fe:	4722                	lw	a4,8(sp)
1c00f900:	10070d63          	beqz	a4,1c00fa1a <pos_libc_prf+0xe3c>
1c00f904:	02b00693          	li	a3,43
1c00f908:	02d10223          	sb	a3,36(sp)
1c00f90c:	02510f13          	addi	t5,sp,37
1c00f910:	4301                	li	t1,0
1c00f912:	4801                	li	a6,0
1c00f914:	d9cff06f          	j	1c00eeb0 <pos_libc_prf+0x2d2>
1c00f918:	02414783          	lbu	a5,36(sp)
1c00f91c:	98078ce3          	beqz	a5,1c00f2b4 <pos_libc_prf+0x6d6>
1c00f920:	1054                	addi	a3,sp,36
1c00f922:	45e5                	li	a1,25
1c00f924:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00f928:	f9f78793          	addi	a5,a5,-97
1c00f92c:	0ff7f793          	andi	a5,a5,255
1c00f930:	00f5e963          	bltu	a1,a5,1c00f942 <pos_libc_prf+0xd64>
1c00f934:	0016c783          	lbu	a5,1(a3)
1c00f938:	00e68023          	sb	a4,0(a3)
1c00f93c:	0685                	addi	a3,a3,1
1c00f93e:	f3fd                	bnez	a5,1c00f924 <pos_libc_prf+0xd46>
1c00f940:	ba95                	j	1c00f2b4 <pos_libc_prf+0x6d6>
1c00f942:	0016c783          	lbu	a5,1(a3)
1c00f946:	0685                	addi	a3,a3,1
1c00f948:	fff1                	bnez	a5,1c00f924 <pos_libc_prf+0xd46>
1c00f94a:	b2ad                	j	1c00f2b4 <pos_libc_prf+0x6d6>
1c00f94c:	0c800793          	li	a5,200
1c00f950:	df37d0e3          	bge	a5,s3,1c00f730 <pos_libc_prf+0xb52>
1c00f954:	547d                	li	s0,-1
1c00f956:	b02ff06f          	j	1c00ec58 <pos_libc_prf+0x7a>
1c00f95a:	864e                	mv	a2,s3
1c00f95c:	1048                	addi	a0,sp,36
1c00f95e:	fc5fe0ef          	jal	ra,1c00e922 <memcpy>
1c00f962:	b3f9                	j	1c00f730 <pos_libc_prf+0xb52>
1c00f964:	47f2                	lw	a5,28(sp)
1c00f966:	4601                	li	a2,0
1c00f968:	e399                	bnez	a5,1c00f96e <pos_libc_prf+0xd90>
1c00f96a:	01503633          	snez	a2,s5
1c00f96e:	57f5                	li	a5,-3
1c00f970:	001a8813          	addi	a6,s5,1
1c00f974:	00f34463          	blt	t1,a5,1c00f97c <pos_libc_prf+0xd9e>
1c00f978:	04685163          	bge	a6,t1,1c00f9ba <pos_libc_prf+0xddc>
1c00f97c:	47c1                	li	a5,16
1c00f97e:	0107d363          	bge	a5,a6,1c00f984 <pos_libc_prf+0xda6>
1c00f982:	4841                	li	a6,16
1c00f984:	06700793          	li	a5,103
1c00f988:	187d                	addi	a6,a6,-1
1c00f98a:	02fd8363          	beq	s11,a5,1c00f9b0 <pos_libc_prf+0xdd2>
1c00f98e:	04500d93          	li	s11,69
1c00f992:	d70ff06f          	j	1c00ef02 <pos_libc_prf+0x324>
1c00f996:	4a99                	li	s5,6
1c00f998:	d4fd9563          	bne	s11,a5,1c00eee2 <pos_libc_prf+0x304>
1c00f99c:	4772                	lw	a4,28(sp)
1c00f99e:	4605                	li	a2,1
1c00f9a0:	57f5                	li	a5,-3
1c00f9a2:	8e19                	sub	a2,a2,a4
1c00f9a4:	00f34563          	blt	t1,a5,1c00f9ae <pos_libc_prf+0xdd0>
1c00f9a8:	479d                	li	a5,7
1c00f9aa:	0067d863          	bge	a5,t1,1c00f9ba <pos_libc_prf+0xddc>
1c00f9ae:	4819                	li	a6,6
1c00f9b0:	06500d93          	li	s11,101
1c00f9b4:	d4eff06f          	j	1c00ef02 <pos_libc_prf+0x324>
1c00f9b8:	4601                	li	a2,0
1c00f9ba:	006a8833          	add	a6,s5,t1
1c00f9be:	0b005b63          	blez	a6,1c00fa74 <pos_libc_prf+0xe96>
1c00f9c2:	47c1                	li	a5,16
1c00f9c4:	0107d363          	bge	a5,a6,1c00f9ca <pos_libc_prf+0xdec>
1c00f9c8:	4841                	li	a6,16
1c00f9ca:	187d                	addi	a6,a6,-1
1c00f9cc:	06600d93          	li	s11,102
1c00f9d0:	d32ff06f          	j	1c00ef02 <pos_libc_prf+0x324>
1c00f9d4:	4792                	lw	a5,4(sp)
1c00f9d6:	1054                	addi	a3,sp,36
1c00f9d8:	c40780e3          	beqz	a5,1c00f618 <pos_libc_prf+0xa3a>
1c00f9dc:	02000793          	li	a5,32
1c00f9e0:	02f10223          	sb	a5,36(sp)
1c00f9e4:	02510693          	addi	a3,sp,37
1c00f9e8:	b905                	j	1c00f618 <pos_libc_prf+0xa3a>
1c00f9ea:	ffc80fa3          	sb	t3,-1(a6)
1c00f9ee:	b30986e3          	beq	s3,a6,1c00f51a <pos_libc_prf+0x93c>
1c00f9f2:	0805                	addi	a6,a6,1
1c00f9f4:	b4d5                	j	1c00f4d8 <pos_libc_prf+0x8fa>
1c00f9f6:	ffe80fa3          	sb	t5,-1(a6)
1c00f9fa:	0305                	addi	t1,t1,1
1c00f9fc:	b679                	j	1c00f58a <pos_libc_prf+0x9ac>
1c00f9fe:	020102a3          	sb	zero,37(sp)
1c00fa02:	57fd                	li	a5,-1
1c00fa04:	0cfa8263          	beq	s5,a5,1c00fac8 <pos_libc_prf+0xeea>
1c00fa08:	4785                	li	a5,1
1c00fa0a:	0b47c063          	blt	a5,s4,1c00faaa <pos_libc_prf+0xecc>
1c00fa0e:	4a72                	lw	s4,28(sp)
1c00fa10:	c65a                	sw	s6,12(sp)
1c00fa12:	bcad                	j	1c00f48c <pos_libc_prf+0x8ae>
1c00fa14:	8636                	mv	a2,a3
1c00fa16:	b04ff06f          	j	1c00ed1a <pos_libc_prf+0x13c>
1c00fa1a:	4712                	lw	a4,4(sp)
1c00fa1c:	c77d                	beqz	a4,1c00fb0a <pos_libc_prf+0xf2c>
1c00fa1e:	02000693          	li	a3,32
1c00fa22:	02d10223          	sb	a3,36(sp)
1c00fa26:	4301                	li	t1,0
1c00fa28:	4801                	li	a6,0
1c00fa2a:	02510f13          	addi	t5,sp,37
1c00fa2e:	c82ff06f          	j	1c00eeb0 <pos_libc_prf+0x2d2>
1c00fa32:	02d00693          	li	a3,45
1c00fa36:	02d10223          	sb	a3,36(sp)
1c00fa3a:	02510f13          	addi	t5,sp,37
1c00fa3e:	b9cff06f          	j	1c00edda <pos_libc_prf+0x1fc>
1c00fa42:	0c800613          	li	a2,200
1c00fa46:	960ad6e3          	bgez	s5,1c00f3b2 <pos_libc_prf+0x7d4>
1c00fa4a:	bf09                	j	1c00f95c <pos_libc_prf+0xd7e>
1c00fa4c:	80000637          	lui	a2,0x80000
1c00fa50:	02510693          	addi	a3,sp,37
1c00fa54:	b6d1                	j	1c00f618 <pos_libc_prf+0xa3a>
1c00fa56:	ce02                	sw	zero,28(sp)
1c00fa58:	bb5d                	j	1c00f80e <pos_libc_prf+0xc30>
1c00fa5a:	4712                	lw	a4,4(sp)
1c00fa5c:	02410f13          	addi	t5,sp,36
1c00fa60:	b6070d63          	beqz	a4,1c00edda <pos_libc_prf+0x1fc>
1c00fa64:	02000693          	li	a3,32
1c00fa68:	02d10223          	sb	a3,36(sp)
1c00fa6c:	02510f13          	addi	t5,sp,37
1c00fa70:	b6aff06f          	j	1c00edda <pos_libc_prf+0x1fc>
1c00fa74:	06600d93          	li	s11,102
1c00fa78:	4781                	li	a5,0
1c00fa7a:	080006b7          	lui	a3,0x8000
1c00fa7e:	ce8ff06f          	j	1c00ef66 <pos_libc_prf+0x388>
1c00fa82:	06b6e363          	bltu	a3,a1,1c00fae8 <pos_libc_prf+0xf0a>
1c00fa86:	04e00693          	li	a3,78
1c00fa8a:	04100613          	li	a2,65
1c00fa8e:	00d78023          	sb	a3,0(a5)
1c00fa92:	00c780a3          	sb	a2,1(a5)
1c00fa96:	00d78123          	sb	a3,2(a5)
1c00fa9a:	f44ff06f          	j	1c00f1de <pos_libc_prf+0x600>
1c00fa9e:	03000693          	li	a3,48
1c00faa2:	00df0023          	sb	a3,0(t5)
1c00faa6:	4541                	li	a0,16
1c00faa8:	bc95                	j	1c00f51c <pos_libc_prf+0x93e>
1c00faaa:	4982                	lw	s3,0(sp)
1c00faac:	860992e3          	bnez	s3,1c00f310 <pos_libc_prf+0x732>
1c00fab0:	104c                	addi	a1,sp,36
1c00fab2:	fffa0993          	addi	s3,s4,-1
1c00fab6:	4609                	li	a2,2
1c00fab8:	01358533          	add	a0,a1,s3
1c00fabc:	f3dfe0ef          	jal	ra,1c00e9f8 <memmove>
1c00fac0:	02000913          	li	s2,32
1c00fac4:	ce02                	sw	zero,28(sp)
1c00fac6:	b3b9                	j	1c00f814 <pos_libc_prf+0xc36>
1c00fac8:	49f2                	lw	s3,28(sp)
1c00faca:	b19d                	j	1c00f730 <pos_libc_prf+0xb52>
1c00facc:	06900693          	li	a3,105
1c00fad0:	00d78023          	sb	a3,0(a5)
1c00fad4:	06e00693          	li	a3,110
1c00fad8:	00d780a3          	sb	a3,1(a5)
1c00fadc:	06600693          	li	a3,102
1c00fae0:	00d78123          	sb	a3,2(a5)
1c00fae4:	efaff06f          	j	1c00f1de <pos_libc_prf+0x600>
1c00fae8:	06e00693          	li	a3,110
1c00faec:	06100613          	li	a2,97
1c00faf0:	00d78023          	sb	a3,0(a5)
1c00faf4:	00c780a3          	sb	a2,1(a5)
1c00faf8:	00d78123          	sb	a3,2(a5)
1c00fafc:	ee2ff06f          	j	1c00f1de <pos_libc_prf+0x600>
1c00fb00:	89f6                	mv	s3,t4
1c00fb02:	a8061ae3          	bnez	a2,1c00f596 <pos_libc_prf+0x9b8>
1c00fb06:	da8ff06f          	j	1c00f0ae <pos_libc_prf+0x4d0>
1c00fb0a:	4301                	li	t1,0
1c00fb0c:	4801                	li	a6,0
1c00fb0e:	02410f13          	addi	t5,sp,36
1c00fb12:	b9eff06f          	j	1c00eeb0 <pos_libc_prf+0x2d2>

1c00fb16 <pos_init_start>:
1c00fb16:	1141                	addi	sp,sp,-16
1c00fb18:	c422                	sw	s0,8(sp)
1c00fb1a:	1c000437          	lui	s0,0x1c000
1c00fb1e:	c606                	sw	ra,12(sp)
1c00fb20:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00fb24:	82cfc0ef          	jal	ra,1c00bb50 <pos_soc_init>
1c00fb28:	2a75                	jal	1c00fce4 <pos_irq_init>
1c00fb2a:	22e5                	jal	1c00fd12 <pos_soc_event_init>
1c00fb2c:	2225                	jal	1c00fc54 <pos_allocs_init>
1c00fb2e:	405c                	lw	a5,4(s0)
1c00fb30:	c791                	beqz	a5,1c00fb3c <pos_init_start+0x26>
1c00fb32:	0411                	addi	s0,s0,4
1c00fb34:	0411                	addi	s0,s0,4
1c00fb36:	9782                	jalr	a5
1c00fb38:	401c                	lw	a5,0(s0)
1c00fb3a:	ffed                	bnez	a5,1c00fb34 <pos_init_start+0x1e>
1c00fb3c:	86cff0ef          	jal	ra,1c00eba8 <pos_io_start>
1c00fb40:	300467f3          	csrrsi	a5,mstatus,8
1c00fb44:	40b2                	lw	ra,12(sp)
1c00fb46:	4422                	lw	s0,8(sp)
1c00fb48:	0141                	addi	sp,sp,16
1c00fb4a:	8082                	ret

1c00fb4c <pos_init_stop>:
1c00fb4c:	1141                	addi	sp,sp,-16
1c00fb4e:	c422                	sw	s0,8(sp)
1c00fb50:	1c000437          	lui	s0,0x1c000
1c00fb54:	c606                	sw	ra,12(sp)
1c00fb56:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00fb5a:	852ff0ef          	jal	ra,1c00ebac <pos_io_stop>
1c00fb5e:	405c                	lw	a5,4(s0)
1c00fb60:	c791                	beqz	a5,1c00fb6c <pos_init_stop+0x20>
1c00fb62:	0411                	addi	s0,s0,4
1c00fb64:	0411                	addi	s0,s0,4
1c00fb66:	9782                	jalr	a5
1c00fb68:	401c                	lw	a5,0(s0)
1c00fb6a:	ffed                	bnez	a5,1c00fb64 <pos_init_stop+0x18>
1c00fb6c:	40b2                	lw	ra,12(sp)
1c00fb6e:	4422                	lw	s0,8(sp)
1c00fb70:	0141                	addi	sp,sp,16
1c00fb72:	8082                	ret

1c00fb74 <pos_alloc_init>:
1c00fb74:	00758793          	addi	a5,a1,7
1c00fb78:	9be1                	andi	a5,a5,-8
1c00fb7a:	40b785b3          	sub	a1,a5,a1
1c00fb7e:	c11c                	sw	a5,0(a0)
1c00fb80:	40b605b3          	sub	a1,a2,a1
1c00fb84:	00b05663          	blez	a1,1c00fb90 <pos_alloc_init+0x1c>
1c00fb88:	99e1                	andi	a1,a1,-8
1c00fb8a:	c38c                	sw	a1,0(a5)
1c00fb8c:	0007a223          	sw	zero,4(a5)
1c00fb90:	8082                	ret

1c00fb92 <pos_alloc>:
1c00fb92:	411c                	lw	a5,0(a0)
1c00fb94:	00758713          	addi	a4,a1,7
1c00fb98:	862a                	mv	a2,a0
1c00fb9a:	ff877593          	andi	a1,a4,-8
1c00fb9e:	4681                	li	a3,0
1c00fba0:	e789                	bnez	a5,1c00fbaa <pos_alloc+0x18>
1c00fba2:	a091                	j	1c00fbe6 <pos_alloc+0x54>
1c00fba4:	86be                	mv	a3,a5
1c00fba6:	c505                	beqz	a0,1c00fbce <pos_alloc+0x3c>
1c00fba8:	87aa                	mv	a5,a0
1c00fbaa:	4398                	lw	a4,0(a5)
1c00fbac:	43c8                	lw	a0,4(a5)
1c00fbae:	feb74be3          	blt	a4,a1,1c00fba4 <pos_alloc+0x12>
1c00fbb2:	00b70f63          	beq	a4,a1,1c00fbd0 <pos_alloc+0x3e>
1c00fbb6:	00b78833          	add	a6,a5,a1
1c00fbba:	8f0d                	sub	a4,a4,a1
1c00fbbc:	00e82023          	sw	a4,0(a6)
1c00fbc0:	00a82223          	sw	a0,4(a6)
1c00fbc4:	ca91                	beqz	a3,1c00fbd8 <pos_alloc+0x46>
1c00fbc6:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00fbca:	853e                	mv	a0,a5
1c00fbcc:	8082                	ret
1c00fbce:	8082                	ret
1c00fbd0:	ca81                	beqz	a3,1c00fbe0 <pos_alloc+0x4e>
1c00fbd2:	c2c8                	sw	a0,4(a3)
1c00fbd4:	853e                	mv	a0,a5
1c00fbd6:	8082                	ret
1c00fbd8:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00fbdc:	853e                	mv	a0,a5
1c00fbde:	8082                	ret
1c00fbe0:	c208                	sw	a0,0(a2)
1c00fbe2:	853e                	mv	a0,a5
1c00fbe4:	8082                	ret
1c00fbe6:	4501                	li	a0,0
1c00fbe8:	8082                	ret

1c00fbea <pos_free>:
1c00fbea:	411c                	lw	a5,0(a0)
1c00fbec:	061d                	addi	a2,a2,7
1c00fbee:	9a61                	andi	a2,a2,-8
1c00fbf0:	c7a1                	beqz	a5,1c00fc38 <pos_free+0x4e>
1c00fbf2:	00b7e563          	bltu	a5,a1,1c00fbfc <pos_free+0x12>
1c00fbf6:	a089                	j	1c00fc38 <pos_free+0x4e>
1c00fbf8:	00b7f563          	bgeu	a5,a1,1c00fc02 <pos_free+0x18>
1c00fbfc:	873e                	mv	a4,a5
1c00fbfe:	43dc                	lw	a5,4(a5)
1c00fc00:	ffe5                	bnez	a5,1c00fbf8 <pos_free+0xe>
1c00fc02:	00c586b3          	add	a3,a1,a2
1c00fc06:	00d78b63          	beq	a5,a3,1c00fc1c <pos_free+0x32>
1c00fc0a:	c190                	sw	a2,0(a1)
1c00fc0c:	4314                	lw	a3,0(a4)
1c00fc0e:	c1dc                	sw	a5,4(a1)
1c00fc10:	00d70533          	add	a0,a4,a3
1c00fc14:	00a58e63          	beq	a1,a0,1c00fc30 <pos_free+0x46>
1c00fc18:	c34c                	sw	a1,4(a4)
1c00fc1a:	8082                	ret
1c00fc1c:	4394                	lw	a3,0(a5)
1c00fc1e:	43dc                	lw	a5,4(a5)
1c00fc20:	9636                	add	a2,a2,a3
1c00fc22:	c190                	sw	a2,0(a1)
1c00fc24:	4314                	lw	a3,0(a4)
1c00fc26:	c1dc                	sw	a5,4(a1)
1c00fc28:	00d70533          	add	a0,a4,a3
1c00fc2c:	fea596e3          	bne	a1,a0,1c00fc18 <pos_free+0x2e>
1c00fc30:	9636                	add	a2,a2,a3
1c00fc32:	c310                	sw	a2,0(a4)
1c00fc34:	c35c                	sw	a5,4(a4)
1c00fc36:	8082                	ret
1c00fc38:	00c58733          	add	a4,a1,a2
1c00fc3c:	00e78663          	beq	a5,a4,1c00fc48 <pos_free+0x5e>
1c00fc40:	c1dc                	sw	a5,4(a1)
1c00fc42:	c190                	sw	a2,0(a1)
1c00fc44:	c10c                	sw	a1,0(a0)
1c00fc46:	8082                	ret
1c00fc48:	4398                	lw	a4,0(a5)
1c00fc4a:	43dc                	lw	a5,4(a5)
1c00fc4c:	963a                	add	a2,a2,a4
1c00fc4e:	c1dc                	sw	a5,4(a1)
1c00fc50:	c190                	sw	a2,0(a1)
1c00fc52:	bfcd                	j	1c00fc44 <pos_free+0x5a>

1c00fc54 <pos_allocs_init>:
1c00fc54:	1c0075b7          	lui	a1,0x1c007
1c00fc58:	1141                	addi	sp,sp,-16
1c00fc5a:	54458613          	addi	a2,a1,1348 # 1c007544 <__l2_priv0_end>
1c00fc5e:	1c0087b7          	lui	a5,0x1c008
1c00fc62:	c606                	sw	ra,12(sp)
1c00fc64:	54458593          	addi	a1,a1,1348
1c00fc68:	40c78633          	sub	a2,a5,a2
1c00fc6c:	04f5d863          	bge	a1,a5,1c00fcbc <pos_allocs_init+0x68>
1c00fc70:	1c007537          	lui	a0,0x1c007
1c00fc74:	53850513          	addi	a0,a0,1336 # 1c007538 <pos_alloc_l2>
1c00fc78:	3df5                	jal	1c00fb74 <pos_alloc_init>
1c00fc7a:	1c0105b7          	lui	a1,0x1c010
1c00fc7e:	d2c58613          	addi	a2,a1,-724 # 1c00fd2c <__l2_priv1_end>
1c00fc82:	1c0107b7          	lui	a5,0x1c010
1c00fc86:	d2c58593          	addi	a1,a1,-724
1c00fc8a:	40c78633          	sub	a2,a5,a2
1c00fc8e:	02f5da63          	bge	a1,a5,1c00fcc2 <pos_allocs_init+0x6e>
1c00fc92:	1c007537          	lui	a0,0x1c007
1c00fc96:	53c50513          	addi	a0,a0,1340 # 1c00753c <pos_alloc_l2+0x4>
1c00fc9a:	3de9                	jal	1c00fb74 <pos_alloc_init>
1c00fc9c:	40b2                	lw	ra,12(sp)
1c00fc9e:	1c0105b7          	lui	a1,0x1c010
1c00fca2:	00058793          	mv	a5,a1
1c00fca6:	1c080637          	lui	a2,0x1c080
1c00fcaa:	1c007537          	lui	a0,0x1c007
1c00fcae:	8e1d                	sub	a2,a2,a5
1c00fcb0:	00058593          	mv	a1,a1
1c00fcb4:	54050513          	addi	a0,a0,1344 # 1c007540 <pos_alloc_l2+0x8>
1c00fcb8:	0141                	addi	sp,sp,16
1c00fcba:	bd6d                	j	1c00fb74 <pos_alloc_init>
1c00fcbc:	4581                	li	a1,0
1c00fcbe:	4601                	li	a2,0
1c00fcc0:	bf45                	j	1c00fc70 <pos_allocs_init+0x1c>
1c00fcc2:	4581                	li	a1,0
1c00fcc4:	4601                	li	a2,0
1c00fcc6:	b7f1                	j	1c00fc92 <pos_allocs_init+0x3e>

1c00fcc8 <pi_l2_malloc>:
1c00fcc8:	85aa                	mv	a1,a0
1c00fcca:	1c007537          	lui	a0,0x1c007
1c00fcce:	53850513          	addi	a0,a0,1336 # 1c007538 <pos_alloc_l2>
1c00fcd2:	b5c1                	j	1c00fb92 <pos_alloc>

1c00fcd4 <pi_l2_free>:
1c00fcd4:	862e                	mv	a2,a1
1c00fcd6:	85aa                	mv	a1,a0
1c00fcd8:	1c007537          	lui	a0,0x1c007
1c00fcdc:	53850513          	addi	a0,a0,1336 # 1c007538 <pos_alloc_l2>
1c00fce0:	b729                	j	1c00fbea <pos_free>

1c00fce2 <__rt_handle_illegal_instr>:
1c00fce2:	8082                	ret

1c00fce4 <pos_irq_init>:
1c00fce4:	1a10a737          	lui	a4,0x1a10a
1c00fce8:	56fd                	li	a3,-1
1c00fcea:	f14027f3          	csrr	a5,mhartid
1c00fcee:	8795                	srai	a5,a5,0x5
1c00fcf0:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00fcf4:	03f7f793          	andi	a5,a5,63
1c00fcf8:	477d                	li	a4,31
1c00fcfa:	00e78363          	beq	a5,a4,1c00fd00 <pos_irq_init+0x1c>
1c00fcfe:	8082                	ret
1c00fd00:	1c0087b7          	lui	a5,0x1c008
1c00fd04:	00078793          	mv	a5,a5
1c00fd08:	0017e793          	ori	a5,a5,1
1c00fd0c:	30579073          	csrw	mtvec,a5
1c00fd10:	8082                	ret

1c00fd12 <pos_soc_event_init>:
1c00fd12:	1a1067b7          	lui	a5,0x1a106
1c00fd16:	577d                	li	a4,-1
1c00fd18:	c3d8                	sw	a4,4(a5)
1c00fd1a:	c798                	sw	a4,8(a5)
1c00fd1c:	c7d8                	sw	a4,12(a5)
1c00fd1e:	cb98                	sw	a4,16(a5)
1c00fd20:	cbd8                	sw	a4,20(a5)
1c00fd22:	cf98                	sw	a4,24(a5)
1c00fd24:	cfd8                	sw	a4,28(a5)
1c00fd26:	d398                	sw	a4,32(a5)
1c00fd28:	8082                	ret

1c00fd2a <_endtext>:
	...
