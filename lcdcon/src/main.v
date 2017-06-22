/******************************************************************************/
/* LCD Controller Test module                          monotone-RK 2014.12.01 */
/******************************************************************************/
`default_nettype none

`include "define.v"
  
module main(input  wire      CLK_IN, 
            input  wire      RST_X_IN, 
            output wire      TXD);
    
  wire CLK, RST_X;
  CLKRSTGEN clkrstgen(CLK_IN, ~RST_X_IN, CLK, RST_X);
    
  reg        we;
  reg [25:0] cnt;
  always @(posedge CLK) begin
    if (!RST_X) begin
      cnt <= 0;
    end else begin
      cnt <= cnt + 1; 
      we  <= (cnt[25:0] == 0);
    end
  end

  reg [`LCD_WIDTH-1:0] send_data;
  always @(posedge CLK) begin
    if (!RST_X) begin
      send_data <= 0;
    end else begin
      if (we) send_data <= send_data + 1;
    end
  end
    
  wire ready;
  LCDCON #(.DIGIT(`DIGIT))
  lcdcon(CLK, RST_X, send_data, we, TXD, ready);

endmodule
`default_nettype wire
