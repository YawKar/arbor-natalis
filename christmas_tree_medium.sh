# Carol of the Bells
#
# Hark! how the bells
# Sweet silver bells
# All seem to say,
# "Throw cares away."
# Christmas is here
# Bringing good cheer
# To young and old
# Meek and the bold
#
# Ding, dong, ding, dong
# That is their song
# With joyful ring
# All caroling
# One seems to hear
# Words of good cheer
# From ev'rywhere
# Filling the air
#
# Oh how they pound,
# Raising the sound,
# O'er hill and dale,
# Telling their tale,
# Gaily they ring
# While people sing
# Songs of good cheer
# Christmas is here
# Merry, merry, merry, merry Christmas
# Merry, merry, merry, merry Christmas
#
# On, on they send
# On without end
# Their joyful tone
# To ev'ry home
height=$(($RANDOM % 25 + 1))

for ((i=1; i<=height; i++));
do
  asterisks=$((2*i - 1))
  spaces_prefix=$((height - i))
  printf '%0.s ' $(seq 0 $spaces_prefix)
  for ((j=1; j<=asterisks; j++)); do
    printf '*'
  done
  printf '\n'
done
