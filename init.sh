



alias tmux="/tools/tmux/tmux -f /tools/tmux/tmux.conf "

tmux_init() 
{
	tmux new-session -s "S2"            # 开启一个会话
}

if which tmux 2>&1 >/dev/null; then
	test -z "$TMUX" && (tmux a -t S2 || tmux_init)
fi


