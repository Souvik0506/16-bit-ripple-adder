module full_adder(a,b,cin,s,cout);
input  a;
input  b;
input cin;
output s;
output cout;
assign s = a^b^cin;
assign cout= (a&b) | (cin&(a^b));
endmodule

module bit_4(in1,in2,cin,sum,cout);
input [3:0] in1;
input [3:0] in2;
input cin;
wire [2:0] c;
output [3:0] sum;
output cout;
full_adder F1(in1[0],in2[0],cin,sum[0],c[0]);
full_adder F2(in1[1],in2[1],c[0],sum[1],c[1]);
full_adder F3(in1[2],in2[2],c[1],sum[2],c[2]);
full_adder F4(in1[3],in2[3],c[2],sum[3],cout);
endmodule

module bit_16(x,y,cin,sum,cout);
input [15:0] x;
input [15:0] y;
input cin;
wire [2:0] c;
output [15:0] sum;
output cout;
bit_4 B1(x[3:0],y[3:0],cin,sum[3:0],c[0]);
bit_4 B2(x[7:4],y[7:4],c[0],sum[7:4],c[1]);
bit_4 B3(x[11:8],y[11:8],c[1],sum[11:8],c[2]);
bit_4 B4(x[15:12],y[15:12],c[2],sum[15:12],cout);
endmodule

//testbench
module bit_16_test;
reg [15:0]x;
reg[15:0]y;
reg cin;
wire [15:0]sum;
wire cout;
bit_16 DUT(.x(x),.y(y),.cin(cin),.sum(sum),.cout(cout));
initial
begin
$monitor($time, " x=%h, y=%h, cin=%b, sum=%h, cout=%b", x, y, cin, sum, cout);
x=16'h0;y=16'h0;cin=0;
#5 x=16'h34fa;y=16'h5cd0;cin=0;
#5 x=16'h343b;y=16'h2fd0;cin=1;
#5 x = 16'hFFFF; y = 16'hFFFF; cin = 0;
#5 x = 16'h8000; y = 16'h8000; cin = 0;
#5 x=16'h34dc;y=16'h4dd0;cin=1;
#5 x=16'h34ed;y=16'h3ad0;cin=0;
end
endmodule
