module ledmatrix_convert(
    input   [31:0] data_in,
    output  [63:0] line1, line2, line3, line4, line5, line6, line7, line8
);

    reg [63:0] matrix1, matrix2, matrix3, matrix4;

    always @(*) begin
        case (data_in[31:24])
            8'h30: matrix1 = 64'h3c66666e76663c00;           // 0
            8'h31: matrix1 = 64'h7e1818181c181800;           // 1
            8'h32: matrix1 = 64'h7e060c3060663c00;           // 2
            8'h33: matrix1 = 64'h3c66603860663c00;           // 3
            8'h34: matrix1 = 64'h30307e3234383000;           // 4
            8'h35: matrix1 = 64'h3c6660603e067e00;           // 5
            8'h36: matrix1 = 64'h3c66663e06663c00;           // 6
            8'h37: matrix1 = 64'h1818183030667e00;           // 7
            8'h38: matrix1 = 64'h3c66663c66663c00;           // 8
            8'h39: matrix1 = 64'h3c66607c66663c00;           // 9
            8'h41: matrix1 = 64'h6666667e66663c00;           // A
            8'h42: matrix1 = 64'h3e66663e66663e00;           // B
            8'h43: matrix1 = 64'h3c66060606663c00;           // C
            8'h44: matrix1 = 64'h3e66666666663e00;           // D
            8'h45: matrix1 = 64'h7e06063e06067e00;           // E
            8'h46: matrix1 = 64'h0606063e06067e00;           // F
            8'h47: matrix1 = 64'h3c66760606663c00;           // G
            8'h48: matrix1 = 64'h6666667e66666600;           // H
            8'h49: matrix1 = 64'h3c18181818183c00;           // I
            8'h4a: matrix1 = 64'h1c36363030307800;           // J
            8'h4b: matrix1 = 64'h66361e0e1e366600;           // K
            8'h4c: matrix1 = 64'h7e06060606060600;           // L
            8'h4d: matrix1 = 64'hc6c6c6d6feeec600;           // M
            8'h4e: matrix1 = 64'hc6e6f6decec6c600;           // N
            8'h4f: matrix1 = 64'h3c66666666663c00;           // O
            8'h50: matrix1 = 64'h06063e6666663e00;           // P
            8'h51: matrix1 = 64'h603c766666663c00;           // Q
            8'h52: matrix1 = 64'h66361e3e66663e00;           // R
            8'h53: matrix1 = 64'h3c66603c06663c00;           // S
            8'h54: matrix1 = 64'h18181818185a7e00;           // T
            8'h55: matrix1 = 64'h7c66666666666600;           // U
            8'h56: matrix1 = 64'h183c666666666600;           // V
            8'h57: matrix1 = 64'hc6eefed6c6c6c600;           // W
            8'h58: matrix1 = 64'hc6c66c386cc6c600;           // X
            8'h59: matrix1 = 64'h1818183c66666600;           // Y
            8'h5a: matrix1 = 64'h7e060c1830607e00;           // Z
            8'h80: matrix1 = 64'h183c66c3dbff6600;           // heart
            default: matrix1 = 64'h0000000000000000;
        endcase
    end

    always @(*) begin
        case (data_in[23:16])
            8'h30: matrix2 = 64'h3c66666e76663c00;           // 0
            8'h31: matrix2 = 64'h7e1818181c181800;           // 1
            8'h32: matrix2 = 64'h7e060c3060663c00;           // 2
            8'h33: matrix2 = 64'h3c66603860663c00;           // 3
            8'h34: matrix2 = 64'h30307e3234383000;           // 4
            8'h35: matrix2 = 64'h3c6660603e067e00;           // 5
            8'h36: matrix2 = 64'h3c66663e06663c00;           // 6
            8'h37: matrix2 = 64'h1818183030667e00;           // 7
            8'h38: matrix2 = 64'h3c66663c66663c00;           // 8
            8'h39: matrix2 = 64'h3c66607c66663c00;           // 9
            8'h41: matrix2 = 64'h6666667e66663c00;           // A
            8'h42: matrix2 = 64'h3e66663e66663e00;           // B
            8'h43: matrix2 = 64'h3c66060606663c00;           // C
            8'h44: matrix2 = 64'h3e66666666663e00;           // D
            8'h45: matrix2 = 64'h7e06063e06067e00;           // E
            8'h46: matrix2 = 64'h0606063e06067e00;           // F
            8'h47: matrix2 = 64'h3c66760606663c00;           // G
            8'h48: matrix2 = 64'h6666667e66666600;           // H
            8'h49: matrix2 = 64'h3c18181818183c00;           // I
            8'h4a: matrix2 = 64'h1c36363030307800;           // J
            8'h4b: matrix2 = 64'h66361e0e1e366600;           // K
            8'h4c: matrix2 = 64'h7e06060606060600;           // L
            8'h4d: matrix2 = 64'hc6c6c6d6feeec600;           // M
            8'h4e: matrix2 = 64'hc6e6f6decec6c600;           // N
            8'h4f: matrix2 = 64'h3c66666666663c00;           // O
            8'h50: matrix2 = 64'h06063e6666663e00;           // P
            8'h51: matrix2 = 64'h603c766666663c00;           // Q
            8'h52: matrix2 = 64'h66361e3e66663e00;           // R
            8'h53: matrix2 = 64'h3c66603c06663c00;           // S
            8'h54: matrix2 = 64'h18181818185a7e00;           // T
            8'h55: matrix2 = 64'h7c66666666666600;           // U
            8'h56: matrix2 = 64'h183c666666666600;           // V
            8'h57: matrix2 = 64'hc6eefed6c6c6c600;           // W
            8'h58: matrix2 = 64'hc6c66c386cc6c600;           // X
            8'h59: matrix2 = 64'h1818183c66666600;           // Y
            8'h5a: matrix2 = 64'h7e060c1830607e00;           // Z
            8'h80: matrix2 = 64'h183c66c3dbff6600;           // heart
            default: matrix2 = 64'h0000000000000000;
        endcase
    end

    always @(*) begin
        case (data_in[15:8])
            8'h30: matrix3 = 64'h3c66666e76663c00;           // 0
            8'h31: matrix3 = 64'h7e1818181c181800;           // 1
            8'h32: matrix3 = 64'h7e060c3060663c00;           // 2
            8'h33: matrix3 = 64'h3c66603860663c00;           // 3
            8'h34: matrix3 = 64'h30307e3234383000;           // 4
            8'h35: matrix3 = 64'h3c6660603e067e00;           // 5
            8'h36: matrix3 = 64'h3c66663e06663c00;           // 6
            8'h37: matrix3 = 64'h1818183030667e00;           // 7
            8'h38: matrix3 = 64'h3c66663c66663c00;           // 8
            8'h39: matrix3 = 64'h3c66607c66663c00;           // 9
            8'h41: matrix3 = 64'h6666667e66663c00;           // A
            8'h42: matrix3 = 64'h3e66663e66663e00;           // B
            8'h43: matrix3 = 64'h3c66060606663c00;           // C
            8'h44: matrix3 = 64'h3e66666666663e00;           // D
            8'h45: matrix3 = 64'h7e06063e06067e00;           // E
            8'h46: matrix3 = 64'h0606063e06067e00;           // F
            8'h47: matrix3 = 64'h3c66760606663c00;           // G
            8'h48: matrix3 = 64'h6666667e66666600;           // H
            8'h49: matrix3 = 64'h3c18181818183c00;           // I
            8'h4a: matrix3 = 64'h1c36363030307800;           // J
            8'h4b: matrix3 = 64'h66361e0e1e366600;           // K
            8'h4c: matrix3 = 64'h7e06060606060600;           // L
            8'h4d: matrix3 = 64'hc6c6c6d6feeec600;           // M
            8'h4e: matrix3 = 64'hc6e6f6decec6c600;           // N
            8'h4f: matrix3 = 64'h3c66666666663c00;           // O
            8'h50: matrix3 = 64'h06063e6666663e00;           // P
            8'h51: matrix3 = 64'h603c766666663c00;           // Q
            8'h52: matrix3 = 64'h66361e3e66663e00;           // R
            8'h53: matrix3 = 64'h3c66603c06663c00;           // S
            8'h54: matrix3 = 64'h18181818185a7e00;           // T
            8'h55: matrix3 = 64'h7c66666666666600;           // U
            8'h56: matrix3 = 64'h183c666666666600;           // V
            8'h57: matrix3 = 64'hc6eefed6c6c6c600;           // W
            8'h58: matrix3 = 64'hc6c66c386cc6c600;           // X
            8'h59: matrix3 = 64'h1818183c66666600;           // Y
            8'h5a: matrix3 = 64'h7e060c1830607e00;           // Z
            8'h80: matrix3 = 64'h183c66c3dbff6600;           // heart
            default: matrix3 = 64'h0000000000000000;
        endcase
    end

    always @(*) begin
        case (data_in[7:0])
            8'h30: matrix4 = 64'h3c66666e76663c00;           // 0
            8'h31: matrix4 = 64'h7e1818181c181800;           // 1
            8'h32: matrix4 = 64'h7e060c3060663c00;           // 2
            8'h33: matrix4 = 64'h3c66603860663c00;           // 3
            8'h34: matrix4 = 64'h30307e3234383000;           // 4
            8'h35: matrix4 = 64'h3c6660603e067e00;           // 5
            8'h36: matrix4 = 64'h3c66663e06663c00;           // 6
            8'h37: matrix4 = 64'h1818183030667e00;           // 7
            8'h38: matrix4 = 64'h3c66663c66663c00;           // 8
            8'h39: matrix4 = 64'h3c66607c66663c00;           // 9
            8'h41: matrix4 = 64'h6666667e66663c00;           // A
            8'h42: matrix4 = 64'h3e66663e66663e00;           // B
            8'h43: matrix4 = 64'h3c66060606663c00;           // C
            8'h44: matrix4 = 64'h3e66666666663e00;           // D
            8'h45: matrix4 = 64'h7e06063e06067e00;           // E
            8'h46: matrix4 = 64'h0606063e06067e00;           // F
            8'h47: matrix4 = 64'h3c66760606663c00;           // G
            8'h48: matrix4 = 64'h6666667e66666600;           // H
            8'h49: matrix4 = 64'h3c18181818183c00;           // I
            8'h4a: matrix4 = 64'h1c36363030307800;           // J
            8'h4b: matrix4 = 64'h66361e0e1e366600;           // K
            8'h4c: matrix4 = 64'h7e06060606060600;           // L
            8'h4d: matrix4 = 64'hc6c6c6d6feeec600;           // M
            8'h4e: matrix4 = 64'hc6e6f6decec6c600;           // N
            8'h4f: matrix4 = 64'h3c66666666663c00;           // O
            8'h50: matrix4 = 64'h06063e6666663e00;           // P
            8'h51: matrix4 = 64'h603c766666663c00;           // Q
            8'h52: matrix4 = 64'h66361e3e66663e00;           // R
            8'h53: matrix4 = 64'h3c66603c06663c00;           // S
            8'h54: matrix4 = 64'h18181818185a7e00;           // T
            8'h55: matrix4 = 64'h7c66666666666600;           // U
            8'h56: matrix4 = 64'h183c666666666600;           // V
            8'h57: matrix4 = 64'hc6eefed6c6c6c600;           // W
            8'h58: matrix4 = 64'hc6c66c386cc6c600;           // X
            8'h59: matrix4 = 64'h1818183c66666600;           // Y
            8'h5a: matrix4 = 64'h7e060c1830607e00;           // Z
            8'h80: matrix4 = 64'h183c66c3dbff6600;           // heart
            default: matrix4 = 64'h0000000000000000;
        endcase
    end

    assign line1 = {8'h08, matrix4[7:0],   8'h08, matrix3[7:0],   8'h08, matrix2[7:0],   8'h08, matrix1[7:0]};
    assign line2 = {8'h07, matrix4[15:8],  8'h07, matrix3[15:8],  8'h07, matrix2[15:8],  8'h07, matrix1[15:8]};
    assign line3 = {8'h06, matrix4[23:16], 8'h06, matrix3[23:16], 8'h06, matrix2[23:16], 8'h06, matrix1[23:16]};
    assign line4 = {8'h05, matrix4[31:24], 8'h05, matrix3[31:24], 8'h05, matrix2[31:24], 8'h05, matrix1[31:24]};
    assign line5 = {8'h04, matrix4[39:32], 8'h04, matrix3[39:32], 8'h04, matrix2[39:32], 8'h04, matrix1[39:32]};
    assign line6 = {8'h03, matrix4[47:40], 8'h03, matrix3[47:40], 8'h03, matrix2[47:40], 8'h03, matrix1[47:40]};
    assign line7 = {8'h02, matrix4[55:48], 8'h02, matrix3[55:48], 8'h02, matrix2[55:48], 8'h02, matrix1[55:48]};
    assign line8 = {8'h01, matrix4[63:56], 8'h01, matrix3[63:56], 8'h01, matrix2[63:56], 8'h01, matrix1[63:56]};   

endmodule
