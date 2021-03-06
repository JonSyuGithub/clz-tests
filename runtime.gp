reset
set ylabel 'time (sec)'
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:][:0.07]'time.txt' using 2:xtic(1) with histogram title 'real', \
'' using ($0-0.2):(($2)+0.001):2 with labels title ' ', \
'' using 3:xtic(1) with histogram title 'user mode', \
'' using ($0+0.2):(($3)+0.001):3 with labels title ' ', \
'' using 4:xtic(1) with histogram title 'kernel mode'  , \
'' using ($0+0.36):(($4)+0.001):4 with labels title ' '
