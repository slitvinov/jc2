set term pdf
set output "main.pdf"

set xzeroaxis
set size sq
set xtics  (1)
set key off

s = 0.2
plot [0.1:2] -log(x),  '-' u (x=$1/$2):(-log(x)):(s*sqrt($2)) with circles
0.1 0.357143
0.2 0.121429
0.3 0.178571
0.4 0.342857
e

set output