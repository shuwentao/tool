export "DPI-C" task write_split_mode_Mem;
export "DPI-C" task write_cu_data_mvd_Mem;
export "DPI-C" task write_cu_data_pb_part_Mem;
export "DPI-C" task write_cu_data_tb_part_Mem;
export "DPI-C" task write_cu_data_pred_mode_Mem;
export "DPI-C" task write_cu_data_mvr_idx_Mem;
export "DPI-C" task write_cu_data_umve_flag_Mem;
export "DPI-C" task write_cu_data_umve_idx_Mem;
export "DPI-C" task write_cu_data_skip_idx_Mem;
export "DPI-C" task write_cu_data_affine_flag_Mem;
export "DPI-C" task write_cu_data_ipf_flag_Mem;
export "DPI-C" task write_cu_data_mvp_from_hmvp_flag_Mem;
export "DPI-C" task write_cu_data_mpm_Mem;
export "DPI-C" task write_cu_data_ipm_Mem;
export "DPI-C" task write_cu_data_refi_Mem;
export "DPI-C" task write_cu_data_num_nz_coef_Mem;
export "DPI-C" task write_rpm_num_refp_Mem;
export "DPI-C" task write_coef_Mem;
export "DPI-C" task write_modeIdc_Mem;
export "DPI-C" task write_typeIdc_Mem;
export "DPI-C" task write_startBand_Mem;
export "DPI-C" task write_startBand2_Mem;
export "DPI-C" task write_deltaband_Mem;
export "DPI-C" task write_slice_sao_enable_Mem;
export "DPI-C" task write_offset_Mem;
export "DPI-C" task write_me_line_map_ptr_map_scu_inner_Mem;
export "DPI-C" task write_me_line_map_ptr_map_cu_mode_inner_Mem;
export "DPI-C" task write_me_line_map_ptr_map_scu_above_line_Mem;
export "DPI-C" task write_me_line_map_ptr_map_cu_mode_above_line_Mem;
 wire [13:0] split_mode_addr;
 wire        split_mode_ce;
 wire [7:0] split_mode_dout;
 wire [9:0] cu_data_mvd_addr;
 wire        cu_data_mvd_ce;
 wire [15:0] cu_data_mvd_dout;
 wire [7:0] cu_data_pb_part_addr;
 wire        cu_data_pb_part_ce;
 wire [31:0] cu_data_pb_part_dout;
 wire [7:0] cu_data_tb_part_addr;
 wire        cu_data_tb_part_ce;
 wire [31:0] cu_data_tb_part_dout;
 wire [7:0] cu_data_pred_mode_addr;
 wire        cu_data_pred_mode_ce;
 wire [7:0] cu_data_pred_mode_dout;
 wire [7:0] cu_data_mvr_idx_addr;
 wire        cu_data_mvr_idx_ce;
 wire [7:0] cu_data_mvr_idx_dout;
 wire [7:0] cu_data_umve_flag_addr;
 wire        cu_data_umve_flag_ce;
 wire [7:0] cu_data_umve_flag_dout;
 wire [7:0] cu_data_umve_idx_addr;
 wire        cu_data_umve_idx_ce;
 wire [7:0] cu_data_umve_idx_dout;
 wire [7:0] cu_data_skip_idx_addr;
 wire        cu_data_skip_idx_ce;
 wire [7:0] cu_data_skip_idx_dout;
 wire [7:0] cu_data_affine_flag_addr;
 wire        cu_data_affine_flag_ce;
 wire [7:0] cu_data_affine_flag_dout;
 wire [7:0] cu_data_ipf_flag_addr;
 wire        cu_data_ipf_flag_ce;
 wire [7:0] cu_data_ipf_flag_dout;
 wire [7:0] cu_data_mvp_from_hmvp_flag_addr;
 wire        cu_data_mvp_from_hmvp_flag_ce;
 wire [7:0] cu_data_mvp_from_hmvp_flag_dout;
 wire [8:0] cu_data_mpm_addr;
 wire        cu_data_mpm_ce;
 wire [7:0] cu_data_mpm_dout;
 wire [8:0] cu_data_ipm_addr;
 wire        cu_data_ipm_ce;
 wire [7:0] cu_data_ipm_dout;
 wire [8:0] cu_data_refi_addr;
 wire        cu_data_refi_ce;
 wire [7:0] cu_data_refi_dout;
 wire [9:0] cu_data_num_nz_coef_addr;
 wire        cu_data_num_nz_coef_ce;
 wire [31:0] cu_data_num_nz_coef_dout;
 wire [0:0] rpm_num_refp_addr;
 wire        rpm_num_refp_ce;
 wire [31:0] rpm_num_refp_dout;
 wire [13:0] coef_addr;
 wire        coef_ce;
 wire [15:0] coef_dout;
 wire [1:0] modeIdc_addr;
 wire        modeIdc_ce;
 wire [31:0] modeIdc_dout;
 wire [1:0] typeIdc_addr;
 wire        typeIdc_ce;
 wire [31:0] typeIdc_dout;
 wire [1:0] startBand_addr;
 wire        startBand_ce;
 wire [31:0] startBand_dout;
 wire [1:0] startBand2_addr;
 wire        startBand2_ce;
 wire [31:0] startBand2_dout;
 wire [1:0] deltaband_addr;
 wire        deltaband_ce;
 wire [31:0] deltaband_dout;
 wire [1:0] slice_sao_enable_addr;
 wire        slice_sao_enable_ce;
 wire [7:0] slice_sao_enable_dout;
 wire [6:0] offset_addr;
 wire        offset_ce;
 wire [31:0] offset_dout;
 wire [8:0] me_line_map_ptr_map_scu_inner_addr;
 wire        me_line_map_ptr_map_scu_inner_ce;
 wire [31:0] me_line_map_ptr_map_scu_inner_dout;
 wire [8:0] me_line_map_ptr_map_cu_mode_inner_addr;
 wire        me_line_map_ptr_map_cu_mode_inner_ce;
 wire [31:0] me_line_map_ptr_map_cu_mode_inner_dout;
 wire [10:0] me_line_map_ptr_map_scu_above_line_addr;
 wire        me_line_map_ptr_map_scu_above_line_ce;
 wire [31:0] me_line_map_ptr_map_scu_above_line_dout;
 wire [10:0] me_line_map_ptr_map_cu_mode_above_line_addr;
 wire        me_line_map_ptr_map_cu_mode_above_line_ce;
 wire [31:0] me_line_map_ptr_map_cu_mode_above_line_dout;
