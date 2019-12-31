#/bin/bash
scrot -s 'screen_%Y%m%d_%H%M.jpg' -e 'mv $f ~/img &amp; feh ~/img/$f'
