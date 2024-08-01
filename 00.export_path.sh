WorkingDir=

##################################################################################
CurrentDir=$(readlink -f .)
if [ $CurrentDir = $WorkingDir ]
then
        echo "Same"
        source activate yahs_v1.2a.2_240730
else
        echo "Diff"
fi
##################################################################################
#conda create -n yahs_v1.2a.2_240730
#
#source activate yahs_v1.2a.2_240730
#
#conda install yahs
#bioconda/linux-64::yahs-1.2a.2-he4a0461_2
#
#conda install samtools
#bioconda/linux-64::samtools-1.20-h50ea8bc_1
##################################################################################