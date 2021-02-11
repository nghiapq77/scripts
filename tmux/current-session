#!/bin/bash

#if $(tmux has-session 2>/dev/null); then tmux -2u att; exit; fi
[ -z "$1" ] && name="void" || name="$1"
tmux new-session -d -s $name -c /home/oz/
tmux new-window -n abn -t $name:2 -c /home/oz/projects/abnormality-detection
sleep 0.1
tmux send-keys -t $name:2.1 "conda activate abn" Enter
tmux -2u att


#tmux select-layout -t void:2 "ae7a,151x40,0,0{93x40,0,0[93x15,0,0,1,93x24,0,16,5],57x40,94,0,2}" > /dev/null
#tmux split-window -t void:2 -c /home/oz/work/face-spoof/
#sleep 0.1
#tmux send-keys -t void:2.2 "source venv/bin/activate" Enter
#tmux select-layout -t void:2 "ae7a,151x40,0,0{93x40,0,0[93x15,0,0,1,93x24,0,16,5],57x40,94,0,2}" > /dev/null
#tmux split-window -t void:2 -c /home/oz/work/face-spoof/data/
#sleep 0.1
#tmux select-layout -t void:2 "ae7a,151x40,0,0{93x40,0,0[93x15,0,0,1,93x24,0,16,5],57x40,94,0,2}" > /dev/null
