
cd src/

EXP_OUTPUT_DIR="/home/audreyt/data/SACmodel/SingleSACExperimentResults"
echo "refreshing output files..."  
touch SingleSACExperimentSpeedsAndContrasts.txt
rm SingleSACExperimentSpeedsAndContrasts.txt
touch SingleSACExperimentSpeedsAndContrasts.txt

rm -rf x86_64/

# Compile resources
echo "Compiling model files..."
nrnivmodl
 

echo "Running Experiment..."

VAR="run"
SUFFIX=".hoc"
COUNTER=1
while [ $COUNTER -le 10 ]
 do
 echo  counter is $COUNTER

VARRUN="$VAR$COUNTER"
VARRUNFILE="$VARRUN$SUFFIX"
echo $VARRUNFILE

tmux new-session -d -s $VARRUN

tmux send -t  "$VARRUN" 'nrngui -nogui $VARRUNFILE' ENTER

COUNTER=$(( $COUNTER + 1 ))


done

 

#tmux new-session -d -s run1
#tmux send -t "run1" 'nrngui -nogui run1.hoc ' ENTER

#tmux new-session -d -s run2
#tmux send -t "run2" 'nrngui -nogui run2.hoc ' ENTER

echo "Moving output files to $EXP_OUTPUT_DIR"
mv SingleSACExperimentSpeedsAndContrasts.txt $EXP_OUTPUT_DIR/




