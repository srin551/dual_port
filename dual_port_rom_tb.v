`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2023 02:27:31 PM
// Design Name: 
// Module Name: dual
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dual_port_ram_tb( );
 reg [15:0] data1, data2;
 reg [9:0] addr1, addr2;
 reg we1, we2, clk;
 wire [15:0] out1, out2;

 dual uut( .data1(data1), .data2(data2), .addr1(addr1),
.addr2(addr2), .we1(we1), .we2(we2), .clk(clk), .out1(out1), .out2(out2));
 always #5 clk=~clk;
 initial begin
 clk=0;
 we1=1; we2=1;

 data1=16'ha45a; addr1=10'd1;
 data2=16'h1342; addr2=10'd2;
 #10;

 data1=16'hadff; addr1=10'd3;
 data2=16'hcf22; addr2=10'd4;
 #10;

 data1=16'h1234; addr1=10'd5;
 data2=16'h0000; addr2=10'd6;
 #10;

 we2=0;
 data1=16'h5511; addr1=10'd7;
 addr2=10'd5;
 #10;

 we2=0;
 data1=16'h4545; addr1=10'd7;
 addr2=10'd5;
 #10;

 we1=0;
 addr1=10'd1;
 addr2=10'd2;
 #10;

 addr1=10'd3;
 addr2=10'd4;
 #10;

 we1=1;
 data1=16'hffff; addr1=10'd1;
 #10;

 #1000; $finish;
 end
endmodule

