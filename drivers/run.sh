SRC=../src
GENOME=../genome/Streptococcus_pyogenes
BACTERIOCINS=../bacteriocins
python $SRC/intergene.py --genbank-path=$GENOME/sequence.gb --output-dir=$GENOME
python $SRC/blast.py \
    --genbank-path=$GENOME/sequence.gb \
    --intergenes=$GENOME/sequence_ign.fasta \
    --bacteriocins=$BACTERIOCINS/bacteriocins.fa \
    --output-file=blast_results.txt \
    

