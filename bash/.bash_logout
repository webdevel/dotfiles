# individual login shell cleanup file, executed when a login shell exits

if test -n "$SSH_AGENT_PID"; then

  kill $SSH_AGENT_PID

fi

