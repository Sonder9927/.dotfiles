lua $HOME/Downloads/z.lua/z.lua --init fish enhanced once echo fzf | source
set -gx _ZL_CD cd
abbr -a zz z -c
abbr -a zi z -i
abbr -a zf z -I
abbr -a zb z -b
abbr -a zh z -I -t .  # fzf and sort by time
