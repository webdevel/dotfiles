#!/bin/sh

START_DIR=$(pwd)
SCRIPT=$(basename $0)
session=main
SUCCESS=0
isTmuxOnPath=$(type tmux &>/dev/null; echo $?)
NOT_EQUALS=-ne

showHelp()
{
cat << EOF

Close tmux session.

Usage: $SCRIPT [OPTIONS]

OPTIONS:
  -h    Show this help message
  -s    Session name in tmux (default: $session)

EXAMPLES:
  ./$SCRIPT -s $session

EOF
}

while getopts "hs:" option; do

  case $option in

    h)
      showHelp
      exit
      ;;
    s)
      session=$OPTARG

  esac

done

if test $SUCCESS $NOT_EQUALS $isTmuxOnPath; then

  echo "Tmux not found."
  exit $isTmuxOnPath

fi

# get all window.pane pairs in session
panes=$(tmux list-panes -a | cut -d : -f 1,2 | sort -r)

# iterate though all window.pane pairs in session
for pane in $panes; do

  tmux send-keys -t $pane 'exit' enter

done

