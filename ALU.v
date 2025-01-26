module alu(
    input [3:0] a,      // 4-bit input operand A
    input [3:0] b,      // 4-bit input operand B
    input [2:0] op,     // 3-bit operation select
    output reg [3:0] result, // 4-bit result output
    output reg overflow // Overflow indicator
);

    always @(a, b, op) begin
        case (op)
            3'b000: // Addition
                {overflow, result} = a + b;
            3'b001: // Subtraction
                {overflow, result} = a - b;
            3'b010: // AND
                {overflow, result} = {1'b0, a & b};
            3'b011: // OR
                {overflow, result} = {1'b0, a | b};
            3'b100: // XOR
                {overflow, result} = {1'b0, a ^ b};
            3'b101: // Left Shift
                {overflow, result} = a << 1;
            3'b110: // Right Shift
                {overflow, result} = a >> 1;
            3'b111: // Rotate Left
                {overflow, result} = {a[2:0], a[3]};
            default: {overflow, result} = 5'b0;
        endcase
    end

endmodule
