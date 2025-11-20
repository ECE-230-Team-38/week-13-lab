module binary(
    input w,
    input rst,
    input clk,
    output z,
    output [2:0] State_out
);

    wire [2:0] State;
    wire [2:0] Next;

    dff ff0(
        .Default(1'b0),
        .D(Next[0]),
        .clk(clk),
        .reset(rst),
        .Q(State[0])
    );

    dff ff1(
        .Default(1'b0),
        .D(Next[1]),
        .clk(clk),
        .reset(rst),
        .Q(State[1])
    );

    dff ff2(
        .Default(1'b0),
        .D(Next[2]),
        .clk(clk),
        .reset(rst),
        .Q(State[2])
    );

    assign z = (~State[2] & State[1] & ~State[0]) |
               (State[2] & ~State[1] & ~State[0]);

    assign Next[0] = (~w & ~(State[0] ^ State[1])) |
                     ( w & ~State[2] & (~State[0] | ~State[1]));
                     
    assign Next[1] = (State[0] ^ State[1]) |
                     (w & ~State[0] & ~State[2]);
                     
    assign Next[2] = w & (State[2] | (State[1] & State[0]));

    assign State_out = State;

endmodule

