#!/bin/bash

COMMAND="$@"

echob(){ echo -e "\033[0;34m$@\033[0m"; }

echob "New container: $(hostname)"
echob "Command: $COMMAND"

exec $COMMAND
