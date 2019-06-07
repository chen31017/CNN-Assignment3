cd ..
pwd
for L in {2,4,8,16}:
do
    python -m hw3.experiments run-exp \
    --run-name exp1_1_K32_L${L} --bs-train=256 --bs-test=256 --epochs=100 --early-stopping=3 \
    --lr=0.01 --filters-per-layer=32 --layers-per-block=2 --pool-every=1 --hidden-dims=1024;
done;