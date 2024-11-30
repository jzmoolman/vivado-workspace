system-genesys2.v:258913:module TLPUF(
system-genesys2.v-258914-  input         clock,
system-genesys2.v-258915-  input         reset,
system-genesys2.v-258916-  output        auto_in_a_ready, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-258917-  input         auto_in_a_valid, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-258918-  input  [1:0]  auto_in_a_bits_size, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-258919-  input  [9:0]  auto_in_a_bits_source, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-258920-  input         auto_in_d_ready, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-258921-  output        auto_in_d_valid, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-258922-  output [1:0]  auto_in_d_bits_size, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-258923-  output [9:0]  auto_in_d_bits_source, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-258924-  output [63:0] auto_in_d_bits_data // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-258925-);
system-genesys2.v-258926-`ifdef RANDOMIZE_REG_INIT
system-genesys2.v-258927-  reg [31:0] _RAND_0;
system-genesys2.v-258928-  reg [31:0] _RAND_1;
system-genesys2.v-258929-`endif // RANDOMIZE_REG_INIT
system-genesys2.v-258930-  reg  r_state; // @[rocket-chip/src/main/scala/devices/tilelink/PUF.scala 43:26]
system-genesys2.v-258931-  reg  r_valid; // @[rocket-chip/src/main/scala/devices/tilelink/PUF.scala 44:26]
system-genesys2.v-258932-  wire  _T_1 = auto_in_d_ready & auto_in_a_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 57:35]
system-genesys2.v-258933-  wire  _T_3 = ~r_state & _T_1; // @[rocket-chip/src/main/scala/devices/tilelink/PUF.scala 50:27]
system-genesys2.v-258934-  wire [7:0] _GEN_1 = ~r_state & _T_1 ? 8'hff : 8'h0; // @[rocket-chip/src/main/scala/devices/tilelink/PUF.scala 50:52 52:14 56:16]
system-genesys2.v-258935-  wire [63:0] w_data = {{56'd0}, _GEN_1}; // @[rocket-chip/src/main/scala/devices/tilelink/PUF.scala 42:22]
system-genesys2.v-258936-  assign auto_in_a_ready = auto_in_d_ready; // @[rocket-chip/src/main/scala/diplomacy/Nodes.scala 1216:17 rocket-chip/src/main/scala/diplomacy/LazyModule.scala 378:16]
system-genesys2.v-258937-  assign auto_in_d_valid = r_valid; // @[rocket-chip/src/main/scala/diplomacy/Nodes.scala 1216:17 rocket-chip/src/main/scala/devices/tilelink/PUF.scala 60:16]
system-genesys2.v-258938-  assign auto_in_d_bits_size = auto_in_a_bits_size; // @[rocket-chip/src/main/scala/diplomacy/Nodes.scala 1216:17 rocket-chip/src/main/scala/diplomacy/LazyModule.scala 378:16]
system-genesys2.v-258939-  assign auto_in_d_bits_source = auto_in_a_bits_source; // @[rocket-chip/src/main/scala/diplomacy/Nodes.scala 1216:17 rocket-chip/src/main/scala/diplomacy/LazyModule.scala 378:16]
system-genesys2.v-258940-  assign auto_in_d_bits_data = w_data; // @[rocket-chip/src/main/scala/tilelink/Edges.scala 795:17 802:15]
system-genesys2.v-258941-  always @(posedge clock) begin
system-genesys2.v-258942-    if (reset) begin // @[rocket-chip/src/main/scala/devices/tilelink/PUF.scala 43:26]
system-genesys2.v-258943-      r_state <= 1'h0; // @[rocket-chip/src/main/scala/devices/tilelink/PUF.scala 43:26]
system-genesys2.v-258944-    end else begin
system-genesys2.v-258945-      r_state <= _T_3;
system-genesys2.v-258946-    end
system-genesys2.v-258947-    if (reset) begin // @[rocket-chip/src/main/scala/devices/tilelink/PUF.scala 44:26]
system-genesys2.v-258948-      r_valid <= 1'h0; // @[rocket-chip/src/main/scala/devices/tilelink/PUF.scala 44:26]
system-genesys2.v-258949-    end else begin
system-genesys2.v-258950-      r_valid <= _T_3;
system-genesys2.v-258951-    end
system-genesys2.v-258952-  end
system-genesys2.v-258953-// Register and memory initialization
system-genesys2.v-258954-`ifdef RANDOMIZE_GARBAGE_ASSIGN
system-genesys2.v-258955-`define RANDOMIZE
system-genesys2.v-258956-`endif
system-genesys2.v-258957-`ifdef RANDOMIZE_INVALID_ASSIGN
system-genesys2.v-258958-`define RANDOMIZE
system-genesys2.v-258959-`endif
system-genesys2.v-258960-`ifdef RANDOMIZE_REG_INIT
system-genesys2.v-258961-`define RANDOMIZE
system-genesys2.v-258962-`endif
system-genesys2.v-258963-`ifdef RANDOMIZE_MEM_INIT
system-genesys2.v-258964-`define RANDOMIZE
system-genesys2.v-258965-`endif
system-genesys2.v-258966-`ifndef RANDOM
system-genesys2.v-258967-`define RANDOM $random
system-genesys2.v-258968-`endif
system-genesys2.v-258969-`ifdef RANDOMIZE_MEM_INIT
system-genesys2.v-258970-  integer initvar;
system-genesys2.v-258971-`endif
system-genesys2.v-258972-`ifndef SYNTHESIS
system-genesys2.v-258973-`ifdef FIRRTL_BEFORE_INITIAL
system-genesys2.v-258974-`FIRRTL_BEFORE_INITIAL
system-genesys2.v-258975-`endif
system-genesys2.v-258976-initial begin
system-genesys2.v-258977-  `ifdef RANDOMIZE
system-genesys2.v-258978-    `ifdef INIT_RANDOM
system-genesys2.v-258979-      `INIT_RANDOM
system-genesys2.v-258980-    `endif
system-genesys2.v-258981-    `ifndef VERILATOR
system-genesys2.v-258982-      `ifdef RANDOMIZE_DELAY
system-genesys2.v-258983-        #`RANDOMIZE_DELAY begin end
system-genesys2.v-258984-      `else
system-genesys2.v-258985-        #0.002 begin end
system-genesys2.v-258986-      `endif
system-genesys2.v-258987-    `endif
system-genesys2.v-258988-`ifdef RANDOMIZE_REG_INIT
system-genesys2.v-258989-  _RAND_0 = {1{`RANDOM}};
system-genesys2.v-258990-  r_state = _RAND_0[0:0];
system-genesys2.v-258991-  _RAND_1 = {1{`RANDOM}};
system-genesys2.v-258992-  r_valid = _RAND_1[0:0];
system-genesys2.v-258993-`endif // RANDOMIZE_REG_INIT
system-genesys2.v-258994-  `endif // RANDOMIZE
system-genesys2.v-258995-end // initial
system-genesys2.v-258996-`ifdef FIRRTL_AFTER_INITIAL
system-genesys2.v-258997-`FIRRTL_AFTER_INITIAL
system-genesys2.v-258998-`endif
system-genesys2.v-258999-`endif // SYNTHESIS
system-genesys2.v-259000-endmodule
system-genesys2.v-259001-module ClockSinkDomain_2(
system-genesys2.v-259002-  output        auto_puf_in_a_ready, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-259003-  input         auto_puf_in_a_valid, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-259004-  input  [1:0]  auto_puf_in_a_bits_size, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-259005-  input  [9:0]  auto_puf_in_a_bits_source, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-259006-  input         auto_puf_in_d_ready, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-259007-  output        auto_puf_in_d_valid, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-259008-  output [1:0]  auto_puf_in_d_bits_size, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-259009-  output [9:0]  auto_puf_in_d_bits_source, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-259010-  output [63:0] auto_puf_in_d_bits_data, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-259011-  input         auto_clock_in_clock, // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-259012-  input         auto_clock_in_reset // @[rocket-chip/src/main/scala/diplomacy/LazyModule.scala 374:18]
system-genesys2.v-259013-);
