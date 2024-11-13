`timescale  1 ps / 1 ps
module EX3_tb;
  logic a, b, c, S, Cout;
  
  // instantiating the module to map connections
  LUT3 #(.INIT(8'b10010110)) XOR3_1(.I0(a), .I1(b), .I2(c), .O(S));
  LUT2 #(.INIT(4'b1000)) AND2_1(.I0(b), .I1(c), .O(O1));
  LUT2 #(.INIT(4'b1000)) AND2_2(.I0(b), .I1(a), .O(O2));
  LUT2 #(.INIT(4'b1000)) AND2_3(.I0(a), .I1(c), .O(O3));
  LUT3 #(.INIT(8'b11111110)) OR3_1(.I0(O1), .I1(O2), .I2(O3), .O(Cout));
  
  
 initial begin
  integer i;
   for (i = 0; i < 8; i = i + 1) begin
    {a, b, c} = i;  
    #5;                    
  end
end
  
    initial
    begin
      $display("                Tempo     Entradas LUT        Saídas");
      $display("                         A    B    Cin        S  Cout");
      $display("                ====   ==================   =========");
      $monitor($time,"     %b    %b     %b         %b   %b",a, b, c, S, Cout);
    end
  
endmodule
