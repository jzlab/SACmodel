cd src/

EXP_OUTPUT_DIR="/home/audreyt/data/SACmodel/SingleSACExperimentResults"
echo "creating output files..."
touch EndTraces.txt
touch V_CAI_TuningCurves.txt
touch SingleSACExperimentSpeedsAndContrasts.txt
rm SingleSACExperimentSpeedsAndContrasts.txt
touch SingleSACExperimentSpeedsAndContrasts.txt

rm -rf x86_64/

# Compile resources
echo "Compiling model files..."
nrnivmodl
 
echo "Running Experiment..."
nrngui -nogui run6.hoc


