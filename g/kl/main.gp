#!/usr/bin/env gnuplot
set term pdf mono linewidth 2
set output "main.pdf"
set size sq
unset border
set xtics (1)
set ytics (0)
set key off
set xlabel "q/p"
set ylabel "-log(q/p)"

s = 0.30
set xrange [:2.4]
set yrange [:2]

plot \
	'<echo 1 2 1 -2 0 2 0 -2 | xargs -n2' w imp ls 1, 0 w l ls 1, \
	-log(x) w l ls 1, \
	'<./gen' u (x=$1/$2):(-log(x)):(s*sqrt($2)) with  circle ls 1

set output
