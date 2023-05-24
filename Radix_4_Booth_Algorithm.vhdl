module Radix_4_Booth_Algorithm #( parameter N = 16  )
        (
	        input                    clk,
		input                    reset,
		input                    start,
		input       [N-1:0]      Multiplicand,
		input       [N-1:0]      Multiplier,
		output reg  [(N*2)-1 :0] Product,
		output reg               done
	);

reg               q0;
reg  [N-1:0]      Q;
reg  [N-1:0]      A;
reg  [N-1:0]      M;
reg               s;
reg               start_latch;
wire [1:0]        Q1Q0;
wire [(N*2)-1 :0] Preg;
wire [N-1:0]      APluseM;
wire [N-1:0]      AMinusM;
integer           cnt;

assign Q1Q0 = {Q[0],q0};

// ===========================================================================
// Combinatorial Circuits   // Results will get without clock cycles
// ===========================================================================

comp_2s #(.N (N*2) ) c2s1 ( .data_in ({A,Q}), .data_out (Preg) );

// Addition A + M

Kogge_Stone_Adder_16_Bit add1 (
	.cin            (1'b0),
	.input_a        (A),
	.input_b        (M),
	.sum_output     (APluseM),
	.cout           ( )
);

// Subtraction A - M

Kogge_Stone_Adder_16_Bit sub1 (
	.cin            (1'b1),
	.input_a        (A),
	.input_b        ({(M[N-1] ~^ 1'b1), (M[N-2 : 0] ^ {N{1'b1}})}),
	.sum_output     (AMinusM),
	.cout           ( )
);

// ===========================================================================
// Sequential Circuts // Results will get with clock cycles
// ===========================================================================

   always @ (posedge clk or negedge reset)
   begin
	   if (reset == 1'b0) begin
		   q0          <= 'b0;
		   M           <= 'b0;
		   Q           <= 'b0;
		   A           <= 'b0;
		   cnt         <=   0;
		   s           <= 'b0;
		   Product     <= 'b0;
		   done        <= 'b0;
		   start_latch <= 1'b0;
	   end
	   else begin

		   done <= 1'b0;

		   if (start == 1'b1) begin
			   q0          <= 1'b0;
			   M           <= Multiplicand;
			   Q           <= Multiplier;
			   A           <= 'b0;
			   cnt         <= 0;
			   s           <= 1'b0;
			   start_latch <= 1'b1;
		   end

		   if (start_latch == 1'b1) begin

                        if (cnt < N) begin
             	           if ( s == 1'b0) begin
             	        	   s  <= 1'b1;
             	        	   case (Q1Q0)
             	        		   2'b01 : begin
             	        			   A <= APluseM;
             	        		   end
             	        	           2'b10 : begin
             	        		           A <= AMinusM;
             	        	           end
             	        	           default : begin
             	        	           end
             	                   endcase
             	           end
				        
                                if ( s == 1'b1) begin
             	        	   s   <= 1'b0;
             	        	   A   <= {A[N-1],A[N-1 : 1]};
             	        	   Q   <= {A[0],Q[N-1 :1]};
             	        	   q0  <= Q[0];
               	        		   cnt <= cnt + 1;
                                end
                        end
                        else begin
		           start_latch <= 1'b0;
			   done        <= 1'b1;
             	           if (A[N-1] == 1'b1) begin
             	        	   Product  <= Preg;
             	           end
             	           else begin
             	        	   Product  <= {A,Q};
             	           end
                        end
		    end

	   end
   end


endmodule
