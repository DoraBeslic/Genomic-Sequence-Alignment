#!/usr/bin/env bash
# sortAll.sh
# Usage: bash scripts/sortAll.sh 1>results/logs/sortAll.log 2>results/logs/sortAll.err &

suffix=".sam"
samOutPath="results/sam/"

for inFile in $samOutPath*$suffix
do
    # Remove the path from the filename and assign to pathRemoved
    pathRemoved="${inFile/$samOutPath/}"
    # Remove the suffix from $pathRemoved and assign to sampleName
    sampleName="${pathRemoved/$suffix/}"

    samtools sort \
    $samOutPath$sampleName$suffix \
    -o results/bam/$sampleName.bam ;
done
