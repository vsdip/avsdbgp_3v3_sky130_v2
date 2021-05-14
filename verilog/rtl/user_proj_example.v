// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_proj_example
 *
 * This is an example of a (trivially simple) user project,
 * showing how the user project can connect to the logic
 * analyzer, the wishbone bus, and the I/O pads.
 *
 * This project generates an integer count, which is output
 * on the user area GPIO pads (digital output only).  The
 * wishbone connection allows the project to be controlled
 * (start and stop) from the management SoC program.
 *
 * See the testbenches in directory "mprj_counter" for the
 * example programs that drive this user project.  The three
 * testbenches are "io_ports", "la_test1", and "la_test2".
 *
 *-------------------------------------------------------------
 */

module user_proj_example #(
    parameter BITS = 32
)(
`ifdef USE_POWER_PINS

    inout vdda2,	// User area 2 3.3V supply
    inout vssa2,	// User area 2 analog ground

`endif



    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    inout [`MPRJ_IO_PADS-10:0] analog_io

);
    
    wire Enable;
    wire real Vref;
    
    // IO
    assign io_in[23] = Enable;
    assign analog_io[16] = Vref;


    avsdbgp_3v3_sky130_v2 #(
        .BITS(BITS)
    ) avsdbgp_3v3_sky130_v2 (
        .EN(Enable),
        .VBGP(Vref)
        );

endmodule

module avsdbgp_3v3_sky130_v2 #(
    parameter BITS = 32
)(

  input EN,
  output VBGP

);

  reg real VBGP;

  initial begin
     if (EN == 1'b1) begin
        VBGP <= 1.19;
     end else begin
        VBGP <= 0.0;
     end
  end

  always @(EN) begin
     if (EN == 1'b1) begin
        VBGP <= 1.19;
     end else begin
        VBGP <= 0.0;
     end
  end

endmodule
`default_nettype wire
