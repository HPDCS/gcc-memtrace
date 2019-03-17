
program:     formato del file elf64-x86-64


Disassemblamento della sezione .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 2f 00 00 	mov    0x2fdd(%rip),%rax        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassemblamento della sezione .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a 2f 00 00    	pushq  0x2f6a(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 6c 2f 00 00    	jmpq   *0x2f6c(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 6a 2f 00 00    	jmpq   *0x2f6a(%rip)        # 3fa0 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <strtol@plt>:
    1040:	ff 25 62 2f 00 00    	jmpq   *0x2f62(%rip)        # 3fa8 <strtol@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <malloc@plt>:
    1050:	ff 25 5a 2f 00 00    	jmpq   *0x2f5a(%rip)        # 3fb0 <malloc@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <fflush@plt>:
    1060:	ff 25 52 2f 00 00    	jmpq   *0x2f52(%rip)        # 3fb8 <fflush@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <__printf_chk@plt>:
    1070:	ff 25 4a 2f 00 00    	jmpq   *0x2f4a(%rip)        # 3fc0 <__printf_chk@GLIBC_2.3.4>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

0000000000001080 <exit@plt>:
    1080:	ff 25 42 2f 00 00    	jmpq   *0x2f42(%rip)        # 3fc8 <exit@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	pushq  $0x5
    108b:	e9 90 ff ff ff       	jmpq   1020 <.plt>

0000000000001090 <__fprintf_chk@plt>:
    1090:	ff 25 3a 2f 00 00    	jmpq   *0x2f3a(%rip)        # 3fd0 <__fprintf_chk@GLIBC_2.3.4>
    1096:	68 06 00 00 00       	pushq  $0x6
    109b:	e9 80 ff ff ff       	jmpq   1020 <.plt>

Disassemblamento della sezione .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	ff 25 52 2f 00 00    	jmpq   *0x2f52(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10a6:	66 90                	xchg   %ax,%ax

Disassemblamento della sezione .text:

00000000000010b0 <_start>:
    10b0:	31 ed                	xor    %ebp,%ebp
    10b2:	49 89 d1             	mov    %rdx,%r9
    10b5:	5e                   	pop    %rsi
    10b6:	48 89 e2             	mov    %rsp,%rdx
    10b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10bd:	50                   	push   %rax
    10be:	54                   	push   %rsp
    10bf:	4c 8d 05 ea 02 00 00 	lea    0x2ea(%rip),%r8        # 13b0 <__libc_csu_fini>
    10c6:	48 8d 0d 83 02 00 00 	lea    0x283(%rip),%rcx        # 1350 <__libc_csu_init>
    10cd:	48 8d 3d 50 01 00 00 	lea    0x150(%rip),%rdi        # 1224 <main>
    10d4:	ff 15 06 2f 00 00    	callq  *0x2f06(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10da:	f4                   	hlt    
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <deregister_tm_clones>:
    10e0:	48 8d 3d 29 2f 00 00 	lea    0x2f29(%rip),%rdi        # 4010 <__TMC_END__>
    10e7:	48 8d 05 22 2f 00 00 	lea    0x2f22(%rip),%rax        # 4010 <__TMC_END__>
    10ee:	48 39 f8             	cmp    %rdi,%rax
    10f1:	74 15                	je     1108 <deregister_tm_clones+0x28>
    10f3:	48 8b 05 de 2e 00 00 	mov    0x2ede(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    10fa:	48 85 c0             	test   %rax,%rax
    10fd:	74 09                	je     1108 <deregister_tm_clones+0x28>
    10ff:	ff e0                	jmpq   *%rax
    1101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1108:	c3                   	retq   
    1109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001110 <register_tm_clones>:
    1110:	48 8d 3d f9 2e 00 00 	lea    0x2ef9(%rip),%rdi        # 4010 <__TMC_END__>
    1117:	48 8d 35 f2 2e 00 00 	lea    0x2ef2(%rip),%rsi        # 4010 <__TMC_END__>
    111e:	48 29 fe             	sub    %rdi,%rsi
    1121:	48 c1 fe 03          	sar    $0x3,%rsi
    1125:	48 89 f0             	mov    %rsi,%rax
    1128:	48 c1 e8 3f          	shr    $0x3f,%rax
    112c:	48 01 c6             	add    %rax,%rsi
    112f:	48 d1 fe             	sar    %rsi
    1132:	74 14                	je     1148 <register_tm_clones+0x38>
    1134:	48 8b 05 b5 2e 00 00 	mov    0x2eb5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    113b:	48 85 c0             	test   %rax,%rax
    113e:	74 08                	je     1148 <register_tm_clones+0x38>
    1140:	ff e0                	jmpq   *%rax
    1142:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1148:	c3                   	retq   
    1149:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001150 <__do_global_dtors_aux>:
    1150:	80 3d f1 2e 00 00 00 	cmpb   $0x0,0x2ef1(%rip)        # 4048 <completed.7930>
    1157:	75 2f                	jne    1188 <__do_global_dtors_aux+0x38>
    1159:	55                   	push   %rbp
    115a:	48 83 3d 96 2e 00 00 	cmpq   $0x0,0x2e96(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1161:	00 
    1162:	48 89 e5             	mov    %rsp,%rbp
    1165:	74 0c                	je     1173 <__do_global_dtors_aux+0x23>
    1167:	48 8b 3d 9a 2e 00 00 	mov    0x2e9a(%rip),%rdi        # 4008 <__dso_handle>
    116e:	e8 2d ff ff ff       	callq  10a0 <__cxa_finalize@plt>
    1173:	e8 68 ff ff ff       	callq  10e0 <deregister_tm_clones>
    1178:	c6 05 c9 2e 00 00 01 	movb   $0x1,0x2ec9(%rip)        # 4048 <completed.7930>
    117f:	5d                   	pop    %rbp
    1180:	c3                   	retq   
    1181:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1188:	c3                   	retq   
    1189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001190 <frame_dummy>:
    1190:	e9 7b ff ff ff       	jmpq   1110 <register_tm_clones>

0000000000001195 <foo>:
    1195:	41 54                	push   %r12
    1197:	55                   	push   %rbp
    1198:	53                   	push   %rbx
    1199:	89 fb                	mov    %edi,%ebx
    119b:	89 f5                	mov    %esi,%ebp
    119d:	e8 81 01 00 00       	callq  1323 <dirty_mem>
    11a2:	8b 15 b8 2e 00 00    	mov    0x2eb8(%rip),%edx        # 4060 <global>
    11a8:	48 8d 35 55 0e 00 00 	lea    0xe55(%rip),%rsi        # 2004 <_IO_stdin_used+0x4>
    11af:	bf 01 00 00 00       	mov    $0x1,%edi
    11b4:	b8 00 00 00 00       	mov    $0x0,%eax
    11b9:	e8 b2 fe ff ff       	callq  1070 <__printf_chk@plt>
    11be:	e8 60 01 00 00       	callq  1323 <dirty_mem>
    11c3:	4c 8b 25 b6 4e 00 00 	mov    0x4eb6(%rip),%r12        # 6080 <heap>
    11ca:	e8 54 01 00 00       	callq  1323 <dirty_mem>
    11cf:	41 8b 14 24          	mov    (%r12),%edx
    11d3:	48 8d 35 36 0e 00 00 	lea    0xe36(%rip),%rsi        # 2010 <_IO_stdin_used+0x10>
    11da:	bf 01 00 00 00       	mov    $0x1,%edi
    11df:	b8 00 00 00 00       	mov    $0x0,%eax
    11e4:	e8 87 fe ff ff       	callq  1070 <__printf_chk@plt>
    11e9:	e8 35 01 00 00       	callq  1323 <dirty_mem>
    11ee:	0f b6 d3             	movzbl %bl,%edx
    11f1:	48 8d 35 22 0e 00 00 	lea    0xe22(%rip),%rsi        # 201a <_IO_stdin_used+0x1a>
    11f8:	bf 01 00 00 00       	mov    $0x1,%edi
    11fd:	b8 00 00 00 00       	mov    $0x0,%eax
    1202:	e8 69 fe ff ff       	callq  1070 <__printf_chk@plt>
    1207:	89 ea                	mov    %ebp,%edx
    1209:	48 8d 35 15 0e 00 00 	lea    0xe15(%rip),%rsi        # 2025 <_IO_stdin_used+0x25>
    1210:	bf 01 00 00 00       	mov    $0x1,%edi
    1215:	b8 00 00 00 00       	mov    $0x0,%eax
    121a:	e8 51 fe ff ff       	callq  1070 <__printf_chk@plt>
    121f:	5b                   	pop    %rbx
    1220:	5d                   	pop    %rbp
    1221:	41 5c                	pop    %r12
    1223:	c3                   	retq   

0000000000001224 <main>:
    1224:	41 54                	push   %r12
    1226:	55                   	push   %rbp
    1227:	53                   	push   %rbx
    1228:	48 89 f3             	mov    %rsi,%rbx
    122b:	83 ff 01             	cmp    $0x1,%edi
    122e:	0f 8e b8 00 00 00    	jle    12ec <main+0xc8>
    1234:	e8 ea 00 00 00       	callq  1323 <dirty_mem>
    1239:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    123d:	ba 0a 00 00 00       	mov    $0xa,%edx
    1242:	be 00 00 00 00       	mov    $0x0,%esi
    1247:	e8 f4 fd ff ff       	callq  1040 <strtol@plt>
    124c:	48 89 c5             	mov    %rax,%rbp
    124f:	e8 cf 00 00 00       	callq  1323 <dirty_mem>
    1254:	e8 ca 00 00 00       	callq  1323 <dirty_mem>
    1259:	40 0f b6 dd          	movzbl %bpl,%ebx
    125d:	e8 c1 00 00 00       	callq  1323 <dirty_mem>
    1262:	89 1d f8 2d 00 00    	mov    %ebx,0x2df8(%rip)        # 4060 <global>
    1268:	bf 04 00 00 00       	mov    $0x4,%edi
    126d:	e8 de fd ff ff       	callq  1050 <malloc@plt>
    1272:	49 89 c4             	mov    %rax,%r12
    1275:	e8 a9 00 00 00       	callq  1323 <dirty_mem>
    127a:	4c 89 25 ff 4d 00 00 	mov    %r12,0x4dff(%rip)        # 6080 <heap>
    1281:	e8 9d 00 00 00       	callq  1323 <dirty_mem>
    1286:	41 89 1c 24          	mov    %ebx,(%r12)
    128a:	48 8d 3d ef 2d 00 00 	lea    0x2def(%rip),%rdi        # 4080 <src>
    1291:	0f b6 c3             	movzbl %bl,%eax
    1294:	48 bb 01 01 01 01 01 	movabs $0x101010101010101,%rbx
    129b:	01 01 01 
    129e:	48 0f af c3          	imul   %rbx,%rax
    12a2:	b9 00 02 00 00       	mov    $0x200,%ecx
    12a7:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    12aa:	e8 74 00 00 00       	callq  1323 <dirty_mem>
    12af:	48 8d 35 ca 2d 00 00 	lea    0x2dca(%rip),%rsi        # 4080 <src>
    12b6:	48 8d 3d c3 3d 00 00 	lea    0x3dc3(%rip),%rdi        # 5080 <dst>
    12bd:	b9 00 02 00 00       	mov    $0x200,%ecx
    12c2:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    12c5:	40 84 ed             	test   %bpl,%bpl
    12c8:	bb 01 00 00 00       	mov    $0x1,%ebx
    12cd:	0f 45 dd             	cmovne %ebp,%ebx
    12d0:	e8 4e 00 00 00       	callq  1323 <dirty_mem>
    12d5:	0f b6 fb             	movzbl %bl,%edi
    12d8:	be 02 00 00 00       	mov    $0x2,%esi
    12dd:	e8 b3 fe ff ff       	callq  1195 <foo>
    12e2:	b8 00 00 00 00       	mov    $0x0,%eax
    12e7:	5b                   	pop    %rbx
    12e8:	5d                   	pop    %rbp
    12e9:	41 5c                	pop    %r12
    12eb:	c3                   	retq   
    12ec:	e8 32 00 00 00       	callq  1323 <dirty_mem>
    12f1:	48 8b 1b             	mov    (%rbx),%rbx
    12f4:	e8 2a 00 00 00       	callq  1323 <dirty_mem>
    12f9:	48 89 d9             	mov    %rbx,%rcx
    12fc:	48 8d 15 29 0d 00 00 	lea    0xd29(%rip),%rdx        # 202c <_IO_stdin_used+0x2c>
    1303:	be 01 00 00 00       	mov    $0x1,%esi
    1308:	48 8b 3d 31 2d 00 00 	mov    0x2d31(%rip),%rdi        # 4040 <stderr@@GLIBC_2.2.5>
    130f:	b8 00 00 00 00       	mov    $0x0,%eax
    1314:	e8 77 fd ff ff       	callq  1090 <__fprintf_chk@plt>
    1319:	bf 01 00 00 00       	mov    $0x1,%edi
    131e:	e8 5d fd ff ff       	callq  1080 <exit@plt>

0000000000001323 <dirty_mem>:
    1323:	55                   	push   %rbp
    1324:	48 89 e5             	mov    %rsp,%rbp
    1327:	48 8d 3d 0d 0d 00 00 	lea    0xd0d(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    132e:	e8 fd fc ff ff       	callq  1030 <puts@plt>
    1333:	48 8b 05 e6 2c 00 00 	mov    0x2ce6(%rip),%rax        # 4020 <stdout@@GLIBC_2.2.5>
    133a:	48 89 c7             	mov    %rax,%rdi
    133d:	e8 1e fd ff ff       	callq  1060 <fflush@plt>
    1342:	90                   	nop
    1343:	5d                   	pop    %rbp
    1344:	c3                   	retq   
    1345:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    134c:	00 00 00 
    134f:	90                   	nop

0000000000001350 <__libc_csu_init>:
    1350:	41 57                	push   %r15
    1352:	49 89 d7             	mov    %rdx,%r15
    1355:	41 56                	push   %r14
    1357:	49 89 f6             	mov    %rsi,%r14
    135a:	41 55                	push   %r13
    135c:	41 89 fd             	mov    %edi,%r13d
    135f:	41 54                	push   %r12
    1361:	4c 8d 25 20 2a 00 00 	lea    0x2a20(%rip),%r12        # 3d88 <__frame_dummy_init_array_entry>
    1368:	55                   	push   %rbp
    1369:	48 8d 2d 20 2a 00 00 	lea    0x2a20(%rip),%rbp        # 3d90 <__init_array_end>
    1370:	53                   	push   %rbx
    1371:	4c 29 e5             	sub    %r12,%rbp
    1374:	48 83 ec 08          	sub    $0x8,%rsp
    1378:	e8 83 fc ff ff       	callq  1000 <_init>
    137d:	48 c1 fd 03          	sar    $0x3,%rbp
    1381:	74 1b                	je     139e <__libc_csu_init+0x4e>
    1383:	31 db                	xor    %ebx,%ebx
    1385:	0f 1f 00             	nopl   (%rax)
    1388:	4c 89 fa             	mov    %r15,%rdx
    138b:	4c 89 f6             	mov    %r14,%rsi
    138e:	44 89 ef             	mov    %r13d,%edi
    1391:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    1395:	48 83 c3 01          	add    $0x1,%rbx
    1399:	48 39 dd             	cmp    %rbx,%rbp
    139c:	75 ea                	jne    1388 <__libc_csu_init+0x38>
    139e:	48 83 c4 08          	add    $0x8,%rsp
    13a2:	5b                   	pop    %rbx
    13a3:	5d                   	pop    %rbp
    13a4:	41 5c                	pop    %r12
    13a6:	41 5d                	pop    %r13
    13a8:	41 5e                	pop    %r14
    13aa:	41 5f                	pop    %r15
    13ac:	c3                   	retq   
    13ad:	0f 1f 00             	nopl   (%rax)

00000000000013b0 <__libc_csu_fini>:
    13b0:	c3                   	retq   

Disassemblamento della sezione .fini:

00000000000013b4 <_fini>:
    13b4:	48 83 ec 08          	sub    $0x8,%rsp
    13b8:	48 83 c4 08          	add    $0x8,%rsp
    13bc:	c3                   	retq   
