module Kogge_Stone_Adder_16_Bit (
	input               cin,
	input wire  [15:0]  input_a,
	input wire  [15:0]  input_b,
	output wire [15:0]  sum_output,
	output wire         cout
);

wire [15:0] gka;
wire [14:0] pka;
wire [15:0] o_gk1;
wire [14:0] o_pk1;

wire [14:0] gkb;
wire [12:0] pkb;
wire [15:0] o_gk2;
wire [12:0] o_pk2;

wire [12:0] gkc;
wire [8:0]  pkc;
wire [8:0]  o_pk3;
wire [15:0] o_gk3;

wire [8:0]  gkd;
wire [15:0] o_gk4;
wire [15:0] o_pk4;
wire [15:0] p;
wire [15:0] g;

//===================== STAGE 1 ===========================

assign p           = input_a ^ input_b;
assign g           = input_a & input_b;

assign gka[0]      = cin;
assign gka[15:1]   = g[14:0];
assign pka         = p[14:0];

grey  gc_0  (                  .i_gj (gka[0 ]),  .i_pk (p[0 ]), .i_gk (g[0 ]), .o_g (o_gk1[0 ]) );
black bc_0  ( .i_pj (pka[0 ]), .i_gj (gka[1 ]),  .i_pk (p[1 ]), .i_gk (g[1 ]), .o_g (o_gk1[1 ]), .o_p (o_pk1[0 ]) );
black bc_1  ( .i_pj (pka[1 ]), .i_gj (gka[2 ]),  .i_pk (p[2 ]), .i_gk (g[2 ]), .o_g (o_gk1[2 ]), .o_p (o_pk1[1 ]) );
black bc_2  ( .i_pj (pka[2 ]), .i_gj (gka[3 ]),  .i_pk (p[3 ]), .i_gk (g[3 ]), .o_g (o_gk1[3 ]), .o_p (o_pk1[2 ]) );
black bc_3  ( .i_pj (pka[3 ]), .i_gj (gka[4 ]),  .i_pk (p[4 ]), .i_gk (g[4 ]), .o_g (o_gk1[4 ]), .o_p (o_pk1[3 ]) );
black bc_4  ( .i_pj (pka[4 ]), .i_gj (gka[5 ]),  .i_pk (p[5 ]), .i_gk (g[5 ]), .o_g (o_gk1[5 ]), .o_p (o_pk1[4 ]) );
black bc_5  ( .i_pj (pka[5 ]), .i_gj (gka[6 ]),  .i_pk (p[6 ]), .i_gk (g[6 ]), .o_g (o_gk1[6 ]), .o_p (o_pk1[5 ]) );
black bc_6  ( .i_pj (pka[6 ]), .i_gj (gka[7 ]),  .i_pk (p[7 ]), .i_gk (g[7 ]), .o_g (o_gk1[7 ]), .o_p (o_pk1[6 ]) );
black bc_7  ( .i_pj (pka[7 ]), .i_gj (gka[8 ]),  .i_pk (p[8 ]), .i_gk (g[8 ]), .o_g (o_gk1[8 ]), .o_p (o_pk1[7 ]) );
black bc_8  ( .i_pj (pka[8 ]), .i_gj (gka[9 ]),  .i_pk (p[9 ]), .i_gk (g[9 ]), .o_g (o_gk1[9 ]), .o_p (o_pk1[8 ]) );
black bc_9  ( .i_pj (pka[9 ]), .i_gj (gka[10]),  .i_pk (p[10]), .i_gk (g[10]), .o_g (o_gk1[10]), .o_p (o_pk1[9 ]) );
black bc_10 ( .i_pj (pka[10]), .i_gj (gka[11]),  .i_pk (p[11]), .i_gk (g[11]), .o_g (o_gk1[11]), .o_p (o_pk1[10]) );
black bc_11 ( .i_pj (pka[11]), .i_gj (gka[12]),  .i_pk (p[12]), .i_gk (g[12]), .o_g (o_gk1[12]), .o_p (o_pk1[11]) );
black bc_12 ( .i_pj (pka[12]), .i_gj (gka[13]),  .i_pk (p[13]), .i_gk (g[13]), .o_g (o_gk1[13]), .o_p (o_pk1[12]) );
black bc_13 ( .i_pj (pka[13]), .i_gj (gka[14]),  .i_pk (p[14]), .i_gk (g[14]), .o_g (o_gk1[14]), .o_p (o_pk1[13]) );
black bc_14 ( .i_pj (pka[14]), .i_gj (gka[15]),  .i_pk (p[15]), .i_gk (g[15]), .o_g (o_gk1[15]), .o_p (o_pk1[14]) );

//===================== STAGE 2 ======================

