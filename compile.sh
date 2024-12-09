while getopts "p:" opt; do
    case $opt in
        p) PROG="$OPTARG" ;;
        *) echo "invalid arg" ;;
    esac
done

if [ $PROG = "nussinov" ]; then
    clang -I ./utilities -I ./medley/nussinov  medley/nussinov/nussinov.c -static -S -emit-llvm -O0 -o  medley/nussinov/nussinov.ll
    clang -I ./utilities -I ./medley/nussinov utilities/polybench.c  medley/nussinov/nussinov.c -static -O0 -o nussinov
elif [ $PROG = "correlation" ]; then
    clang -I ./utilities -I ./datamining/correlation  datamining/correlation/correlation.c -static -S -emit-llvm -O0 -o  datamining/correlation/correlation.ll
    clang -I ./utilities -I ./datamining/correlation utilities/polybench.c  datamining/correlation/correlation.c -static -O0 -o correlation
elif [ $PROG = "floyd-warshall" ]; then
    clang -I ./utilities -I ./medley/floyd-warshall  medley/floyd-warshall/floyd-warshall.c -static -S -emit-llvm -O0 -o  medley/floyd-warshall/floyd-warshall.ll
    clang -I ./utilities -I ./medley/floyd-warshall utilities/polybench.c  medley/floyd-warshall/floyd-warshall.c -static -O0 -o floyd-warshall
elif [ $PROG = "3mm" ]; then
    clang -I ./utilities -I ./linear-algebra/kernels/3mm  linear-algebra/kernels/3mm/3mm.c -static -S -emit-llvm -O0 -o linear-algebra/kernels/3mm/3mm.ll
    clang -I ./utilities -I ./linear-algebra/kernels/3mm  utilities/polybench.c  linear-algebra/kernels/3mm/3mm.c -static -O0 -o 3mm
elif [ $PROG = "doitgen" ]; then
    clang -I ./utilities -I ./linear-algebra/kernels/doitgen  linear-algebra/kernels/doitgen/doitgen.c  -static -S -emit-llvm -O0 -o linear-algebra/kernels/doitgen/doitgen.ll
    clang -I ./utilities -I ./linear-algebra/kernels/doitgen  utilities/polybench.c  linear-algebra/kernels/doitgen/doitgen.c -static -O0 -o doitgen
else
    echo "unkown program " $PROG
fi