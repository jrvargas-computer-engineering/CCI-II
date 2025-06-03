module USFFT64_2B_TOP
(
  input CLK, RST, ED, START, dft_shift_enable, dft_scan_input_1, dft_scan_input_2,
  input [3:0] SHIFT,
  input [15:0] DR, DI,
  output RDY, OVF1, OVF2, dft_scan_output_1, dft_scan_output_2,
  output [5:0] ADDR,
  output [18:0] DOR, DOI
);

  wire CLK_C, RST_C, ED_C, START_C, dft_shift_enable_C, dft_scan_input_1_C, dft_scan_input_2_C;
  wire [3:0] SHIFT_C;
  wire [15:0] DR_C, DI_C;
  wire RDY_C, OVF1_C, OVF2_C, dft_scan_output_1_C, dft_scan_output_2_C;
  wire [5:0] ADDR_C;
  wire [18:0] DOR_C, DOI_C;

  USFFT64_2B_RING u_ring (
    .CLK(CLK), .RST(RST), .ED(ED), .START(START), .SHIFT(SHIFT), .DR(DR), .DI(DI),
    .RDY(RDY), .OVF1(OVF1), .OVF2(OVF2),
    .ADDR(ADDR), .DOR(DOR), .DOI(DOI),
    .CLK_C(CLK_C), .RST_C(RST_C), .ED_C(ED_C), .START_C(START_C),
    .SHIFT_C(SHIFT_C), .DR_C(DR_C), .DI_C(DI_C),
    .RDY_C(RDY_C), .OVF1_C(OVF1_C), .OVF2_C(OVF2_C),
    .ADDR_C(ADDR_C), .DOR_C(DOR_C), .DOI_C(DOI_C),
    .dft_shift_enable(dft_shift_enable), 
    .dft_shift_enable_C(dft_shift_enable_C),
    .dft_scan_input_1(dft_scan_input_1),
    .dft_scan_input_1_C(dft_scan_input_1_C),
    .dft_scan_input_2(dft_scan_input_2),
    .dft_scan_input_2_C(dft_scan_input_2_C),
    .dft_scan_output_1(dft_scan_output_1),
    .dft_scan_output_1_C(dft_scan_output_1_C),
    .dft_scan_output_2(dft_scan_output_2),
    .dft_scan_output_2_C(dft_scan_output_2_C)
  );

  USFFT64_2B u_dft (
    .CLK(CLK_C), .RST(RST_C), .ED(ED_C), .START(START_C), .SHIFT(SHIFT_C), 
    .DR(DR_C), .DI(DI_C), .RDY(RDY_C), .OVF1(OVF1_C), .OVF2(OVF2_C),
    .ADDR(ADDR_C), .DOR(DOR_C), .DOI(DOI_C),
    .dft_shift_enable(dft_shift_enable_C),
    .dft_scan_input_1(dft_scan_input_1_C),
    .dft_scan_input_2(dft_scan_input_2_C),
    .dft_scan_output_1(dft_scan_output_1_C),
    .dft_scan_output_2(dft_scan_output_2_C)
  );

endmodule
