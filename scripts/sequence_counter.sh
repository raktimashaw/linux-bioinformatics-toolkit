#!/bin/bash

for file in /home/raktimashaw/Bioinformatics_Bootcamp/mini_projects/project_1/*fasta
do
    echo "$file"

    grep -c "^>" "$file"

    echo ""
done
