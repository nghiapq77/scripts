#!/bin/bash

if $(tmux has-session 2>/dev/null); then tmux -2u att; exit; fi
tmux new-session -d -n ranger -s main -c /home/oz/
sleep 0.1
tmux send-keys -t main:1.1 "ranger ." Enter
tmux select-layout -t main:1 "ac3d,151x40,0,0,0" > /dev/null
tmux new-window -n fs -t main:2 -c /home/oz/work/face-spoof
sleep 0.1
tmux send-keys -t main:2.1 "source venv/bin/activate" Enter
tmux select-layout -t main:2 "ae7a,151x40,0,0{93x40,0,0[93x15,0,0,1,93x24,0,16,5],57x40,94,0,2}" > /dev/null
tmux split-window -t main:2 -c /home/oz/work/face-spoof/
sleep 0.1
tmux send-keys -t main:2.2 "source venv/bin/activate" Enter
tmux select-layout -t main:2 "ae7a,151x40,0,0{93x40,0,0[93x15,0,0,1,93x24,0,16,5],57x40,94,0,2}" > /dev/null
tmux split-window -t main:2 -c /home/oz/work/face-spoof/data/
sleep 0.1
tmux select-layout -t main:2 "ae7a,151x40,0,0{93x40,0,0[93x15,0,0,1,93x24,0,16,5],57x40,94,0,2}" > /dev/null
tmux new-window -t main:3 -c /home/oz/
sleep 0.1
tmux select-layout -t main:3 "5658,151x40,0,0,19" > /dev/null
tmux -2u att
