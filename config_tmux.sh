sudo apt install tmux -y
echo "set-option -g default-shell $(which zsh)" >> ~/.tmux.conf
echo "set -g default-terminal \"xterm-256color\"" >> ~/.tmux.conf
echo "set-option -g mouse on" >> ~/.tmux.conf
echo "set-option -g status-style \"bg=#76B5C5,fg=#000000\"" >> ~/.tmux.conf

tmux new-session -d -s temp
tmux source-file ~/.tmux.conf
tmux kill-session -t temp
