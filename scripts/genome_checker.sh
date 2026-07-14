#!/bin/bash

for file in /home/raktimashaw/Bioinformatics_Bootcamp/mini_projects/project_2/*fasta
do
 if [ -f "$file" ]
 then
 echo "$file"
 grep -c ">" "$file"
fi
done 

