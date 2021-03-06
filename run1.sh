cd src/

EXP_OUTPUT_DIR="/home/audreyt/data/SACmodel/SingleSACExperimentResults"
echo "creating output files..."
touch EndTraces.txt
touch V_CAI_TuningCurves.txt

rm -rf x86_64/

# Compile resources
echo "Compiling model files..."
nrnivmodl
 
echo "Running Experiment..."
nrngui run1.hoc

echo "Moving output files to $EXP_OUTPUT_DIR"
mv EndTraces.txt $EXP_OUTPUT_DIR/
mv V_CAI_TuningCurves.txt $EXP_OUTPUT_DIR/
