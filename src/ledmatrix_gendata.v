module ledmatrix_gendata(
    input               clk_100Hz,
    input               rst_n,
    output reg [63:0]   data
);

    reg     [31:0]      data_in;
    wire    [63:0]      line1, line2, line3, line4, line5, line6, line7, line8;

    ledmatrix_convert matrix_convert(
        .data_in    (data_in),
        .line1      (line1),
        .line2      (line2),
        .line3      (line3),
        .line4      (line4),
        .line5      (line5),
        .line6      (line6),
        .line7      (line7),
        .line8      (line8)
    );

    integer count = 0;

    always @(posedge clk_100Hz) begin
        if (~rst_n)
            count <= 0;
        else begin
            case (count)
                10:     data <= 64'h0900090009000900;        // set-up
                11:     data <= 64'h0A0F0A0F0A0F0A0F;
                12:     data <= 64'h0B070B070B070B07;
                13:     data <= 64'h0C010C010C010C01;
                14:     data <= 64'h0F000F000F000F00;

                100:    begin
                            data_in <= 32'h00313000;        // _10_
                            data <= line1;
                        end
                101:    data <= line2;
                102:    data <= line3;
                103:    data <= line4;
                104:    data <= line5;
                105:    data <= line6;
                106:    data <= line7;
                107:    data <= line8;

                200:    begin
                            data_in <= 32'h00003900;        // __9_
                            data <= line1;
                        end
                201:    data <= line2;
                202:    data <= line3;
                203:    data <= line4;
                204:    data <= line5;
                205:    data <= line6;
                206:    data <= line7;
                207:    data <= line8;

                300:    begin
                            data_in <= 32'h00003800;        // __8_
                            data <= line1;
                        end
                301:    data <= line2;
                302:    data <= line3;
                303:    data <= line4;
                304:    data <= line5;
                305:    data <= line6;
                306:    data <= line7;
                307:    data <= line8;

                400:    begin
                            data_in <= 32'h00003700;        // __7_
                            data <= line1;
                        end
                401:    data <= line2;
                402:    data <= line3;
                403:    data <= line4;
                404:    data <= line5;
                405:    data <= line6;
                406:    data <= line7;
                407:    data <= line8;

                500:    begin
                            data_in <= 32'h00003600;        // __6_
                            data <= line1;
                        end
                501:    data <= line2;
                502:    data <= line3;
                503:    data <= line4;
                504:    data <= line5;
                505:    data <= line6;
                506:    data <= line7;
                507:    data <= line8;

                600:    begin
                            data_in <= 32'h00003500;        // __5_
                            data <= line1;
                        end
                601:    data <= line2;
                602:    data <= line3;
                603:    data <= line4;
                604:    data <= line5;
                605:    data <= line6;
                606:    data <= line7;
                607:    data <= line8;

                700:    begin
                            data_in <= 32'h00003400;        // __4_
                            data <= line1;
                        end
                701:    data <= line2;
                702:    data <= line3;
                703:    data <= line4;
                704:    data <= line5;
                705:    data <= line6;
                706:    data <= line7;
                707:    data <= line8;

                800:    begin
                            data_in <= 32'h00003300;        // __3_
                            data <= line1;
                        end
                801:    data <= line2;
                802:    data <= line3;
                803:    data <= line4;
                804:    data <= line5;
                805:    data <= line6;
                806:    data <= line7;
                807:    data <= line8;

                900:    begin
                            data_in <= 32'h00003200;        // __2_
                            data <= line1;
                        end
                901:    data <= line2;
                902:    data <= line3;
                903:    data <= line4;
                904:    data <= line5;
                905:    data <= line6;
                906:    data <= line7;
                907:    data <= line8;

                1000:   begin
                            data_in <= 32'h00003100;        // __1_
                            data <= line1;
                        end
                1001:   data <= line2;
                1002:   data <= line3;
                1003:   data <= line4;
                1004:   data <= line5;
                1005:   data <= line6;
                1006:   data <= line7;
                1007:   data <= line8;

                1100:   begin
                            data_in <= 32'h00000000;        // clear
                            data <= line1;
                        end
                1101:   data <= line2;
                1102:   data <= line3;
                1103:   data <= line4;
                1104:   data <= line5;
                1105:   data <= line6;
                1106:   data <= line7;
                1107:   data <= line8;

                1200:   begin
                            data_in <= 32'h00000049;        // ___I
                            data <= line1;
                        end
                1201:   data <= line2;
                1202:   data <= line3;
                1203:   data <= line4;
                1204:   data <= line5;
                1205:   data <= line6;
                1206:   data <= line7;
                1207:   data <= line8;

                1250:   begin
                            data_in <= 32'h00004980;        // __IL
                            data <= line1;
                        end
                1251:   data <= line2;
                1252:   data <= line3;
                1253:   data <= line4;
                1254:   data <= line5;
                1255:   data <= line6;
                1256:   data <= line7;
                1257:   data <= line8;

                1300:   begin
                            data_in <= 32'h00498055;        // _ILU
                            data <= line1;
                        end
                1301:   data <= line2;
                1302:   data <= line3;
                1303:   data <= line4;
                1304:   data <= line5;
                1305:   data <= line6;
                1306:   data <= line7;
                1307:   data <= line8;

                1350:   begin
                            data_in <= 32'h49805500;        // ILU_
                            data <= line1;
                        end
                1351:   data <= line2;
                1352:   data <= line3;
                1353:   data <= line4;
                1354:   data <= line5;
                1355:   data <= line6;
                1356:   data <= line7;
                1357:   data <= line8;

                1400:   begin
                            data_in <= 32'h80550000;        // LU__
                            data <= line1;
                        end
                1401:   data <= line2;
                1402:   data <= line3;
                1403:   data <= line4;
                1404:   data <= line5;
                1405:   data <= line6;
                1406:   data <= line7;
                1407:   data <= line8;

                1450:   begin
                            data_in <= 32'h55000000;        // U___
                            data <= line1;
                        end
                1451:   data <= line2;
                1452:   data <= line3;
                1453:   data <= line4;
                1454:   data <= line5;
                1455:   data <= line6;
                1456:   data <= line7;
                1457:   data <= line8;

                1500:   begin
                            data_in <= 32'h00000000;        // ____
                            data <= line1;
                        end
                1501:   data <= line2;
                1502:   data <= line3;
                1503:   data <= line4;
                1504:   data <= line5;
                1505:   data <= line6;
                1506:   data <= line7;
                1507:   data <= line8;

                default:;
            endcase

            if (count == 1700)
                count <= 0;
            else
                count <= count + 1;
        end
    end
    
endmodule
