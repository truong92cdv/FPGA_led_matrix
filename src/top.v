module top #(
    parameter   input_clk_freq  = 100_000_000,      // Input  clock 100 MHz
    parameter   output_clk_freq = 100               // Output clock 100 Hz = 10ms
)(
    input   clk,
    input   rst_n,                                  // Negedge reset
    output  SRCLK,
    output  RCLK,
    output  SER
);

    wire        clk_100Hz;
    wire        en_input;
    wire [63:0] data;

    clk_divider #(
        .input_clk_freq (input_clk_freq),
        .output_clk_freq(output_clk_freq)
    ) clk_100Hz_gen(
        .clk        (clk),
        .clk_100Hz  (clk_100Hz)
    );

    gen_eninput_pulse #(
        .input_clk_freq (input_clk_freq),
        .output_clk_freq(output_clk_freq)
    ) eninput_pulse_gen(
        .clk        (clk),
        .clk_100Hz  (clk_100Hz),
        .en_input   (en_input)
    );

    ledmatrix_gendata ledmatrix(
        .clk_100Hz  (clk_100Hz),
        .rst_n      (rst_n),
        .data       (data)
    );

    max7219_driver #(.N(64)) max7219_controller(
        .clk        (clk),
        .en_input   (en_input),
        .data_in    (data),
        .RDY        (),
        .SRCLK      (SRCLK),
        .RCLK       (RCLK),
        .SER        (SER)      
    );

endmodule
