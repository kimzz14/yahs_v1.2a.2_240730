yahs \
    -o yahs-scaffolding/yahs \
    --no-mem-check \
    ref/ref.fa \
    aligned.bam \
    1> run_yahs-scaffolding.log \
    2> run_yahs-scaffolding.err

#-r 2000,10000,20000,50000,100000,200000,500000,1000000,2000000,5000000,10000000,20000000,50000000,100000000,200000000,500000000 \
#--no-contig-ec \

samtools faidx yahs-scaffolding/yahs_scaffolds_final.fa