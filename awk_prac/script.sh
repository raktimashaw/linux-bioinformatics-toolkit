awk '$3=="transporter" {print $1,$2}' genes.txt
awk '$3=="polymerase" $2>900' genes.txt
awk '$3=="polymerase" && $2>900' genes.txt

