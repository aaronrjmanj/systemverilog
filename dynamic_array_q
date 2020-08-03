`include"class.sv"
module top;dynamic_array_q
  string temp;
  myclass m[][$]; // Dynamic Array of Queue
  myclass p;
  initial begin
    m=new[3];
    $display("__Push___");
    for(int i=0;i<3;i++) begin
            p=new();
      assert(p.randomize());
	    m[i].push_back(p);
	    p.print();
    end
    $display("__Pop___");
    for(int i=0;i<3;i++) begin
            p=new();
      assert(p.randomize());
	    p = m[i].pop_front();
	    p.print();
      $display("size = %d",m.size());

    end
    $display("No.of Hande = %d",p.count);
  end
endmodule
