sudo apt install tmux -y

cat <<EOF >> ~/.tmux.conf
set-option -g default-shell $(which zsh)
set -g default-terminal "xterm-256color"
set-option -g mouse on
set-option -g status-style "bg=#76B5C5,fg=#000000"
EOF

tmux new-session -d -s temp
tmux source-file ~/.tmux.conf
tmux kill-session -t temp
