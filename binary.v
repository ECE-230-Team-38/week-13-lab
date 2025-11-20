module binary(
    input w,
    input clk,
    output z,
    output [2:0] State_out
);

    wire [2:0] State;
    wire [2:0] Next;

    dff ff0(
        .D(Next[0]),
        .clk(clk),
        .Q(State[0])
    );

    dff ff1(
        .D(Next[1]),
        .clk(clk),
        .Q(State[1])
    );

    dff ff2(
        .D(Next[2]),
        .clk(clk),
        .Q(State[2])
    );

    assign z = (State[1] & ~State[2]) | (State[2] & ~State[1]);

    assign Next[0] = ~w;
    assign Next[1] = State[0] | (w & ~State[2]);
    assign Next[2] = w;

    assign State_out = State;

endmodule

