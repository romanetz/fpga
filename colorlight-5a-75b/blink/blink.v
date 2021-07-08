module top(
    input  clk,
    input  btn,
    output led
);

    reg [23:0] counter;

    always @(posedge clk) begin
        counter <= counter + 1;
    end

    assign led = counter[23] && btn;

endmodule
