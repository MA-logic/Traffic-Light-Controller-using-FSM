`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:33 05/07/2026 
// Design Name: 
// Module Name:    traffic_light 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module traffic_light(

input clk,
input rst,

output reg red,
output reg yellow,
output reg green
);

reg[1:0] state;
reg[2:0] count;

parameter red_state=2'b00;
parameter green_state=2'b01;
parameter yellow_state=2'b10;

always@(posedge clk or posedge rst) begin

if (rst) begin

state<=red_state;
count<=0;
end

else begin

case(state)

red_state:begin
if (count==3)begin
state<=green_state;
count<=0;
end

else
count<=count+1;
end

green_state:begin
if(count==3)begin
state<=yellow_state;
count<=0;
end

else
count<=count+1;
end

yellow_state:begin
if(count==1)begin
state<=red_state;
count<=0;
end

else
count<=count+1;
end

default:begin
state<=red_state;
count<=0;
end
endcase
end
end
always @(*)begin

red=0;
yellow=0;
green=0;

case(state)

red_state:
red=1;

green_state:
green=1;

yellow_state:
yellow=1;
endcase
end

endmodule
