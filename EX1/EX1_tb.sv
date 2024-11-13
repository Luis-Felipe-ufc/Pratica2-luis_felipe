`timescale  1 ps / 1 ps
module EX1;
  logic O1, I0, I1, I2, I3;
  
  // instantiating the module to map connections 4'b0101
  LUT2 #(.INIT(4'b0111)) LUT2_INST_NAND1( .I0(I3), .I1(I2), .O(O1) );
  LUT2 #(.INIT(4'b0111)) LUT2_INST_NAND2( .I0(O1), .I1(I1), .O(O2) );
  LUT2 #(.INIT(4'b0111)) LUT2_INST_NAND3( .I0(I1), .I1(I0), .O(O3) );
  LUT2 #(.INIT(4'b0001)) LUT2_INST_NOR( .I0(O2), .I1(O3), .O(X) );
  
  initial
    begin
      I3 = 1'b0;
      I2 = 1'b0;
      I1 = 1'b0;
      I0 = 1'b0;
//........CONTINUA...........//
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
      $display("                       I3   I2   I1   I0        X");
      $display("                ====   ==================   =========");
      $monitor($time,"    %b    %b    %b    %b        %b",I3, I2, I1, I0, X);
    end
  
endmodule

