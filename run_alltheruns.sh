
cd src/

rm -rf x86_64/

# Compile resources
echo "Compiling model files..."
nrnivmodl
 
 :'
echo "Running Experiment..."
VAR= "run"
VARCOUNTER= "1"
VARRUN= "$VAR$VARCOUNTER"
tmux new-session -d -s $VARRUN

tmux send -t  "$VARRUN" 'nrngui -nogui $VARRUN.hoc' ENTER
 '
echo "Running Experiment..."
tmux new-session -d -s run1
tmux send -t "run1" 'nrngui -nogui run1.hoc ' ENTER

tmux new-session -d -s run2
tmux send -t "run2" 'nrngui -nogui run2.hoc ' ENTER





