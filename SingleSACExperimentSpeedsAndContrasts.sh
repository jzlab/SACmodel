cd src/

EXP_OUTPUT_DIR="/home/audreyt/data/SACmodel/SingleSACExperimentResults"
echo "creating output files..."
touch SingleSACExperimentSpeedsAndContrasts.txt

rm -rf x86_64/

# Compile resources
echo "Compiling model files..."
nrnivmodl

for i in {.5..7..2}
do
    for j in {.5..1.2...1}
    do
        for k in {0..1}
            DingNetwork=k
            expbipspeed=i
            expcontrast=j

            echo "Running Experiment..."
            nrngui -nogui MainA.hoc
    done
done



echo "Moving output files to $EXP_OUTPUT_DIR"
mv SingleSACExperimentSpeedsAndContrasts.txt $EXP_OUTPUT_DIR/