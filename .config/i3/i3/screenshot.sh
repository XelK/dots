#/bin/bash
scrot -s '%Y-%m-%d--%s_$wx$h_scrot.jpg' -e 'mv $f ~/Screenshot &amp; feh ~/Screenshot/$f'