sim_sram #(
 .ADDR_WITDH(14),
 .DATA_WITDH(8),
 .RAM_DEPTH (8960))
split_mode (
 .clk(clk),
 .addr(split_mode_addr),
 .ce  (split_mode_ce),
 .dout(split_mode_dout)
);
sim_sram #(
 .ADDR_WITDH(10),
 .DATA_WITDH(16),
 .RAM_DEPTH (1024))
cu_data_mvd (
 .clk(clk),
 .addr(cu_data_mvd_addr),
 .ce  (cu_data_mvd_ce),
 .dout(cu_data_mvd_dout)
);
sim_sram #(
 .ADDR_WITDH(8),
 .DATA_WITDH(32),
 .RAM_DEPTH (256))
cu_data_pb_part (
 .clk(clk),
 .addr(cu_data_pb_part_addr),
 .ce  (cu_data_pb_part_ce),
 .dout(cu_data_pb_part_dout)
);
sim_sram #(
 .ADDR_WITDH(8),
 .DATA_WITDH(32),
 .RAM_DEPTH (256))
cu_data_tb_part (
 .clk(clk),
 .addr(cu_data_tb_part_addr),
 .ce  (cu_data_tb_part_ce),
 .dout(cu_data_tb_part_dout)
);
sim_sram #(
 .ADDR_WITDH(8),
 .DATA_WITDH(8),
 .RAM_DEPTH (256))
cu_data_pred_mode (
 .clk(clk),
 .addr(cu_data_pred_mode_addr),
 .ce  (cu_data_pred_mode_ce),
 .dout(cu_data_pred_mode_dout)
);
sim_sram #(
 .ADDR_WITDH(8),
 .DATA_WITDH(8),
 .RAM_DEPTH (256))
cu_data_mvr_idx (
 .clk(clk),
 .addr(cu_data_mvr_idx_addr),
 .ce  (cu_data_mvr_idx_ce),
 .dout(cu_data_mvr_idx_dout)
);
sim_sram #(
 .ADDR_WITDH(8),
 .DATA_WITDH(8),
 .RAM_DEPTH (256))
cu_data_umve_flag (
 .clk(clk),
 .addr(cu_data_umve_flag_addr),
 .ce  (cu_data_umve_flag_ce),
 .dout(cu_data_umve_flag_dout)
);
sim_sram #(
 .ADDR_WITDH(8),
 .DATA_WITDH(8),
 .RAM_DEPTH (256))
