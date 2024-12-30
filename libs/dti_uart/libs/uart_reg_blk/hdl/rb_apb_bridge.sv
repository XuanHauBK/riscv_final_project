//-----------------------------------------------------------------------------
//    Copyright (C) 2016 by Dolphin Technology
//    All right reserved.
//    
//    Copyright Notification
//    No part may be reproduced except as authorized by written permission.
//    
//    File: ../hdl/rb_apb_bridge.sv
//    Project: dti_uart
//    Author: hautx0
//    Created: Sep 23rd 2024
//    Description:
//       APB Bridge
//    
//    History:
//    Date ------------ By ------------ Change Description
//------------------------------------------------------------------------------
module rb_apb_bridge ( 
  //AMBA APB SIGNALS
  input                 apb_presetn,   // AMBA APB Bus Reset. The APB reset signal is active LOW. This signal is normally connected directly to the system bus reset signal.
  input                 apb_pclk,      // AMBA APB Bus Clock. The rising edge of PCLK times all transfers on the APB.
  input        [11:0]   apb_paddr,     // AMBA APB Peripheral Address Bus. This is the APB address bus. It can be up to 32 bits wide and is driven by the peripheral bus bridge unit.
  input                 apb_psel,      // AMBA APB Peripheral Select. The APB bridge unit generates this signal to each peripheral bus slave. It indicates that the slave device is selected and that a data transfer is required. There is a PSELx signal for each slave.
  input                 apb_penable,   // AMBA APB Enable. Indicates 2nd and subsequent cycles of a transfer.
  input                 apb_pwrite,    // AMBA APB Transfer Direction. This signal indicates an APB write access when HIGH and an APB read access when LOW.
  input        [31:0]   apb_pwdata,    // AMBA APB Write Data. This bus is driven by the peripheral bus bridge unit during write cycles when PWRITE is HIGH. This bus can be up to 32 bits wide.
  output logic          apb_pready,    // Ready. The slave uses this signal to extend an APB transfer.
  output logic [31:0]   apb_prdata,    // AMBA APB Read Data. The selected slave drives this bus during read cycles when PWRITE is LOW. This bus can be up to 32-bits wide.
  output logic          apb_pslverr,   // This signal indicates a transfer failure. APB peripherals are not required to support the PSLVERR pin. This is true for both existing and new APB peripheral designs. Where a peripheral does not include this pin then the appropriate input to the APB bridge is tied LOW.
  //BEGIN GENERIC BUS SIGNALS
  output logic          rd_en,         // Read Strobe. Activates a register read access when HIGH.
  output logic [11:0]   raddr,         // Read Address. Address of the register whose content is to be read.
  input        [31:0]   rdata,         // Read Data. The content of the addressed register is placed on this bus when RSTROBE is HIGH.
  input                 rack,          // Read Acknowledge. Asserted HIGH when RDATA is valid. This can be on the current clock edge if "Read Data Mux Logic Type" is set to ASYNC or the next clock edge if set to SYNC.
  input                 raddrerr,      // Read Address Error. Indicates an attempt to access an unmapped register address for read.
  output logic          wr_en,         // Write Strobe. Activates a register write access when HIGH.
  output logic [11:0]   waddr,         // Write Address. Address of the register whose content is to be written.
  output logic [31:0]   wdata,         // Write Data. The content of the addressed register is placed on this bus and written to the register when WSTROBE is HIGH.
  input                 wack,          // Write Acknowledge. Asserted HIGH when WDATA has been assigned to the appropriate register. This can be on the current clock edge if "Address Decode Logic Type" is set to ASYNC or the next clock edge if set to SYNC.
  input                 waddrerr       // Write Address Error. Indicates an attempt to access an unmapped register address for write.
 //END GENERIC BUS SIGNALS
);

// COMMON MAPPING

  // WRITING
  assign wdata                     = apb_pwdata;
  assign wr_en                     = apb_psel & (apb_pwrite & apb_penable);
  assign waddr                     = apb_paddr;

  // READING
  assign apb_prdata                = (apb_psel == 1'b1 ? rdata[31:0] : 'b0 );
  assign rd_en                     = apb_psel & ((~apb_pwrite) & apb_penable);
  assign raddr                     = apb_paddr;

  // SHARED SIGNALS
  assign apb_pready                = (apb_psel == 1'b1 ? (apb_pwrite & wack) | ((~ apb_pwrite) & rack) : 'b0 );
  assign apb_pslverr               = (apb_psel == 1'b1 ? (apb_pwrite & waddrerr) | ((~ apb_pwrite) & raddrerr) : 'b0 );

endmodule
