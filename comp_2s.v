module comp_2s #( parameter N = 4  )
        (
		input        [N-1:0] data_in,
		output wire  [N-1:0] data_out
	);


assign data_out = (data_in[N-1] == 1'b1)? ((~data_in) + 1'b1) : data_in;

endmodule
