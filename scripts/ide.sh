#!/bin/sh
# set tmux panes for ide

if [ "$#" -eq 0 ]; then
    tmux new-session -d -s 'ide'
    tmux split-window -v
    tmux split-window -h
    tmux resize-pane -D 15
    tmux select-pane -t 0
    tmux attach -t ide
else
    case $1 in
    1)
      tmux split-window -v
      tmux resize-pane -D 15
      tmux select-pane -D
      clear
      ;;
    2)
      tmux split-window -h
      tmux split-window -v
      tmux resize-pane -D 15
      tmux select-pane -t 1
      tmux split-window -v
      tmux select-pane -t 1
      clear
      ;;
    py)
      cd ~/Desktop/python
      tmux split-window -v
      tmux split-window -h
      tmux resize-pane -D 15
      tmux select-pane -t 1
      vi .
      clear
      ;;
    *)
      echo [ERROR] "$1" は設定されていない引数です。
      ;;
  esac
fi
