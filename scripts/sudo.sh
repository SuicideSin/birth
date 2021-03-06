#!/bin/bash

source $BIRTH_ROOT/lib/include.sh

main () {
  local sudoers="etc/sudoers.d/wheel"

  log "copying $BIRTH_ROOT/$sudoers -> /$sudoers"

  cp $BIRTH_ROOT/$sudoers /$sudoers
  chmod 0440              /$sudoers

  return 0
}

main "$@"
