<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="dnn" top="DNN_wlo_166">
  <files>
    <file name="../dnn_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../dnn_tb.h" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="dnn/dnn.cpp" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
    <file name="dnn/dnn.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
  </files>
  <solutions>
    <solution name="unoptimized" status="inactive"/>
    <solution name="pipelined" status="inactive"/>
    <solution name="unrolled" status="inactive"/>
    <solution name="wordlength_opt" status="inactive"/>
    <solution name="wordlength_opt__16_6" status="active"/>
    <solution name="wordlength_opt__21_8" status="inactive"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation>
    <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
  </Simulation>
</project>
