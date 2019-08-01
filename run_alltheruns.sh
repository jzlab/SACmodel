
cd src/
tmux new-session -d -s run2

tmux send -t  "run2" 'nrngui -nogui run2.hoc' ENTER
 



