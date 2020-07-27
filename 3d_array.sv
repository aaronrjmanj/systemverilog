//3D Array
//int,byte can't be of packed arrays
//reg,bit,logic - only single bit data types can be of packed array 
module top;
bit [1:0]  arr [2:0][3:0];
initial begin
	//arr.new[0];
	for(int i=0;i<3;i++) begin	
		for(int j=0;j<4;j++) begin
			for(int k=0;k<2;k++) begin
				arr[i][j][k]= $urandom;
			end
	end
end
	for(int i=0;i<3;i++) begin	
		for(int j=0;j<4;j++) begin
			for(int k=0;k<2;k++) begin
			$display("a[%0d][%0d][%0d]",i,j,k);
			end
	end
end
end

endmodule

