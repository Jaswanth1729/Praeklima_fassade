#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/jaswanth/workspace/hls_ip/parallel_processing_1/parallel_processing_1/solution1/.autopilot/db/a.g.bc ${1+"$@"}
