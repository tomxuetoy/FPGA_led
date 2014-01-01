module test(
       clk_in,
       out1,
		 out2,
		 out3
    );
input clk_in;
output out1, out2, out3;

reg [25:0] count;
reg out1, out2, out3;

always@(posedge clk_in)
begin
	count <= count + 1;
	
	if(count >= 5000000)
		out1 <= 0;
	else
		out1 <= 1;
		
	if(count >= 500000)
		out2 <= 0;
	else
		out2 <= 1;
		
	if(count >= 50000)
		out3 <= 0;
	else
		out3 <= 1;
end
    
endmodule