<project xmlns="com.autoesl.autopilot.project" name="least_squares" top="LS_estimator">
    <files>
        <file name="../least_squares_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
        <file name="least_squares/least_squares.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="least_squares/least_squares.cpp" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="1__non_optimized" status="inactive"/>
        <solution name="2__pipelined" status="active"/>
    </solutions>
</project>

