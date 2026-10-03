#!/usr/bin/env bash
# Rebuild the PHerc0268 band-0.70 strip from the five included patches (tifxyz + ink_9um forward map at half resolution).
set -e; cd "$(dirname "$0")/.."; mkdir -p out
python -m ringstrip.unroll out/PHerc0268_band070_strip.png 6154.6 6219.5 3100 map.png results/PHerc0268_band070/i*
echo "strip: out/PHerc0268_band070_strip.png (+ .json)"
