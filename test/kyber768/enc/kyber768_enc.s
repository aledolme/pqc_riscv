riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber768/enc/build/enc/enc

/home/alessandra.dolmeta/pqc_riscv/test/kyber768/enc/build/enc/enc:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	3670406f          	j	1c00cb66 <__rt_handle_illegal_instr>
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
1c008084:	2e30406f          	j	1c00cb66 <__rt_handle_illegal_instr>

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
1c0080e2:	0b9040ef          	jal	ra,1c00c99a <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	0d5040ef          	jal	ra,1c00c9d0 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	117030ef          	jal	ra,1c00ba18 <exit>
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
1c008172:	0c3030ef          	jal	ra,1c00ba34 <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	0690306f          	j	1c00b9ee <putchar>

1c00818a <main>:
1c00818a:	81010113          	addi	sp,sp,-2032
1c00818e:	1e85d7b7          	lui	a5,0x1e85d
1c008192:	7e112623          	sw	ra,2028(sp)
1c008196:	7e812423          	sw	s0,2024(sp)
1c00819a:	7e912223          	sw	s1,2020(sp)
1c00819e:	7f212023          	sw	s2,2016(sp)
1c0081a2:	43878793          	addi	a5,a5,1080 # 1e85d438 <__l2_shared_end+0x284d438>
1c0081a6:	712d                	addi	sp,sp,-288
1c0081a8:	46f12023          	sw	a5,1120(sp)
1c0081ac:	a30d07b7          	lui	a5,0xa30d0
1c0081b0:	15c78793          	addi	a5,a5,348 # a30d015c <__l2_shared_end+0x870c015c>
1c0081b4:	46f12223          	sw	a5,1124(sp)
1c0081b8:	bc7077b7          	lui	a5,0xbc707
1c0081bc:	49a78793          	addi	a5,a5,1178 # bc70749a <__l2_shared_end+0xa06f749a>
1c0081c0:	46f12423          	sw	a5,1128(sp)
1c0081c4:	6f9187b7          	lui	a5,0x6f918
1c0081c8:	07f1                	addi	a5,a5,28
1c0081ca:	46f12623          	sw	a5,1132(sp)
1c0081ce:	58bdc7b7          	lui	a5,0x58bdc
1c0081d2:	77878793          	addi	a5,a5,1912 # 58bdc778 <__l2_shared_end+0x3cbcc778>
1c0081d6:	46f12823          	sw	a5,1136(sp)
1c0081da:	b1d3e7b7          	lui	a5,0xb1d3e
1c0081de:	c9178793          	addi	a5,a5,-879 # b1d3dc91 <__l2_shared_end+0x95d2dc91>
1c0081e2:	46f12a23          	sw	a5,1140(sp)
1c0081e6:	f0b687b7          	lui	a5,0xf0b68
1c0081ea:	4ea78793          	addi	a5,a5,1258 # f0b684ea <__l2_shared_end+0xd4b584ea>
1c0081ee:	46f12c23          	sw	a5,1144(sp)
1c0081f2:	b846b7b7          	lui	a5,0xb846b
1c0081f6:	35178793          	addi	a5,a5,849 # b846b351 <__l2_shared_end+0x9c45b351>
1c0081fa:	46f12e23          	sw	a5,1148(sp)
1c0081fe:	7cb9c7b7          	lui	a5,0x7cb9c
1c008202:	10378793          	addi	a5,a5,259 # 7cb9c103 <__l2_shared_end+0x60b8c103>
1c008206:	48f12023          	sw	a5,1152(sp)
1c00820a:	204067b7          	lui	a5,0x20406
1c00820e:	09478793          	addi	a5,a5,148 # 20406094 <__l2_shared_end+0x43f6094>
1c008212:	48f12223          	sw	a5,1156(sp)
1c008216:	279b27b7          	lui	a5,0x279b2
1c00821a:	7b778793          	addi	a5,a5,1975 # 279b27b7 <__l2_shared_end+0xb9a27b7>
1c00821e:	48f12423          	sw	a5,1160(sp)
1c008222:	493077b7          	lui	a5,0x49307
1c008226:	c8378793          	addi	a5,a5,-893 # 49306c83 <__l2_shared_end+0x2d2f6c83>
1c00822a:	48f12623          	sw	a5,1164(sp)
1c00822e:	379a17b7          	lui	a5,0x379a1
1c008232:	bea78793          	addi	a5,a5,-1046 # 379a0bea <__l2_shared_end+0x1b990bea>
1c008236:	48f12823          	sw	a5,1168(sp)
1c00823a:	750b57b7          	lui	a5,0x750b5
1c00823e:	15878793          	addi	a5,a5,344 # 750b5158 <__l2_shared_end+0x590a5158>
1c008242:	48f12a23          	sw	a5,1172(sp)
1c008246:	373267b7          	lui	a5,0x37326
1c00824a:	95978793          	addi	a5,a5,-1703 # 37325959 <__l2_shared_end+0x1b315959>
1c00824e:	48f12c23          	sw	a5,1176(sp)
1c008252:	8725e7b7          	lui	a5,0x8725e
1c008256:	7ad78793          	addi	a5,a5,1965 # 8725e7ad <__l2_shared_end+0x6b24e7ad>
1c00825a:	48f12e23          	sw	a5,1180(sp)
1c00825e:	b70627b7          	lui	a5,0xb7062
1c008262:	24678793          	addi	a5,a5,582 # b7062246 <__l2_shared_end+0x9b052246>
1c008266:	4af12023          	sw	a5,1184(sp)
1c00826a:	8465f7b7          	lui	a5,0x8465f
1c00826e:	30978793          	addi	a5,a5,777 # 8465f309 <__l2_shared_end+0x6864f309>
1c008272:	4af12223          	sw	a5,1188(sp)
1c008276:	935597b7          	lui	a5,0x93559
1c00827a:	68c78793          	addi	a5,a5,1676 # 9355968c <__l2_shared_end+0x7754968c>
1c00827e:	4af12423          	sw	a5,1192(sp)
1c008282:	6cfea7b7          	lui	a5,0x6cfea
1c008286:	52678793          	addi	a5,a5,1318 # 6cfea526 <__l2_shared_end+0x50fda526>
1c00828a:	4af12623          	sw	a5,1196(sp)
1c00828e:	31f557b7          	lui	a5,0x31f55
1c008292:	c6f78793          	addi	a5,a5,-913 # 31f54c6f <__l2_shared_end+0x15f44c6f>
1c008296:	4af12823          	sw	a5,1200(sp)
1c00829a:	471827b7          	lui	a5,0x47182
1c00829e:	afd78793          	addi	a5,a5,-1283 # 47181afd <__l2_shared_end+0x2b171afd>
1c0082a2:	4af12a23          	sw	a5,1204(sp)
1c0082a6:	6bf667b7          	lui	a5,0x6bf66
1c0082aa:	77278793          	addi	a5,a5,1906 # 6bf66772 <__l2_shared_end+0x4ff56772>
1c0082ae:	4af12c23          	sw	a5,1208(sp)
1c0082b2:	01f257b7          	lui	a5,0x1f25
1c0082b6:	aa178793          	addi	a5,a5,-1375 # 1f24aa1 <__CTOR_LIST__-0x1a0db563>
1c0082ba:	4af12e23          	sw	a5,1212(sp)
1c0082be:	111fc7b7          	lui	a5,0x111fc
1c0082c2:	46378793          	addi	a5,a5,1123 # 111fc463 <__CTOR_LIST__-0xae03ba1>
1c0082c6:	4cf12023          	sw	a5,1216(sp)
1c0082ca:	9519a7b7          	lui	a5,0x9519a
1c0082ce:	03878793          	addi	a5,a5,56 # 9519a038 <__l2_shared_end+0x7918a038>
1c0082d2:	4cf12223          	sw	a5,1220(sp)
1c0082d6:	1d2787b7          	lui	a5,0x1d278
1c0082da:	f1478793          	addi	a5,a5,-236 # 1d277f14 <__l2_shared_end+0x1267f14>
1c0082de:	4cf12423          	sw	a5,1224(sp)
1c0082e2:	53bec7b7          	lui	a5,0x53bec
1c0082e6:	2df78793          	addi	a5,a5,735 # 53bec2df <__l2_shared_end+0x37bdc2df>
1c0082ea:	4cf12623          	sw	a5,1228(sp)
1c0082ee:	e681b7b7          	lui	a5,0xe681b
1c0082f2:	26178793          	addi	a5,a5,609 # e681b261 <__l2_shared_end+0xca80b261>
1c0082f6:	4cf12823          	sw	a5,1232(sp)
1c0082fa:	0521a7b7          	lui	a5,0x521a
1c0082fe:	d0278793          	addi	a5,a5,-766 # 5219d02 <__CTOR_LIST__-0x16de6302>
1c008302:	4cf12a23          	sw	a5,1236(sp)
1c008306:	9b85b7b7          	lui	a5,0x9b85b
1c00830a:	28478793          	addi	a5,a5,644 # 9b85b284 <__l2_shared_end+0x7f84b284>
1c00830e:	4cf12c23          	sw	a5,1240(sp)
1c008312:	726687b7          	lui	a5,0x72668
1c008316:	37378793          	addi	a5,a5,883 # 72668373 <__l2_shared_end+0x56658373>
1c00831a:	4cf12e23          	sw	a5,1244(sp)
1c00831e:	bb67f7b7          	lui	a5,0xbb67f
1c008322:	78478793          	addi	a5,a5,1924 # bb67f784 <__l2_shared_end+0x9f66f784>
1c008326:	4ef12023          	sw	a5,1248(sp)
1c00832a:	aa2b87b7          	lui	a5,0xaa2b8
1c00832e:	83278793          	addi	a5,a5,-1998 # aa2b7832 <__l2_shared_end+0x8e2a7832>
1c008332:	4ef12223          	sw	a5,1252(sp)
1c008336:	da3317b7          	lui	a5,0xda331
1c00833a:	9d178793          	addi	a5,a5,-1583 # da3309d1 <__l2_shared_end+0xbe3209d1>
1c00833e:	4ef12423          	sw	a5,1256(sp)
1c008342:	a0a347b7          	lui	a5,0xa0a34
1c008346:	80178793          	addi	a5,a5,-2047 # a0a33801 <__l2_shared_end+0x84a23801>
1c00834a:	4ef12623          	sw	a5,1260(sp)
1c00834e:	951417b7          	lui	a5,0x95141
1c008352:	a6678793          	addi	a5,a5,-1434 # 95140a66 <__l2_shared_end+0x79130a66>
1c008356:	4ef12823          	sw	a5,1264(sp)
1c00835a:	9c3fc7b7          	lui	a5,0x9c3fc
1c00835e:	03178793          	addi	a5,a5,49 # 9c3fc031 <__l2_shared_end+0x803ec031>
1c008362:	4ef12a23          	sw	a5,1268(sp)
1c008366:	33cc07b7          	lui	a5,0x33cc0
1c00836a:	c8f78793          	addi	a5,a5,-881 # 33cbfc8f <__l2_shared_end+0x17cafc8f>
1c00836e:	4ef12c23          	sw	a5,1272(sp)
1c008372:	a7a5c7b7          	lui	a5,0xa7a5c
1c008376:	3e378793          	addi	a5,a5,995 # a7a5c3e3 <__l2_shared_end+0x8ba4c3e3>
1c00837a:	4ef12e23          	sw	a5,1276(sp)
1c00837e:	fa2157b7          	lui	a5,0xfa215
1c008382:	e9878793          	addi	a5,a5,-360 # fa214e98 <__l2_shared_end+0xde204e98>
1c008386:	50f12023          	sw	a5,1280(sp)
1c00838a:	2aa777b7          	lui	a5,0x2aa77
1c00838e:	ab278793          	addi	a5,a5,-1358 # 2aa76ab2 <__l2_shared_end+0xea66ab2>
1c008392:	50f12223          	sw	a5,1284(sp)
1c008396:	2f9477b7          	lui	a5,0x2f947
1c00839a:	b8a78793          	addi	a5,a5,-1142 # 2f946b8a <__l2_shared_end+0x13936b8a>
1c00839e:	50f12423          	sw	a5,1288(sp)
1c0083a2:	555267b7          	lui	a5,0x55526
1c0083a6:	e2678793          	addi	a5,a5,-474 # 55525e26 <__l2_shared_end+0x39515e26>
1c0083aa:	50f12623          	sw	a5,1292(sp)
1c0083ae:	0e80a7b7          	lui	a5,0xe80a
1c0083b2:	c1a78793          	addi	a5,a5,-998 # e809c1a <__CTOR_LIST__-0xd7f63ea>
1c0083b6:	50f12823          	sw	a5,1296(sp)
1c0083ba:	5f8047b7          	lui	a5,0x5f804
1c0083be:	45a78793          	addi	a5,a5,1114 # 5f80445a <__l2_shared_end+0x437f445a>
1c0083c2:	50f12a23          	sw	a5,1300(sp)
1c0083c6:	a04107b7          	lui	a5,0xa0410
1c0083ca:	10c78793          	addi	a5,a5,268 # a041010c <__l2_shared_end+0x8440010c>
1c0083ce:	50f12c23          	sw	a5,1304(sp)
1c0083d2:	332157b7          	lui	a5,0x33215
1c0083d6:	45578793          	addi	a5,a5,1109 # 33215455 <__l2_shared_end+0x17205455>
1c0083da:	50f12e23          	sw	a5,1308(sp)
1c0083de:	df05f7b7          	lui	a5,0xdf05f
1c0083e2:	18778793          	addi	a5,a5,391 # df05f187 <__l2_shared_end+0xc304f187>
1c0083e6:	52f12023          	sw	a5,1312(sp)
1c0083ea:	968447b7          	lui	a5,0x96844
1c0083ee:	55678793          	addi	a5,a5,1366 # 96844556 <__l2_shared_end+0x7a834556>
1c0083f2:	52f12223          	sw	a5,1316(sp)
1c0083f6:	904697b7          	lui	a5,0x90469
1c0083fa:	fbd78793          	addi	a5,a5,-67 # 90468fbd <__l2_shared_end+0x74458fbd>
1c0083fe:	52f12423          	sw	a5,1320(sp)
1c008402:	a26d97b7          	lui	a5,0xa26d9
1c008406:	85178793          	addi	a5,a5,-1967 # a26d8851 <__l2_shared_end+0x866c8851>
1c00840a:	52f12623          	sw	a5,1324(sp)
1c00840e:	e79fd7b7          	lui	a5,0xe79fd
1c008412:	b2378793          	addi	a5,a5,-1245 # e79fcb23 <__l2_shared_end+0xcb9ecb23>
1c008416:	52f12823          	sw	a5,1328(sp)
1c00841a:	0b3987b7          	lui	a5,0xb398
1c00841e:	b8e78793          	addi	a5,a5,-1138 # b397b8e <__CTOR_LIST__-0x10c68476>
1c008422:	52f12a23          	sw	a5,1332(sp)
1c008426:	930a57b7          	lui	a5,0x930a5
1c00842a:	bf978793          	addi	a5,a5,-1031 # 930a4bf9 <__l2_shared_end+0x77094bf9>
1c00842e:	52f12c23          	sw	a5,1336(sp)
1c008432:	95af97b7          	lui	a5,0x95af9
1c008436:	17678793          	addi	a5,a5,374 # 95af9176 <__l2_shared_end+0x79ae9176>
1c00843a:	52f12e23          	sw	a5,1340(sp)
1c00843e:	762b17b7          	lui	a5,0x762b1
1c008442:	85078793          	addi	a5,a5,-1968 # 762b0850 <__l2_shared_end+0x5a2a0850>
1c008446:	54f12023          	sw	a5,1344(sp)
1c00844a:	4dcb47b7          	lui	a5,0x4dcb4
1c00844e:	5d078793          	addi	a5,a5,1488 # 4dcb45d0 <__l2_shared_end+0x31ca45d0>
1c008452:	54f12223          	sw	a5,1348(sp)
1c008456:	673cc7b7          	lui	a5,0x673cc
1c00845a:	22978793          	addi	a5,a5,553 # 673cc229 <__l2_shared_end+0x4b3bc229>
1c00845e:	54f12423          	sw	a5,1352(sp)
1c008462:	d00827b7          	lui	a5,0xd0082
1c008466:	69478793          	addi	a5,a5,1684 # d0082694 <__l2_shared_end+0xb4072694>
1c00846a:	54f12623          	sw	a5,1356(sp)
1c00846e:	0fc8a7b7          	lui	a5,0xfc8a
1c008472:	17878793          	addi	a5,a5,376 # fc8a178 <__CTOR_LIST__-0xc375e8c>
1c008476:	54f12823          	sw	a5,1360(sp)
1c00847a:	9b9b3737          	lui	a4,0x9b9b3
1c00847e:	947a77b7          	lui	a5,0x947a7
1c008482:	62478793          	addi	a5,a5,1572 # 947a7624 <__l2_shared_end+0x78797624>
1c008486:	cd870713          	addi	a4,a4,-808 # 9b9b2cd8 <__l2_shared_end+0x7f9a2cd8>
1c00848a:	54f12a23          	sw	a5,1364(sp)
1c00848e:	54e12e23          	sw	a4,1372(sp)
1c008492:	46737737          	lui	a4,0x46737
1c008496:	0765                	addi	a4,a4,25
1c008498:	56e12023          	sw	a4,1376(sp)
1c00849c:	cf69c737          	lui	a4,0xcf69c
1c0084a0:	e4a70713          	addi	a4,a4,-438 # cf69be4a <__l2_shared_end+0xb368be4a>
1c0084a4:	56e12223          	sw	a4,1380(sp)
1c0084a8:	17265737          	lui	a4,0x17265
1c0084ac:	67c70713          	addi	a4,a4,1660 # 1726567c <__CTOR_LIST__-0x4d9a988>
1c0084b0:	56e12423          	sw	a4,1384(sp)
1c0084b4:	84f31737          	lui	a4,0x84f31
1c0084b8:	87370713          	addi	a4,a4,-1933 # 84f30873 <__l2_shared_end+0x68f20873>
1c0084bc:	56e12623          	sw	a4,1388(sp)
1c0084c0:	63523737          	lui	a4,0x63523
1c0084c4:	d6770713          	addi	a4,a4,-665 # 63522d67 <__l2_shared_end+0x47512d67>
1c0084c8:	56e12823          	sw	a4,1392(sp)
1c0084cc:	6d82c737          	lui	a4,0x6d82c
1c0084d0:	4b070713          	addi	a4,a4,1200 # 6d82c4b0 <__l2_shared_end+0x5181c4b0>
1c0084d4:	56e12a23          	sw	a4,1396(sp)
1c0084d8:	1a0e4737          	lui	a4,0x1a0e4
1c0084dc:	7b470713          	addi	a4,a4,1972 # 1a0e47b4 <__CTOR_LIST__-0x1f1b850>
1c0084e0:	56e12c23          	sw	a4,1400(sp)
1c0084e4:	1e75e737          	lui	a4,0x1e75e
1c0084e8:	47070713          	addi	a4,a4,1136 # 1e75e470 <__l2_shared_end+0x274e470>
1c0084ec:	56e12e23          	sw	a4,1404(sp)
1c0084f0:	e8ab2737          	lui	a4,0xe8ab2
1c0084f4:	83970713          	addi	a4,a4,-1991 # e8ab1839 <__l2_shared_end+0xccaa1839>
1c0084f8:	58e12023          	sw	a4,1408(sp)
1c0084fc:	c03bc737          	lui	a4,0xc03bc
1c008500:	cfc70713          	addi	a4,a4,-772 # c03bbcfc <__l2_shared_end+0xa43abcfc>
1c008504:	58e12223          	sw	a4,1412(sp)
1c008508:	9ee82737          	lui	a4,0x9ee82
1c00850c:	a5370713          	addi	a4,a4,-1453 # 9ee81a53 <__l2_shared_end+0x82e71a53>
1c008510:	58e12423          	sw	a4,1416(sp)
1c008514:	4b211737          	lui	a4,0x4b211
1c008518:	25570713          	addi	a4,a4,597 # 4b211255 <__l2_shared_end+0x2f201255>
1c00851c:	58e12623          	sw	a4,1420(sp)
1c008520:	164ad737          	lui	a4,0x164ad
1c008524:	95c70713          	addi	a4,a4,-1700 # 164ac95c <__CTOR_LIST__-0x5b536a8>
1c008528:	58e12823          	sw	a4,1424(sp)
1c00852c:	b3bc1737          	lui	a4,0xb3bc1
1c008530:	4a070713          	addi	a4,a4,1184 # b3bc14a0 <__l2_shared_end+0x97bb14a0>
1c008534:	58e12a23          	sw	a4,1428(sp)
1c008538:	fb797737          	lui	a4,0xfb797
1c00853c:	c8270713          	addi	a4,a4,-894 # fb796c82 <__l2_shared_end+0xdf786c82>
1c008540:	58e12c23          	sw	a4,1432(sp)
1c008544:	82d0b737          	lui	a4,0x82d0b
1c008548:	df470713          	addi	a4,a4,-524 # 82d0adf4 <__l2_shared_end+0x66cfadf4>
1c00854c:	58e12e23          	sw	a4,1436(sp)
1c008550:	abfbf737          	lui	a4,0xabfbf
1c008554:	e5e70713          	addi	a4,a4,-418 # abfbee5e <__l2_shared_end+0x8ffaee5e>
1c008558:	5ae12023          	sw	a4,1440(sp)
1c00855c:	ff7cd737          	lui	a4,0xff7cd
1c008560:	b8870713          	addi	a4,a4,-1144 # ff7ccb88 <__l2_shared_end+0xe37bcb88>
1c008564:	5ae12223          	sw	a4,1444(sp)
1c008568:	498dc737          	lui	a4,0x498dc
1c00856c:	b3770713          	addi	a4,a4,-1225 # 498dbb37 <__l2_shared_end+0x2d8cbb37>
1c008570:	5ae12423          	sw	a4,1448(sp)
1c008574:	02e99737          	lui	a4,0x2e99
1c008578:	d1f70713          	addi	a4,a4,-737 # 2e98d1f <__CTOR_LIST__-0x191672e5>
1c00857c:	5ae12623          	sw	a4,1452(sp)
1c008580:	961e9737          	lui	a4,0x961e9
1c008584:	a5770713          	addi	a4,a4,-1449 # 961e8a57 <__l2_shared_end+0x7a1d8a57>
1c008588:	5ae12823          	sw	a4,1456(sp)
1c00858c:	5b565737          	lui	a4,0x5b565
1c008590:	51670713          	addi	a4,a4,1302 # 5b565516 <__l2_shared_end+0x3f555516>
1c008594:	5ae12a23          	sw	a4,1460(sp)
1c008598:	2a782737          	lui	a4,0x2a782
1c00859c:	87770713          	addi	a4,a4,-1929 # 2a781877 <__l2_shared_end+0xe771877>
1c0085a0:	5ae12c23          	sw	a4,1464(sp)
1c0085a4:	dc4f5737          	lui	a4,0xdc4f5
1c0085a8:	02370713          	addi	a4,a4,35 # dc4f5023 <__l2_shared_end+0xc04e5023>
1c0085ac:	5ae12e23          	sw	a4,1468(sp)
1c0085b0:	f183c737          	lui	a4,0xf183c
1c0085b4:	71370713          	addi	a4,a4,1811 # f183c713 <__l2_shared_end+0xd582c713>
1c0085b8:	5ce12023          	sw	a4,1472(sp)
1c0085bc:	9277e737          	lui	a4,0x9277e
1c0085c0:	13070713          	addi	a4,a4,304 # 9277e130 <__l2_shared_end+0x7676e130>
1c0085c4:	5ce12223          	sw	a4,1476(sp)
1c0085c8:	1f5d3737          	lui	a4,0x1f5d3
1c0085cc:	05e70713          	addi	a4,a4,94 # 1f5d305e <__l2_shared_end+0x35c305e>
1c0085d0:	6789                	lui	a5,0x2
1c0085d2:	5ce12423          	sw	a4,1480(sp)
1c0085d6:	95d78793          	addi	a5,a5,-1699 # 195d <__CTOR_LIST__-0x1bffe6a7>
1c0085da:	8ccc6737          	lui	a4,0x8ccc6
1c0085de:	54f11c23          	sh	a5,1368(sp)
1c0085e2:	3bc70713          	addi	a4,a4,956 # 8ccc63bc <__l2_shared_end+0x70cb63bc>
1c0085e6:	57c1                	li	a5,-16
1c0085e8:	54f10d23          	sb	a5,1370(sp)
1c0085ec:	5ce12623          	sw	a4,1484(sp)
1c0085f0:	07700793          	li	a5,119
1c0085f4:	7fc6c737          	lui	a4,0x7fc6c
1c0085f8:	54f10da3          	sb	a5,1371(sp)
1c0085fc:	21570713          	addi	a4,a4,533 # 7fc6c215 <__l2_shared_end+0x63c5c215>
1c008600:	5ce12823          	sw	a4,1488(sp)
1c008604:	ca0c5737          	lui	a4,0xca0c5
1c008608:	08570713          	addi	a4,a4,133 # ca0c5085 <__l2_shared_end+0xae0b5085>
1c00860c:	5ce12a23          	sw	a4,1492(sp)
1c008610:	f4e96737          	lui	a4,0xf4e96
1c008614:	d7870713          	addi	a4,a4,-648 # f4e95d78 <__l2_shared_end+0xd8e85d78>
1c008618:	5ce12c23          	sw	a4,1496(sp)
1c00861c:	58055737          	lui	a4,0x58055
1c008620:	98070713          	addi	a4,a4,-1664 # 58054980 <__l2_shared_end+0x3c044980>
1c008624:	5ce12e23          	sw	a4,1500(sp)
1c008628:	f0aa7737          	lui	a4,0xf0aa7
1c00862c:	1ef70713          	addi	a4,a4,495 # f0aa71ef <__l2_shared_end+0xd4a971ef>
1c008630:	5ee12023          	sw	a4,1504(sp)
1c008634:	39516737          	lui	a4,0x39516
1c008638:	bfb70713          	addi	a4,a4,-1029 # 39515bfb <__l2_shared_end+0x1d505bfb>
1c00863c:	5ee12223          	sw	a4,1508(sp)
1c008640:	69124737          	lui	a4,0x69124
1c008644:	0751                	addi	a4,a4,20
1c008646:	5ee12423          	sw	a4,1512(sp)
1c00864a:	c5c41737          	lui	a4,0xc5c41
1c00864e:	9b370713          	addi	a4,a4,-1613 # c5c409b3 <__l2_shared_end+0xa9c309b3>
1c008652:	5ee12623          	sw	a4,1516(sp)
1c008656:	a7d26737          	lui	a4,0xa7d26
1c00865a:	49c70713          	addi	a4,a4,1180 # a7d2649c <__l2_shared_end+0x8bd1649c>
1c00865e:	5ee12823          	sw	a4,1520(sp)
1c008662:	5f85e737          	lui	a4,0x5f85e
1c008666:	85770713          	addi	a4,a4,-1961 # 5f85d857 <__l2_shared_end+0x4384d857>
1c00866a:	5ee12a23          	sw	a4,1524(sp)
1c00866e:	15564737          	lui	a4,0x15564
1c008672:	65870713          	addi	a4,a4,1624 # 15564658 <__CTOR_LIST__-0x6a9b9ac>
1c008676:	5ee12c23          	sw	a4,1528(sp)
1c00867a:	a61e6737          	lui	a4,0xa61e6
1c00867e:	f9270713          	addi	a4,a4,-110 # a61e5f92 <__l2_shared_end+0x8a1d5f92>
1c008682:	5ee12e23          	sw	a4,1532(sp)
1c008686:	43b13737          	lui	a4,0x43b13
1c00868a:	c8170713          	addi	a4,a4,-895 # 43b12c81 <__l2_shared_end+0x27b02c81>
1c00868e:	60e12023          	sw	a4,1536(sp)
1c008692:	e183f737          	lui	a4,0xe183f
1c008696:	3ff70713          	addi	a4,a4,1023 # e183f3ff <__l2_shared_end+0xc582f3ff>
1c00869a:	60e12223          	sw	a4,1540(sp)
1c00869e:	51289737          	lui	a4,0x51289
1c0086a2:	e0470713          	addi	a4,a4,-508 # 51288e04 <__l2_shared_end+0x35278e04>
1c0086a6:	60e12423          	sw	a4,1544(sp)
1c0086aa:	2993c737          	lui	a4,0x2993c
1c0086ae:	f1870713          	addi	a4,a4,-232 # 2993bf18 <__l2_shared_end+0xd92bf18>
1c0086b2:	60e12623          	sw	a4,1548(sp)
1c0086b6:	bd6fc737          	lui	a4,0xbd6fc
1c0086ba:	84470713          	addi	a4,a4,-1980 # bd6fb844 <__l2_shared_end+0xa16eb844>
1c0086be:	60e12823          	sw	a4,1552(sp)
1c0086c2:	e6b9b737          	lui	a4,0xe6b9b
1c0086c6:	1f470713          	addi	a4,a4,500 # e6b9b1f4 <__l2_shared_end+0xcab8b1f4>
1c0086ca:	60e12a23          	sw	a4,1556(sp)
1c0086ce:	4a668737          	lui	a4,0x4a668
1c0086d2:	55670713          	addi	a4,a4,1366 # 4a668556 <__l2_shared_end+0x2e658556>
1c0086d6:	60e12c23          	sw	a4,1560(sp)
1c0086da:	465c7737          	lui	a4,0x465c7
1c0086de:	70770713          	addi	a4,a4,1799 # 465c7707 <__l2_shared_end+0x2a5b7707>
1c0086e2:	60e12e23          	sw	a4,1564(sp)
1c0086e6:	daaa3737          	lui	a4,0xdaaa3
1c0086ea:	a9570713          	addi	a4,a4,-1387 # daaa2a95 <__l2_shared_end+0xbea92a95>
1c0086ee:	62e12023          	sw	a4,1568(sp)
1c0086f2:	4bf57737          	lui	a4,0x4bf57
1c0086f6:	81170713          	addi	a4,a4,-2031 # 4bf56811 <__l2_shared_end+0x2ff46811>
1c0086fa:	62e12223          	sw	a4,1572(sp)
1c0086fe:	31a2c737          	lui	a4,0x31a2c
1c008702:	74770713          	addi	a4,a4,1863 # 31a2c747 <__l2_shared_end+0x15a1c747>
1c008706:	62e12423          	sw	a4,1576(sp)
1c00870a:	645c3737          	lui	a4,0x645c3
1c00870e:	5e770713          	addi	a4,a4,1511 # 645c35e7 <__l2_shared_end+0x485b35e7>
1c008712:	62e12623          	sw	a4,1580(sp)
1c008716:	b5677737          	lui	a4,0xb5677
1c00871a:	46370713          	addi	a4,a4,1123 # b5677463 <__l2_shared_end+0x99667463>
1c00871e:	62e12823          	sw	a4,1584(sp)
1c008722:	ab9cc737          	lui	a4,0xab9cc
1c008726:	0a370713          	addi	a4,a4,163 # ab9cc0a3 <__l2_shared_end+0x8f9bc0a3>
1c00872a:	62e12a23          	sw	a4,1588(sp)
1c00872e:	f535c737          	lui	a4,0xf535c
1c008732:	b6770713          	addi	a4,a4,-1177 # f535bb67 <__l2_shared_end+0xd934bb67>
1c008736:	62e12c23          	sw	a4,1592(sp)
1c00873a:	72c24737          	lui	a4,0x72c24
1c00873e:	08670713          	addi	a4,a4,134 # 72c24086 <__l2_shared_end+0x56c14086>
1c008742:	62e12e23          	sw	a4,1596(sp)
1c008746:	63bb8737          	lui	a4,0x63bb8
1c00874a:	36270713          	addi	a4,a4,866 # 63bb8362 <__l2_shared_end+0x47ba8362>
1c00874e:	64e12023          	sw	a4,1600(sp)
1c008752:	f6151737          	lui	a4,0xf6151
1c008756:	a5370713          	addi	a4,a4,-1453 # f6150a53 <__l2_shared_end+0xda140a53>
1c00875a:	64e12223          	sw	a4,1604(sp)
1c00875e:	a848d737          	lui	a4,0xa848d
1c008762:	a6e70713          	addi	a4,a4,-1426 # a848ca6e <__l2_shared_end+0x8c47ca6e>
1c008766:	64e12423          	sw	a4,1608(sp)
1c00876a:	678d                	lui	a5,0x3
1c00876c:	a80cc737          	lui	a4,0xa80cc
1c008770:	e8678693          	addi	a3,a5,-378 # 2e86 <__CTOR_LIST__-0x1bffd17e>
1c008774:	04070713          	addi	a4,a4,64 # a80cc040 <__l2_shared_end+0x8c0bc040>
1c008778:	64e12623          	sw	a4,1612(sp)
1c00877c:	64d11823          	sh	a3,1616(sp)
1c008780:	02800713          	li	a4,40
1c008784:	64e10923          	sb	a4,1618(sp)
1c008788:	03c00713          	li	a4,60
1c00878c:	64e109a3          	sb	a4,1619(sp)
1c008790:	41bbc737          	lui	a4,0x41bbc
1c008794:	f7370713          	addi	a4,a4,-141 # 41bbbf73 <__l2_shared_end+0x25babf73>
1c008798:	64e12a23          	sw	a4,1620(sp)
1c00879c:	b8153737          	lui	a4,0xb8153
1c0087a0:	93a70713          	addi	a4,a4,-1734 # b815293a <__l2_shared_end+0x9c14293a>
1c0087a4:	64e12c23          	sw	a4,1624(sp)
1c0087a8:	049a1737          	lui	a4,0x49a1
1c0087ac:	5d170713          	addi	a4,a4,1489 # 49a15d1 <__CTOR_LIST__-0x1765ea33>
1c0087b0:	64e12e23          	sw	a4,1628(sp)
1c0087b4:	9bc51737          	lui	a4,0x9bc51
1c0087b8:	23f70713          	addi	a4,a4,575 # 9bc5123f <__l2_shared_end+0x7fc4123f>
1c0087bc:	66e12023          	sw	a4,1632(sp)
1c0087c0:	48828737          	lui	a4,0x48828
1c0087c4:	2fa70713          	addi	a4,a4,762 # 488282fa <__l2_shared_end+0x2c8182fa>
1c0087c8:	66e12223          	sw	a4,1636(sp)
1c0087cc:	1076a737          	lui	a4,0x1076a
1c0087d0:	b2470713          	addi	a4,a4,-1244 # 10769b24 <__CTOR_LIST__-0xb8964e0>
1c0087d4:	66e12423          	sw	a4,1640(sp)
1c0087d8:	a161b737          	lui	a4,0xa161b
1c0087dc:	a6f70713          	addi	a4,a4,-1425 # a161aa6f <__l2_shared_end+0x8560aa6f>
1c0087e0:	66e12623          	sw	a4,1644(sp)
1c0087e4:	0c28a737          	lui	a4,0xc28a
1c0087e8:	02770713          	addi	a4,a4,39 # c28a027 <__CTOR_LIST__-0xfd75fdd>
1c0087ec:	66e12823          	sw	a4,1648(sp)
1c0087f0:	e7506737          	lui	a4,0xe7506
1c0087f4:	35870713          	addi	a4,a4,856 # e7506358 <__l2_shared_end+0xcb4f6358>
1c0087f8:	66e12a23          	sw	a4,1652(sp)
1c0087fc:	4cb73737          	lui	a4,0x4cb73
1c008800:	ca470713          	addi	a4,a4,-860 # 4cb72ca4 <__l2_shared_end+0x30b62ca4>
1c008804:	66e12c23          	sw	a4,1656(sp)
1c008808:	d6aba737          	lui	a4,0xd6aba
1c00880c:	ca470713          	addi	a4,a4,-860 # d6ab9ca4 <__l2_shared_end+0xbaaa9ca4>
1c008810:	66e12e23          	sw	a4,1660(sp)
1c008814:	c71e9737          	lui	a4,0xc71e9
1c008818:	90670713          	addi	a4,a4,-1786 # c71e8906 <__l2_shared_end+0xab1d8906>
1c00881c:	68e12023          	sw	a4,1664(sp)
1c008820:	af849737          	lui	a4,0xaf849
1c008824:	ecb70713          	addi	a4,a4,-309 # af848ecb <__l2_shared_end+0x93838ecb>
1c008828:	68e12223          	sw	a4,1668(sp)
1c00882c:	142e5737          	lui	a4,0x142e5
1c008830:	bfe70713          	addi	a4,a4,-1026 # 142e4bfe <__CTOR_LIST__-0x7d1b406>
1c008834:	68e12423          	sw	a4,1672(sp)
1c008838:	33581737          	lui	a4,0x33581
1c00883c:	6c770713          	addi	a4,a4,1735 # 335816c7 <__l2_shared_end+0x175716c7>
1c008840:	68e12623          	sw	a4,1676(sp)
1c008844:	11567737          	lui	a4,0x11567
1c008848:	52b70713          	addi	a4,a4,1323 # 1156752b <__CTOR_LIST__-0xaa98ad9>
1c00884c:	68e12823          	sw	a4,1680(sp)
1c008850:	7f97b737          	lui	a4,0x7f97b
1c008854:	7ba70713          	addi	a4,a4,1978 # 7f97b7ba <__l2_shared_end+0x6396b7ba>
1c008858:	68e12a23          	sw	a4,1684(sp)
1c00885c:	36e77737          	lui	a4,0x36e77
1c008860:	ca770713          	addi	a4,a4,-857 # 36e76ca7 <__l2_shared_end+0x1ae66ca7>
1c008864:	68e12c23          	sw	a4,1688(sp)
1c008868:	4ad32737          	lui	a4,0x4ad32
1c00886c:	eb270713          	addi	a4,a4,-334 # 4ad31eb2 <__l2_shared_end+0x2ed21eb2>
1c008870:	68e12e23          	sw	a4,1692(sp)
1c008874:	c30eb737          	lui	a4,0xc30eb
1c008878:	c1770713          	addi	a4,a4,-1001 # c30eac17 <__l2_shared_end+0xa70dac17>
1c00887c:	6ae12023          	sw	a4,1696(sp)
1c008880:	b2a92737          	lui	a4,0xb2a92
1c008884:	c5670713          	addi	a4,a4,-938 # b2a91c56 <__l2_shared_end+0x96a81c56>
1c008888:	6ae12223          	sw	a4,1700(sp)
1c00888c:	bca2d737          	lui	a4,0xbca2d
1c008890:	48270713          	addi	a4,a4,1154 # bca2d482 <__l2_shared_end+0xa0a1d482>
1c008894:	6ae12423          	sw	a4,1704(sp)
1c008898:	92977737          	lui	a4,0x92977
1c00889c:	64070713          	addi	a4,a4,1600 # 92977640 <__l2_shared_end+0x76967640>
1c0088a0:	6ae12623          	sw	a4,1708(sp)
1c0088a4:	18f92737          	lui	a4,0x18f92
1c0088a8:	c4b70713          	addi	a4,a4,-949 # 18f91c4b <__CTOR_LIST__-0x306e3b9>
1c0088ac:	6ae12823          	sw	a4,1712(sp)
1c0088b0:	a4d38737          	lui	a4,0xa4d38
1c0088b4:	3ba70713          	addi	a4,a4,954 # a4d383ba <__l2_shared_end+0x88d283ba>
1c0088b8:	6ae12a23          	sw	a4,1716(sp)
1c0088bc:	6425d737          	lui	a4,0x6425d
1c0088c0:	8fd70713          	addi	a4,a4,-1795 # 6425c8fd <__l2_shared_end+0x4824c8fd>
1c0088c4:	6ae12c23          	sw	a4,1720(sp)
1c0088c8:	04d96737          	lui	a4,0x4d96
1c0088cc:	bc970713          	addi	a4,a4,-1079 # 4d95bc9 <__CTOR_LIST__-0x1726a43b>
1c0088d0:	6ae12e23          	sw	a4,1724(sp)
1c0088d4:	1ee9f737          	lui	a4,0x1ee9f
1c0088d8:	ebd70713          	addi	a4,a4,-323 # 1ee9eebd <__l2_shared_end+0x2e8eebd>
1c0088dc:	6ce12023          	sw	a4,1728(sp)
1c0088e0:	6bb3d737          	lui	a4,0x6bb3d
1c0088e4:	cd670713          	addi	a4,a4,-810 # 6bb3ccd6 <__l2_shared_end+0x4fb2ccd6>
1c0088e8:	6ce12223          	sw	a4,1732(sp)
1c0088ec:	5ca09737          	lui	a4,0x5ca09
1c0088f0:	8aa70713          	addi	a4,a4,-1878 # 5ca088aa <__l2_shared_end+0x409f88aa>
1c0088f4:	6ce12423          	sw	a4,1736(sp)
1c0088f8:	01297737          	lui	a4,0x1297
1c0088fc:	18070713          	addi	a4,a4,384 # 1297180 <__CTOR_LIST__-0x1ad68e84>
1c008900:	6ce12623          	sw	a4,1740(sp)
1c008904:	ee0a3737          	lui	a4,0xee0a3
1c008908:	8bf70713          	addi	a4,a4,-1857 # ee0a28bf <__l2_shared_end+0xd20928bf>
1c00890c:	6ce12823          	sw	a4,1744(sp)
1c008910:	20ec4737          	lui	a4,0x20ec4
1c008914:	86570713          	addi	a4,a4,-1947 # 20ec3865 <__l2_shared_end+0x4eb3865>
1c008918:	6ce12a23          	sw	a4,1748(sp)
1c00891c:	4ea8c737          	lui	a4,0x4ea8c
1c008920:	27870713          	addi	a4,a4,632 # 4ea8c278 <__l2_shared_end+0x32a7c278>
1c008924:	6ce12c23          	sw	a4,1752(sp)
1c008928:	c12f8737          	lui	a4,0xc12f8
1c00892c:	6e570713          	addi	a4,a4,1765 # c12f86e5 <__l2_shared_end+0xa52e86e5>
1c008930:	6ce12e23          	sw	a4,1756(sp)
1c008934:	e992d737          	lui	a4,0xe992d
1c008938:	d3770713          	addi	a4,a4,-713 # e992cd37 <__l2_shared_end+0xcd91cd37>
1c00893c:	6ee12023          	sw	a4,1760(sp)
1c008940:	9fd67737          	lui	a4,0x9fd67
1c008944:	87970713          	addi	a4,a4,-1927 # 9fd66879 <__l2_shared_end+0x83d56879>
1c008948:	6ee12223          	sw	a4,1764(sp)
1c00894c:	1e3a4737          	lui	a4,0x1e3a4
1c008950:	5c370713          	addi	a4,a4,1475 # 1e3a45c3 <__l2_shared_end+0x23945c3>
1c008954:	6ee12423          	sw	a4,1768(sp)
1c008958:	c561b737          	lui	a4,0xc561b
1c00895c:	11c70713          	addi	a4,a4,284 # c561b11c <__l2_shared_end+0xa960b11c>
1c008960:	6ee12623          	sw	a4,1772(sp)
1c008964:	7324a737          	lui	a4,0x7324a
1c008968:	f0c70713          	addi	a4,a4,-244 # 73249f0c <__l2_shared_end+0x57239f0c>
1c00896c:	6ee12823          	sw	a4,1776(sp)
1c008970:	3790d737          	lui	a4,0x3790d
1c008974:	0a070713          	addi	a4,a4,160 # 3790d0a0 <__l2_shared_end+0x1b8fd0a0>
1c008978:	6ee12a23          	sw	a4,1780(sp)
1c00897c:	faa09737          	lui	a4,0xfaa09
1c008980:	8b170713          	addi	a4,a4,-1871 # faa088b1 <__l2_shared_end+0xde9f88b1>
1c008984:	6ee12c23          	sw	a4,1784(sp)
1c008988:	44c3f737          	lui	a4,0x44c3f
1c00898c:	f0170713          	addi	a4,a4,-255 # 44c3ef01 <__l2_shared_end+0x28c2ef01>
1c008990:	6ee12e23          	sw	a4,1788(sp)
1c008994:	e88fb737          	lui	a4,0xe88fb
1c008998:	cc270713          	addi	a4,a4,-830 # e88facc2 <__l2_shared_end+0xcc8eacc2>
1c00899c:	70e12023          	sw	a4,1792(sp)
1c0089a0:	580a3737          	lui	a4,0x580a3
1c0089a4:	b5970713          	addi	a4,a4,-1191 # 580a2b59 <__l2_shared_end+0x3c092b59>
1c0089a8:	70e12223          	sw	a4,1796(sp)
1c0089ac:	a9626737          	lui	a4,0xa9626
1c0089b0:	64570713          	addi	a4,a4,1605 # a9626645 <__l2_shared_end+0x8d616645>
1c0089b4:	70e12423          	sw	a4,1800(sp)
1c0089b8:	9a653737          	lui	a4,0x9a653
1c0089bc:	35070713          	addi	a4,a4,848 # 9a653350 <__l2_shared_end+0x7e643350>
1c0089c0:	70e12623          	sw	a4,1804(sp)
1c0089c4:	902d9737          	lui	a4,0x902d9
1c0089c8:	a1570713          	addi	a4,a4,-1515 # 902d8a15 <__l2_shared_end+0x742c8a15>
1c0089cc:	70e12823          	sw	a4,1808(sp)
1c0089d0:	250ce737          	lui	a4,0x250ce
1c0089d4:	5a670713          	addi	a4,a4,1446 # 250ce5a6 <__l2_shared_end+0x90be5a6>
1c0089d8:	70e12a23          	sw	a4,1812(sp)
1c0089dc:	57978737          	lui	a4,0x57978
1c0089e0:	73a70713          	addi	a4,a4,1850 # 5797873a <__l2_shared_end+0x3b96873a>
1c0089e4:	70e12c23          	sw	a4,1816(sp)
1c0089e8:	c429d737          	lui	a4,0xc429d
1c0089ec:	e8570713          	addi	a4,a4,-379 # c429ce85 <__l2_shared_end+0xa828ce85>
1c0089f0:	70e12e23          	sw	a4,1820(sp)
1c0089f4:	a1000737          	lui	a4,0xa1000
1c0089f8:	05770713          	addi	a4,a4,87 # a1000057 <__l2_shared_end+0x84ff0057>
1c0089fc:	72e12023          	sw	a4,1824(sp)
1c008a00:	b2b3d737          	lui	a4,0xb2b3d
1c008a04:	45470713          	addi	a4,a4,1108 # b2b3d454 <__l2_shared_end+0x96b2d454>
1c008a08:	72e12223          	sw	a4,1828(sp)
1c008a0c:	5c204737          	lui	a4,0x5c204
1c008a10:	2c670713          	addi	a4,a4,710 # 5c2042c6 <__l2_shared_end+0x401f42c6>
1c008a14:	72e12423          	sw	a4,1832(sp)
1c008a18:	acf98737          	lui	a4,0xacf98
1c008a1c:	c8c70713          	addi	a4,a4,-884 # acf97c8c <__l2_shared_end+0x90f87c8c>
1c008a20:	72e12623          	sw	a4,1836(sp)
1c008a24:	fb711737          	lui	a4,0xfb711
1c008a28:	06b70713          	addi	a4,a4,107 # fb71106b <__l2_shared_end+0xdf70106b>
1c008a2c:	72e12823          	sw	a4,1840(sp)
1c008a30:	95ab7737          	lui	a4,0x95ab7
1c008a34:	8b370713          	addi	a4,a4,-1869 # 95ab68b3 <__l2_shared_end+0x79aa68b3>
1c008a38:	72e12a23          	sw	a4,1844(sp)
1c008a3c:	884b7737          	lui	a4,0x884b7
1c008a40:	40a70713          	addi	a4,a4,1034 # 884b740a <__l2_shared_end+0x6c4a740a>
1c008a44:	72e12c23          	sw	a4,1848(sp)
1c008a48:	24a56737          	lui	a4,0x24a56
1c008a4c:	bc970713          	addi	a4,a4,-1079 # 24a55bc9 <__l2_shared_end+0x8a45bc9>
1c008a50:	72e12e23          	sw	a4,1852(sp)
1c008a54:	11831737          	lui	a4,0x11831
1c008a58:	73070713          	addi	a4,a4,1840 # 11831730 <__CTOR_LIST__-0xa7ce8d4>
1c008a5c:	74e12023          	sw	a4,1856(sp)
1c008a60:	8304b737          	lui	a4,0x8304b
1c008a64:	92070713          	addi	a4,a4,-1760 # 8304a920 <__l2_shared_end+0x6703a920>
1c008a68:	74e12223          	sw	a4,1860(sp)
1c008a6c:	7775                	lui	a4,0xffffd
1c008a6e:	23870713          	addi	a4,a4,568 # ffffd238 <__l2_shared_end+0xe3fed238>
1c008a72:	74e11423          	sh	a4,1864(sp)
1c008a76:	f9800713          	li	a4,-104
1c008a7a:	74e10523          	sb	a4,1866(sp)
1c008a7e:	04700713          	li	a4,71
1c008a82:	74e105a3          	sb	a4,1867(sp)
1c008a86:	a9121737          	lui	a4,0xa9121
1c008a8a:	d8370713          	addi	a4,a4,-637 # a9120d83 <__l2_shared_end+0x8d110d83>
1c008a8e:	74e12623          	sw	a4,1868(sp)
1c008a92:	bd9aa737          	lui	a4,0xbd9aa
1c008a96:	03370713          	addi	a4,a4,51 # bd9aa033 <__l2_shared_end+0xa199a033>
1c008a9a:	74e12823          	sw	a4,1872(sp)
1c008a9e:	826ba737          	lui	a4,0x826ba
1c008aa2:	42170713          	addi	a4,a4,1057 # 826ba421 <__l2_shared_end+0x666aa421>
1c008aa6:	74e12a23          	sw	a4,1876(sp)
1c008aaa:	804eb737          	lui	a4,0x804eb
1c008aae:	18c70713          	addi	a4,a4,396 # 804eb18c <__l2_shared_end+0x644db18c>
1c008ab2:	74e12c23          	sw	a4,1880(sp)
1c008ab6:	2951d737          	lui	a4,0x2951d
1c008aba:	38c70713          	addi	a4,a4,908 # 2951d38c <__l2_shared_end+0xd50d38c>
1c008abe:	74e12e23          	sw	a4,1884(sp)
1c008ac2:	5b6ee737          	lui	a4,0x5b6ee
1c008ac6:	cc970713          	addi	a4,a4,-823 # 5b6edcc9 <__l2_shared_end+0x3f6ddcc9>
1c008aca:	76e12023          	sw	a4,1888(sp)
1c008ace:	124a2737          	lui	a4,0x124a2
1c008ad2:	d9370713          	addi	a4,a4,-621 # 124a1d93 <__CTOR_LIST__-0x9b5e271>
1c008ad6:	76e12223          	sw	a4,1892(sp)
1c008ada:	79e0f737          	lui	a4,0x79e0f
1c008ade:	f6f70713          	addi	a4,a4,-145 # 79e0ef6f <__l2_shared_end+0x5ddfef6f>
1c008ae2:	76e12423          	sw	a4,1896(sp)
1c008ae6:	2b8e6737          	lui	a4,0x2b8e6
1c008aea:	10970713          	addi	a4,a4,265 # 2b8e6109 <__l2_shared_end+0xf8d6109>
1c008aee:	76e12623          	sw	a4,1900(sp)
1c008af2:	b6e78737          	lui	a4,0xb6e78
1c008af6:	64570713          	addi	a4,a4,1605 # b6e78645 <__l2_shared_end+0x9ae68645>
1c008afa:	76e12823          	sw	a4,1904(sp)
1c008afe:	3b962737          	lui	a4,0x3b962
1c008b02:	4b470713          	addi	a4,a4,1204 # 3b9624b4 <__l2_shared_end+0x1f9524b4>
1c008b06:	76e12a23          	sw	a4,1908(sp)
1c008b0a:	50ba2737          	lui	a4,0x50ba2
1c008b0e:	37370713          	addi	a4,a4,883 # 50ba2373 <__l2_shared_end+0x34b92373>
1c008b12:	76e12c23          	sw	a4,1912(sp)
1c008b16:	bb12a737          	lui	a4,0xbb12a
1c008b1a:	15b70713          	addi	a4,a4,347 # bb12a15b <__l2_shared_end+0x9f11a15b>
1c008b1e:	76e12e23          	sw	a4,1916(sp)
1c008b22:	7d4a8737          	lui	a4,0x7d4a8
1c008b26:	39b70713          	addi	a4,a4,923 # 7d4a839b <__l2_shared_end+0x6149839b>
1c008b2a:	78e12023          	sw	a4,1920(sp)
1c008b2e:	0dad8737          	lui	a4,0xdad8
1c008b32:	81b70713          	addi	a4,a4,-2021 # dad781b <__CTOR_LIST__-0xe5287e9>
1c008b36:	78e12223          	sw	a4,1924(sp)
1c008b3a:	6a554737          	lui	a4,0x6a554
1c008b3e:	df570713          	addi	a4,a4,-523 # 6a553df5 <__l2_shared_end+0x4e543df5>
1c008b42:	78e12423          	sw	a4,1928(sp)
1c008b46:	9f367737          	lui	a4,0x9f367
1c008b4a:	91c70713          	addi	a4,a4,-1764 # 9f36691c <__l2_shared_end+0x8335691c>
1c008b4e:	78e12623          	sw	a4,1932(sp)
1c008b52:	1d8b1737          	lui	a4,0x1d8b1
1c008b56:	40970713          	addi	a4,a4,1033 # 1d8b1409 <__l2_shared_end+0x18a1409>
1c008b5a:	78e12823          	sw	a4,1936(sp)
1c008b5e:	f58d9737          	lui	a4,0xf58d9
1c008b62:	3c970713          	addi	a4,a4,969 # f58d93c9 <__l2_shared_end+0xd98c93c9>
1c008b66:	78e12a23          	sw	a4,1940(sp)
1c008b6a:	87f02737          	lui	a4,0x87f02
1c008b6e:	39270713          	addi	a4,a4,914 # 87f02392 <__l2_shared_end+0x6bef2392>
1c008b72:	78e12c23          	sw	a4,1944(sp)
1c008b76:	be337737          	lui	a4,0xbe337
1c008b7a:	8fd70713          	addi	a4,a4,-1795 # be3368fd <__l2_shared_end+0xa23268fd>
1c008b7e:	78e12e23          	sw	a4,1948(sp)
1c008b82:	65c23737          	lui	a4,0x65c23
1c008b86:	b5b70713          	addi	a4,a4,-1189 # 65c22b5b <__l2_shared_end+0x49c12b5b>
1c008b8a:	7ae12023          	sw	a4,1952(sp)
1c008b8e:	1189e737          	lui	a4,0x1189e
1c008b92:	51f70713          	addi	a4,a4,1311 # 1189e51f <__CTOR_LIST__-0xa761ae5>
1c008b96:	7ae12223          	sw	a4,1956(sp)
1c008b9a:	7f460737          	lui	a4,0x7f460
1c008b9e:	1ac70713          	addi	a4,a4,428 # 7f4601ac <__l2_shared_end+0x634501ac>
1c008ba2:	7ae12423          	sw	a4,1960(sp)
1c008ba6:	dcdf9737          	lui	a4,0xdcdf9
1c008baa:	79270713          	addi	a4,a4,1938 # dcdf9792 <__l2_shared_end+0xc0de9792>
1c008bae:	7ae12623          	sw	a4,1964(sp)
1c008bb2:	0f1ab737          	lui	a4,0xf1ab
1c008bb6:	42270713          	addi	a4,a4,1058 # f1ab422 <__CTOR_LIST__-0xce54be2>
1c008bba:	7ae12823          	sw	a4,1968(sp)
1c008bbe:	87710737          	lui	a4,0x87710
1c008bc2:	21770713          	addi	a4,a4,535 # 87710217 <__l2_shared_end+0x6b700217>
1c008bc6:	7ae12a23          	sw	a4,1972(sp)
1c008bca:	f38cb737          	lui	a4,0xf38cb
1c008bce:	71070713          	addi	a4,a4,1808 # f38cb710 <__l2_shared_end+0xd78bb710>
1c008bd2:	7ae12c23          	sw	a4,1976(sp)
1c008bd6:	81652737          	lui	a4,0x81652
1c008bda:	85b70713          	addi	a4,a4,-1957 # 8165185b <__l2_shared_end+0x6564185b>
1c008bde:	7ae12e23          	sw	a4,1980(sp)
1c008be2:	456d9737          	lui	a4,0x456d9
1c008be6:	93a70713          	addi	a4,a4,-1734 # 456d893a <__l2_shared_end+0x296c893a>
1c008bea:	7ce12023          	sw	a4,1984(sp)
1c008bee:	81335737          	lui	a4,0x81335
1c008bf2:	d2170713          	addi	a4,a4,-735 # 81334d21 <__l2_shared_end+0x65324d21>
1c008bf6:	7ce12223          	sw	a4,1988(sp)
1c008bfa:	43c0b737          	lui	a4,0x43c0b
1c008bfe:	65570713          	addi	a4,a4,1621 # 43c0b655 <__l2_shared_end+0x27bfb655>
1c008c02:	7ce12423          	sw	a4,1992(sp)
1c008c06:	0c333737          	lui	a4,0xc333
1c008c0a:	2c570713          	addi	a4,a4,709 # c3332c5 <__CTOR_LIST__-0xfcccd3f>
1c008c0e:	7ce12623          	sw	a4,1996(sp)
1c008c12:	07523737          	lui	a4,0x7523
1c008c16:	d0070713          	addi	a4,a4,-768 # 7522d00 <__CTOR_LIST__-0x14add304>
1c008c1a:	7ce12823          	sw	a4,2000(sp)
1c008c1e:	507a4737          	lui	a4,0x507a4
1c008c22:	63970713          	addi	a4,a4,1593 # 507a4639 <__l2_shared_end+0x34794639>
1c008c26:	7ce12a23          	sw	a4,2004(sp)
1c008c2a:	37668737          	lui	a4,0x37668
1c008c2e:	64a70713          	addi	a4,a4,1610 # 3766864a <__l2_shared_end+0x1b65864a>
1c008c32:	7ce12c23          	sw	a4,2008(sp)
1c008c36:	c8513737          	lui	a4,0xc8513
1c008c3a:	4fb70713          	addi	a4,a4,1275 # c85134fb <__l2_shared_end+0xac5034fb>
1c008c3e:	7ce12e23          	sw	a4,2012(sp)
1c008c42:	3ef90737          	lui	a4,0x3ef90
1c008c46:	84970713          	addi	a4,a4,-1975 # 3ef8f849 <__l2_shared_end+0x22f7f849>
1c008c4a:	7ee12023          	sw	a4,2016(sp)
1c008c4e:	7f149737          	lui	a4,0x7f149
1c008c52:	46a70713          	addi	a4,a4,1130 # 7f14946a <__l2_shared_end+0x6313946a>
1c008c56:	7ee12223          	sw	a4,2020(sp)
1c008c5a:	3aa59737          	lui	a4,0x3aa59
1c008c5e:	d1670713          	addi	a4,a4,-746 # 3aa58d16 <__l2_shared_end+0x1ea48d16>
1c008c62:	7ee12423          	sw	a4,2024(sp)
1c008c66:	afd90737          	lui	a4,0xafd90
1c008c6a:	9cd70713          	addi	a4,a4,-1587 # afd8f9cd <__l2_shared_end+0x93d7f9cd>
1c008c6e:	7ee12623          	sw	a4,2028(sp)
1c008c72:	848a9737          	lui	a4,0x848a9
1c008c76:	6fd70713          	addi	a4,a4,1789 # 848a96fd <__l2_shared_end+0x688996fd>
1c008c7a:	7ee12823          	sw	a4,2032(sp)
1c008c7e:	bc9a5737          	lui	a4,0xbc9a5
1c008c82:	a1270713          	addi	a4,a4,-1518 # bc9a4a12 <__l2_shared_end+0xa0994a12>
1c008c86:	7ee12a23          	sw	a4,2036(sp)
1c008c8a:	0c96b737          	lui	a4,0xc96b
1c008c8e:	f0970713          	addi	a4,a4,-247 # c96af09 <__CTOR_LIST__-0xf6950fb>
1c008c92:	7ee12c23          	sw	a4,2040(sp)
1c008c96:	239fb737          	lui	a4,0x239fb
1c008c9a:	6685                	lui	a3,0x1
1c008c9c:	2d370713          	addi	a4,a4,723 # 239fb2d3 <__l2_shared_end+0x79eb2d3>
1c008ca0:	7ee12e23          	sw	a4,2044(sp)
1c008ca4:	80068613          	addi	a2,a3,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c008ca8:	b41b8737          	lui	a4,0xb41b8
1c008cac:	960a                	add	a2,a2,sp
1c008cae:	34470713          	addi	a4,a4,836 # b41b8344 <__l2_shared_end+0x981a8344>
1c008cb2:	c218                	sw	a4,0(a2)
1c008cb4:	80468613          	addi	a2,a3,-2044
1c008cb8:	5e606737          	lui	a4,0x5e606
1c008cbc:	960a                	add	a2,a2,sp
1c008cbe:	71e70713          	addi	a4,a4,1822 # 5e60671e <__l2_shared_end+0x425f671e>
1c008cc2:	c218                	sw	a4,0(a2)
1c008cc4:	80868613          	addi	a2,a3,-2040
1c008cc8:	f20df737          	lui	a4,0xf20df
1c008ccc:	960a                	add	a2,a2,sp
1c008cce:	0eb70713          	addi	a4,a4,235 # f20df0eb <__l2_shared_end+0xd60cf0eb>
1c008cd2:	c218                	sw	a4,0(a2)
1c008cd4:	80c68613          	addi	a2,a3,-2036
1c008cd8:	17718737          	lui	a4,0x17718
1c008cdc:	960a                	add	a2,a2,sp
1c008cde:	50270713          	addi	a4,a4,1282 # 17718502 <__CTOR_LIST__-0x48e7b02>
1c008ce2:	c218                	sw	a4,0(a2)
1c008ce4:	81068613          	addi	a2,a3,-2032
1c008ce8:	48d7a737          	lui	a4,0x48d7a
1c008cec:	960a                	add	a2,a2,sp
1c008cee:	d3970713          	addi	a4,a4,-711 # 48d79d39 <__l2_shared_end+0x2cd69d39>
1c008cf2:	c218                	sw	a4,0(a2)
1c008cf4:	81468613          	addi	a2,a3,-2028
1c008cf8:	ed4a5737          	lui	a4,0xed4a5
1c008cfc:	960a                	add	a2,a2,sp
1c008cfe:	1b670713          	addi	a4,a4,438 # ed4a51b6 <__l2_shared_end+0xd14951b6>
1c008d02:	c218                	sw	a4,0(a2)
1c008d04:	81868613          	addi	a2,a3,-2024
1c008d08:	6c2fc737          	lui	a4,0x6c2fc
1c008d0c:	960a                	add	a2,a2,sp
1c008d0e:	b6170713          	addi	a4,a4,-1183 # 6c2fbb61 <__l2_shared_end+0x502ebb61>
1c008d12:	c218                	sw	a4,0(a2)
1c008d14:	81c68613          	addi	a2,a3,-2020
1c008d18:	68d14737          	lui	a4,0x68d14
1c008d1c:	960a                	add	a2,a2,sp
1c008d1e:	1b870713          	addi	a4,a4,440 # 68d141b8 <__l2_shared_end+0x4cd041b8>
1c008d22:	c218                	sw	a4,0(a2)
1c008d24:	82068613          	addi	a2,a3,-2016
1c008d28:	205ef737          	lui	a4,0x205ef
1c008d2c:	960a                	add	a2,a2,sp
1c008d2e:	3d570713          	addi	a4,a4,981 # 205ef3d5 <__l2_shared_end+0x45df3d5>
1c008d32:	c218                	sw	a4,0(a2)
1c008d34:	82468613          	addi	a2,a3,-2012
1c008d38:	a3734737          	lui	a4,0xa3734
1c008d3c:	960a                	add	a2,a2,sp
1c008d3e:	50570713          	addi	a4,a4,1285 # a3734505 <__l2_shared_end+0x87724505>
1c008d42:	c218                	sw	a4,0(a2)
1c008d44:	82868613          	addi	a2,a3,-2008
1c008d48:	8248d737          	lui	a4,0x8248d
1c008d4c:	960a                	add	a2,a2,sp
1c008d4e:	d3170713          	addi	a4,a4,-719 # 8248cd31 <__l2_shared_end+0x6647cd31>
1c008d52:	c218                	sw	a4,0(a2)
1c008d54:	82c68613          	addi	a2,a3,-2004
1c008d58:	2c075737          	lui	a4,0x2c075
1c008d5c:	960a                	add	a2,a2,sp
1c008d5e:	ba070713          	addi	a4,a4,-1120 # 2c074ba0 <__l2_shared_end+0x10064ba0>
1c008d62:	c218                	sw	a4,0(a2)
1c008d64:	83068613          	addi	a2,a3,-2000
1c008d68:	82589737          	lui	a4,0x82589
1c008d6c:	960a                	add	a2,a2,sp
1c008d6e:	11770713          	addi	a4,a4,279 # 82589117 <__l2_shared_end+0x66579117>
1c008d72:	c218                	sw	a4,0(a2)
1c008d74:	83468613          	addi	a2,a3,-1996
1c008d78:	1247d737          	lui	a4,0x1247d
1c008d7c:	960a                	add	a2,a2,sp
1c008d7e:	f5b70713          	addi	a4,a4,-165 # 1247cf5b <__CTOR_LIST__-0x9b830a9>
1c008d82:	c218                	sw	a4,0(a2)
1c008d84:	83868613          	addi	a2,a3,-1992
1c008d88:	cc0de737          	lui	a4,0xcc0de
1c008d8c:	960a                	add	a2,a2,sp
1c008d8e:	a6670713          	addi	a4,a4,-1434 # cc0dda66 <__l2_shared_end+0xb00cda66>
1c008d92:	c218                	sw	a4,0(a2)
1c008d94:	83c68613          	addi	a2,a3,-1988
1c008d98:	21a0b737          	lui	a4,0x21a0b
1c008d9c:	960a                	add	a2,a2,sp
1c008d9e:	1ea70713          	addi	a4,a4,490 # 21a0b1ea <__l2_shared_end+0x59fb1ea>
1c008da2:	c218                	sw	a4,0(a2)
1c008da4:	8736                	mv	a4,a3
1c008da6:	84068693          	addi	a3,a3,-1984
1c008daa:	968a                	add	a3,a3,sp
1c008dac:	2c778793          	addi	a5,a5,711
1c008db0:	00f69023          	sh	a5,0(a3)
1c008db4:	84270693          	addi	a3,a4,-1982
1c008db8:	968a                	add	a3,a3,sp
1c008dba:	05400793          	li	a5,84
1c008dbe:	00f68023          	sb	a5,0(a3)
1c008dc2:	84370693          	addi	a3,a4,-1981
1c008dc6:	968a                	add	a3,a3,sp
1c008dc8:	07500793          	li	a5,117
1c008dcc:	00f68023          	sb	a5,0(a3)
1c008dd0:	84470693          	addi	a3,a4,-1980
1c008dd4:	1c1667b7          	lui	a5,0x1c166
1c008dd8:	968a                	add	a3,a3,sp
1c008dda:	a1d78793          	addi	a5,a5,-1507 # 1c165a1d <__l2_shared_end+0x155a1d>
1c008dde:	c29c                	sw	a5,0(a3)
1c008de0:	84870693          	addi	a3,a4,-1976
1c008de4:	2c0697b7          	lui	a5,0x2c069
1c008de8:	968a                	add	a3,a3,sp
1c008dea:	21a78793          	addi	a5,a5,538 # 2c06921a <__l2_shared_end+0x1005921a>
1c008dee:	c29c                	sw	a5,0(a3)
1c008df0:	84c70693          	addi	a3,a4,-1972
1c008df4:	7a2117b7          	lui	a5,0x7a211
1c008df8:	968a                	add	a3,a3,sp
1c008dfa:	a2278793          	addi	a5,a5,-1502 # 7a210a22 <__l2_shared_end+0x5e200a22>
1c008dfe:	c29c                	sw	a5,0(a3)
1c008e00:	85070693          	addi	a3,a4,-1968
1c008e04:	3382e7b7          	lui	a5,0x3382e
1c008e08:	968a                	add	a3,a3,sp
1c008e0a:	96978793          	addi	a5,a5,-1687 # 3382d969 <__l2_shared_end+0x1781d969>
1c008e0e:	c29c                	sw	a5,0(a3)
1c008e10:	85470693          	addi	a3,a4,-1964
1c008e14:	99deb7b7          	lui	a5,0x99deb
1c008e18:	968a                	add	a3,a3,sp
1c008e1a:	41478793          	addi	a5,a5,1044 # 99deb414 <__l2_shared_end+0x7dddb414>
1c008e1e:	c29c                	sw	a5,0(a3)
1c008e20:	85870693          	addi	a3,a4,-1960
1c008e24:	5fd4f7b7          	lui	a5,0x5fd4f
1c008e28:	968a                	add	a3,a3,sp
1c008e2a:	86f78793          	addi	a5,a5,-1937 # 5fd4e86f <__l2_shared_end+0x43d3e86f>
1c008e2e:	c29c                	sw	a5,0(a3)
1c008e30:	85c70693          	addi	a3,a4,-1956
1c008e34:	16afb7b7          	lui	a5,0x16afb
1c008e38:	968a                	add	a3,a3,sp
1c008e3a:	56d78793          	addi	a5,a5,1389 # 16afb56d <__CTOR_LIST__-0x5504a97>
1c008e3e:	c29c                	sw	a5,0(a3)
1c008e40:	86070693          	addi	a3,a4,-1952
1c008e44:	951457b7          	lui	a5,0x95145
1c008e48:	968a                	add	a3,a3,sp
1c008e4a:	6c178793          	addi	a5,a5,1729 # 951456c1 <__l2_shared_end+0x791356c1>
1c008e4e:	c29c                	sw	a5,0(a3)
1c008e50:	86470693          	addi	a3,a4,-1948
1c008e54:	9030c7b7          	lui	a5,0x9030c
1c008e58:	968a                	add	a3,a3,sp
1c008e5a:	4a478793          	addi	a5,a5,1188 # 9030c4a4 <__l2_shared_end+0x742fc4a4>
1c008e5e:	c29c                	sw	a5,0(a3)
1c008e60:	86870693          	addi	a3,a4,-1944
1c008e64:	944c47b7          	lui	a5,0x944c4
1c008e68:	968a                	add	a3,a3,sp
1c008e6a:	9bc78793          	addi	a5,a5,-1604 # 944c39bc <__l2_shared_end+0x784b39bc>
1c008e6e:	c29c                	sw	a5,0(a3)
1c008e70:	86c70693          	addi	a3,a4,-1940
1c008e74:	73ecb7b7          	lui	a5,0x73ecb
1c008e78:	968a                	add	a3,a3,sp
1c008e7a:	0e178793          	addi	a5,a5,225 # 73ecb0e1 <__l2_shared_end+0x57ebb0e1>
1c008e7e:	c29c                	sw	a5,0(a3)
1c008e80:	87070693          	addi	a3,a4,-1936
1c008e84:	6762b7b7          	lui	a5,0x6762b
1c008e88:	968a                	add	a3,a3,sp
1c008e8a:	58e78793          	addi	a5,a5,1422 # 6762b58e <__l2_shared_end+0x4b61b58e>
1c008e8e:	c29c                	sw	a5,0(a3)
1c008e90:	87470693          	addi	a3,a4,-1932
1c008e94:	cd2e27b7          	lui	a5,0xcd2e2
1c008e98:	968a                	add	a3,a3,sp
1c008e9a:	c2078793          	addi	a5,a5,-992 # cd2e1c20 <__l2_shared_end+0xb12d1c20>
1c008e9e:	c29c                	sw	a5,0(a3)
1c008ea0:	87870693          	addi	a3,a4,-1928
1c008ea4:	934987b7          	lui	a5,0x93498
1c008ea8:	968a                	add	a3,a3,sp
1c008eaa:	b1c78793          	addi	a5,a5,-1252 # 93497b1c <__l2_shared_end+0x77487b1c>
1c008eae:	c29c                	sw	a5,0(a3)
1c008eb0:	87c70693          	addi	a3,a4,-1924
1c008eb4:	28c0f7b7          	lui	a5,0x28c0f
1c008eb8:	968a                	add	a3,a3,sp
1c008eba:	fc078793          	addi	a5,a5,-64 # 28c0efc0 <__l2_shared_end+0xcbfefc0>
1c008ebe:	c29c                	sw	a5,0(a3)
1c008ec0:	88070693          	addi	a3,a4,-1920
1c008ec4:	099ae7b7          	lui	a5,0x99ae
1c008ec8:	968a                	add	a3,a3,sp
1c008eca:	c4b78793          	addi	a5,a5,-949 # 99adc4b <__CTOR_LIST__-0x126523b9>
1c008ece:	c29c                	sw	a5,0(a3)
1c008ed0:	88470693          	addi	a3,a4,-1916
1c008ed4:	954f37b7          	lui	a5,0x954f3
1c008ed8:	968a                	add	a3,a3,sp
1c008eda:	91c78793          	addi	a5,a5,-1764 # 954f291c <__l2_shared_end+0x794e291c>
1c008ede:	c29c                	sw	a5,0(a3)
1c008ee0:	88870693          	addi	a3,a4,-1912
1c008ee4:	787147b7          	lui	a5,0x78714
1c008ee8:	968a                	add	a3,a3,sp
1c008eea:	a7078793          	addi	a5,a5,-1424 # 78713a70 <__l2_shared_end+0x5c703a70>
1c008eee:	c29c                	sw	a5,0(a3)
1c008ef0:	88c70693          	addi	a3,a4,-1908
1c008ef4:	958a37b7          	lui	a5,0x958a3
1c008ef8:	968a                	add	a3,a3,sp
1c008efa:	c8278793          	addi	a5,a5,-894 # 958a2c82 <__l2_shared_end+0x79892c82>
1c008efe:	c29c                	sw	a5,0(a3)
1c008f00:	89070693          	addi	a3,a4,-1904
1c008f04:	451ea7b7          	lui	a5,0x451ea
1c008f08:	968a                	add	a3,a3,sp
1c008f0a:	bb778793          	addi	a5,a5,-1097 # 451e9bb7 <__l2_shared_end+0x291d9bb7>
1c008f0e:	c29c                	sw	a5,0(a3)
1c008f10:	89470693          	addi	a3,a4,-1900
1c008f14:	8d99e7b7          	lui	a5,0x8d99e
1c008f18:	968a                	add	a3,a3,sp
1c008f1a:	09178793          	addi	a5,a5,145 # 8d99e091 <__l2_shared_end+0x7198e091>
1c008f1e:	c29c                	sw	a5,0(a3)
1c008f20:	89870693          	addi	a3,a4,-1896
1c008f24:	c17547b7          	lui	a5,0xc1754
1c008f28:	968a                	add	a3,a3,sp
1c008f2a:	88978793          	addi	a5,a5,-1911 # c1753889 <__l2_shared_end+0xa5743889>
1c008f2e:	c29c                	sw	a5,0(a3)
1c008f30:	89c70693          	addi	a3,a4,-1892
1c008f34:	8ac087b7          	lui	a5,0x8ac08
1c008f38:	968a                	add	a3,a3,sp
1c008f3a:	9a878793          	addi	a5,a5,-1624 # 8ac079a8 <__l2_shared_end+0x6ebf79a8>
1c008f3e:	c29c                	sw	a5,0(a3)
1c008f40:	8a070693          	addi	a3,a4,-1888
1c008f44:	7dc647b7          	lui	a5,0x7dc64
1c008f48:	968a                	add	a3,a3,sp
1c008f4a:	c0778793          	addi	a5,a5,-1017 # 7dc63c07 <__l2_shared_end+0x61c53c07>
1c008f4e:	c29c                	sw	a5,0(a3)
1c008f50:	8a470693          	addi	a3,a4,-1884
1c008f54:	a7bb27b7          	lui	a5,0xa7bb2
1c008f58:	968a                	add	a3,a3,sp
1c008f5a:	6f478793          	addi	a5,a5,1780 # a7bb26f4 <__l2_shared_end+0x8bba26f4>
1c008f5e:	c29c                	sw	a5,0(a3)
1c008f60:	8a870693          	addi	a3,a4,-1880
1c008f64:	e68ac7b7          	lui	a5,0xe68ac
1c008f68:	968a                	add	a3,a3,sp
1c008f6a:	19278793          	addi	a5,a5,402 # e68ac192 <__l2_shared_end+0xca89c192>
1c008f6e:	c29c                	sw	a5,0(a3)
1c008f70:	8ac70693          	addi	a3,a4,-1876
1c008f74:	87bb07b7          	lui	a5,0x87bb0
1c008f78:	968a                	add	a3,a3,sp
1c008f7a:	ec178793          	addi	a5,a5,-319 # 87bafec1 <__l2_shared_end+0x6bb9fec1>
1c008f7e:	c29c                	sw	a5,0(a3)
1c008f80:	8b070693          	addi	a3,a4,-1872
1c008f84:	8154f7b7          	lui	a5,0x8154f
1c008f88:	968a                	add	a3,a3,sp
1c008f8a:	c9b78793          	addi	a5,a5,-869 # 8154ec9b <__l2_shared_end+0x6553ec9b>
1c008f8e:	c29c                	sw	a5,0(a3)
1c008f90:	8b470693          	addi	a3,a4,-1868
1c008f94:	a0ff37b7          	lui	a5,0xa0ff3
1c008f98:	968a                	add	a3,a3,sp
1c008f9a:	a2c78793          	addi	a5,a5,-1492 # a0ff2a2c <__l2_shared_end+0x84fe2a2c>
1c008f9e:	c29c                	sw	a5,0(a3)
1c008fa0:	8b870693          	addi	a3,a4,-1864
1c008fa4:	703b97b7          	lui	a5,0x703b9
1c008fa8:	968a                	add	a3,a3,sp
1c008faa:	71278793          	addi	a5,a5,1810 # 703b9712 <__l2_shared_end+0x543a9712>
1c008fae:	c29c                	sw	a5,0(a3)
1c008fb0:	8bc70693          	addi	a3,a4,-1860
1c008fb4:	278ed7b7          	lui	a5,0x278ed
1c008fb8:	968a                	add	a3,a3,sp
1c008fba:	40a78793          	addi	a5,a5,1034 # 278ed40a <__l2_shared_end+0xb8dd40a>
1c008fbe:	c29c                	sw	a5,0(a3)
1c008fc0:	8c070693          	addi	a3,a4,-1856
1c008fc4:	082887b7          	lui	a5,0x8288
1c008fc8:	968a                	add	a3,a3,sp
1c008fca:	81078793          	addi	a5,a5,-2032 # 8287810 <__CTOR_LIST__-0x13d787f4>
1c008fce:	c29c                	sw	a5,0(a3)
1c008fd0:	8c470693          	addi	a3,a4,-1852
1c008fd4:	008627b7          	lui	a5,0x862
1c008fd8:	968a                	add	a3,a3,sp
1c008fda:	66478793          	addi	a5,a5,1636 # 862664 <__CTOR_LIST__-0x1b79d9a0>
1c008fde:	c29c                	sw	a5,0(a3)
1c008fe0:	8c870693          	addi	a3,a4,-1848
1c008fe4:	9e30b7b7          	lui	a5,0x9e30b
1c008fe8:	968a                	add	a3,a3,sp
1c008fea:	aa778793          	addi	a5,a5,-1369 # 9e30aaa7 <__l2_shared_end+0x822faaa7>
1c008fee:	c29c                	sw	a5,0(a3)
1c008ff0:	8cc70693          	addi	a3,a4,-1844
1c008ff4:	759817b7          	lui	a5,0x75981
1c008ff8:	968a                	add	a3,a3,sp
1c008ffa:	0aa78793          	addi	a5,a5,170 # 759810aa <__l2_shared_end+0x599710aa>
1c008ffe:	c29c                	sw	a5,0(a3)
1c009000:	8d070693          	addi	a3,a4,-1840
1c009004:	528a17b7          	lui	a5,0x528a1
1c009008:	968a                	add	a3,a3,sp
1c00900a:	f0a78793          	addi	a5,a5,-246 # 528a0f0a <__l2_shared_end+0x36890f0a>
1c00900e:	c29c                	sw	a5,0(a3)
1c009010:	8d470693          	addi	a3,a4,-1836
1c009014:	5729c7b7          	lui	a5,0x5729c
1c009018:	968a                	add	a3,a3,sp
1c00901a:	92e78793          	addi	a5,a5,-1746 # 5729b92e <__l2_shared_end+0x3b28b92e>
1c00901e:	c29c                	sw	a5,0(a3)
1c009020:	8d870693          	addi	a3,a4,-1832
1c009024:	782f47b7          	lui	a5,0x782f4
1c009028:	968a                	add	a3,a3,sp
1c00902a:	17b78793          	addi	a5,a5,379 # 782f417b <__l2_shared_end+0x5c2e417b>
1c00902e:	c29c                	sw	a5,0(a3)
1c009030:	8dc70693          	addi	a3,a4,-1828
1c009034:	883667b7          	lui	a5,0x88366
1c009038:	968a                	add	a3,a3,sp
1c00903a:	15578793          	addi	a5,a5,341 # 88366155 <__l2_shared_end+0x6c356155>
1c00903e:	893a                	mv	s2,a4
1c009040:	c29c                	sw	a5,0(a3)
1c009042:	8e070713          	addi	a4,a4,-1824
1c009046:	c89b37b7          	lui	a5,0xc89b3
1c00904a:	970a                	add	a4,a4,sp
1c00904c:	fb778793          	addi	a5,a5,-73 # c89b2fb7 <__l2_shared_end+0xac9a2fb7>
1c009050:	c31c                	sw	a5,0(a4)
1c009052:	8e490713          	addi	a4,s2,-1820
1c009056:	b91317b7          	lui	a5,0xb9131
1c00905a:	970a                	add	a4,a4,sp
1c00905c:	a5c78793          	addi	a5,a5,-1444 # b9130a5c <__l2_shared_end+0x9d120a5c>
1c009060:	c31c                	sw	a5,0(a4)
1c009062:	8e890713          	addi	a4,s2,-1816
1c009066:	6f5847b7          	lui	a5,0x6f584
1c00906a:	970a                	add	a4,a4,sp
1c00906c:	1d078793          	addi	a5,a5,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c009070:	c31c                	sw	a5,0(a4)
1c009072:	8ec90713          	addi	a4,s2,-1812
1c009076:	b1fe87b7          	lui	a5,0xb1fe8
1c00907a:	970a                	add	a4,a4,sp
1c00907c:	3d578793          	addi	a5,a5,981 # b1fe83d5 <__l2_shared_end+0x95fd83d5>
1c009080:	c31c                	sw	a5,0(a4)
1c009082:	8f090713          	addi	a4,s2,-1808
1c009086:	405b07b7          	lui	a5,0x405b0
1c00908a:	970a                	add	a4,a4,sp
1c00908c:	d2a78793          	addi	a5,a5,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c009090:	c31c                	sw	a5,0(a4)
1c009092:	8f490713          	addi	a4,s2,-1804
1c009096:	433bd7b7          	lui	a5,0x433bd
1c00909a:	970a                	add	a4,a4,sp
1c00909c:	32d78793          	addi	a5,a5,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c0090a0:	c31c                	sw	a5,0(a4)
1c0090a2:	8f890713          	addi	a4,s2,-1800
1c0090a6:	a45f47b7          	lui	a5,0xa45f4
1c0090aa:	970a                	add	a4,a4,sp
1c0090ac:	f5478793          	addi	a5,a5,-172 # a45f3f54 <__l2_shared_end+0x885e3f54>
1c0090b0:	c31c                	sw	a5,0(a4)
1c0090b2:	8fc90713          	addi	a4,s2,-1796
1c0090b6:	8d6c47b7          	lui	a5,0x8d6c4
1c0090ba:	970a                	add	a4,a4,sp
1c0090bc:	3eb78793          	addi	a5,a5,1003 # 8d6c43eb <__l2_shared_end+0x716b43eb>
1c0090c0:	1c000537          	lui	a0,0x1c000
1c0090c4:	c31c                	sw	a5,0(a4)
1c0090c6:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c0090ca:	0a9020ef          	jal	ra,1c00b972 <puts>
1c0090ce:	46010513          	addi	a0,sp,1120
1c0090d2:	4a000593          	li	a1,1184
1c0090d6:	87eff0ef          	jal	ra,1c008154 <printbytes>
1c0090da:	747d                	lui	s0,0xfffff
1c0090dc:	90090793          	addi	a5,s2,-1792
1c0090e0:	978a                	add	a5,a5,sp
1c0090e2:	70040493          	addi	s1,s0,1792 # fffff700 <__l2_shared_end+0xe3fef700>
1c0090e6:	94be                	add	s1,s1,a5
1c0090e8:	90090793          	addi	a5,s2,-1792
1c0090ec:	978a                	add	a5,a5,sp
1c0090ee:	72040413          	addi	s0,s0,1824
1c0090f2:	943e                	add	s0,s0,a5
1c0090f4:	46010613          	addi	a2,sp,1120
1c0090f8:	85a6                	mv	a1,s1
1c0090fa:	8522                	mv	a0,s0
1c0090fc:	2c9010ef          	jal	ra,1c00abc4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_enc>
1c009100:	1c000537          	lui	a0,0x1c000
1c009104:	12850513          	addi	a0,a0,296 # 1c000128 <__clz_tab+0x10c>
1c009108:	06b020ef          	jal	ra,1c00b972 <puts>
1c00910c:	1c000537          	lui	a0,0x1c000
1c009110:	13c50513          	addi	a0,a0,316 # 1c00013c <__clz_tab+0x120>
1c009114:	05f020ef          	jal	ra,1c00b972 <puts>
1c009118:	44000593          	li	a1,1088
1c00911c:	8522                	mv	a0,s0
1c00911e:	836ff0ef          	jal	ra,1c008154 <printbytes>
1c009122:	1c000537          	lui	a0,0x1c000
1c009126:	14450513          	addi	a0,a0,324 # 1c000144 <__clz_tab+0x128>
1c00912a:	049020ef          	jal	ra,1c00b972 <puts>
1c00912e:	8526                	mv	a0,s1
1c009130:	02000593          	li	a1,32
1c009134:	820ff0ef          	jal	ra,1c008154 <printbytes>
1c009138:	6115                	addi	sp,sp,288
1c00913a:	7ec12083          	lw	ra,2028(sp)
1c00913e:	7e812403          	lw	s0,2024(sp)
1c009142:	7e412483          	lw	s1,2020(sp)
1c009146:	7e012903          	lw	s2,2016(sp)
1c00914a:	4501                	li	a0,0
1c00914c:	7f010113          	addi	sp,sp,2032
1c009150:	8082                	ret

1c009152 <pos_fll_init>:
1c009152:	1101                	addi	sp,sp,-32
1c009154:	1a1005b7          	lui	a1,0x1a100
1c009158:	c64e                	sw	s3,12(sp)
1c00915a:	00451613          	slli	a2,a0,0x4
1c00915e:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c009162:	99b2                	add	s3,s3,a2
1c009164:	0009a703          	lw	a4,0(s3)
1c009168:	ca26                	sw	s1,20(sp)
1c00916a:	ce06                	sw	ra,28(sp)
1c00916c:	cc22                	sw	s0,24(sp)
1c00916e:	c84a                	sw	s2,16(sp)
1c009170:	c452                	sw	s4,8(sp)
1c009172:	84aa                	mv	s1,a0
1c009174:	87ba                	mv	a5,a4
1c009176:	04074763          	bltz	a4,1c0091c4 <pos_fll_init+0x72>
1c00917a:	00858693          	addi	a3,a1,8
1c00917e:	96b2                	add	a3,a3,a2
1c009180:	429c                	lw	a5,0(a3)
1c009182:	f0000537          	lui	a0,0xf0000
1c009186:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c00918a:	8fe9                	and	a5,a5,a0
1c00918c:	00502537          	lui	a0,0x502
1c009190:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c009194:	8fc9                	or	a5,a5,a0
1c009196:	05b1                	addi	a1,a1,12
1c009198:	c29c                	sw	a5,0(a3)
1c00919a:	962e                	add	a2,a2,a1
1c00919c:	4214                	lw	a3,0(a2)
1c00919e:	fc0107b7          	lui	a5,0xfc010
1c0091a2:	17fd                	addi	a5,a5,-1
1c0091a4:	01875593          	srli	a1,a4,0x18
1c0091a8:	8efd                	and	a3,a3,a5
1c0091aa:	0c05e593          	ori	a1,a1,192
1c0091ae:	00871793          	slli	a5,a4,0x8
1c0091b2:	014c0537          	lui	a0,0x14c0
1c0091b6:	8ec9                	or	a3,a3,a0
1c0091b8:	05e2                	slli	a1,a1,0x18
1c0091ba:	83a1                	srli	a5,a5,0x8
1c0091bc:	c214                	sw	a3,0(a2)
1c0091be:	8fcd                	or	a5,a5,a1
1c0091c0:	00f9a023          	sw	a5,0(s3)
1c0091c4:	1c006437          	lui	s0,0x1c006
1c0091c8:	2b840413          	addi	s0,s0,696 # 1c0062b8 <pos_fll_freq>
1c0091cc:	00249a13          	slli	s4,s1,0x2
1c0091d0:	014406b3          	add	a3,s0,s4
1c0091d4:	0006a903          	lw	s2,0(a3)
1c0091d8:	02091d63          	bnez	s2,1c009212 <pos_fll_init+0xc0>
1c0091dc:	83e9                	srli	a5,a5,0x1a
1c0091de:	0742                	slli	a4,a4,0x10
1c0091e0:	8341                	srli	a4,a4,0x10
1c0091e2:	8bbd                	andi	a5,a5,15
1c0091e4:	073e                	slli	a4,a4,0xf
1c0091e6:	17fd                	addi	a5,a5,-1
1c0091e8:	00f75933          	srl	s2,a4,a5
1c0091ec:	0126a023          	sw	s2,0(a3)
1c0091f0:	1c0066b7          	lui	a3,0x1c006
1c0091f4:	2b068693          	addi	a3,a3,688 # 1c0062b0 <pos_fll_is_on>
1c0091f8:	96a6                	add	a3,a3,s1
1c0091fa:	4785                	li	a5,1
1c0091fc:	00f68023          	sb	a5,0(a3)
1c009200:	40f2                	lw	ra,28(sp)
1c009202:	4462                	lw	s0,24(sp)
1c009204:	44d2                	lw	s1,20(sp)
1c009206:	49b2                	lw	s3,12(sp)
1c009208:	4a22                	lw	s4,8(sp)
1c00920a:	854a                	mv	a0,s2
1c00920c:	4942                	lw	s2,16(sp)
1c00920e:	6105                	addi	sp,sp,32
1c009210:	8082                	ret
1c009212:	854a                	mv	a0,s2
1c009214:	ef5fe0ef          	jal	ra,1c008108 <__clzsi2>
1c009218:	1579                	addi	a0,a0,-2
1c00921a:	8105                	srli	a0,a0,0x1
1c00921c:	c939                	beqz	a0,1c009272 <pos_fll_init+0x120>
1c00921e:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c009222:	1c0066b7          	lui	a3,0x1c006
1c009226:	4785                	li	a5,1
1c009228:	00c797b3          	sll	a5,a5,a2
1c00922c:	00a91733          	sll	a4,s2,a0
1c009230:	2b068693          	addi	a3,a3,688 # 1c0062b0 <pos_fll_is_on>
1c009234:	7661                	lui	a2,0xffff8
1c009236:	8e79                	and	a2,a2,a4
1c009238:	009685b3          	add	a1,a3,s1
1c00923c:	97b2                	add	a5,a5,a2
1c00923e:	0005c603          	lbu	a2,0(a1)
1c009242:	9452                	add	s0,s0,s4
1c009244:	00a7d7b3          	srl	a5,a5,a0
1c009248:	c01c                	sw	a5,0(s0)
1c00924a:	d65d                	beqz	a2,1c0091f8 <pos_fll_init+0xa6>
1c00924c:	0009a783          	lw	a5,0(s3)
1c009250:	833d                	srli	a4,a4,0xf
1c009252:	0742                	slli	a4,a4,0x10
1c009254:	7641                	lui	a2,0xffff0
1c009256:	8341                	srli	a4,a4,0x10
1c009258:	8ff1                	and	a5,a5,a2
1c00925a:	8fd9                	or	a5,a5,a4
1c00925c:	0505                	addi	a0,a0,1
1c00925e:	c4000737          	lui	a4,0xc4000
1c009262:	893d                	andi	a0,a0,15
1c009264:	177d                	addi	a4,a4,-1
1c009266:	056a                	slli	a0,a0,0x1a
1c009268:	8ff9                	and	a5,a5,a4
1c00926a:	8d5d                	or	a0,a0,a5
1c00926c:	00a9a023          	sw	a0,0(s3)
1c009270:	b761                	j	1c0091f8 <pos_fll_init+0xa6>
1c009272:	4505                	li	a0,1
1c009274:	b76d                	j	1c00921e <pos_fll_init+0xcc>

1c009276 <pos_fll_constructor>:
1c009276:	1c0067b7          	lui	a5,0x1c006
1c00927a:	2b878793          	addi	a5,a5,696 # 1c0062b8 <pos_fll_freq>
1c00927e:	0007a023          	sw	zero,0(a5)
1c009282:	0007a223          	sw	zero,4(a5)
1c009286:	1c0067b7          	lui	a5,0x1c006
1c00928a:	2a079823          	sh	zero,688(a5) # 1c0062b0 <pos_fll_is_on>
1c00928e:	8082                	ret

1c009290 <pos_soc_init>:
1c009290:	1141                	addi	sp,sp,-16
1c009292:	c606                	sw	ra,12(sp)
1c009294:	c422                	sw	s0,8(sp)
1c009296:	37c5                	jal	1c009276 <pos_fll_constructor>
1c009298:	4501                	li	a0,0
1c00929a:	3d65                	jal	1c009152 <pos_fll_init>
1c00929c:	1c006437          	lui	s0,0x1c006
1c0092a0:	87aa                	mv	a5,a0
1c0092a2:	2c040413          	addi	s0,s0,704 # 1c0062c0 <pos_freq_domains>
1c0092a6:	4505                	li	a0,1
1c0092a8:	c01c                	sw	a5,0(s0)
1c0092aa:	3565                	jal	1c009152 <pos_fll_init>
1c0092ac:	40b2                	lw	ra,12(sp)
1c0092ae:	c408                	sw	a0,8(s0)
1c0092b0:	4422                	lw	s0,8(sp)
1c0092b2:	0141                	addi	sp,sp,16
1c0092b4:	8082                	ret

1c0092b6 <KeccakF1600_StatePermute>:
1c0092b6:	1a400837          	lui	a6,0x1a400
1c0092ba:	87aa                	mv	a5,a0
1c0092bc:	0c850613          	addi	a2,a0,200
1c0092c0:	1141                	addi	sp,sp,-16
1c0092c2:	40a80533          	sub	a0,a6,a0
1c0092c6:	4394                	lw	a3,0(a5)
1c0092c8:	00f50733          	add	a4,a0,a5
1c0092cc:	0791                	addi	a5,a5,4
1c0092ce:	c314                	sw	a3,0(a4)
1c0092d0:	fec79be3          	bne	a5,a2,1c0092c6 <KeccakF1600_StatePermute+0x10>
1c0092d4:	4785                	li	a5,1
1c0092d6:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c0092da:	1a400737          	lui	a4,0x1a400
1c0092de:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c0092e2:	8b85                	andi	a5,a5,1
1c0092e4:	dfed                	beqz	a5,1c0092de <KeccakF1600_StatePermute+0x28>
1c0092e6:	c602                	sw	zero,12(sp)
1c0092e8:	4732                	lw	a4,12(sp)
1c0092ea:	03100793          	li	a5,49
1c0092ee:	02e7c663          	blt	a5,a4,1c00931a <KeccakF1600_StatePermute+0x64>
1c0092f2:	1a400637          	lui	a2,0x1a400
1c0092f6:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c0092fa:	03100513          	li	a0,49
1c0092fe:	4732                	lw	a4,12(sp)
1c009300:	47b2                	lw	a5,12(sp)
1c009302:	070a                	slli	a4,a4,0x2
1c009304:	9732                	add	a4,a4,a2
1c009306:	4314                	lw	a3,0(a4)
1c009308:	4732                	lw	a4,12(sp)
1c00930a:	078a                	slli	a5,a5,0x2
1c00930c:	97ae                	add	a5,a5,a1
1c00930e:	0705                	addi	a4,a4,1
1c009310:	c63a                	sw	a4,12(sp)
1c009312:	4732                	lw	a4,12(sp)
1c009314:	c394                	sw	a3,0(a5)
1c009316:	fee554e3          	bge	a0,a4,1c0092fe <KeccakF1600_StatePermute+0x48>
1c00931a:	0141                	addi	sp,sp,16
1c00931c:	8082                	ret

1c00931e <KYBER_poly_ntt>:
1c00931e:	1a4007b7          	lui	a5,0x1a400
1c009322:	4705                	li	a4,1
1c009324:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c009328:	3007a423          	sw	zero,776(a5)
1c00932c:	20050693          	addi	a3,a0,512
1c009330:	1a400737          	lui	a4,0x1a400
1c009334:	411c                	lw	a5,0(a0)
1c009336:	0511                	addi	a0,a0,4
1c009338:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00933c:	fed51ce3          	bne	a0,a3,1c009334 <KYBER_poly_ntt+0x16>
1c009340:	08000793          	li	a5,128
1c009344:	30f72423          	sw	a5,776(a4)
1c009348:	30072423          	sw	zero,776(a4)
1c00934c:	1a400737          	lui	a4,0x1a400
1c009350:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c009354:	8b85                	andi	a5,a5,1
1c009356:	dfed                	beqz	a5,1c009350 <KYBER_poly_ntt+0x32>
1c009358:	47c1                	li	a5,16
1c00935a:	30f72423          	sw	a5,776(a4)
1c00935e:	30072423          	sw	zero,776(a4)
1c009362:	20058693          	addi	a3,a1,512
1c009366:	1a400737          	lui	a4,0x1a400
1c00936a:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00936e:	0591                	addi	a1,a1,4
1c009370:	fef5ae23          	sw	a5,-4(a1)
1c009374:	fed59be3          	bne	a1,a3,1c00936a <KYBER_poly_ntt+0x4c>
1c009378:	8082                	ret

1c00937a <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c00937a:	1101                	addi	sp,sp,-32
1c00937c:	55555f37          	lui	t5,0x55555
1c009380:	ce22                	sw	s0,28(sp)
1c009382:	cc26                	sw	s1,24(sp)
1c009384:	ca4a                	sw	s2,20(sp)
1c009386:	c84e                	sw	s3,16(sp)
1c009388:	c652                	sw	s4,12(sp)
1c00938a:	20050f93          	addi	t6,a0,512
1c00938e:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c009392:	0015c683          	lbu	a3,1(a1)
1c009396:	0005c603          	lbu	a2,0(a1)
1c00939a:	0025c783          	lbu	a5,2(a1)
1c00939e:	0035c703          	lbu	a4,3(a1)
1c0093a2:	06a2                	slli	a3,a3,0x8
1c0093a4:	8ed1                	or	a3,a3,a2
1c0093a6:	07c2                	slli	a5,a5,0x10
1c0093a8:	8fd5                	or	a5,a5,a3
1c0093aa:	0762                	slli	a4,a4,0x18
1c0093ac:	8f5d                	or	a4,a4,a5
1c0093ae:	00175793          	srli	a5,a4,0x1
1c0093b2:	01e7f7b3          	and	a5,a5,t5
1c0093b6:	01e77733          	and	a4,a4,t5
1c0093ba:	97ba                	add	a5,a5,a4
1c0093bc:	0027da13          	srli	s4,a5,0x2
1c0093c0:	0047d313          	srli	t1,a5,0x4
1c0093c4:	0067d993          	srli	s3,a5,0x6
1c0093c8:	0087d893          	srli	a7,a5,0x8
1c0093cc:	00a7d913          	srli	s2,a5,0xa
1c0093d0:	00c7d813          	srli	a6,a5,0xc
1c0093d4:	00e7d493          	srli	s1,a5,0xe
1c0093d8:	0107d613          	srli	a2,a5,0x10
1c0093dc:	0127d413          	srli	s0,a5,0x12
1c0093e0:	0147d693          	srli	a3,a5,0x14
1c0093e4:	0167d393          	srli	t2,a5,0x16
1c0093e8:	0187d713          	srli	a4,a5,0x18
1c0093ec:	01a7d293          	srli	t0,a5,0x1a
1c0093f0:	01c7de93          	srli	t4,a5,0x1c
1c0093f4:	0037fe13          	andi	t3,a5,3
1c0093f8:	003a7a13          	andi	s4,s4,3
1c0093fc:	00337313          	andi	t1,t1,3
1c009400:	0039f993          	andi	s3,s3,3
1c009404:	0038f893          	andi	a7,a7,3
1c009408:	00397913          	andi	s2,s2,3
1c00940c:	00387813          	andi	a6,a6,3
1c009410:	888d                	andi	s1,s1,3
1c009412:	8a0d                	andi	a2,a2,3
1c009414:	880d                	andi	s0,s0,3
1c009416:	8a8d                	andi	a3,a3,3
1c009418:	0033f393          	andi	t2,t2,3
1c00941c:	8b0d                	andi	a4,a4,3
1c00941e:	0032f293          	andi	t0,t0,3
1c009422:	003efe93          	andi	t4,t4,3
1c009426:	83f9                	srli	a5,a5,0x1e
1c009428:	414e0e33          	sub	t3,t3,s4
1c00942c:	41330333          	sub	t1,t1,s3
1c009430:	412888b3          	sub	a7,a7,s2
1c009434:	40980833          	sub	a6,a6,s1
1c009438:	8e01                	sub	a2,a2,s0
1c00943a:	407686b3          	sub	a3,a3,t2
1c00943e:	40570733          	sub	a4,a4,t0
1c009442:	40fe87b3          	sub	a5,t4,a5
1c009446:	01c51023          	sh	t3,0(a0)
1c00944a:	00651123          	sh	t1,2(a0)
1c00944e:	01151223          	sh	a7,4(a0)
1c009452:	01051323          	sh	a6,6(a0)
1c009456:	00c51423          	sh	a2,8(a0)
1c00945a:	00d51523          	sh	a3,10(a0)
1c00945e:	00e51623          	sh	a4,12(a0)
1c009462:	00f51723          	sh	a5,14(a0)
1c009466:	0541                	addi	a0,a0,16
1c009468:	0591                	addi	a1,a1,4
1c00946a:	f3f514e3          	bne	a0,t6,1c009392 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c00946e:	4472                	lw	s0,28(sp)
1c009470:	44e2                	lw	s1,24(sp)
1c009472:	4952                	lw	s2,20(sp)
1c009474:	49c2                	lw	s3,16(sp)
1c009476:	4a32                	lw	s4,12(sp)
1c009478:	6105                	addi	sp,sp,32
1c00947a:	8082                	ret

1c00947c <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2>:
1c00947c:	1101                	addi	sp,sp,-32
1c00947e:	55555f37          	lui	t5,0x55555
1c009482:	ce22                	sw	s0,28(sp)
1c009484:	cc26                	sw	s1,24(sp)
1c009486:	ca4a                	sw	s2,20(sp)
1c009488:	c84e                	sw	s3,16(sp)
1c00948a:	c652                	sw	s4,12(sp)
1c00948c:	20050f93          	addi	t6,a0,512
1c009490:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c009494:	0015c683          	lbu	a3,1(a1)
1c009498:	0005c603          	lbu	a2,0(a1)
1c00949c:	0025c783          	lbu	a5,2(a1)
1c0094a0:	0035c703          	lbu	a4,3(a1)
1c0094a4:	06a2                	slli	a3,a3,0x8
1c0094a6:	8ed1                	or	a3,a3,a2
1c0094a8:	07c2                	slli	a5,a5,0x10
1c0094aa:	8fd5                	or	a5,a5,a3
1c0094ac:	0762                	slli	a4,a4,0x18
1c0094ae:	8f5d                	or	a4,a4,a5
1c0094b0:	00175793          	srli	a5,a4,0x1
1c0094b4:	01e7f7b3          	and	a5,a5,t5
1c0094b8:	01e77733          	and	a4,a4,t5
1c0094bc:	97ba                	add	a5,a5,a4
1c0094be:	0027da13          	srli	s4,a5,0x2
1c0094c2:	0047d313          	srli	t1,a5,0x4
1c0094c6:	0067d993          	srli	s3,a5,0x6
1c0094ca:	0087d893          	srli	a7,a5,0x8
1c0094ce:	00a7d913          	srli	s2,a5,0xa
1c0094d2:	00c7d813          	srli	a6,a5,0xc
1c0094d6:	00e7d493          	srli	s1,a5,0xe
1c0094da:	0107d613          	srli	a2,a5,0x10
1c0094de:	0127d413          	srli	s0,a5,0x12
1c0094e2:	0147d693          	srli	a3,a5,0x14
1c0094e6:	0167d393          	srli	t2,a5,0x16
1c0094ea:	0187d713          	srli	a4,a5,0x18
1c0094ee:	01a7d293          	srli	t0,a5,0x1a
1c0094f2:	01c7de93          	srli	t4,a5,0x1c
1c0094f6:	0037fe13          	andi	t3,a5,3
1c0094fa:	003a7a13          	andi	s4,s4,3
1c0094fe:	00337313          	andi	t1,t1,3
1c009502:	0039f993          	andi	s3,s3,3
1c009506:	0038f893          	andi	a7,a7,3
1c00950a:	00397913          	andi	s2,s2,3
1c00950e:	00387813          	andi	a6,a6,3
1c009512:	888d                	andi	s1,s1,3
1c009514:	8a0d                	andi	a2,a2,3
1c009516:	880d                	andi	s0,s0,3
1c009518:	8a8d                	andi	a3,a3,3
1c00951a:	0033f393          	andi	t2,t2,3
1c00951e:	8b0d                	andi	a4,a4,3
1c009520:	0032f293          	andi	t0,t0,3
1c009524:	003efe93          	andi	t4,t4,3
1c009528:	83f9                	srli	a5,a5,0x1e
1c00952a:	414e0e33          	sub	t3,t3,s4
1c00952e:	41330333          	sub	t1,t1,s3
1c009532:	412888b3          	sub	a7,a7,s2
1c009536:	40980833          	sub	a6,a6,s1
1c00953a:	8e01                	sub	a2,a2,s0
1c00953c:	407686b3          	sub	a3,a3,t2
1c009540:	40570733          	sub	a4,a4,t0
1c009544:	40fe87b3          	sub	a5,t4,a5
1c009548:	01c51023          	sh	t3,0(a0)
1c00954c:	00651123          	sh	t1,2(a0)
1c009550:	01151223          	sh	a7,4(a0)
1c009554:	01051323          	sh	a6,6(a0)
1c009558:	00c51423          	sh	a2,8(a0)
1c00955c:	00d51523          	sh	a3,10(a0)
1c009560:	00e51623          	sh	a4,12(a0)
1c009564:	00f51723          	sh	a5,14(a0)
1c009568:	0541                	addi	a0,a0,16
1c00956a:	0591                	addi	a1,a1,4
1c00956c:	f3f514e3          	bne	a0,t6,1c009494 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2+0x18>
1c009570:	4472                	lw	s0,28(sp)
1c009572:	44e2                	lw	s1,24(sp)
1c009574:	4952                	lw	s2,20(sp)
1c009576:	49c2                	lw	s3,16(sp)
1c009578:	4a32                	lw	s4,12(sp)
1c00957a:	6105                	addi	sp,sp,32
1c00957c:	8082                	ret

1c00957e <keccak_absorb.constprop.1>:
1c00957e:	7151                	addi	sp,sp,-240
1c009580:	d3a6                	sw	s1,228(sp)
1c009582:	cfce                	sw	s3,220(sp)
1c009584:	cdd2                	sw	s4,216(sp)
1c009586:	cbd6                	sw	s5,212(sp)
1c009588:	84b6                	mv	s1,a3
1c00958a:	d786                	sw	ra,236(sp)
1c00958c:	d5a2                	sw	s0,232(sp)
1c00958e:	d1ca                	sw	s2,224(sp)
1c009590:	c9da                	sw	s6,208(sp)
1c009592:	8a2a                	mv	s4,a0
1c009594:	87ae                	mv	a5,a1
1c009596:	8ab2                	mv	s5,a2
1c009598:	89aa                	mv	s3,a0
1c00959a:	0c850693          	addi	a3,a0,200
1c00959e:	872a                	mv	a4,a0
1c0095a0:	4581                	li	a1,0
1c0095a2:	4601                	li	a2,0
1c0095a4:	c30c                	sw	a1,0(a4)
1c0095a6:	c350                	sw	a2,4(a4)
1c0095a8:	0721                	addi	a4,a4,8
1c0095aa:	fee69be3          	bne	a3,a4,1c0095a0 <keccak_absorb.constprop.1+0x22>
1c0095ae:	08700713          	li	a4,135
1c0095b2:	09577363          	bgeu	a4,s5,1c009638 <keccak_absorb.constprop.1+0xba>
1c0095b6:	08878b13          	addi	s6,a5,136
1c0095ba:	895a                	mv	s2,s6
1c0095bc:	08700413          	li	s0,135
1c0095c0:	86d2                	mv	a3,s4
1c0095c2:	0017c703          	lbu	a4,1(a5)
1c0095c6:	0027ce03          	lbu	t3,2(a5)
1c0095ca:	0057c803          	lbu	a6,5(a5)
1c0095ce:	0047cf03          	lbu	t5,4(a5)
1c0095d2:	0067c503          	lbu	a0,6(a5)
1c0095d6:	0007ce83          	lbu	t4,0(a5)
1c0095da:	0037c583          	lbu	a1,3(a5)
1c0095de:	0077c603          	lbu	a2,7(a5)
1c0095e2:	0722                	slli	a4,a4,0x8
1c0095e4:	0e42                	slli	t3,t3,0x10
1c0095e6:	0822                	slli	a6,a6,0x8
1c0095e8:	0006a303          	lw	t1,0(a3)
1c0095ec:	0046a883          	lw	a7,4(a3)
1c0095f0:	01c76733          	or	a4,a4,t3
1c0095f4:	01e86833          	or	a6,a6,t5
1c0095f8:	0542                	slli	a0,a0,0x10
1c0095fa:	01d76733          	or	a4,a4,t4
1c0095fe:	05e2                	slli	a1,a1,0x18
1c009600:	01056533          	or	a0,a0,a6
1c009604:	0662                	slli	a2,a2,0x18
1c009606:	8f4d                	or	a4,a4,a1
1c009608:	8e49                	or	a2,a2,a0
1c00960a:	00e34733          	xor	a4,t1,a4
1c00960e:	00c8c633          	xor	a2,a7,a2
1c009612:	c298                	sw	a4,0(a3)
1c009614:	c2d0                	sw	a2,4(a3)
1c009616:	07a1                	addi	a5,a5,8
1c009618:	06a1                	addi	a3,a3,8
1c00961a:	faf914e3          	bne	s2,a5,1c0095c2 <keccak_absorb.constprop.1+0x44>
1c00961e:	85d2                	mv	a1,s4
1c009620:	8552                	mv	a0,s4
1c009622:	3951                	jal	1c0092b6 <KeccakF1600_StatePermute>
1c009624:	f78a8a93          	addi	s5,s5,-136
1c009628:	08890913          	addi	s2,s2,136
1c00962c:	87da                	mv	a5,s6
1c00962e:	01547563          	bgeu	s0,s5,1c009638 <keccak_absorb.constprop.1+0xba>
1c009632:	088b0b13          	addi	s6,s6,136
1c009636:	b769                	j	1c0095c0 <keccak_absorb.constprop.1+0x42>
1c009638:	0038                	addi	a4,sp,8
1c00963a:	09010e13          	addi	t3,sp,144
1c00963e:	86ba                	mv	a3,a4
1c009640:	0006a023          	sw	zero,0(a3)
1c009644:	0691                	addi	a3,a3,4
1c009646:	fede1de3          	bne	t3,a3,1c009640 <keccak_absorb.constprop.1+0xc2>
1c00964a:	080a8263          	beqz	s5,1c0096ce <keccak_absorb.constprop.1+0x150>
1c00964e:	fffa8693          	addi	a3,s5,-1
1c009652:	4609                	li	a2,2
1c009654:	10d67163          	bgeu	a2,a3,1c009756 <keccak_absorb.constprop.1+0x1d8>
1c009658:	ffcaf313          	andi	t1,s5,-4
1c00965c:	86be                	mv	a3,a5
1c00965e:	933e                	add	t1,t1,a5
1c009660:	883a                	mv	a6,a4
1c009662:	0016c503          	lbu	a0,1(a3)
1c009666:	0006c883          	lbu	a7,0(a3)
1c00966a:	0026c583          	lbu	a1,2(a3)
1c00966e:	0036c603          	lbu	a2,3(a3)
1c009672:	0522                	slli	a0,a0,0x8
1c009674:	01156533          	or	a0,a0,a7
1c009678:	05c2                	slli	a1,a1,0x10
1c00967a:	8dc9                	or	a1,a1,a0
1c00967c:	0662                	slli	a2,a2,0x18
1c00967e:	8e4d                	or	a2,a2,a1
1c009680:	00c82023          	sw	a2,0(a6)
1c009684:	0691                	addi	a3,a3,4
1c009686:	0811                	addi	a6,a6,4
1c009688:	fcd31de3          	bne	t1,a3,1c009662 <keccak_absorb.constprop.1+0xe4>
1c00968c:	ffcaf693          	andi	a3,s5,-4
1c009690:	02da8f63          	beq	s5,a3,1c0096ce <keccak_absorb.constprop.1+0x150>
1c009694:	00d78633          	add	a2,a5,a3
1c009698:	00064503          	lbu	a0,0(a2)
1c00969c:	098c                	addi	a1,sp,208
1c00969e:	95b6                	add	a1,a1,a3
1c0096a0:	00168613          	addi	a2,a3,1
1c0096a4:	f2a58c23          	sb	a0,-200(a1)
1c0096a8:	03567363          	bgeu	a2,s5,1c0096ce <keccak_absorb.constprop.1+0x150>
1c0096ac:	00c785b3          	add	a1,a5,a2
1c0096b0:	0005c583          	lbu	a1,0(a1)
1c0096b4:	0988                	addi	a0,sp,208
1c0096b6:	962a                	add	a2,a2,a0
1c0096b8:	0689                	addi	a3,a3,2
1c0096ba:	f2b60c23          	sb	a1,-200(a2)
1c0096be:	0156f863          	bgeu	a3,s5,1c0096ce <keccak_absorb.constprop.1+0x150>
1c0096c2:	97b6                	add	a5,a5,a3
1c0096c4:	0007c783          	lbu	a5,0(a5)
1c0096c8:	96aa                	add	a3,a3,a0
1c0096ca:	f2f68c23          	sb	a5,-200(a3)
1c0096ce:	099c                	addi	a5,sp,208
1c0096d0:	9abe                	add	s5,s5,a5
1c0096d2:	f29a8c23          	sb	s1,-200(s5)
1c0096d6:	08f14783          	lbu	a5,143(sp)
1c0096da:	f807e793          	ori	a5,a5,-128
1c0096de:	08f107a3          	sb	a5,143(sp)
1c0096e2:	00174783          	lbu	a5,1(a4)
1c0096e6:	00274303          	lbu	t1,2(a4)
1c0096ea:	00574503          	lbu	a0,5(a4)
1c0096ee:	00474f03          	lbu	t5,4(a4)
1c0096f2:	00674583          	lbu	a1,6(a4)
1c0096f6:	00074e83          	lbu	t4,0(a4)
1c0096fa:	00374603          	lbu	a2,3(a4)
1c0096fe:	00774683          	lbu	a3,7(a4)
1c009702:	07a2                	slli	a5,a5,0x8
1c009704:	0342                	slli	t1,t1,0x10
1c009706:	0522                	slli	a0,a0,0x8
1c009708:	0009a883          	lw	a7,0(s3)
1c00970c:	0049a803          	lw	a6,4(s3)
1c009710:	0067e7b3          	or	a5,a5,t1
1c009714:	01e56533          	or	a0,a0,t5
1c009718:	05c2                	slli	a1,a1,0x10
1c00971a:	01d7e7b3          	or	a5,a5,t4
1c00971e:	0662                	slli	a2,a2,0x18
1c009720:	8dc9                	or	a1,a1,a0
1c009722:	06e2                	slli	a3,a3,0x18
1c009724:	8e5d                	or	a2,a2,a5
1c009726:	00b6e7b3          	or	a5,a3,a1
1c00972a:	00c8c633          	xor	a2,a7,a2
1c00972e:	00f847b3          	xor	a5,a6,a5
1c009732:	00c9a023          	sw	a2,0(s3)
1c009736:	00f9a223          	sw	a5,4(s3)
1c00973a:	0721                	addi	a4,a4,8
1c00973c:	09a1                	addi	s3,s3,8
1c00973e:	faee12e3          	bne	t3,a4,1c0096e2 <keccak_absorb.constprop.1+0x164>
1c009742:	50be                	lw	ra,236(sp)
1c009744:	542e                	lw	s0,232(sp)
1c009746:	549e                	lw	s1,228(sp)
1c009748:	590e                	lw	s2,224(sp)
1c00974a:	49fe                	lw	s3,220(sp)
1c00974c:	4a6e                	lw	s4,216(sp)
1c00974e:	4ade                	lw	s5,212(sp)
1c009750:	4b4e                	lw	s6,208(sp)
1c009752:	616d                	addi	sp,sp,240
1c009754:	8082                	ret
1c009756:	4681                	li	a3,0
1c009758:	bf35                	j	1c009694 <keccak_absorb.constprop.1+0x116>

1c00975a <shake128_absorb>:
1c00975a:	7151                	addi	sp,sp,-240
1c00975c:	cfce                	sw	s3,220(sp)
1c00975e:	89aa                	mv	s3,a0
1c009760:	0c800513          	li	a0,200
1c009764:	d5a2                	sw	s0,232(sp)
1c009766:	d3a6                	sw	s1,228(sp)
1c009768:	d786                	sw	ra,236(sp)
1c00976a:	d1ca                	sw	s2,224(sp)
1c00976c:	842e                	mv	s0,a1
1c00976e:	84b2                	mv	s1,a2
1c009770:	3dc030ef          	jal	ra,1c00cb4c <pi_l2_malloc>
1c009774:	00a9a023          	sw	a0,0(s3)
1c009778:	1c050363          	beqz	a0,1c00993e <shake128_absorb+0x1e4>
1c00977c:	892a                	mv	s2,a0
1c00977e:	0c850713          	addi	a4,a0,200
1c009782:	87aa                	mv	a5,a0
1c009784:	4601                	li	a2,0
1c009786:	4681                	li	a3,0
1c009788:	c390                	sw	a2,0(a5)
1c00978a:	c3d4                	sw	a3,4(a5)
1c00978c:	07a1                	addi	a5,a5,8
1c00978e:	fef71be3          	bne	a4,a5,1c009784 <shake128_absorb+0x2a>
1c009792:	0a700793          	li	a5,167
1c009796:	0897f063          	bgeu	a5,s1,1c009816 <shake128_absorb+0xbc>
1c00979a:	0a700993          	li	s3,167
1c00979e:	87a2                	mv	a5,s0
1c0097a0:	40890eb3          	sub	t4,s2,s0
1c0097a4:	0a840413          	addi	s0,s0,168
1c0097a8:	0017c703          	lbu	a4,1(a5)
1c0097ac:	0027ce03          	lbu	t3,2(a5)
1c0097b0:	0057c503          	lbu	a0,5(a5)
1c0097b4:	0047cf83          	lbu	t6,4(a5)
1c0097b8:	0067c583          	lbu	a1,6(a5)
1c0097bc:	0007cf03          	lbu	t5,0(a5)
1c0097c0:	0037c603          	lbu	a2,3(a5)
1c0097c4:	0077c683          	lbu	a3,7(a5)
1c0097c8:	00fe8833          	add	a6,t4,a5
1c0097cc:	0722                	slli	a4,a4,0x8
1c0097ce:	0e42                	slli	t3,t3,0x10
1c0097d0:	0522                	slli	a0,a0,0x8
1c0097d2:	00082303          	lw	t1,0(a6)
1c0097d6:	00482883          	lw	a7,4(a6)
1c0097da:	01c76733          	or	a4,a4,t3
1c0097de:	01f56533          	or	a0,a0,t6
1c0097e2:	05c2                	slli	a1,a1,0x10
1c0097e4:	01e76733          	or	a4,a4,t5
1c0097e8:	0662                	slli	a2,a2,0x18
1c0097ea:	8dc9                	or	a1,a1,a0
1c0097ec:	06e2                	slli	a3,a3,0x18
1c0097ee:	8f51                	or	a4,a4,a2
1c0097f0:	8ecd                	or	a3,a3,a1
1c0097f2:	00e34733          	xor	a4,t1,a4
1c0097f6:	00d8c6b3          	xor	a3,a7,a3
1c0097fa:	00e82023          	sw	a4,0(a6)
1c0097fe:	00d82223          	sw	a3,4(a6)
1c009802:	07a1                	addi	a5,a5,8
1c009804:	faf412e3          	bne	s0,a5,1c0097a8 <shake128_absorb+0x4e>
1c009808:	f5848493          	addi	s1,s1,-168
1c00980c:	85ca                	mv	a1,s2
1c00980e:	854a                	mv	a0,s2
1c009810:	345d                	jal	1c0092b6 <KeccakF1600_StatePermute>
1c009812:	f899e6e3          	bltu	s3,s1,1c00979e <shake128_absorb+0x44>
1c009816:	0b010313          	addi	t1,sp,176
1c00981a:	003c                	addi	a5,sp,8
1c00981c:	0007a023          	sw	zero,0(a5)
1c009820:	0791                	addi	a5,a5,4
1c009822:	fef31de3          	bne	t1,a5,1c00981c <shake128_absorb+0xc2>
1c009826:	c0d9                	beqz	s1,1c0098ac <shake128_absorb+0x152>
1c009828:	fff48793          	addi	a5,s1,-1
1c00982c:	4709                	li	a4,2
1c00982e:	10f77663          	bgeu	a4,a5,1c00993a <shake128_absorb+0x1e0>
1c009832:	ffc4f593          	andi	a1,s1,-4
1c009836:	87a2                	mv	a5,s0
1c009838:	95a2                	add	a1,a1,s0
1c00983a:	0028                	addi	a0,sp,8
1c00983c:	0017c603          	lbu	a2,1(a5)
1c009840:	0007c803          	lbu	a6,0(a5)
1c009844:	0027c683          	lbu	a3,2(a5)
1c009848:	0037c703          	lbu	a4,3(a5)
1c00984c:	0622                	slli	a2,a2,0x8
1c00984e:	01066633          	or	a2,a2,a6
1c009852:	06c2                	slli	a3,a3,0x10
1c009854:	8ed1                	or	a3,a3,a2
1c009856:	0762                	slli	a4,a4,0x18
1c009858:	8f55                	or	a4,a4,a3
1c00985a:	c118                	sw	a4,0(a0)
1c00985c:	0791                	addi	a5,a5,4
1c00985e:	0511                	addi	a0,a0,4
1c009860:	fcf59ee3          	bne	a1,a5,1c00983c <shake128_absorb+0xe2>
1c009864:	ffc4f793          	andi	a5,s1,-4
1c009868:	04f48263          	beq	s1,a5,1c0098ac <shake128_absorb+0x152>
1c00986c:	00f40733          	add	a4,s0,a5
1c009870:	00074603          	lbu	a2,0(a4)
1c009874:	0994                	addi	a3,sp,208
1c009876:	96be                	add	a3,a3,a5
1c009878:	00178713          	addi	a4,a5,1
1c00987c:	f2c68c23          	sb	a2,-200(a3)
1c009880:	02977663          	bgeu	a4,s1,1c0098ac <shake128_absorb+0x152>
1c009884:	00e406b3          	add	a3,s0,a4
1c009888:	0006c603          	lbu	a2,0(a3)
1c00988c:	0994                	addi	a3,sp,208
1c00988e:	96ba                	add	a3,a3,a4
1c009890:	f2c68c23          	sb	a2,-200(a3)
1c009894:	00278713          	addi	a4,a5,2
1c009898:	00977a63          	bgeu	a4,s1,1c0098ac <shake128_absorb+0x152>
1c00989c:	00e407b3          	add	a5,s0,a4
1c0098a0:	0007c683          	lbu	a3,0(a5)
1c0098a4:	099c                	addi	a5,sp,208
1c0098a6:	97ba                	add	a5,a5,a4
1c0098a8:	f2d78c23          	sb	a3,-200(a5)
1c0098ac:	099c                	addi	a5,sp,208
1c0098ae:	00978633          	add	a2,a5,s1
1c0098b2:	47fd                	li	a5,31
1c0098b4:	f2f60c23          	sb	a5,-200(a2)
1c0098b8:	0af14703          	lbu	a4,175(sp)
1c0098bc:	003c                	addi	a5,sp,8
1c0098be:	40f90933          	sub	s2,s2,a5
1c0098c2:	f8076713          	ori	a4,a4,-128
1c0098c6:	0ae107a3          	sb	a4,175(sp)
1c0098ca:	0017c703          	lbu	a4,1(a5)
1c0098ce:	0027cf83          	lbu	t6,2(a5)
1c0098d2:	0057c883          	lbu	a7,5(a5)
1c0098d6:	0047c503          	lbu	a0,4(a5)
1c0098da:	0067c803          	lbu	a6,6(a5)
1c0098de:	0007c583          	lbu	a1,0(a5)
1c0098e2:	0037c603          	lbu	a2,3(a5)
1c0098e6:	0077c683          	lbu	a3,7(a5)
1c0098ea:	00f90e33          	add	t3,s2,a5
1c0098ee:	0722                	slli	a4,a4,0x8
1c0098f0:	0fc2                	slli	t6,t6,0x10
1c0098f2:	08a2                	slli	a7,a7,0x8
1c0098f4:	000e2f03          	lw	t5,0(t3)
1c0098f8:	004e2e83          	lw	t4,4(t3)
1c0098fc:	01f76733          	or	a4,a4,t6
1c009900:	00a8e8b3          	or	a7,a7,a0
1c009904:	0842                	slli	a6,a6,0x10
1c009906:	8f4d                	or	a4,a4,a1
1c009908:	0662                	slli	a2,a2,0x18
1c00990a:	01186833          	or	a6,a6,a7
1c00990e:	06e2                	slli	a3,a3,0x18
1c009910:	8f51                	or	a4,a4,a2
1c009912:	0106e6b3          	or	a3,a3,a6
1c009916:	00ef4733          	xor	a4,t5,a4
1c00991a:	00dec6b3          	xor	a3,t4,a3
1c00991e:	00ee2023          	sw	a4,0(t3)
1c009922:	00de2223          	sw	a3,4(t3)
1c009926:	07a1                	addi	a5,a5,8
1c009928:	faf311e3          	bne	t1,a5,1c0098ca <shake128_absorb+0x170>
1c00992c:	50be                	lw	ra,236(sp)
1c00992e:	542e                	lw	s0,232(sp)
1c009930:	549e                	lw	s1,228(sp)
1c009932:	590e                	lw	s2,224(sp)
1c009934:	49fe                	lw	s3,220(sp)
1c009936:	616d                	addi	sp,sp,240
1c009938:	8082                	ret
1c00993a:	4781                	li	a5,0
1c00993c:	bf05                	j	1c00986c <shake128_absorb+0x112>
1c00993e:	06f00513          	li	a0,111
1c009942:	0d6020ef          	jal	ra,1c00ba18 <exit>

1c009946 <shake128_squeezeblocks>:
1c009946:	1101                	addi	sp,sp,-32
1c009948:	c05a                	sw	s6,0(sp)
1c00994a:	ce06                	sw	ra,28(sp)
1c00994c:	cc22                	sw	s0,24(sp)
1c00994e:	ca26                	sw	s1,20(sp)
1c009950:	c84a                	sw	s2,16(sp)
1c009952:	c64e                	sw	s3,12(sp)
1c009954:	c452                	sw	s4,8(sp)
1c009956:	c256                	sw	s5,4(sp)
1c009958:	00062b03          	lw	s6,0(a2)
1c00995c:	c5e9                	beqz	a1,1c009a26 <shake128_squeezeblocks+0xe0>
1c00995e:	7ac1                	lui	s5,0xffff0
1c009960:	ff010a37          	lui	s4,0xff010
1c009964:	010009b7          	lui	s3,0x1000
1c009968:	84ae                	mv	s1,a1
1c00996a:	892a                	mv	s2,a0
1c00996c:	0a8b0413          	addi	s0,s6,168
1c009970:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009974:	1a7d                	addi	s4,s4,-1
1c009976:	19fd                	addi	s3,s3,-1
1c009978:	85da                	mv	a1,s6
1c00997a:	855a                	mv	a0,s6
1c00997c:	3a2d                	jal	1c0092b6 <KeccakF1600_StatePermute>
1c00997e:	85da                	mv	a1,s6
1c009980:	00490813          	addi	a6,s2,4
1c009984:	4198                	lw	a4,0(a1)
1c009986:	41dc                	lw	a5,4(a1)
1c009988:	05a1                	addi	a1,a1,8
1c00998a:	00875893          	srli	a7,a4,0x8
1c00998e:	0087d513          	srli	a0,a5,0x8
1c009992:	0ff77613          	andi	a2,a4,255
1c009996:	0ff7f693          	andi	a3,a5,255
1c00999a:	0ff8f893          	andi	a7,a7,255
1c00999e:	0ff57513          	andi	a0,a0,255
1c0099a2:	08a2                	slli	a7,a7,0x8
1c0099a4:	0522                	slli	a0,a0,0x8
1c0099a6:	01567633          	and	a2,a2,s5
1c0099aa:	0156f6b3          	and	a3,a3,s5
1c0099ae:	01166633          	or	a2,a2,a7
1c0099b2:	8ec9                	or	a3,a3,a0
1c0099b4:	00ff08b7          	lui	a7,0xff0
1c0099b8:	00ff0537          	lui	a0,0xff0
1c0099bc:	011778b3          	and	a7,a4,a7
1c0099c0:	8d7d                	and	a0,a0,a5
1c0099c2:	01467633          	and	a2,a2,s4
1c0099c6:	0146f6b3          	and	a3,a3,s4
1c0099ca:	01166633          	or	a2,a2,a7
1c0099ce:	8ec9                	or	a3,a3,a0
1c0099d0:	8361                	srli	a4,a4,0x18
1c0099d2:	83e1                	srli	a5,a5,0x18
1c0099d4:	01367633          	and	a2,a2,s3
1c0099d8:	0136f6b3          	and	a3,a3,s3
1c0099dc:	0762                	slli	a4,a4,0x18
1c0099de:	07e2                	slli	a5,a5,0x18
1c0099e0:	8f51                	or	a4,a4,a2
1c0099e2:	8fd5                	or	a5,a5,a3
1c0099e4:	00875e13          	srli	t3,a4,0x8
1c0099e8:	01075313          	srli	t1,a4,0x10
1c0099ec:	0087d893          	srli	a7,a5,0x8
1c0099f0:	0107d513          	srli	a0,a5,0x10
1c0099f4:	8361                	srli	a4,a4,0x18
1c0099f6:	83e1                	srli	a5,a5,0x18
1c0099f8:	fec80e23          	sb	a2,-4(a6)
1c0099fc:	ffc80ea3          	sb	t3,-3(a6)
1c009a00:	fe680f23          	sb	t1,-2(a6)
1c009a04:	fee80fa3          	sb	a4,-1(a6)
1c009a08:	00d80023          	sb	a3,0(a6)
1c009a0c:	011800a3          	sb	a7,1(a6)
1c009a10:	00a80123          	sb	a0,2(a6)
1c009a14:	00f801a3          	sb	a5,3(a6)
1c009a18:	0821                	addi	a6,a6,8
1c009a1a:	f6b415e3          	bne	s0,a1,1c009984 <shake128_squeezeblocks+0x3e>
1c009a1e:	14fd                	addi	s1,s1,-1
1c009a20:	0a890913          	addi	s2,s2,168
1c009a24:	f8b1                	bnez	s1,1c009978 <shake128_squeezeblocks+0x32>
1c009a26:	40f2                	lw	ra,28(sp)
1c009a28:	4462                	lw	s0,24(sp)
1c009a2a:	44d2                	lw	s1,20(sp)
1c009a2c:	4942                	lw	s2,16(sp)
1c009a2e:	49b2                	lw	s3,12(sp)
1c009a30:	4a22                	lw	s4,8(sp)
1c009a32:	4a92                	lw	s5,4(sp)
1c009a34:	4b02                	lw	s6,0(sp)
1c009a36:	6105                	addi	sp,sp,32
1c009a38:	8082                	ret

1c009a3a <shake128_ctx_release>:
1c009a3a:	4108                	lw	a0,0(a0)
1c009a3c:	0c800593          	li	a1,200
1c009a40:	1180306f          	j	1c00cb58 <pi_l2_free>

1c009a44 <shake256>:
1c009a44:	7131                	addi	sp,sp,-192
1c009a46:	db26                	sw	s1,180(sp)
1c009a48:	d74e                	sw	s3,172(sp)
1c009a4a:	84aa                	mv	s1,a0
1c009a4c:	08800993          	li	s3,136
1c009a50:	0c800513          	li	a0,200
1c009a54:	dd22                	sw	s0,184(sp)
1c009a56:	d94a                	sw	s2,176(sp)
1c009a58:	d356                	sw	s5,164(sp)
1c009a5a:	df06                	sw	ra,188(sp)
1c009a5c:	d552                	sw	s4,168(sp)
1c009a5e:	d15a                	sw	s6,160(sp)
1c009a60:	cf5e                	sw	s7,156(sp)
1c009a62:	cd62                	sw	s8,152(sp)
1c009a64:	0335d9b3          	divu	s3,a1,s3
1c009a68:	892e                	mv	s2,a1
1c009a6a:	8432                	mv	s0,a2
1c009a6c:	8ab6                	mv	s5,a3
1c009a6e:	0de030ef          	jal	ra,1c00cb4c <pi_l2_malloc>
1c009a72:	24050763          	beqz	a0,1c009cc0 <shake256+0x27c>
1c009a76:	46fd                	li	a3,31
1c009a78:	8656                	mv	a2,s5
1c009a7a:	85a2                	mv	a1,s0
1c009a7c:	8a2a                	mv	s4,a0
1c009a7e:	3601                	jal	1c00957e <keccak_absorb.constprop.1>
1c009a80:	08700793          	li	a5,135
1c009a84:	0d27ff63          	bgeu	a5,s2,1c009b62 <shake256+0x11e>
1c009a88:	00499413          	slli	s0,s3,0x4
1c009a8c:	944e                	add	s0,s0,s3
1c009a8e:	040e                	slli	s0,s0,0x3
1c009a90:	7bc1                	lui	s7,0xffff0
1c009a92:	ff010b37          	lui	s6,0xff010
1c009a96:	01000ab7          	lui	s5,0x1000
1c009a9a:	9426                	add	s0,s0,s1
1c009a9c:	8c26                	mv	s8,s1
1c009a9e:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009aa2:	1b7d                	addi	s6,s6,-1
1c009aa4:	1afd                	addi	s5,s5,-1
1c009aa6:	85d2                	mv	a1,s4
1c009aa8:	8552                	mv	a0,s4
1c009aaa:	80dff0ef          	jal	ra,1c0092b6 <KeccakF1600_StatePermute>
1c009aae:	87e2                	mv	a5,s8
1c009ab0:	418a0533          	sub	a0,s4,s8
1c009ab4:	088c0593          	addi	a1,s8,136
1c009ab8:	00f50733          	add	a4,a0,a5
1c009abc:	4314                	lw	a3,0(a4)
1c009abe:	4358                	lw	a4,4(a4)
1c009ac0:	07a1                	addi	a5,a5,8
1c009ac2:	0086d313          	srli	t1,a3,0x8
1c009ac6:	00875893          	srli	a7,a4,0x8
1c009aca:	0ff6f813          	andi	a6,a3,255
1c009ace:	0ff77613          	andi	a2,a4,255
1c009ad2:	0ff37313          	andi	t1,t1,255
1c009ad6:	0ff8f893          	andi	a7,a7,255
1c009ada:	0322                	slli	t1,t1,0x8
1c009adc:	08a2                	slli	a7,a7,0x8
1c009ade:	01787833          	and	a6,a6,s7
1c009ae2:	01767633          	and	a2,a2,s7
1c009ae6:	00686833          	or	a6,a6,t1
1c009aea:	01166633          	or	a2,a2,a7
1c009aee:	00ff0337          	lui	t1,0xff0
1c009af2:	00ff08b7          	lui	a7,0xff0
1c009af6:	0066f333          	and	t1,a3,t1
1c009afa:	011778b3          	and	a7,a4,a7
1c009afe:	01687833          	and	a6,a6,s6
1c009b02:	01667633          	and	a2,a2,s6
1c009b06:	00686833          	or	a6,a6,t1
1c009b0a:	01166633          	or	a2,a2,a7
1c009b0e:	82e1                	srli	a3,a3,0x18
1c009b10:	8361                	srli	a4,a4,0x18
1c009b12:	01587833          	and	a6,a6,s5
1c009b16:	01567633          	and	a2,a2,s5
1c009b1a:	06e2                	slli	a3,a3,0x18
1c009b1c:	0762                	slli	a4,a4,0x18
1c009b1e:	00d866b3          	or	a3,a6,a3
1c009b22:	8f51                	or	a4,a4,a2
1c009b24:	0086de93          	srli	t4,a3,0x8
1c009b28:	0106de13          	srli	t3,a3,0x10
1c009b2c:	00875313          	srli	t1,a4,0x8
1c009b30:	01075893          	srli	a7,a4,0x10
1c009b34:	82e1                	srli	a3,a3,0x18
1c009b36:	8361                	srli	a4,a4,0x18
1c009b38:	ff078c23          	sb	a6,-8(a5)
1c009b3c:	ffd78ca3          	sb	t4,-7(a5)
1c009b40:	ffc78d23          	sb	t3,-6(a5)
1c009b44:	fed78da3          	sb	a3,-5(a5)
1c009b48:	fec78e23          	sb	a2,-4(a5)
1c009b4c:	fe678ea3          	sb	t1,-3(a5)
1c009b50:	ff178f23          	sb	a7,-2(a5)
1c009b54:	fee78fa3          	sb	a4,-1(a5)
1c009b58:	f6f590e3          	bne	a1,a5,1c009ab8 <shake256+0x74>
1c009b5c:	8c2e                	mv	s8,a1
1c009b5e:	f48594e3          	bne	a1,s0,1c009aa6 <shake256+0x62>
1c009b62:	08800593          	li	a1,136
1c009b66:	02b97933          	remu	s2,s2,a1
1c009b6a:	02091263          	bnez	s2,1c009b8e <shake256+0x14a>
1c009b6e:	546a                	lw	s0,184(sp)
1c009b70:	50fa                	lw	ra,188(sp)
1c009b72:	54da                	lw	s1,180(sp)
1c009b74:	594a                	lw	s2,176(sp)
1c009b76:	59ba                	lw	s3,172(sp)
1c009b78:	5a9a                	lw	s5,164(sp)
1c009b7a:	5b0a                	lw	s6,160(sp)
1c009b7c:	4bfa                	lw	s7,156(sp)
1c009b7e:	4c6a                	lw	s8,152(sp)
1c009b80:	8552                	mv	a0,s4
1c009b82:	5a2a                	lw	s4,168(sp)
1c009b84:	0c800593          	li	a1,200
1c009b88:	6129                	addi	sp,sp,192
1c009b8a:	7cf0206f          	j	1c00cb58 <pi_l2_free>
1c009b8e:	85d2                	mv	a1,s4
1c009b90:	8552                	mv	a0,s4
1c009b92:	f24ff0ef          	jal	ra,1c0092b6 <KeccakF1600_StatePermute>
1c009b96:	002c                	addi	a1,sp,8
1c009b98:	78c1                	lui	a7,0xffff0
1c009b9a:	ff010837          	lui	a6,0xff010
1c009b9e:	01000537          	lui	a0,0x1000
1c009ba2:	09010e13          	addi	t3,sp,144
1c009ba6:	862e                	mv	a2,a1
1c009ba8:	40ba0333          	sub	t1,s4,a1
1c009bac:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009bb0:	187d                	addi	a6,a6,-1
1c009bb2:	157d                	addi	a0,a0,-1
1c009bb4:	00c307b3          	add	a5,t1,a2
1c009bb8:	0007ae83          	lw	t4,0(a5)
1c009bbc:	43d4                	lw	a3,4(a5)
1c009bbe:	0621                	addi	a2,a2,8
1c009bc0:	008edf93          	srli	t6,t4,0x8
1c009bc4:	0086df13          	srli	t5,a3,0x8
1c009bc8:	0ffef713          	andi	a4,t4,255
1c009bcc:	0ff6f793          	andi	a5,a3,255
1c009bd0:	0fffff93          	andi	t6,t6,255
1c009bd4:	0fff7f13          	andi	t5,t5,255
1c009bd8:	0fa2                	slli	t6,t6,0x8
1c009bda:	0f22                	slli	t5,t5,0x8
1c009bdc:	01177733          	and	a4,a4,a7
1c009be0:	0117f7b3          	and	a5,a5,a7
1c009be4:	01f76733          	or	a4,a4,t6
1c009be8:	01e7e7b3          	or	a5,a5,t5
1c009bec:	00ff0fb7          	lui	t6,0xff0
1c009bf0:	00ff0f37          	lui	t5,0xff0
1c009bf4:	01feffb3          	and	t6,t4,t6
1c009bf8:	01e6ff33          	and	t5,a3,t5
1c009bfc:	01077733          	and	a4,a4,a6
1c009c00:	0107f7b3          	and	a5,a5,a6
1c009c04:	01f76733          	or	a4,a4,t6
1c009c08:	018ede93          	srli	t4,t4,0x18
1c009c0c:	01e7e7b3          	or	a5,a5,t5
1c009c10:	82e1                	srli	a3,a3,0x18
1c009c12:	0ee2                	slli	t4,t4,0x18
1c009c14:	8f69                	and	a4,a4,a0
1c009c16:	06e2                	slli	a3,a3,0x18
1c009c18:	8fe9                	and	a5,a5,a0
1c009c1a:	01d76733          	or	a4,a4,t4
1c009c1e:	8fd5                	or	a5,a5,a3
1c009c20:	fee62c23          	sw	a4,-8(a2)
1c009c24:	fef62e23          	sw	a5,-4(a2)
1c009c28:	f8ce16e3          	bne	t3,a2,1c009bb4 <shake256+0x170>
1c009c2c:	fff90793          	addi	a5,s2,-1
1c009c30:	4709                	li	a4,2
1c009c32:	08f77363          	bgeu	a4,a5,1c009cb8 <shake256+0x274>
1c009c36:	00499413          	slli	s0,s3,0x4
1c009c3a:	013407b3          	add	a5,s0,s3
1c009c3e:	078e                	slli	a5,a5,0x3
1c009c40:	97a6                	add	a5,a5,s1
1c009c42:	0fc97813          	andi	a6,s2,252
1c009c46:	983e                	add	a6,a6,a5
1c009c48:	4198                	lw	a4,0(a1)
1c009c4a:	0791                	addi	a5,a5,4
1c009c4c:	0591                	addi	a1,a1,4
1c009c4e:	00875513          	srli	a0,a4,0x8
1c009c52:	01075613          	srli	a2,a4,0x10
1c009c56:	01875693          	srli	a3,a4,0x18
1c009c5a:	fea78ea3          	sb	a0,-3(a5)
1c009c5e:	fec78f23          	sb	a2,-2(a5)
1c009c62:	fed78fa3          	sb	a3,-1(a5)
1c009c66:	fee78e23          	sb	a4,-4(a5)
1c009c6a:	fcf81fe3          	bne	a6,a5,1c009c48 <shake256+0x204>
1c009c6e:	ffc97793          	andi	a5,s2,-4
1c009c72:	eef90ee3          	beq	s2,a5,1c009b6e <shake256+0x12a>
1c009c76:	0918                	addi	a4,sp,144
1c009c78:	973e                	add	a4,a4,a5
1c009c7a:	99a2                	add	s3,s3,s0
1c009c7c:	f7874683          	lbu	a3,-136(a4)
1c009c80:	098e                	slli	s3,s3,0x3
1c009c82:	99a6                	add	s3,s3,s1
1c009c84:	00f98733          	add	a4,s3,a5
1c009c88:	00d70023          	sb	a3,0(a4)
1c009c8c:	00178713          	addi	a4,a5,1
1c009c90:	ed277fe3          	bgeu	a4,s2,1c009b6e <shake256+0x12a>
1c009c94:	0914                	addi	a3,sp,144
1c009c96:	96ba                	add	a3,a3,a4
1c009c98:	f786c683          	lbu	a3,-136(a3)
1c009c9c:	974e                	add	a4,a4,s3
1c009c9e:	0789                	addi	a5,a5,2
1c009ca0:	00d70023          	sb	a3,0(a4)
1c009ca4:	ed27f5e3          	bgeu	a5,s2,1c009b6e <shake256+0x12a>
1c009ca8:	0918                	addi	a4,sp,144
1c009caa:	973e                	add	a4,a4,a5
1c009cac:	f7874703          	lbu	a4,-136(a4)
1c009cb0:	99be                	add	s3,s3,a5
1c009cb2:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c009cb6:	bd65                	j	1c009b6e <shake256+0x12a>
1c009cb8:	4781                	li	a5,0
1c009cba:	00499413          	slli	s0,s3,0x4
1c009cbe:	bf65                	j	1c009c76 <shake256+0x232>
1c009cc0:	06f00513          	li	a0,111
1c009cc4:	555010ef          	jal	ra,1c00ba18 <exit>

1c009cc8 <sha3_256>:
1c009cc8:	712d                	addi	sp,sp,-288
1c009cca:	10812c23          	sw	s0,280(sp)
1c009cce:	4699                	li	a3,6
1c009cd0:	842a                	mv	s0,a0
1c009cd2:	0828                	addi	a0,sp,24
1c009cd4:	10112e23          	sw	ra,284(sp)
1c009cd8:	10912a23          	sw	s1,276(sp)
1c009cdc:	11212823          	sw	s2,272(sp)
1c009ce0:	11312623          	sw	s3,268(sp)
1c009ce4:	11412423          	sw	s4,264(sp)
1c009ce8:	11512223          	sw	s5,260(sp)
1c009cec:	11612023          	sw	s6,256(sp)
1c009cf0:	dfde                	sw	s7,252(sp)
1c009cf2:	dde2                	sw	s8,248(sp)
1c009cf4:	dbe6                	sw	s9,244(sp)
1c009cf6:	d9ea                	sw	s10,240(sp)
1c009cf8:	d7ee                	sw	s11,236(sp)
1c009cfa:	3051                	jal	1c00957e <keccak_absorb.constprop.1>
1c009cfc:	082c                	addi	a1,sp,24
1c009cfe:	852e                	mv	a0,a1
1c009d00:	db6ff0ef          	jal	ra,1c0092b6 <KeccakF1600_StatePermute>
1c009d04:	4372                	lw	t1,28(sp)
1c009d06:	5612                	lw	a2,36(sp)
1c009d08:	5732                	lw	a4,44(sp)
1c009d0a:	5582                	lw	a1,32(sp)
1c009d0c:	56a2                	lw	a3,40(sp)
1c009d0e:	59d2                	lw	s3,52(sp)
1c009d10:	4ae2                	lw	s5,24(sp)
1c009d12:	00835293          	srli	t0,t1,0x8
1c009d16:	00865f13          	srli	t5,a2,0x8
1c009d1a:	00875893          	srli	a7,a4,0x8
1c009d1e:	5a42                	lw	s4,48(sp)
1c009d20:	0085df93          	srli	t6,a1,0x8
1c009d24:	0086de93          	srli	t4,a3,0x8
1c009d28:	0ff2f293          	andi	t0,t0,255
1c009d2c:	0fff7f13          	andi	t5,t5,255
1c009d30:	0ff8f893          	andi	a7,a7,255
1c009d34:	0ff37b93          	andi	s7,t1,255
1c009d38:	0ff67913          	andi	s2,a2,255
1c009d3c:	0ff77e13          	andi	t3,a4,255
1c009d40:	008ad393          	srli	t2,s5,0x8
1c009d44:	0089d513          	srli	a0,s3,0x8
1c009d48:	0fffff93          	andi	t6,t6,255
1c009d4c:	0ffefe93          	andi	t4,t4,255
1c009d50:	02a2                	slli	t0,t0,0x8
1c009d52:	0f22                	slli	t5,t5,0x8
1c009d54:	08a2                	slli	a7,a7,0x8
1c009d56:	ff0107b7          	lui	a5,0xff010
1c009d5a:	17fd                	addi	a5,a5,-1
1c009d5c:	0ff5fb13          	andi	s6,a1,255
1c009d60:	0ff6f493          	andi	s1,a3,255
1c009d64:	005be2b3          	or	t0,s7,t0
1c009d68:	01e96f33          	or	t5,s2,t5
1c009d6c:	011e68b3          	or	a7,t3,a7
1c009d70:	0ff3f393          	andi	t2,t2,255
1c009d74:	0fa2                	slli	t6,t6,0x8
1c009d76:	0ea2                	slli	t4,t4,0x8
1c009d78:	0ff57513          	andi	a0,a0,255
1c009d7c:	00ff0bb7          	lui	s7,0xff0
1c009d80:	0ffafc13          	andi	s8,s5,255
1c009d84:	0ff9f913          	andi	s2,s3,255
1c009d88:	01767bb3          	and	s7,a2,s7
1c009d8c:	00f8fe33          	and	t3,a7,a5
1c009d90:	008a5813          	srli	a6,s4,0x8
1c009d94:	01fb6fb3          	or	t6,s6,t6
1c009d98:	01d4eeb3          	or	t4,s1,t4
1c009d9c:	00ff7f33          	and	t5,t5,a5
1c009da0:	010008b7          	lui	a7,0x1000
1c009da4:	03a2                	slli	t2,t2,0x8
1c009da6:	0522                	slli	a0,a0,0x8
1c009da8:	00ff04b7          	lui	s1,0xff0
1c009dac:	00ff0b37          	lui	s6,0xff0
1c009db0:	8cf5                	and	s1,s1,a3
1c009db2:	01677b33          	and	s6,a4,s6
1c009db6:	00a96533          	or	a0,s2,a0
1c009dba:	007c63b3          	or	t2,s8,t2
1c009dbe:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c009dc2:	00fefeb3          	and	t4,t4,a5
1c009dc6:	017f6f33          	or	t5,t5,s7
1c009dca:	0ff87813          	andi	a6,a6,255
1c009dce:	00ff0c37          	lui	s8,0xff0
1c009dd2:	8261                	srli	a2,a2,0x18
1c009dd4:	0ffa7d93          	andi	s11,s4,255
1c009dd8:	0185fc33          	and	s8,a1,s8
1c009ddc:	012f7f33          	and	t5,t5,s2
1c009de0:	00ffffb3          	and	t6,t6,a5
1c009de4:	009eeeb3          	or	t4,t4,s1
1c009de8:	016e6e33          	or	t3,t3,s6
1c009dec:	8361                	srli	a4,a4,0x18
1c009dee:	0822                	slli	a6,a6,0x8
1c009df0:	00ff0d37          	lui	s10,0xff0
1c009df4:	82e1                	srli	a3,a3,0x18
1c009df6:	0662                	slli	a2,a2,0x18
1c009df8:	01aafd33          	and	s10,s5,s10
1c009dfc:	010de833          	or	a6,s11,a6
1c009e00:	012efeb3          	and	t4,t4,s2
1c009e04:	012e7e33          	and	t3,t3,s2
1c009e08:	00cf6633          	or	a2,t5,a2
1c009e0c:	018ada93          	srli	s5,s5,0x18
1c009e10:	018fefb3          	or	t6,t6,s8
1c009e14:	06e2                	slli	a3,a3,0x18
1c009e16:	01871c13          	slli	s8,a4,0x18
1c009e1a:	00ff0bb7          	lui	s7,0xff0
1c009e1e:	00f87b33          	and	s6,a6,a5
1c009e22:	00dee4b3          	or	s1,t4,a3
1c009e26:	017a7bb3          	and	s7,s4,s7
1c009e2a:	018e66b3          	or	a3,t3,s8
1c009e2e:	018a9813          	slli	a6,s5,0x18
1c009e32:	018a5713          	srli	a4,s4,0x18
1c009e36:	00865a93          	srli	s5,a2,0x8
1c009e3a:	01065a13          	srli	s4,a2,0x10
1c009e3e:	00ff0cb7          	lui	s9,0xff0
1c009e42:	8261                	srli	a2,a2,0x18
1c009e44:	c232                	sw	a2,4(sp)
1c009e46:	01937cb3          	and	s9,t1,s9
1c009e4a:	0086d613          	srli	a2,a3,0x8
1c009e4e:	00f3f3b3          	and	t2,t2,a5
1c009e52:	00f2f2b3          	and	t0,t0,a5
1c009e56:	c432                	sw	a2,8(sp)
1c009e58:	01a3e3b3          	or	t2,t2,s10
1c009e5c:	0106d613          	srli	a2,a3,0x10
1c009e60:	0192e2b3          	or	t0,t0,s9
1c009e64:	01835313          	srli	t1,t1,0x18
1c009e68:	81e1                	srli	a1,a1,0x18
1c009e6a:	00ff08b7          	lui	a7,0xff0
1c009e6e:	8fe9                	and	a5,a5,a0
1c009e70:	0123f3b3          	and	t2,t2,s2
1c009e74:	0122f2b3          	and	t0,t0,s2
1c009e78:	012fffb3          	and	t6,t6,s2
1c009e7c:	c632                	sw	a2,12(sp)
1c009e7e:	0119f8b3          	and	a7,s3,a7
1c009e82:	4612                	lw	a2,4(sp)
1c009e84:	01831513          	slli	a0,t1,0x18
1c009e88:	05e2                	slli	a1,a1,0x18
1c009e8a:	017b6333          	or	t1,s6,s7
1c009e8e:	0103e833          	or	a6,t2,a6
1c009e92:	00a2e533          	or	a0,t0,a0
1c009e96:	00bfe5b3          	or	a1,t6,a1
1c009e9a:	0117e8b3          	or	a7,a5,a7
1c009e9e:	01237333          	and	t1,t1,s2
1c009ea2:	0128f8b3          	and	a7,a7,s2
1c009ea6:	00885d93          	srli	s11,a6,0x8
1c009eaa:	01085d13          	srli	s10,a6,0x10
1c009eae:	00855c93          	srli	s9,a0,0x8
1c009eb2:	01055c13          	srli	s8,a0,0x10
1c009eb6:	0085db93          	srli	s7,a1,0x8
1c009eba:	0105db13          	srli	s6,a1,0x10
1c009ebe:	0104d913          	srli	s2,s1,0x10
1c009ec2:	0189d793          	srli	a5,s3,0x18
1c009ec6:	8161                	srli	a0,a0,0x18
1c009ec8:	0084d993          	srli	s3,s1,0x8
1c009ecc:	81e1                	srli	a1,a1,0x18
1c009ece:	80e1                	srli	s1,s1,0x18
1c009ed0:	01885813          	srli	a6,a6,0x18
1c009ed4:	01b400a3          	sb	s11,1(s0)
1c009ed8:	01a40123          	sb	s10,2(s0)
1c009edc:	019402a3          	sb	s9,5(s0)
1c009ee0:	01840323          	sb	s8,6(s0)
1c009ee4:	00a403a3          	sb	a0,7(s0)
1c009ee8:	017404a3          	sb	s7,9(s0)
1c009eec:	01640523          	sb	s6,10(s0)
1c009ef0:	00b405a3          	sb	a1,11(s0)
1c009ef4:	015406a3          	sb	s5,13(s0)
1c009ef8:	01440723          	sb	s4,14(s0)
1c009efc:	00c407a3          	sb	a2,15(s0)
1c009f00:	013408a3          	sb	s3,17(s0)
1c009f04:	01240923          	sb	s2,18(s0)
1c009f08:	009409a3          	sb	s1,19(s0)
1c009f0c:	00740023          	sb	t2,0(s0)
1c009f10:	010401a3          	sb	a6,3(s0)
1c009f14:	00540223          	sb	t0,4(s0)
1c009f18:	01f40423          	sb	t6,8(s0)
1c009f1c:	01e40623          	sb	t5,12(s0)
1c009f20:	01d40823          	sb	t4,16(s0)
1c009f24:	01c40a23          	sb	t3,20(s0)
1c009f28:	4622                	lw	a2,8(sp)
1c009f2a:	0762                	slli	a4,a4,0x18
1c009f2c:	07e2                	slli	a5,a5,0x18
1c009f2e:	00c40aa3          	sb	a2,21(s0)
1c009f32:	4632                	lw	a2,12(sp)
1c009f34:	00e36733          	or	a4,t1,a4
1c009f38:	00f8e7b3          	or	a5,a7,a5
1c009f3c:	82e1                	srli	a3,a3,0x18
1c009f3e:	00c40b23          	sb	a2,22(s0)
1c009f42:	00d40ba3          	sb	a3,23(s0)
1c009f46:	00875513          	srli	a0,a4,0x8
1c009f4a:	01075593          	srli	a1,a4,0x10
1c009f4e:	0087d613          	srli	a2,a5,0x8
1c009f52:	0107d693          	srli	a3,a5,0x10
1c009f56:	8361                	srli	a4,a4,0x18
1c009f58:	83e1                	srli	a5,a5,0x18
1c009f5a:	00640c23          	sb	t1,24(s0)
1c009f5e:	00a40ca3          	sb	a0,25(s0)
1c009f62:	00b40d23          	sb	a1,26(s0)
1c009f66:	00e40da3          	sb	a4,27(s0)
1c009f6a:	01140e23          	sb	a7,28(s0)
1c009f6e:	00c40ea3          	sb	a2,29(s0)
1c009f72:	00d40f23          	sb	a3,30(s0)
1c009f76:	00f40fa3          	sb	a5,31(s0)
1c009f7a:	11c12083          	lw	ra,284(sp)
1c009f7e:	11812403          	lw	s0,280(sp)
1c009f82:	11412483          	lw	s1,276(sp)
1c009f86:	11012903          	lw	s2,272(sp)
1c009f8a:	10c12983          	lw	s3,268(sp)
1c009f8e:	10812a03          	lw	s4,264(sp)
1c009f92:	10412a83          	lw	s5,260(sp)
1c009f96:	10012b03          	lw	s6,256(sp)
1c009f9a:	5bfe                	lw	s7,252(sp)
1c009f9c:	5c6e                	lw	s8,248(sp)
1c009f9e:	5cde                	lw	s9,244(sp)
1c009fa0:	5d4e                	lw	s10,240(sp)
1c009fa2:	5dbe                	lw	s11,236(sp)
1c009fa4:	6115                	addi	sp,sp,288
1c009fa6:	8082                	ret

1c009fa8 <sha3_512>:
1c009fa8:	7105                	addi	sp,sp,-480
1c009faa:	1c812c23          	sw	s0,472(sp)
1c009fae:	1d312623          	sw	s3,460(sp)
1c009fb2:	1d412423          	sw	s4,456(sp)
1c009fb6:	1c112e23          	sw	ra,476(sp)
1c009fba:	1c912a23          	sw	s1,468(sp)
1c009fbe:	1d212823          	sw	s2,464(sp)
1c009fc2:	1d512223          	sw	s5,452(sp)
1c009fc6:	1d612023          	sw	s6,448(sp)
1c009fca:	1b712e23          	sw	s7,444(sp)
1c009fce:	1b812c23          	sw	s8,440(sp)
1c009fd2:	1b912a23          	sw	s9,436(sp)
1c009fd6:	1ba12823          	sw	s10,432(sp)
1c009fda:	1bb12623          	sw	s11,428(sp)
1c009fde:	842a                	mv	s0,a0
1c009fe0:	8a32                	mv	s4,a2
1c009fe2:	0d810993          	addi	s3,sp,216
1c009fe6:	081c                	addi	a5,sp,16
1c009fe8:	4681                	li	a3,0
1c009fea:	4701                	li	a4,0
1c009fec:	c394                	sw	a3,0(a5)
1c009fee:	c3d8                	sw	a4,4(a5)
1c009ff0:	07a1                	addi	a5,a5,8
1c009ff2:	ff379be3          	bne	a5,s3,1c009fe8 <sha3_512+0x40>
1c009ff6:	04700793          	li	a5,71
1c009ffa:	0947f463          	bgeu	a5,s4,1c00a082 <sha3_512+0xda>
1c009ffe:	04858a93          	addi	s5,a1,72
1c00a002:	8956                	mv	s2,s5
1c00a004:	04700493          	li	s1,71
1c00a008:	0818                	addi	a4,sp,16
1c00a00a:	0015c783          	lbu	a5,1(a1)
1c00a00e:	0025ce03          	lbu	t3,2(a1)
1c00a012:	0055c803          	lbu	a6,5(a1)
1c00a016:	0045cf03          	lbu	t5,4(a1)
1c00a01a:	0065c503          	lbu	a0,6(a1)
1c00a01e:	0005ce83          	lbu	t4,0(a1)
1c00a022:	0035c603          	lbu	a2,3(a1)
1c00a026:	0075c683          	lbu	a3,7(a1)
1c00a02a:	07a2                	slli	a5,a5,0x8
1c00a02c:	0e42                	slli	t3,t3,0x10
1c00a02e:	0822                	slli	a6,a6,0x8
1c00a030:	00072303          	lw	t1,0(a4)
1c00a034:	00472883          	lw	a7,4(a4)
1c00a038:	01c7e7b3          	or	a5,a5,t3
1c00a03c:	01e86833          	or	a6,a6,t5
1c00a040:	0542                	slli	a0,a0,0x10
1c00a042:	01d7e7b3          	or	a5,a5,t4
1c00a046:	0662                	slli	a2,a2,0x18
1c00a048:	01056533          	or	a0,a0,a6
1c00a04c:	06e2                	slli	a3,a3,0x18
1c00a04e:	8fd1                	or	a5,a5,a2
1c00a050:	8ec9                	or	a3,a3,a0
1c00a052:	00f347b3          	xor	a5,t1,a5
1c00a056:	00d8c6b3          	xor	a3,a7,a3
1c00a05a:	c31c                	sw	a5,0(a4)
1c00a05c:	c354                	sw	a3,4(a4)
1c00a05e:	05a1                	addi	a1,a1,8
1c00a060:	0721                	addi	a4,a4,8
1c00a062:	fb2594e3          	bne	a1,s2,1c00a00a <sha3_512+0x62>
1c00a066:	080c                	addi	a1,sp,16
1c00a068:	852e                	mv	a0,a1
1c00a06a:	a4cff0ef          	jal	ra,1c0092b6 <KeccakF1600_StatePermute>
1c00a06e:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c00a072:	04890913          	addi	s2,s2,72
1c00a076:	85d6                	mv	a1,s5
1c00a078:	0144f563          	bgeu	s1,s4,1c00a082 <sha3_512+0xda>
1c00a07c:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c00a080:	b761                	j	1c00a008 <sha3_512+0x60>
1c00a082:	1218                	addi	a4,sp,288
1c00a084:	87ce                	mv	a5,s3
1c00a086:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c00a08a:	0791                	addi	a5,a5,4
1c00a08c:	fee79de3          	bne	a5,a4,1c00a086 <sha3_512+0xde>
1c00a090:	080a0063          	beqz	s4,1c00a110 <sha3_512+0x168>
1c00a094:	fffa0793          	addi	a5,s4,-1
1c00a098:	4709                	li	a4,2
1c00a09a:	68f77563          	bgeu	a4,a5,1c00a724 <sha3_512+0x77c>
1c00a09e:	ffca7813          	andi	a6,s4,-4
1c00a0a2:	87ae                	mv	a5,a1
1c00a0a4:	982e                	add	a6,a6,a1
1c00a0a6:	0017c603          	lbu	a2,1(a5)
1c00a0aa:	0007c503          	lbu	a0,0(a5)
1c00a0ae:	0027c683          	lbu	a3,2(a5)
1c00a0b2:	0037c703          	lbu	a4,3(a5)
1c00a0b6:	0622                	slli	a2,a2,0x8
1c00a0b8:	8e49                	or	a2,a2,a0
1c00a0ba:	06c2                	slli	a3,a3,0x10
1c00a0bc:	8ed1                	or	a3,a3,a2
1c00a0be:	0762                	slli	a4,a4,0x18
1c00a0c0:	8f55                	or	a4,a4,a3
1c00a0c2:	00e9a023          	sw	a4,0(s3)
1c00a0c6:	0791                	addi	a5,a5,4
1c00a0c8:	0991                	addi	s3,s3,4
1c00a0ca:	fd079ee3          	bne	a5,a6,1c00a0a6 <sha3_512+0xfe>
1c00a0ce:	ffca7793          	andi	a5,s4,-4
1c00a0d2:	03478f63          	beq	a5,s4,1c00a110 <sha3_512+0x168>
1c00a0d6:	00f58733          	add	a4,a1,a5
1c00a0da:	00074603          	lbu	a2,0(a4)
1c00a0de:	1314                	addi	a3,sp,416
1c00a0e0:	96be                	add	a3,a3,a5
1c00a0e2:	00178713          	addi	a4,a5,1
1c00a0e6:	f2c68c23          	sb	a2,-200(a3)
1c00a0ea:	03477363          	bgeu	a4,s4,1c00a110 <sha3_512+0x168>
1c00a0ee:	00e586b3          	add	a3,a1,a4
1c00a0f2:	0006c683          	lbu	a3,0(a3)
1c00a0f6:	1310                	addi	a2,sp,416
1c00a0f8:	9732                	add	a4,a4,a2
1c00a0fa:	0789                	addi	a5,a5,2
1c00a0fc:	f2d70c23          	sb	a3,-200(a4)
1c00a100:	0147f863          	bgeu	a5,s4,1c00a110 <sha3_512+0x168>
1c00a104:	95be                	add	a1,a1,a5
1c00a106:	0005c703          	lbu	a4,0(a1)
1c00a10a:	97b2                	add	a5,a5,a2
1c00a10c:	f2e78c23          	sb	a4,-200(a5)
1c00a110:	131c                	addi	a5,sp,416
1c00a112:	9a3e                	add	s4,s4,a5
1c00a114:	4799                	li	a5,6
1c00a116:	f2fa0c23          	sb	a5,-200(s4)
1c00a11a:	0da14703          	lbu	a4,218(sp)
1c00a11e:	0d914f83          	lbu	t6,217(sp)
1c00a122:	0e214783          	lbu	a5,226(sp)
1c00a126:	0e114e83          	lbu	t4,225(sp)
1c00a12a:	0e514303          	lbu	t1,229(sp)
1c00a12e:	0e414383          	lbu	t2,228(sp)
1c00a132:	0e614803          	lbu	a6,230(sp)
1c00a136:	0d814283          	lbu	t0,216(sp)
1c00a13a:	0e014f03          	lbu	t5,224(sp)
1c00a13e:	0db14503          	lbu	a0,219(sp)
1c00a142:	0e314603          	lbu	a2,227(sp)
1c00a146:	0e714683          	lbu	a3,231(sp)
1c00a14a:	0fa2                	slli	t6,t6,0x8
1c00a14c:	0ea2                	slli	t4,t4,0x8
1c00a14e:	0742                	slli	a4,a4,0x10
1c00a150:	07c2                	slli	a5,a5,0x10
1c00a152:	0322                	slli	t1,t1,0x8
1c00a154:	00736333          	or	t1,t1,t2
1c00a158:	01f76733          	or	a4,a4,t6
1c00a15c:	01d7e7b3          	or	a5,a5,t4
1c00a160:	0842                	slli	a6,a6,0x10
1c00a162:	0dd14e03          	lbu	t3,221(sp)
1c00a166:	00576733          	or	a4,a4,t0
1c00a16a:	01e7e7b3          	or	a5,a5,t5
1c00a16e:	00686833          	or	a6,a6,t1
1c00a172:	0662                	slli	a2,a2,0x18
1c00a174:	06e2                	slli	a3,a3,0x18
1c00a176:	0562                	slli	a0,a0,0x18
1c00a178:	0dc14483          	lbu	s1,220(sp)
1c00a17c:	0de14883          	lbu	a7,222(sp)
1c00a180:	8d59                	or	a0,a0,a4
1c00a182:	00f66733          	or	a4,a2,a5
1c00a186:	0106e7b3          	or	a5,a3,a6
1c00a18a:	46c2                	lw	a3,16(sp)
1c00a18c:	0df14583          	lbu	a1,223(sp)
1c00a190:	0e22                	slli	t3,t3,0x8
1c00a192:	009e6e33          	or	t3,t3,s1
1c00a196:	8d35                	xor	a0,a0,a3
1c00a198:	08c2                	slli	a7,a7,0x10
1c00a19a:	46d2                	lw	a3,20(sp)
1c00a19c:	01c8e8b3          	or	a7,a7,t3
1c00a1a0:	05e2                	slli	a1,a1,0x18
1c00a1a2:	0115e5b3          	or	a1,a1,a7
1c00a1a6:	8db5                	xor	a1,a1,a3
1c00a1a8:	46e2                	lw	a3,24(sp)
1c00a1aa:	0ea14803          	lbu	a6,234(sp)
1c00a1ae:	0e914483          	lbu	s1,233(sp)
1c00a1b2:	8eb9                	xor	a3,a3,a4
1c00a1b4:	4772                	lw	a4,28(sp)
1c00a1b6:	0e814a83          	lbu	s5,232(sp)
1c00a1ba:	0eb14a03          	lbu	s4,235(sp)
1c00a1be:	8f3d                	xor	a4,a4,a5
1c00a1c0:	0ec14d03          	lbu	s10,236(sp)
1c00a1c4:	11f14783          	lbu	a5,287(sp)
1c00a1c8:	0ed14903          	lbu	s2,237(sp)
1c00a1cc:	c82a                	sw	a0,16(sp)
1c00a1ce:	ca2e                	sw	a1,20(sp)
1c00a1d0:	cc36                	sw	a3,24(sp)
1c00a1d2:	ce3a                	sw	a4,28(sp)
1c00a1d4:	0ee14f83          	lbu	t6,238(sp)
1c00a1d8:	0f214283          	lbu	t0,242(sp)
1c00a1dc:	0f114f03          	lbu	t5,241(sp)
1c00a1e0:	0fd14883          	lbu	a7,253(sp)
1c00a1e4:	0fc14b83          	lbu	s7,252(sp)
1c00a1e8:	04a2                	slli	s1,s1,0x8
1c00a1ea:	0842                	slli	a6,a6,0x10
1c00a1ec:	02c2                	slli	t0,t0,0x10
1c00a1ee:	08a2                	slli	a7,a7,0x8
1c00a1f0:	00986833          	or	a6,a6,s1
1c00a1f4:	0f22                	slli	t5,t5,0x8
1c00a1f6:	01e2ef33          	or	t5,t0,t5
1c00a1fa:	01586833          	or	a6,a6,s5
1c00a1fe:	0178e2b3          	or	t0,a7,s7
1c00a202:	018a1893          	slli	a7,s4,0x18
1c00a206:	0108e833          	or	a6,a7,a6
1c00a20a:	5882                	lw	a7,32(sp)
1c00a20c:	0ef14503          	lbu	a0,239(sp)
1c00a210:	0922                	slli	s2,s2,0x8
1c00a212:	01a96933          	or	s2,s2,s10
1c00a216:	0108c8b3          	xor	a7,a7,a6
1c00a21a:	0fc2                	slli	t6,t6,0x10
1c00a21c:	5812                	lw	a6,36(sp)
1c00a21e:	0f014983          	lbu	s3,240(sp)
1c00a222:	0f314583          	lbu	a1,243(sp)
1c00a226:	012fefb3          	or	t6,t6,s2
1c00a22a:	0562                	slli	a0,a0,0x18
1c00a22c:	0f514e83          	lbu	t4,245(sp)
1c00a230:	01f56533          	or	a0,a0,t6
1c00a234:	0f414c83          	lbu	s9,244(sp)
1c00a238:	0f614c03          	lbu	s8,246(sp)
1c00a23c:	00a84833          	xor	a6,a6,a0
1c00a240:	5522                	lw	a0,40(sp)
1c00a242:	0f714603          	lbu	a2,247(sp)
1c00a246:	013f6f33          	or	t5,t5,s3
1c00a24a:	05e2                	slli	a1,a1,0x18
1c00a24c:	0f914e03          	lbu	t3,249(sp)
1c00a250:	0fa14303          	lbu	t1,250(sp)
1c00a254:	01e5e5b3          	or	a1,a1,t5
1c00a258:	0ea2                	slli	t4,t4,0x8
1c00a25a:	019ee4b3          	or	s1,t4,s9
1c00a25e:	8d2d                	xor	a0,a0,a1
1c00a260:	010c1e93          	slli	t4,s8,0x10
1c00a264:	55b2                	lw	a1,44(sp)
1c00a266:	0f814383          	lbu	t2,248(sp)
1c00a26a:	0fb14683          	lbu	a3,251(sp)
1c00a26e:	009eeeb3          	or	t4,t4,s1
1c00a272:	0662                	slli	a2,a2,0x18
1c00a274:	01d66633          	or	a2,a2,t4
1c00a278:	0342                	slli	t1,t1,0x10
1c00a27a:	0e22                	slli	t3,t3,0x8
1c00a27c:	0fe14b03          	lbu	s6,254(sp)
1c00a280:	8db1                	xor	a1,a1,a2
1c00a282:	006e6e33          	or	t3,t3,t1
1c00a286:	5642                	lw	a2,48(sp)
1c00a288:	0ff14703          	lbu	a4,255(sp)
1c00a28c:	007e6e33          	or	t3,t3,t2
1c00a290:	06e2                	slli	a3,a3,0x18
1c00a292:	01c6e6b3          	or	a3,a3,t3
1c00a296:	8e35                	xor	a2,a2,a3
1c00a298:	010b1313          	slli	t1,s6,0x10
1c00a29c:	56d2                	lw	a3,52(sp)
1c00a29e:	00536333          	or	t1,t1,t0
1c00a2a2:	0762                	slli	a4,a4,0x18
1c00a2a4:	00676733          	or	a4,a4,t1
1c00a2a8:	8f35                	xor	a4,a4,a3
1c00a2aa:	10114e83          	lbu	t4,257(sp)
1c00a2ae:	10214a83          	lbu	s5,258(sp)
1c00a2b2:	d046                	sw	a7,32(sp)
1c00a2b4:	d242                	sw	a6,36(sp)
1c00a2b6:	d42a                	sw	a0,40(sp)
1c00a2b8:	d62e                	sw	a1,44(sp)
1c00a2ba:	d832                	sw	a2,48(sp)
1c00a2bc:	da3a                	sw	a4,52(sp)
1c00a2be:	10014903          	lbu	s2,256(sp)
1c00a2c2:	10914303          	lbu	t1,265(sp)
1c00a2c6:	10a14983          	lbu	s3,266(sp)
1c00a2ca:	10814383          	lbu	t2,264(sp)
1c00a2ce:	10514f83          	lbu	t6,261(sp)
1c00a2d2:	10b14603          	lbu	a2,267(sp)
1c00a2d6:	10414b03          	lbu	s6,260(sp)
1c00a2da:	10614e03          	lbu	t3,262(sp)
1c00a2de:	09c2                	slli	s3,s3,0x10
1c00a2e0:	0322                	slli	t1,t1,0x8
1c00a2e2:	10714583          	lbu	a1,263(sp)
1c00a2e6:	01336333          	or	t1,t1,s3
1c00a2ea:	00736333          	or	t1,t1,t2
1c00a2ee:	10d14f03          	lbu	t5,269(sp)
1c00a2f2:	0fa2                	slli	t6,t6,0x8
1c00a2f4:	0662                	slli	a2,a2,0x18
1c00a2f6:	10c14a03          	lbu	s4,268(sp)
1c00a2fa:	016fefb3          	or	t6,t6,s6
1c00a2fe:	11114803          	lbu	a6,273(sp)
1c00a302:	11214483          	lbu	s1,274(sp)
1c00a306:	10e14883          	lbu	a7,270(sp)
1c00a30a:	00666633          	or	a2,a2,t1
1c00a30e:	0e42                	slli	t3,t3,0x10
1c00a310:	5372                	lw	t1,60(sp)
1c00a312:	01fe6e33          	or	t3,t3,t6
1c00a316:	10f14683          	lbu	a3,271(sp)
1c00a31a:	05e2                	slli	a1,a1,0x18
1c00a31c:	11014283          	lbu	t0,272(sp)
1c00a320:	11314703          	lbu	a4,275(sp)
1c00a324:	01c5e5b3          	or	a1,a1,t3
1c00a328:	0f22                	slli	t5,t5,0x8
1c00a32a:	014f6f33          	or	t5,t5,s4
1c00a32e:	00b34333          	xor	t1,t1,a1
1c00a332:	04c2                	slli	s1,s1,0x10
1c00a334:	4596                	lw	a1,68(sp)
1c00a336:	0822                	slli	a6,a6,0x8
1c00a338:	08c2                	slli	a7,a7,0x10
1c00a33a:	10314503          	lbu	a0,259(sp)
1c00a33e:	01e8e8b3          	or	a7,a7,t5
1c00a342:	00986833          	or	a6,a6,s1
1c00a346:	06e2                	slli	a3,a3,0x18
1c00a348:	00586833          	or	a6,a6,t0
1c00a34c:	0116e6b3          	or	a3,a3,a7
1c00a350:	0ac2                	slli	s5,s5,0x10
1c00a352:	0ea2                	slli	t4,t4,0x8
1c00a354:	0762                	slli	a4,a4,0x18
1c00a356:	5e62                	lw	t3,56(sp)
1c00a358:	8db5                	xor	a1,a1,a3
1c00a35a:	015eeeb3          	or	t4,t4,s5
1c00a35e:	46a6                	lw	a3,72(sp)
1c00a360:	01076733          	or	a4,a4,a6
1c00a364:	4806                	lw	a6,64(sp)
1c00a366:	012eeeb3          	or	t4,t4,s2
1c00a36a:	0562                	slli	a0,a0,0x18
1c00a36c:	01d56533          	or	a0,a0,t4
1c00a370:	00ae4e33          	xor	t3,t3,a0
1c00a374:	00c84833          	xor	a6,a6,a2
1c00a378:	8f35                	xor	a4,a4,a3
1c00a37a:	11414f03          	lbu	t5,276(sp)
1c00a37e:	11514883          	lbu	a7,277(sp)
1c00a382:	11614503          	lbu	a0,278(sp)
1c00a386:	11714603          	lbu	a2,279(sp)
1c00a38a:	dc72                	sw	t3,56(sp)
1c00a38c:	de1a                	sw	t1,60(sp)
1c00a38e:	c0c2                	sw	a6,64(sp)
1c00a390:	c2ae                	sw	a1,68(sp)
1c00a392:	c4ba                	sw	a4,72(sp)
1c00a394:	11914703          	lbu	a4,281(sp)
1c00a398:	11a14303          	lbu	t1,282(sp)
1c00a39c:	11814e03          	lbu	t3,280(sp)
1c00a3a0:	11b14683          	lbu	a3,283(sp)
1c00a3a4:	0342                	slli	t1,t1,0x10
1c00a3a6:	0722                	slli	a4,a4,0x8
1c00a3a8:	00676733          	or	a4,a4,t1
1c00a3ac:	01c76733          	or	a4,a4,t3
1c00a3b0:	06e2                	slli	a3,a3,0x18
1c00a3b2:	08a2                	slli	a7,a7,0x8
1c00a3b4:	01e8e8b3          	or	a7,a7,t5
1c00a3b8:	8f55                	or	a4,a4,a3
1c00a3ba:	0542                	slli	a0,a0,0x10
1c00a3bc:	46b6                	lw	a3,76(sp)
1c00a3be:	01156533          	or	a0,a0,a7
1c00a3c2:	0662                	slli	a2,a2,0x18
1c00a3c4:	11d14803          	lbu	a6,285(sp)
1c00a3c8:	8e49                	or	a2,a2,a0
1c00a3ca:	11c14e83          	lbu	t4,284(sp)
1c00a3ce:	8e35                	xor	a2,a2,a3
1c00a3d0:	11e14583          	lbu	a1,286(sp)
1c00a3d4:	46c6                	lw	a3,80(sp)
1c00a3d6:	0822                	slli	a6,a6,0x8
1c00a3d8:	01d86833          	or	a6,a6,t4
1c00a3dc:	8eb9                	xor	a3,a3,a4
1c00a3de:	0807e793          	ori	a5,a5,128
1c00a3e2:	4756                	lw	a4,84(sp)
1c00a3e4:	05c2                	slli	a1,a1,0x10
1c00a3e6:	0105e5b3          	or	a1,a1,a6
1c00a3ea:	07e2                	slli	a5,a5,0x18
1c00a3ec:	8fcd                	or	a5,a5,a1
1c00a3ee:	080c                	addi	a1,sp,16
1c00a3f0:	8fb9                	xor	a5,a5,a4
1c00a3f2:	852e                	mv	a0,a1
1c00a3f4:	c6b2                	sw	a2,76(sp)
1c00a3f6:	c8b6                	sw	a3,80(sp)
1c00a3f8:	cabe                	sw	a5,84(sp)
1c00a3fa:	ebdfe0ef          	jal	ra,1c0092b6 <KeccakF1600_StatePermute>
1c00a3fe:	4552                	lw	a0,20(sp)
1c00a400:	45f2                	lw	a1,28(sp)
1c00a402:	5612                	lw	a2,36(sp)
1c00a404:	56b2                	lw	a3,44(sp)
1c00a406:	57d2                	lw	a5,52(sp)
1c00a408:	5772                	lw	a4,60(sp)
1c00a40a:	00855b13          	srli	s6,a0,0x8
1c00a40e:	01055a93          	srli	s5,a0,0x10
1c00a412:	01855a13          	srli	s4,a0,0x18
1c00a416:	0085d993          	srli	s3,a1,0x8
1c00a41a:	0105d913          	srli	s2,a1,0x10
1c00a41e:	0185d493          	srli	s1,a1,0x18
1c00a422:	0ca10e23          	sb	a0,220(sp)
1c00a426:	0d610ea3          	sb	s6,221(sp)
1c00a42a:	0d510f23          	sb	s5,222(sp)
1c00a42e:	0d410fa3          	sb	s4,223(sp)
1c00a432:	00865393          	srli	t2,a2,0x8
1c00a436:	01065293          	srli	t0,a2,0x10
1c00a43a:	01865f93          	srli	t6,a2,0x18
1c00a43e:	0086df13          	srli	t5,a3,0x8
1c00a442:	0106de93          	srli	t4,a3,0x10
1c00a446:	0186de13          	srli	t3,a3,0x18
1c00a44a:	0087d313          	srli	t1,a5,0x8
1c00a44e:	0107d893          	srli	a7,a5,0x10
1c00a452:	0187d813          	srli	a6,a5,0x18
1c00a456:	0eb10223          	sb	a1,228(sp)
1c00a45a:	0f3102a3          	sb	s3,229(sp)
1c00a45e:	0f210323          	sb	s2,230(sp)
1c00a462:	0e9103a3          	sb	s1,231(sp)
1c00a466:	45c2                	lw	a1,16(sp)
1c00a468:	4536                	lw	a0,76(sp)
1c00a46a:	0ec10623          	sb	a2,236(sp)
1c00a46e:	0e7106a3          	sb	t2,237(sp)
1c00a472:	467e                	lw	a2,220(sp)
1c00a474:	0e510723          	sb	t0,238(sp)
1c00a478:	0ff107a3          	sb	t6,239(sp)
1c00a47c:	0ed10a23          	sb	a3,244(sp)
1c00a480:	0fe10aa3          	sb	t5,245(sp)
1c00a484:	46e2                	lw	a3,24(sp)
1c00a486:	0fd10b23          	sb	t4,246(sp)
1c00a48a:	0fc10ba3          	sb	t3,247(sp)
1c00a48e:	0e610ea3          	sb	t1,253(sp)
1c00a492:	0f110f23          	sb	a7,254(sp)
1c00a496:	0f010fa3          	sb	a6,255(sp)
1c00a49a:	10e10223          	sb	a4,260(sp)
1c00a49e:	4816                	lw	a6,68(sp)
1c00a4a0:	0ef10e23          	sb	a5,252(sp)
1c00a4a4:	579e                	lw	a5,228(sp)
1c00a4a6:	00875d93          	srli	s11,a4,0x8
1c00a4aa:	01075d13          	srli	s10,a4,0x10
1c00a4ae:	00885c93          	srli	s9,a6,0x8
1c00a4b2:	01085c13          	srli	s8,a6,0x10
1c00a4b6:	01885b93          	srli	s7,a6,0x18
1c00a4ba:	00855b13          	srli	s6,a0,0x8
1c00a4be:	01055a93          	srli	s5,a0,0x10
1c00a4c2:	01855a13          	srli	s4,a0,0x18
1c00a4c6:	0085d993          	srli	s3,a1,0x8
1c00a4ca:	0105d913          	srli	s2,a1,0x10
1c00a4ce:	0185d493          	srli	s1,a1,0x18
1c00a4d2:	00865393          	srli	t2,a2,0x8
1c00a4d6:	01065293          	srli	t0,a2,0x10
1c00a4da:	01865f93          	srli	t6,a2,0x18
1c00a4de:	0086df13          	srli	t5,a3,0x8
1c00a4e2:	0106de93          	srli	t4,a3,0x10
1c00a4e6:	0186de13          	srli	t3,a3,0x18
1c00a4ea:	0087d313          	srli	t1,a5,0x8
1c00a4ee:	0107d893          	srli	a7,a5,0x10
1c00a4f2:	00f40623          	sb	a5,12(s0)
1c00a4f6:	8361                	srli	a4,a4,0x18
1c00a4f8:	83e1                	srli	a5,a5,0x18
1c00a4fa:	11b102a3          	sb	s11,261(sp)
1c00a4fe:	11a10323          	sb	s10,262(sp)
1c00a502:	10e103a3          	sb	a4,263(sp)
1c00a506:	11010623          	sb	a6,268(sp)
1c00a50a:	4706                	lw	a4,64(sp)
1c00a50c:	119106a3          	sb	s9,269(sp)
1c00a510:	11810723          	sb	s8,270(sp)
1c00a514:	117107a3          	sb	s7,271(sp)
1c00a518:	10a10a23          	sb	a0,276(sp)
1c00a51c:	11610aa3          	sb	s6,277(sp)
1c00a520:	11510b23          	sb	s5,278(sp)
1c00a524:	11410ba3          	sb	s4,279(sp)
1c00a528:	00b40023          	sb	a1,0(s0)
1c00a52c:	4a26                	lw	s4,72(sp)
1c00a52e:	55be                	lw	a1,236(sp)
1c00a530:	013400a3          	sb	s3,1(s0)
1c00a534:	01240123          	sb	s2,2(s0)
1c00a538:	009401a3          	sb	s1,3(s0)
1c00a53c:	00c40223          	sb	a2,4(s0)
1c00a540:	007402a3          	sb	t2,5(s0)
1c00a544:	565e                	lw	a2,244(sp)
1c00a546:	00540323          	sb	t0,6(s0)
1c00a54a:	01f403a3          	sb	t6,7(s0)
1c00a54e:	01e404a3          	sb	t5,9(s0)
1c00a552:	01d40523          	sb	t4,10(s0)
1c00a556:	01c405a3          	sb	t3,11(s0)
1c00a55a:	006406a3          	sb	t1,13(s0)
1c00a55e:	01140723          	sb	a7,14(s0)
1c00a562:	00f407a3          	sb	a5,15(s0)
1c00a566:	00d40423          	sb	a3,8(s0)
1c00a56a:	56fe                	lw	a3,252(sp)
1c00a56c:	5502                	lw	a0,32(sp)
1c00a56e:	54a2                	lw	s1,40(sp)
1c00a570:	0185db13          	srli	s6,a1,0x18
1c00a574:	00855d93          	srli	s11,a0,0x8
1c00a578:	01055d13          	srli	s10,a0,0x10
1c00a57c:	01855c93          	srli	s9,a0,0x18
1c00a580:	5522                	lw	a0,40(sp)
1c00a582:	5842                	lw	a6,48(sp)
1c00a584:	0085dc13          	srli	s8,a1,0x8
1c00a588:	00855a93          	srli	s5,a0,0x8
1c00a58c:	8141                	srli	a0,a0,0x10
1c00a58e:	c42a                	sw	a0,8(sp)
1c00a590:	5562                	lw	a0,56(sp)
1c00a592:	0105db93          	srli	s7,a1,0x10
1c00a596:	00b40a23          	sb	a1,20(s0)
1c00a59a:	8161                	srli	a0,a0,0x18
1c00a59c:	c22a                	sw	a0,4(sp)
1c00a59e:	5502                	lw	a0,32(sp)
1c00a5a0:	45a2                	lw	a1,8(sp)
1c00a5a2:	01640ba3          	sb	s6,23(s0)
1c00a5a6:	c62a                	sw	a0,12(sp)
1c00a5a8:	00c14503          	lbu	a0,12(sp)
1c00a5ac:	5b22                	lw	s6,40(sp)
1c00a5ae:	0184d993          	srli	s3,s1,0x18
1c00a5b2:	00865913          	srli	s2,a2,0x8
1c00a5b6:	01065493          	srli	s1,a2,0x10
1c00a5ba:	01865393          	srli	t2,a2,0x18
1c00a5be:	00a10623          	sb	a0,12(sp)
1c00a5c2:	0ff57513          	andi	a0,a0,255
1c00a5c6:	10412783          	lw	a5,260(sp)
1c00a5ca:	00885293          	srli	t0,a6,0x8
1c00a5ce:	01085f93          	srli	t6,a6,0x10
1c00a5d2:	01885f13          	srli	t5,a6,0x18
1c00a5d6:	0086de93          	srli	t4,a3,0x8
1c00a5da:	5862                	lw	a6,56(sp)
1c00a5dc:	0106de13          	srli	t3,a3,0x10
1c00a5e0:	0186d313          	srli	t1,a3,0x18
1c00a5e4:	00a40823          	sb	a0,16(s0)
1c00a5e8:	01b408a3          	sb	s11,17(s0)
1c00a5ec:	01a40923          	sb	s10,18(s0)
1c00a5f0:	019409a3          	sb	s9,19(s0)
1c00a5f4:	01840aa3          	sb	s8,21(s0)
1c00a5f8:	01740b23          	sb	s7,22(s0)
1c00a5fc:	01640c23          	sb	s6,24(s0)
1c00a600:	01540ca3          	sb	s5,25(s0)
1c00a604:	00b40d23          	sb	a1,26(s0)
1c00a608:	01340da3          	sb	s3,27(s0)
1c00a60c:	01240ea3          	sb	s2,29(s0)
1c00a610:	00940f23          	sb	s1,30(s0)
1c00a614:	00740fa3          	sb	t2,31(s0)
1c00a618:	00c40e23          	sb	a2,28(s0)
1c00a61c:	5642                	lw	a2,48(sp)
1c00a61e:	02d40223          	sb	a3,36(s0)
1c00a622:	56e2                	lw	a3,56(sp)
1c00a624:	02c40023          	sb	a2,32(s0)
1c00a628:	10c12603          	lw	a2,268(sp)
1c00a62c:	02d40423          	sb	a3,40(s0)
1c00a630:	4692                	lw	a3,4(sp)
1c00a632:	00885893          	srli	a7,a6,0x8
1c00a636:	025400a3          	sb	t0,33(s0)
1c00a63a:	02d405a3          	sb	a3,43(s0)
1c00a63e:	11412683          	lw	a3,276(sp)
1c00a642:	03f40123          	sb	t6,34(s0)
1c00a646:	03e401a3          	sb	t5,35(s0)
1c00a64a:	03d402a3          	sb	t4,37(s0)
1c00a64e:	03c40323          	sb	t3,38(s0)
1c00a652:	026403a3          	sb	t1,39(s0)
1c00a656:	02f40623          	sb	a5,44(s0)
1c00a65a:	0087d993          	srli	s3,a5,0x8
1c00a65e:	0107d913          	srli	s2,a5,0x10
1c00a662:	01085813          	srli	a6,a6,0x10
1c00a666:	00875493          	srli	s1,a4,0x8
1c00a66a:	008a5e13          	srli	t3,s4,0x8
1c00a66e:	010a5313          	srli	t1,s4,0x10
1c00a672:	83e1                	srli	a5,a5,0x18
1c00a674:	01075393          	srli	t2,a4,0x10
1c00a678:	01875293          	srli	t0,a4,0x18
1c00a67c:	00865f93          	srli	t6,a2,0x8
1c00a680:	01065f13          	srli	t5,a2,0x10
1c00a684:	01865e93          	srli	t4,a2,0x18
1c00a688:	031404a3          	sb	a7,41(s0)
1c00a68c:	03040523          	sb	a6,42(s0)
1c00a690:	033406a3          	sb	s3,45(s0)
1c00a694:	03240723          	sb	s2,46(s0)
1c00a698:	029408a3          	sb	s1,49(s0)
1c00a69c:	03440c23          	sb	s4,56(s0)
1c00a6a0:	018a5893          	srli	a7,s4,0x18
1c00a6a4:	02f407a3          	sb	a5,47(s0)
1c00a6a8:	02e40823          	sb	a4,48(s0)
1c00a6ac:	02740923          	sb	t2,50(s0)
1c00a6b0:	025409a3          	sb	t0,51(s0)
1c00a6b4:	02c40a23          	sb	a2,52(s0)
1c00a6b8:	03f40aa3          	sb	t6,53(s0)
1c00a6bc:	03e40b23          	sb	t5,54(s0)
1c00a6c0:	03d40ba3          	sb	t4,55(s0)
1c00a6c4:	03c40ca3          	sb	t3,57(s0)
1c00a6c8:	02640d23          	sb	t1,58(s0)
1c00a6cc:	0086d813          	srli	a6,a3,0x8
1c00a6d0:	0106d513          	srli	a0,a3,0x10
1c00a6d4:	0186d593          	srli	a1,a3,0x18
1c00a6d8:	03140da3          	sb	a7,59(s0)
1c00a6dc:	02d40e23          	sb	a3,60(s0)
1c00a6e0:	03040ea3          	sb	a6,61(s0)
1c00a6e4:	02a40f23          	sb	a0,62(s0)
1c00a6e8:	02b40fa3          	sb	a1,63(s0)
1c00a6ec:	1dc12083          	lw	ra,476(sp)
1c00a6f0:	1d812403          	lw	s0,472(sp)
1c00a6f4:	1d412483          	lw	s1,468(sp)
1c00a6f8:	1d012903          	lw	s2,464(sp)
1c00a6fc:	1cc12983          	lw	s3,460(sp)
1c00a700:	1c812a03          	lw	s4,456(sp)
1c00a704:	1c412a83          	lw	s5,452(sp)
1c00a708:	1c012b03          	lw	s6,448(sp)
1c00a70c:	1bc12b83          	lw	s7,444(sp)
1c00a710:	1b812c03          	lw	s8,440(sp)
1c00a714:	1b412c83          	lw	s9,436(sp)
1c00a718:	1b012d03          	lw	s10,432(sp)
1c00a71c:	1ac12d83          	lw	s11,428(sp)
1c00a720:	613d                	addi	sp,sp,480
1c00a722:	8082                	ret
1c00a724:	4781                	li	a5,0
1c00a726:	ba45                	j	1c00a0d6 <sha3_512+0x12e>

1c00a728 <PQCLEAN_KYBER768_CLEAN_gen_matrix>:
1c00a728:	db010113          	addi	sp,sp,-592
1c00a72c:	21b12e23          	sw	s11,540(sp)
1c00a730:	6d85                	lui	s11,0x1
1c00a732:	24912223          	sw	s1,580(sp)
1c00a736:	25212023          	sw	s2,576(sp)
1c00a73a:	23512a23          	sw	s5,564(sp)
1c00a73e:	23612823          	sw	s6,560(sp)
1c00a742:	23912223          	sw	s9,548(sp)
1c00a746:	23a12023          	sw	s10,544(sp)
1c00a74a:	24112623          	sw	ra,588(sp)
1c00a74e:	fffd8d13          	addi	s10,s11,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00a752:	24812423          	sw	s0,584(sp)
1c00a756:	23312e23          	sw	s3,572(sp)
1c00a75a:	23412c23          	sw	s4,568(sp)
1c00a75e:	23712623          	sw	s7,556(sp)
1c00a762:	23812423          	sw	s8,552(sp)
1c00a766:	8cae                	mv	s9,a1
1c00a768:	c432                	sw	a2,8(sp)
1c00a76a:	c62a                	sw	a0,12(sp)
1c00a76c:	4b01                	li	s6,0
1c00a76e:	20c10a93          	addi	s5,sp,524
1c00a772:	d00d8d93          	addi	s11,s11,-768
1c00a776:	10000913          	li	s2,256
1c00a77a:	1964                	addi	s1,sp,188
1c00a77c:	4432                	lw	s0,12(sp)
1c00a77e:	0ffb7c13          	andi	s8,s6,255
1c00a782:	4981                	li	s3,0
1c00a784:	a831                	j	1c00a7a0 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x78>
1c00a786:	00f69023          	sh	a5,0(a3)
1c00a78a:	15251763          	bne	a0,s2,1c00a8d8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1b0>
1c00a78e:	0808                	addi	a0,sp,16
1c00a790:	aaaff0ef          	jal	ra,1c009a3a <shake128_ctx_release>
1c00a794:	0985                	addi	s3,s3,1
1c00a796:	478d                	li	a5,3
1c00a798:	20040413          	addi	s0,s0,512
1c00a79c:	0ef98a63          	beq	s3,a5,1c00a890 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x168>
1c00a7a0:	47a2                	lw	a5,8(sp)
1c00a7a2:	0ff9f613          	andi	a2,s3,255
1c00a7a6:	cff9                	beqz	a5,1c00a884 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x15c>
1c00a7a8:	86b2                	mv	a3,a2
1c00a7aa:	85e6                	mv	a1,s9
1c00a7ac:	8662                	mv	a2,s8
1c00a7ae:	0808                	addi	a0,sp,16
1c00a7b0:	6db000ef          	jal	ra,1c00b68a <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c00a7b4:	0810                	addi	a2,sp,16
1c00a7b6:	458d                	li	a1,3
1c00a7b8:	0848                	addi	a0,sp,20
1c00a7ba:	98cff0ef          	jal	ra,1c009946 <shake128_squeezeblocks>
1c00a7be:	4b81                	li	s7,0
1c00a7c0:	0858                	addi	a4,sp,20
1c00a7c2:	00174583          	lbu	a1,1(a4)
1c00a7c6:	00074603          	lbu	a2,0(a4)
1c00a7ca:	001b9693          	slli	a3,s7,0x1
1c00a7ce:	00859793          	slli	a5,a1,0x8
1c00a7d2:	8fd1                	or	a5,a5,a2
1c00a7d4:	01a7f7b3          	and	a5,a5,s10
1c00a7d8:	07c2                	slli	a5,a5,0x10
1c00a7da:	83c1                	srli	a5,a5,0x10
1c00a7dc:	00274603          	lbu	a2,2(a4)
1c00a7e0:	96a2                	add	a3,a3,s0
1c00a7e2:	0045d313          	srli	t1,a1,0x4
1c00a7e6:	001b8513          	addi	a0,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00a7ea:	f8fdfee3          	bgeu	s11,a5,1c00a786 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x5e>
1c00a7ee:	0612                	slli	a2,a2,0x4
1c00a7f0:	00666633          	or	a2,a2,t1
1c00a7f4:	00cdc863          	blt	s11,a2,1c00a804 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xdc>
1c00a7f8:	001b9793          	slli	a5,s7,0x1
1c00a7fc:	97a2                	add	a5,a5,s0
1c00a7fe:	00c79023          	sh	a2,0(a5)
1c00a802:	0b85                	addi	s7,s7,1
1c00a804:	f92b85e3          	beq	s7,s2,1c00a78e <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c00a808:	070d                	addi	a4,a4,3
1c00a80a:	faea9ce3          	bne	s5,a4,1c00a7c2 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x9a>
1c00a80e:	0ff00a13          	li	s4,255
1c00a812:	a821                	j	1c00a82a <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x102>
1c00a814:	00171593          	slli	a1,a4,0x1
1c00a818:	95aa                	add	a1,a1,a0
1c00a81a:	0705                	addi	a4,a4,1
1c00a81c:	00f59023          	sh	a5,0(a1)
1c00a820:	0c676363          	bltu	a4,t1,1c00a8e6 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1be>
1c00a824:	9bba                	add	s7,s7,a4
1c00a826:	f77a64e3          	bltu	s4,s7,1c00a78e <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c00a82a:	0810                	addi	a2,sp,16
1c00a82c:	0848                	addi	a0,sp,20
1c00a82e:	4585                	li	a1,1
1c00a830:	916ff0ef          	jal	ra,1c009946 <shake128_squeezeblocks>
1c00a834:	001b9513          	slli	a0,s7,0x1
1c00a838:	9522                	add	a0,a0,s0
1c00a83a:	41790333          	sub	t1,s2,s7
1c00a83e:	0850                	addi	a2,sp,20
1c00a840:	4701                	li	a4,0
1c00a842:	00164583          	lbu	a1,1(a2)
1c00a846:	00064e03          	lbu	t3,0(a2)
1c00a84a:	00264683          	lbu	a3,2(a2)
1c00a84e:	00859793          	slli	a5,a1,0x8
1c00a852:	01c7e7b3          	or	a5,a5,t3
1c00a856:	01a7f7b3          	and	a5,a5,s10
1c00a85a:	07c2                	slli	a5,a5,0x10
1c00a85c:	0692                	slli	a3,a3,0x4
1c00a85e:	8191                	srli	a1,a1,0x4
1c00a860:	83c1                	srli	a5,a5,0x10
1c00a862:	8ecd                	or	a3,a3,a1
1c00a864:	fafdf8e3          	bgeu	s11,a5,1c00a814 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xec>
1c00a868:	00ddc863          	blt	s11,a3,1c00a878 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x150>
1c00a86c:	00171793          	slli	a5,a4,0x1
1c00a870:	97aa                	add	a5,a5,a0
1c00a872:	00d79023          	sh	a3,0(a5)
1c00a876:	0705                	addi	a4,a4,1
1c00a878:	fa6776e3          	bgeu	a4,t1,1c00a824 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c00a87c:	060d                	addi	a2,a2,3
1c00a87e:	fcc492e3          	bne	s1,a2,1c00a842 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x11a>
1c00a882:	b74d                	j	1c00a824 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c00a884:	86e2                	mv	a3,s8
1c00a886:	85e6                	mv	a1,s9
1c00a888:	0808                	addi	a0,sp,16
1c00a88a:	601000ef          	jal	ra,1c00b68a <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c00a88e:	b71d                	j	1c00a7b4 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x8c>
1c00a890:	47b2                	lw	a5,12(sp)
1c00a892:	0b05                	addi	s6,s6,1
1c00a894:	60078793          	addi	a5,a5,1536
1c00a898:	c63e                	sw	a5,12(sp)
1c00a89a:	ef3b11e3          	bne	s6,s3,1c00a77c <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x54>
1c00a89e:	24c12083          	lw	ra,588(sp)
1c00a8a2:	24812403          	lw	s0,584(sp)
1c00a8a6:	24412483          	lw	s1,580(sp)
1c00a8aa:	24012903          	lw	s2,576(sp)
1c00a8ae:	23c12983          	lw	s3,572(sp)
1c00a8b2:	23812a03          	lw	s4,568(sp)
1c00a8b6:	23412a83          	lw	s5,564(sp)
1c00a8ba:	23012b03          	lw	s6,560(sp)
1c00a8be:	22c12b83          	lw	s7,556(sp)
1c00a8c2:	22812c03          	lw	s8,552(sp)
1c00a8c6:	22412c83          	lw	s9,548(sp)
1c00a8ca:	22012d03          	lw	s10,544(sp)
1c00a8ce:	21c12d83          	lw	s11,540(sp)
1c00a8d2:	25010113          	addi	sp,sp,592
1c00a8d6:	8082                	ret
1c00a8d8:	8191                	srli	a1,a1,0x4
1c00a8da:	0612                	slli	a2,a2,0x4
1c00a8dc:	8e4d                	or	a2,a2,a1
1c00a8de:	8baa                	mv	s7,a0
1c00a8e0:	f0cddce3          	bge	s11,a2,1c00a7f8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xd0>
1c00a8e4:	b715                	j	1c00a808 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xe0>
1c00a8e6:	f8ddd3e3          	bge	s11,a3,1c00a86c <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x144>
1c00a8ea:	bf49                	j	1c00a87c <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x154>

1c00a8ec <PQCLEAN_KYBER768_CLEAN_indcpa_enc>:
1c00a8ec:	7175                	addi	sp,sp,-144
1c00a8ee:	7375                	lui	t1,0xffffd
1c00a8f0:	c706                	sw	ra,140(sp)
1c00a8f2:	c522                	sw	s0,136(sp)
1c00a8f4:	c326                	sw	s1,132(sp)
1c00a8f6:	c14a                	sw	s2,128(sp)
1c00a8f8:	dece                	sw	s3,124(sp)
1c00a8fa:	dcd2                	sw	s4,120(sp)
1c00a8fc:	dad6                	sw	s5,116(sp)
1c00a8fe:	d8da                	sw	s6,112(sp)
1c00a900:	d6de                	sw	s7,108(sp)
1c00a902:	d4e2                	sw	s8,104(sp)
1c00a904:	d2e6                	sw	s9,100(sp)
1c00a906:	d0ea                	sw	s10,96(sp)
1c00a908:	ceee                	sw	s11,92(sp)
1c00a90a:	6b8d                	lui	s7,0x3
1c00a90c:	911a                	add	sp,sp,t1
1c00a90e:	1818                	addi	a4,sp,48
1c00a910:	74f9                	lui	s1,0xffffe
1c00a912:	020b8793          	addi	a5,s7,32 # 3020 <__CTOR_LIST__-0x1bffcfe4>
1c00a916:	97ba                	add	a5,a5,a4
1c00a918:	c0048a13          	addi	s4,s1,-1024 # ffffdc00 <__l2_shared_end+0xe3fedc00>
1c00a91c:	9a3e                	add	s4,s4,a5
1c00a91e:	8432                	mv	s0,a2
1c00a920:	89aa                	mv	s3,a0
1c00a922:	8aae                	mv	s5,a1
1c00a924:	8552                	mv	a0,s4
1c00a926:	85b2                	mv	a1,a2
1c00a928:	8936                	mv	s2,a3
1c00a92a:	0af000ef          	jal	ra,1c00b1d8 <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>
1c00a92e:	48044c03          	lbu	s8,1152(s0)
1c00a932:	48c44783          	lbu	a5,1164(s0)
1c00a936:	49c44583          	lbu	a1,1180(s0)
1c00a93a:	d462                	sw	s8,40(sp)
1c00a93c:	48744c03          	lbu	s8,1159(s0)
1c00a940:	c83e                	sw	a5,16(sp)
1c00a942:	d22e                	sw	a1,36(sp)
1c00a944:	c462                	sw	s8,8(sp)
1c00a946:	48b44c03          	lbu	s8,1163(s0)
1c00a94a:	48444d03          	lbu	s10,1156(s0)
1c00a94e:	48844c83          	lbu	s9,1160(s0)
1c00a952:	c662                	sw	s8,12(sp)
1c00a954:	48f44c03          	lbu	s8,1167(s0)
1c00a958:	49044b83          	lbu	s7,1168(s0)
1c00a95c:	49444b03          	lbu	s6,1172(s0)
1c00a960:	49844083          	lbu	ra,1176(s0)
1c00a964:	48544383          	lbu	t2,1157(s0)
1c00a968:	48944283          	lbu	t0,1161(s0)
1c00a96c:	48d44f83          	lbu	t6,1165(s0)
1c00a970:	49144f03          	lbu	t5,1169(s0)
1c00a974:	49544e83          	lbu	t4,1173(s0)
1c00a978:	49944e03          	lbu	t3,1177(s0)
1c00a97c:	49d44503          	lbu	a0,1181(s0)
1c00a980:	48144303          	lbu	t1,1153(s0)
1c00a984:	48644883          	lbu	a7,1158(s0)
1c00a988:	48a44803          	lbu	a6,1162(s0)
1c00a98c:	48e44603          	lbu	a2,1166(s0)
1c00a990:	49244683          	lbu	a3,1170(s0)
1c00a994:	49644703          	lbu	a4,1174(s0)
1c00a998:	49a44783          	lbu	a5,1178(s0)
1c00a99c:	49e44d83          	lbu	s11,1182(s0)
1c00a9a0:	48244583          	lbu	a1,1154(s0)
1c00a9a4:	ca62                	sw	s8,20(sp)
1c00a9a6:	49344c03          	lbu	s8,1171(s0)
1c00a9aa:	0e22                	slli	t3,t3,0x8
1c00a9ac:	001e6e33          	or	t3,t3,ra
1c00a9b0:	cc62                	sw	s8,24(sp)
1c00a9b2:	49744c03          	lbu	s8,1175(s0)
1c00a9b6:	5092                	lw	ra,36(sp)
1c00a9b8:	02a2                	slli	t0,t0,0x8
1c00a9ba:	ce62                	sw	s8,28(sp)
1c00a9bc:	49b44c03          	lbu	s8,1179(s0)
1c00a9c0:	0522                	slli	a0,a0,0x8
1c00a9c2:	00156533          	or	a0,a0,ra
1c00a9c6:	d062                	sw	s8,32(sp)
1c00a9c8:	50a2                	lw	ra,40(sp)
1c00a9ca:	49f44c03          	lbu	s8,1183(s0)
1c00a9ce:	0192e2b3          	or	t0,t0,s9
1c00a9d2:	48344403          	lbu	s0,1155(s0)
1c00a9d6:	4cc2                	lw	s9,16(sp)
1c00a9d8:	03a2                	slli	t2,t2,0x8
1c00a9da:	0fa2                	slli	t6,t6,0x8
1c00a9dc:	0f22                	slli	t5,t5,0x8
1c00a9de:	0ea2                	slli	t4,t4,0x8
1c00a9e0:	0322                	slli	t1,t1,0x8
1c00a9e2:	d622                	sw	s0,44(sp)
1c00a9e4:	01a3e3b3          	or	t2,t2,s10
1c00a9e8:	08c2                	slli	a7,a7,0x10
1c00a9ea:	0842                	slli	a6,a6,0x10
1c00a9ec:	019fefb3          	or	t6,t6,s9
1c00a9f0:	0642                	slli	a2,a2,0x10
1c00a9f2:	017f6f33          	or	t5,t5,s7
1c00a9f6:	06c2                	slli	a3,a3,0x10
1c00a9f8:	016eeeb3          	or	t4,t4,s6
1c00a9fc:	0742                	slli	a4,a4,0x10
1c00a9fe:	00136333          	or	t1,t1,ra
1c00aa02:	05c2                	slli	a1,a1,0x10
1c00aa04:	07c2                	slli	a5,a5,0x10
1c00aa06:	6b8d                	lui	s7,0x3
1c00aa08:	01c7e7b3          	or	a5,a5,t3
1c00aa0c:	0078e3b3          	or	t2,a7,t2
1c00aa10:	5e02                	lw	t3,32(sp)
1c00aa12:	48a2                	lw	a7,8(sp)
1c00aa14:	005862b3          	or	t0,a6,t0
1c00aa18:	01f66fb3          	or	t6,a2,t6
1c00aa1c:	4832                	lw	a6,12(sp)
1c00aa1e:	4652                	lw	a2,20(sp)
1c00aa20:	01e6ef33          	or	t5,a3,t5
1c00aa24:	01d76eb3          	or	t4,a4,t4
1c00aa28:	46e2                	lw	a3,24(sp)
1c00aa2a:	4772                	lw	a4,28(sp)
1c00aa2c:	0065e333          	or	t1,a1,t1
1c00aa30:	55b2                	lw	a1,44(sp)
1c00aa32:	7475                	lui	s0,0xffffd
1c00aa34:	03010c93          	addi	s9,sp,48
1c00aa38:	020b8093          	addi	ra,s7,32 # 3020 <__CTOR_LIST__-0x1bffcfe4>
1c00aa3c:	90e6                	add	ra,ra,s9
1c00aa3e:	20040b13          	addi	s6,s0,512 # ffffd200 <__l2_shared_end+0xe3fed200>
1c00aa42:	0dc2                	slli	s11,s11,0x10
1c00aa44:	9b06                	add	s6,s6,ra
1c00aa46:	08e2                	slli	a7,a7,0x18
1c00aa48:	0862                	slli	a6,a6,0x18
1c00aa4a:	06e2                	slli	a3,a3,0x18
1c00aa4c:	0662                	slli	a2,a2,0x18
1c00aa4e:	0762                	slli	a4,a4,0x18
1c00aa50:	00adedb3          	or	s11,s11,a0
1c00aa54:	0c62                	slli	s8,s8,0x18
1c00aa56:	05e2                	slli	a1,a1,0x18
1c00aa58:	0e62                	slli	t3,t3,0x18
1c00aa5a:	0065e333          	or	t1,a1,t1
1c00aa5e:	01f66fb3          	or	t6,a2,t6
1c00aa62:	01d76eb3          	or	t4,a4,t4
1c00aa66:	00fe6e33          	or	t3,t3,a5
1c00aa6a:	0078e3b3          	or	t2,a7,t2
1c00aa6e:	005862b3          	or	t0,a6,t0
1c00aa72:	01e6ef33          	or	t5,a3,t5
1c00aa76:	01bc6db3          	or	s11,s8,s11
1c00aa7a:	85d6                	mv	a1,s5
1c00aa7c:	855a                	mv	a0,s6
1c00aa7e:	d81a                	sw	t1,48(sp)
1c00aa80:	da1e                	sw	t2,52(sp)
1c00aa82:	dc16                	sw	t0,56(sp)
1c00aa84:	de7e                	sw	t6,60(sp)
1c00aa86:	c0fa                	sw	t5,64(sp)
1c00aa88:	c2f6                	sw	t4,68(sp)
1c00aa8a:	c4f2                	sw	t3,72(sp)
1c00aa8c:	c6ee                	sw	s11,76(sp)
1c00aa8e:	21f1                	jal	1c00af5a <PQCLEAN_KYBER768_CLEAN_poly_frommsg>
1c00aa90:	1818                	addi	a4,sp,48
1c00aa92:	7afd                	lui	s5,0xfffff
1c00aa94:	020b8793          	addi	a5,s7,32
1c00aa98:	97ba                	add	a5,a5,a4
1c00aa9a:	e00a8c13          	addi	s8,s5,-512 # ffffee00 <__l2_shared_end+0xe3feee00>
1c00aa9e:	9c3e                	add	s8,s8,a5
1c00aaa0:	020b8793          	addi	a5,s7,32
1c00aaa4:	97ba                	add	a5,a5,a4
1c00aaa6:	fe040593          	addi	a1,s0,-32
1c00aaaa:	95be                	add	a1,a1,a5
1c00aaac:	8562                	mv	a0,s8
1c00aaae:	4605                	li	a2,1
1c00aab0:	39a5                	jal	1c00a728 <PQCLEAN_KYBER768_CLEAN_gen_matrix>
1c00aab2:	8cde                	mv	s9,s7
1c00aab4:	1818                	addi	a4,sp,48
1c00aab6:	020c8793          	addi	a5,s9,32 # ff0020 <__CTOR_LIST__-0x1b00ffe4>
1c00aaba:	97ba                	add	a5,a5,a4
1c00aabc:	60040b93          	addi	s7,s0,1536
1c00aac0:	9bbe                	add	s7,s7,a5
1c00aac2:	85ca                	mv	a1,s2
1c00aac4:	855e                	mv	a0,s7
1c00aac6:	4601                	li	a2,0
1c00aac8:	2315                	jal	1c00afec <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00aaca:	85ca                	mv	a1,s2
1c00aacc:	200b8513          	addi	a0,s7,512
1c00aad0:	4605                	li	a2,1
1c00aad2:	2b29                	jal	1c00afec <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00aad4:	85ca                	mv	a1,s2
1c00aad6:	400b8513          	addi	a0,s7,1024
1c00aada:	4609                	li	a2,2
1c00aadc:	2b01                	jal	1c00afec <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00aade:	1818                	addi	a4,sp,48
1c00aae0:	020c8793          	addi	a5,s9,32
1c00aae4:	97ba                	add	a5,a5,a4
1c00aae6:	20048493          	addi	s1,s1,512
1c00aaea:	94be                	add	s1,s1,a5
1c00aaec:	85ca                	mv	a1,s2
1c00aaee:	8526                	mv	a0,s1
1c00aaf0:	460d                	li	a2,3
1c00aaf2:	2b39                	jal	1c00b010 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00aaf4:	85ca                	mv	a1,s2
1c00aaf6:	20048513          	addi	a0,s1,512
1c00aafa:	4611                	li	a2,4
1c00aafc:	2b11                	jal	1c00b010 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00aafe:	85ca                	mv	a1,s2
1c00ab00:	40048513          	addi	a0,s1,1024
1c00ab04:	4615                	li	a2,5
1c00ab06:	2329                	jal	1c00b010 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00ab08:	1818                	addi	a4,sp,48
1c00ab0a:	020c8793          	addi	a5,s9,32
1c00ab0e:	97ba                	add	a5,a5,a4
1c00ab10:	40040413          	addi	s0,s0,1024
1c00ab14:	943e                	add	s0,s0,a5
1c00ab16:	85ca                	mv	a1,s2
1c00ab18:	4619                	li	a2,6
1c00ab1a:	8522                	mv	a0,s0
1c00ab1c:	29d5                	jal	1c00b010 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00ab1e:	855e                	mv	a0,s7
1c00ab20:	25cd                	jal	1c00b202 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00ab22:	1818                	addi	a4,sp,48
1c00ab24:	020c8793          	addi	a5,s9,32
1c00ab28:	97ba                	add	a5,a5,a4
1c00ab2a:	800a8913          	addi	s2,s5,-2048
1c00ab2e:	993e                	add	s2,s2,a5
1c00ab30:	85e2                	mv	a1,s8
1c00ab32:	854a                	mv	a0,s2
1c00ab34:	865e                	mv	a2,s7
1c00ab36:	7b4000ef          	jal	ra,1c00b2ea <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00ab3a:	865e                	mv	a2,s7
1c00ab3c:	600c0593          	addi	a1,s8,1536 # ff0600 <__CTOR_LIST__-0x1b00fa04>
1c00ab40:	20090513          	addi	a0,s2,512
1c00ab44:	7a6000ef          	jal	ra,1c00b2ea <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00ab48:	a20c8793          	addi	a5,s9,-1504
1c00ab4c:	1818                	addi	a4,sp,48
1c00ab4e:	00f705b3          	add	a1,a4,a5
1c00ab52:	865e                	mv	a2,s7
1c00ab54:	40090513          	addi	a0,s2,1024
1c00ab58:	792000ef          	jal	ra,1c00b2ea <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00ab5c:	865e                	mv	a2,s7
1c00ab5e:	85d2                	mv	a1,s4
1c00ab60:	0888                	addi	a0,sp,80
1c00ab62:	788000ef          	jal	ra,1c00b2ea <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00ab66:	854a                	mv	a0,s2
1c00ab68:	766000ef          	jal	ra,1c00b2ce <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont>
1c00ab6c:	0888                	addi	a0,sp,80
1c00ab6e:	21d9                	jal	1c00b034 <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>
1c00ab70:	8626                	mv	a2,s1
1c00ab72:	85ca                	mv	a1,s2
1c00ab74:	854a                	mv	a0,s2
1c00ab76:	7ee000ef          	jal	ra,1c00b364 <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c00ab7a:	088c                	addi	a1,sp,80
1c00ab7c:	8622                	mv	a2,s0
1c00ab7e:	852e                	mv	a0,a1
1c00ab80:	23b1                	jal	1c00b0cc <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00ab82:	088c                	addi	a1,sp,80
1c00ab84:	865a                	mv	a2,s6
1c00ab86:	852e                	mv	a0,a1
1c00ab88:	2391                	jal	1c00b0cc <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00ab8a:	854a                	mv	a0,s2
1c00ab8c:	7bc000ef          	jal	ra,1c00b348 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c00ab90:	0888                	addi	a0,sp,80
1c00ab92:	2b09                	jal	1c00b0a4 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00ab94:	85ca                	mv	a1,s2
1c00ab96:	854e                	mv	a0,s3
1c00ab98:	2bb1                	jal	1c00b0f4 <PQCLEAN_KYBER768_CLEAN_polyvec_compress>
1c00ab9a:	088c                	addi	a1,sp,80
1c00ab9c:	3c098513          	addi	a0,s3,960
1c00aba0:	2c15                	jal	1c00add4 <PQCLEAN_KYBER768_CLEAN_poly_compress>
1c00aba2:	630d                	lui	t1,0x3
1c00aba4:	911a                	add	sp,sp,t1
1c00aba6:	40ba                	lw	ra,140(sp)
1c00aba8:	442a                	lw	s0,136(sp)
1c00abaa:	449a                	lw	s1,132(sp)
1c00abac:	490a                	lw	s2,128(sp)
1c00abae:	59f6                	lw	s3,124(sp)
1c00abb0:	5a66                	lw	s4,120(sp)
1c00abb2:	5ad6                	lw	s5,116(sp)
1c00abb4:	5b46                	lw	s6,112(sp)
1c00abb6:	5bb6                	lw	s7,108(sp)
1c00abb8:	5c26                	lw	s8,104(sp)
1c00abba:	5c96                	lw	s9,100(sp)
1c00abbc:	5d06                	lw	s10,96(sp)
1c00abbe:	4df6                	lw	s11,92(sp)
1c00abc0:	6149                	addi	sp,sp,144
1c00abc2:	8082                	ret

1c00abc4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_enc>:
1c00abc4:	7175                	addi	sp,sp,-144
1c00abc6:	c522                	sw	s0,136(sp)
1c00abc8:	c14a                	sw	s2,128(sp)
1c00abca:	842a                	mv	s0,a0
1c00abcc:	892e                	mv	s2,a1
1c00abce:	850a                	mv	a0,sp
1c00abd0:	02000593          	li	a1,32
1c00abd4:	c706                	sw	ra,140(sp)
1c00abd6:	c326                	sw	s1,132(sp)
1c00abd8:	84b2                	mv	s1,a2
1c00abda:	7ca000ef          	jal	ra,1c00b3a4 <randombytes>
1c00abde:	858a                	mv	a1,sp
1c00abe0:	850a                	mv	a0,sp
1c00abe2:	02000613          	li	a2,32
1c00abe6:	8e2ff0ef          	jal	ra,1c009cc8 <sha3_256>
1c00abea:	85a6                	mv	a1,s1
1c00abec:	1008                	addi	a0,sp,32
1c00abee:	4a000613          	li	a2,1184
1c00abf2:	8d6ff0ef          	jal	ra,1c009cc8 <sha3_256>
1c00abf6:	858a                	mv	a1,sp
1c00abf8:	0088                	addi	a0,sp,64
1c00abfa:	04000613          	li	a2,64
1c00abfe:	baaff0ef          	jal	ra,1c009fa8 <sha3_512>
1c00ac02:	1094                	addi	a3,sp,96
1c00ac04:	8626                	mv	a2,s1
1c00ac06:	858a                	mv	a1,sp
1c00ac08:	8522                	mv	a0,s0
1c00ac0a:	31cd                	jal	1c00a8ec <PQCLEAN_KYBER768_CLEAN_indcpa_enc>
1c00ac0c:	85a2                	mv	a1,s0
1c00ac0e:	1088                	addi	a0,sp,96
1c00ac10:	44000613          	li	a2,1088
1c00ac14:	8b4ff0ef          	jal	ra,1c009cc8 <sha3_256>
1c00ac18:	854a                	mv	a0,s2
1c00ac1a:	0090                	addi	a2,sp,64
1c00ac1c:	04000693          	li	a3,64
1c00ac20:	02000593          	li	a1,32
1c00ac24:	e21fe0ef          	jal	ra,1c009a44 <shake256>
1c00ac28:	40ba                	lw	ra,140(sp)
1c00ac2a:	442a                	lw	s0,136(sp)
1c00ac2c:	449a                	lw	s1,132(sp)
1c00ac2e:	490a                	lw	s2,128(sp)
1c00ac30:	4501                	li	a0,0
1c00ac32:	6149                	addi	sp,sp,144
1c00ac34:	8082                	ret

1c00ac36 <PQCLEAN_KYBER768_CLEAN_invntt>:
1c00ac36:	715d                	addi	sp,sp,-80
1c00ac38:	d266                	sw	s9,36(sp)
1c00ac3a:	1c000cb7          	lui	s9,0x1c000
1c00ac3e:	14cc8793          	addi	a5,s9,332 # 1c00014c <PQCLEAN_KYBER768_CLEAN_zetas>
1c00ac42:	d06a                	sw	s10,32(sp)
1c00ac44:	80000d37          	lui	s10,0x80000
1c00ac48:	c43e                	sw	a5,8(sp)
1c00ac4a:	fffd4793          	not	a5,s10
1c00ac4e:	c4a2                	sw	s0,72(sp)
1c00ac50:	c2a6                	sw	s1,68(sp)
1c00ac52:	da56                	sw	s5,52(sp)
1c00ac54:	d85a                	sw	s6,48(sp)
1c00ac56:	d65e                	sw	s7,44(sp)
1c00ac58:	d462                	sw	s8,40(sp)
1c00ac5a:	c686                	sw	ra,76(sp)
1c00ac5c:	c0ca                	sw	s2,64(sp)
1c00ac5e:	de4e                	sw	s3,60(sp)
1c00ac60:	dc52                	sw	s4,56(sp)
1c00ac62:	ce6e                	sw	s11,28(sp)
1c00ac64:	842a                	mv	s0,a0
1c00ac66:	4c1d                	li	s8,7
1c00ac68:	65c00493          	li	s1,1628
1c00ac6c:	07f00a93          	li	s5,127
1c00ac70:	4b09                	li	s6,2
1c00ac72:	c63e                	sw	a5,12(sp)
1c00ac74:	0ff00b93          	li	s7,255
1c00ac78:	47b2                	lw	a5,12(sp)
1c00ac7a:	4701                	li	a4,0
1c00ac7c:	016709b3          	add	s3,a4,s6
1c00ac80:	00fa8a33          	add	s4,s5,a5
1c00ac84:	47a2                	lw	a5,8(sp)
1c00ac86:	0a06                	slli	s4,s4,0x1
1c00ac88:	1afd                	addi	s5,s5,-1
1c00ac8a:	9a3e                	add	s4,s4,a5
1c00ac8c:	07377263          	bgeu	a4,s3,1c00acf0 <PQCLEAN_KYBER768_CLEAN_invntt+0xba>
1c00ac90:	00199d93          	slli	s11,s3,0x1
1c00ac94:	0706                	slli	a4,a4,0x1
1c00ac96:	9da2                	add	s11,s11,s0
1c00ac98:	00e40d33          	add	s10,s0,a4
1c00ac9c:	896e                	mv	s2,s11
1c00ac9e:	000dd503          	lhu	a0,0(s11)
1c00aca2:	000d5c83          	lhu	s9,0(s10) # 80000000 <__l2_shared_end+0x63ff0000>
1c00aca6:	0d09                	addi	s10,s10,2
1c00aca8:	0d89                	addi	s11,s11,2
1c00acaa:	9566                	add	a0,a0,s9
1c00acac:	0542                	slli	a0,a0,0x10
1c00acae:	8541                	srai	a0,a0,0x10
1c00acb0:	1b7000ef          	jal	ra,1c00b666 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00acb4:	fead1f23          	sh	a0,-2(s10)
1c00acb8:	ffedd783          	lhu	a5,-2(s11)
1c00acbc:	419787b3          	sub	a5,a5,s9
1c00acc0:	07c2                	slli	a5,a5,0x10
1c00acc2:	87c1                	srai	a5,a5,0x10
1c00acc4:	02978533          	mul	a0,a5,s1
1c00acc8:	fefd9f23          	sh	a5,-2(s11)
1c00accc:	17f000ef          	jal	ra,1c00b64a <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00acd0:	fead9f23          	sh	a0,-2(s11)
1c00acd4:	fda915e3          	bne	s2,s10,1c00ac9e <PQCLEAN_KYBER768_CLEAN_invntt+0x68>
1c00acd8:	01698733          	add	a4,s3,s6
1c00acdc:	00ebed63          	bltu	s7,a4,1c00acf6 <PQCLEAN_KYBER768_CLEAN_invntt+0xc0>
1c00ace0:	016709b3          	add	s3,a4,s6
1c00ace4:	000a1483          	lh	s1,0(s4)
1c00ace8:	1afd                	addi	s5,s5,-1
1c00acea:	1a79                	addi	s4,s4,-2
1c00acec:	fb3762e3          	bltu	a4,s3,1c00ac90 <PQCLEAN_KYBER768_CLEAN_invntt+0x5a>
1c00acf0:	874e                	mv	a4,s3
1c00acf2:	feebf7e3          	bgeu	s7,a4,1c00ace0 <PQCLEAN_KYBER768_CLEAN_invntt+0xaa>
1c00acf6:	1c7d                	addi	s8,s8,-1
1c00acf8:	0b06                	slli	s6,s6,0x1
1c00acfa:	000c0963          	beqz	s8,1c00ad0c <PQCLEAN_KYBER768_CLEAN_invntt+0xd6>
1c00acfe:	4722                	lw	a4,8(sp)
1c00ad00:	001a9793          	slli	a5,s5,0x1
1c00ad04:	97ba                	add	a5,a5,a4
1c00ad06:	00079483          	lh	s1,0(a5)
1c00ad0a:	b7bd                	j	1c00ac78 <PQCLEAN_KYBER768_CLEAN_invntt+0x42>
1c00ad0c:	20040913          	addi	s2,s0,512
1c00ad10:	5a100493          	li	s1,1441
1c00ad14:	00041503          	lh	a0,0(s0)
1c00ad18:	0409                	addi	s0,s0,2
1c00ad1a:	02950533          	mul	a0,a0,s1
1c00ad1e:	12d000ef          	jal	ra,1c00b64a <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ad22:	fea41f23          	sh	a0,-2(s0)
1c00ad26:	fe8917e3          	bne	s2,s0,1c00ad14 <PQCLEAN_KYBER768_CLEAN_invntt+0xde>
1c00ad2a:	40b6                	lw	ra,76(sp)
1c00ad2c:	4426                	lw	s0,72(sp)
1c00ad2e:	4496                	lw	s1,68(sp)
1c00ad30:	4906                	lw	s2,64(sp)
1c00ad32:	59f2                	lw	s3,60(sp)
1c00ad34:	5a62                	lw	s4,56(sp)
1c00ad36:	5ad2                	lw	s5,52(sp)
1c00ad38:	5b42                	lw	s6,48(sp)
1c00ad3a:	5bb2                	lw	s7,44(sp)
1c00ad3c:	5c22                	lw	s8,40(sp)
1c00ad3e:	5c92                	lw	s9,36(sp)
1c00ad40:	5d02                	lw	s10,32(sp)
1c00ad42:	4df2                	lw	s11,28(sp)
1c00ad44:	6161                	addi	sp,sp,80
1c00ad46:	8082                	ret

1c00ad48 <PQCLEAN_KYBER768_CLEAN_basemul>:
1c00ad48:	00261783          	lh	a5,2(a2)
1c00ad4c:	00259703          	lh	a4,2(a1)
1c00ad50:	1101                	addi	sp,sp,-32
1c00ad52:	cc22                	sw	s0,24(sp)
1c00ad54:	842a                	mv	s0,a0
1c00ad56:	02f70533          	mul	a0,a4,a5
1c00ad5a:	ce06                	sw	ra,28(sp)
1c00ad5c:	ca26                	sw	s1,20(sp)
1c00ad5e:	c84a                	sw	s2,16(sp)
1c00ad60:	c64e                	sw	s3,12(sp)
1c00ad62:	892e                	mv	s2,a1
1c00ad64:	84b2                	mv	s1,a2
1c00ad66:	89b6                	mv	s3,a3
1c00ad68:	0e3000ef          	jal	ra,1c00b64a <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ad6c:	87aa                	mv	a5,a0
1c00ad6e:	03350533          	mul	a0,a0,s3
1c00ad72:	00f41023          	sh	a5,0(s0)
1c00ad76:	0d5000ef          	jal	ra,1c00b64a <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ad7a:	00a41023          	sh	a0,0(s0)
1c00ad7e:	00049783          	lh	a5,0(s1)
1c00ad82:	00091503          	lh	a0,0(s2)
1c00ad86:	02f50533          	mul	a0,a0,a5
1c00ad8a:	0c1000ef          	jal	ra,1c00b64a <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ad8e:	00045783          	lhu	a5,0(s0)
1c00ad92:	953e                	add	a0,a0,a5
1c00ad94:	00a41023          	sh	a0,0(s0)
1c00ad98:	00249783          	lh	a5,2(s1)
1c00ad9c:	00091503          	lh	a0,0(s2)
1c00ada0:	02f50533          	mul	a0,a0,a5
1c00ada4:	0a7000ef          	jal	ra,1c00b64a <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ada8:	00a41123          	sh	a0,2(s0)
1c00adac:	00049783          	lh	a5,0(s1)
1c00adb0:	00291503          	lh	a0,2(s2)
1c00adb4:	02f50533          	mul	a0,a0,a5
1c00adb8:	093000ef          	jal	ra,1c00b64a <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00adbc:	00245783          	lhu	a5,2(s0)
1c00adc0:	40f2                	lw	ra,28(sp)
1c00adc2:	44d2                	lw	s1,20(sp)
1c00adc4:	953e                	add	a0,a0,a5
1c00adc6:	00a41123          	sh	a0,2(s0)
1c00adca:	4462                	lw	s0,24(sp)
1c00adcc:	4942                	lw	s2,16(sp)
1c00adce:	49b2                	lw	s3,12(sp)
1c00add0:	6105                	addi	sp,sp,32
1c00add2:	8082                	ret

1c00add4 <PQCLEAN_KYBER768_CLEAN_poly_compress>:
1c00add4:	1101                	addi	sp,sp,-32
1c00add6:	6605                	lui	a2,0x1
1c00add8:	ce22                	sw	s0,28(sp)
1c00adda:	cc26                	sw	s1,24(sp)
1c00addc:	ca4a                	sw	s2,20(sp)
1c00adde:	c84e                	sw	s3,16(sp)
1c00ade0:	c652                	sw	s4,12(sp)
1c00ade2:	08050813          	addi	a6,a0,128 # 1000080 <__CTOR_LIST__-0x1affff84>
1c00ade6:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00adea:	00259a03          	lh	s4,2(a1)
1c00adee:	00059383          	lh	t2,0(a1)
1c00adf2:	00659983          	lh	s3,6(a1)
1c00adf6:	00a59903          	lh	s2,10(a1)
1c00adfa:	00e59483          	lh	s1,14(a1)
1c00adfe:	00459283          	lh	t0,4(a1)
1c00ae02:	00859e03          	lh	t3,8(a1)
1c00ae06:	00c59f83          	lh	t6,12(a1)
1c00ae0a:	40fa5893          	srai	a7,s4,0xf
1c00ae0e:	00c8f8b3          	and	a7,a7,a2
1c00ae12:	40f3df13          	srai	t5,t2,0xf
1c00ae16:	40f9d693          	srai	a3,s3,0xf
1c00ae1a:	40f95713          	srai	a4,s2,0xf
1c00ae1e:	40f4d793          	srai	a5,s1,0xf
1c00ae22:	98d2                	add	a7,a7,s4
1c00ae24:	00cf7f33          	and	t5,t5,a2
1c00ae28:	40fe5413          	srai	s0,t3,0xf
1c00ae2c:	8ef1                	and	a3,a3,a2
1c00ae2e:	40f2de93          	srai	t4,t0,0xf
1c00ae32:	8f71                	and	a4,a4,a2
1c00ae34:	8ff1                	and	a5,a5,a2
1c00ae36:	40ffd313          	srai	t1,t6,0xf
1c00ae3a:	08c2                	slli	a7,a7,0x10
1c00ae3c:	9f1e                	add	t5,t5,t2
1c00ae3e:	96ce                	add	a3,a3,s3
1c00ae40:	00cefeb3          	and	t4,t4,a2
1c00ae44:	974a                	add	a4,a4,s2
1c00ae46:	8c71                	and	s0,s0,a2
1c00ae48:	97a6                	add	a5,a5,s1
1c00ae4a:	00c37333          	and	t1,t1,a2
1c00ae4e:	0108d893          	srli	a7,a7,0x10
1c00ae52:	0f42                	slli	t5,t5,0x10
1c00ae54:	06c2                	slli	a3,a3,0x10
1c00ae56:	9e96                	add	t4,t4,t0
1c00ae58:	0742                	slli	a4,a4,0x10
1c00ae5a:	9e22                	add	t3,t3,s0
1c00ae5c:	07c2                	slli	a5,a5,0x10
1c00ae5e:	937e                	add	t1,t1,t6
1c00ae60:	0892                	slli	a7,a7,0x4
1c00ae62:	010f5f13          	srli	t5,t5,0x10
1c00ae66:	82c1                	srli	a3,a3,0x10
1c00ae68:	8341                	srli	a4,a4,0x10
1c00ae6a:	83c1                	srli	a5,a5,0x10
1c00ae6c:	0ec2                	slli	t4,t4,0x10
1c00ae6e:	0e42                	slli	t3,t3,0x10
1c00ae70:	0342                	slli	t1,t1,0x10
1c00ae72:	68088893          	addi	a7,a7,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00ae76:	0f12                	slli	t5,t5,0x4
1c00ae78:	02c8c8b3          	div	a7,a7,a2
1c00ae7c:	0692                	slli	a3,a3,0x4
1c00ae7e:	010ede93          	srli	t4,t4,0x10
1c00ae82:	0712                	slli	a4,a4,0x4
1c00ae84:	010e5e13          	srli	t3,t3,0x10
1c00ae88:	0792                	slli	a5,a5,0x4
1c00ae8a:	01035313          	srli	t1,t1,0x10
1c00ae8e:	680f0f13          	addi	t5,t5,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00ae92:	68068693          	addi	a3,a3,1664
1c00ae96:	0e92                	slli	t4,t4,0x4
1c00ae98:	68070713          	addi	a4,a4,1664
1c00ae9c:	0e12                	slli	t3,t3,0x4
1c00ae9e:	68078793          	addi	a5,a5,1664
1c00aea2:	0312                	slli	t1,t1,0x4
1c00aea4:	680e8e93          	addi	t4,t4,1664
1c00aea8:	680e0e13          	addi	t3,t3,1664
1c00aeac:	68030313          	addi	t1,t1,1664 # 3680 <__CTOR_LIST__-0x1bffc984>
1c00aeb0:	0511                	addi	a0,a0,4
1c00aeb2:	05c1                	addi	a1,a1,16
1c00aeb4:	02cf4f33          	div	t5,t5,a2
1c00aeb8:	00f8f893          	andi	a7,a7,15
1c00aebc:	0892                	slli	a7,a7,0x4
1c00aebe:	02c6c6b3          	div	a3,a3,a2
1c00aec2:	00ff7f13          	andi	t5,t5,15
1c00aec6:	01e8e8b3          	or	a7,a7,t5
1c00aeca:	ff150e23          	sb	a7,-4(a0)
1c00aece:	02c74733          	div	a4,a4,a2
1c00aed2:	8abd                	andi	a3,a3,15
1c00aed4:	0692                	slli	a3,a3,0x4
1c00aed6:	02c7c7b3          	div	a5,a5,a2
1c00aeda:	8b3d                	andi	a4,a4,15
1c00aedc:	0712                	slli	a4,a4,0x4
1c00aede:	02ceceb3          	div	t4,t4,a2
1c00aee2:	8bbd                	andi	a5,a5,15
1c00aee4:	0792                	slli	a5,a5,0x4
1c00aee6:	02ce4e33          	div	t3,t3,a2
1c00aeea:	00fef893          	andi	a7,t4,15
1c00aeee:	0116e6b3          	or	a3,a3,a7
1c00aef2:	fed50ea3          	sb	a3,-3(a0)
1c00aef6:	02c34333          	div	t1,t1,a2
1c00aefa:	00fe7e13          	andi	t3,t3,15
1c00aefe:	01c76733          	or	a4,a4,t3
1c00af02:	fee50f23          	sb	a4,-2(a0)
1c00af06:	00f37313          	andi	t1,t1,15
1c00af0a:	0067e7b3          	or	a5,a5,t1
1c00af0e:	fef50fa3          	sb	a5,-1(a0)
1c00af12:	ed051ce3          	bne	a0,a6,1c00adea <PQCLEAN_KYBER768_CLEAN_poly_compress+0x16>
1c00af16:	4472                	lw	s0,28(sp)
1c00af18:	44e2                	lw	s1,24(sp)
1c00af1a:	4952                	lw	s2,20(sp)
1c00af1c:	49c2                	lw	s3,16(sp)
1c00af1e:	4a32                	lw	s4,12(sp)
1c00af20:	6105                	addi	sp,sp,32
1c00af22:	8082                	ret

1c00af24 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>:
1c00af24:	6685                	lui	a3,0x1
1c00af26:	18058613          	addi	a2,a1,384
1c00af2a:	16fd                	addi	a3,a3,-1
1c00af2c:	0015c783          	lbu	a5,1(a1)
1c00af30:	0005c703          	lbu	a4,0(a1)
1c00af34:	058d                	addi	a1,a1,3
1c00af36:	07a2                	slli	a5,a5,0x8
1c00af38:	8fd9                	or	a5,a5,a4
1c00af3a:	8ff5                	and	a5,a5,a3
1c00af3c:	00f51023          	sh	a5,0(a0)
1c00af40:	ffe5c703          	lbu	a4,-2(a1)
1c00af44:	fff5c783          	lbu	a5,-1(a1)
1c00af48:	0511                	addi	a0,a0,4
1c00af4a:	8311                	srli	a4,a4,0x4
1c00af4c:	0792                	slli	a5,a5,0x4
1c00af4e:	8fd9                	or	a5,a5,a4
1c00af50:	fef51f23          	sh	a5,-2(a0)
1c00af54:	fcb61ce3          	bne	a2,a1,1c00af2c <PQCLEAN_KYBER768_CLEAN_poly_frombytes+0x8>
1c00af58:	8082                	ret

1c00af5a <PQCLEAN_KYBER768_CLEAN_poly_frommsg>:
1c00af5a:	20050713          	addi	a4,a0,512
1c00af5e:	0005c783          	lbu	a5,0(a1)
1c00af62:	0541                	addi	a0,a0,16
1c00af64:	0585                	addi	a1,a1,1
1c00af66:	8b85                	andi	a5,a5,1
1c00af68:	40f007b3          	neg	a5,a5
1c00af6c:	6817f793          	andi	a5,a5,1665
1c00af70:	fef51823          	sh	a5,-16(a0)
1c00af74:	fff5c783          	lbu	a5,-1(a1)
1c00af78:	07fa                	slli	a5,a5,0x1e
1c00af7a:	87fd                	srai	a5,a5,0x1f
1c00af7c:	6817f793          	andi	a5,a5,1665
1c00af80:	fef51923          	sh	a5,-14(a0)
1c00af84:	fff5c783          	lbu	a5,-1(a1)
1c00af88:	07f6                	slli	a5,a5,0x1d
1c00af8a:	87fd                	srai	a5,a5,0x1f
1c00af8c:	6817f793          	andi	a5,a5,1665
1c00af90:	fef51a23          	sh	a5,-12(a0)
1c00af94:	fff5c783          	lbu	a5,-1(a1)
1c00af98:	07f2                	slli	a5,a5,0x1c
1c00af9a:	87fd                	srai	a5,a5,0x1f
1c00af9c:	6817f793          	andi	a5,a5,1665
1c00afa0:	fef51b23          	sh	a5,-10(a0)
1c00afa4:	fff5c783          	lbu	a5,-1(a1)
1c00afa8:	07ee                	slli	a5,a5,0x1b
1c00afaa:	87fd                	srai	a5,a5,0x1f
1c00afac:	6817f793          	andi	a5,a5,1665
1c00afb0:	fef51c23          	sh	a5,-8(a0)
1c00afb4:	fff5c783          	lbu	a5,-1(a1)
1c00afb8:	07ea                	slli	a5,a5,0x1a
1c00afba:	87fd                	srai	a5,a5,0x1f
1c00afbc:	6817f793          	andi	a5,a5,1665
1c00afc0:	fef51d23          	sh	a5,-6(a0)
1c00afc4:	fff5c783          	lbu	a5,-1(a1)
1c00afc8:	07e6                	slli	a5,a5,0x19
1c00afca:	87fd                	srai	a5,a5,0x1f
1c00afcc:	6817f793          	andi	a5,a5,1665
1c00afd0:	fef51e23          	sh	a5,-4(a0)
1c00afd4:	fff5c783          	lbu	a5,-1(a1)
1c00afd8:	879d                	srai	a5,a5,0x7
1c00afda:	40f007b3          	neg	a5,a5
1c00afde:	6817f793          	andi	a5,a5,1665
1c00afe2:	fef51f23          	sh	a5,-2(a0)
1c00afe6:	f6a71ce3          	bne	a4,a0,1c00af5e <PQCLEAN_KYBER768_CLEAN_poly_frommsg+0x4>
1c00afea:	8082                	ret

1c00afec <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c00afec:	7175                	addi	sp,sp,-144
1c00afee:	c522                	sw	s0,136(sp)
1c00aff0:	86b2                	mv	a3,a2
1c00aff2:	842a                	mv	s0,a0
1c00aff4:	862e                	mv	a2,a1
1c00aff6:	850a                	mv	a0,sp
1c00aff8:	08000593          	li	a1,128
1c00affc:	c706                	sw	ra,140(sp)
1c00affe:	25d1                	jal	1c00b6c2 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00b000:	858a                	mv	a1,sp
1c00b002:	8522                	mv	a0,s0
1c00b004:	b76fe0ef          	jal	ra,1c00937a <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c00b008:	40ba                	lw	ra,140(sp)
1c00b00a:	442a                	lw	s0,136(sp)
1c00b00c:	6149                	addi	sp,sp,144
1c00b00e:	8082                	ret

1c00b010 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>:
1c00b010:	7175                	addi	sp,sp,-144
1c00b012:	c522                	sw	s0,136(sp)
1c00b014:	86b2                	mv	a3,a2
1c00b016:	842a                	mv	s0,a0
1c00b018:	862e                	mv	a2,a1
1c00b01a:	850a                	mv	a0,sp
1c00b01c:	08000593          	li	a1,128
1c00b020:	c706                	sw	ra,140(sp)
1c00b022:	2545                	jal	1c00b6c2 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00b024:	858a                	mv	a1,sp
1c00b026:	8522                	mv	a0,s0
1c00b028:	c54fe0ef          	jal	ra,1c00947c <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2>
1c00b02c:	40ba                	lw	ra,140(sp)
1c00b02e:	442a                	lw	s0,136(sp)
1c00b030:	6149                	addi	sp,sp,144
1c00b032:	8082                	ret

1c00b034 <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>:
1c00b034:	b109                	j	1c00ac36 <PQCLEAN_KYBER768_CLEAN_invntt>

1c00b036 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c00b036:	1101                	addi	sp,sp,-32
1c00b038:	c452                	sw	s4,8(sp)
1c00b03a:	c256                	sw	s5,4(sp)
1c00b03c:	1c000a37          	lui	s4,0x1c000
1c00b040:	1c000ab7          	lui	s5,0x1c000
1c00b044:	ca26                	sw	s1,20(sp)
1c00b046:	c84a                	sw	s2,16(sp)
1c00b048:	c64e                	sw	s3,12(sp)
1c00b04a:	ce06                	sw	ra,28(sp)
1c00b04c:	cc22                	sw	s0,24(sp)
1c00b04e:	1cca0a13          	addi	s4,s4,460 # 1c0001cc <PQCLEAN_KYBER768_CLEAN_zetas+0x80>
1c00b052:	00450993          	addi	s3,a0,4
1c00b056:	00458913          	addi	s2,a1,4
1c00b05a:	00460493          	addi	s1,a2,4
1c00b05e:	24ca8a93          	addi	s5,s5,588 # 1c00024c <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c00b062:	000a1403          	lh	s0,0(s4)
1c00b066:	ffc48613          	addi	a2,s1,-4
1c00b06a:	ffc90593          	addi	a1,s2,-4
1c00b06e:	ffc98513          	addi	a0,s3,-4
1c00b072:	86a2                	mv	a3,s0
1c00b074:	39d1                	jal	1c00ad48 <PQCLEAN_KYBER768_CLEAN_basemul>
1c00b076:	408006b3          	neg	a3,s0
1c00b07a:	06c2                	slli	a3,a3,0x10
1c00b07c:	8626                	mv	a2,s1
1c00b07e:	85ca                	mv	a1,s2
1c00b080:	854e                	mv	a0,s3
1c00b082:	86c1                	srai	a3,a3,0x10
1c00b084:	0a09                	addi	s4,s4,2
1c00b086:	31c9                	jal	1c00ad48 <PQCLEAN_KYBER768_CLEAN_basemul>
1c00b088:	09a1                	addi	s3,s3,8
1c00b08a:	0921                	addi	s2,s2,8
1c00b08c:	04a1                	addi	s1,s1,8
1c00b08e:	fd4a9ae3          	bne	s5,s4,1c00b062 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x2c>
1c00b092:	40f2                	lw	ra,28(sp)
1c00b094:	4462                	lw	s0,24(sp)
1c00b096:	44d2                	lw	s1,20(sp)
1c00b098:	4942                	lw	s2,16(sp)
1c00b09a:	49b2                	lw	s3,12(sp)
1c00b09c:	4a22                	lw	s4,8(sp)
1c00b09e:	4a92                	lw	s5,4(sp)
1c00b0a0:	6105                	addi	sp,sp,32
1c00b0a2:	8082                	ret

1c00b0a4 <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c00b0a4:	1141                	addi	sp,sp,-16
1c00b0a6:	c422                	sw	s0,8(sp)
1c00b0a8:	c226                	sw	s1,4(sp)
1c00b0aa:	c606                	sw	ra,12(sp)
1c00b0ac:	842a                	mv	s0,a0
1c00b0ae:	20050493          	addi	s1,a0,512
1c00b0b2:	00041503          	lh	a0,0(s0)
1c00b0b6:	0409                	addi	s0,s0,2
1c00b0b8:	237d                	jal	1c00b666 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00b0ba:	fea41f23          	sh	a0,-2(s0)
1c00b0be:	fe941ae3          	bne	s0,s1,1c00b0b2 <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c00b0c2:	40b2                	lw	ra,12(sp)
1c00b0c4:	4422                	lw	s0,8(sp)
1c00b0c6:	4492                	lw	s1,4(sp)
1c00b0c8:	0141                	addi	sp,sp,16
1c00b0ca:	8082                	ret

1c00b0cc <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c00b0cc:	4781                	li	a5,0
1c00b0ce:	20000893          	li	a7,512
1c00b0d2:	00f606b3          	add	a3,a2,a5
1c00b0d6:	00f58733          	add	a4,a1,a5
1c00b0da:	0006d803          	lhu	a6,0(a3) # 1000 <__CTOR_LIST__-0x1bfff004>
1c00b0de:	00075703          	lhu	a4,0(a4)
1c00b0e2:	00f506b3          	add	a3,a0,a5
1c00b0e6:	0789                	addi	a5,a5,2
1c00b0e8:	9742                	add	a4,a4,a6
1c00b0ea:	00e69023          	sh	a4,0(a3)
1c00b0ee:	ff1792e3          	bne	a5,a7,1c00b0d2 <PQCLEAN_KYBER768_CLEAN_poly_add+0x6>
1c00b0f2:	8082                	ret

1c00b0f4 <PQCLEAN_KYBER768_CLEAN_polyvec_compress>:
1c00b0f4:	88aa                	mv	a7,a0
1c00b0f6:	6605                	lui	a2,0x1
1c00b0f8:	14050513          	addi	a0,a0,320
1c00b0fc:	882e                	mv	a6,a1
1c00b0fe:	50088893          	addi	a7,a7,1280
1c00b102:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b106:	ec050693          	addi	a3,a0,-320
1c00b10a:	85c2                	mv	a1,a6
1c00b10c:	00059283          	lh	t0,0(a1)
1c00b110:	00259f83          	lh	t6,2(a1)
1c00b114:	00459f03          	lh	t5,4(a1)
1c00b118:	40f2de13          	srai	t3,t0,0xf
1c00b11c:	40ffd713          	srai	a4,t6,0xf
1c00b120:	00ce7e33          	and	t3,t3,a2
1c00b124:	8f71                	and	a4,a4,a2
1c00b126:	00659e83          	lh	t4,6(a1)
1c00b12a:	40ff5793          	srai	a5,t5,0xf
1c00b12e:	9e16                	add	t3,t3,t0
1c00b130:	977e                	add	a4,a4,t6
1c00b132:	8ff1                	and	a5,a5,a2
1c00b134:	0e42                	slli	t3,t3,0x10
1c00b136:	0742                	slli	a4,a4,0x10
1c00b138:	97fa                	add	a5,a5,t5
1c00b13a:	010e5e13          	srli	t3,t3,0x10
1c00b13e:	8341                	srli	a4,a4,0x10
1c00b140:	40fed313          	srai	t1,t4,0xf
1c00b144:	07c2                	slli	a5,a5,0x10
1c00b146:	0e2a                	slli	t3,t3,0xa
1c00b148:	072a                	slli	a4,a4,0xa
1c00b14a:	00c37333          	and	t1,t1,a2
1c00b14e:	83c1                	srli	a5,a5,0x10
1c00b150:	680e0e13          	addi	t3,t3,1664
1c00b154:	68070713          	addi	a4,a4,1664
1c00b158:	9376                	add	t1,t1,t4
1c00b15a:	02ce5e33          	divu	t3,t3,a2
1c00b15e:	07aa                	slli	a5,a5,0xa
1c00b160:	0342                	slli	t1,t1,0x10
1c00b162:	68078793          	addi	a5,a5,1664
1c00b166:	01035313          	srli	t1,t1,0x10
1c00b16a:	032a                	slli	t1,t1,0xa
1c00b16c:	68030313          	addi	t1,t1,1664
1c00b170:	0695                	addi	a3,a3,5
1c00b172:	05a1                	addi	a1,a1,8
1c00b174:	02c75733          	divu	a4,a4,a2
1c00b178:	3ffe7e13          	andi	t3,t3,1023
1c00b17c:	008e5e93          	srli	t4,t3,0x8
1c00b180:	ffc68da3          	sb	t3,-5(a3)
1c00b184:	02c7d7b3          	divu	a5,a5,a2
1c00b188:	3ff77713          	andi	a4,a4,1023
1c00b18c:	00271e13          	slli	t3,a4,0x2
1c00b190:	01ceee33          	or	t3,t4,t3
1c00b194:	8319                	srli	a4,a4,0x6
1c00b196:	ffc68e23          	sb	t3,-4(a3)
1c00b19a:	02c35333          	divu	t1,t1,a2
1c00b19e:	3ff7f793          	andi	a5,a5,1023
1c00b1a2:	00479e13          	slli	t3,a5,0x4
1c00b1a6:	01c76733          	or	a4,a4,t3
1c00b1aa:	fee68ea3          	sb	a4,-3(a3)
1c00b1ae:	8391                	srli	a5,a5,0x4
1c00b1b0:	3ff37713          	andi	a4,t1,1023
1c00b1b4:	00671313          	slli	t1,a4,0x6
1c00b1b8:	0067e7b3          	or	a5,a5,t1
1c00b1bc:	8309                	srli	a4,a4,0x2
1c00b1be:	fef68f23          	sb	a5,-2(a3)
1c00b1c2:	fee68fa3          	sb	a4,-1(a3)
1c00b1c6:	f4a693e3          	bne	a3,a0,1c00b10c <PQCLEAN_KYBER768_CLEAN_polyvec_compress+0x18>
1c00b1ca:	14068513          	addi	a0,a3,320
1c00b1ce:	20080813          	addi	a6,a6,512 # ff010200 <__l2_shared_end+0xe3000200>
1c00b1d2:	f2a89ae3          	bne	a7,a0,1c00b106 <PQCLEAN_KYBER768_CLEAN_polyvec_compress+0x12>
1c00b1d6:	8082                	ret

1c00b1d8 <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>:
1c00b1d8:	1141                	addi	sp,sp,-16
1c00b1da:	c606                	sw	ra,12(sp)
1c00b1dc:	c422                	sw	s0,8(sp)
1c00b1de:	c226                	sw	s1,4(sp)
1c00b1e0:	842a                	mv	s0,a0
1c00b1e2:	84ae                	mv	s1,a1
1c00b1e4:	3381                	jal	1c00af24 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>
1c00b1e6:	18048593          	addi	a1,s1,384
1c00b1ea:	20040513          	addi	a0,s0,512
1c00b1ee:	3b1d                	jal	1c00af24 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>
1c00b1f0:	40040513          	addi	a0,s0,1024
1c00b1f4:	4422                	lw	s0,8(sp)
1c00b1f6:	40b2                	lw	ra,12(sp)
1c00b1f8:	30048593          	addi	a1,s1,768
1c00b1fc:	4492                	lw	s1,4(sp)
1c00b1fe:	0141                	addi	sp,sp,16
1c00b200:	b315                	j	1c00af24 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>

1c00b202 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c00b202:	9e010113          	addi	sp,sp,-1568
1c00b206:	60912a23          	sw	s1,1556(sp)
1c00b20a:	64c1                	lui	s1,0x10
1c00b20c:	60812c23          	sw	s0,1560(sp)
1c00b210:	61212823          	sw	s2,1552(sp)
1c00b214:	61312623          	sw	s3,1548(sp)
1c00b218:	61412423          	sw	s4,1544(sp)
1c00b21c:	60112e23          	sw	ra,1564(sp)
1c00b220:	8a2a                	mv	s4,a0
1c00b222:	60050413          	addi	s0,a0,1536
1c00b226:	40010993          	addi	s3,sp,1024
1c00b22a:	14fd                	addi	s1,s1,-1
1c00b22c:	10000913          	li	s2,256
1c00b230:	20000613          	li	a2,512
1c00b234:	85d2                	mv	a1,s4
1c00b236:	854e                	mv	a0,s3
1c00b238:	23bd                	jal	1c00b7a6 <memcpy>
1c00b23a:	20000613          	li	a2,512
1c00b23e:	4581                	li	a1,0
1c00b240:	850a                	mv	a0,sp
1c00b242:	21c5                	jal	1c00b722 <memset>
1c00b244:	20000613          	li	a2,512
1c00b248:	4581                	li	a1,0
1c00b24a:	0408                	addi	a0,sp,512
1c00b24c:	29d9                	jal	1c00b722 <memset>
1c00b24e:	864e                	mv	a2,s3
1c00b250:	4681                	li	a3,0
1c00b252:	00061703          	lh	a4,0(a2)
1c00b256:	00261583          	lh	a1,2(a2)
1c00b25a:	4016d793          	srai	a5,a3,0x1
1c00b25e:	078a                	slli	a5,a5,0x2
1c00b260:	0742                	slli	a4,a4,0x10
1c00b262:	8de5                	and	a1,a1,s1
1c00b264:	60010513          	addi	a0,sp,1536
1c00b268:	97aa                	add	a5,a5,a0
1c00b26a:	8f4d                	or	a4,a4,a1
1c00b26c:	a0e7a023          	sw	a4,-1536(a5)
1c00b270:	0689                	addi	a3,a3,2
1c00b272:	0611                	addi	a2,a2,4
1c00b274:	fd269fe3          	bne	a3,s2,1c00b252 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x50>
1c00b278:	040c                	addi	a1,sp,512
1c00b27a:	850a                	mv	a0,sp
1c00b27c:	8a2fe0ef          	jal	ra,1c00931e <KYBER_poly_ntt>
1c00b280:	0418                	addi	a4,sp,512
1c00b282:	87d2                	mv	a5,s4
1c00b284:	4310                	lw	a2,0(a4)
1c00b286:	4354                	lw	a3,4(a4)
1c00b288:	0721                	addi	a4,a4,8
1c00b28a:	01065813          	srli	a6,a2,0x10
1c00b28e:	0106d593          	srli	a1,a3,0x10
1c00b292:	01079023          	sh	a6,0(a5)
1c00b296:	00b79123          	sh	a1,2(a5)
1c00b29a:	00c79223          	sh	a2,4(a5)
1c00b29e:	00d79323          	sh	a3,6(a5)
1c00b2a2:	07a1                	addi	a5,a5,8
1c00b2a4:	fee990e3          	bne	s3,a4,1c00b284 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x82>
1c00b2a8:	200a0a13          	addi	s4,s4,512
1c00b2ac:	f94412e3          	bne	s0,s4,1c00b230 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x2e>
1c00b2b0:	61c12083          	lw	ra,1564(sp)
1c00b2b4:	61812403          	lw	s0,1560(sp)
1c00b2b8:	61412483          	lw	s1,1556(sp)
1c00b2bc:	61012903          	lw	s2,1552(sp)
1c00b2c0:	60c12983          	lw	s3,1548(sp)
1c00b2c4:	60812a03          	lw	s4,1544(sp)
1c00b2c8:	62010113          	addi	sp,sp,1568
1c00b2cc:	8082                	ret

1c00b2ce <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont>:
1c00b2ce:	1141                	addi	sp,sp,-16
1c00b2d0:	c606                	sw	ra,12(sp)
1c00b2d2:	c422                	sw	s0,8(sp)
1c00b2d4:	842a                	mv	s0,a0
1c00b2d6:	3bb9                	jal	1c00b034 <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>
1c00b2d8:	20040513          	addi	a0,s0,512
1c00b2dc:	3ba1                	jal	1c00b034 <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>
1c00b2de:	40040513          	addi	a0,s0,1024
1c00b2e2:	4422                	lw	s0,8(sp)
1c00b2e4:	40b2                	lw	ra,12(sp)
1c00b2e6:	0141                	addi	sp,sp,16
1c00b2e8:	b3b1                	j	1c00b034 <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>

1c00b2ea <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c00b2ea:	df010113          	addi	sp,sp,-528
1c00b2ee:	20112623          	sw	ra,524(sp)
1c00b2f2:	20812423          	sw	s0,520(sp)
1c00b2f6:	20912223          	sw	s1,516(sp)
1c00b2fa:	21212023          	sw	s2,512(sp)
1c00b2fe:	842a                	mv	s0,a0
1c00b300:	84ae                	mv	s1,a1
1c00b302:	8932                	mv	s2,a2
1c00b304:	3b0d                	jal	1c00b036 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b306:	20090613          	addi	a2,s2,512
1c00b30a:	20048593          	addi	a1,s1,512 # 10200 <__CTOR_LIST__-0x1bfefe04>
1c00b30e:	850a                	mv	a0,sp
1c00b310:	331d                	jal	1c00b036 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b312:	860a                	mv	a2,sp
1c00b314:	85a2                	mv	a1,s0
1c00b316:	8522                	mv	a0,s0
1c00b318:	3b55                	jal	1c00b0cc <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b31a:	40090613          	addi	a2,s2,1024
1c00b31e:	40048593          	addi	a1,s1,1024
1c00b322:	850a                	mv	a0,sp
1c00b324:	3b09                	jal	1c00b036 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b326:	860a                	mv	a2,sp
1c00b328:	85a2                	mv	a1,s0
1c00b32a:	8522                	mv	a0,s0
1c00b32c:	3345                	jal	1c00b0cc <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b32e:	8522                	mv	a0,s0
1c00b330:	3b95                	jal	1c00b0a4 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b332:	20c12083          	lw	ra,524(sp)
1c00b336:	20812403          	lw	s0,520(sp)
1c00b33a:	20412483          	lw	s1,516(sp)
1c00b33e:	20012903          	lw	s2,512(sp)
1c00b342:	21010113          	addi	sp,sp,528
1c00b346:	8082                	ret

1c00b348 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c00b348:	1141                	addi	sp,sp,-16
1c00b34a:	c606                	sw	ra,12(sp)
1c00b34c:	c422                	sw	s0,8(sp)
1c00b34e:	842a                	mv	s0,a0
1c00b350:	3b91                	jal	1c00b0a4 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b352:	20040513          	addi	a0,s0,512
1c00b356:	33b9                	jal	1c00b0a4 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b358:	40040513          	addi	a0,s0,1024
1c00b35c:	4422                	lw	s0,8(sp)
1c00b35e:	40b2                	lw	ra,12(sp)
1c00b360:	0141                	addi	sp,sp,16
1c00b362:	b389                	j	1c00b0a4 <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c00b364 <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c00b364:	1101                	addi	sp,sp,-32
1c00b366:	cc22                	sw	s0,24(sp)
1c00b368:	ca26                	sw	s1,20(sp)
1c00b36a:	c84a                	sw	s2,16(sp)
1c00b36c:	c64e                	sw	s3,12(sp)
1c00b36e:	c452                	sw	s4,8(sp)
1c00b370:	ce06                	sw	ra,28(sp)
1c00b372:	89aa                	mv	s3,a0
1c00b374:	892e                	mv	s2,a1
1c00b376:	84b2                	mv	s1,a2
1c00b378:	4401                	li	s0,0
1c00b37a:	60000a13          	li	s4,1536
1c00b37e:	00848633          	add	a2,s1,s0
1c00b382:	008905b3          	add	a1,s2,s0
1c00b386:	00898533          	add	a0,s3,s0
1c00b38a:	20040413          	addi	s0,s0,512
1c00b38e:	3b3d                	jal	1c00b0cc <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b390:	ff4417e3          	bne	s0,s4,1c00b37e <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c00b394:	40f2                	lw	ra,28(sp)
1c00b396:	4462                	lw	s0,24(sp)
1c00b398:	44d2                	lw	s1,20(sp)
1c00b39a:	4942                	lw	s2,16(sp)
1c00b39c:	49b2                	lw	s3,12(sp)
1c00b39e:	4a22                	lw	s4,8(sp)
1c00b3a0:	6105                	addi	sp,sp,32
1c00b3a2:	8082                	ret

1c00b3a4 <randombytes>:
1c00b3a4:	2a058263          	beqz	a1,1c00b648 <randombytes+0x2a4>
1c00b3a8:	715d                	addi	sp,sp,-80
1c00b3aa:	00b50733          	add	a4,a0,a1
1c00b3ae:	c63a                	sw	a4,12(sp)
1c00b3b0:	9e378737          	lui	a4,0x9e378
1c00b3b4:	9b970713          	addi	a4,a4,-1607 # 9e3779b9 <__l2_shared_end+0x823679b9>
1c00b3b8:	1c0067b7          	lui	a5,0x1c006
1c00b3bc:	c43a                	sw	a4,8(sp)
1c00b3be:	e377a737          	lui	a4,0xe377a
1c00b3c2:	2b478793          	addi	a5,a5,692 # 1c0062b4 <outleft>
1c00b3c6:	b9070713          	addi	a4,a4,-1136 # e3779b90 <__l2_shared_end+0xc7769b90>
1c00b3ca:	c83e                	sw	a5,16(sp)
1c00b3cc:	ca3a                	sw	a4,20(sp)
1c00b3ce:	439c                	lw	a5,0(a5)
1c00b3d0:	c6ef3737          	lui	a4,0xc6ef3
1c00b3d4:	c6a2                	sw	s0,76(sp)
1c00b3d6:	1c0062b7          	lui	t0,0x1c006
1c00b3da:	1c006437          	lui	s0,0x1c006
1c00b3de:	72070713          	addi	a4,a4,1824 # c6ef3720 <__l2_shared_end+0xaaee3720>
1c00b3e2:	d06e                	sw	s11,32(sp)
1c00b3e4:	c4a6                	sw	s1,72(sp)
1c00b3e6:	c2ca                	sw	s2,68(sp)
1c00b3e8:	c0ce                	sw	s3,64(sp)
1c00b3ea:	de52                	sw	s4,60(sp)
1c00b3ec:	dc56                	sw	s5,56(sp)
1c00b3ee:	da5a                	sw	s6,52(sp)
1c00b3f0:	d85e                	sw	s7,48(sp)
1c00b3f2:	d662                	sw	s8,44(sp)
1c00b3f4:	d466                	sw	s9,40(sp)
1c00b3f6:	d26a                	sw	s10,36(sp)
1c00b3f8:	8daa                	mv	s11,a0
1c00b3fa:	29040413          	addi	s0,s0,656 # 1c006290 <out>
1c00b3fe:	26028293          	addi	t0,t0,608 # 1c006260 <in>
1c00b402:	cc3a                	sw	a4,24(sp)
1c00b404:	cf85                	beqz	a5,1c00b43c <randombytes+0x98>
1c00b406:	17fd                	addi	a5,a5,-1
1c00b408:	00279713          	slli	a4,a5,0x2
1c00b40c:	9722                	add	a4,a4,s0
1c00b40e:	4304                	lw	s1,0(a4)
1c00b410:	4742                	lw	a4,16(sp)
1c00b412:	009d8023          	sb	s1,0(s11)
1c00b416:	0d85                	addi	s11,s11,1
1c00b418:	c31c                	sw	a5,0(a4)
1c00b41a:	4732                	lw	a4,12(sp)
1c00b41c:	feed94e3          	bne	s11,a4,1c00b404 <randombytes+0x60>
1c00b420:	4436                	lw	s0,76(sp)
1c00b422:	44a6                	lw	s1,72(sp)
1c00b424:	4916                	lw	s2,68(sp)
1c00b426:	4986                	lw	s3,64(sp)
1c00b428:	5a72                	lw	s4,60(sp)
1c00b42a:	5ae2                	lw	s5,56(sp)
1c00b42c:	5b52                	lw	s6,52(sp)
1c00b42e:	5bc2                	lw	s7,48(sp)
1c00b430:	5c32                	lw	s8,44(sp)
1c00b432:	5ca2                	lw	s9,40(sp)
1c00b434:	5d12                	lw	s10,36(sp)
1c00b436:	5d82                	lw	s11,32(sp)
1c00b438:	6161                	addi	sp,sp,80
1c00b43a:	8082                	ret
1c00b43c:	0002a703          	lw	a4,0(t0)
1c00b440:	0042ae83          	lw	t4,4(t0)
1c00b444:	0082af03          	lw	t5,8(t0)
1c00b448:	0705                	addi	a4,a4,1
1c00b44a:	00e2a023          	sw	a4,0(t0)
1c00b44e:	00c2af83          	lw	t6,12(t0)
1c00b452:	ef11                	bnez	a4,1c00b46e <randombytes+0xca>
1c00b454:	0e85                	addi	t4,t4,1
1c00b456:	01d2a223          	sw	t4,4(t0)
1c00b45a:	000e9a63          	bnez	t4,1c00b46e <randombytes+0xca>
1c00b45e:	0f05                	addi	t5,t5,1
1c00b460:	01e2a423          	sw	t5,8(t0)
1c00b464:	000f1563          	bnez	t5,1c00b46e <randombytes+0xca>
1c00b468:	0f85                	addi	t6,t6,1
1c00b46a:	01f2a623          	sw	t6,12(t0)
1c00b46e:	0102ae03          	lw	t3,16(t0)
1c00b472:	0142a303          	lw	t1,20(t0)
1c00b476:	0182a883          	lw	a7,24(t0)
1c00b47a:	01c2a803          	lw	a6,28(t0)
1c00b47e:	0202a503          	lw	a0,32(t0)
1c00b482:	0242a583          	lw	a1,36(t0)
1c00b486:	0282a603          	lw	a2,40(t0)
1c00b48a:	02c2a683          	lw	a3,44(t0)
1c00b48e:	00974713          	xori	a4,a4,9
1c00b492:	007ece93          	xori	t4,t4,7
1c00b496:	009f4f13          	xori	t5,t5,9
1c00b49a:	003fcf93          	xori	t6,t6,3
1c00b49e:	002e4e13          	xori	t3,t3,2
1c00b4a2:	00334313          	xori	t1,t1,3
1c00b4a6:	0088c893          	xori	a7,a7,8
1c00b4aa:	00484813          	xori	a6,a6,4
1c00b4ae:	00654513          	xori	a0,a0,6
1c00b4b2:	0025c593          	xori	a1,a1,2
1c00b4b6:	00664613          	xori	a2,a2,6
1c00b4ba:	0046c693          	xori	a3,a3,4
1c00b4be:	4495                	li	s1,5
1c00b4c0:	49a5                	li	s3,9
1c00b4c2:	4a1d                	li	s4,7
1c00b4c4:	4a89                	li	s5,2
1c00b4c6:	4b0d                	li	s6,3
1c00b4c8:	4ba1                	li	s7,8
1c00b4ca:	4d0d                	li	s10,3
1c00b4cc:	4c0d                	li	s8,3
1c00b4ce:	4781                	li	a5,0
1c00b4d0:	ce6e                	sw	s11,28(sp)
1c00b4d2:	43d2                	lw	t2,20(sp)
1c00b4d4:	00778db3          	add	s11,a5,t2
1c00b4d8:	43a2                	lw	t2,8(sp)
1c00b4da:	01b6dc93          	srli	s9,a3,0x1b
1c00b4de:	00569913          	slli	s2,a3,0x5
1c00b4e2:	979e                	add	a5,a5,t2
1c00b4e4:	0036c393          	xori	t2,a3,3
1c00b4e8:	01996933          	or	s2,s2,s9
1c00b4ec:	93be                	add	t2,t2,a5
1c00b4ee:	0123c3b3          	xor	t2,t2,s2
1c00b4f2:	971e                	add	a4,a4,t2
1c00b4f4:	01975c93          	srli	s9,a4,0x19
1c00b4f8:	00174393          	xori	t2,a4,1
1c00b4fc:	00771913          	slli	s2,a4,0x7
1c00b500:	01996933          	or	s2,s2,s9
1c00b504:	93be                	add	t2,t2,a5
1c00b506:	0123c3b3          	xor	t2,t2,s2
1c00b50a:	9e9e                	add	t4,t4,t2
1c00b50c:	017edc93          	srli	s9,t4,0x17
1c00b510:	004ec393          	xori	t2,t4,4
1c00b514:	009e9913          	slli	s2,t4,0x9
1c00b518:	01996933          	or	s2,s2,s9
1c00b51c:	93be                	add	t2,t2,a5
1c00b51e:	0123c3b3          	xor	t2,t2,s2
1c00b522:	9f1e                	add	t5,t5,t2
1c00b524:	013f5c93          	srli	s9,t5,0x13
1c00b528:	001f4393          	xori	t2,t5,1
1c00b52c:	00df1913          	slli	s2,t5,0xd
1c00b530:	01996933          	or	s2,s2,s9
1c00b534:	93be                	add	t2,t2,a5
1c00b536:	0123c3b3          	xor	t2,t2,s2
1c00b53a:	9f9e                	add	t6,t6,t2
1c00b53c:	01bfdc93          	srli	s9,t6,0x1b
1c00b540:	005fc393          	xori	t2,t6,5
1c00b544:	005f9913          	slli	s2,t6,0x5
1c00b548:	01996933          	or	s2,s2,s9
1c00b54c:	93be                	add	t2,t2,a5
1c00b54e:	0123c3b3          	xor	t2,t2,s2
1c00b552:	9e1e                	add	t3,t3,t2
1c00b554:	019e5c93          	srli	s9,t3,0x19
1c00b558:	009e4393          	xori	t2,t3,9
1c00b55c:	007e1913          	slli	s2,t3,0x7
1c00b560:	01996933          	or	s2,s2,s9
1c00b564:	93be                	add	t2,t2,a5
1c00b566:	0123c3b3          	xor	t2,t2,s2
1c00b56a:	931e                	add	t1,t1,t2
1c00b56c:	01735c93          	srli	s9,t1,0x17
1c00b570:	00234393          	xori	t2,t1,2
1c00b574:	00931913          	slli	s2,t1,0x9
1c00b578:	01996933          	or	s2,s2,s9
1c00b57c:	93be                	add	t2,t2,a5
1c00b57e:	0123c3b3          	xor	t2,t2,s2
1c00b582:	989e                	add	a7,a7,t2
1c00b584:	0138dc93          	srli	s9,a7,0x13
1c00b588:	0068c393          	xori	t2,a7,6
1c00b58c:	00d89913          	slli	s2,a7,0xd
1c00b590:	01996933          	or	s2,s2,s9
1c00b594:	93be                	add	t2,t2,a5
1c00b596:	0123c3b3          	xor	t2,t2,s2
1c00b59a:	981e                	add	a6,a6,t2
1c00b59c:	01b85c93          	srli	s9,a6,0x1b
1c00b5a0:	00584393          	xori	t2,a6,5
1c00b5a4:	00581913          	slli	s2,a6,0x5
1c00b5a8:	01996933          	or	s2,s2,s9
1c00b5ac:	93be                	add	t2,t2,a5
1c00b5ae:	0123c3b3          	xor	t2,t2,s2
1c00b5b2:	951e                	add	a0,a0,t2
1c00b5b4:	01955c93          	srli	s9,a0,0x19
1c00b5b8:	00354393          	xori	t2,a0,3
1c00b5bc:	00751913          	slli	s2,a0,0x7
1c00b5c0:	01996933          	or	s2,s2,s9
1c00b5c4:	93be                	add	t2,t2,a5
1c00b5c6:	0123c3b3          	xor	t2,t2,s2
1c00b5ca:	959e                	add	a1,a1,t2
1c00b5cc:	0175dc93          	srli	s9,a1,0x17
1c00b5d0:	0055c393          	xori	t2,a1,5
1c00b5d4:	00959913          	slli	s2,a1,0x9
1c00b5d8:	01996933          	or	s2,s2,s9
1c00b5dc:	93be                	add	t2,t2,a5
1c00b5de:	0123c3b3          	xor	t2,t2,s2
1c00b5e2:	961e                	add	a2,a2,t2
1c00b5e4:	00864393          	xori	t2,a2,8
1c00b5e8:	00d61913          	slli	s2,a2,0xd
1c00b5ec:	01365c93          	srli	s9,a2,0x13
1c00b5f0:	93be                	add	t2,t2,a5
1c00b5f2:	01996933          	or	s2,s2,s9
1c00b5f6:	0123c3b3          	xor	t2,t2,s2
1c00b5fa:	969e                	add	a3,a3,t2
1c00b5fc:	edb79ee3          	bne	a5,s11,1c00b4d8 <randombytes+0x134>
1c00b600:	43e2                	lw	t2,24(sp)
1c00b602:	01cc4c33          	xor	s8,s8,t3
1c00b606:	006d4d33          	xor	s10,s10,t1
1c00b60a:	011bcbb3          	xor	s7,s7,a7
1c00b60e:	010b4b33          	xor	s6,s6,a6
1c00b612:	00aacab3          	xor	s5,s5,a0
1c00b616:	00ba4a33          	xor	s4,s4,a1
1c00b61a:	00c9c9b3          	xor	s3,s3,a2
1c00b61e:	8cb5                	xor	s1,s1,a3
1c00b620:	ea7799e3          	bne	a5,t2,1c00b4d2 <randombytes+0x12e>
1c00b624:	4df2                	lw	s11,28(sp)
1c00b626:	01842023          	sw	s8,0(s0)
1c00b62a:	01a42223          	sw	s10,4(s0)
1c00b62e:	01742423          	sw	s7,8(s0)
1c00b632:	01642623          	sw	s6,12(s0)
1c00b636:	01542823          	sw	s5,16(s0)
1c00b63a:	01442a23          	sw	s4,20(s0)
1c00b63e:	01342c23          	sw	s3,24(s0)
1c00b642:	cc44                	sw	s1,28(s0)
1c00b644:	479d                	li	a5,7
1c00b646:	b3e9                	j	1c00b410 <randombytes+0x6c>
1c00b648:	8082                	ret

1c00b64a <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>:
1c00b64a:	777d                	lui	a4,0xfffff
1c00b64c:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00b650:	02f507b3          	mul	a5,a0,a5
1c00b654:	2ff70713          	addi	a4,a4,767
1c00b658:	07c2                	slli	a5,a5,0x10
1c00b65a:	87c1                	srai	a5,a5,0x10
1c00b65c:	02e787b3          	mul	a5,a5,a4
1c00b660:	953e                	add	a0,a0,a5
1c00b662:	8541                	srai	a0,a0,0x10
1c00b664:	8082                	ret

1c00b666 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00b666:	6795                	lui	a5,0x5
1c00b668:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00b66c:	02f507b3          	mul	a5,a0,a5
1c00b670:	02000737          	lui	a4,0x2000
1c00b674:	97ba                	add	a5,a5,a4
1c00b676:	6705                	lui	a4,0x1
1c00b678:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b67c:	87e9                	srai	a5,a5,0x1a
1c00b67e:	02e787b3          	mul	a5,a5,a4
1c00b682:	8d1d                	sub	a0,a0,a5
1c00b684:	0542                	slli	a0,a0,0x10
1c00b686:	8541                	srai	a0,a0,0x10
1c00b688:	8082                	ret

1c00b68a <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00b68a:	7139                	addi	sp,sp,-64
1c00b68c:	da26                	sw	s1,52(sp)
1c00b68e:	d84a                	sw	s2,48(sp)
1c00b690:	84b2                	mv	s1,a2
1c00b692:	892a                	mv	s2,a0
1c00b694:	02000613          	li	a2,32
1c00b698:	0068                	addi	a0,sp,12
1c00b69a:	de06                	sw	ra,60(sp)
1c00b69c:	dc22                	sw	s0,56(sp)
1c00b69e:	8436                	mv	s0,a3
1c00b6a0:	2219                	jal	1c00b7a6 <memcpy>
1c00b6a2:	006c                	addi	a1,sp,12
1c00b6a4:	854a                	mv	a0,s2
1c00b6a6:	02200613          	li	a2,34
1c00b6aa:	02910623          	sb	s1,44(sp)
1c00b6ae:	028106a3          	sb	s0,45(sp)
1c00b6b2:	8a8fe0ef          	jal	ra,1c00975a <shake128_absorb>
1c00b6b6:	50f2                	lw	ra,60(sp)
1c00b6b8:	5462                	lw	s0,56(sp)
1c00b6ba:	54d2                	lw	s1,52(sp)
1c00b6bc:	5942                	lw	s2,48(sp)
1c00b6be:	6121                	addi	sp,sp,64
1c00b6c0:	8082                	ret

1c00b6c2 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00b6c2:	7139                	addi	sp,sp,-64
1c00b6c4:	87b2                	mv	a5,a2
1c00b6c6:	da26                	sw	s1,52(sp)
1c00b6c8:	d84a                	sw	s2,48(sp)
1c00b6ca:	84aa                	mv	s1,a0
1c00b6cc:	892e                	mv	s2,a1
1c00b6ce:	02000613          	li	a2,32
1c00b6d2:	85be                	mv	a1,a5
1c00b6d4:	0068                	addi	a0,sp,12
1c00b6d6:	de06                	sw	ra,60(sp)
1c00b6d8:	dc22                	sw	s0,56(sp)
1c00b6da:	8436                	mv	s0,a3
1c00b6dc:	20e9                	jal	1c00b7a6 <memcpy>
1c00b6de:	0070                	addi	a2,sp,12
1c00b6e0:	85ca                	mv	a1,s2
1c00b6e2:	8526                	mv	a0,s1
1c00b6e4:	02100693          	li	a3,33
1c00b6e8:	02810623          	sb	s0,44(sp)
1c00b6ec:	b58fe0ef          	jal	ra,1c009a44 <shake256>
1c00b6f0:	50f2                	lw	ra,60(sp)
1c00b6f2:	5462                	lw	s0,56(sp)
1c00b6f4:	54d2                	lw	s1,52(sp)
1c00b6f6:	5942                	lw	s2,48(sp)
1c00b6f8:	6121                	addi	sp,sp,64
1c00b6fa:	8082                	ret

1c00b6fc <pos_wait_forever>:
1c00b6fc:	f14027f3          	csrr	a5,mhartid
1c00b700:	8795                	srai	a5,a5,0x5
1c00b702:	03f7f793          	andi	a5,a5,63
1c00b706:	477d                	li	a4,31
1c00b708:	00e78363          	beq	a5,a4,1c00b70e <pos_wait_forever+0x12>
1c00b70c:	a001                	j	1c00b70c <pos_wait_forever+0x10>
1c00b70e:	1a10a7b7          	lui	a5,0x1a10a
1c00b712:	577d                	li	a4,-1
1c00b714:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b718:	10500073          	wfi
1c00b71c:	10500073          	wfi
1c00b720:	bfe5                	j	1c00b718 <pos_wait_forever+0x1c>

1c00b722 <memset>:
1c00b722:	fff60e13          	addi	t3,a2,-1
1c00b726:	ce25                	beqz	a2,1c00b79e <memset+0x7c>
1c00b728:	4789                	li	a5,2
1c00b72a:	0ff5f593          	andi	a1,a1,255
1c00b72e:	07c7fa63          	bgeu	a5,t3,1c00b7a2 <memset+0x80>
1c00b732:	00859793          	slli	a5,a1,0x8
1c00b736:	8fcd                	or	a5,a5,a1
1c00b738:	01059713          	slli	a4,a1,0x10
1c00b73c:	8f5d                	or	a4,a4,a5
1c00b73e:	01859693          	slli	a3,a1,0x18
1c00b742:	8ed9                	or	a3,a3,a4
1c00b744:	0086d313          	srli	t1,a3,0x8
1c00b748:	0106d893          	srli	a7,a3,0x10
1c00b74c:	ffc67813          	andi	a6,a2,-4
1c00b750:	87aa                	mv	a5,a0
1c00b752:	982a                	add	a6,a6,a0
1c00b754:	0ff77713          	andi	a4,a4,255
1c00b758:	82e1                	srli	a3,a3,0x18
1c00b75a:	0ff37313          	andi	t1,t1,255
1c00b75e:	0ff8f893          	andi	a7,a7,255
1c00b762:	00e78023          	sb	a4,0(a5)
1c00b766:	006780a3          	sb	t1,1(a5)
1c00b76a:	01178123          	sb	a7,2(a5)
1c00b76e:	00d781a3          	sb	a3,3(a5)
1c00b772:	0791                	addi	a5,a5,4
1c00b774:	ff0797e3          	bne	a5,a6,1c00b762 <memset+0x40>
1c00b778:	ffc67793          	andi	a5,a2,-4
1c00b77c:	00f50733          	add	a4,a0,a5
1c00b780:	40fe0e33          	sub	t3,t3,a5
1c00b784:	00f60e63          	beq	a2,a5,1c00b7a0 <memset+0x7e>
1c00b788:	00b70023          	sb	a1,0(a4)
1c00b78c:	000e0963          	beqz	t3,1c00b79e <memset+0x7c>
1c00b790:	00b700a3          	sb	a1,1(a4)
1c00b794:	4785                	li	a5,1
1c00b796:	00fe0463          	beq	t3,a5,1c00b79e <memset+0x7c>
1c00b79a:	00b70123          	sb	a1,2(a4)
1c00b79e:	8082                	ret
1c00b7a0:	8082                	ret
1c00b7a2:	872a                	mv	a4,a0
1c00b7a4:	b7d5                	j	1c00b788 <memset+0x66>

1c00b7a6 <memcpy>:
1c00b7a6:	00c5e7b3          	or	a5,a1,a2
1c00b7aa:	8fc9                	or	a5,a5,a0
1c00b7ac:	8b8d                	andi	a5,a5,3
1c00b7ae:	872e                	mv	a4,a1
1c00b7b0:	882a                	mv	a6,a0
1c00b7b2:	cbc5                	beqz	a5,1c00b862 <memcpy+0xbc>
1c00b7b4:	c279                	beqz	a2,1c00b87a <memcpy+0xd4>
1c00b7b6:	00350793          	addi	a5,a0,3
1c00b7ba:	8f8d                	sub	a5,a5,a1
1c00b7bc:	0077b793          	sltiu	a5,a5,7
1c00b7c0:	e7d1                	bnez	a5,1c00b84c <memcpy+0xa6>
1c00b7c2:	fff60793          	addi	a5,a2,-1
1c00b7c6:	0047b793          	sltiu	a5,a5,4
1c00b7ca:	e3c9                	bnez	a5,1c00b84c <memcpy+0xa6>
1c00b7cc:	ffc67e13          	andi	t3,a2,-4
1c00b7d0:	9e2e                	add	t3,t3,a1
1c00b7d2:	00174883          	lbu	a7,1(a4)
1c00b7d6:	00074303          	lbu	t1,0(a4)
1c00b7da:	00274683          	lbu	a3,2(a4)
1c00b7de:	00374783          	lbu	a5,3(a4)
1c00b7e2:	08a2                	slli	a7,a7,0x8
1c00b7e4:	0068e8b3          	or	a7,a7,t1
1c00b7e8:	06c2                	slli	a3,a3,0x10
1c00b7ea:	0116e6b3          	or	a3,a3,a7
1c00b7ee:	07e2                	slli	a5,a5,0x18
1c00b7f0:	8fd5                	or	a5,a5,a3
1c00b7f2:	0087d313          	srli	t1,a5,0x8
1c00b7f6:	0107d893          	srli	a7,a5,0x10
1c00b7fa:	83e1                	srli	a5,a5,0x18
1c00b7fc:	00d80023          	sb	a3,0(a6)
1c00b800:	006800a3          	sb	t1,1(a6)
1c00b804:	01180123          	sb	a7,2(a6)
1c00b808:	00f801a3          	sb	a5,3(a6)
1c00b80c:	0711                	addi	a4,a4,4
1c00b80e:	0811                	addi	a6,a6,4
1c00b810:	fdc711e3          	bne	a4,t3,1c00b7d2 <memcpy+0x2c>
1c00b814:	ffc67793          	andi	a5,a2,-4
1c00b818:	00367693          	andi	a3,a2,3
1c00b81c:	00f50733          	add	a4,a0,a5
1c00b820:	95be                	add	a1,a1,a5
1c00b822:	02f60f63          	beq	a2,a5,1c00b860 <memcpy+0xba>
1c00b826:	0005c603          	lbu	a2,0(a1)
1c00b82a:	fff68793          	addi	a5,a3,-1
1c00b82e:	00c70023          	sb	a2,0(a4)
1c00b832:	c79d                	beqz	a5,1c00b860 <memcpy+0xba>
1c00b834:	0015c603          	lbu	a2,1(a1)
1c00b838:	4789                	li	a5,2
1c00b83a:	00c700a3          	sb	a2,1(a4)
1c00b83e:	02f68163          	beq	a3,a5,1c00b860 <memcpy+0xba>
1c00b842:	0025c783          	lbu	a5,2(a1)
1c00b846:	00f70123          	sb	a5,2(a4)
1c00b84a:	8082                	ret
1c00b84c:	962e                	add	a2,a2,a1
1c00b84e:	87aa                	mv	a5,a0
1c00b850:	0005c703          	lbu	a4,0(a1)
1c00b854:	0585                	addi	a1,a1,1
1c00b856:	0785                	addi	a5,a5,1
1c00b858:	fee78fa3          	sb	a4,-1(a5)
1c00b85c:	fec59ae3          	bne	a1,a2,1c00b850 <memcpy+0xaa>
1c00b860:	8082                	ret
1c00b862:	de7d                	beqz	a2,1c00b860 <memcpy+0xba>
1c00b864:	87aa                	mv	a5,a0
1c00b866:	4194                	lw	a3,0(a1)
1c00b868:	0791                	addi	a5,a5,4
1c00b86a:	40c78733          	sub	a4,a5,a2
1c00b86e:	fed7ae23          	sw	a3,-4(a5)
1c00b872:	0591                	addi	a1,a1,4
1c00b874:	fea719e3          	bne	a4,a0,1c00b866 <memcpy+0xc0>
1c00b878:	8082                	ret
1c00b87a:	8082                	ret

1c00b87c <memmove>:
1c00b87c:	40b507b3          	sub	a5,a0,a1
1c00b880:	0ac7e063          	bltu	a5,a2,1c00b920 <memmove+0xa4>
1c00b884:	c661                	beqz	a2,1c00b94c <memmove+0xd0>
1c00b886:	00350793          	addi	a5,a0,3
1c00b88a:	8f8d                	sub	a5,a5,a1
1c00b88c:	0077b793          	sltiu	a5,a5,7
1c00b890:	e3dd                	bnez	a5,1c00b936 <memmove+0xba>
1c00b892:	fff60793          	addi	a5,a2,-1
1c00b896:	0047b793          	sltiu	a5,a5,4
1c00b89a:	efd1                	bnez	a5,1c00b936 <memmove+0xba>
1c00b89c:	ffc67e13          	andi	t3,a2,-4
1c00b8a0:	872e                	mv	a4,a1
1c00b8a2:	882a                	mv	a6,a0
1c00b8a4:	9e2e                	add	t3,t3,a1
1c00b8a6:	00174883          	lbu	a7,1(a4)
1c00b8aa:	00074303          	lbu	t1,0(a4)
1c00b8ae:	00274683          	lbu	a3,2(a4)
1c00b8b2:	00374783          	lbu	a5,3(a4)
1c00b8b6:	08a2                	slli	a7,a7,0x8
1c00b8b8:	0068e8b3          	or	a7,a7,t1
1c00b8bc:	06c2                	slli	a3,a3,0x10
1c00b8be:	0116e6b3          	or	a3,a3,a7
1c00b8c2:	07e2                	slli	a5,a5,0x18
1c00b8c4:	8fd5                	or	a5,a5,a3
1c00b8c6:	0087d313          	srli	t1,a5,0x8
1c00b8ca:	0107d893          	srli	a7,a5,0x10
1c00b8ce:	83e1                	srli	a5,a5,0x18
1c00b8d0:	00d80023          	sb	a3,0(a6)
1c00b8d4:	006800a3          	sb	t1,1(a6)
1c00b8d8:	01180123          	sb	a7,2(a6)
1c00b8dc:	00f801a3          	sb	a5,3(a6)
1c00b8e0:	0711                	addi	a4,a4,4
1c00b8e2:	0811                	addi	a6,a6,4
1c00b8e4:	fdc711e3          	bne	a4,t3,1c00b8a6 <memmove+0x2a>
1c00b8e8:	ffc67793          	andi	a5,a2,-4
1c00b8ec:	00367693          	andi	a3,a2,3
1c00b8f0:	00f50733          	add	a4,a0,a5
1c00b8f4:	95be                	add	a1,a1,a5
1c00b8f6:	04f60a63          	beq	a2,a5,1c00b94a <memmove+0xce>
1c00b8fa:	0005c603          	lbu	a2,0(a1)
1c00b8fe:	fff68793          	addi	a5,a3,-1
1c00b902:	00c70023          	sb	a2,0(a4)
1c00b906:	c3b1                	beqz	a5,1c00b94a <memmove+0xce>
1c00b908:	0015c603          	lbu	a2,1(a1)
1c00b90c:	4789                	li	a5,2
1c00b90e:	00c700a3          	sb	a2,1(a4)
1c00b912:	02f68c63          	beq	a3,a5,1c00b94a <memmove+0xce>
1c00b916:	0025c783          	lbu	a5,2(a1)
1c00b91a:	00f70123          	sb	a5,2(a4)
1c00b91e:	8082                	ret
1c00b920:	167d                	addi	a2,a2,-1
1c00b922:	00c587b3          	add	a5,a1,a2
1c00b926:	0007c703          	lbu	a4,0(a5)
1c00b92a:	00c507b3          	add	a5,a0,a2
1c00b92e:	00e78023          	sb	a4,0(a5)
1c00b932:	f67d                	bnez	a2,1c00b920 <memmove+0xa4>
1c00b934:	8082                	ret
1c00b936:	962a                	add	a2,a2,a0
1c00b938:	87aa                	mv	a5,a0
1c00b93a:	0005c703          	lbu	a4,0(a1)
1c00b93e:	0785                	addi	a5,a5,1
1c00b940:	0585                	addi	a1,a1,1
1c00b942:	fee78fa3          	sb	a4,-1(a5)
1c00b946:	fec79ae3          	bne	a5,a2,1c00b93a <memmove+0xbe>
1c00b94a:	8082                	ret
1c00b94c:	8082                	ret

1c00b94e <strchr>:
1c00b94e:	00054703          	lbu	a4,0(a0)
1c00b952:	0ff5f593          	andi	a1,a1,255
1c00b956:	87aa                	mv	a5,a0
1c00b958:	00b70863          	beq	a4,a1,1c00b968 <strchr+0x1a>
1c00b95c:	cb01                	beqz	a4,1c00b96c <strchr+0x1e>
1c00b95e:	0017c703          	lbu	a4,1(a5)
1c00b962:	0785                	addi	a5,a5,1
1c00b964:	feb71ce3          	bne	a4,a1,1c00b95c <strchr+0xe>
1c00b968:	853e                	mv	a0,a5
1c00b96a:	8082                	ret
1c00b96c:	4501                	li	a0,0
1c00b96e:	dded                	beqz	a1,1c00b968 <strchr+0x1a>
1c00b970:	8082                	ret

1c00b972 <puts>:
1c00b972:	00054783          	lbu	a5,0(a0)
1c00b976:	c78d                	beqz	a5,1c00b9a0 <puts+0x2e>
1c00b978:	f14026f3          	csrr	a3,mhartid
1c00b97c:	00369713          	slli	a4,a3,0x3
1c00b980:	1a10f637          	lui	a2,0x1a10f
1c00b984:	0ff77713          	andi	a4,a4,255
1c00b988:	9732                	add	a4,a4,a2
1c00b98a:	6609                	lui	a2,0x2
1c00b98c:	068a                	slli	a3,a3,0x2
1c00b98e:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b992:	8ef1                	and	a3,a3,a2
1c00b994:	9736                	add	a4,a4,a3
1c00b996:	c31c                	sw	a5,0(a4)
1c00b998:	00154783          	lbu	a5,1(a0)
1c00b99c:	0505                	addi	a0,a0,1
1c00b99e:	ffe5                	bnez	a5,1c00b996 <puts+0x24>
1c00b9a0:	f1402773          	csrr	a4,mhartid
1c00b9a4:	00371793          	slli	a5,a4,0x3
1c00b9a8:	1a10f6b7          	lui	a3,0x1a10f
1c00b9ac:	0ff7f793          	andi	a5,a5,255
1c00b9b0:	97b6                	add	a5,a5,a3
1c00b9b2:	6689                	lui	a3,0x2
1c00b9b4:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b9b8:	070a                	slli	a4,a4,0x2
1c00b9ba:	8f75                	and	a4,a4,a3
1c00b9bc:	97ba                	add	a5,a5,a4
1c00b9be:	4729                	li	a4,10
1c00b9c0:	c398                	sw	a4,0(a5)
1c00b9c2:	4501                	li	a0,0
1c00b9c4:	8082                	ret

1c00b9c6 <pos_libc_fputc_locked>:
1c00b9c6:	6689                	lui	a3,0x2
1c00b9c8:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b9cc:	f14027f3          	csrr	a5,mhartid
1c00b9d0:	00379713          	slli	a4,a5,0x3
1c00b9d4:	078a                	slli	a5,a5,0x2
1c00b9d6:	8ff5                	and	a5,a5,a3
1c00b9d8:	0ff77713          	andi	a4,a4,255
1c00b9dc:	1a10f6b7          	lui	a3,0x1a10f
1c00b9e0:	9736                	add	a4,a4,a3
1c00b9e2:	97ba                	add	a5,a5,a4
1c00b9e4:	0ff57513          	andi	a0,a0,255
1c00b9e8:	c388                	sw	a0,0(a5)
1c00b9ea:	4501                	li	a0,0
1c00b9ec:	8082                	ret

1c00b9ee <putchar>:
1c00b9ee:	6689                	lui	a3,0x2
1c00b9f0:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b9f4:	f14027f3          	csrr	a5,mhartid
1c00b9f8:	00379713          	slli	a4,a5,0x3
1c00b9fc:	078a                	slli	a5,a5,0x2
1c00b9fe:	8ff5                	and	a5,a5,a3
1c00ba00:	0ff77713          	andi	a4,a4,255
1c00ba04:	1a10f6b7          	lui	a3,0x1a10f
1c00ba08:	9736                	add	a4,a4,a3
1c00ba0a:	97ba                	add	a5,a5,a4
1c00ba0c:	0ff57513          	andi	a0,a0,255
1c00ba10:	c388                	sw	a0,0(a5)
1c00ba12:	4501                	li	a0,0
1c00ba14:	8082                	ret

1c00ba16 <pos_libc_prf_locked>:
1c00ba16:	a0b1                	j	1c00ba62 <pos_libc_prf>

1c00ba18 <exit>:
1c00ba18:	800007b7          	lui	a5,0x80000
1c00ba1c:	1141                	addi	sp,sp,-16
1c00ba1e:	8d5d                	or	a0,a0,a5
1c00ba20:	c606                	sw	ra,12(sp)
1c00ba22:	1a1047b7          	lui	a5,0x1a104
1c00ba26:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00ba2a:	39c9                	jal	1c00b6fc <pos_wait_forever>

1c00ba2c <pos_io_start>:
1c00ba2c:	4501                	li	a0,0
1c00ba2e:	8082                	ret

1c00ba30 <pos_io_stop>:
1c00ba30:	4501                	li	a0,0
1c00ba32:	8082                	ret

1c00ba34 <printf>:
1c00ba34:	7139                	addi	sp,sp,-64
1c00ba36:	02410313          	addi	t1,sp,36
1c00ba3a:	d432                	sw	a2,40(sp)
1c00ba3c:	862a                	mv	a2,a0
1c00ba3e:	1c00c537          	lui	a0,0x1c00c
1c00ba42:	d22e                	sw	a1,36(sp)
1c00ba44:	d636                	sw	a3,44(sp)
1c00ba46:	4589                	li	a1,2
1c00ba48:	869a                	mv	a3,t1
1c00ba4a:	9c650513          	addi	a0,a0,-1594 # 1c00b9c6 <pos_libc_fputc_locked>
1c00ba4e:	ce06                	sw	ra,28(sp)
1c00ba50:	d83a                	sw	a4,48(sp)
1c00ba52:	da3e                	sw	a5,52(sp)
1c00ba54:	dc42                	sw	a6,56(sp)
1c00ba56:	de46                	sw	a7,60(sp)
1c00ba58:	c61a                	sw	t1,12(sp)
1c00ba5a:	3f75                	jal	1c00ba16 <pos_libc_prf_locked>
1c00ba5c:	40f2                	lw	ra,28(sp)
1c00ba5e:	6121                	addi	sp,sp,64
1c00ba60:	8082                	ret

1c00ba62 <pos_libc_prf>:
1c00ba62:	7169                	addi	sp,sp,-304
1c00ba64:	12112623          	sw	ra,300(sp)
1c00ba68:	12812423          	sw	s0,296(sp)
1c00ba6c:	12912223          	sw	s1,292(sp)
1c00ba70:	13212023          	sw	s2,288(sp)
1c00ba74:	11312e23          	sw	s3,284(sp)
1c00ba78:	11412c23          	sw	s4,280(sp)
1c00ba7c:	11512a23          	sw	s5,276(sp)
1c00ba80:	11612823          	sw	s6,272(sp)
1c00ba84:	11712623          	sw	s7,268(sp)
1c00ba88:	11812423          	sw	s8,264(sp)
1c00ba8c:	11912223          	sw	s9,260(sp)
1c00ba90:	11a12023          	sw	s10,256(sp)
1c00ba94:	dfee                	sw	s11,252(sp)
1c00ba96:	00064783          	lbu	a5,0(a2)
1c00ba9a:	c636                	sw	a3,12(sp)
1c00ba9c:	3c0781e3          	beqz	a5,1c00c65e <pos_libc_prf+0xbfc>
1c00baa0:	7741                	lui	a4,0xffff0
1c00baa2:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00baa6:	cc3a                	sw	a4,24(sp)
1c00baa8:	10000737          	lui	a4,0x10000
1c00baac:	177d                	addi	a4,a4,-1
1c00baae:	8caa                	mv	s9,a0
1c00bab0:	84ae                	mv	s1,a1
1c00bab2:	00160c13          	addi	s8,a2,1
1c00bab6:	4401                	li	s0,0
1c00bab8:	1c000d37          	lui	s10,0x1c000
1c00babc:	ca3a                	sw	a4,20(sp)
1c00babe:	853e                	mv	a0,a5
1c00bac0:	02500793          	li	a5,37
1c00bac4:	04f50863          	beq	a0,a5,1c00bb14 <pos_libc_prf+0xb2>
1c00bac8:	85a6                	mv	a1,s1
1c00baca:	9c82                	jalr	s9
1c00bacc:	57fd                	li	a5,-1
1c00bace:	4cf50b63          	beq	a0,a5,1c00bfa4 <pos_libc_prf+0x542>
1c00bad2:	0405                	addi	s0,s0,1
1c00bad4:	000c4503          	lbu	a0,0(s8)
1c00bad8:	0c05                	addi	s8,s8,1
1c00bada:	f17d                	bnez	a0,1c00bac0 <pos_libc_prf+0x5e>
1c00badc:	12c12083          	lw	ra,300(sp)
1c00bae0:	8522                	mv	a0,s0
1c00bae2:	12812403          	lw	s0,296(sp)
1c00bae6:	12412483          	lw	s1,292(sp)
1c00baea:	12012903          	lw	s2,288(sp)
1c00baee:	11c12983          	lw	s3,284(sp)
1c00baf2:	11812a03          	lw	s4,280(sp)
1c00baf6:	11412a83          	lw	s5,276(sp)
1c00bafa:	11012b03          	lw	s6,272(sp)
1c00bafe:	10c12b83          	lw	s7,268(sp)
1c00bb02:	10812c03          	lw	s8,264(sp)
1c00bb06:	10412c83          	lw	s9,260(sp)
1c00bb0a:	10012d03          	lw	s10,256(sp)
1c00bb0e:	5dfe                	lw	s11,252(sp)
1c00bb10:	6155                	addi	sp,sp,304
1c00bb12:	8082                	ret
1c00bb14:	8de2                	mv	s11,s8
1c00bb16:	000dcc03          	lbu	s8,0(s11)
1c00bb1a:	24cd0513          	addi	a0,s10,588 # 1c00024c <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c00bb1e:	c826                	sw	s1,16(sp)
1c00bb20:	85e2                	mv	a1,s8
1c00bb22:	c202                	sw	zero,4(sp)
1c00bb24:	c402                	sw	zero,8(sp)
1c00bb26:	c002                	sw	zero,0(sp)
1c00bb28:	001d8493          	addi	s1,s11,1
1c00bb2c:	350d                	jal	1c00b94e <strchr>
1c00bb2e:	02000913          	li	s2,32
1c00bb32:	4b81                	li	s7,0
1c00bb34:	02b00993          	li	s3,43
1c00bb38:	02d00b13          	li	s6,45
1c00bb3c:	03000a93          	li	s5,48
1c00bb40:	02000a13          	li	s4,32
1c00bb44:	8626                	mv	a2,s1
1c00bb46:	c51d                	beqz	a0,1c00bb74 <pos_libc_prf+0x112>
1c00bb48:	413c0e63          	beq	s8,s3,1c00bf64 <pos_libc_prf+0x502>
1c00bb4c:	3f89ec63          	bltu	s3,s8,1c00bf44 <pos_libc_prf+0x4e2>
1c00bb50:	414c0663          	beq	s8,s4,1c00bf5c <pos_libc_prf+0x4fa>
1c00bb54:	02300793          	li	a5,35
1c00bb58:	3efc1363          	bne	s8,a5,1c00bf3e <pos_libc_prf+0x4dc>
1c00bb5c:	4b85                	li	s7,1
1c00bb5e:	8da6                	mv	s11,s1
1c00bb60:	000dcc03          	lbu	s8,0(s11)
1c00bb64:	24cd0513          	addi	a0,s10,588
1c00bb68:	001d8493          	addi	s1,s11,1
1c00bb6c:	85e2                	mv	a1,s8
1c00bb6e:	33c5                	jal	1c00b94e <strchr>
1c00bb70:	8626                	mv	a2,s1
1c00bb72:	f979                	bnez	a0,1c00bb48 <pos_libc_prf+0xe6>
1c00bb74:	87e2                	mv	a5,s8
1c00bb76:	ce5e                	sw	s7,28(sp)
1c00bb78:	02a00693          	li	a3,42
1c00bb7c:	8c6e                	mv	s8,s11
1c00bb7e:	8ba6                	mv	s7,s1
1c00bb80:	8dbe                	mv	s11,a5
1c00bb82:	44c2                	lw	s1,16(sp)
1c00bb84:	42d78263          	beq	a5,a3,1c00bfa8 <pos_libc_prf+0x546>
1c00bb88:	fd078693          	addi	a3,a5,-48
1c00bb8c:	4525                	li	a0,9
1c00bb8e:	4a01                	li	s4,0
1c00bb90:	3cd57f63          	bgeu	a0,a3,1c00bf6e <pos_libc_prf+0x50c>
1c00bb94:	02e00793          	li	a5,46
1c00bb98:	5afd                	li	s5,-1
1c00bb9a:	74fd8363          	beq	s11,a5,1c00c2e0 <pos_libc_prf+0x87e>
1c00bb9e:	1c0007b7          	lui	a5,0x1c000
1c00bba2:	85ee                	mv	a1,s11
1c00bba4:	25478513          	addi	a0,a5,596 # 1c000254 <PQCLEAN_KYBER768_CLEAN_zetas+0x108>
1c00bba8:	c832                	sw	a2,16(sp)
1c00bbaa:	3355                	jal	1c00b94e <strchr>
1c00bbac:	4642                	lw	a2,16(sp)
1c00bbae:	8c32                	mv	s8,a2
1c00bbb0:	c509                	beqz	a0,1c00bbba <pos_libc_prf+0x158>
1c00bbb2:	00064d83          	lbu	s11,0(a2)
1c00bbb6:	00160c13          	addi	s8,a2,1
1c00bbba:	06900793          	li	a5,105
1c00bbbe:	0afd8ee3          	beq	s11,a5,1c00c47a <pos_libc_prf+0xa18>
1c00bbc2:	4db7c763          	blt	a5,s11,1c00c090 <pos_libc_prf+0x62e>
1c00bbc6:	05800793          	li	a5,88
1c00bbca:	4efd8163          	beq	s11,a5,1c00c0ac <pos_libc_prf+0x64a>
1c00bbce:	41b7c163          	blt	a5,s11,1c00bfd0 <pos_libc_prf+0x56e>
1c00bbd2:	02500793          	li	a5,37
1c00bbd6:	26fd8ae3          	beq	s11,a5,1c00c64a <pos_libc_prf+0xbe8>
1c00bbda:	3fb7d863          	bge	a5,s11,1c00bfca <pos_libc_prf+0x568>
1c00bbde:	fbbd8793          	addi	a5,s11,-69
1c00bbe2:	4689                	li	a3,2
1c00bbe4:	eef6e8e3          	bltu	a3,a5,1c00bad4 <pos_libc_prf+0x72>
1c00bbe8:	47b2                	lw	a5,12(sp)
1c00bbea:	7ff00893          	li	a7,2047
1c00bbee:	00778b13          	addi	s6,a5,7
1c00bbf2:	ff8b7b13          	andi	s6,s6,-8
1c00bbf6:	004b2783          	lw	a5,4(s6) # ff0004 <__CTOR_LIST__-0x1b010000>
1c00bbfa:	000b2603          	lw	a2,0(s6)
1c00bbfe:	0b21                	addi	s6,s6,8
1c00bc00:	00b79693          	slli	a3,a5,0xb
1c00bc04:	01565513          	srli	a0,a2,0x15
1c00bc08:	8ec9                	or	a3,a3,a0
1c00bc0a:	0147d813          	srli	a6,a5,0x14
1c00bc0e:	0686                	slli	a3,a3,0x1
1c00bc10:	7ff87813          	andi	a6,a6,2047
1c00bc14:	0016d513          	srli	a0,a3,0x1
1c00bc18:	00b61313          	slli	t1,a2,0xb
1c00bc1c:	86be                	mv	a3,a5
1c00bc1e:	41180263          	beq	a6,a7,1c00c022 <pos_libc_prf+0x5c0>
1c00bc22:	04600793          	li	a5,70
1c00bc26:	00fd9463          	bne	s11,a5,1c00bc2e <pos_libc_prf+0x1cc>
1c00bc2a:	06600d93          	li	s11,102
1c00bc2e:	006867b3          	or	a5,a6,t1
1c00bc32:	00a7e8b3          	or	a7,a5,a0
1c00bc36:	862a                	mv	a2,a0
1c00bc38:	340885e3          	beqz	a7,1c00c782 <pos_libc_prf+0xd20>
1c00bc3c:	80000637          	lui	a2,0x80000
1c00bc40:	c0280813          	addi	a6,a6,-1022
1c00bc44:	879a                	mv	a5,t1
1c00bc46:	8e49                	or	a2,a2,a0
1c00bc48:	4606c7e3          	bltz	a3,1c00c8b6 <pos_libc_prf+0xe54>
1c00bc4c:	4722                	lw	a4,8(sp)
1c00bc4e:	480708e3          	beqz	a4,1c00c8de <pos_libc_prf+0xe7c>
1c00bc52:	02b00693          	li	a3,43
1c00bc56:	02d10223          	sb	a3,36(sp)
1c00bc5a:	02510f13          	addi	t5,sp,37
1c00bc5e:	56f9                	li	a3,-2
1c00bc60:	4301                	li	t1,0
1c00bc62:	06d85663          	bge	a6,a3,1c00bcce <pos_libc_prf+0x26c>
1c00bc66:	333338b7          	lui	a7,0x33333
1c00bc6a:	80000e37          	lui	t3,0x80000
1c00bc6e:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00bc72:	fffe4e13          	not	t3,t3
1c00bc76:	5ef9                	li	t4,-2
1c00bc78:	01f61593          	slli	a1,a2,0x1f
1c00bc7c:	0017d693          	srli	a3,a5,0x1
1c00bc80:	0017f713          	andi	a4,a5,1
1c00bc84:	8ecd                	or	a3,a3,a1
1c00bc86:	00d707b3          	add	a5,a4,a3
1c00bc8a:	00e7b733          	sltu	a4,a5,a4
1c00bc8e:	8205                	srli	a2,a2,0x1
1c00bc90:	963a                	add	a2,a2,a4
1c00bc92:	8742                	mv	a4,a6
1c00bc94:	0805                	addi	a6,a6,1
1c00bc96:	fec8e1e3          	bltu	a7,a2,1c00bc78 <pos_libc_prf+0x216>
1c00bc9a:	00279593          	slli	a1,a5,0x2
1c00bc9e:	01e7d513          	srli	a0,a5,0x1e
1c00bca2:	00261693          	slli	a3,a2,0x2
1c00bca6:	97ae                	add	a5,a5,a1
1c00bca8:	8ec9                	or	a3,a3,a0
1c00bcaa:	9636                	add	a2,a2,a3
1c00bcac:	00b7b5b3          	sltu	a1,a5,a1
1c00bcb0:	962e                	add	a2,a2,a1
1c00bcb2:	01f7d693          	srli	a3,a5,0x1f
1c00bcb6:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00bcba:	137d                	addi	t1,t1,-1
1c00bcbc:	01c61763          	bne	a2,t3,1c00bcca <pos_libc_prf+0x268>
1c00bcc0:	00170813          	addi	a6,a4,1
1c00bcc4:	0786                	slli	a5,a5,0x1
1c00bcc6:	ffe6e613          	ori	a2,a3,-2
1c00bcca:	fbd847e3          	blt	a6,t4,1c00bc78 <pos_libc_prf+0x216>
1c00bcce:	07005363          	blez	a6,1c00bd34 <pos_libc_prf+0x2d2>
1c00bcd2:	800008b7          	lui	a7,0x80000
1c00bcd6:	4e15                	li	t3,5
1c00bcd8:	fff8c893          	not	a7,a7
1c00bcdc:	00278693          	addi	a3,a5,2
1c00bce0:	00f6b7b3          	sltu	a5,a3,a5
1c00bce4:	963e                	add	a2,a2,a5
1c00bce6:	03c657b3          	divu	a5,a2,t3
1c00bcea:	0036d713          	srli	a4,a3,0x3
1c00bcee:	187d                	addi	a6,a6,-1
1c00bcf0:	0305                	addi	t1,t1,1
1c00bcf2:	00279593          	slli	a1,a5,0x2
1c00bcf6:	95be                	add	a1,a1,a5
1c00bcf8:	8e0d                	sub	a2,a2,a1
1c00bcfa:	0676                	slli	a2,a2,0x1d
1c00bcfc:	8f51                	or	a4,a4,a2
1c00bcfe:	03c75633          	divu	a2,a4,t3
1c00bd02:	00361713          	slli	a4,a2,0x3
1c00bd06:	00561593          	slli	a1,a2,0x5
1c00bd0a:	95ba                	add	a1,a1,a4
1c00bd0c:	8e8d                	sub	a3,a3,a1
1c00bd0e:	03c6d6b3          	divu	a3,a3,t3
1c00bd12:	8275                	srli	a2,a2,0x1d
1c00bd14:	963e                	add	a2,a2,a5
1c00bd16:	00e687b3          	add	a5,a3,a4
1c00bd1a:	00d7b6b3          	sltu	a3,a5,a3
1c00bd1e:	9636                	add	a2,a2,a3
1c00bd20:	01f7d713          	srli	a4,a5,0x1f
1c00bd24:	0606                	slli	a2,a2,0x1
1c00bd26:	8e59                	or	a2,a2,a4
1c00bd28:	0786                	slli	a5,a5,0x1
1c00bd2a:	187d                	addi	a6,a6,-1
1c00bd2c:	fec8fae3          	bgeu	a7,a2,1c00bd20 <pos_libc_prf+0x2be>
1c00bd30:	fb0046e3          	bgtz	a6,1c00bcdc <pos_libc_prf+0x27a>
1c00bd34:	4e11                	li	t3,4
1c00bd36:	01f61693          	slli	a3,a2,0x1f
1c00bd3a:	0017d713          	srli	a4,a5,0x1
1c00bd3e:	8f55                	or	a4,a4,a3
1c00bd40:	8b85                	andi	a5,a5,1
1c00bd42:	00e78533          	add	a0,a5,a4
1c00bd46:	8205                	srli	a2,a2,0x1
1c00bd48:	00f537b3          	sltu	a5,a0,a5
1c00bd4c:	00c788b3          	add	a7,a5,a2
1c00bd50:	0805                	addi	a6,a6,1
1c00bd52:	87aa                	mv	a5,a0
1c00bd54:	8646                	mv	a2,a7
1c00bd56:	ffc810e3          	bne	a6,t3,1c00bd36 <pos_libc_prf+0x2d4>
1c00bd5a:	06700793          	li	a5,103
1c00bd5e:	2a0acee3          	bltz	s5,1c00c81a <pos_libc_prf+0xdb8>
1c00bd62:	28fd83e3          	beq	s11,a5,1c00c7e8 <pos_libc_prf+0xd86>
1c00bd66:	04700793          	li	a5,71
1c00bd6a:	26fd8fe3          	beq	s11,a5,1c00c7e8 <pos_libc_prf+0xd86>
1c00bd6e:	06600793          	li	a5,102
1c00bd72:	2cfd85e3          	beq	s11,a5,1c00c83c <pos_libc_prf+0xdda>
1c00bd76:	001a8813          	addi	a6,s5,1
1c00bd7a:	47c1                	li	a5,16
1c00bd7c:	0107d363          	bge	a5,a6,1c00bd82 <pos_libc_prf+0x320>
1c00bd80:	4841                	li	a6,16
1c00bd82:	187d                	addi	a6,a6,-1
1c00bd84:	4601                	li	a2,0
1c00bd86:	4781                	li	a5,0
1c00bd88:	080006b7          	lui	a3,0x8000
1c00bd8c:	4e15                	li	t3,5
1c00bd8e:	5efd                	li	t4,-1
1c00bd90:	00278713          	addi	a4,a5,2
1c00bd94:	00f737b3          	sltu	a5,a4,a5
1c00bd98:	97b6                	add	a5,a5,a3
1c00bd9a:	03c7dfb3          	divu	t6,a5,t3
1c00bd9e:	00375593          	srli	a1,a4,0x3
1c00bda2:	187d                	addi	a6,a6,-1
1c00bda4:	002f9693          	slli	a3,t6,0x2
1c00bda8:	96fe                	add	a3,a3,t6
1c00bdaa:	8f95                	sub	a5,a5,a3
1c00bdac:	07f6                	slli	a5,a5,0x1d
1c00bdae:	8ddd                	or	a1,a1,a5
1c00bdb0:	03c5d5b3          	divu	a1,a1,t3
1c00bdb4:	00359693          	slli	a3,a1,0x3
1c00bdb8:	00559793          	slli	a5,a1,0x5
1c00bdbc:	97b6                	add	a5,a5,a3
1c00bdbe:	8f1d                	sub	a4,a4,a5
1c00bdc0:	03c757b3          	divu	a5,a4,t3
1c00bdc4:	81f5                	srli	a1,a1,0x1d
1c00bdc6:	95fe                	add	a1,a1,t6
1c00bdc8:	96be                	add	a3,a3,a5
1c00bdca:	00f6b733          	sltu	a4,a3,a5
1c00bdce:	972e                	add	a4,a4,a1
1c00bdd0:	01f71593          	slli	a1,a4,0x1f
1c00bdd4:	0016d793          	srli	a5,a3,0x1
1c00bdd8:	8fcd                	or	a5,a5,a1
1c00bdda:	8a85                	andi	a3,a3,1
1c00bddc:	97b6                	add	a5,a5,a3
1c00bdde:	8305                	srli	a4,a4,0x1
1c00bde0:	00d7b6b3          	sltu	a3,a5,a3
1c00bde4:	96ba                	add	a3,a3,a4
1c00bde6:	fbd815e3          	bne	a6,t4,1c00bd90 <pos_libc_prf+0x32e>
1c00bdea:	97aa                	add	a5,a5,a0
1c00bdec:	96c6                	add	a3,a3,a7
1c00bdee:	00a7b533          	sltu	a0,a5,a0
1c00bdf2:	00d508b3          	add	a7,a0,a3
1c00bdf6:	f00006b7          	lui	a3,0xf0000
1c00bdfa:	0116f6b3          	and	a3,a3,a7
1c00bdfe:	c2b5                	beqz	a3,1c00be62 <pos_libc_prf+0x400>
1c00be00:	00278813          	addi	a6,a5,2
1c00be04:	00f836b3          	sltu	a3,a6,a5
1c00be08:	98b6                	add	a7,a7,a3
1c00be0a:	4e95                	li	t4,5
1c00be0c:	03d8de33          	divu	t3,a7,t4
1c00be10:	00385693          	srli	a3,a6,0x3
1c00be14:	0305                	addi	t1,t1,1
1c00be16:	002e1513          	slli	a0,t3,0x2
1c00be1a:	9572                	add	a0,a0,t3
1c00be1c:	40a888b3          	sub	a7,a7,a0
1c00be20:	01d89513          	slli	a0,a7,0x1d
1c00be24:	8ec9                	or	a3,a3,a0
1c00be26:	03d6d6b3          	divu	a3,a3,t4
1c00be2a:	00369513          	slli	a0,a3,0x3
1c00be2e:	00569793          	slli	a5,a3,0x5
1c00be32:	97aa                	add	a5,a5,a0
1c00be34:	40f807b3          	sub	a5,a6,a5
1c00be38:	03d7d7b3          	divu	a5,a5,t4
1c00be3c:	82f5                	srli	a3,a3,0x1d
1c00be3e:	96f2                	add	a3,a3,t3
1c00be40:	953e                	add	a0,a0,a5
1c00be42:	00f537b3          	sltu	a5,a0,a5
1c00be46:	96be                	add	a3,a3,a5
1c00be48:	01f69813          	slli	a6,a3,0x1f
1c00be4c:	00155793          	srli	a5,a0,0x1
1c00be50:	00f867b3          	or	a5,a6,a5
1c00be54:	8905                	andi	a0,a0,1
1c00be56:	97aa                	add	a5,a5,a0
1c00be58:	8285                	srli	a3,a3,0x1
1c00be5a:	00a7b533          	sltu	a0,a5,a0
1c00be5e:	00d508b3          	add	a7,a0,a3
1c00be62:	001f0993          	addi	s3,t5,1
1c00be66:	06600693          	li	a3,102
1c00be6a:	884e                	mv	a6,s3
1c00be6c:	4edd8163          	beq	s11,a3,1c00c34e <pos_libc_prf+0x8ec>
1c00be70:	00279693          	slli	a3,a5,0x2
1c00be74:	01e7d513          	srli	a0,a5,0x1e
1c00be78:	00289e13          	slli	t3,a7,0x2
1c00be7c:	97b6                	add	a5,a5,a3
1c00be7e:	01c56e33          	or	t3,a0,t3
1c00be82:	00d7b833          	sltu	a6,a5,a3
1c00be86:	011e06b3          	add	a3,t3,a7
1c00be8a:	9836                	add	a6,a6,a3
1c00be8c:	0806                	slli	a6,a6,0x1
1c00be8e:	01f7d693          	srli	a3,a5,0x1f
1c00be92:	0106e833          	or	a6,a3,a6
1c00be96:	01c85693          	srli	a3,a6,0x1c
1c00be9a:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00be9e:	4772                	lw	a4,28(sp)
1c00bea0:	00af0023          	sb	a0,0(t5)
1c00bea4:	00179513          	slli	a0,a5,0x1
1c00bea8:	47d2                	lw	a5,20(sp)
1c00beaa:	00d036b3          	snez	a3,a3
1c00beae:	01576bb3          	or	s7,a4,s5
1c00beb2:	00f87833          	and	a6,a6,a5
1c00beb6:	40d30333          	sub	t1,t1,a3
1c00beba:	060b8463          	beqz	s7,1c00bf22 <pos_libc_prf+0x4c0>
1c00bebe:	02e00793          	li	a5,46
1c00bec2:	00ff00a3          	sb	a5,1(t5)
1c00bec6:	002f0993          	addi	s3,t5,2
1c00beca:	040a8c63          	beqz	s5,1c00bf22 <pos_libc_prf+0x4c0>
1c00bece:	002a8793          	addi	a5,s5,2
1c00bed2:	9f3e                	add	t5,t5,a5
1c00bed4:	88ce                	mv	a7,s3
1c00bed6:	4ebd                	li	t4,15
1c00bed8:	03000f93          	li	t6,48
1c00bedc:	00251793          	slli	a5,a0,0x2
1c00bee0:	01e55693          	srli	a3,a0,0x1e
1c00bee4:	00281713          	slli	a4,a6,0x2
1c00bee8:	00a785b3          	add	a1,a5,a0
1c00beec:	8f55                	or	a4,a4,a3
1c00beee:	9742                	add	a4,a4,a6
1c00bef0:	00f5b7b3          	sltu	a5,a1,a5
1c00bef4:	97ba                	add	a5,a5,a4
1c00bef6:	0786                	slli	a5,a5,0x1
1c00bef8:	01f5d713          	srli	a4,a1,0x1f
1c00befc:	8fd9                	or	a5,a5,a4
1c00befe:	01c7d713          	srli	a4,a5,0x1c
1c00bf02:	03070713          	addi	a4,a4,48
1c00bf06:	0885                	addi	a7,a7,1
1c00bf08:	53d05763          	blez	t4,1c00c436 <pos_libc_prf+0x9d4>
1c00bf0c:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00bf10:	4752                	lw	a4,20(sp)
1c00bf12:	1efd                	addi	t4,t4,-1
1c00bf14:	00159513          	slli	a0,a1,0x1
1c00bf18:	00e7f833          	and	a6,a5,a4
1c00bf1c:	fd1f10e3          	bne	t5,a7,1c00bedc <pos_libc_prf+0x47a>
1c00bf20:	99d6                	add	s3,s3,s5
1c00bf22:	4e061c63          	bnez	a2,1c00c41a <pos_libc_prf+0x9b8>
1c00bf26:	fdfdf793          	andi	a5,s11,-33
1c00bf2a:	04500693          	li	a3,69
1c00bf2e:	00d781e3          	beq	a5,a3,1c00c730 <pos_libc_prf+0xcce>
1c00bf32:	105c                	addi	a5,sp,36
1c00bf34:	00098023          	sb	zero,0(s3)
1c00bf38:	40f989b3          	sub	s3,s3,a5
1c00bf3c:	aa05                	j	1c00c06c <pos_libc_prf+0x60a>
1c00bf3e:	b80c0fe3          	beqz	s8,1c00badc <pos_libc_prf+0x7a>
1c00bf42:	b931                	j	1c00bb5e <pos_libc_prf+0xfc>
1c00bf44:	016c0863          	beq	s8,s6,1c00bf54 <pos_libc_prf+0x4f2>
1c00bf48:	c15c1be3          	bne	s8,s5,1c00bb5e <pos_libc_prf+0xfc>
1c00bf4c:	03000913          	li	s2,48
1c00bf50:	8da6                	mv	s11,s1
1c00bf52:	b139                	j	1c00bb60 <pos_libc_prf+0xfe>
1c00bf54:	4785                	li	a5,1
1c00bf56:	c03e                	sw	a5,0(sp)
1c00bf58:	8da6                	mv	s11,s1
1c00bf5a:	b119                	j	1c00bb60 <pos_libc_prf+0xfe>
1c00bf5c:	4785                	li	a5,1
1c00bf5e:	c23e                	sw	a5,4(sp)
1c00bf60:	8da6                	mv	s11,s1
1c00bf62:	befd                	j	1c00bb60 <pos_libc_prf+0xfe>
1c00bf64:	4785                	li	a5,1
1c00bf66:	c43e                	sw	a5,8(sp)
1c00bf68:	8da6                	mv	s11,s1
1c00bf6a:	bedd                	j	1c00bb60 <pos_libc_prf+0xfe>
1c00bf6c:	0b85                	addi	s7,s7,1
1c00bf6e:	002a1793          	slli	a5,s4,0x2
1c00bf72:	97d2                	add	a5,a5,s4
1c00bf74:	0786                	slli	a5,a5,0x1
1c00bf76:	97ee                	add	a5,a5,s11
1c00bf78:	000bcd83          	lbu	s11,0(s7)
1c00bf7c:	fd078a13          	addi	s4,a5,-48
1c00bf80:	8662                	mv	a2,s8
1c00bf82:	fd0d8793          	addi	a5,s11,-48
1c00bf86:	8c5e                	mv	s8,s7
1c00bf88:	fef572e3          	bgeu	a0,a5,1c00bf6c <pos_libc_prf+0x50a>
1c00bf8c:	0609                	addi	a2,a2,2
1c00bf8e:	0c800793          	li	a5,200
1c00bf92:	c147f1e3          	bgeu	a5,s4,1c00bb94 <pos_libc_prf+0x132>
1c00bf96:	0c800a13          	li	s4,200
1c00bf9a:	beed                	j	1c00bb94 <pos_libc_prf+0x132>
1c00bf9c:	0c800793          	li	a5,200
1c00bfa0:	b3b7dae3          	bge	a5,s11,1c00bad4 <pos_libc_prf+0x72>
1c00bfa4:	547d                	li	s0,-1
1c00bfa6:	be1d                	j	1c00badc <pos_libc_prf+0x7a>
1c00bfa8:	47b2                	lw	a5,12(sp)
1c00bfaa:	0007aa03          	lw	s4,0(a5)
1c00bfae:	00478693          	addi	a3,a5,4
1c00bfb2:	000a5663          	bgez	s4,1c00bfbe <pos_libc_prf+0x55c>
1c00bfb6:	4785                	li	a5,1
1c00bfb8:	41400a33          	neg	s4,s4
1c00bfbc:	c03e                	sw	a5,0(sp)
1c00bfbe:	000bcd83          	lbu	s11,0(s7)
1c00bfc2:	c636                	sw	a3,12(sp)
1c00bfc4:	002c0613          	addi	a2,s8,2
1c00bfc8:	b7d9                	j	1c00bf8e <pos_libc_prf+0x52c>
1c00bfca:	b00d89e3          	beqz	s11,1c00badc <pos_libc_prf+0x7a>
1c00bfce:	b619                	j	1c00bad4 <pos_libc_prf+0x72>
1c00bfd0:	06400793          	li	a5,100
1c00bfd4:	4afd8363          	beq	s11,a5,1c00c47a <pos_libc_prf+0xa18>
1c00bfd8:	19b7d963          	bge	a5,s11,1c00c16a <pos_libc_prf+0x708>
1c00bfdc:	f9bd8793          	addi	a5,s11,-101
1c00bfe0:	4689                	li	a3,2
1c00bfe2:	aef6e9e3          	bltu	a3,a5,1c00bad4 <pos_libc_prf+0x72>
1c00bfe6:	47b2                	lw	a5,12(sp)
1c00bfe8:	7ff00893          	li	a7,2047
1c00bfec:	00778b13          	addi	s6,a5,7
1c00bff0:	ff8b7b13          	andi	s6,s6,-8
1c00bff4:	004b2783          	lw	a5,4(s6)
1c00bff8:	000b2603          	lw	a2,0(s6)
1c00bffc:	0b21                	addi	s6,s6,8
1c00bffe:	00b79693          	slli	a3,a5,0xb
1c00c002:	01565813          	srli	a6,a2,0x15
1c00c006:	0147d513          	srli	a0,a5,0x14
1c00c00a:	00d866b3          	or	a3,a6,a3
1c00c00e:	0686                	slli	a3,a3,0x1
1c00c010:	7ff57813          	andi	a6,a0,2047
1c00c014:	00b61313          	slli	t1,a2,0xb
1c00c018:	0016d513          	srli	a0,a3,0x1
1c00c01c:	86be                	mv	a3,a5
1c00c01e:	c11818e3          	bne	a6,a7,1c00bc2e <pos_libc_prf+0x1cc>
1c00c022:	105c                	addi	a5,sp,36
1c00c024:	0006d863          	bgez	a3,1c00c034 <pos_libc_prf+0x5d2>
1c00c028:	02d00793          	li	a5,45
1c00c02c:	02f10223          	sb	a5,36(sp)
1c00c030:	02510793          	addi	a5,sp,37
1c00c034:	00a36633          	or	a2,t1,a0
1c00c038:	fbfd8593          	addi	a1,s11,-65
1c00c03c:	00378993          	addi	s3,a5,3
1c00c040:	46e5                	li	a3,25
1c00c042:	0c0612e3          	bnez	a2,1c00c906 <pos_libc_prf+0xea4>
1c00c046:	10b6e5e3          	bltu	a3,a1,1c00c950 <pos_libc_prf+0xeee>
1c00c04a:	04900693          	li	a3,73
1c00c04e:	00d78023          	sb	a3,0(a5)
1c00c052:	04e00693          	li	a3,78
1c00c056:	00d780a3          	sb	a3,1(a5)
1c00c05a:	04600693          	li	a3,70
1c00c05e:	00d78123          	sb	a3,2(a5)
1c00c062:	000781a3          	sb	zero,3(a5)
1c00c066:	105c                	addi	a5,sp,36
1c00c068:	40f989b3          	sub	s3,s3,a5
1c00c06c:	47a2                	lw	a5,8(sp)
1c00c06e:	4712                	lw	a4,4(sp)
1c00c070:	8fd9                	or	a5,a5,a4
1c00c072:	ce3e                	sw	a5,28(sp)
1c00c074:	5e079b63          	bnez	a5,1c00c66a <pos_libc_prf+0xc08>
1c00c078:	02414683          	lbu	a3,36(sp)
1c00c07c:	02d00793          	li	a5,45
1c00c080:	5ef68563          	beq	a3,a5,1c00c66a <pos_libc_prf+0xc08>
1c00c084:	0c800793          	li	a5,200
1c00c088:	0d37d863          	bge	a5,s3,1c00c158 <pos_libc_prf+0x6f6>
1c00c08c:	547d                	li	s0,-1
1c00c08e:	b4b9                	j	1c00badc <pos_libc_prf+0x7a>
1c00c090:	07000793          	li	a5,112
1c00c094:	46fd8f63          	beq	s11,a5,1c00c512 <pos_libc_prf+0xab0>
1c00c098:	1bb7d663          	bge	a5,s11,1c00c244 <pos_libc_prf+0x7e2>
1c00c09c:	07500793          	li	a5,117
1c00c0a0:	52fd8763          	beq	s11,a5,1c00c5ce <pos_libc_prf+0xb6c>
1c00c0a4:	07800793          	li	a5,120
1c00c0a8:	16fd9163          	bne	s11,a5,1c00c20a <pos_libc_prf+0x7a8>
1c00c0ac:	47b2                	lw	a5,12(sp)
1c00c0ae:	1054                	addi	a3,sp,36
1c00c0b0:	4390                	lw	a2,0(a5)
1c00c0b2:	00478b13          	addi	s6,a5,4
1c00c0b6:	47f2                	lw	a5,28(sp)
1c00c0b8:	28079163          	bnez	a5,1c00c33a <pos_libc_prf+0x8d8>
1c00c0bc:	87b6                	mv	a5,a3
1c00c0be:	4ea5                	li	t4,9
1c00c0c0:	4e3d                	li	t3,15
1c00c0c2:	a039                	j	1c00c0d0 <pos_libc_prf+0x66e>
1c00c0c4:	ff098fa3          	sb	a6,-1(s3)
1c00c0c8:	02ce7663          	bgeu	t3,a2,1c00c0f4 <pos_libc_prf+0x692>
1c00c0cc:	862a                	mv	a2,a0
1c00c0ce:	87ce                	mv	a5,s3
1c00c0d0:	00f67593          	andi	a1,a2,15
1c00c0d4:	00178993          	addi	s3,a5,1
1c00c0d8:	05758813          	addi	a6,a1,87
1c00c0dc:	03058713          	addi	a4,a1,48
1c00c0e0:	00465513          	srli	a0,a2,0x4
1c00c0e4:	febee0e3          	bltu	t4,a1,1c00c0c4 <pos_libc_prf+0x662>
1c00c0e8:	00e78023          	sb	a4,0(a5)
1c00c0ec:	00178993          	addi	s3,a5,1
1c00c0f0:	fcce6ee3          	bltu	t3,a2,1c00c0cc <pos_libc_prf+0x66a>
1c00c0f4:	40d98633          	sub	a2,s3,a3
1c00c0f8:	01565c63          	bge	a2,s5,1c00c110 <pos_libc_prf+0x6ae>
1c00c0fc:	03000513          	li	a0,48
1c00c100:	87ce                	mv	a5,s3
1c00c102:	0985                	addi	s3,s3,1
1c00c104:	40d98733          	sub	a4,s3,a3
1c00c108:	fea98fa3          	sb	a0,-1(s3)
1c00c10c:	ff574ae3          	blt	a4,s5,1c00c100 <pos_libc_prf+0x69e>
1c00c110:	00098023          	sb	zero,0(s3)
1c00c114:	00f6fe63          	bgeu	a3,a5,1c00c130 <pos_libc_prf+0x6ce>
1c00c118:	0006c603          	lbu	a2,0(a3)
1c00c11c:	0007c703          	lbu	a4,0(a5)
1c00c120:	0685                	addi	a3,a3,1
1c00c122:	00c78023          	sb	a2,0(a5)
1c00c126:	fee68fa3          	sb	a4,-1(a3)
1c00c12a:	17fd                	addi	a5,a5,-1
1c00c12c:	fef6e6e3          	bltu	a3,a5,1c00c118 <pos_libc_prf+0x6b6>
1c00c130:	05800793          	li	a5,88
1c00c134:	66fd8463          	beq	s11,a5,1c00c79c <pos_libc_prf+0xd3a>
1c00c138:	105c                	addi	a5,sp,36
1c00c13a:	40f989b3          	sub	s3,s3,a5
1c00c13e:	47f2                	lw	a5,28(sp)
1c00c140:	c399                	beqz	a5,1c00c146 <pos_libc_prf+0x6e4>
1c00c142:	4789                	li	a5,2
1c00c144:	ce3e                	sw	a5,28(sp)
1c00c146:	57fd                	li	a5,-1
1c00c148:	f2fa8ee3          	beq	s5,a5,1c00c084 <pos_libc_prf+0x622>
1c00c14c:	0c800793          	li	a5,200
1c00c150:	e537cae3          	blt	a5,s3,1c00bfa4 <pos_libc_prf+0x542>
1c00c154:	02000913          	li	s2,32
1c00c158:	00198613          	addi	a2,s3,1
1c00c15c:	0349c963          	blt	s3,s4,1c00c18e <pos_libc_prf+0x72c>
1c00c160:	c65a                	sw	s6,12(sp)
1c00c162:	8a4e                	mv	s4,s3
1c00c164:	1a0a1663          	bnez	s4,1c00c310 <pos_libc_prf+0x8ae>
1c00c168:	b2b5                	j	1c00bad4 <pos_libc_prf+0x72>
1c00c16a:	06300793          	li	a5,99
1c00c16e:	96fd93e3          	bne	s11,a5,1c00bad4 <pos_libc_prf+0x72>
1c00c172:	4732                	lw	a4,12(sp)
1c00c174:	020102a3          	sb	zero,37(sp)
1c00c178:	4785                	li	a5,1
1c00c17a:	4314                	lw	a3,0(a4)
1c00c17c:	00470b13          	addi	s6,a4,4
1c00c180:	02d10223          	sb	a3,36(sp)
1c00c184:	1947d463          	bge	a5,s4,1c00c30c <pos_libc_prf+0x8aa>
1c00c188:	4609                	li	a2,2
1c00c18a:	4985                	li	s3,1
1c00c18c:	ce02                	sw	zero,28(sp)
1c00c18e:	4782                	lw	a5,0(sp)
1c00c190:	4e078463          	beqz	a5,1c00c678 <pos_libc_prf+0xc16>
1c00c194:	413a07b3          	sub	a5,s4,s3
1c00c198:	4585                	li	a1,1
1c00c19a:	0149d363          	bge	s3,s4,1c00c1a0 <pos_libc_prf+0x73e>
1c00c19e:	85be                	mv	a1,a5
1c00c1a0:	17fd                	addi	a5,a5,-1
1c00c1a2:	0037b793          	sltiu	a5,a5,3
1c00c1a6:	eb95                	bnez	a5,1c00c1da <pos_libc_prf+0x778>
1c00c1a8:	0349d963          	bge	s3,s4,1c00c1da <pos_libc_prf+0x778>
1c00c1ac:	105c                	addi	a5,sp,36
1c00c1ae:	97ce                	add	a5,a5,s3
1c00c1b0:	ffc5f613          	andi	a2,a1,-4
1c00c1b4:	963e                	add	a2,a2,a5
1c00c1b6:	02000693          	li	a3,32
1c00c1ba:	00d78023          	sb	a3,0(a5)
1c00c1be:	00d780a3          	sb	a3,1(a5)
1c00c1c2:	00d78123          	sb	a3,2(a5)
1c00c1c6:	00d781a3          	sb	a3,3(a5)
1c00c1ca:	0791                	addi	a5,a5,4
1c00c1cc:	fef617e3          	bne	a2,a5,1c00c1ba <pos_libc_prf+0x758>
1c00c1d0:	ffc5f793          	andi	a5,a1,-4
1c00c1d4:	99be                	add	s3,s3,a5
1c00c1d6:	02b78663          	beq	a5,a1,1c00c202 <pos_libc_prf+0x7a0>
1c00c1da:	199c                	addi	a5,sp,240
1c00c1dc:	97ce                	add	a5,a5,s3
1c00c1de:	02000693          	li	a3,32
1c00c1e2:	f2d78a23          	sb	a3,-204(a5)
1c00c1e6:	00198793          	addi	a5,s3,1
1c00c1ea:	0147dc63          	bge	a5,s4,1c00c202 <pos_libc_prf+0x7a0>
1c00c1ee:	1998                	addi	a4,sp,240
1c00c1f0:	97ba                	add	a5,a5,a4
1c00c1f2:	f2d78a23          	sb	a3,-204(a5)
1c00c1f6:	0989                	addi	s3,s3,2
1c00c1f8:	0149d563          	bge	s3,s4,1c00c202 <pos_libc_prf+0x7a0>
1c00c1fc:	99ba                	add	s3,s3,a4
1c00c1fe:	f2d98a23          	sb	a3,-204(s3)
1c00c202:	c65a                	sw	s6,12(sp)
1c00c204:	100a1663          	bnez	s4,1c00c310 <pos_libc_prf+0x8ae>
1c00c208:	b0f1                	j	1c00bad4 <pos_libc_prf+0x72>
1c00c20a:	07300793          	li	a5,115
1c00c20e:	d8fd97e3          	bne	s11,a5,1c00bf9c <pos_libc_prf+0x53a>
1c00c212:	47b2                	lw	a5,12(sp)
1c00c214:	4981                	li	s3,0
1c00c216:	0c800693          	li	a3,200
1c00c21a:	438c                	lw	a1,0(a5)
1c00c21c:	00478b13          	addi	s6,a5,4
1c00c220:	a021                	j	1c00c228 <pos_libc_prf+0x7c6>
1c00c222:	0985                	addi	s3,s3,1
1c00c224:	6ad98163          	beq	s3,a3,1c00c8c6 <pos_libc_prf+0xe64>
1c00c228:	013587b3          	add	a5,a1,s3
1c00c22c:	0007c783          	lbu	a5,0(a5)
1c00c230:	fbed                	bnez	a5,1c00c222 <pos_libc_prf+0x7c0>
1c00c232:	000ac563          	bltz	s5,1c00c23c <pos_libc_prf+0x7da>
1c00c236:	013ad363          	bge	s5,s3,1c00c23c <pos_libc_prf+0x7da>
1c00c23a:	89d6                	mv	s3,s5
1c00c23c:	5a099163          	bnez	s3,1c00c7de <pos_libc_prf+0xd7c>
1c00c240:	c65a                	sw	s6,12(sp)
1c00c242:	b849                	j	1c00bad4 <pos_libc_prf+0x72>
1c00c244:	06e00793          	li	a5,110
1c00c248:	36fd8c63          	beq	s11,a5,1c00c5c0 <pos_libc_prf+0xb5e>
1c00c24c:	06f00793          	li	a5,111
1c00c250:	88fd92e3          	bne	s11,a5,1c00bad4 <pos_libc_prf+0x72>
1c00c254:	47b2                	lw	a5,12(sp)
1c00c256:	4390                	lw	a2,0(a5)
1c00c258:	00478b13          	addi	s6,a5,4
1c00c25c:	47f2                	lw	a5,28(sp)
1c00c25e:	c7f5                	beqz	a5,1c00c34a <pos_libc_prf+0x8e8>
1c00c260:	03000793          	li	a5,48
1c00c264:	02f10223          	sb	a5,36(sp)
1c00c268:	02510693          	addi	a3,sp,37
1c00c26c:	60060b63          	beqz	a2,1c00c882 <pos_libc_prf+0xe20>
1c00c270:	89b6                	mv	s3,a3
1c00c272:	481d                	li	a6,7
1c00c274:	00767713          	andi	a4,a2,7
1c00c278:	03070713          	addi	a4,a4,48
1c00c27c:	85b2                	mv	a1,a2
1c00c27e:	00e98023          	sb	a4,0(s3)
1c00c282:	87ce                	mv	a5,s3
1c00c284:	820d                	srli	a2,a2,0x3
1c00c286:	0985                	addi	s3,s3,1
1c00c288:	feb866e3          	bltu	a6,a1,1c00c274 <pos_libc_prf+0x812>
1c00c28c:	40d98633          	sub	a2,s3,a3
1c00c290:	01565c63          	bge	a2,s5,1c00c2a8 <pos_libc_prf+0x846>
1c00c294:	03000593          	li	a1,48
1c00c298:	87ce                	mv	a5,s3
1c00c29a:	0985                	addi	s3,s3,1
1c00c29c:	40d98733          	sub	a4,s3,a3
1c00c2a0:	feb98fa3          	sb	a1,-1(s3)
1c00c2a4:	ff574ae3          	blt	a4,s5,1c00c298 <pos_libc_prf+0x836>
1c00c2a8:	00098023          	sb	zero,0(s3)
1c00c2ac:	00f6fe63          	bgeu	a3,a5,1c00c2c8 <pos_libc_prf+0x866>
1c00c2b0:	0006c603          	lbu	a2,0(a3)
1c00c2b4:	0007c703          	lbu	a4,0(a5)
1c00c2b8:	0685                	addi	a3,a3,1
1c00c2ba:	00c78023          	sb	a2,0(a5)
1c00c2be:	fee68fa3          	sb	a4,-1(a3)
1c00c2c2:	17fd                	addi	a5,a5,-1
1c00c2c4:	fef6e6e3          	bltu	a3,a5,1c00c2b0 <pos_libc_prf+0x84e>
1c00c2c8:	1058                	addi	a4,sp,36
1c00c2ca:	57fd                	li	a5,-1
1c00c2cc:	40e989b3          	sub	s3,s3,a4
1c00c2d0:	36fa8763          	beq	s5,a5,1c00c63e <pos_libc_prf+0xbdc>
1c00c2d4:	0c800793          	li	a5,200
1c00c2d8:	cd37c6e3          	blt	a5,s3,1c00bfa4 <pos_libc_prf+0x542>
1c00c2dc:	ce02                	sw	zero,28(sp)
1c00c2de:	bd9d                	j	1c00c154 <pos_libc_prf+0x6f2>
1c00c2e0:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00c2e4:	02a00793          	li	a5,42
1c00c2e8:	00160693          	addi	a3,a2,1
1c00c2ec:	14f59b63          	bne	a1,a5,1c00c442 <pos_libc_prf+0x9e0>
1c00c2f0:	47b2                	lw	a5,12(sp)
1c00c2f2:	00164d83          	lbu	s11,1(a2)
1c00c2f6:	0609                	addi	a2,a2,2
1c00c2f8:	0007aa83          	lw	s5,0(a5)
1c00c2fc:	0791                	addi	a5,a5,4
1c00c2fe:	c63e                	sw	a5,12(sp)
1c00c300:	0c800793          	li	a5,200
1c00c304:	8957dde3          	bge	a5,s5,1c00bb9e <pos_libc_prf+0x13c>
1c00c308:	5afd                	li	s5,-1
1c00c30a:	b851                	j	1c00bb9e <pos_libc_prf+0x13c>
1c00c30c:	c65a                	sw	s6,12(sp)
1c00c30e:	4a05                	li	s4,1
1c00c310:	02410913          	addi	s2,sp,36
1c00c314:	59fd                	li	s3,-1
1c00c316:	41240ab3          	sub	s5,s0,s2
1c00c31a:	9a4a                	add	s4,s4,s2
1c00c31c:	a029                	j	1c00c326 <pos_libc_prf+0x8c4>
1c00c31e:	012a8433          	add	s0,s5,s2
1c00c322:	fb490963          	beq	s2,s4,1c00bad4 <pos_libc_prf+0x72>
1c00c326:	00094503          	lbu	a0,0(s2)
1c00c32a:	85a6                	mv	a1,s1
1c00c32c:	0905                	addi	s2,s2,1
1c00c32e:	9c82                	jalr	s9
1c00c330:	ff3517e3          	bne	a0,s3,1c00c31e <pos_libc_prf+0x8bc>
1c00c334:	547d                	li	s0,-1
1c00c336:	fa6ff06f          	j	1c00badc <pos_libc_prf+0x7a>
1c00c33a:	77e1                	lui	a5,0xffff8
1c00c33c:	8307c793          	xori	a5,a5,-2000
1c00c340:	02f11223          	sh	a5,36(sp)
1c00c344:	02610693          	addi	a3,sp,38
1c00c348:	bb95                	j	1c00c0bc <pos_libc_prf+0x65a>
1c00c34a:	1054                	addi	a3,sp,36
1c00c34c:	b715                	j	1c00c270 <pos_libc_prf+0x80e>
1c00c34e:	5c605a63          	blez	t1,1c00c922 <pos_libc_prf+0xec0>
1c00c352:	006f09b3          	add	s3,t5,t1
1c00c356:	4541                	li	a0,16
1c00c358:	03000e13          	li	t3,48
1c00c35c:	00279713          	slli	a4,a5,0x2
1c00c360:	01e7d593          	srli	a1,a5,0x1e
1c00c364:	00289693          	slli	a3,a7,0x2
1c00c368:	00f70333          	add	t1,a4,a5
1c00c36c:	8ecd                	or	a3,a3,a1
1c00c36e:	96c6                	add	a3,a3,a7
1c00c370:	00e33733          	sltu	a4,t1,a4
1c00c374:	9736                	add	a4,a4,a3
1c00c376:	0706                	slli	a4,a4,0x1
1c00c378:	01f35693          	srli	a3,t1,0x1f
1c00c37c:	8f55                	or	a4,a4,a3
1c00c37e:	01c75693          	srli	a3,a4,0x1c
1c00c382:	03068693          	addi	a3,a3,48
1c00c386:	4ea05463          	blez	a0,1c00c86e <pos_libc_prf+0xe0c>
1c00c38a:	fed80fa3          	sb	a3,-1(a6)
1c00c38e:	46d2                	lw	a3,20(sp)
1c00c390:	157d                	addi	a0,a0,-1
1c00c392:	00131793          	slli	a5,t1,0x1
1c00c396:	00d778b3          	and	a7,a4,a3
1c00c39a:	4d099e63          	bne	s3,a6,1c00c876 <pos_libc_prf+0xe14>
1c00c39e:	4301                	li	t1,0
1c00c3a0:	4772                	lw	a4,28(sp)
1c00c3a2:	01576bb3          	or	s7,a4,s5
1c00c3a6:	060b8863          	beqz	s7,1c00c416 <pos_libc_prf+0x9b4>
1c00c3aa:	02e00693          	li	a3,46
1c00c3ae:	00d98023          	sb	a3,0(s3)
1c00c3b2:	00198e93          	addi	t4,s3,1
1c00c3b6:	5c0a8763          	beqz	s5,1c00c984 <pos_libc_prf+0xf22>
1c00c3ba:	001a8693          	addi	a3,s5,1
1c00c3be:	99b6                	add	s3,s3,a3
1c00c3c0:	8876                	mv	a6,t4
1c00c3c2:	03000f13          	li	t5,48
1c00c3c6:	0805                	addi	a6,a6,1
1c00c3c8:	4a031963          	bnez	t1,1c00c87a <pos_libc_prf+0xe18>
1c00c3cc:	00279713          	slli	a4,a5,0x2
1c00c3d0:	01e7d593          	srli	a1,a5,0x1e
1c00c3d4:	00289693          	slli	a3,a7,0x2
1c00c3d8:	00f70e33          	add	t3,a4,a5
1c00c3dc:	8ecd                	or	a3,a3,a1
1c00c3de:	96c6                	add	a3,a3,a7
1c00c3e0:	00ee3733          	sltu	a4,t3,a4
1c00c3e4:	9736                	add	a4,a4,a3
1c00c3e6:	0706                	slli	a4,a4,0x1
1c00c3e8:	01fe5693          	srli	a3,t3,0x1f
1c00c3ec:	8f55                	or	a4,a4,a3
1c00c3ee:	01c75593          	srli	a1,a4,0x1c
1c00c3f2:	03000693          	li	a3,48
1c00c3f6:	00a05a63          	blez	a0,1c00c40a <pos_libc_prf+0x9a8>
1c00c3fa:	03058693          	addi	a3,a1,48
1c00c3fe:	45d2                	lw	a1,20(sp)
1c00c400:	157d                	addi	a0,a0,-1
1c00c402:	001e1793          	slli	a5,t3,0x1
1c00c406:	00b778b3          	and	a7,a4,a1
1c00c40a:	fed80fa3          	sb	a3,-1(a6)
1c00c40e:	fb099ce3          	bne	s3,a6,1c00c3c6 <pos_libc_prf+0x964>
1c00c412:	015e89b3          	add	s3,t4,s5
1c00c416:	b0060ee3          	beqz	a2,1c00bf32 <pos_libc_prf+0x4d0>
1c00c41a:	03000613          	li	a2,48
1c00c41e:	fff9c783          	lbu	a5,-1(s3)
1c00c422:	86ce                	mv	a3,s3
1c00c424:	19fd                	addi	s3,s3,-1
1c00c426:	fec78ce3          	beq	a5,a2,1c00c41e <pos_libc_prf+0x9bc>
1c00c42a:	02e00613          	li	a2,46
1c00c42e:	aec78ce3          	beq	a5,a2,1c00bf26 <pos_libc_prf+0x4c4>
1c00c432:	89b6                	mv	s3,a3
1c00c434:	bccd                	j	1c00bf26 <pos_libc_prf+0x4c4>
1c00c436:	fff88fa3          	sb	t6,-1(a7)
1c00c43a:	ab1f11e3          	bne	t5,a7,1c00bedc <pos_libc_prf+0x47a>
1c00c43e:	99d6                	add	s3,s3,s5
1c00c440:	b4cd                	j	1c00bf22 <pos_libc_prf+0x4c0>
1c00c442:	fd058713          	addi	a4,a1,-48
1c00c446:	47a5                	li	a5,9
1c00c448:	8dae                	mv	s11,a1
1c00c44a:	4a81                	li	s5,0
1c00c44c:	4525                	li	a0,9
1c00c44e:	00e7f463          	bgeu	a5,a4,1c00c456 <pos_libc_prf+0x9f4>
1c00c452:	a199                	j	1c00c898 <pos_libc_prf+0xe36>
1c00c454:	0685                	addi	a3,a3,1
1c00c456:	002a9793          	slli	a5,s5,0x2
1c00c45a:	97d6                	add	a5,a5,s5
1c00c45c:	0786                	slli	a5,a5,0x1
1c00c45e:	97ee                	add	a5,a5,s11
1c00c460:	0006cd83          	lbu	s11,0(a3)
1c00c464:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00c468:	8732                	mv	a4,a2
1c00c46a:	fd0d8793          	addi	a5,s11,-48
1c00c46e:	8636                	mv	a2,a3
1c00c470:	fef572e3          	bgeu	a0,a5,1c00c454 <pos_libc_prf+0x9f2>
1c00c474:	00270613          	addi	a2,a4,2
1c00c478:	b561                	j	1c00c300 <pos_libc_prf+0x89e>
1c00c47a:	47b2                	lw	a5,12(sp)
1c00c47c:	0007a303          	lw	t1,0(a5)
1c00c480:	00478b13          	addi	s6,a5,4
1c00c484:	2e034263          	bltz	t1,1c00c768 <pos_libc_prf+0xd06>
1c00c488:	47a2                	lw	a5,8(sp)
1c00c48a:	861a                	mv	a2,t1
1c00c48c:	3c078663          	beqz	a5,1c00c858 <pos_libc_prf+0xdf6>
1c00c490:	02b00793          	li	a5,43
1c00c494:	02f10223          	sb	a5,36(sp)
1c00c498:	02510693          	addi	a3,sp,37
1c00c49c:	89b6                	mv	s3,a3
1c00c49e:	4529                	li	a0,10
1c00c4a0:	48a5                	li	a7,9
1c00c4a2:	02a67733          	remu	a4,a2,a0
1c00c4a6:	87ce                	mv	a5,s3
1c00c4a8:	0985                	addi	s3,s3,1
1c00c4aa:	85b2                	mv	a1,a2
1c00c4ac:	03070713          	addi	a4,a4,48
1c00c4b0:	fee98fa3          	sb	a4,-1(s3)
1c00c4b4:	02a65633          	divu	a2,a2,a0
1c00c4b8:	feb8e5e3          	bltu	a7,a1,1c00c4a2 <pos_libc_prf+0xa40>
1c00c4bc:	40d98633          	sub	a2,s3,a3
1c00c4c0:	01565c63          	bge	a2,s5,1c00c4d8 <pos_libc_prf+0xa76>
1c00c4c4:	03000593          	li	a1,48
1c00c4c8:	87ce                	mv	a5,s3
1c00c4ca:	0985                	addi	s3,s3,1
1c00c4cc:	40d98733          	sub	a4,s3,a3
1c00c4d0:	feb98fa3          	sb	a1,-1(s3)
1c00c4d4:	ff574ae3          	blt	a4,s5,1c00c4c8 <pos_libc_prf+0xa66>
1c00c4d8:	00098023          	sb	zero,0(s3)
1c00c4dc:	00f6fe63          	bgeu	a3,a5,1c00c4f8 <pos_libc_prf+0xa96>
1c00c4e0:	0006c603          	lbu	a2,0(a3)
1c00c4e4:	0007c703          	lbu	a4,0(a5)
1c00c4e8:	0685                	addi	a3,a3,1
1c00c4ea:	00c78023          	sb	a2,0(a5)
1c00c4ee:	fee68fa3          	sb	a4,-1(a3)
1c00c4f2:	17fd                	addi	a5,a5,-1
1c00c4f4:	fef6e6e3          	bltu	a3,a5,1c00c4e0 <pos_libc_prf+0xa7e>
1c00c4f8:	4712                	lw	a4,4(sp)
1c00c4fa:	47a2                	lw	a5,8(sp)
1c00c4fc:	8fd9                	or	a5,a5,a4
1c00c4fe:	ce3e                	sw	a5,28(sp)
1c00c500:	1058                	addi	a4,sp,36
1c00c502:	40e989b3          	sub	s3,s3,a4
1c00c506:	c40790e3          	bnez	a5,1c00c146 <pos_libc_prf+0x6e4>
1c00c50a:	01f35793          	srli	a5,t1,0x1f
1c00c50e:	ce3e                	sw	a5,28(sp)
1c00c510:	b91d                	j	1c00c146 <pos_libc_prf+0x6e4>
1c00c512:	47b2                	lw	a5,12(sp)
1c00c514:	02610613          	addi	a2,sp,38
1c00c518:	4ea5                	li	t4,9
1c00c51a:	438c                	lw	a1,0(a5)
1c00c51c:	00478b13          	addi	s6,a5,4
1c00c520:	77e1                	lui	a5,0xffff8
1c00c522:	8307c793          	xori	a5,a5,-2000
1c00c526:	02f11223          	sh	a5,36(sp)
1c00c52a:	4e3d                	li	t3,15
1c00c52c:	87b2                	mv	a5,a2
1c00c52e:	a039                	j	1c00c53c <pos_libc_prf+0xada>
1c00c530:	ff168fa3          	sb	a7,-1(a3)
1c00c534:	02be7663          	bgeu	t3,a1,1c00c560 <pos_libc_prf+0xafe>
1c00c538:	85c2                	mv	a1,a6
1c00c53a:	87b6                	mv	a5,a3
1c00c53c:	00f5f513          	andi	a0,a1,15
1c00c540:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00c544:	05750893          	addi	a7,a0,87
1c00c548:	03050713          	addi	a4,a0,48
1c00c54c:	0045d813          	srli	a6,a1,0x4
1c00c550:	feaee0e3          	bltu	t4,a0,1c00c530 <pos_libc_prf+0xace>
1c00c554:	00e78023          	sb	a4,0(a5)
1c00c558:	00178693          	addi	a3,a5,1
1c00c55c:	fcbe6ee3          	bltu	t3,a1,1c00c538 <pos_libc_prf+0xad6>
1c00c560:	40c689b3          	sub	s3,a3,a2
1c00c564:	459d                	li	a1,7
1c00c566:	0135cc63          	blt	a1,s3,1c00c57e <pos_libc_prf+0xb1c>
1c00c56a:	03000513          	li	a0,48
1c00c56e:	87b6                	mv	a5,a3
1c00c570:	0685                	addi	a3,a3,1
1c00c572:	40c689b3          	sub	s3,a3,a2
1c00c576:	fea68fa3          	sb	a0,-1(a3)
1c00c57a:	ff35dae3          	bge	a1,s3,1c00c56e <pos_libc_prf+0xb0c>
1c00c57e:	00068023          	sb	zero,0(a3)
1c00c582:	86b2                	mv	a3,a2
1c00c584:	00f67e63          	bgeu	a2,a5,1c00c5a0 <pos_libc_prf+0xb3e>
1c00c588:	0006c603          	lbu	a2,0(a3)
1c00c58c:	0007c703          	lbu	a4,0(a5)
1c00c590:	0685                	addi	a3,a3,1
1c00c592:	00c78023          	sb	a2,0(a5)
1c00c596:	fee68fa3          	sb	a4,-1(a3)
1c00c59a:	17fd                	addi	a5,a5,-1
1c00c59c:	fef6e6e3          	bltu	a3,a5,1c00c588 <pos_libc_prf+0xb26>
1c00c5a0:	57fd                	li	a5,-1
1c00c5a2:	0989                	addi	s3,s3,2
1c00c5a4:	22fa8663          	beq	s5,a5,1c00c7d0 <pos_libc_prf+0xd6e>
1c00c5a8:	0c800793          	li	a5,200
1c00c5ac:	9f37cce3          	blt	a5,s3,1c00bfa4 <pos_libc_prf+0x542>
1c00c5b0:	02000913          	li	s2,32
1c00c5b4:	0b49d863          	bge	s3,s4,1c00c664 <pos_libc_prf+0xc02>
1c00c5b8:	00198613          	addi	a2,s3,1
1c00c5bc:	ce02                	sw	zero,28(sp)
1c00c5be:	bec1                	j	1c00c18e <pos_libc_prf+0x72c>
1c00c5c0:	4732                	lw	a4,12(sp)
1c00c5c2:	431c                	lw	a5,0(a4)
1c00c5c4:	0711                	addi	a4,a4,4
1c00c5c6:	c63a                	sw	a4,12(sp)
1c00c5c8:	c380                	sw	s0,0(a5)
1c00c5ca:	d0aff06f          	j	1c00bad4 <pos_libc_prf+0x72>
1c00c5ce:	47b2                	lw	a5,12(sp)
1c00c5d0:	4529                	li	a0,10
1c00c5d2:	48a5                	li	a7,9
1c00c5d4:	4390                	lw	a2,0(a5)
1c00c5d6:	00478b13          	addi	s6,a5,4
1c00c5da:	105c                	addi	a5,sp,36
1c00c5dc:	02a67733          	remu	a4,a2,a0
1c00c5e0:	86be                	mv	a3,a5
1c00c5e2:	0785                	addi	a5,a5,1
1c00c5e4:	85b2                	mv	a1,a2
1c00c5e6:	03070713          	addi	a4,a4,48
1c00c5ea:	fee78fa3          	sb	a4,-1(a5)
1c00c5ee:	02a65633          	divu	a2,a2,a0
1c00c5f2:	feb8e5e3          	bltu	a7,a1,1c00c5dc <pos_libc_prf+0xb7a>
1c00c5f6:	1058                	addi	a4,sp,36
1c00c5f8:	40e789b3          	sub	s3,a5,a4
1c00c5fc:	0159dd63          	bge	s3,s5,1c00c616 <pos_libc_prf+0xbb4>
1c00c600:	03000613          	li	a2,48
1c00c604:	86be                	mv	a3,a5
1c00c606:	1058                	addi	a4,sp,36
1c00c608:	0785                	addi	a5,a5,1
1c00c60a:	40e789b3          	sub	s3,a5,a4
1c00c60e:	fec78fa3          	sb	a2,-1(a5)
1c00c612:	ff59c9e3          	blt	s3,s5,1c00c604 <pos_libc_prf+0xba2>
1c00c616:	00078023          	sb	zero,0(a5)
1c00c61a:	105c                	addi	a5,sp,36
1c00c61c:	00d7fe63          	bgeu	a5,a3,1c00c638 <pos_libc_prf+0xbd6>
1c00c620:	0007c603          	lbu	a2,0(a5)
1c00c624:	0006c703          	lbu	a4,0(a3)
1c00c628:	0785                	addi	a5,a5,1
1c00c62a:	00c68023          	sb	a2,0(a3)
1c00c62e:	fee78fa3          	sb	a4,-1(a5)
1c00c632:	16fd                	addi	a3,a3,-1
1c00c634:	fed7e6e3          	bltu	a5,a3,1c00c620 <pos_libc_prf+0xbbe>
1c00c638:	57fd                	li	a5,-1
1c00c63a:	c8fa9de3          	bne	s5,a5,1c00c2d4 <pos_libc_prf+0x872>
1c00c63e:	0c800793          	li	a5,200
1c00c642:	9737c1e3          	blt	a5,s3,1c00bfa4 <pos_libc_prf+0x542>
1c00c646:	ce02                	sw	zero,28(sp)
1c00c648:	be01                	j	1c00c158 <pos_libc_prf+0x6f6>
1c00c64a:	85a6                	mv	a1,s1
1c00c64c:	02500513          	li	a0,37
1c00c650:	9c82                	jalr	s9
1c00c652:	57fd                	li	a5,-1
1c00c654:	c6f51f63          	bne	a0,a5,1c00bad2 <pos_libc_prf+0x70>
1c00c658:	547d                	li	s0,-1
1c00c65a:	c82ff06f          	j	1c00badc <pos_libc_prf+0x7a>
1c00c65e:	4401                	li	s0,0
1c00c660:	c7cff06f          	j	1c00badc <pos_libc_prf+0x7a>
1c00c664:	8a4e                	mv	s4,s3
1c00c666:	c65a                	sw	s6,12(sp)
1c00c668:	b165                	j	1c00c310 <pos_libc_prf+0x8ae>
1c00c66a:	0c800793          	li	a5,200
1c00c66e:	9337cbe3          	blt	a5,s3,1c00bfa4 <pos_libc_prf+0x542>
1c00c672:	4785                	li	a5,1
1c00c674:	ce3e                	sw	a5,28(sp)
1c00c676:	b4cd                	j	1c00c158 <pos_libc_prf+0x6f6>
1c00c678:	104c                	addi	a1,sp,36
1c00c67a:	413a09b3          	sub	s3,s4,s3
1c00c67e:	01358533          	add	a0,a1,s3
1c00c682:	9faff0ef          	jal	ra,1c00b87c <memmove>
1c00c686:	02000793          	li	a5,32
1c00c68a:	24f90863          	beq	s2,a5,1c00c8da <pos_libc_prf+0xe78>
1c00c68e:	47f2                	lw	a5,28(sp)
1c00c690:	99be                	add	s3,s3,a5
1c00c692:	47f2                	lw	a5,28(sp)
1c00c694:	b737d7e3          	bge	a5,s3,1c00c202 <pos_libc_prf+0x7a0>
1c00c698:	4772                	lw	a4,28(sp)
1c00c69a:	4789                	li	a5,2
1c00c69c:	40e988b3          	sub	a7,s3,a4
1c00c6a0:	fff88693          	addi	a3,a7,-1
1c00c6a4:	06d7f063          	bgeu	a5,a3,1c00c704 <pos_libc_prf+0xca2>
1c00c6a8:	47e2                	lw	a5,24(sp)
1c00c6aa:	00891613          	slli	a2,s2,0x8
1c00c6ae:	ffc8f593          	andi	a1,a7,-4
1c00c6b2:	00f976b3          	and	a3,s2,a5
1c00c6b6:	8ed1                	or	a3,a3,a2
1c00c6b8:	01091793          	slli	a5,s2,0x10
1c00c6bc:	8edd                	or	a3,a3,a5
1c00c6be:	01891613          	slli	a2,s2,0x18
1c00c6c2:	8e55                	or	a2,a2,a3
1c00c6c4:	105c                	addi	a5,sp,36
1c00c6c6:	00865813          	srli	a6,a2,0x8
1c00c6ca:	01065513          	srli	a0,a2,0x10
1c00c6ce:	97ba                	add	a5,a5,a4
1c00c6d0:	95be                	add	a1,a1,a5
1c00c6d2:	0306f693          	andi	a3,a3,48
1c00c6d6:	8261                	srli	a2,a2,0x18
1c00c6d8:	0ff87813          	andi	a6,a6,255
1c00c6dc:	0ff57513          	andi	a0,a0,255
1c00c6e0:	00d78023          	sb	a3,0(a5)
1c00c6e4:	010780a3          	sb	a6,1(a5)
1c00c6e8:	00a78123          	sb	a0,2(a5)
1c00c6ec:	00c781a3          	sb	a2,3(a5)
1c00c6f0:	0791                	addi	a5,a5,4
1c00c6f2:	fef597e3          	bne	a1,a5,1c00c6e0 <pos_libc_prf+0xc7e>
1c00c6f6:	4772                	lw	a4,28(sp)
1c00c6f8:	ffc8f793          	andi	a5,a7,-4
1c00c6fc:	973e                	add	a4,a4,a5
1c00c6fe:	ce3a                	sw	a4,28(sp)
1c00c700:	b11781e3          	beq	a5,a7,1c00c202 <pos_libc_prf+0x7a0>
1c00c704:	4772                	lw	a4,28(sp)
1c00c706:	199c                	addi	a5,sp,240
1c00c708:	97ba                	add	a5,a5,a4
1c00c70a:	f3278a23          	sb	s2,-204(a5)
1c00c70e:	00170793          	addi	a5,a4,1
1c00c712:	af37d8e3          	bge	a5,s3,1c00c202 <pos_libc_prf+0x7a0>
1c00c716:	1994                	addi	a3,sp,240
1c00c718:	97b6                	add	a5,a5,a3
1c00c71a:	f3278a23          	sb	s2,-204(a5)
1c00c71e:	00270b93          	addi	s7,a4,2
1c00c722:	af3bd0e3          	bge	s7,s3,1c00c202 <pos_libc_prf+0x7a0>
1c00c726:	9bb6                	add	s7,s7,a3
1c00c728:	f32b8a23          	sb	s2,-204(s7)
1c00c72c:	c65a                	sw	s6,12(sp)
1c00c72e:	bcd9                	j	1c00c204 <pos_libc_prf+0x7a2>
1c00c730:	01b98023          	sb	s11,0(s3)
1c00c734:	02b00613          	li	a2,43
1c00c738:	00035663          	bgez	t1,1c00c744 <pos_libc_prf+0xce2>
1c00c73c:	40600333          	neg	t1,t1
1c00c740:	02d00613          	li	a2,45
1c00c744:	47a9                	li	a5,10
1c00c746:	02f346b3          	div	a3,t1,a5
1c00c74a:	00c980a3          	sb	a2,1(s3)
1c00c74e:	0991                	addi	s3,s3,4
1c00c750:	02f367b3          	rem	a5,t1,a5
1c00c754:	03068693          	addi	a3,a3,48
1c00c758:	fed98f23          	sb	a3,-2(s3)
1c00c75c:	03078793          	addi	a5,a5,48
1c00c760:	fef98fa3          	sb	a5,-1(s3)
1c00c764:	fceff06f          	j	1c00bf32 <pos_libc_prf+0x4d0>
1c00c768:	02d00793          	li	a5,45
1c00c76c:	02f10223          	sb	a5,36(sp)
1c00c770:	800007b7          	lui	a5,0x80000
1c00c774:	14f30e63          	beq	t1,a5,1c00c8d0 <pos_libc_prf+0xe6e>
1c00c778:	40600633          	neg	a2,t1
1c00c77c:	02510693          	addi	a3,sp,37
1c00c780:	bb31                	j	1c00c49c <pos_libc_prf+0xa3a>
1c00c782:	4722                	lw	a4,8(sp)
1c00c784:	10070d63          	beqz	a4,1c00c89e <pos_libc_prf+0xe3c>
1c00c788:	02b00693          	li	a3,43
1c00c78c:	02d10223          	sb	a3,36(sp)
1c00c790:	02510f13          	addi	t5,sp,37
1c00c794:	4301                	li	t1,0
1c00c796:	4801                	li	a6,0
1c00c798:	d9cff06f          	j	1c00bd34 <pos_libc_prf+0x2d2>
1c00c79c:	02414783          	lbu	a5,36(sp)
1c00c7a0:	98078ce3          	beqz	a5,1c00c138 <pos_libc_prf+0x6d6>
1c00c7a4:	1054                	addi	a3,sp,36
1c00c7a6:	45e5                	li	a1,25
1c00c7a8:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00c7ac:	f9f78793          	addi	a5,a5,-97
1c00c7b0:	0ff7f793          	andi	a5,a5,255
1c00c7b4:	00f5e963          	bltu	a1,a5,1c00c7c6 <pos_libc_prf+0xd64>
1c00c7b8:	0016c783          	lbu	a5,1(a3)
1c00c7bc:	00e68023          	sb	a4,0(a3)
1c00c7c0:	0685                	addi	a3,a3,1
1c00c7c2:	f3fd                	bnez	a5,1c00c7a8 <pos_libc_prf+0xd46>
1c00c7c4:	ba95                	j	1c00c138 <pos_libc_prf+0x6d6>
1c00c7c6:	0016c783          	lbu	a5,1(a3)
1c00c7ca:	0685                	addi	a3,a3,1
1c00c7cc:	fff1                	bnez	a5,1c00c7a8 <pos_libc_prf+0xd46>
1c00c7ce:	b2ad                	j	1c00c138 <pos_libc_prf+0x6d6>
1c00c7d0:	0c800793          	li	a5,200
1c00c7d4:	df37d0e3          	bge	a5,s3,1c00c5b4 <pos_libc_prf+0xb52>
1c00c7d8:	547d                	li	s0,-1
1c00c7da:	b02ff06f          	j	1c00badc <pos_libc_prf+0x7a>
1c00c7de:	864e                	mv	a2,s3
1c00c7e0:	1048                	addi	a0,sp,36
1c00c7e2:	fc5fe0ef          	jal	ra,1c00b7a6 <memcpy>
1c00c7e6:	b3f9                	j	1c00c5b4 <pos_libc_prf+0xb52>
1c00c7e8:	47f2                	lw	a5,28(sp)
1c00c7ea:	4601                	li	a2,0
1c00c7ec:	e399                	bnez	a5,1c00c7f2 <pos_libc_prf+0xd90>
1c00c7ee:	01503633          	snez	a2,s5
1c00c7f2:	57f5                	li	a5,-3
1c00c7f4:	001a8813          	addi	a6,s5,1
1c00c7f8:	00f34463          	blt	t1,a5,1c00c800 <pos_libc_prf+0xd9e>
1c00c7fc:	04685163          	bge	a6,t1,1c00c83e <pos_libc_prf+0xddc>
1c00c800:	47c1                	li	a5,16
1c00c802:	0107d363          	bge	a5,a6,1c00c808 <pos_libc_prf+0xda6>
1c00c806:	4841                	li	a6,16
1c00c808:	06700793          	li	a5,103
1c00c80c:	187d                	addi	a6,a6,-1
1c00c80e:	02fd8363          	beq	s11,a5,1c00c834 <pos_libc_prf+0xdd2>
1c00c812:	04500d93          	li	s11,69
1c00c816:	d70ff06f          	j	1c00bd86 <pos_libc_prf+0x324>
1c00c81a:	4a99                	li	s5,6
1c00c81c:	d4fd9563          	bne	s11,a5,1c00bd66 <pos_libc_prf+0x304>
1c00c820:	4772                	lw	a4,28(sp)
1c00c822:	4605                	li	a2,1
1c00c824:	57f5                	li	a5,-3
1c00c826:	8e19                	sub	a2,a2,a4
1c00c828:	00f34563          	blt	t1,a5,1c00c832 <pos_libc_prf+0xdd0>
1c00c82c:	479d                	li	a5,7
1c00c82e:	0067d863          	bge	a5,t1,1c00c83e <pos_libc_prf+0xddc>
1c00c832:	4819                	li	a6,6
1c00c834:	06500d93          	li	s11,101
1c00c838:	d4eff06f          	j	1c00bd86 <pos_libc_prf+0x324>
1c00c83c:	4601                	li	a2,0
1c00c83e:	006a8833          	add	a6,s5,t1
1c00c842:	0b005b63          	blez	a6,1c00c8f8 <pos_libc_prf+0xe96>
1c00c846:	47c1                	li	a5,16
1c00c848:	0107d363          	bge	a5,a6,1c00c84e <pos_libc_prf+0xdec>
1c00c84c:	4841                	li	a6,16
1c00c84e:	187d                	addi	a6,a6,-1
1c00c850:	06600d93          	li	s11,102
1c00c854:	d32ff06f          	j	1c00bd86 <pos_libc_prf+0x324>
1c00c858:	4792                	lw	a5,4(sp)
1c00c85a:	1054                	addi	a3,sp,36
1c00c85c:	c40780e3          	beqz	a5,1c00c49c <pos_libc_prf+0xa3a>
1c00c860:	02000793          	li	a5,32
1c00c864:	02f10223          	sb	a5,36(sp)
1c00c868:	02510693          	addi	a3,sp,37
1c00c86c:	b905                	j	1c00c49c <pos_libc_prf+0xa3a>
1c00c86e:	ffc80fa3          	sb	t3,-1(a6)
1c00c872:	b30986e3          	beq	s3,a6,1c00c39e <pos_libc_prf+0x93c>
1c00c876:	0805                	addi	a6,a6,1
1c00c878:	b4d5                	j	1c00c35c <pos_libc_prf+0x8fa>
1c00c87a:	ffe80fa3          	sb	t5,-1(a6)
1c00c87e:	0305                	addi	t1,t1,1
1c00c880:	b679                	j	1c00c40e <pos_libc_prf+0x9ac>
1c00c882:	020102a3          	sb	zero,37(sp)
1c00c886:	57fd                	li	a5,-1
1c00c888:	0cfa8263          	beq	s5,a5,1c00c94c <pos_libc_prf+0xeea>
1c00c88c:	4785                	li	a5,1
1c00c88e:	0b47c063          	blt	a5,s4,1c00c92e <pos_libc_prf+0xecc>
1c00c892:	4a72                	lw	s4,28(sp)
1c00c894:	c65a                	sw	s6,12(sp)
1c00c896:	bcad                	j	1c00c310 <pos_libc_prf+0x8ae>
1c00c898:	8636                	mv	a2,a3
1c00c89a:	b04ff06f          	j	1c00bb9e <pos_libc_prf+0x13c>
1c00c89e:	4712                	lw	a4,4(sp)
1c00c8a0:	c77d                	beqz	a4,1c00c98e <pos_libc_prf+0xf2c>
1c00c8a2:	02000693          	li	a3,32
1c00c8a6:	02d10223          	sb	a3,36(sp)
1c00c8aa:	4301                	li	t1,0
1c00c8ac:	4801                	li	a6,0
1c00c8ae:	02510f13          	addi	t5,sp,37
1c00c8b2:	c82ff06f          	j	1c00bd34 <pos_libc_prf+0x2d2>
1c00c8b6:	02d00693          	li	a3,45
1c00c8ba:	02d10223          	sb	a3,36(sp)
1c00c8be:	02510f13          	addi	t5,sp,37
1c00c8c2:	b9cff06f          	j	1c00bc5e <pos_libc_prf+0x1fc>
1c00c8c6:	0c800613          	li	a2,200
1c00c8ca:	960ad6e3          	bgez	s5,1c00c236 <pos_libc_prf+0x7d4>
1c00c8ce:	bf09                	j	1c00c7e0 <pos_libc_prf+0xd7e>
1c00c8d0:	80000637          	lui	a2,0x80000
1c00c8d4:	02510693          	addi	a3,sp,37
1c00c8d8:	b6d1                	j	1c00c49c <pos_libc_prf+0xa3a>
1c00c8da:	ce02                	sw	zero,28(sp)
1c00c8dc:	bb5d                	j	1c00c692 <pos_libc_prf+0xc30>
1c00c8de:	4712                	lw	a4,4(sp)
1c00c8e0:	02410f13          	addi	t5,sp,36
1c00c8e4:	b6070d63          	beqz	a4,1c00bc5e <pos_libc_prf+0x1fc>
1c00c8e8:	02000693          	li	a3,32
1c00c8ec:	02d10223          	sb	a3,36(sp)
1c00c8f0:	02510f13          	addi	t5,sp,37
1c00c8f4:	b6aff06f          	j	1c00bc5e <pos_libc_prf+0x1fc>
1c00c8f8:	06600d93          	li	s11,102
1c00c8fc:	4781                	li	a5,0
1c00c8fe:	080006b7          	lui	a3,0x8000
1c00c902:	ce8ff06f          	j	1c00bdea <pos_libc_prf+0x388>
1c00c906:	06b6e363          	bltu	a3,a1,1c00c96c <pos_libc_prf+0xf0a>
1c00c90a:	04e00693          	li	a3,78
1c00c90e:	04100613          	li	a2,65
1c00c912:	00d78023          	sb	a3,0(a5)
1c00c916:	00c780a3          	sb	a2,1(a5)
1c00c91a:	00d78123          	sb	a3,2(a5)
1c00c91e:	f44ff06f          	j	1c00c062 <pos_libc_prf+0x600>
1c00c922:	03000693          	li	a3,48
1c00c926:	00df0023          	sb	a3,0(t5)
1c00c92a:	4541                	li	a0,16
1c00c92c:	bc95                	j	1c00c3a0 <pos_libc_prf+0x93e>
1c00c92e:	4982                	lw	s3,0(sp)
1c00c930:	860992e3          	bnez	s3,1c00c194 <pos_libc_prf+0x732>
1c00c934:	104c                	addi	a1,sp,36
1c00c936:	fffa0993          	addi	s3,s4,-1
1c00c93a:	4609                	li	a2,2
1c00c93c:	01358533          	add	a0,a1,s3
1c00c940:	f3dfe0ef          	jal	ra,1c00b87c <memmove>
1c00c944:	02000913          	li	s2,32
1c00c948:	ce02                	sw	zero,28(sp)
1c00c94a:	b3b9                	j	1c00c698 <pos_libc_prf+0xc36>
1c00c94c:	49f2                	lw	s3,28(sp)
1c00c94e:	b19d                	j	1c00c5b4 <pos_libc_prf+0xb52>
1c00c950:	06900693          	li	a3,105
1c00c954:	00d78023          	sb	a3,0(a5)
1c00c958:	06e00693          	li	a3,110
1c00c95c:	00d780a3          	sb	a3,1(a5)
1c00c960:	06600693          	li	a3,102
1c00c964:	00d78123          	sb	a3,2(a5)
1c00c968:	efaff06f          	j	1c00c062 <pos_libc_prf+0x600>
1c00c96c:	06e00693          	li	a3,110
1c00c970:	06100613          	li	a2,97
1c00c974:	00d78023          	sb	a3,0(a5)
1c00c978:	00c780a3          	sb	a2,1(a5)
1c00c97c:	00d78123          	sb	a3,2(a5)
1c00c980:	ee2ff06f          	j	1c00c062 <pos_libc_prf+0x600>
1c00c984:	89f6                	mv	s3,t4
1c00c986:	a8061ae3          	bnez	a2,1c00c41a <pos_libc_prf+0x9b8>
1c00c98a:	da8ff06f          	j	1c00bf32 <pos_libc_prf+0x4d0>
1c00c98e:	4301                	li	t1,0
1c00c990:	4801                	li	a6,0
1c00c992:	02410f13          	addi	t5,sp,36
1c00c996:	b9eff06f          	j	1c00bd34 <pos_libc_prf+0x2d2>

1c00c99a <pos_init_start>:
1c00c99a:	1141                	addi	sp,sp,-16
1c00c99c:	c422                	sw	s0,8(sp)
1c00c99e:	1c000437          	lui	s0,0x1c000
1c00c9a2:	c606                	sw	ra,12(sp)
1c00c9a4:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00c9a8:	8e9fc0ef          	jal	ra,1c009290 <pos_soc_init>
1c00c9ac:	2a75                	jal	1c00cb68 <pos_irq_init>
1c00c9ae:	22e5                	jal	1c00cb96 <pos_soc_event_init>
1c00c9b0:	2225                	jal	1c00cad8 <pos_allocs_init>
1c00c9b2:	405c                	lw	a5,4(s0)
1c00c9b4:	c791                	beqz	a5,1c00c9c0 <pos_init_start+0x26>
1c00c9b6:	0411                	addi	s0,s0,4
1c00c9b8:	0411                	addi	s0,s0,4
1c00c9ba:	9782                	jalr	a5
1c00c9bc:	401c                	lw	a5,0(s0)
1c00c9be:	ffed                	bnez	a5,1c00c9b8 <pos_init_start+0x1e>
1c00c9c0:	86cff0ef          	jal	ra,1c00ba2c <pos_io_start>
1c00c9c4:	300467f3          	csrrsi	a5,mstatus,8
1c00c9c8:	40b2                	lw	ra,12(sp)
1c00c9ca:	4422                	lw	s0,8(sp)
1c00c9cc:	0141                	addi	sp,sp,16
1c00c9ce:	8082                	ret

1c00c9d0 <pos_init_stop>:
1c00c9d0:	1141                	addi	sp,sp,-16
1c00c9d2:	c422                	sw	s0,8(sp)
1c00c9d4:	1c000437          	lui	s0,0x1c000
1c00c9d8:	c606                	sw	ra,12(sp)
1c00c9da:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00c9de:	852ff0ef          	jal	ra,1c00ba30 <pos_io_stop>
1c00c9e2:	405c                	lw	a5,4(s0)
1c00c9e4:	c791                	beqz	a5,1c00c9f0 <pos_init_stop+0x20>
1c00c9e6:	0411                	addi	s0,s0,4
1c00c9e8:	0411                	addi	s0,s0,4
1c00c9ea:	9782                	jalr	a5
1c00c9ec:	401c                	lw	a5,0(s0)
1c00c9ee:	ffed                	bnez	a5,1c00c9e8 <pos_init_stop+0x18>
1c00c9f0:	40b2                	lw	ra,12(sp)
1c00c9f2:	4422                	lw	s0,8(sp)
1c00c9f4:	0141                	addi	sp,sp,16
1c00c9f6:	8082                	ret

1c00c9f8 <pos_alloc_init>:
1c00c9f8:	00758793          	addi	a5,a1,7
1c00c9fc:	9be1                	andi	a5,a5,-8
1c00c9fe:	40b785b3          	sub	a1,a5,a1
1c00ca02:	c11c                	sw	a5,0(a0)
1c00ca04:	40b605b3          	sub	a1,a2,a1
1c00ca08:	00b05663          	blez	a1,1c00ca14 <pos_alloc_init+0x1c>
1c00ca0c:	99e1                	andi	a1,a1,-8
1c00ca0e:	c38c                	sw	a1,0(a5)
1c00ca10:	0007a223          	sw	zero,4(a5)
1c00ca14:	8082                	ret

1c00ca16 <pos_alloc>:
1c00ca16:	411c                	lw	a5,0(a0)
1c00ca18:	00758713          	addi	a4,a1,7
1c00ca1c:	862a                	mv	a2,a0
1c00ca1e:	ff877593          	andi	a1,a4,-8
1c00ca22:	4681                	li	a3,0
1c00ca24:	e789                	bnez	a5,1c00ca2e <pos_alloc+0x18>
1c00ca26:	a091                	j	1c00ca6a <pos_alloc+0x54>
1c00ca28:	86be                	mv	a3,a5
1c00ca2a:	c505                	beqz	a0,1c00ca52 <pos_alloc+0x3c>
1c00ca2c:	87aa                	mv	a5,a0
1c00ca2e:	4398                	lw	a4,0(a5)
1c00ca30:	43c8                	lw	a0,4(a5)
1c00ca32:	feb74be3          	blt	a4,a1,1c00ca28 <pos_alloc+0x12>
1c00ca36:	00b70f63          	beq	a4,a1,1c00ca54 <pos_alloc+0x3e>
1c00ca3a:	00b78833          	add	a6,a5,a1
1c00ca3e:	8f0d                	sub	a4,a4,a1
1c00ca40:	00e82023          	sw	a4,0(a6)
1c00ca44:	00a82223          	sw	a0,4(a6)
1c00ca48:	ca91                	beqz	a3,1c00ca5c <pos_alloc+0x46>
1c00ca4a:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00ca4e:	853e                	mv	a0,a5
1c00ca50:	8082                	ret
1c00ca52:	8082                	ret
1c00ca54:	ca81                	beqz	a3,1c00ca64 <pos_alloc+0x4e>
1c00ca56:	c2c8                	sw	a0,4(a3)
1c00ca58:	853e                	mv	a0,a5
1c00ca5a:	8082                	ret
1c00ca5c:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00ca60:	853e                	mv	a0,a5
1c00ca62:	8082                	ret
1c00ca64:	c208                	sw	a0,0(a2)
1c00ca66:	853e                	mv	a0,a5
1c00ca68:	8082                	ret
1c00ca6a:	4501                	li	a0,0
1c00ca6c:	8082                	ret

1c00ca6e <pos_free>:
1c00ca6e:	411c                	lw	a5,0(a0)
1c00ca70:	061d                	addi	a2,a2,7
1c00ca72:	9a61                	andi	a2,a2,-8
1c00ca74:	c7a1                	beqz	a5,1c00cabc <pos_free+0x4e>
1c00ca76:	00b7e563          	bltu	a5,a1,1c00ca80 <pos_free+0x12>
1c00ca7a:	a089                	j	1c00cabc <pos_free+0x4e>
1c00ca7c:	00b7f563          	bgeu	a5,a1,1c00ca86 <pos_free+0x18>
1c00ca80:	873e                	mv	a4,a5
1c00ca82:	43dc                	lw	a5,4(a5)
1c00ca84:	ffe5                	bnez	a5,1c00ca7c <pos_free+0xe>
1c00ca86:	00c586b3          	add	a3,a1,a2
1c00ca8a:	00d78b63          	beq	a5,a3,1c00caa0 <pos_free+0x32>
1c00ca8e:	c190                	sw	a2,0(a1)
1c00ca90:	4314                	lw	a3,0(a4)
1c00ca92:	c1dc                	sw	a5,4(a1)
1c00ca94:	00d70533          	add	a0,a4,a3
1c00ca98:	00a58e63          	beq	a1,a0,1c00cab4 <pos_free+0x46>
1c00ca9c:	c34c                	sw	a1,4(a4)
1c00ca9e:	8082                	ret
1c00caa0:	4394                	lw	a3,0(a5)
1c00caa2:	43dc                	lw	a5,4(a5)
1c00caa4:	9636                	add	a2,a2,a3
1c00caa6:	c190                	sw	a2,0(a1)
1c00caa8:	4314                	lw	a3,0(a4)
1c00caaa:	c1dc                	sw	a5,4(a1)
1c00caac:	00d70533          	add	a0,a4,a3
1c00cab0:	fea596e3          	bne	a1,a0,1c00ca9c <pos_free+0x2e>
1c00cab4:	9636                	add	a2,a2,a3
1c00cab6:	c310                	sw	a2,0(a4)
1c00cab8:	c35c                	sw	a5,4(a4)
1c00caba:	8082                	ret
1c00cabc:	00c58733          	add	a4,a1,a2
1c00cac0:	00e78663          	beq	a5,a4,1c00cacc <pos_free+0x5e>
1c00cac4:	c1dc                	sw	a5,4(a1)
1c00cac6:	c190                	sw	a2,0(a1)
1c00cac8:	c10c                	sw	a1,0(a0)
1c00caca:	8082                	ret
1c00cacc:	4398                	lw	a4,0(a5)
1c00cace:	43dc                	lw	a5,4(a5)
1c00cad0:	963a                	add	a2,a2,a4
1c00cad2:	c1dc                	sw	a5,4(a1)
1c00cad4:	c190                	sw	a2,0(a1)
1c00cad6:	bfcd                	j	1c00cac8 <pos_free+0x5a>

1c00cad8 <pos_allocs_init>:
1c00cad8:	1c0065b7          	lui	a1,0x1c006
1c00cadc:	1141                	addi	sp,sp,-16
1c00cade:	2d858613          	addi	a2,a1,728 # 1c0062d8 <__l2_priv0_end>
1c00cae2:	1c0087b7          	lui	a5,0x1c008
1c00cae6:	c606                	sw	ra,12(sp)
1c00cae8:	2d858593          	addi	a1,a1,728
1c00caec:	40c78633          	sub	a2,a5,a2
1c00caf0:	04f5d863          	bge	a1,a5,1c00cb40 <pos_allocs_init+0x68>
1c00caf4:	1c006537          	lui	a0,0x1c006
1c00caf8:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00cafc:	3df5                	jal	1c00c9f8 <pos_alloc_init>
1c00cafe:	1c00d5b7          	lui	a1,0x1c00d
1c00cb02:	bb058613          	addi	a2,a1,-1104 # 1c00cbb0 <__l2_priv1_end>
1c00cb06:	1c0107b7          	lui	a5,0x1c010
1c00cb0a:	bb058593          	addi	a1,a1,-1104
1c00cb0e:	40c78633          	sub	a2,a5,a2
1c00cb12:	02f5da63          	bge	a1,a5,1c00cb46 <pos_allocs_init+0x6e>
1c00cb16:	1c006537          	lui	a0,0x1c006
1c00cb1a:	2d050513          	addi	a0,a0,720 # 1c0062d0 <pos_alloc_l2+0x4>
1c00cb1e:	3de9                	jal	1c00c9f8 <pos_alloc_init>
1c00cb20:	40b2                	lw	ra,12(sp)
1c00cb22:	1c0105b7          	lui	a1,0x1c010
1c00cb26:	00058793          	mv	a5,a1
1c00cb2a:	1c080637          	lui	a2,0x1c080
1c00cb2e:	1c006537          	lui	a0,0x1c006
1c00cb32:	8e1d                	sub	a2,a2,a5
1c00cb34:	00058593          	mv	a1,a1
1c00cb38:	2d450513          	addi	a0,a0,724 # 1c0062d4 <pos_alloc_l2+0x8>
1c00cb3c:	0141                	addi	sp,sp,16
1c00cb3e:	bd6d                	j	1c00c9f8 <pos_alloc_init>
1c00cb40:	4581                	li	a1,0
1c00cb42:	4601                	li	a2,0
1c00cb44:	bf45                	j	1c00caf4 <pos_allocs_init+0x1c>
1c00cb46:	4581                	li	a1,0
1c00cb48:	4601                	li	a2,0
1c00cb4a:	b7f1                	j	1c00cb16 <pos_allocs_init+0x3e>

1c00cb4c <pi_l2_malloc>:
1c00cb4c:	85aa                	mv	a1,a0
1c00cb4e:	1c006537          	lui	a0,0x1c006
1c00cb52:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00cb56:	b5c1                	j	1c00ca16 <pos_alloc>

1c00cb58 <pi_l2_free>:
1c00cb58:	862e                	mv	a2,a1
1c00cb5a:	85aa                	mv	a1,a0
1c00cb5c:	1c006537          	lui	a0,0x1c006
1c00cb60:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00cb64:	b729                	j	1c00ca6e <pos_free>

1c00cb66 <__rt_handle_illegal_instr>:
1c00cb66:	8082                	ret

1c00cb68 <pos_irq_init>:
1c00cb68:	1a10a737          	lui	a4,0x1a10a
1c00cb6c:	56fd                	li	a3,-1
1c00cb6e:	f14027f3          	csrr	a5,mhartid
1c00cb72:	8795                	srai	a5,a5,0x5
1c00cb74:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00cb78:	03f7f793          	andi	a5,a5,63
1c00cb7c:	477d                	li	a4,31
1c00cb7e:	00e78363          	beq	a5,a4,1c00cb84 <pos_irq_init+0x1c>
1c00cb82:	8082                	ret
1c00cb84:	1c0087b7          	lui	a5,0x1c008
1c00cb88:	00078793          	mv	a5,a5
1c00cb8c:	0017e793          	ori	a5,a5,1
1c00cb90:	30579073          	csrw	mtvec,a5
1c00cb94:	8082                	ret

1c00cb96 <pos_soc_event_init>:
1c00cb96:	1a1067b7          	lui	a5,0x1a106
1c00cb9a:	577d                	li	a4,-1
1c00cb9c:	c3d8                	sw	a4,4(a5)
1c00cb9e:	c798                	sw	a4,8(a5)
1c00cba0:	c7d8                	sw	a4,12(a5)
1c00cba2:	cb98                	sw	a4,16(a5)
1c00cba4:	cbd8                	sw	a4,20(a5)
1c00cba6:	cf98                	sw	a4,24(a5)
1c00cba8:	cfd8                	sw	a4,28(a5)
1c00cbaa:	d398                	sw	a4,32(a5)
1c00cbac:	8082                	ret

1c00cbae <_endtext>:
	...
