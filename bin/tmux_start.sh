#!/usr/bin/env sh

color -r

# creates new tmux server according to stack overflow article below
# https://stackoverflow.com/questions/57429593/create-new-pane-from-tmux-command-line

# tmux start-server

# create a session with three panes
# tmux new-session -s art -d "/usr/bin/env sh -c \"clear\"; /usr/bin/env sh -i"
# tmux split-window -h art:0 "/usr/bin/env sh -c \"cbonsai -i --wait=1 -l\"; /usr/bin/env sh -i"
# tmux split-window -t art:0 "/usr/bin/env sh -c \"asciiquarium\"; /usr/bin/env sh -i"


tmux new-session -d -s 'art'\; \
	split-window -h \; \
	send-keys 'cbonsai --infinite --live --wait=1' C-m \; \
	split-window -v \; \
	send-keys 'asciiquarium' C-m \;

tmux attach -t art

