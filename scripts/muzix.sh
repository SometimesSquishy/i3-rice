
#muzik

i3-msg "workspace 2; exec st -f 'Roboto mono:size=9:antialiasing=true' alsamixer"
sleep 0.2;
#i3-msg "resize
i3-msg "workspace 2; flating disable"
i3-msg "workspace 2; split h"
i3-msg "workspace 2; exec st -f 'Roboto mono:size=9:antialiasing=true' cmus"
sleep 0.2;
i3-msg "workspace 2; floating disable"
i3-msg "workspace 2; split v"
i3-msg "workspace 2; exec kitty cava"
sleep 0.2;
i3-msg "workspace 2; floating disable"
for i in {1..6}
do
  i3-msg "resize grow left 200 px"
  i3-msg "resize shrink up 72 px"
done
i3-msg "resize grow left 32 px"
sleep 0.2;
