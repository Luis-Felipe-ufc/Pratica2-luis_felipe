`timescale  1 ps / 1 ps
module EX2_tb;
  logic I0, I1, I2, I3;
  
  // instantiating the module to map connections
  LUT3 #(.INIT(8'b00000001)) NOR1_INST(.I0(I3), .I1(I2), .I2(I1), .O(O1));
  LUT3 #(.INIT(8'b00000001)) NOR2_INST(.I0(I3), .I1(I2), .I2(I0), .O(O2));
  LUT3 #(.INIT(8'b10000000)) AND1_INST(.I0(I3), .I1(I2), .I2(I0), .O(O3));
  LUT3 #(.INIT(8'b10000000)) AND2_INST(.I0(I3), .I1(I2), .I2(I1), .O(O4));
  LUT3 #(.INIT(8'b11111110)) OR1_INST(.I0(O1), .I1(O2), .I2(O3), .O(O5));
  LUT3 #(.INIT(8'b11111110)) OR2_INST(.I0(O5), .I1(O5), .I2(O4), .O(Y));
  
  initial
    begin
      I3 = 1'b0;
      I2 = 1'b0;
      I1 = 1'b0;
      I0 = 1'b0;
\\......continua......\\
      #5
      I3 = 1'b0;
      I2 = 1'b0;
      I1 = 1'b0;
      I0 = 1'b1;      
      
      #5
      I3 = 1'b0;
      I2 = 1'b0;
      I1 = 1'b1;
      I0 = 1'b0;
      
      #5
      I3 = 1'b0;
      I2 = 1'b0;
      I1 = 1'b1;
      I0 = 1'b1;
      
      #5
      I3 = 1'b0;
      I2 = 1'b1;
      I1 = 1'b0;
      I0 = 1'b0;

      #5
      I3 = 1'b0;
      I2 = 1'b1;
      I1 = 1'b0;
      I0 = 1'b1;      
      
      #5
      I3 = 1'b0;
      I2 = 1'b1;
      I1 = 1'b1;
      I0 = 1'b0;
      
      #5
      I3 = 1'b0;
      I2 = 1'b1;
      I1 = 1'b1;
      I0 = 1'b1;   
      
      #5
      I3 = 1'b1;
      I2 = 1'b0;
      I1 = 1'b0;
      I0 = 1'b0;

      #5
      I3 = 1'b1;
      I2 = 1'b0;
      I1 = 1'b0;
      I0 = 1'b1;      
      
      #5
      I3 = 1'b1;
      I2 = 1'b0;
      I1 = 1'b1;
      I0 = 1'b0;
      
      #5
      I3 = 1'b1;
      I2 = 1'b0;
      I1 = 1'b1;
      I0 = 1'b1;
      
      #5
      I3 = 1'b1;
      I2 = 1'b1;
      I1 = 1'b0;
      I0 = 1'b0;

      #5
      I3 = 1'b1;
      I2 = 1'b1;
      I1 = 1'b0;
      I0 = 1'b1;      
      
      #5
      I3 = 1'b1;
      I2 = 1'b1;
      I1 = 1'b1;
      I0 = 1'b0;
      
      #5
      I3 = 1'b1;
      I2 = 1'b1;
      I1 = 1'b1;
      I0 = 1'b1;  
    end
  
    initial
    begin
      $display("                Tempo     Entradas LUT       Saídas");
      $display("                       I3   I2   I1   I0        Y");
      $display("                ====   ==================   =========");
      $monitor($time,"    %b    %b    %b    %b        %b",I3, I2, I1, I0, Y);
    end
  
endmodule

