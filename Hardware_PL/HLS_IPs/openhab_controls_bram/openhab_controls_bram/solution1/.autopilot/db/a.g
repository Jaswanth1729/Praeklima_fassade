#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/jaswanth/workspace/hls_ip/openhab_controls_bram/openhab_controls_bram/solution1/.autopilot/db/a.g.bc ${1+"$@"}
