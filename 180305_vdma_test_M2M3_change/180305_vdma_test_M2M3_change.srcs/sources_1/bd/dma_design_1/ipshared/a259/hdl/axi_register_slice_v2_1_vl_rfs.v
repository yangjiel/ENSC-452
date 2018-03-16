//  (c) Copyright 2017 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module axi_register_slice_v2_1_14_tdm_sample (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  input  wire                    slow_clk,
  input  wire                    fast_clk,
  output wire                    sample_cycle
);

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg                slow_clk_div2 = 1'b0;
reg                posedge_finder_first;
reg                posedge_finder_second;
wire               first_edge;
wire               second_edge;
reg                sample_cycle_d;
(* shreg_extract = "no" *) reg                sample_cycle_r;


////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
    always @(posedge slow_clk) begin 
      slow_clk_div2 <= ~slow_clk_div2;
    end

    // Find matching rising edges by clocking slow_clk_div2 onto faster clock
    always @(posedge fast_clk) begin 
      posedge_finder_first <= slow_clk_div2;
    end
    always @(posedge fast_clk) begin 
      posedge_finder_second <= ~slow_clk_div2;
    end

    assign first_edge = slow_clk_div2 & ~posedge_finder_first;
    assign second_edge = ~slow_clk_div2 & ~posedge_finder_second;

    always @(*) begin 
      sample_cycle_d = first_edge | second_edge;
    end
   
    always @(posedge fast_clk) begin 
      sample_cycle_r <= sample_cycle_d;
    end
    
    assign sample_cycle = sample_cycle_r;

endmodule // tdm_sample

