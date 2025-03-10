juicer pre -a \
    -o result/yahs_JBAT \
       result/yahs.bin \
       result/yahs_scaffolds_final.agp \
       ref/ref.fa.fai \
       > result/yahs_JBAT.log 2>&1

cat result/yahs_JBAT.log | grep "PRE_C_SIZE" | cut -d' ' -f2- > result/yahs_JBAT.chrom.sizes

java -jar -Xmx256G ./script/juicer_tools.1.9.9_jcuda.0.8.jar pre result/yahs_JBAT.txt result/yahs_JBAT.hic result/yahs_JBAT.chrom.sizes > run_yahs-JBAT.log 2>&1