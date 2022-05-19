// Code your design here
module LFSR_tb;
    reg clk;
    reg set;
	wire  [3:1] Q;
    parameter OFFSET = 0;
// clock process
initial
begin
    #OFFSET;
    forever
    begin
        clk = 1'b0;
        #2 clk = 1'b1;
        #2;
    end
end

// set process
initial
begin
    #OFFSET;
    forever
    begin
        set= 1'b1;
        #5   set = 1'b0;
        #50;
    end
end

initial begin
        #60 $finish;
end

initial
	begin
		$dumpfile("LFSR.vcd");
		$dumpvars(0, LFSR_tb);
	end

	LFSR LFSR_tb(.clk, .set, .Q);
endmodule