cu_data_umve_idx (
 .clk(clk),
 .addr(cu_data_umve_idx_addr),
 .ce  (cu_data_umve_idx_ce),
 .dout(cu_data_umve_idx_dout)
);
sim_sram #(
 .ADDR_WITDH(8),
 .DATA_WITDH(8),
 .RAM_DEPTH (256))
cu_data_skip_idx (
 .clk(clk),
 .addr(cu_data_skip_idx_addr),
 .ce  (cu_data_skip_idx_ce),
 .dout(cu_data_skip_idx_dout)
);
sim_sram #(
 .ADDR_WITDH(8),
 .DATA_WITDH(8),
 .RAM_DEPTH (256))
cu_data_affine_flag (
 .clk(clk),
 .addr(cu_data_affine_flag_addr),
 .ce  (cu_data_affine_flag_ce),
 .dout(cu_data_affine_flag_dout)
);
sim_sram #(
 .ADDR_WITDH(8),
 .DATA_WITDH(8),
 .RAM_DEPTH (256))
cu_data_ipf_flag (
 .clk(clk),
 .addr(cu_data_ipf_flag_addr),
 .ce  (cu_data_ipf_flag_ce),
 .dout(cu_data_ipf_flag_dout)
);
sim_sram #(
 .ADDR_WITDH(8),
 .DATA_WITDH(8),
 .RAM_DEPTH (256))
cu_data_mvp_from_hmvp_flag (
 .clk(clk),
 .addr(cu_data_mvp_from_hmvp_flag_addr),
 .ce  (cu_data_mvp_from_hmvp_flag_ce),
 .dout(cu_data_mvp_from_hmvp_flag_dout)
);
sim_sram #(
 .ADDR_WITDH(9),
 .DATA_WITDH(8),
 .RAM_DEPTH (512))
cu_data_mpm (
 .clk(clk),
 .addr(cu_data_mpm_addr),
 .ce  (cu_data_mpm_ce),
 .dout(cu_data_mpm_dout)
);
sim_sram #(
 .ADDR_WITDH(9),
 .DATA_WITDH(8),
 .RAM_DEPTH (512))
cu_data_ipm (
 .clk(clk),
 .addr(cu_data_ipm_addr),
 .ce  (cu_data_ipm_ce),
 .dout(cu_data_ipm_dout)
);
sim_sram #(
 .ADDR_WITDH(9),
 .DATA_WITDH(8),
 .RAM_DEPTH (512))
cu_data_refi (
 .clk(clk),
 .addr(cu_data_refi_addr),
 .ce  (cu_data_refi_ce),
 .dout(cu_data_refi_dout)
);
sim_sram #(
 .ADDR_WITDH(10),
 .DATA_WITDH(32),
 .RAM_DEPTH (768))
cu_data_num_nz_coef (
 .clk(clk),
 .addr(cu_data_num_nz_coef_addr),
 .ce  (cu_data_num_nz_coef_ce),
 .dout(cu_data_num_nz_coef_dout)
);
sim_sram #(
 .ADDR_WITDH(1),
 .DATA_WITDH(32),
 .RAM_DEPTH (2))
rpm_num_refp (
 .clk(clk),
 .addr(rpm_num_refp_addr),
 .ce  (rpm_num_refp_ce),
 .dout(rpm_num_refp_dout)
);
sim_sram #(
 .ADDR_WITDH(14),
 .DATA_WITDH(16),
 .RAM_DEPTH (12288))
coef (
 .clk(clk),
 .addr(coef_addr),
 .ce  (coef_ce),
 .dout(coef_dout)
);
sim_sram #(
 .ADDR_WITDH(2),
 .DATA_WITDH(32),
 .RAM_DEPTH (3))
modeIdc (
 .clk(clk),
 .addr(modeIdc_addr),
 .ce  (modeIdc_ce),
 .dout(modeIdc_dout)
);
sim_sram #(
 .ADDR_WITDH(2),
 .DATA_WITDH(32),
 .RAM_DEPTH (3))
typeIdc (
 .clk(clk),
 .addr(typeIdc_addr),
 .ce  (typeIdc_ce),
 .dout(typeIdc_dout)
);
sim_sram #(
 .ADDR_WITDH(2),
 .DATA_WITDH(32),
 .RAM_DEPTH (3))
startBand (
 .clk(clk),
 .addr(startBand_addr),
 .ce  (startBand_ce),
 .dout(startBand_dout)
);
sim_sram #(
 .ADDR_WITDH(2),
 .DATA_WITDH(32),
 .RAM_DEPTH (3))
