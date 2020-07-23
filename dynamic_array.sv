module top;
  bit k[][3];
  int i,j;
  initial begin
    k=new[5];
    $display("k=%D",k.size());
    for(i=1;i<5;i++) begin
      for(j=1;j<3;j++) begin
        k[i][j]=$random;
      end 
    end  
    for(i=1;i<5;i++) begin
      for(j=1;j<3;j++) begin
        $display("size=%0D,k[%0d][%0d]=%0d",k.size(),i,j,k[i][j]);
      end 
    end  
  end
endmodule
