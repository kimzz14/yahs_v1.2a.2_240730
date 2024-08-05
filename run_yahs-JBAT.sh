juicer pre -a -o yahs-JBAT/yahs_JBAT yahs-scaffolding/yahs.bin yahs-scaffolding/yahs_scaffolds_final.agp ref/ref.fa.fai > yahs-JBAT/yahs_JBAT.log 2>&1

cat yahs-JBAT/yahs_JBAT.log | grep "PRE_C_SIZE" | cut -d' ' -f2- > yahs-JBAT/yahs_JBAT.chrom.sizes

java -jar -Xmx256G ./script/juicer_tools.1.9.9_jcuda.0.8.jar pre yahs-JBAT/yahs_JBAT.txt yahs-JBAT/yahs_JBAT.hic yahs-JBAT/yahs_JBAT.chrom.sizes > run_yahs-JBAT.log 2>&1