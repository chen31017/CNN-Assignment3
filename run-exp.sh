cd .. #git will sync this into hw3, but it needs to run out of assignment3 folder
pwd

for k in {32,64}
do
    for L in {2,4,8,16}
    do
        echo "running ${L} layers with ${k} filters per layer"
        python -m hw3.experiments run-exp \
        --run-name exp1_1_K${k}_L${L} --epochs 100 --early-stopping 2 \
        --filters-per-layer ${k} --layers-per-block ${L} --pool-every 1 --hidden-dims 1024;
    done;
done;