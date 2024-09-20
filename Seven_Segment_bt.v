`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/14 16:14:12
// Design Name: 
// Module Name: Seven_Segment_bt
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


module Seven_Segment_bt();
    wire [7:0] segt;
    reg [1:0] i0t, i1t, i2t, i3t;
    reg [1:0] st;

    Seven_Segment uut (
        .i0(i0t), 
        .i1(i1t), 
        .i2(i2t), 
        .i3(i3t), 
        .s(st), 
        .seg(segt)
    );

    initial begin
        #10 i0t=2'b00; i1t=2'b11; i2t=2'b11; i3t=2'b11; st=2'b00;
        #10 i0t=2'b01; i1t=2'b00; i2t=2'b00; i3t=2'b00; st=2'b00;
        #10 i0t=2'b10; i1t=2'b00; i2t=2'b00; i3t=2'b00; st=2'b00;
        #10 i0t=2'b11; i1t=2'b00; i2t=2'b00; i3t=2'b00; st=2'b00;
        
        #10 i0t=2'b00; i1t=2'b01; i2t=2'b00; i3t=2'b00; st=2'b01;
        #10 i0t=2'b00; i1t=2'b00; i2t=2'b10; i3t=2'b00; st=2'b10;
        #10 i0t=2'b00; i1t=2'b00; i2t=2'b00; i3t=2'b11; st=2'b11;
        #10 $stop;
    end
endmodule