startBand2 (
 .clk(clk),
 .addr(startBand2_addr),
 .ce  (startBand2_ce),
 .dout(startBand2_dout)
);
sim_sram #(
 .ADDR_WITDH(2),
 .DATA_WITDH(32),
 .RAM_DEPTH (3))
deltaband (
 .clk(clk),
 .addr(deltaband_addr),
 .ce  (deltaband_ce),
 .dout(deltaband_dout)
);
sim_sram #(
 .ADDR_WITDH(2),
 .DATA_WITDH(8),
 .RAM_DEPTH (3))
slice_sao_enable (
 .clk(clk),
 .addr(slice_sao_enable_addr),
 .ce  (slice_sao_enable_ce),
 .dout(slice_sao_enable_dout)
);
sim_sram #(
 .ADDR_WITDH(7),
 .DATA_WITDH(32),
 .RAM_DEPTH (96))
offset (
 .clk(clk),
 .addr(offset_addr),
 .ce  (offset_ce),
 .dout(offset_dout)
);
sim_sram #(
 .ADDR_WITDH(9),
 .DATA_WITDH(32),
 .RAM_DEPTH (512))
me_line_map_ptr_map_scu_inner (
 .clk(clk),
 .addr(me_line_map_ptr_map_scu_inner_addr),
 .ce  (me_line_map_ptr_map_scu_inner_ce),
 .dout(me_line_map_ptr_map_scu_inner_dout)
);
sim_sram #(
 .ADDR_WITDH(9),
 .DATA_WITDH(32),
 .RAM_DEPTH (512))
me_line_map_ptr_map_cu_mode_inner (
 .clk(clk),
 .addr(me_line_map_ptr_map_cu_mode_inner_addr),
 .ce  (me_line_map_ptr_map_cu_mode_inner_ce),
 .dout(me_line_map_ptr_map_cu_mode_inner_dout)
);
sim_sram #(
 .ADDR_WITDH(11),
 .DATA_WITDH(32),
 .RAM_DEPTH (1920))
me_line_map_ptr_map_scu_above_line (
 .clk(clk),
 .addr(me_line_map_ptr_map_scu_above_line_addr),
 .ce  (me_line_map_ptr_map_scu_above_line_ce),
 .dout(me_line_map_ptr_map_scu_above_line_dout)
);
sim_sram #(
 .ADDR_WITDH(11),
 .DATA_WITDH(32),
 .RAM_DEPTH (1920))
me_line_map_ptr_map_cu_mode_above_line (
 .clk(clk),
 .addr(me_line_map_ptr_map_cu_mode_above_line_addr),
 .ce  (me_line_map_ptr_map_cu_mode_above_line_ce),
 .dout(me_line_map_ptr_map_cu_mode_above_line_dout)
);
task write_split_mode_Mem(inout int mem[8960]);
  begin
    integer i;
    for(i = 0 ; i < 8960 ; i = i + 1) 
      begin
        split_mode.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_mvd_Mem(inout int mem[1024]);
  begin
    integer i;
    for(i = 0 ; i < 1024 ; i = i + 1) 
      begin
        cu_data_mvd.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_pb_part_Mem(inout int mem[256]);
  begin
    integer i;
    for(i = 0 ; i < 256 ; i = i + 1) 
      begin
        cu_data_pb_part.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_tb_part_Mem(inout int mem[256]);
  begin
    integer i;
    for(i = 0 ; i < 256 ; i = i + 1) 
      begin
        cu_data_tb_part.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_pred_mode_Mem(inout int mem[256]);
  begin
    integer i;
    for(i = 0 ; i < 256 ; i = i + 1) 
      begin
        cu_data_pred_mode.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_mvr_idx_Mem(inout int mem[256]);
  begin
    integer i;
    for(i = 0 ; i < 256 ; i = i + 1) 
      begin
        cu_data_mvr_idx.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_umve_flag_Mem(inout int mem[256]);
  begin
    integer i;
    for(i = 0 ; i < 256 ; i = i + 1) 
      begin
        cu_data_umve_flag.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_umve_idx_Mem(inout int mem[256]);
  begin
    integer i;
    for(i = 0 ; i < 256 ; i = i + 1) 
      begin
        cu_data_umve_idx.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_skip_idx_Mem(inout int mem[256]);
  begin
    integer i;
    for(i = 0 ; i < 256 ; i = i + 1) 
      begin
        cu_data_skip_idx.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_affine_flag_Mem(inout int mem[256]);
  begin
    integer i;
    for(i = 0 ; i < 256 ; i = i + 1) 
      begin
        cu_data_affine_flag.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_ipf_flag_Mem(inout int mem[256]);
  begin
    integer i;
    for(i = 0 ; i < 256 ; i = i + 1) 
      begin
        cu_data_ipf_flag.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_mvp_from_hmvp_flag_Mem(inout int mem[256]);
  begin
    integer i;
    for(i = 0 ; i < 256 ; i = i + 1) 
      begin
        cu_data_mvp_from_hmvp_flag.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_mpm_Mem(inout int mem[512]);
  begin
    integer i;
    for(i = 0 ; i < 512 ; i = i + 1) 
      begin
        cu_data_mpm.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_ipm_Mem(inout int mem[512]);
  begin
    integer i;
    for(i = 0 ; i < 512 ; i = i + 1) 
      begin
        cu_data_ipm.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_refi_Mem(inout int mem[512]);
  begin
    integer i;
    for(i = 0 ; i < 512 ; i = i + 1) 
      begin
        cu_data_refi.mem[i] = mem[i];
      end
  end
