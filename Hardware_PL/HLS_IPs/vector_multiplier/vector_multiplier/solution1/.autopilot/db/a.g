#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/jaswanth/Praeklima/Hardware_PL/HLS_IPs/vector_multiplier/vector_multiplier/solution1/.autopilot/db/a.g.bc ${1+"$@"}
