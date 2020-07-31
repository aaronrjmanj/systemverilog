class eth_pkt; // definition
 // property declaration
 rand bit [55:0] preamble;
 bit [7:0] sof;
 rand bit [47:0] mac_d;
 rand bit[47:0] mac_s;
 rand bit [15:0] length;
 rand bit[7:0] payload [$]; // dynmaic in size
 rand bit[31:0] crc;
 
 //methods
 function print();
	 $display("Printing Ethernet Pcaket");
	 $display("premable =%0h",premable);
	 $display("start of frame =%0h",sof);
	 $display("mac destination =%0h",mac_d);
	 $display("mac source =%0h",mac_s);
	 $display("length =%0h",length);
	 $display("payload =%p",payload);
	 $display("crc =%0h",crc);
 endfunction

 //constraints
 constraint payload1{ payload.size() == length;
 }
	
endclass

module top;

eth_pkt m; //creating handle

initial begin
 m=new[]; // allocating memory
 m.randomize();
end
endmodule

