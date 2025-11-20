module top(
    input btnC,
    input btnU,
    input sw,
    output [9:0] led
);

    wire oh_z;
    wire bin_z;
    wire Astate, Bstate, Cstate, Dstate, Estate;
    wire [2:0] BinState;

    one_hot u_onehot (
        .w(sw),
        .clk(btnC),
        .rst(btnU),
        .z(oh_z),
        .Astate_out(Astate),
        .Bstate_out(Bstate),
        .Cstate_out(Cstate),
        .Dstate_out(Dstate),
        .Estate_out(Estate)
    );

    binary u_binary (
        .w(sw),
        .clk(btnC),
        .rst(btnU),
        .z(bin_z),
        .State_out(BinState)
    );

    assign led[0] = oh_z;
    assign led[1] = bin_z;
    assign led[2] = Astate;
    assign led[3] = Bstate;
    assign led[4] = Cstate;
    assign led[5] = Dstate;
    assign led[6] = Estate;
    assign led[9:7] = BinState;

endmodule

