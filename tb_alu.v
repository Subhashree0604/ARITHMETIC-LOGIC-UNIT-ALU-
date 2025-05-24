`timescale 1ns / 1ps

module tb_ALU;

reg [3:0] A;
reg [3:0] B;
reg [2:0] ALU_Sel;
wire [3:0] ALU_Out;

ALU uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out)
);

initial begin
    $display("Starting ALU Test...");
    
    // Test Addition
    A = 4'b0011; B = 4'b0001; ALU_Sel = 3'b000; #10;
    $display("ADD: %b + %b = %b", A, B, ALU_Out);

    // Test Subtraction
    A = 4'b0101; B = 4'b0001; ALU_Sel = 3'b001; #10;
    $display("SUB: %b - %b = %b", A, B, ALU_Out);

    // Test AND
    A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b010; #10;
    $display("AND: %b & %b = %b", A, B, ALU_Out);

    // Test OR
    A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b011; #10;
    $display("OR: %b | %b = %b", A, B, ALU_Out);

    // Test NOT
    A = 4'b1100; B = 4'b0000; ALU_Sel = 3'b100; #10;
    $display("NOT: ~%b = %b", A, ALU_Out);

    $display("ALU Test Complete.");
    $finish;
end

endmodule

