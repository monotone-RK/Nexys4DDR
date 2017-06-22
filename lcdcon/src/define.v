/******************************************************************************/
/* Clock Frequency Definition                                                 */
/* Clock Freq = (CLKIN_FREQ) * (CLKFBOUT_MULT) / (CLKOUT_DIVIDE)              */
/******************************************************************************/
`define CLKIN_FREQ         100   // 100 MHz
`define CLKIN_PERIOD       10.0  // 10.0 ns
`define CLKFBOUT_MULT      10    //   
`define CLKOUT_DIVIDE0     20    // 
`define CLKOUT_DIVIDE1     10    // 
`define CLKOUT_DIVIDE2      5    // 

`define SYSTEM_CLOCK (`CLKIN_FREQ * `CLKFBOUT_MULT / `CLKOUT_DIVIDE0)

/******************************************************************************/
/* UART Definition                                                            */
/******************************************************************************/
// 1M baud UART wait count (SERIAL_WCNT = Clock Freq / 1)
`define SERIAL_WCNT `SYSTEM_CLOCK  

/******************************************************************************/
/* LCD Definition                                                             */
/******************************************************************************/
`define DIGIT     4
`define LCD_WIDTH (`DIGIT*4)