assign gkb[0]    = cin;
assign gkb[14:1] = o_gk1[13:0];
assign pkb       = o_pk1[12:0];
assign o_gk2[0]  = o_gk1[0];

grey  gc_1  (                  .i_gj (gkb[0 ]),  .i_pk (o_pk1[0 ]),  .i_gk (o_gk1[1 ]), .o_g (o_gk2[1 ]) );
grey  gc_2  (                  .i_gj (gkb[1 ]),  .i_pk (o_pk1[1 ]),  .i_gk (o_gk1[2 ]), .o_g (o_gk2[2 ]) );
black bc_31 ( .i_pj (pkb[0 ]), .i_gj (gkb[2 ]),  .i_pk (o_pk1[2 ]),  .i_gk (o_gk1[3 ]), .o_g (o_gk2[3 ]), .o_p (o_pk2[0 ]) );
black bc_32 ( .i_pj (pkb[1 ]), .i_gj (gkb[3 ]),  .i_pk (o_pk1[3 ]),  .i_gk (o_gk1[4 ]), .o_g (o_gk2[4 ]), .o_p (o_pk2[1 ]) );
black bc_33 ( .i_pj (pkb[2 ]), .i_gj (gkb[4 ]),  .i_pk (o_pk1[4 ]),  .i_gk (o_gk1[5 ]), .o_g (o_gk2[5 ]), .o_p (o_pk2[2 ]) );
black bc_34 ( .i_pj (pkb[3 ]), .i_gj (gkb[5 ]),  .i_pk (o_pk1[5 ]),  .i_gk (o_gk1[6 ]), .o_g (o_gk2[6 ]), .o_p (o_pk2[3 ]) );
black bc_35 ( .i_pj (pkb[4 ]), .i_gj (gkb[6 ]),  .i_pk (o_pk1[6 ]),  .i_gk (o_gk1[7 ]), .o_g (o_gk2[7 ]), .o_p (o_pk2[4 ]) );
black bc_36 ( .i_pj (pkb[5 ]), .i_gj (gkb[7 ]),  .i_pk (o_pk1[7 ]),  .i_gk (o_gk1[8 ]), .o_g (o_gk2[8 ]), .o_p (o_pk2[5 ]) );
black bc_37 ( .i_pj (pkb[6 ]), .i_gj (gkb[8 ]),  .i_pk (o_pk1[8 ]),  .i_gk (o_gk1[9 ]), .o_g (o_gk2[9 ]), .o_p (o_pk2[6 ]) );
black bc_38 ( .i_pj (pkb[7 ]), .i_gj (gkb[9 ]),  .i_pk (o_pk1[9 ]),  .i_gk (o_gk1[10]), .o_g (o_gk2[10]), .o_p (o_pk2[7 ]) );
black bc_39 ( .i_pj (pkb[8 ]), .i_gj (gkb[10]),  .i_pk (o_pk1[10]),  .i_gk (o_gk1[11]), .o_g (o_gk2[11]), .o_p (o_pk2[8 ]) );
black bc_40 ( .i_pj (pkb[9 ]), .i_gj (gkb[11]),  .i_pk (o_pk1[11]),  .i_gk (o_gk1[12]), .o_g (o_gk2[12]), .o_p (o_pk2[9 ]) );
black bc_41 ( .i_pj (pkb[10]), .i_gj (gkb[12]),  .i_pk (o_pk1[12]),  .i_gk (o_gk1[13]), .o_g (o_gk2[13]), .o_p (o_pk2[10]) );
black bc_42 ( .i_pj (pkb[11]), .i_gj (gkb[13]),  .i_pk (o_pk1[13]),  .i_gk (o_gk1[14]), .o_g (o_gk2[14]), .o_p (o_pk2[11]) );
black bc_43 ( .i_pj (pkb[12]), .i_gj (gkb[14]),  .i_pk (o_pk1[14]),  .i_gk (o_gk1[15]), .o_g (o_gk2[15]), .o_p (o_pk2[12]) );

//===================== STAGE 3 ======================

assign gkc[0]     = cin;
assign gkc[12:1]  = o_gk2[11:0];
assign pkc        = o_pk2[8:0];
assign o_gk3[2:0] = o_gk2[2:0];

