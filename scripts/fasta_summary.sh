#!/bin/bash

# FASTA Summary Report

report="summary_report.txt"
count=0

# Create a new report
echo "==================================" > "$report"
echo "      FASTA SUMMARY REPORT" >> "$report"
echo "==================================" >> "$report"
echo "" >> "$report"

# Loop through every FASTA file
for file in *.fasta
do
    # Check the file exists
    if [ -f "$file" ]
    then
        # Count the sequences
        sequences=$(grep -c "^>" "$file")

        # Write information to the report
        echo "File: $file" >> "$report"
        echo "Sequences: $sequences" >> "$report"
        echo "Status: OK" >> "$report"
        echo "------------------------------" >> "$report"
        echo "" >> "$report"

        # Increase the counter
        count=$((count + 1))
    fi
done

# Write final summary
echo "Total FASTA files analysed: $count" >> "$report"
echo "" >> "$report"
echo "Analysis complete." >> "$report"
echo "==================================" >> "$report"

# Display the report
cat "$report"
