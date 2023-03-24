#!/usr/bin/env bash
# alignAll.sh
# Usage: bash scripts/alignAll.sh 1>results/logs/alignAll.log 2>results/logs/alignAll.err &

leftSuffix=".R1.fastq"
rightSuffix=".R2.fastq"
pairedOutPath="data/trimmed/paired/"

function alignReads {
    for leftInFile in $pairedOutPath*$leftSuffix
    do
	# Remove the path from the filename and assign to pathRemoved
        pathRemoved="${leftInFile/$pairedOutPath/}"
        # Remove the left-read suffix from $pathRemoved and assign to sampleName
        sampleName="${pathRemoved/$leftSuffix/}" 
	
        gsnap \
        -A sam \
        -D data \
        -d AiptasiaGmapDb \
        -N 1 \	
        $pairedOutPath$sampleName$leftSuffix \
	$pairedOutPath$sampleName$rightSuffix \
        1>results/sam/$sampleName.sam
    done
}
alignReads
