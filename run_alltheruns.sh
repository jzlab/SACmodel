cd src/

tmux new-session -d -s run2

EXP_OUTPUT_DIR="/home/audreyt/data/SACmodel/SingleSACExperimentResults"
echo "creating output files..."
touch SingleSACExperimentVvsAngle.txt
touch SingleSACExperimentVTrace.txt

rm -rf x86_64/

# Compile resources
echo "Compiling model files..."
nrnivmodl
 
echo "Running Experiment..."
nrngui -nogui run2.hoc

echo "Moving output files to $EXP_OUTPUT_DIR"
mv SingleSACExperimentVvsAngle.txt $EXP_OUTPUT_DIR/
mv SingleSACExperimentVTrace.txt $EXP_OUTPUT_DIR/
#changed
