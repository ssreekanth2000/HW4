//------------------------------------------------------------------------------
// MIPS register file
//   width: 32 bits
//   depth: 32 words (reg[0] is static zero register)
//   2 asynchronous read ports
//   1 synchronous, positive edge triggered write port
//------------------------------------------------------------------------------
`include "reg32.v"
`include "reg32zero.v"
`include "decoder1to32.v"
`include "32multiplexer32.v"
module regfile
(
output[31:0]	ReadData1,	// Contents of first register read
output[31:0]	ReadData2,	// Contents of second register read
input[31:0]	WriteData,	// Contents to write to register
input[4:0]	ReadRegister1,	// Address of first register to read
input[4:0]	ReadRegister2,	// Address of second register to read
input[4:0]	WriteRegister,	// Address of register to write
input		RegWrite,	// Enable writing of register when High
input		Clk		// Clock (Positive Edge Triggered)
);

  // These two lines are clearly wrong.  They are included to showcase how the 
  // test harness works. Delete them after you understand the testing process, 
  // and replace them with your actual code.
  

  wire[0:31] int0,int1,int2,int3,int4,int5,int6,int7,int8,int9,int10,int11,int12,int13,int14,int15,int16,int17,int18,int19,int20,int21,int22,int23,int24,int25,int26,int27,int28,int29,int30,int31;
  wire [31:0] w;
  decoder1to32
    d0(w,RegWrite,WriteRegister);
  reg32zero
    r0(int0,WriteData,w[0],Clk);
  reg32
    r1(int1,WriteData,w[1],Clk),
    r2(int2,WriteData,w[2],Clk),
    r3(int3,WriteData,w[3],Clk),
    r4(int4,WriteData,w[4],Clk),
    r5(int5,WriteData,w[5],Clk),
    r6(int6,WriteData,w[6],Clk),
    r7(int7,WriteData,w[7],Clk),
    r8(int8,WriteData,w[8],Clk),
    r9(int9,WriteData,w[9],Clk),
    r10(int10,WriteData,w[10],Clk),
    r11(int11,WriteData,w[11],Clk),
    r12(int12,WriteData,w[12],Clk),
    r13(int13,WriteData,w[13],Clk),
    r14(int14,WriteData,w[14],Clk),
    r15(int15,WriteData,w[15],Clk),
    r16(int16,WriteData,w[16],Clk),
    r17(int17,WriteData,w[17],Clk),
    r18(int18,WriteData,w[18],Clk),
    r19(int19,WriteData,w[19],Clk),
    r20(int20,WriteData,w[20],Clk),
    r21(int21,WriteData,w[21],Clk),
    r22(int22,WriteData,w[22],Clk),
    r23(int23,WriteData,w[23],Clk),
    r24(int24,WriteData,w[24],Clk),
    r25(int25,WriteData,w[25],Clk),
    r26(int26,WriteData,w[26],Clk),
    r27(int27,WriteData,w[27],Clk),
    r28(int28,WriteData,w[28],Clk),
    r29(int29,WriteData,w[29],Clk),
    r30(int30,WriteData,w[30],Clk),
    r31(int31,WriteData,w[31],Clk);
  mux32to1by1
    m0(ReadData1,ReadRegister1,int0,int1,int2,int3,int4,int5,int6,int7,int8,int9,int10,int11,int12,int13,int14,int15,int16,int17,int18,int19,int20,int21,int22,int23,int24,int25,int26,int27,int28,int29,int30,int31),
    m1(ReadData2,ReadRegister2,int0,int1,int2,int3,int4,int5,int6,int7,int8,int9,int10,int11,int12,int13,int14,int15,int16,int17,int18,int19,int20,int21,int22,int23,int24,int25,int26,int27,int28,int29,int30,int31);


endmodule
