module clk_divider #(
	parameter   input_clk_freq  = 100_000_000,      // Input clock 100 MHz
    parameter   output_clk_freq = 10                // Output clock 10 Hz = 100ms
)(
    input       clk,
    output      clk_100Hz                           // Output Clock 10 Hz = 100ms        
);
    reg         clk_100Hz_temp = 0;
    integer     count = 0;
    integer     half_cycle = input_clk_freq / output_clk_freq / 2 - 1;
    
    always @(posedge clk) begin
        if (count == half_cycle) begin
            clk_100Hz_temp <= ~clk_100Hz_temp;
            count <= 0;
        end else
            count <= count + 1;
    end

    assign clk_100Hz = clk_100Hz_temp;
    
endmodule

