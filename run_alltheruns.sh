
cd src/

EXP_OUTPUT_DIR="/home/audreyt/data/SACmodel/SingleSACExperimentResults"
echo "refreshing output files..."  
touch SingleSACExperimentSpeedsAndContrasts.txt

rm -rf x86_64/

# Compile resources
echo "Compiling model files..."
nrnivmodl
 

echo "Running Experiment..."
foo ="hello"
foo += "world"
echo $foo

VAR= "run"

for i in {1..10} do 
VARRUN= "$VAR$i"
tmux new-session -d -s $VARRUN

tmux send -t  "$VARRUN" 'nrngui -nogui $VARRUN.hoc' ENTER
done

 

#tmux new-session -d -s run1
#tmux send -t "run1" 'nrngui -nogui run1.hoc ' ENTER

#tmux new-session -d -s run2
#tmux send -t "run2" 'nrngui -nogui run2.hoc ' ENTER

echo "Moving output files to $EXP_OUTPUT_DIR"
mv SingleSACExperimentSpeedsAndContrasts.txt $EXP_OUTPUT_DIR/




