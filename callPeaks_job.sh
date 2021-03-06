#!/bin/bash -l

## Use MACS2 to call peaks with shifted bed files

module load python/2.7.7
module load macs/2.1.0.20150731


for filename in ./*.bam ; do




macs2 callpeak -t "$filename"  -f BED -g hs -nomodel --nolambda --keep-dup all --call-summits --outdir .  -n $(basename "$filename" .bed) -B -q 0.01 --bdg  --format BAMPE



done