grey  gc_3  (                  .i_gj (gkc[0 ]), .i_pk (o_pk2[0 ]), .i_gk (o_gk2[3 ]), .o_g (o_gk3[3 ]) );
grey  gc_4  (                  .i_gj (gkc[1 ]), .i_pk (o_pk2[1 ]), .i_gk (o_gk2[4 ]), .o_g (o_gk3[4 ]) );
grey  gc_5  (                  .i_gj (gkc[2 ]), .i_pk (o_pk2[2 ]), .i_gk (o_gk2[5 ]), .o_g (o_gk3[5 ]) );
grey  gc_6  (                  .i_gj (gkc[3 ]), .i_pk (o_pk2[3 ]), .i_gk (o_gk2[6 ]), .o_g (o_gk3[6 ]) );
black bc_60 ( .i_pj (pkc[0 ]), .i_gj (gkc[4 ]), .i_pk (o_pk2[4 ]), .i_gk (o_gk2[7 ]), .o_g (o_gk3[7 ]), .o_p (o_pk3[0 ]) );
black bc_61 ( .i_pj (pkc[1 ]), .i_gj (gkc[5 ]), .i_pk (o_pk2[5 ]), .i_gk (o_gk2[8 ]), .o_g (o_gk3[8 ]), .o_p (o_pk3[1 ]) );
black bc_62 ( .i_pj (pkc[2 ]), .i_gj (gkc[6 ]), .i_pk (o_pk2[6 ]), .i_gk (o_gk2[9 ]), .o_g (o_gk3[9 ]), .o_p (o_pk3[2 ]) );
black bc_63 ( .i_pj (pkc[3 ]), .i_gj (gkc[7 ]), .i_pk (o_pk2[7 ]), .i_gk (o_gk2[10]), .o_g (o_gk3[10]), .o_p (o_pk3[3 ]) );
black bc_64 ( .i_pj (pkc[4 ]), .i_gj (gkc[8 ]), .i_pk (o_pk2[8 ]), .i_gk (o_gk2[11]), .o_g (o_gk3[11]), .o_p (o_pk3[4 ]) );
black bc_65 ( .i_pj (pkc[5 ]), .i_gj (gkc[9 ]), .i_pk (o_pk2[9 ]), .i_gk (o_gk2[12]), .o_g (o_gk3[12]), .o_p (o_pk3[5 ]) );
black bc_66 ( .i_pj (pkc[6 ]), .i_gj (gkc[10]), .i_pk (o_pk2[10]), .i_gk (o_gk2[13]), .o_g (o_gk3[13]), .o_p (o_pk3[6 ]) );
black bc_67 ( .i_pj (pkc[7 ]), .i_gj (gkc[11]), .i_pk (o_pk2[11]), .i_gk (o_gk2[14]), .o_g (o_gk3[14]), .o_p (o_pk3[7 ]) );
black bc_68 ( .i_pj (pkc[8 ]), .i_gj (gkc[12]), .i_pk (o_pk2[12]), .i_gk (o_gk2[15]), .o_g (o_gk3[15]), .o_p (o_pk3[8 ]) );

//===================== STAGE 4 ======================

assign gkd[0]      = cin;
assign gkd[8:1]    = o_gk3[7:0];
assign o_gk4[6:0]  = o_gk3[6:0];
assign o_pk4       = p;

grey gc_15 ( .i_gj (gkd[0 ]), .i_pk (o_pk3[0 ]), .i_gk (o_gk3[ 7]), .o_g (o_gk4[ 7]) );
grey gc_16 ( .i_gj (gkd[1 ]), .i_pk (o_pk3[1 ]), .i_gk (o_gk3[ 8]), .o_g (o_gk4[ 8]) );
grey gc_17 ( .i_gj (gkd[2 ]), .i_pk (o_pk3[2 ]), .i_gk (o_gk3[ 9]), .o_g (o_gk4[ 9]) );
grey gc_18 ( .i_gj (gkd[3 ]), .i_pk (o_pk3[3 ]), .i_gk (o_gk3[10]), .o_g (o_gk4[10]) );
grey gc_19 ( .i_gj (gkd[4 ]), .i_pk (o_pk3[4 ]), .i_gk (o_gk3[11]), .o_g (o_gk4[11]) );
grey gc_20 ( .i_gj (gkd[5 ]), .i_pk (o_pk3[5 ]), .i_gk (o_gk3[12]), .o_g (o_gk4[12]) );
grey gc_21 ( .i_gj (gkd[6 ]), .i_pk (o_pk3[6 ]), .i_gk (o_gk3[13]), .o_g (o_gk4[13]) );
grey gc_22 ( .i_gj (gkd[7 ]), .i_pk (o_pk3[7 ]), .i_gk (o_gk3[14]), .o_g (o_gk4[14]) );
grey gc_23 ( .i_gj (gkd[8 ]), .i_pk (o_pk3[8 ]), .i_gk (o_gk3[15]), .o_g (o_gk4[15]) );

Sum_Logic SLG (
	.cin              (cin),
	.gx               (o_gk4),
	.px               (o_pk4),
	.sum_output       (sum_output),
	.cout             (cout)
);
endmodule
