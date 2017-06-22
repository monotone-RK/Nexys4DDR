/******************************************************************************/
/* 7seg Controller                                     monotone-RK 2015.05.13 */
/******************************************************************************/
`default_nettype none

`include "define.v"  

module _7SEGCON(input  wire        CLK,
                input  wire        RST_X,
                input  wire [31:0] DISP_DATA,
                output reg  [6:0]  SEG,
                output reg  [7:0]  SEG_AN);
  
  // for SEG_AN
  //////////////////////////////////////////////////////////
  reg [13:0] cnt;
  wire       shift = (cnt == `ONEDIGIT_ILLUM_CYCLES-1);
  always @(posedge CLK) begin
    if (!RST_X) cnt <= 0;
    else        cnt <= (shift) ? 0 : cnt + 1;
  end
  
  always @(posedge CLK) begin
    if (!RST_X) begin
      SEG_AN <= 8'b11111110;
    end else begin
      if (shift) SEG_AN <= {SEG_AN[6:0], SEG_AN[7]};
    end
  end

  // for SEG
  //////////////////////////////////////////////////////////
  reg [3:0] seg;
  always @(*) begin
    seg = 4'b0;
    case (SEG_AN)
      8'b11111110: seg = DISP_DATA[ 3: 0];
      8'b11111101: seg = DISP_DATA[ 7: 4];
      8'b11111011: seg = DISP_DATA[11: 8];
      8'b11110111: seg = DISP_DATA[15:12];
      8'b11101111: seg = DISP_DATA[19:16];
      8'b11011111: seg = DISP_DATA[23:20];
      8'b10111111: seg = DISP_DATA[27:24];
      8'b01111111: seg = DISP_DATA[31:28];
    endcase
  end

  always @(*) begin
    SEG = 7'b111_1111;
    case (seg)
      4'h0: SEG = 7'b100_0000;
      4'h1: SEG = 7'b111_1001;
      4'h2: SEG = 7'b010_0100;
      4'h3: SEG = 7'b011_0000;
      4'h4: SEG = 7'b001_1001;
      4'h5: SEG = 7'b001_0010;
      4'h6: SEG = 7'b000_0010;
      4'h7: SEG = 7'b101_1000;
      4'h8: SEG = 7'b000_0000;
      4'h9: SEG = 7'b001_0000;
      4'ha: SEG = 7'b000_1000;
      4'hb: SEG = 7'b000_0011;
      4'hc: SEG = 7'b100_0110;
      4'hd: SEG = 7'b010_0001;
      4'he: SEG = 7'b000_0110;
      4'hf: SEG = 7'b000_1110;
    endcase
  end
  
endmodule
`default_nettype wire
