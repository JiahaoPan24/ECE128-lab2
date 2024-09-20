`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/10 15:10:35
// Design Name: 
// Module Name: Seven_Segment
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


module Seven_Segment(i0,i1,i2,i3,s,seg);
    input [1:0] i0, i1, i2, i3, s;
    output reg [6:0] seg;
    
wire [1:0] y;
wire [3:0] yt;

Mux4_1_be uttm (i0,i1,i2,i3,s,y);

assign yt= {2'b0, y};

always @(yt)
begin
    case(yt)
        4'b0000: seg= 7'b1000000;
        4'b0001: seg= 7'b1111001;
        4'b0010: seg= 7'b0100100;
        4'b0011: seg= 7'b0110000;
        default : seg = 7'bx;
       endcase 
      end

endmodule
