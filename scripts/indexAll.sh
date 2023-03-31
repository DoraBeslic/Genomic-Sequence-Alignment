#!/usr/bin/env bash
# indexAll.sh

# Usage: bash scripts/indexAll.sh 1>results/logs/indexAll.log 2>results/logs/indexAll.err &

bamOutPath="results/bam/"
suffix=".bam"

for inFile in $bamOutPath*$suffix
do
    # Remove the path from the filename and assign to pathRemoved
    pathRemoved="${inFile/$bamOutPath/}"
    # Remove the suffix from $pathRemoved and assign to sampleName
    sampleName="${pathRemoved/$suffix/}"

    samtools index \
    $bamOutPath$sampleName$suffix \
    -b results/bai/$sampleName.bai ;
done
