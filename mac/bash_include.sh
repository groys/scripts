# put this file in ~/

#prevent uninitialized variables
#set -o nounset

# do not proceed in case of error
#set -e

date_echo() {
  echo "$(date --iso-8601=seconds) $@"
}

# echo the command being executed and execute
echo_exec() {
  date_echo "Executing === $@"
  echo
  "$@"
}

# check that user is root
require_root() {
  if [ `id -u` != 0 ]; then
    die "$0 requires root"
  fi
}

die() {
  echo -e "$@"
  exit 1
}

onexit() {
  local exit_status=${1:-$?}
  if [ exit_status != 0 ]; then
    echo
    echo "Exiting $0 with code $exit_status"
  fi
  exit $exit_status
}

#SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )" 
