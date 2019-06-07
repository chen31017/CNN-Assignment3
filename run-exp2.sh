cd .. #git will sync this into hw3, but it needs to run out of assignment3 folder
pwd
for L in {2,4,8,16}
do
    python -m hw3.experiments run-exp \
    --run-name exp1_1_K64_L${L} --bs-train 64 --epochs 100 --early-stopping 2 \
    --filters-per-layer 32 --layers-per-block ${L} --pool-every 1 --hidden-dims 1024 100;
done;