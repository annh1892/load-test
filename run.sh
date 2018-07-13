#!bin/bash
vegeta attack -targets=input.txt -rate=1000 -duration=60s > results.bin \
&& cat results.bin | vegeta report -reporter=plot > report.html \
&& cat results.bin | vegeta report -reporter="hist[0,100ms,200ms,300ms]"
