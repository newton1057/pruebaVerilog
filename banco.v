`timescale 1ms/100us

module testbench();

    reg sw1, sw2;
    wire wire1, wire2;

    assign wire1 = sw1;
    assign wire2 = sw2;

    initial begin
        $dumpfile("result.vcd");
        $dumpvars(0, testbench);
        sw1 = 0; sw2 = 1;
        #1;
        sw1 = 1;
        #1;
        sw1 = 0; sw2 = 0;
        #3;
        sw2 = 1;
        #1;
        sw1 = 1;
        #0.5;
        sw1 = 0;
        #0.5;
        $finish();
    end


endmodule