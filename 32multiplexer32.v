module mux32to1by1(

  output[31:0]      out,
  input[4:0]  address,
  input[31:0]input0,input1,input2,input3,input4,input5,input6,input7,input8,input9,input10,input11,input12,input13,input14,input15,input16,input17,input18,input19,input20,input21,input22,input23,input24,input25,input26,input27,input28,input29,input30,input31     


);
  reg[31:0] out;


    always @(address or input0 or input1 or input2 or input3 or input4 or input5 or input6 or input7 or input8 or input9 or input10 or input11 or input12 or input13 or input14 or input15 or input16 or input17 or input18 or input19 or input20 or input21 or input22 or input23 or input24 or input25 or input26 or input27 or input28 or input29 or input30 or input31)
    case ( address )
       5'b00000: out = input0;
       5'b00001: out = input1;
       5'b00010: out = input2;
       5'b00011: out = input3; 
       5'b00100: out = input4;
       5'b00101: out = input5;
       5'b00110: out = input6;
       5'b00111: out = input7;
       5'b01000: out = input8;
       5'b01001: out = input9;
       5'b01010: out = input10;
       5'b01011: out = input11;
       5'b01100: out = input12;
       5'b01101: out = input13;
       5'b01110: out = input14;
       5'b01111: out = input15;
       5'b10000: out = input16;
       5'b10001: out = input17;
       5'b10010: out = input18;
       5'b10011: out = input19;
       5'b10100: out = input20;
       5'b10101: out = input21;
       5'b10110: out = input22;
       5'b10111: out = input23;
       5'b11000: out = input24;
       5'b11001: out = input25;
       5'b11010: out = input26;
       5'b11011: out = input27;
       5'b11100: out = input28;
       5'b11101: out = input29;
       5'b11110: out = input30;
       5'b11111: out = input31;



    endcase

 
endmodule



