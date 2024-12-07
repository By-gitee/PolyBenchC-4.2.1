while getopts "p:" opt; do
    case $opt in
        p) PROG="$OPTARG" ;;
        *) echo "invalid arg" ;;
    esac
done

if [ $PROG = "nussinov" ]; then
    clang -I ./utilities -I ./medley/nussinov  medley/nussinov/nussinov.c -static -S -emit-llvm -O0 -o  medley/nussinov/nussinov.ll
    clang -I ./utilities -I ./medley/nussinov utilities/polybench.c  medley/nussinov/nussinov.c -DPOLYBENCH_TIME -static -O0 -o nussinov_time
elif [ $PROG = "floyd-warshall" ]; then
    clang -I ./utilities -I ./medley/floyd-warshall  medley/floyd-warshall/floyd-warshall.c -static -S -emit-llvm -O0 -o  medley/floyd-warshall/floyd-warshall.ll
    clang -I ./utilities -I ./medley/floyd-warshall utilities/polybench.c  medley/floyd-warshall/floyd-warshall.c -DPOLYBENCH_TIME -static -O0 -o floyd-warshall_time
else
    echo "unkown program " $PROG
fi

gcc -I ./utilities -I ./medley/nussinov utilities/polybench.c  medley/nussinov/nussinov.c -DPOLYBENCH_TIME -static -O0 -o nussinov_time