`default_nettype wire


// -- (c) Copyright 2010 - 2017 Xilinx, Inc. All rights reserved.
// --
// -- This file contains confidential and proprietary information
// -- of Xilinx, Inc. and is protected under U.S. and 
// -- international copyright and other intellectual property
// -- laws.
// --
// -- DISCLAIMER
// -- This disclaimer is not a license and does not grant any
// -- rights to the materials distributed herewith. Except as
// -- otherwise provided in a valid license issued to you by
// -- Xilinx, and to the maximum extent permitted by applicable
// -- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// -- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// -- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// -- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// -- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// -- (2) Xilinx shall not be liable (whether in contract or tort,
// -- including negligence, or under any other theory of
// -- liability) for any loss or damage of any kind or nature
// -- related to, arising under or in connection with these
// -- materials, including for any direct, or any indirect,
// -- special, incidental, or consequential loss or damage
// -- (including loss of data, profits, goodwill, or any type of
// -- loss or damage suffered as a result of any action brought
// -- by a third party) even if such damage or loss was
// -- reasonably foreseeable or Xilinx had been advised of the
// -- possibility of the same.
// --
// -- CRITICAL APPLICATIONS
// -- Xilinx products are not designed or intended to be fail-
// -- safe, or for use in any application requiring fail-safe
// -- performance, such as life-support or safety devices or
// -- systems, Class III medical devices, nuclear facilities,
// -- applications related to the deployment of airbags, or any
// -- other applications that could lead to death, personal
// -- injury, or severe property or environmental damage
// -- (individually and collectively, "Critical
// -- Applications"). Customer assumes the sole risk and
// -- liability of any use of Xilinx products in Critical
// -- Applications, subject only to applicable laws and
// -- regulations governing limitations on product liability.
// --
// -- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// -- PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
//
// Register Slice
//   Generic single-channel AXI pipeline register on forward and/or reverse signal path
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axic_register_slice
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *) 
module axi_register_slice_v2_1_14_srl_rtl #
  (
   parameter         C_A_WIDTH = 2          // Address Width (>= 1)
   )
  (
   input  wire                 clk, // Clock
   input  wire [C_A_WIDTH-1:0] a,   // Address
   input  wire                 ce,  // Clock Enable
   input  wire                 d,   // Input Data
   output wire                 q    // Output Data
   );

  localparam integer P_SRLDEPTH = 2**C_A_WIDTH;
  
    reg [P_SRLDEPTH-1:0] shift_reg = {P_SRLDEPTH{1'b0}};
    always @(posedge clk)
      if (ce)
        shift_reg <= {shift_reg[P_SRLDEPTH-2:0], d};
    assign q = shift_reg[a];

endmodule  // srl_rtl

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *) 
module axi_register_slice_v2_1_14_axic_register_slice #
  (
   parameter C_FAMILY     = "virtex6",
   parameter C_DATA_WIDTH = 32,
   parameter C_REG_CONFIG = 32'h00000000
   // C_REG_CONFIG:
   //   0 => BYPASS    = The channel is just wired through the module.
   //   1 => FWD_REV   = Both FWD and REV (fully-registered)
   //   2 => FWD       = The master VALID and payload signals are registrated. 
   //   3 => REV       = The slave ready signal is registrated
   //   4 => RESERVED (all outputs driven to 0).
   //   5 => RESERVED (all outputs driven to 0).
   //   6 => INPUTS    = Slave and Master side inputs are registrated.
   //   7 => LIGHT_WT  = 1-stage pipeline register with bubble cycle, both FWD and REV pipelining
   //   9 => SI/MI_REG = Source side completely registered (including S_VALID input)
   )
  (
   // System Signals
   input wire ACLK,
   input wire ARESET,

   // Slave side
   input  wire [C_DATA_WIDTH-1:0] S_PAYLOAD_DATA,
   input  wire S_VALID,
   output wire S_READY,

   // Master side
   output  wire [C_DATA_WIDTH-1:0] M_PAYLOAD_DATA,
   output wire M_VALID,
   input  wire M_READY
   );

  (* use_clock_enable = "yes" *)

  generate
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 0
  // Bypass mode
  //
  ////////////////////////////////////////////////////////////////////
    if (C_REG_CONFIG == 32'h00000000) begin
      assign M_PAYLOAD_DATA = S_PAYLOAD_DATA;
      assign M_VALID        = S_VALID;
      assign S_READY        = M_READY;      
    end
    
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 9
  // Source (SI) interface completely registered
  //
  ////////////////////////////////////////////////////////////////////
      
    else if (C_REG_CONFIG == 32'h00000009) begin
      reg [C_DATA_WIDTH-1:0] s_payload_d;
      wire [C_DATA_WIDTH-1:0] srl_out;
      reg s_ready_i = 1'b0;
      reg m_valid_i = 1'b0;
      reg payld_sel;
      reg push;
      reg pop;
      wire s_handshake_d;
      (* max_fanout = 66 *) reg s_valid_d;
      (* max_fanout = 66 *) reg s_ready_d = 1'b0;
      (* max_fanout = 66 *) reg s_ready_reg = 1'b0;
      (* max_fanout = 66 *) reg [2:0] fifoaddr = 3'b110;
      
      reg areset_d = 1'b0;
      always @(posedge ACLK) begin
        areset_d <= ARESET;
      end
      
      assign s_handshake_d = s_valid_d & s_ready_d;

      always @ * begin
        case (fifoaddr)
          3'b111: begin  // EMPTY: No payload in SRL; pre-assert m_ready
            s_ready_i = 1'b1;
            payld_sel = 1'b0;
            pop = 1'b0;
            case ({s_handshake_d, M_READY}) 
              2'b00, 2'b01: begin  // Idle
                m_valid_i = 1'b0;
                push = 1'b0;
              end
              2'b10: begin  // Payload received
                m_valid_i = 1'b1;
                push = 1'b1;
              end
              2'b11: begin  // Payload received and read out combinatorially
                m_valid_i = 1'b1;
                push = 1'b0;
              end
            endcase
          end

          3'b000: begin  // 1 payload item in SRL
            m_valid_i = 1'b1;
            payld_sel = 1'b1;
            case ({s_handshake_d, M_READY}) 
              2'b00: begin  // Idle
                s_ready_i = 1'b1;
                push = 1'b0;
                pop = 1'b0;
              end
              2'b01: begin  // Pop
                s_ready_i = 1'b1;
                push = 1'b0;
                pop = 1'b1;
              end
              2'b10: begin  // Push
                s_ready_i = 1'b0;  // Doesn't de-assert on SI until next cycle
                push = 1'b1;
                pop = 1'b0;
              end
              2'b11: begin  // Push and Pop
                s_ready_i = 1'b1;
                push = 1'b1;
                pop = 1'b1;
              end
            endcase
          end

          3'b001: begin  // 2 payload items in SRL
            m_valid_i = 1'b1;
            payld_sel = 1'b1;
            case ({s_handshake_d, M_READY}) 
              2'b00: begin  // Idle
                s_ready_i = 1'b0;
                push = 1'b0;
                pop = 1'b0;
              end
              2'b01: begin  // Pop
                s_ready_i = 1'b1;
                push = 1'b0;
                pop = 1'b1;
              end
              2'b10: begin  // Push (Handshake completes on SI while pushing 2nd item into SRL)
                s_ready_i = 1'b0;
                push = 1'b1;
                pop = 1'b0;
              end
              2'b11: begin  // Push and Pop
                s_ready_i = 1'b0;
                push = 1'b1;
                pop = 1'b1;
              end
            endcase
          end

          3'b010: begin  // 3 payload items in SRL
            m_valid_i = 1'b1;
            s_ready_i = 1'b0;
            payld_sel = 1'b1;
            push = 1'b0;
            if (M_READY) begin  // Handshake cannot complete on SI
              pop = 1'b1;
            end else begin
              pop = 1'b0;
            end
          end

          default: begin  // RESET state (fifoaddr = 3'b110)
            m_valid_i = 1'b0;
            s_ready_i = 1'b0;
            payld_sel = 1'b0;
            push = 1'b1;  // Advance to Empty state
            pop = 1'b0;
          end  // RESET
        endcase
      end

      always @(posedge ACLK) begin
        if (areset_d) begin
          fifoaddr <= 3'b110;
          s_ready_reg <= 1'b0;
          s_ready_d <= 1'b0;
        end else begin
          s_ready_reg <= s_ready_i;
          s_ready_d <= s_ready_reg;
          if (push & ~pop) begin
            fifoaddr <= fifoaddr + 1;
          end else if (~push & pop) begin
            fifoaddr <= fifoaddr - 1;
          end
        end
      end

      always @(posedge ACLK) begin
        s_valid_d <= S_VALID;
        s_payload_d <= S_PAYLOAD_DATA;
      end

      assign S_READY = s_ready_reg;
      assign M_VALID = m_valid_i;
      assign M_PAYLOAD_DATA = payld_sel ? srl_out : s_payload_d;

    //---------------------------------------------------------------------------
    // Instantiate SRLs
    //---------------------------------------------------------------------------
      genvar i;
      for (i=0;i<C_DATA_WIDTH;i=i+1) begin : gen_srls
        axi_register_slice_v2_1_14_srl_rtl #
          (
           .C_A_WIDTH (2)
          )
          srl_nx1
          (
           .clk (ACLK),
           .a   (fifoaddr[1:0]),
           .ce  (push),
           .d   (s_payload_d[i]),
           .q   (srl_out[i])
          );
      end      
    end 
        
        
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 1 (or 8)
  // Both FWD and REV mode
  //
  ////////////////////////////////////////////////////////////////////
    else if ((C_REG_CONFIG == 32'h00000001) || (C_REG_CONFIG == 32'h00000008)) begin
      reg [C_DATA_WIDTH-1:0] m_payload_i;
      reg [C_DATA_WIDTH-1:0] skid_buffer;
      reg                    s_ready_i = 1'b0; 
      reg                    m_valid_i = 1'b0;

      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;
      assign M_PAYLOAD_DATA = m_payload_i;

      reg [1:0] aresetn_d = 2'b00; // Reset delay shifter
      always @(posedge ACLK) begin
        if (ARESET) begin
          aresetn_d <= 2'b00;
        end else begin
          aresetn_d <= {aresetn_d[0], ~ARESET};
        end
      end
      
      always @(posedge ACLK) begin
        if (~aresetn_d[0]) begin
          s_ready_i <= 1'b0;
        end else begin
          s_ready_i <= M_READY | ~m_valid_i | (s_ready_i & ~S_VALID);
        end
        
        if (~aresetn_d[1]) begin
          m_valid_i <= 1'b0;
        end else begin
          m_valid_i <= S_VALID | ~s_ready_i | (m_valid_i & ~M_READY);
        end
        
        if (M_READY | ~m_valid_i) begin
          m_payload_i <= s_ready_i ? S_PAYLOAD_DATA : skid_buffer;
        end
        
        if (s_ready_i) begin
          skid_buffer <= S_PAYLOAD_DATA;
        end
      end

    end // if (C_REG_CONFIG == 1)
    
    
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 2
  // Only FWD mode
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000002)
    begin
      reg [C_DATA_WIDTH-1:0] storage_data;
      wire                   s_ready_i; //local signal of output
      reg                    m_valid_i = 1'b0; //local signal of output

      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;

      reg aresetn_d = 1'b0; // Reset delay register
      always @(posedge ACLK) begin
        if (ARESET) begin
          aresetn_d <= 1'b0;
        end else begin
          aresetn_d <= ~ARESET;
        end
      end
      
      // Save payload data whenever we have a transaction on the slave side
      always @(posedge ACLK) 
      begin
        if (S_VALID & s_ready_i)
          storage_data <= S_PAYLOAD_DATA;
      end

      assign M_PAYLOAD_DATA = storage_data;
      
      // M_Valid set to high when we have a completed transfer on slave side
      // Is removed on a M_READY except if we have a new transfer on the slave side
      always @(posedge ACLK) 
      begin
        if (~aresetn_d) 
          m_valid_i <= 1'b0;
        else
          if (S_VALID) // Always set m_valid_i when slave side is valid
            m_valid_i <= 1'b1;
          else
            if (M_READY) // Clear (or keep) when no slave side is valid but master side is ready
              m_valid_i <= 1'b0;
      end // always @ (posedge ACLK)
      
      // Slave Ready is either when Master side drives M_Ready or we have space in our storage data
      assign s_ready_i = (M_READY | ~m_valid_i) & aresetn_d;

    end // if (C_REG_CONFIG == 2)
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 3
  // Only REV mode
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000003)
    begin
      reg [C_DATA_WIDTH-1:0] storage_data;
      reg                    s_ready_i = 1'b0; //local signal of output
      reg                    has_valid_storage_i;
      reg                    has_valid_storage;

      reg [1:0] aresetn_d = 2'b00; // Reset delay register
      always @(posedge ACLK) begin
        if (ARESET) begin
          aresetn_d <= 2'b00;
        end else begin
          aresetn_d <= {aresetn_d[0], ~ARESET};
        end
      end
      
      // Save payload data whenever we have a transaction on the slave side
      always @(posedge ACLK) 
      begin
        if (S_VALID & s_ready_i)
          storage_data <= S_PAYLOAD_DATA;
      end

      assign M_PAYLOAD_DATA = has_valid_storage?storage_data:S_PAYLOAD_DATA;

      // Need to determine when we need to save a payload
      // Need a combinatorial signals since it will also effect S_READY
      always @ *
      begin
        // Set the value if we have a slave transaction but master side is not ready
        if (S_VALID & s_ready_i & ~M_READY)
          has_valid_storage_i = 1'b1;
        
        // Clear the value if it's set and Master side completes the transaction but we don't have a new slave side 
        // transaction 
        else if ( (has_valid_storage == 1) && (M_READY == 1) && ( (S_VALID == 0) || (s_ready_i == 0)))
          has_valid_storage_i = 1'b0;
        else
          has_valid_storage_i = has_valid_storage;
      end // always @ *

      always @(posedge ACLK) 
      begin
        if (~aresetn_d[0]) 
          has_valid_storage <= 1'b0;
        else
          has_valid_storage <= has_valid_storage_i;
      end

      // S_READY is either clocked M_READY or that we have room in local storage
      always @(posedge ACLK) 
      begin
        if (~aresetn_d[0]) 
          s_ready_i <= 1'b0;
        else
          s_ready_i <= M_READY | ~has_valid_storage_i;
      end

      // assign local signal to its output signal
      assign S_READY = s_ready_i;

      // M_READY is either combinatorial S_READY or that we have valid data in local storage
      assign M_VALID = (S_VALID | has_valid_storage) & aresetn_d[1];
      
    end // if (C_REG_CONFIG == 3)
    
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 4 or 5 is NO LONGER SUPPORTED
  //
  ////////////////////////////////////////////////////////////////////
    else if ((C_REG_CONFIG == 32'h00000004) || (C_REG_CONFIG == 32'h00000005))
    begin
// synthesis translate_off
      initial begin  
        $display ("ERROR: For axi_register_slice, C_REG_CONFIG = 4 or 5 is RESERVED.");
      end
// synthesis translate_on
      assign M_PAYLOAD_DATA = 0;
      assign M_VALID        = 1'b0;
      assign S_READY        = 1'b0;    
    end  

  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 6
  // INPUTS mode
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000006)
    begin
      localparam [1:0] 
        ZERO = 2'b00,
        ONE  = 2'b01,
        TWO  = 2'b11;
      reg [1:0] state = ZERO;
      reg [1:0] next_state;

      reg [C_DATA_WIDTH-1:0] storage_data1;
      reg [C_DATA_WIDTH-1:0] storage_data2;
      reg                    s_valid_d = 1'b0;
      reg                    s_ready_d = 1'b0;
      reg                    m_ready_d = 1'b0;
      reg                    m_valid_d = 1'b0;
      reg                    load_s2;
      reg                    sel_s2;
      wire                   new_access;
      wire                   access_done;
      wire                   s_ready_i; //local signal of output
      reg                    s_ready_ii;
      reg                    m_valid_i; //local signal of output
      
      reg [1:0] aresetn_d = 2'b00; // Reset delay register
      always @(posedge ACLK) begin
        if (ARESET) begin
          aresetn_d <= 2'b00;
        end else begin
          aresetn_d <= {aresetn_d[0], ~ARESET};
        end
      end
      
      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;
      assign s_ready_i = s_ready_ii & aresetn_d[1];

      // Registrate input control signals
      always @(posedge ACLK) 
      begin
        if (~aresetn_d[0]) begin          
          s_valid_d <= 1'b0;
          s_ready_d <= 1'b0;
          m_ready_d <= 1'b0;
        end else begin
          s_valid_d <= S_VALID;
          s_ready_d <= s_ready_i;
          m_ready_d <= M_READY;
        end
      end // always @ (posedge ACLK)

      // Load storage1 with slave side payload data when slave side ready is high
      always @(posedge ACLK) 
      begin
        if (s_ready_i)
          storage_data1 <= S_PAYLOAD_DATA;          
      end

      // Load storage2 with storage data 
      always @(posedge ACLK) 
      begin
        if (load_s2)
          storage_data2 <= storage_data1;
      end

      always @(posedge ACLK) 
      begin
        if (~aresetn_d[0]) 
          m_valid_d <= 1'b0;
        else 
          m_valid_d <= m_valid_i;
      end

      // Local help signals
      assign new_access  = s_ready_d & s_valid_d;
      assign access_done = m_ready_d & m_valid_d;


      // State Machine for handling output signals
      always @*
      begin
        next_state = state; // Stay in the same state unless we need to move to another state
        load_s2   = 0;
        sel_s2    = 0;
        m_valid_i = 0;
        s_ready_ii = 0;
        case (state)
            // No transaction stored locally
            ZERO: begin
              load_s2   = 0;
              sel_s2    = 0;
              m_valid_i = 0;
              s_ready_ii = 1;
              if (new_access) begin
                next_state = ONE; // Got one so move to ONE
                load_s2   = 1;
                m_valid_i = 0;
              end
              else begin
                next_state = next_state;
                load_s2   = load_s2;
                m_valid_i = m_valid_i;
              end

            end // case: ZERO

            // One transaction stored locally
            ONE: begin
              load_s2   = 0;
              sel_s2    = 1;
              m_valid_i = 1;
              s_ready_ii = 1;
              if (~new_access & access_done) begin
                next_state = ZERO; // Read out one so move to ZERO
                m_valid_i = 0;                      
              end
              else if (new_access & ~access_done) begin
                next_state = TWO;  // Got another one so move to TWO
                s_ready_ii = 0;
              end
              else if (new_access & access_done) begin
                load_s2   = 1;
                sel_s2    = 0;
              end
              else begin
                load_s2   = load_s2;
                sel_s2    = sel_s2;
              end


            end // case: ONE

            // TWO transaction stored locally
            TWO: begin
              load_s2   = 0;
              sel_s2    = 1;
              m_valid_i = 1;
              s_ready_ii = 0;
              if (access_done) begin 
                next_state = ONE; // Read out one so move to ONE
                s_ready_ii  = 1;
                load_s2    = 1;
                sel_s2     = 0;
              end
              else begin
                next_state = next_state;
                s_ready_ii  = s_ready_ii;
                load_s2    = load_s2;
                sel_s2     = sel_s2;
              end
            end // case: TWO
        endcase // case (state)
      end // always @ *


      // State Machine for handling output signals
      always @(posedge ACLK) 
      begin
        if (~aresetn_d[0]) 
          state <= ZERO;
        else
          state <= next_state; // Stay in the same state unless we need to move to another state
      end
      
      // Master Payload mux
      assign M_PAYLOAD_DATA = sel_s2?storage_data2:storage_data1;

    end // if (C_REG_CONFIG == 6)
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 7
  // Light-weight mode.
  // 1-stage pipeline register with bubble cycle, both FWD and REV pipelining
  // Operates same as 1-deep FIFO
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000007) begin
      reg [C_DATA_WIDTH-1:0] m_payload_i;
      reg                    s_ready_i = 1'b0; 
      reg                    m_valid_i = 1'b0;

      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;
      assign M_PAYLOAD_DATA = m_payload_i;

      reg [1:0] aresetn_d = 2'b00; // Reset delay shifter
      always @(posedge ACLK) begin
        if (ARESET) begin
          aresetn_d <= 2'b00;
        end else begin
          aresetn_d <= {aresetn_d[0], ~ARESET};
        end
      end
      
      always @(posedge ACLK) begin
        if (~aresetn_d[0]) begin
          s_ready_i <= 1'b0;
        end else if (~aresetn_d[1]) begin
          s_ready_i <= 1'b1;
        end else begin
          s_ready_i <= m_valid_i ? M_READY : ~S_VALID;
        end
        
        if (~aresetn_d[1]) begin
          m_valid_i <= 1'b0;
        end else begin
          m_valid_i <= s_ready_i ? S_VALID : ~M_READY;
        end
        
        if (~m_valid_i) begin
          m_payload_i <= S_PAYLOAD_DATA;
        end
      end
      
    end // if (C_REG_CONFIG == 7)
    
    else begin : default_case
      // Passthrough
      assign M_PAYLOAD_DATA = S_PAYLOAD_DATA;
      assign M_VALID        = S_VALID;
      assign S_READY        = M_READY;      
    end

  endgenerate
endmodule // axic_register_slice


// -- (c) Copyright 2010 - 2017 Xilinx, Inc. All rights reserved.
// --
// -- This file contains confidential and proprietary information
// -- of Xilinx, Inc. and is protected under U.S. and 
// -- international copyright and other intellectual property
// -- laws.
// --
// -- DISCLAIMER
// -- This disclaimer is not a license and does not grant any
// -- rights to the materials distributed herewith. Except as
// -- otherwise provided in a valid license issued to you by
// -- Xilinx, and to the maximum extent permitted by applicable
// -- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// -- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// -- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// -- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// -- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// -- (2) Xilinx shall not be liable (whether in contract or tort,
// -- including negligence, or under any other theory of
// -- liability) for any loss or damage of any kind or nature
// -- related to, arising under or in connection with these
// -- materials, including for any direct, or any indirect,
// -- special, incidental, or consequential loss or damage
// -- (including loss of data, profits, goodwill, or any type of
// -- loss or damage suffered as a result of any action brought
// -- by a third party) even if such damage or loss was
// -- reasonably foreseeable or Xilinx had been advised of the
// -- possibility of the same.
// --
// -- CRITICAL APPLICATIONS
// -- Xilinx products are not designed or intended to be fail-
// -- safe, or for use in any application requiring fail-safe
// -- performance, such as life-support or safety devices or
// -- systems, Class III medical devices, nuclear facilities,
// -- applications related to the deployment of airbags, or any
// -- other applications that could lead to death, personal
// -- injury, or severe property or environmental damage
// -- (individually and collectively, "Critical
// -- Applications"). Customer assumes the sole risk and
// -- liability of any use of Xilinx products in Critical
// -- Applications, subject only to applicable laws and
// -- regulations governing limitations on product liability.
// --
// -- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// -- PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
//
// Register Slice
//   Generic single-channel AXI pipeline register on forward and/or reverse signal path
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axic_register_slice_slr
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *) 
module axi_register_slice_v2_1_14_source_region_slr #
  (
   parameter C_FAMILY     = "virtex6",
   parameter integer C_REG_CONFIG = 12,
   parameter integer C_DATA_WIDTH = 32,
   parameter integer C_SLR_WIDTH = 32
   )
  (
   // System Signals
   input wire ACLK,
   input wire ACLK2X,
   input wire ARESET,

   // Slave side
   input  wire [C_DATA_WIDTH-1:0] S_PAYLOAD_DATA,
   input  wire S_VALID,
   output wire S_READY,

   // Master side
   output wire [C_SLR_WIDTH-1:0] laguna_m_payload,
   output wire laguna_m_handshake,
   input  wire m_ready
   );

  generate

  (* dont_touch="true" *) reg areset_d = 1'b0;
  always @(posedge ACLK) begin
    areset_d <= ARESET;
  end
  
  if (C_REG_CONFIG == 13) begin : gen_slr_tdm
    localparam integer P_EVEN_WIDTH = C_DATA_WIDTH[0] ? (C_DATA_WIDTH+1) : C_DATA_WIDTH;
    
    (* shreg_extract = "no" *) reg [P_EVEN_WIDTH-1:0] payload_d1;
    (* shreg_extract = "no" *) reg [C_SLR_WIDTH-1:0]  laguna_payload_tdm_d2;
    (* shreg_extract = "no" *) reg laguna_handshake_d1 = 1'b0;
    reg s_ready_d2 = 1'b0;
    wire sample_cycle;
    integer i;

    assign laguna_m_payload = laguna_payload_tdm_d2;
    assign laguna_m_handshake = laguna_handshake_d1;
    assign S_READY = s_ready_d2;
        
    always @(posedge ACLK) begin
      if (s_ready_d2) begin
        payload_d1 <= S_PAYLOAD_DATA;  // ACLK cycle 1
      end
    end

    always @(posedge ACLK2X) begin
      for (i=0;i<C_SLR_WIDTH;i=i+1) begin  
        if (s_ready_d2) begin
          if (~sample_cycle) begin  // First (high) phase of ACLK cycle 2
            laguna_payload_tdm_d2[i] <= payload_d1[2*i+1];  // Mux odd bits
          end else begin  // Second (low) phase of ACLK cycle 2
            laguna_payload_tdm_d2[i] <= payload_d1[2*i];  // Mux even bits
          end
        end
      end
    end

    always @(posedge ACLK) begin
      if (areset_d) begin
        laguna_handshake_d1 <= 1'b0;
        s_ready_d2 <= 1'b0;
      end else begin
        if (s_ready_d2) begin
          laguna_handshake_d1 <= S_VALID;
        end
        s_ready_d2 <= m_ready;  // Half-cycle setup from dest_region.s_ready_d1
      end
    end

    axi_register_slice_v2_1_14_tdm_sample tdm_sample_inst (
      .slow_clk     (ACLK),
      .fast_clk     (ACLK2X),
      .sample_cycle (sample_cycle)
    );
    
  end else if (C_REG_CONFIG == 12) begin : gen_slr_common

    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] laguna_payload_d1;
    (* shreg_extract = "no" *) reg laguna_handshake_d1 = 1'b0;
    reg s_ready_d2 = 1'b0;
  
    assign laguna_m_payload = laguna_payload_d1;
    assign laguna_m_handshake = laguna_handshake_d1;
    assign S_READY = s_ready_d2;
        
    always @(posedge ACLK) begin
      if (s_ready_d2) begin
        laguna_payload_d1 <= S_PAYLOAD_DATA;  // ACLK cycle 1
      end
    end

    always @(posedge ACLK) begin
      if (areset_d) begin
        laguna_handshake_d1 <= 1'b0;
        s_ready_d2 <= 1'b0;
      end else begin
        if (s_ready_d2) begin
          laguna_handshake_d1 <= S_VALID;
        end
        s_ready_d2 <= m_ready; 
      end
    end
    
  end // gen_slr
endgenerate
endmodule  // source_region_slr

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_register_slice_v2_1_14_dest_region_slr #
  (
   parameter C_FAMILY     = "virtex6",
   parameter integer C_REG_CONFIG = 12,
   parameter integer C_DATA_WIDTH = 32,
   parameter integer C_SLR_WIDTH = 32
   )
  (
   // System Signals
   input wire ACLK,
   input wire ACLK2X,
   input wire ARESET,

   // Slave side
   input  wire [C_SLR_WIDTH-1:0] laguna_s_payload,
   input  wire laguna_s_handshake,
   output wire s_ready,

   // Master side
   output wire [C_DATA_WIDTH-1:0] M_PAYLOAD_DATA,
   output wire M_VALID,
   input  wire M_READY
   );

  generate

  (* dont_touch="true" *) reg areset_d = 1'b0;
  always @(posedge ACLK) begin
    areset_d <= ARESET;
  end
  
  if (C_REG_CONFIG == 13) begin : gen_slr_tdm
    localparam integer P_EVEN_WIDTH = C_DATA_WIDTH[0] ? (C_DATA_WIDTH+1) : C_DATA_WIDTH;
    
    (* shreg_extract = "no" *) reg [C_SLR_WIDTH-1:0]  laguna_payload_tdm_d3;
    (* shreg_extract = "no" *) reg [C_SLR_WIDTH-1:0]  payload_tdm_d4;
    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] fifo_out;
    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] fifo_out_n1;
    (* shreg_extract = "no" *) reg laguna_handshake_d2 = 1'b0;
    (* shreg_extract = "no" *) reg s_ready_d1 = 1'b0;
    (* shreg_extract = "no" *) reg s_ready_d2 = 1'b0;
    reg [P_EVEN_WIDTH-1:0] payload_demux;
    reg m_valid_r = 1'b0;
    wire push;
    wire pop;
    reg [1:0] fifo_cnt = 2'h0;
    integer i;
    
    assign s_ready = s_ready_d1;
    assign M_VALID = m_valid_r;
    assign M_PAYLOAD_DATA = fifo_out;  // Registered outputs
    assign pop = M_READY & m_valid_r;
    assign push = laguna_handshake_d2 & s_ready_d2;      

    always @(posedge ACLK) begin
      if (areset_d) begin
        laguna_handshake_d2 <= 1'b0;
      end else if (s_ready_d2) begin
        laguna_handshake_d2 <= laguna_s_handshake;
      end
    end

    always @(posedge ACLK2X) begin
      if (s_ready_d2) begin
        payload_tdm_d4 <= laguna_payload_tdm_d3;
        laguna_payload_tdm_d3 <= laguna_s_payload;
      end
    end
    
    always @ * begin
      for (i=0;i<C_SLR_WIDTH;i=i+1) begin
        payload_demux[2*i+1] = payload_tdm_d4[i];       // Odd bits captured during second (low) phase of ACLK cycle 2
        payload_demux[2*i] = laguna_payload_tdm_d3[i];  // Even bits captured during first (high) phase of ACLK cycle 3
          // Complete payload_demux signal is stable during second (low) phase of ACLK cycle 3 (gets clobbered after each ACLK active edge)
      end
    end

    always @(posedge ACLK) begin
      if (areset_d) begin
        fifo_cnt <= 2'h0;
        m_valid_r <=  1'b0;
        s_ready_d2 <= 1'b0;
      end else begin
        s_ready_d2 <= s_ready_d1;  // Half-cycle setup from s_ready_d1
        if (push & ~pop) begin
          fifo_cnt <= fifo_cnt + 2'h1;
          m_valid_r <=  1'b1;
        end else if (~push & pop) begin
          fifo_cnt <= fifo_cnt - 2'h1;
          m_valid_r <= fifo_cnt[1];  // fifo_cnt >= 2
        end
      end
    end

    always @(negedge ACLK) begin
      if (areset_d) begin
        s_ready_d1 <= 1'b0;
      end else begin
        s_ready_d1 <= M_READY | ~m_valid_r;  // Half-cycle setup
      end
    end

    always @(posedge ACLK) begin
      case (fifo_cnt)
        2'h0: begin  // EMPTY
          fifo_out <= payload_demux;
        end
        
        2'h1: begin
          fifo_out_n1 <= payload_demux;
          if (pop) begin
            fifo_out <= payload_demux;
          end
        end
        
        default: begin  // fifo_cnt == 2
          if (pop) begin
            fifo_out <= fifo_out_n1;
            fifo_out_n1 <= payload_demux;
          end
        end
      endcase
    end

  end else if (C_REG_CONFIG == 12) begin : gen_slr_common

    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] laguna_payload_d2;
    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] fifo_out;
    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] fifo_out_n1;
    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] fifo_out_n2;
    (* shreg_extract = "no" *) reg laguna_handshake_d2 = 1'b0;
    (* shreg_extract = "no" *) reg s_ready_d1 = 1'b0;
    (* shreg_extract = "no" *) reg s_ready_d2 = 1'b0;
    reg m_valid_r = 1'b0;
    wire push;
    wire pop;
    reg [1:0] fifo_cnt = 2'h0;
    
    assign s_ready = s_ready_d1;
    assign M_VALID = m_valid_r;
    assign M_PAYLOAD_DATA = fifo_out; 
    assign pop = M_READY & m_valid_r;
    assign push = laguna_handshake_d2 & s_ready_d2;      

    always @(posedge ACLK) begin
      if (s_ready_d2) begin
        laguna_payload_d2 <= laguna_s_payload;
      end
    end

    always @(posedge ACLK) begin
      if (areset_d) begin
        laguna_handshake_d2 <= 1'b0;
      end else if (s_ready_d2) begin
        laguna_handshake_d2 <= laguna_s_handshake;
      end
    end

    always @(posedge ACLK) begin
      if (areset_d) begin
        fifo_cnt <= 2'h0;
        m_valid_r <=  1'b0;
        s_ready_d1 <= 1'b0;
        s_ready_d2 <= 1'b0;
      end else begin
        s_ready_d2 <= s_ready_d1; 
        s_ready_d1 <= M_READY | ~m_valid_r; 
        if (push & ~pop) begin
          fifo_cnt <= fifo_cnt + 2'h1;
          m_valid_r <=  1'b1;
        end else if (~push & pop) begin
          fifo_cnt <= fifo_cnt - 2'h1;
          m_valid_r <= fifo_cnt[1];  // fifo_cnt >= 2
        end
      end
    end

    always @(posedge ACLK) begin
      case (fifo_cnt)
        2'h0: begin  // EMPTY
          fifo_out <= laguna_payload_d2;
        end
        
        2'h1: begin
          fifo_out_n1 <= laguna_payload_d2;
          if (pop) begin
            fifo_out <= laguna_payload_d2;
          end
        end
        
        2'h2: begin
          fifo_out_n2 <= laguna_payload_d2;
          if (pop) begin
            fifo_out <= fifo_out_n1;
            fifo_out_n1 <= laguna_payload_d2;
          end
        end
        
        default: begin  // fifo_cnt == 3
          if (pop) begin
            fifo_out <= fifo_out_n1;
            fifo_out_n1 <= fifo_out_n2;
            fifo_out_n2 <= laguna_payload_d2;
          end
        end
      endcase
    end

  end // gen_slr
endgenerate
endmodule  // dest_region_slr



//  (c) Copyright 2010-2017 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// AXI Register Slice
//   Register selected channels on the forward and/or reverse signal paths.
//   5-channel memory-mapped AXI4 interfaces.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axi_register_slice
//      axic_register_slice
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module axi_register_slice_v2_1_14_axi_register_slice #
  (
   parameter C_FAMILY                            = "virtex6",
   parameter C_AXI_PROTOCOL                      = 0,
   parameter integer C_AXI_ID_WIDTH              = 1,
   parameter integer C_AXI_ADDR_WIDTH            = 32,
   parameter integer C_AXI_DATA_WIDTH            = 32,
   parameter integer C_AXI_SUPPORTS_USER_SIGNALS = 0,
   parameter integer C_AXI_AWUSER_WIDTH          = 1,
   parameter integer C_AXI_ARUSER_WIDTH          = 1,
   parameter integer C_AXI_WUSER_WIDTH           = 1,
   parameter integer C_AXI_RUSER_WIDTH           = 1,
   parameter integer C_AXI_BUSER_WIDTH           = 1,
   // C_REG_CONFIG_*:
   //   0 => BYPASS    = The channel is just wired through the module.
   //   1 => FWD_REV   = Both FWD and REV (fully-registered)
   //   2 => FWD       = The master VALID and payload signals are registrated. 
   //   3 => REV       = The slave ready signal is registrated
   //   4 => SLAVE_FWD = All slave side signals and master VALID and payload are registrated.
   //   5 => SLAVE_RDY = All slave side signals and master READY are registrated.
   //   6 => INPUTS    = Slave and Master side inputs are registrated.
   //   7 => LIGHT_WT  = 1-stage pipeline register with bubble cycle, both FWD and REV pipelining
   //   9 => SI/MI_REG = Source side completely registered (including S_VALID input)
   //   12 => SLR Crossing (source->dest flops, full-width payload, single clock)
   //   13 => TDM SLR Crossing (source->dest flops, half-width payload, dual clock)
   parameter integer C_REG_CONFIG_AW = 7,
   parameter integer C_REG_CONFIG_W  = 1,
   parameter integer C_REG_CONFIG_B  = 7,
   parameter integer C_REG_CONFIG_AR = 7,
   parameter integer C_REG_CONFIG_R  = 1
   )
  (
   // System Signals
   input wire aclk,
   input wire aclk2x,
   input wire aresetn,

   // Slave Interface Write Address Ports
   input  wire [C_AXI_ID_WIDTH-1:0]     s_axi_awid,
   input  wire [C_AXI_ADDR_WIDTH-1:0]   s_axi_awaddr,
   input  wire [((C_AXI_PROTOCOL == 1) ? 4 : 8)-1:0]  s_axi_awlen,
   input  wire [3-1:0]                  s_axi_awsize,
   input  wire [2-1:0]                  s_axi_awburst,
   input  wire [((C_AXI_PROTOCOL == 1) ? 2 : 1)-1:0]  s_axi_awlock,
   input  wire [4-1:0]                  s_axi_awcache,
   input  wire [3-1:0]                  s_axi_awprot,
   input  wire [4-1:0]                  s_axi_awregion,
   input  wire [4-1:0]                  s_axi_awqos,
   input  wire [C_AXI_AWUSER_WIDTH-1:0] s_axi_awuser,
   input  wire                          s_axi_awvalid,
   output wire                          s_axi_awready,

   // Slave Interface Write Data Ports
   input wire [C_AXI_ID_WIDTH-1:0]      s_axi_wid,
   input  wire [C_AXI_DATA_WIDTH-1:0]   s_axi_wdata,
   input  wire [C_AXI_DATA_WIDTH/8-1:0] s_axi_wstrb,
   input  wire                          s_axi_wlast,
   input  wire [C_AXI_WUSER_WIDTH-1:0]  s_axi_wuser,
   input  wire                          s_axi_wvalid,
   output wire                          s_axi_wready,

   // Slave Interface Write Response Ports
   output wire [C_AXI_ID_WIDTH-1:0]    s_axi_bid,
   output wire [2-1:0]                 s_axi_bresp,
   output wire [C_AXI_BUSER_WIDTH-1:0] s_axi_buser,
   output wire                         s_axi_bvalid,
   input  wire                         s_axi_bready,

   // Slave Interface Read Address Ports
   input  wire [C_AXI_ID_WIDTH-1:0]     s_axi_arid,
   input  wire [C_AXI_ADDR_WIDTH-1:0]   s_axi_araddr,
   input  wire [((C_AXI_PROTOCOL == 1) ? 4 : 8)-1:0]  s_axi_arlen,
   input  wire [3-1:0]                  s_axi_arsize,
   input  wire [2-1:0]                  s_axi_arburst,
   input  wire [((C_AXI_PROTOCOL == 1) ? 2 : 1)-1:0]  s_axi_arlock,
   input  wire [4-1:0]                  s_axi_arcache,
   input  wire [3-1:0]                  s_axi_arprot,
   input  wire [4-1:0]                  s_axi_arregion,
   input  wire [4-1:0]                  s_axi_arqos,
   input  wire [C_AXI_ARUSER_WIDTH-1:0] s_axi_aruser,
   input  wire                          s_axi_arvalid,
   output wire                          s_axi_arready,

   // Slave Interface Read Data Ports
   output wire [C_AXI_ID_WIDTH-1:0]    s_axi_rid,
   output wire [C_AXI_DATA_WIDTH-1:0]  s_axi_rdata,
   output wire [2-1:0]                 s_axi_rresp,
   output wire                         s_axi_rlast,
   output wire [C_AXI_RUSER_WIDTH-1:0] s_axi_ruser,
   output wire                         s_axi_rvalid,
   input  wire                         s_axi_rready,
   
   // Master Interface Write Address Port
   output wire [C_AXI_ID_WIDTH-1:0]     m_axi_awid,
   output wire [C_AXI_ADDR_WIDTH-1:0]   m_axi_awaddr,
   output wire [((C_AXI_PROTOCOL == 1) ? 4 : 8)-1:0]  m_axi_awlen,
   output wire [3-1:0]                  m_axi_awsize,
   output wire [2-1:0]                  m_axi_awburst,
   output wire [((C_AXI_PROTOCOL == 1) ? 2 : 1)-1:0]  m_axi_awlock,
   output wire [4-1:0]                  m_axi_awcache,
   output wire [3-1:0]                  m_axi_awprot,
   output wire [4-1:0]                  m_axi_awregion,
   output wire [4-1:0]                  m_axi_awqos,
   output wire [C_AXI_AWUSER_WIDTH-1:0] m_axi_awuser,
   output wire                          m_axi_awvalid,
   input  wire                          m_axi_awready,
   
   // Master Interface Write Data Ports
   output wire [C_AXI_ID_WIDTH-1:0]     m_axi_wid,
   output wire [C_AXI_DATA_WIDTH-1:0]   m_axi_wdata,
   output wire [C_AXI_DATA_WIDTH/8-1:0] m_axi_wstrb,
   output wire                          m_axi_wlast,
   output wire [C_AXI_WUSER_WIDTH-1:0]  m_axi_wuser,
   output wire                          m_axi_wvalid,
   input  wire                          m_axi_wready,
   
   // Master Interface Write Response Ports
   input  wire [C_AXI_ID_WIDTH-1:0]    m_axi_bid,
   input  wire [2-1:0]                 m_axi_bresp,
   input  wire [C_AXI_BUSER_WIDTH-1:0] m_axi_buser,
   input  wire                         m_axi_bvalid,
   output wire                         m_axi_bready,
   
   // Master Interface Read Address Port
   output wire [C_AXI_ID_WIDTH-1:0]     m_axi_arid,
   output wire [C_AXI_ADDR_WIDTH-1:0]   m_axi_araddr,
   output wire [((C_AXI_PROTOCOL == 1) ? 4 : 8)-1:0]  m_axi_arlen,
   output wire [3-1:0]                  m_axi_arsize,
   output wire [2-1:0]                  m_axi_arburst,
   output wire [((C_AXI_PROTOCOL == 1) ? 2 : 1)-1:0]  m_axi_arlock,
   output wire [4-1:0]                  m_axi_arcache,
   output wire [3-1:0]                  m_axi_arprot,
   output wire [4-1:0]                  m_axi_arregion,
   output wire [4-1:0]                  m_axi_arqos,
   output wire [C_AXI_ARUSER_WIDTH-1:0] m_axi_aruser,
   output wire                          m_axi_arvalid,
   input  wire                          m_axi_arready,
   
   // Master Interface Read Data Ports
   input  wire [C_AXI_ID_WIDTH-1:0]    m_axi_rid,
   input  wire [C_AXI_DATA_WIDTH-1:0]  m_axi_rdata,
   input  wire [2-1:0]                 m_axi_rresp,
   input  wire                         m_axi_rlast,
   input  wire [C_AXI_RUSER_WIDTH-1:0] m_axi_ruser,
   input  wire                         m_axi_rvalid,
   output wire                         m_axi_rready
  );

  wire reset;

  localparam C_AXI_SUPPORTS_REGION_SIGNALS = (C_AXI_PROTOCOL == 0) ? 1 : 0;
  `include "axi_infrastructure_v1_1_0.vh"

  wire [G_AXI_AWPAYLOAD_WIDTH-1:0] s_awpayload;
  wire [G_AXI_AWPAYLOAD_WIDTH-1:0] m_awpayload;
  wire [G_AXI_WPAYLOAD_WIDTH-1:0] s_wpayload;
  wire [G_AXI_WPAYLOAD_WIDTH-1:0] m_wpayload;
  wire [G_AXI_BPAYLOAD_WIDTH-1:0] s_bpayload;
  wire [G_AXI_BPAYLOAD_WIDTH-1:0] m_bpayload;
  wire [G_AXI_ARPAYLOAD_WIDTH-1:0] s_arpayload;
  wire [G_AXI_ARPAYLOAD_WIDTH-1:0] m_arpayload;
  wire [G_AXI_RPAYLOAD_WIDTH-1:0] s_rpayload;
  wire [G_AXI_RPAYLOAD_WIDTH-1:0] m_rpayload;

  assign reset = ~aresetn;
  
  generate

  axi_infrastructure_v1_1_0_axi2vector #( 
    .C_AXI_PROTOCOL                ( C_AXI_PROTOCOL                ) ,
    .C_AXI_ID_WIDTH                ( C_AXI_ID_WIDTH                ) ,
    .C_AXI_ADDR_WIDTH              ( C_AXI_ADDR_WIDTH              ) ,
    .C_AXI_DATA_WIDTH              ( C_AXI_DATA_WIDTH              ) ,
    .C_AXI_SUPPORTS_USER_SIGNALS   ( C_AXI_SUPPORTS_USER_SIGNALS   ) ,
    .C_AXI_SUPPORTS_REGION_SIGNALS ( C_AXI_SUPPORTS_REGION_SIGNALS ) ,
    .C_AXI_AWUSER_WIDTH            ( C_AXI_AWUSER_WIDTH            ) ,
    .C_AXI_ARUSER_WIDTH            ( C_AXI_ARUSER_WIDTH            ) ,
    .C_AXI_WUSER_WIDTH             ( C_AXI_WUSER_WIDTH             ) ,
    .C_AXI_RUSER_WIDTH             ( C_AXI_RUSER_WIDTH             ) ,
    .C_AXI_BUSER_WIDTH             ( C_AXI_BUSER_WIDTH             ) ,
    .C_AWPAYLOAD_WIDTH             ( G_AXI_AWPAYLOAD_WIDTH         ) ,
    .C_WPAYLOAD_WIDTH              ( G_AXI_WPAYLOAD_WIDTH          ) ,
    .C_BPAYLOAD_WIDTH              ( G_AXI_BPAYLOAD_WIDTH          ) ,
    .C_ARPAYLOAD_WIDTH             ( G_AXI_ARPAYLOAD_WIDTH         ) ,
    .C_RPAYLOAD_WIDTH              ( G_AXI_RPAYLOAD_WIDTH          ) 
  )
  axi_infrastructure_v1_1_0_axi2vector_0 ( 
    .s_axi_awid      ( s_axi_awid      ) ,
    .s_axi_awaddr    ( s_axi_awaddr    ) ,
    .s_axi_awlen     ( s_axi_awlen     ) ,
    .s_axi_awsize    ( s_axi_awsize    ) ,
    .s_axi_awburst   ( s_axi_awburst   ) ,
    .s_axi_awlock    ( s_axi_awlock    ) ,
    .s_axi_awcache   ( s_axi_awcache   ) ,
    .s_axi_awprot    ( s_axi_awprot    ) ,
    .s_axi_awqos     ( s_axi_awqos     ) ,
    .s_axi_awuser    ( s_axi_awuser    ) ,
    .s_axi_awregion  ( s_axi_awregion  ) ,
    .s_axi_wid       ( s_axi_wid       ) ,
    .s_axi_wdata     ( s_axi_wdata     ) ,
    .s_axi_wstrb     ( s_axi_wstrb     ) ,
    .s_axi_wlast     ( s_axi_wlast     ) ,
    .s_axi_wuser     ( s_axi_wuser     ) ,
    .s_axi_bid       ( s_axi_bid       ) ,
    .s_axi_bresp     ( s_axi_bresp     ) ,
    .s_axi_buser     ( s_axi_buser     ) ,
    .s_axi_arid      ( s_axi_arid      ) ,
    .s_axi_araddr    ( s_axi_araddr    ) ,
    .s_axi_arlen     ( s_axi_arlen     ) ,
    .s_axi_arsize    ( s_axi_arsize    ) ,
    .s_axi_arburst   ( s_axi_arburst   ) ,
    .s_axi_arlock    ( s_axi_arlock    ) ,
    .s_axi_arcache   ( s_axi_arcache   ) ,
    .s_axi_arprot    ( s_axi_arprot    ) ,
    .s_axi_arqos     ( s_axi_arqos     ) ,
    .s_axi_aruser    ( s_axi_aruser    ) ,
    .s_axi_arregion  ( s_axi_arregion  ) ,
    .s_axi_rid       ( s_axi_rid       ) ,
    .s_axi_rdata     ( s_axi_rdata     ) ,
    .s_axi_rresp     ( s_axi_rresp     ) ,
    .s_axi_rlast     ( s_axi_rlast     ) ,
    .s_axi_ruser     ( s_axi_ruser     ) ,
    .s_awpayload ( s_awpayload ) ,
    .s_wpayload  ( s_wpayload  ) ,
    .s_bpayload  ( s_bpayload  ) ,
    .s_arpayload ( s_arpayload ) ,
    .s_rpayload  ( s_rpayload  ) 
  );
    
  if (C_REG_CONFIG_AW <= 9) begin : gen_simple_aw
    axi_register_slice_v2_1_14_axic_register_slice # (
      .C_FAMILY     ( C_FAMILY              ) ,
      .C_DATA_WIDTH ( G_AXI_AWPAYLOAD_WIDTH ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_AW       ) 
    )
    aw_pipe (
      // System Signals
      .ACLK(aclk),
      .ARESET(reset),

      // Slave side
      .S_PAYLOAD_DATA(s_awpayload),
      .S_VALID(s_axi_awvalid),
      .S_READY(s_axi_awready),

      // Master side
      .M_PAYLOAD_DATA(m_awpayload),
      .M_VALID(m_axi_awvalid),
      .M_READY(m_axi_awready)
    );
    
  end else begin : gen_slr_aw
    
    localparam integer P_AW_EVEN_WIDTH = G_AXI_AWPAYLOAD_WIDTH[0] ? (G_AXI_AWPAYLOAD_WIDTH+1) : G_AXI_AWPAYLOAD_WIDTH;
    localparam integer P_AW_TDM_WIDTH = P_AW_EVEN_WIDTH/2;
    localparam integer P_AW_SLR_WIDTH = (C_REG_CONFIG_AW == 13) ? P_AW_TDM_WIDTH : G_AXI_AWPAYLOAD_WIDTH;
    
    wire [P_AW_SLR_WIDTH-1:0] slr_awpayload;
    wire slr_awhandshake;
    wire slr_awready;
        
    axi_register_slice_v2_1_14_source_region_slr #(
      .C_FAMILY     ( C_FAMILY         ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_AW       ) ,
      .C_DATA_WIDTH ( G_AXI_AWPAYLOAD_WIDTH ) ,
      .C_SLR_WIDTH  ( P_AW_SLR_WIDTH )
    )
    slr_source_aw (
      .ACLK           ( aclk            ) ,
      .ACLK2X         ( aclk2x            ) ,
      .ARESET         ( reset        ) ,
      .S_PAYLOAD_DATA ( s_awpayload ) ,
      .S_VALID        ( s_axi_awvalid   ) ,
      .S_READY        ( s_axi_awready   ) ,
      .laguna_m_payload   ( slr_awpayload ) , 
      .laguna_m_handshake ( slr_awhandshake   ) ,
      .m_ready            ( slr_awready   )
    );

    axi_register_slice_v2_1_14_dest_region_slr #(
      .C_FAMILY     ( C_FAMILY         ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_AW       ) ,
      .C_DATA_WIDTH ( G_AXI_AWPAYLOAD_WIDTH ) ,
      .C_SLR_WIDTH  ( P_AW_SLR_WIDTH )
    )
    slr_dest_aw (
      .ACLK           ( aclk            ) ,
      .ACLK2X         ( aclk2x            ) ,
      .ARESET         ( reset        ) ,
      .laguna_s_payload   ( slr_awpayload ) ,
      .laguna_s_handshake ( slr_awhandshake   ) ,
      .s_ready            ( slr_awready   ) ,
      .M_PAYLOAD_DATA ( m_awpayload ) , 
      .M_VALID        ( m_axi_awvalid   ) ,
      .M_READY        ( m_axi_awready   )
    );
  end  // gen_aw
    
  if (C_REG_CONFIG_W <= 9) begin : gen_simple_w
    axi_register_slice_v2_1_14_axic_register_slice # (
      .C_FAMILY     ( C_FAMILY             ) ,
      .C_DATA_WIDTH ( G_AXI_WPAYLOAD_WIDTH ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_W       ) 
    )
    w_pipe (
      // System Signals
      .ACLK(aclk),
      .ARESET(reset),

      // Slave side
      .S_PAYLOAD_DATA(s_wpayload),
      .S_VALID(s_axi_wvalid),
      .S_READY(s_axi_wready),

      // Master side
      .M_PAYLOAD_DATA(m_wpayload),
      .M_VALID(m_axi_wvalid),
      .M_READY(m_axi_wready)
    );
    
  end else begin : gen_slr_w
    
    localparam integer P_W_EVEN_WIDTH = G_AXI_WPAYLOAD_WIDTH[0] ? (G_AXI_WPAYLOAD_WIDTH+1) : G_AXI_WPAYLOAD_WIDTH;
    localparam integer P_W_TDM_WIDTH = P_W_EVEN_WIDTH/2;
    localparam integer P_W_SLR_WIDTH = (C_REG_CONFIG_W == 13) ? P_W_TDM_WIDTH : G_AXI_WPAYLOAD_WIDTH;
    
    wire [P_W_SLR_WIDTH-1:0] slr_wpayload;
    wire slr_whandshake;
    wire slr_wready;
        
    axi_register_slice_v2_1_14_source_region_slr #(
      .C_FAMILY     ( C_FAMILY         ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_W       ) ,
      .C_DATA_WIDTH ( G_AXI_WPAYLOAD_WIDTH ) ,
      .C_SLR_WIDTH  ( P_W_SLR_WIDTH )
    )
    slr_source_w (
      .ACLK           ( aclk            ) ,
      .ACLK2X         ( aclk2x            ) ,
      .ARESET         ( reset        ) ,
      .S_PAYLOAD_DATA ( s_wpayload ) ,
      .S_VALID        ( s_axi_wvalid   ) ,
      .S_READY        ( s_axi_wready   ) ,
      .laguna_m_payload   ( slr_wpayload ) , 
      .laguna_m_handshake ( slr_whandshake   ) ,
      .m_ready            ( slr_wready   )
    );

    axi_register_slice_v2_1_14_dest_region_slr #(
      .C_FAMILY     ( C_FAMILY         ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_W       ) ,
      .C_DATA_WIDTH ( G_AXI_WPAYLOAD_WIDTH ) ,
      .C_SLR_WIDTH  ( P_W_SLR_WIDTH )
    )
    slr_dest_w (
      .ACLK           ( aclk            ) ,
      .ACLK2X         ( aclk2x            ) ,
      .ARESET         ( reset        ) ,
      .laguna_s_payload   ( slr_wpayload ) ,
      .laguna_s_handshake ( slr_whandshake   ) ,
      .s_ready            ( slr_wready   ) ,
      .M_PAYLOAD_DATA ( m_wpayload ) , 
      .M_VALID        ( m_axi_wvalid   ) ,
      .M_READY        ( m_axi_wready   )
    );
  end  // gen_w

  if (C_REG_CONFIG_B <= 9) begin : gen_simple_b
    axi_register_slice_v2_1_14_axic_register_slice # (
      .C_FAMILY     ( C_FAMILY             ) ,
      .C_DATA_WIDTH ( G_AXI_BPAYLOAD_WIDTH ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_B       ) 
    )
    b_pipe (
      // System Signals
      .ACLK(aclk),
      .ARESET(reset),

      // Slave side
      .S_PAYLOAD_DATA(m_bpayload),
      .S_VALID(m_axi_bvalid),
      .S_READY(m_axi_bready),

      // Master side
      .M_PAYLOAD_DATA(s_bpayload),
      .M_VALID(s_axi_bvalid),
      .M_READY(s_axi_bready)
    );
 
  end else begin : gen_slr_b
    
    localparam integer P_B_EVEN_WIDTH = G_AXI_BPAYLOAD_WIDTH[0] ? (G_AXI_BPAYLOAD_WIDTH+1) : G_AXI_BPAYLOAD_WIDTH;
    localparam integer P_B_TDM_WIDTH = P_B_EVEN_WIDTH/2;
    localparam integer P_B_SLR_WIDTH = (C_REG_CONFIG_B == 13) ? P_B_TDM_WIDTH : G_AXI_BPAYLOAD_WIDTH;
    
    wire [P_B_SLR_WIDTH-1:0] slr_bpayload;
    wire slr_bhandshake;
    wire slr_bready;
        
    axi_register_slice_v2_1_14_source_region_slr #(
      .C_FAMILY     ( C_FAMILY         ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_B       ) ,
      .C_DATA_WIDTH ( G_AXI_BPAYLOAD_WIDTH ) ,
      .C_SLR_WIDTH  ( P_B_SLR_WIDTH )
    )
    slr_source_b (
      .ACLK           ( aclk            ) ,
      .ACLK2X         ( aclk2x            ) ,
      .ARESET         ( reset        ) ,
      .S_PAYLOAD_DATA ( m_bpayload ) ,
      .S_VALID        ( m_axi_bvalid   ) ,
      .S_READY        ( m_axi_bready   ) ,
      .laguna_m_payload   ( slr_bpayload ) , 
      .laguna_m_handshake ( slr_bhandshake   ) ,
      .m_ready            ( slr_bready   )
    );

    axi_register_slice_v2_1_14_dest_region_slr #(
      .C_FAMILY     ( C_FAMILY         ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_B       ) ,
      .C_DATA_WIDTH ( G_AXI_BPAYLOAD_WIDTH ) ,
      .C_SLR_WIDTH  ( P_B_SLR_WIDTH )
    )
    slr_dest_b (
      .ACLK           ( aclk            ) ,
      .ACLK2X         ( aclk2x            ) ,
      .ARESET         ( reset        ) ,
      .laguna_s_payload   ( slr_bpayload ) ,
      .laguna_s_handshake ( slr_bhandshake   ) ,
      .s_ready            ( slr_bready   ) ,
      .M_PAYLOAD_DATA ( s_bpayload ) , 
      .M_VALID        ( s_axi_bvalid   ) ,
      .M_READY        ( s_axi_bready   )
    );
  end  // gen_b

  if (C_REG_CONFIG_AR <= 9) begin : gen_simple_ar
    axi_register_slice_v2_1_14_axic_register_slice # (
      .C_FAMILY     ( C_FAMILY              ) ,
      .C_DATA_WIDTH ( G_AXI_ARPAYLOAD_WIDTH ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_AR       ) 
    )
    ar_pipe (
      // System Signals
      .ACLK(aclk),
      .ARESET(reset),

      // Slave side
      .S_PAYLOAD_DATA(s_arpayload),
      .S_VALID(s_axi_arvalid),
      .S_READY(s_axi_arready),

      // Master side
      .M_PAYLOAD_DATA(m_arpayload),
      .M_VALID(m_axi_arvalid),
      .M_READY(m_axi_arready)
    );
    
  end else begin : gen_slr_ar
    
    localparam integer P_AR_EVEN_WIDTH = G_AXI_ARPAYLOAD_WIDTH[0] ? (G_AXI_ARPAYLOAD_WIDTH+1) : G_AXI_ARPAYLOAD_WIDTH;
    localparam integer P_AR_TDM_WIDTH = P_AR_EVEN_WIDTH/2;
    localparam integer P_AR_SLR_WIDTH = (C_REG_CONFIG_AR == 13) ? P_AR_TDM_WIDTH : G_AXI_ARPAYLOAD_WIDTH;
    
    wire [P_AR_SLR_WIDTH-1:0] slr_arpayload;
    wire slr_arhandshake;
    wire slr_arready;
        
    axi_register_slice_v2_1_14_source_region_slr #(
      .C_FAMILY     ( C_FAMILY         ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_AR       ) ,
      .C_DATA_WIDTH ( G_AXI_ARPAYLOAD_WIDTH ) ,
      .C_SLR_WIDTH  ( P_AR_SLR_WIDTH )
    )
    slr_source_ar (
      .ACLK           ( aclk            ) ,
      .ACLK2X         ( aclk2x            ) ,
      .ARESET         ( reset        ) ,
      .S_PAYLOAD_DATA ( s_arpayload ) ,
      .S_VALID        ( s_axi_arvalid   ) ,
      .S_READY        ( s_axi_arready   ) ,
      .laguna_m_payload   ( slr_arpayload ) , 
      .laguna_m_handshake ( slr_arhandshake   ) ,
      .m_ready            ( slr_arready   )
    );

    axi_register_slice_v2_1_14_dest_region_slr #(
      .C_FAMILY     ( C_FAMILY         ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_AR       ) ,
      .C_DATA_WIDTH ( G_AXI_ARPAYLOAD_WIDTH ) ,
      .C_SLR_WIDTH  ( P_AR_SLR_WIDTH )
    )
    slr_dest_ar (
      .ACLK           ( aclk            ) ,
      .ACLK2X         ( aclk2x            ) ,
      .ARESET         ( reset        ) ,
      .laguna_s_payload   ( slr_arpayload ) ,
      .laguna_s_handshake ( slr_arhandshake   ) ,
      .s_ready            ( slr_arready   ) ,
      .M_PAYLOAD_DATA ( m_arpayload ) , 
      .M_VALID        ( m_axi_arvalid   ) ,
      .M_READY        ( m_axi_arready   )
    );
  end  // gen_ar
        
  if (C_REG_CONFIG_R <= 9) begin : gen_simple_r
    axi_register_slice_v2_1_14_axic_register_slice # (
      .C_FAMILY     ( C_FAMILY             ) ,
      .C_DATA_WIDTH ( G_AXI_RPAYLOAD_WIDTH ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_R       ) 
    )
    r_pipe (
      // System Signals
      .ACLK(aclk),
      .ARESET(reset),

      // Slave side
      .S_PAYLOAD_DATA(m_rpayload),
      .S_VALID(m_axi_rvalid),
      .S_READY(m_axi_rready),

      // Master side
      .M_PAYLOAD_DATA(s_rpayload),
      .M_VALID(s_axi_rvalid),
      .M_READY(s_axi_rready)
    );
    
  end else begin : gen_slr_r
    
    localparam integer P_R_EVEN_WIDTH = G_AXI_RPAYLOAD_WIDTH[0] ? (G_AXI_RPAYLOAD_WIDTH+1) : G_AXI_RPAYLOAD_WIDTH;
    localparam integer P_R_TDM_WIDTH = P_R_EVEN_WIDTH/2;
    localparam integer P_R_SLR_WIDTH = (C_REG_CONFIG_R == 13) ? P_R_TDM_WIDTH : G_AXI_RPAYLOAD_WIDTH;
    
    wire [P_R_SLR_WIDTH-1:0] slr_rpayload;
    wire slr_rhandshake;
    wire slr_rready;
        
    axi_register_slice_v2_1_14_source_region_slr #(
      .C_FAMILY     ( C_FAMILY         ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_R       ) ,
      .C_DATA_WIDTH ( G_AXI_RPAYLOAD_WIDTH ) ,
      .C_SLR_WIDTH  ( P_R_SLR_WIDTH )
    )
    slr_source_r (
      .ACLK           ( aclk            ) ,
      .ACLK2X         ( aclk2x            ) ,
      .ARESET         ( reset        ) ,
      .S_PAYLOAD_DATA ( m_rpayload ) ,
      .S_VALID        ( m_axi_rvalid   ) ,
      .S_READY        ( m_axi_rready   ) ,
      .laguna_m_payload   ( slr_rpayload ) , 
      .laguna_m_handshake ( slr_rhandshake   ) ,
      .m_ready            ( slr_rready   )
    );

    axi_register_slice_v2_1_14_dest_region_slr #(
      .C_FAMILY     ( C_FAMILY         ) ,
      .C_REG_CONFIG ( C_REG_CONFIG_R       ) ,
      .C_DATA_WIDTH ( G_AXI_RPAYLOAD_WIDTH ) ,
      .C_SLR_WIDTH  ( P_R_SLR_WIDTH )
    )
    slr_dest_r (
      .ACLK           ( aclk            ) ,
      .ACLK2X         ( aclk2x            ) ,
      .ARESET         ( reset        ) ,
      .laguna_s_payload   ( slr_rpayload ) ,
      .laguna_s_handshake ( slr_rhandshake   ) ,
      .s_ready            ( slr_rready   ) ,
      .M_PAYLOAD_DATA ( s_rpayload ) , 
      .M_VALID        ( s_axi_rvalid   ) ,
      .M_READY        ( s_axi_rready   )
    );
  end  // gen_r

  axi_infrastructure_v1_1_0_vector2axi #( 
    .C_AXI_PROTOCOL                ( C_AXI_PROTOCOL                ) ,
    .C_AXI_ID_WIDTH                ( C_AXI_ID_WIDTH                ) ,
    .C_AXI_ADDR_WIDTH              ( C_AXI_ADDR_WIDTH              ) ,
    .C_AXI_DATA_WIDTH              ( C_AXI_DATA_WIDTH              ) ,
    .C_AXI_SUPPORTS_USER_SIGNALS   ( C_AXI_SUPPORTS_USER_SIGNALS   ) ,
    .C_AXI_SUPPORTS_REGION_SIGNALS ( C_AXI_SUPPORTS_REGION_SIGNALS ) ,
    .C_AXI_AWUSER_WIDTH            ( C_AXI_AWUSER_WIDTH            ) ,
    .C_AXI_ARUSER_WIDTH            ( C_AXI_ARUSER_WIDTH            ) ,
    .C_AXI_WUSER_WIDTH             ( C_AXI_WUSER_WIDTH             ) ,
    .C_AXI_RUSER_WIDTH             ( C_AXI_RUSER_WIDTH             ) ,
    .C_AXI_BUSER_WIDTH             ( C_AXI_BUSER_WIDTH             ) ,
    .C_AWPAYLOAD_WIDTH             ( G_AXI_AWPAYLOAD_WIDTH         ) ,
    .C_WPAYLOAD_WIDTH              ( G_AXI_WPAYLOAD_WIDTH          ) ,
    .C_BPAYLOAD_WIDTH              ( G_AXI_BPAYLOAD_WIDTH          ) ,
    .C_ARPAYLOAD_WIDTH             ( G_AXI_ARPAYLOAD_WIDTH         ) ,
    .C_RPAYLOAD_WIDTH              ( G_AXI_RPAYLOAD_WIDTH          ) 
  )
  axi_infrastructure_v1_1_0_vector2axi_0 ( 
    .m_awpayload    ( m_awpayload    ) ,
    .m_wpayload     ( m_wpayload     ) ,
    .m_bpayload     ( m_bpayload     ) ,
    .m_arpayload    ( m_arpayload    ) ,
    .m_rpayload     ( m_rpayload     ) ,
    .m_axi_awid     ( m_axi_awid     ) ,
    .m_axi_awaddr   ( m_axi_awaddr   ) ,
    .m_axi_awlen    ( m_axi_awlen    ) ,
    .m_axi_awsize   ( m_axi_awsize   ) ,
    .m_axi_awburst  ( m_axi_awburst  ) ,
    .m_axi_awlock   ( m_axi_awlock   ) ,
    .m_axi_awcache  ( m_axi_awcache  ) ,
    .m_axi_awprot   ( m_axi_awprot   ) ,
    .m_axi_awqos    ( m_axi_awqos    ) ,
    .m_axi_awuser   ( m_axi_awuser   ) ,
    .m_axi_awregion ( m_axi_awregion ) ,
    .m_axi_wid      ( m_axi_wid      ) ,
    .m_axi_wdata    ( m_axi_wdata    ) ,
    .m_axi_wstrb    ( m_axi_wstrb    ) ,
    .m_axi_wlast    ( m_axi_wlast    ) ,
    .m_axi_wuser    ( m_axi_wuser    ) ,
    .m_axi_bid      ( m_axi_bid      ) ,
    .m_axi_bresp    ( m_axi_bresp    ) ,
    .m_axi_buser    ( m_axi_buser    ) ,
    .m_axi_arid     ( m_axi_arid     ) ,
    .m_axi_araddr   ( m_axi_araddr   ) ,
    .m_axi_arlen    ( m_axi_arlen    ) ,
    .m_axi_arsize   ( m_axi_arsize   ) ,
    .m_axi_arburst  ( m_axi_arburst  ) ,
    .m_axi_arlock   ( m_axi_arlock   ) ,
    .m_axi_arcache  ( m_axi_arcache  ) ,
    .m_axi_arprot   ( m_axi_arprot   ) ,
    .m_axi_arqos    ( m_axi_arqos    ) ,
    .m_axi_aruser   ( m_axi_aruser   ) ,
    .m_axi_arregion ( m_axi_arregion ) ,
    .m_axi_rid      ( m_axi_rid      ) ,
    .m_axi_rdata    ( m_axi_rdata    ) ,
    .m_axi_rresp    ( m_axi_rresp    ) ,
    .m_axi_rlast    ( m_axi_rlast    ) ,
    .m_axi_ruser    ( m_axi_ruser    ) 
  );

endgenerate
endmodule // axi_register_slice



