class myclass;
  rand int a;
  rand byte b;
  rand bit [7:0]c;
  static int count;
  function void print(string name="$$");
    $display("%s",name);
    $display("a=%d",a);
    $display("b=%d",b);
    $display("c=%d",c);
    count ++;
  endfunction
endclass
