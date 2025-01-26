module alu_tb;

    reg [3:0] a, b;
    reg [2:0] op;
    wire [3:0] result;
    wire overflow;

    alu dut (.a(a), .b(b), .op(op), .result(result), .overflow(overflow));

    initial begin
        // Addition
        a = 4'b0101; b = 4'b0011; op = 3'b000; #10;
        if (result !== 4'b1000 || overflow !== 1'b0) $display("Addition test failed");

        // Subtraction
        a = 4'b0101; b = 4'b0011; op = 3'b001; #10;
        if (result !== 4'b0010 || overflow !== 1'b0) $display("Subtraction test failed");

        // AND
        a = 4'b0101; b = 4'b0011; op = 3'b010; #10;
        if (result !== 4'b0001) $display("AND test failed");

        // OR
        a = 4'b0101; b = 4'b0011; op = 3'b011; #10;
        if (result !== 4'b0111) $display("OR test failed");

        // XOR
        a = 4'b0101; b = 4'b0011; op = 3'b100; #10;
        if (result !== 4'b0110) $display("XOR test failed");

        // Left Shift
        a = 4'b0101; b = 4'b0011; op = 3'b101; #10;
        if (result !== 4'b1010 || overflow !== 1'b0) $display("Left Shift test failed");

        // Right Shift
        a = 4'b0101; b = 4'b0011; op = 3'b110; #10;
        if (result !== 4'b0010 || overflow !== 1'b0) $display("Right Shift test failed");

        // Rotate Left
        a = 4'b0101; b = 4'b0011; op = 3'b111; #10;
        if (result !== 4'b1010) $display("Rotate Left test failed");

        $display("All tests completed");
    end

endmodule
