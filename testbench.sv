// Code your testbench here
// or browse Examples
module LFSR(clk, set, Q);
input clk; //I clock in
input set; //I set
output [3:1] Q; // O Result
reg [3:1] Q;

always@ (posedge clk)
 begin
  if (set)begin  //set值輸出6
        Q[3]<=1;
        Q[2]<=1;
        Q[1]<=0;
    end
    else begin    //LFS
        Q[3]<=Q[2]; //Q2給Q3
        Q[2]<=Q[1]; //O1給Q2
        Q[1]<=Q[1]^Q[3]; //Q1和Q3做互斥或給Q1
    end
        
   
 end
endmodule
