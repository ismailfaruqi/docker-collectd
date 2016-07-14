#!/sh

set -e

if [ -d /mnt/proc ]; then
  umount /proc
  mount -o bind /mnt/proc /proc
fi

if [ -z "$@" ]; then
  exec confd -onetime -backend env
else
  exec $@
fi