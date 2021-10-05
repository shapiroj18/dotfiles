#!/usr/bin/env sh

color -r

tmux new-session -d -s 'art'\; \
	split-window -h \; \
	send-keys 'cbonsai --infinite --live --wait=1' C-m \; \
	split-window -v \; \
	send-keys 'asciiquarium' C-m \; \
	select-pane -t 0 \;

tmux attach -t art

