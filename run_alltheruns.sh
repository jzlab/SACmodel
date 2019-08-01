
cd src/

rm -rf x86_64/

# Compile resources
echo "Compiling model files..."
nrnivmodl
 
echo "Running Experiment..."
VAR= "run"
VARCOUNTER= "1"
VARRUN= "$VAR$VARCOUNTER"
tmux new-session -d -s 

tmux send -t  "$VARRUN" 'nrngui -nogui $VARRUN.hoc' ENTER
 



