$date
	Wed Jul 22 06:30:49 2026
$end
$version
	Icarus Verilog
$end
$timescale
	1ps
$end
$scope module cpu_4bit_tb $end
$var wire 4 ! pc [3:0] $end
$var wire 12 " instr [11:0] $end
$var wire 1 # halted $end
$var wire 1 $ flag_zero $end
$var reg 1 % clk $end
$var reg 1 & rst_n $end
$var integer 32 ' checks [31:0] $end
$var integer 32 ( cycle_count [31:0] $end
$var integer 32 ) errors [31:0] $end
$scope module dut $end
$var wire 1 % clk $end
$var wire 1 $ flag_zero $end
$var wire 1 # halted $end
$var wire 12 * instr_out [11:0] $end
$var wire 4 + pc_out [3:0] $end
$var wire 1 & rst_n $end
$var wire 4 , write_data [3:0] $end
$var wire 2 - rs_field [1:0] $end
$var wire 1 . reg_write $end
$var wire 4 / reg_b [3:0] $end
$var wire 4 0 reg_a [3:0] $end
$var wire 2 1 rd_field [1:0] $end
$var wire 4 2 opcode [3:0] $end
$var wire 1 3 mem_write $end
$var wire 1 4 mem_read $end
$var wire 4 5 mem_rdata [3:0] $end
$var wire 1 6 is_ldi $end
$var wire 1 7 is_jz $end
$var wire 1 8 is_jmp $end
$var wire 1 9 is_halt $end
$var wire 1 : is_alu_op $end
$var wire 12 ; instr [11:0] $end
$var wire 4 < imm4 [3:0] $end
$var wire 1 = alu_zero $end
$var wire 4 > alu_result [3:0] $end
$var wire 3 ? alu_op [2:0] $end
$var wire 1 @ alu_carry $end
$var reg 4 A pc [3:0] $end
$var reg 1 B zero_flag $end
$scope module u_alu $end
$var wire 1 = zero $end
$var wire 4 C b [3:0] $end
$var wire 3 D alu_op [2:0] $end
$var wire 4 E a [3:0] $end
$var parameter 3 F OP_ADD $end
$var parameter 3 G OP_AND $end
$var parameter 3 H OP_NOT $end
$var parameter 3 I OP_OR $end
$var parameter 3 J OP_SHL $end
$var parameter 3 K OP_SHR $end
$var parameter 3 L OP_SUB $end
$var parameter 3 M OP_XOR $end
$var reg 1 @ carry $end
$var reg 5 N ext [4:0] $end
$var reg 4 O result [3:0] $end
$upscope $end
$scope module u_ctrl $end
$var wire 4 P opcode [3:0] $end
$var parameter 4 Q ADD $end
$var parameter 4 R ANDOP $end
$var parameter 4 S HALT $end
$var parameter 4 T JMP $end
$var parameter 4 U JZ $end
$var parameter 4 V LDI $end
$var parameter 4 W LOAD $end
$var parameter 4 X NOP $end
$var parameter 4 Y NOTOP $end
$var parameter 4 Z OROP $end
$var parameter 4 [ SHLOP $end
$var parameter 4 \ SHROP $end
$var parameter 4 ] STORE $end
$var parameter 4 ^ SUB $end
$var parameter 4 _ XOROP $end
$var reg 3 ` alu_op [2:0] $end
$var reg 1 : is_alu_op $end
$var reg 1 9 is_halt $end
$var reg 1 8 is_jmp $end
$var reg 1 7 is_jz $end
$var reg 1 6 is_ldi $end
$var reg 1 4 mem_read $end
$var reg 1 3 mem_write $end
$var reg 1 . reg_write $end
$upscope $end
$scope module u_dmem $end
$var wire 4 a addr [3:0] $end
$var wire 1 % clk $end
$var wire 1 3 mem_write $end
$var wire 4 b rdata [3:0] $end
$var wire 4 c wdata [3:0] $end
$var integer 32 d i [31:0] $end
$upscope $end
$scope module u_pmem $end
$var wire 4 e addr [3:0] $end
$var wire 12 f instr [11:0] $end
$upscope $end
$scope module u_rf $end
$var wire 1 % clk $end
$var wire 2 g raddr1 [1:0] $end
$var wire 2 h raddr2 [1:0] $end
$var wire 4 i rdata1 [3:0] $end
$var wire 4 j rdata2 [3:0] $end
$var wire 1 & rst_n $end
$var wire 2 k waddr [1:0] $end
$var wire 4 l wdata [3:0] $end
$var wire 1 . we $end
$var integer 32 m i [31:0] $end
$upscope $end
$upscope $end
$scope task check_eq1 $end
$var reg 1 n actual $end
$var reg 1 o expected $end
$var reg 256 p name [255:0] $end
$upscope $end
$scope task check_eq4 $end
$var reg 4 q actual [3:0] $end
$var reg 4 r expected [3:0] $end
$var reg 256 s name [255:0] $end
$upscope $end
$upscope $end
$enddefinitions $end
$comment Show the parameter values. $end
$dumpall
b101 _
b10 ^
b1011 ]
b1000 \
b111 [
b100 Z
b110 Y
b0 X
b1010 W
b1001 V
b1101 U
b1100 T
b1111 S
b11 R
b1 Q
b100 M
b1 L
b111 K
b110 J
b11 I
b101 H
b10 G
b0 F
$end
#0
$dumpvars
bx s
bx r
bx q
bx p
xo
xn
b100 m
b101 l
b0 k
b0 j
b0 i
b0 h
b0 g
b100100000101 f
b0 e
b10000 d
b0 c
b0 b
b101 a
b0 `
b1001 P
b0 O
b0 N
b0 E
b0 D
b0 C
0B
b0 A
0@
b0 ?
b0 >
1=
b101 <
b100100000101 ;
0:
09
08
07
16
b0 5
04
03
b1001 2
b0 1
b0 0
b0 /
1.
b0 -
b101 ,
b0 +
b100100000101 *
b0 )
b0 (
b0 '
0&
0%
0$
0#
b100100000101 "
b0 !
$end
#5000
b100 m
1%
#10000
0%
#15000
1&
b100 m
1%
#20000
0%
#25000
b11 ,
b11 l
b11 <
b11 a
b1 1
b1 g
b1 k
0=
b101 >
b101 O
b101 N
b100101000011 "
b100101000011 *
b100101000011 ;
b100101000011 f
b1 !
b1 +
b1 A
b1 e
b0 0
b0 E
b0 i
b101 /
b101 C
b101 c
b101 j
1%
#26000
b1 (
#30000
0%
#35000
b1000 ,
b1000 l
1:
06
1.
b1000 >
b1000 O
b1000 N
b0 <
b0 a
b11 /
b11 C
b11 c
b11 j
b1 -
b1 h
b0 1
b0 g
b0 k
b1 2
b1 P
b101 0
b101 E
b101 i
b100010000 "
b100010000 *
b100010000 ;
b100010000 f
b10 !
b10 +
b10 A
b10 e
1%
#36000
b10 (
#40000
0%
#45000
b0 ,
b0 l
1@
1=
13
0:
0.
b1010 <
b1010 a
b1000 /
b1000 C
b1000 c
b1000 j
b0 -
b0 h
b1011 2
b1011 P
b0 >
b0 O
b10000 N
b101100001010 "
b101100001010 *
b101100001010 ;
b101100001010 f
b11 !
b11 +
b11 A
b11 e
b1000 0
b1000 E
b1000 i
1%
#46000
b11 (
#50000
0%
#55000
b101 ,
b101 l
0@
0=
b101 >
b101 O
b101 N
b1 ?
b1 D
b1 `
1:
1.
03
b0 <
b0 a
b11 /
b11 C
b11 c
b11 j
b1 -
b1 h
b10 2
b10 P
b0 5
b0 b
b1000010000 "
b1000010000 *
b1000010000 ;
b1000010000 f
b100 !
b100 +
b100 A
b100 e
1%
#56000
b100 (
#60000
0%
#65000
b1000 ,
b1000 l
14
b0 ?
b0 D
b0 `
0:
1.
b1000 5
b1000 b
b1010 <
b1010 a
b101 /
b101 C
b101 c
b101 j
b0 -
b0 h
b10 1
b10 g
b10 k
b1010 2
b1010 P
b101 >
b101 O
b101 N
b101010001010 "
b101010001010 *
b101010001010 ;
b101010001010 f
b101 !
b101 +
b101 A
b101 e
b0 0
b0 E
b0 i
1%
#66000
b101 (
#70000
0%
#75000
b0 ,
b0 l
1=
b10 ?
b10 D
b10 `
1:
04
1.
b0 >
b0 O
b0 N
b0 5
b0 b
b0 <
b0 a
b11 /
b11 C
b11 c
b11 j
b1 -
b1 h
b11 2
b11 P
b1000 0
b1000 E
b1000 i
b1110010000 "
b1110010000 *
b1110010000 ;
b1110010000 f
b110 !
b110 +
b110 A
b110 e
1%
#76000
b110 (
#80000
0%
#85000
b1010 ,
b1010 l
0=
b1010 >
b1010 O
b1010 N
17
b0 ?
b0 D
b0 `
0:
0.
b1000 5
b1000 b
b1010 <
b1010 a
b101 /
b101 C
b101 c
b101 j
b0 -
b0 h
b0 1
b0 g
b0 k
b1101 2
b1101 P
b110100001010 "
b110100001010 *
b110100001010 ;
b110100001010 f
b111 !
b111 +
b111 A
b111 e
1$
1B
b101 0
b101 E
b101 i
1%
#86000
b111 (
#90000
0%
#95000
b1001 ,
b1001 l
b101 >
b101 O
b101 N
16
1.
07
b0 5
b0 b
b1001 <
b1001 a
b0 0
b0 E
b0 i
b11 1
b11 g
b11 k
b1001 2
b1001 P
b100111001001 "
b100111001001 *
b100111001001 ;
b100111001001 f
b1010 !
b1010 +
b1010 A
b1010 e
1%
#96000
b1000 (
#100000
0%
#105000
b110 ,
b110 l
b101 ?
b101 D
b101 `
1:
06
1.
b0 <
b0 a
b110 2
b110 P
b110 >
b110 O
b110 N
b11011000000 "
b11011000000 *
b11011000000 ;
b11011000000 f
b1011 !
b1011 +
b1011 A
b1011 e
b1001 0
b1001 E
b1001 i
1%
#106000
b1001 (
#110000
0%
#115000
b1100 ,
b1100 l
b110 ?
b110 D
b110 `
1:
1.
b1100 >
b1100 O
b1100 N
b111 2
b111 P
b110 0
b110 E
b110 i
0$
0B
b11111000000 "
b11111000000 *
b11111000000 ;
b11111000000 f
b1100 !
b1100 +
b1100 A
b1100 e
1%
#116000
b1010 (
#120000
0%
#125000
b110 ,
b110 l
b111 ?
b111 D
b111 `
1:
1.
b1000 2
b1000 P
0@
b110 >
b110 O
b110 N
b100011000000 "
b100011000000 *
b100011000000 ;
b100011000000 f
b1101 !
b1101 +
b1101 A
b1101 e
b1100 0
b1100 E
b1100 i
1%
#126000
b1011 (
#130000
0%
#135000
b1010 ,
b1010 l
1#
19
b0 ?
b0 D
b0 `
0:
0.
0@
b1010 >
b1010 O
b1010 N
b0 1
b0 g
b0 k
b1111 2
b1111 P
b101 0
b101 E
b101 i
b111100000000 "
b111100000000 *
b111100000000 ;
b111100000000 f
b1110 !
b1110 +
b1110 A
b1110 e
1%
#136000
b1100 (
#140000
0%
#145000
1%
#150000
0%
#155000
1%
#160000
0%
#165000
0o
0n
b110010101110010001000000110011001101001011011100110000101101100001000000101001101001000010100100010000000101000011100100110010101110011011101010110110001110100001111010011011000101100001000000110111001101111011011100111101001100101011100100110111100101001 p
b1110 r
b1110 q
b1010000010000110010000001100110011100100110111101111010011001010110111000100000011000010111010000100000010010000100000101001100010101000010000001100001011001000110010001110010 s
b1001 '
1%
