#!/usr/bin/env python3
import sys

with open(sys.argv[1]) as f:
    for l in f:
        gs = list(filter(lambda s: len(s) >0, l.split('\t')[-1].split(',')))
        for i, g1 in enumerate(gs):
            for g2 in gs[i+1:]:
                print(f"{g1}\t{g2}")