endtask
task write_cu_data_num_nz_coef_Mem(inout int mem[768]);
  begin
    integer i;
    for(i = 0 ; i < 768 ; i = i + 1) 
      begin
        cu_data_num_nz_coef.mem[i] = mem[i];
      end
  end
endtask
task write_rpm_num_refp_Mem(inout int mem[2]);
  begin
    integer i;
    for(i = 0 ; i < 2 ; i = i + 1) 
      begin
        rpm_num_refp.mem[i] = mem[i];
      end
  end
endtask
task write_coef_Mem(inout int mem[12288]);
  begin
    integer i;
    for(i = 0 ; i < 12288 ; i = i + 1) 
      begin
        coef.mem[i] = mem[i];
      end
  end
endtask
task write_modeIdc_Mem(inout int mem[3]);
  begin
    integer i;
    for(i = 0 ; i < 3 ; i = i + 1) 
      begin
        modeIdc.mem[i] = mem[i];
      end
  end
endtask
task write_typeIdc_Mem(inout int mem[3]);
  begin
    integer i;
    for(i = 0 ; i < 3 ; i = i + 1) 
      begin
        typeIdc.mem[i] = mem[i];
      end
  end
endtask
task write_startBand_Mem(inout int mem[3]);
  begin
    integer i;
    for(i = 0 ; i < 3 ; i = i + 1) 
      begin
        startBand.mem[i] = mem[i];
      end
  end
endtask
task write_startBand2_Mem(inout int mem[3]);
  begin
    integer i;
    for(i = 0 ; i < 3 ; i = i + 1) 
      begin
        startBand2.mem[i] = mem[i];
      end
  end
endtask
task write_deltaband_Mem(inout int mem[3]);
  begin
    integer i;
    for(i = 0 ; i < 3 ; i = i + 1) 
      begin
        deltaband.mem[i] = mem[i];
      end
  end
endtask
task write_slice_sao_enable_Mem(inout int mem[3]);
  begin
    integer i;
    for(i = 0 ; i < 3 ; i = i + 1) 
      begin
        slice_sao_enable.mem[i] = mem[i];
      end
  end
endtask
task write_offset_Mem(inout int mem[96]);
  begin
    integer i;
    for(i = 0 ; i < 96 ; i = i + 1) 
      begin
        offset.mem[i] = mem[i];
      end
  end
endtask
task write_me_line_map_ptr_map_scu_inner_Mem(inout int mem[512]);
  begin
    integer i;
    for(i = 0 ; i < 512 ; i = i + 1) 
      begin
        me_line_map_ptr_map_scu_inner.mem[i] = mem[i];
      end
  end
endtask
task write_me_line_map_ptr_map_cu_mode_inner_Mem(inout int mem[512]);
  begin
    integer i;
    for(i = 0 ; i < 512 ; i = i + 1) 
      begin
        me_line_map_ptr_map_cu_mode_inner.mem[i] = mem[i];
      end
  end
endtask
task write_me_line_map_ptr_map_scu_above_line_Mem(inout int mem[1920]);
  begin
    integer i;
    for(i = 0 ; i < 1920 ; i = i + 1) 
      begin
        me_line_map_ptr_map_scu_above_line.mem[i] = mem[i];
      end
  end
endtask
task write_me_line_map_ptr_map_cu_mode_above_line_Mem(inout int mem[1920]);
  begin
    integer i;
    for(i = 0 ; i < 1920 ; i = i + 1) 
      begin
        me_line_map_ptr_map_cu_mode_above_line.mem[i] = mem[i];
      end
  end
endtask
