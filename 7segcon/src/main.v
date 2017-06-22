/******************************************************************************/
/* 7seg Controller Test module                         monotone-RK 2015.05.13 */
/******************************************************************************/
`default_nettype none

`include "define.v"
  
module main(input  wire       CLK_IN, 
            input  wire       RST_X_IN, 
            output wire [6:0] SEG,
            output wire [7:0] AN);
    
  wire CLK, RST_X;
  CLKRSTGEN clkrstgen(CLK_IN, ~RST_X_IN, CLK, RST_X);
    
  reg [19:0] cnt;
  reg [31:0] disp_data;
  always @(posedge CLK) begin
    if (!RST_X) begin
      cnt       <= 0;
      disp_data <= 0;
    end else begin
      cnt <= cnt + 1; 
      if (cnt == 1024) disp_data <= disp_data + 1;
    end
  end

  _7SEGCON _7segcon(CLK, RST_X, disp_data, SEG, AN);

endmodule
`default_nettype wire
