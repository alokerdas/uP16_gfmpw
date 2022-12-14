module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    vssa1,
    vdda1,
    vssd2,
    vccd2,
    vssd1,
    vccd1,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 input vssa1;
 input vdda1;
 input vssd2;
 input vccd2;
 input vssd1;
 input vccd1;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [63:0] la_data_in;
 output [63:0] la_data_out;
 input [63:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire \adr_cpu[0] ;
 wire \adr_cpu[10] ;
 wire \adr_cpu[11] ;
 wire \adr_cpu[1] ;
 wire \adr_cpu[2] ;
 wire \adr_cpu[3] ;
 wire \adr_cpu[4] ;
 wire \adr_cpu[5] ;
 wire \adr_cpu[6] ;
 wire \adr_cpu[7] ;
 wire \adr_cpu[8] ;
 wire \adr_cpu[9] ;
 wire \adr_mem[0] ;
 wire \adr_mem[1] ;
 wire \adr_mem[2] ;
 wire \adr_mem[3] ;
 wire \adr_mem[4] ;
 wire \adr_mem[5] ;
 wire \adr_mem[6] ;
 wire \adr_mem[7] ;
 wire \adr_mem[8] ;
 wire clk;
 wire \cpdatin[0] ;
 wire \cpdatin[10] ;
 wire \cpdatin[11] ;
 wire \cpdatin[12] ;
 wire \cpdatin[13] ;
 wire \cpdatin[14] ;
 wire \cpdatin[15] ;
 wire \cpdatin[1] ;
 wire \cpdatin[2] ;
 wire \cpdatin[3] ;
 wire \cpdatin[4] ;
 wire \cpdatin[5] ;
 wire \cpdatin[6] ;
 wire \cpdatin[7] ;
 wire \cpdatin[8] ;
 wire \cpdatin[9] ;
 wire \cpdatout[0] ;
 wire \cpdatout[10] ;
 wire \cpdatout[11] ;
 wire \cpdatout[12] ;
 wire \cpdatout[13] ;
 wire \cpdatout[14] ;
 wire \cpdatout[15] ;
 wire \cpdatout[1] ;
 wire \cpdatout[2] ;
 wire \cpdatout[3] ;
 wire \cpdatout[4] ;
 wire \cpdatout[5] ;
 wire \cpdatout[6] ;
 wire \cpdatout[7] ;
 wire \cpdatout[8] ;
 wire \cpdatout[9] ;
 wire cpuen;
 wire cpurw;
 wire endisp;
 wire enkbd;
 wire \memdatin0[0] ;
 wire \memdatin0[10] ;
 wire \memdatin0[11] ;
 wire \memdatin0[12] ;
 wire \memdatin0[13] ;
 wire \memdatin0[14] ;
 wire \memdatin0[15] ;
 wire \memdatin0[1] ;
 wire \memdatin0[2] ;
 wire \memdatin0[3] ;
 wire \memdatin0[4] ;
 wire \memdatin0[5] ;
 wire \memdatin0[6] ;
 wire \memdatin0[7] ;
 wire \memdatin0[8] ;
 wire \memdatin0[9] ;
 wire \memdatin1[0] ;
 wire \memdatin1[10] ;
 wire \memdatin1[11] ;
 wire \memdatin1[12] ;
 wire \memdatin1[13] ;
 wire \memdatin1[14] ;
 wire \memdatin1[15] ;
 wire \memdatin1[1] ;
 wire \memdatin1[2] ;
 wire \memdatin1[3] ;
 wire \memdatin1[4] ;
 wire \memdatin1[5] ;
 wire \memdatin1[6] ;
 wire \memdatin1[7] ;
 wire \memdatin1[8] ;
 wire \memdatin1[9] ;
 wire \memdatin2[0] ;
 wire \memdatin2[10] ;
 wire \memdatin2[11] ;
 wire \memdatin2[12] ;
 wire \memdatin2[13] ;
 wire \memdatin2[14] ;
 wire \memdatin2[15] ;
 wire \memdatin2[1] ;
 wire \memdatin2[2] ;
 wire \memdatin2[3] ;
 wire \memdatin2[4] ;
 wire \memdatin2[5] ;
 wire \memdatin2[6] ;
 wire \memdatin2[7] ;
 wire \memdatin2[8] ;
 wire \memdatin2[9] ;
 wire \memdatin3[0] ;
 wire \memdatin3[10] ;
 wire \memdatin3[11] ;
 wire \memdatin3[12] ;
 wire \memdatin3[13] ;
 wire \memdatin3[14] ;
 wire \memdatin3[15] ;
 wire \memdatin3[1] ;
 wire \memdatin3[2] ;
 wire \memdatin3[3] ;
 wire \memdatin3[4] ;
 wire \memdatin3[5] ;
 wire \memdatin3[6] ;
 wire \memdatin3[7] ;
 wire \memdatin3[8] ;
 wire \memdatin3[9] ;
 wire \memdatout[0] ;
 wire \memdatout[10] ;
 wire \memdatout[11] ;
 wire \memdatout[12] ;
 wire \memdatout[13] ;
 wire \memdatout[14] ;
 wire \memdatout[15] ;
 wire \memdatout[1] ;
 wire \memdatout[2] ;
 wire \memdatout[3] ;
 wire \memdatout[4] ;
 wire \memdatout[5] ;
 wire \memdatout[6] ;
 wire \memdatout[7] ;
 wire \memdatout[8] ;
 wire \memdatout[9] ;
 wire \memenb[0] ;
 wire \memenb[1] ;
 wire \memenb[2] ;
 wire \memenb[3] ;
 wire memrwb;
 wire rst;

 cpu cpu0 (.clkin(clk),
    .en(cpuen),
    .en_inp(enkbd),
    .en_out(endisp),
    .rdwr(cpurw),
    .rst(rst),
    .addr({\adr_cpu[11] ,
    \adr_cpu[10] ,
    \adr_cpu[9] ,
    \adr_cpu[8] ,
    \adr_cpu[7] ,
    \adr_cpu[6] ,
    \adr_cpu[5] ,
    \adr_cpu[4] ,
    \adr_cpu[3] ,
    \adr_cpu[2] ,
    \adr_cpu[1] ,
    \adr_cpu[0] }),
    .datain({\cpdatin[15] ,
    \cpdatin[14] ,
    \cpdatin[13] ,
    \cpdatin[12] ,
    \cpdatin[11] ,
    \cpdatin[10] ,
    \cpdatin[9] ,
    \cpdatin[8] ,
    \cpdatin[7] ,
    \cpdatin[6] ,
    \cpdatin[5] ,
    \cpdatin[4] ,
    \cpdatin[3] ,
    \cpdatin[2] ,
    \cpdatin[1] ,
    \cpdatin[0] }),
    .dataout({\cpdatout[15] ,
    \cpdatout[14] ,
    \cpdatout[13] ,
    \cpdatout[12] ,
    \cpdatout[11] ,
    \cpdatout[10] ,
    \cpdatout[9] ,
    \cpdatout[8] ,
    \cpdatout[7] ,
    \cpdatout[6] ,
    \cpdatout[5] ,
    \cpdatout[4] ,
    \cpdatout[3] ,
    \cpdatout[2] ,
    \cpdatout[1] ,
    \cpdatout[0] }),
    .display({io_out[29],
    io_out[28],
    io_out[27],
    io_out[26],
    io_out[25],
    io_out[24],
    io_out[23],
    io_out[22]}),
    .keyboard({io_in[37],
    io_in[36],
    io_in[35],
    io_in[34],
    io_in[33],
    io_in[32],
    io_in[31],
    io_in[30]}));
 soc_config mprj (.en_display(endisp),
    .en_from_cpu(cpuen),
    .en_keyboard(enkbd),
    .rw_from_cpu(cpurw),
    .rw_to_mem(memrwb),
    .soc_clk(clk),
    .soc_rst(rst),
    .user_clock2(user_clock2),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .wbs_ack_o(wbs_ack_o),
    .wbs_cyc_i(wbs_cyc_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_we_i(wbs_we_i),
    .addr_from_cpu({\adr_cpu[11] ,
    \adr_cpu[10] ,
    \adr_cpu[9] ,
    \adr_cpu[8] ,
    \adr_cpu[7] ,
    \adr_cpu[6] ,
    \adr_cpu[5] ,
    \adr_cpu[4] ,
    \adr_cpu[3] ,
    \adr_cpu[2] ,
    \adr_cpu[1] ,
    \adr_cpu[0] }),
    .addr_to_mem({\adr_mem[8] ,
    \adr_mem[7] ,
    \adr_mem[6] ,
    \adr_mem[5] ,
    \adr_mem[4] ,
    \adr_mem[3] ,
    \adr_mem[2] ,
    \adr_mem[1] ,
    \adr_mem[0] }),
    .data_from_cpu({\cpdatout[15] ,
    \cpdatout[14] ,
    \cpdatout[13] ,
    \cpdatout[12] ,
    \cpdatout[11] ,
    \cpdatout[10] ,
    \cpdatout[9] ,
    \cpdatout[8] ,
    \cpdatout[7] ,
    \cpdatout[6] ,
    \cpdatout[5] ,
    \cpdatout[4] ,
    \cpdatout[3] ,
    \cpdatout[2] ,
    \cpdatout[1] ,
    \cpdatout[0] }),
    .data_from_mem0({\memdatin0[15] ,
    \memdatin0[14] ,
    \memdatin0[13] ,
    \memdatin0[12] ,
    \memdatin0[11] ,
    \memdatin0[10] ,
    \memdatin0[9] ,
    \memdatin0[8] ,
    \memdatin0[7] ,
    \memdatin0[6] ,
    \memdatin0[5] ,
    \memdatin0[4] ,
    \memdatin0[3] ,
    \memdatin0[2] ,
    \memdatin0[1] ,
    \memdatin0[0] }),
    .data_from_mem1({\memdatin1[15] ,
    \memdatin1[14] ,
    \memdatin1[13] ,
    \memdatin1[12] ,
    \memdatin1[11] ,
    \memdatin1[10] ,
    \memdatin1[9] ,
    \memdatin1[8] ,
    \memdatin1[7] ,
    \memdatin1[6] ,
    \memdatin1[5] ,
    \memdatin1[4] ,
    \memdatin1[3] ,
    \memdatin1[2] ,
    \memdatin1[1] ,
    \memdatin1[0] }),
    .data_from_mem2({\memdatin2[15] ,
    \memdatin2[14] ,
    \memdatin2[13] ,
    \memdatin2[12] ,
    \memdatin2[11] ,
    \memdatin2[10] ,
    \memdatin2[9] ,
    \memdatin2[8] ,
    \memdatin2[7] ,
    \memdatin2[6] ,
    \memdatin2[5] ,
    \memdatin2[4] ,
    \memdatin2[3] ,
    \memdatin2[2] ,
    \memdatin2[1] ,
    \memdatin2[0] }),
    .data_from_mem3({\memdatin3[15] ,
    \memdatin3[14] ,
    \memdatin3[13] ,
    \memdatin3[12] ,
    \memdatin3[11] ,
    \memdatin3[10] ,
    \memdatin3[9] ,
    \memdatin3[8] ,
    \memdatin3[7] ,
    \memdatin3[6] ,
    \memdatin3[5] ,
    \memdatin3[4] ,
    \memdatin3[3] ,
    \memdatin3[2] ,
    \memdatin3[1] ,
    \memdatin3[0] }),
    .data_to_cpu({\cpdatin[15] ,
    \cpdatin[14] ,
    \cpdatin[13] ,
    \cpdatin[12] ,
    \cpdatin[11] ,
    \cpdatin[10] ,
    \cpdatin[9] ,
    \cpdatin[8] ,
    \cpdatin[7] ,
    \cpdatin[6] ,
    \cpdatin[5] ,
    \cpdatin[4] ,
    \cpdatin[3] ,
    \cpdatin[2] ,
    \cpdatin[1] ,
    \cpdatin[0] }),
    .data_to_mem({\memdatout[15] ,
    \memdatout[14] ,
    \memdatout[13] ,
    \memdatout[12] ,
    \memdatout[11] ,
    \memdatout[10] ,
    \memdatout[9] ,
    \memdatout[8] ,
    \memdatout[7] ,
    \memdatout[6] ,
    \memdatout[5] ,
    \memdatout[4] ,
    \memdatout[3] ,
    \memdatout[2] ,
    \memdatout[1] ,
    \memdatout[0] }),
    .en_to_memB({\memenb[3] ,
    \memenb[2] ,
    \memenb[1] ,
    \memenb[0] }),
    .io_in({io_in[37],
    io_in[36],
    io_in[35],
    io_in[34],
    io_in[33],
    io_in[32],
    io_in[31],
    io_in[30],
    io_in[29],
    io_in[28],
    io_in[27],
    io_in[26],
    io_in[25],
    io_in[24],
    io_in[23],
    io_in[22],
    io_in[21],
    io_in[20],
    io_in[19],
    io_in[18],
    io_in[17],
    io_in[16],
    io_in[15],
    io_in[14],
    io_in[13],
    io_in[12],
    io_in[11],
    io_in[10],
    io_in[9],
    io_in[8],
    io_in[7],
    io_in[6],
    io_in[5],
    io_in[4],
    io_in[3],
    io_in[2],
    io_in[1],
    io_in[0]}),
    .io_oeb({io_oeb[37],
    io_oeb[36],
    io_oeb[35],
    io_oeb[34],
    io_oeb[33],
    io_oeb[32],
    io_oeb[31],
    io_oeb[30],
    io_oeb[29],
    io_oeb[28],
    io_oeb[27],
    io_oeb[26],
    io_oeb[25],
    io_oeb[24],
    io_oeb[23],
    io_oeb[22],
    io_oeb[21],
    io_oeb[20],
    io_oeb[19],
    io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13],
    io_oeb[12],
    io_oeb[11],
    io_oeb[10],
    io_oeb[9],
    io_oeb[8],
    io_oeb[7],
    io_oeb[6],
    io_oeb[5],
    io_oeb[4],
    io_oeb[3],
    io_oeb[2],
    io_oeb[1],
    io_oeb[0]}),
    .io_out({io_out[37],
    io_out[36],
    io_out[35],
    io_out[34],
    io_out[33],
    io_out[32],
    io_out[31],
    io_out[30],
    io_out[29],
    io_out[28],
    io_out[27],
    io_out[26],
    io_out[25],
    io_out[24],
    io_out[23],
    io_out[22],
    io_out[21],
    io_out[20],
    io_out[19],
    io_out[18],
    io_out[17],
    io_out[16],
    io_out[15],
    io_out[14],
    io_out[13],
    io_out[12],
    io_out[11],
    io_out[10],
    io_out[9],
    io_out[8],
    io_out[7],
    io_out[6],
    io_out[5],
    io_out[4],
    io_out[3],
    io_out[2],
    io_out[1],
    io_out[0]}),
    .irq({user_irq[2],
    user_irq[1],
    user_irq[0]}),
    .la_data_in({la_data_in[63],
    la_data_in[62],
    la_data_in[61],
    la_data_in[60],
    la_data_in[59],
    la_data_in[58],
    la_data_in[57],
    la_data_in[56],
    la_data_in[55],
    la_data_in[54],
    la_data_in[53],
    la_data_in[52],
    la_data_in[51],
    la_data_in[50],
    la_data_in[49],
    la_data_in[48],
    la_data_in[47],
    la_data_in[46],
    la_data_in[45],
    la_data_in[44],
    la_data_in[43],
    la_data_in[42],
    la_data_in[41],
    la_data_in[40],
    la_data_in[39],
    la_data_in[38],
    la_data_in[37],
    la_data_in[36],
    la_data_in[35],
    la_data_in[34],
    la_data_in[33],
    la_data_in[32],
    la_data_in[31],
    la_data_in[30],
    la_data_in[29],
    la_data_in[28],
    la_data_in[27],
    la_data_in[26],
    la_data_in[25],
    la_data_in[24],
    la_data_in[23],
    la_data_in[22],
    la_data_in[21],
    la_data_in[20],
    la_data_in[19],
    la_data_in[18],
    la_data_in[17],
    la_data_in[16],
    la_data_in[15],
    la_data_in[14],
    la_data_in[13],
    la_data_in[12],
    la_data_in[11],
    la_data_in[10],
    la_data_in[9],
    la_data_in[8],
    la_data_in[7],
    la_data_in[6],
    la_data_in[5],
    la_data_in[4],
    la_data_in[3],
    la_data_in[2],
    la_data_in[1],
    la_data_in[0]}),
    .la_data_out({la_data_out[63],
    la_data_out[62],
    la_data_out[61],
    la_data_out[60],
    la_data_out[59],
    la_data_out[58],
    la_data_out[57],
    la_data_out[56],
    la_data_out[55],
    la_data_out[54],
    la_data_out[53],
    la_data_out[52],
    la_data_out[51],
    la_data_out[50],
    la_data_out[49],
    la_data_out[48],
    la_data_out[47],
    la_data_out[46],
    la_data_out[45],
    la_data_out[44],
    la_data_out[43],
    la_data_out[42],
    la_data_out[41],
    la_data_out[40],
    la_data_out[39],
    la_data_out[38],
    la_data_out[37],
    la_data_out[36],
    la_data_out[35],
    la_data_out[34],
    la_data_out[33],
    la_data_out[32],
    la_data_out[31],
    la_data_out[30],
    la_data_out[29],
    la_data_out[28],
    la_data_out[27],
    la_data_out[26],
    la_data_out[25],
    la_data_out[24],
    la_data_out[23],
    la_data_out[22],
    la_data_out[21],
    la_data_out[20],
    la_data_out[19],
    la_data_out[18],
    la_data_out[17],
    la_data_out[16],
    la_data_out[15],
    la_data_out[14],
    la_data_out[13],
    la_data_out[12],
    la_data_out[11],
    la_data_out[10],
    la_data_out[9],
    la_data_out[8],
    la_data_out[7],
    la_data_out[6],
    la_data_out[5],
    la_data_out[4],
    la_data_out[3],
    la_data_out[2],
    la_data_out[1],
    la_data_out[0]}),
    .la_oenb({la_oenb[63],
    la_oenb[62],
    la_oenb[61],
    la_oenb[60],
    la_oenb[59],
    la_oenb[58],
    la_oenb[57],
    la_oenb[56],
    la_oenb[55],
    la_oenb[54],
    la_oenb[53],
    la_oenb[52],
    la_oenb[51],
    la_oenb[50],
    la_oenb[49],
    la_oenb[48],
    la_oenb[47],
    la_oenb[46],
    la_oenb[45],
    la_oenb[44],
    la_oenb[43],
    la_oenb[42],
    la_oenb[41],
    la_oenb[40],
    la_oenb[39],
    la_oenb[38],
    la_oenb[37],
    la_oenb[36],
    la_oenb[35],
    la_oenb[34],
    la_oenb[33],
    la_oenb[32],
    la_oenb[31],
    la_oenb[30],
    la_oenb[29],
    la_oenb[28],
    la_oenb[27],
    la_oenb[26],
    la_oenb[25],
    la_oenb[24],
    la_oenb[23],
    la_oenb[22],
    la_oenb[21],
    la_oenb[20],
    la_oenb[19],
    la_oenb[18],
    la_oenb[17],
    la_oenb[16],
    la_oenb[15],
    la_oenb[14],
    la_oenb[13],
    la_oenb[12],
    la_oenb[11],
    la_oenb[10],
    la_oenb[9],
    la_oenb[8],
    la_oenb[7],
    la_oenb[6],
    la_oenb[5],
    la_oenb[4],
    la_oenb[3],
    la_oenb[2],
    la_oenb[1],
    la_oenb[0]}),
    .wbs_adr_i({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .wbs_dat_i({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16],
    wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .wbs_dat_o({wbs_dat_o[31],
    wbs_dat_o[30],
    wbs_dat_o[29],
    wbs_dat_o[28],
    wbs_dat_o[27],
    wbs_dat_o[26],
    wbs_dat_o[25],
    wbs_dat_o[24],
    wbs_dat_o[23],
    wbs_dat_o[22],
    wbs_dat_o[21],
    wbs_dat_o[20],
    wbs_dat_o[19],
    wbs_dat_o[18],
    wbs_dat_o[17],
    wbs_dat_o[16],
    wbs_dat_o[15],
    wbs_dat_o[14],
    wbs_dat_o[13],
    wbs_dat_o[12],
    wbs_dat_o[11],
    wbs_dat_o[10],
    wbs_dat_o[9],
    wbs_dat_o[8],
    wbs_dat_o[7],
    wbs_dat_o[6],
    wbs_dat_o[5],
    wbs_dat_o[4],
    wbs_dat_o[3],
    wbs_dat_o[2],
    wbs_dat_o[1],
    wbs_dat_o[0]}),
    .wbs_sel_i({wbs_sel_i[3],
    wbs_sel_i[2],
    wbs_sel_i[1],
    wbs_sel_i[0]}));
endmodule
