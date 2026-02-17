#!/bin/bash

# Show terminal from scratchpad and move to current workspace
i3-msg '[title="^Dropdown-Term$"] scratchpad show'
sleep 0.3

# Assign a unique mark (for precision)
i3-msg '[title="^Dropdown-Term$"] mark --replace dropdown-term'

# Ensure it's floating
i3-msg '[con_mark="dropdown-term"] floating enable'

# Move it to the current workspace so it only covers current monitor
i3-msg '[con_mark="dropdown-term"] move to workspace current'
sleep 0.1

# Resize it to full screen size of the current monitor
# You can tune this if you want 50% height instead
i3-msg '[con_mark="dropdown-term"] resize set 100 ppt 100 ppt'
i3-msg '[con_mark="dropdown-term"] move position 0 px 0 px'

