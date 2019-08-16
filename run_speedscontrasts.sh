#kill all the tmux sessions
tmux list-sessions | awk 'BEGIN{FS=":"}{print $1}' | xargs -n 1 tmux kill-session -t 

cd src/


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
while [ $COUNTER -le 16 ]
 do
 echo  counter is $COUNTER

VARRUN="$VAR$COUNTER"

tmux new-session -d -s $VARRUN
tmux send -t  "$VARRUN" 'suffix=.hoc' ENTER
tmux send -t  "$VARRUN" 'filename="$(tmux display-message -p "#S")$suffix"' ENTER
tmux send -t  "$VARRUN" 'nrngui -nogui $filename' ENTER

COUNTER=$(( $COUNTER + 1 ))


done

 

#tmux new-session -d -s run1
#tmux send -t "run1" 'nrngui -nogui run1.hoc ' ENTER

#tmux new-session -d -s run2
#tmux send -t "run2" 'nrngui -nogui run2.hoc ' ENTER






